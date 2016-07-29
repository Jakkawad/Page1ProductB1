//
//  GetProduct.swift
//  Page1ProductB1
//
//  Created by admin on 7/25/2559 BE.
//  Copyright © 2559 All2Sale. All rights reserved.
//

import Foundation
import Alamofire
import SwiftyJSON

class ProductsWrapper {
    var products:Array<GetProducts>?
    var count:Int?
    var next:String?
    var previous:String?
}

enum ProductsFields: String {
    //
    case Name = "name"
}

class GetProducts {
    //
    var idNumber:Int?
    var name:String
    
    required init(json:JSON, id:Int?) {
        self.idNumber = id
        self.name = json[ProductsFields.Name.rawValue].stringValue
    }
    
    // MARK: Endpoint
    class func endpointForGetProducts() -> String {
        return "https://swapi.co/api/species/"
    }
    
    private class func getGetProductAtPath(path: String, completionHandler: (ProductsWrapper?, NSError?) -> Void) {
        Alamofire.request(.GET, path).responseGetProductsArray { response in
            if let error = response.result.error {
                completionHandler(nil, error)
                return
            }
            completionHandler(response.result.value, nil)
        }
    }
    
    class func getProduct(completionHandler: (ProductsWrapper?, NSError?) -> Void) {
        getGetProductAtPath(GetProducts.endpointForGetProducts(), completionHandler: completionHandler)
    }
}

extension Alamofire.Request {
    func responseGetProductsArray(completionHandler: Response<ProductsWrapper, NSError> -> Void) -> Self {
        let responseSerializer = ResponseSerializer<ProductsWrapper, NSError> { request, response, data, error in
            guard error == nil else {
                return .Failure(error!)
            }
            guard let responseData = data else {
                let failureReason = "Array could not be serialized because input data was nil."
                let error = Error.errorWithCode(.DataSerializationFailed, failureReason: failureReason)
                return .Failure(error)
            }
            let JSONResponseSerializer = Request.JSONResponseSerializer(options: .AllowFragments)
            let result = JSONResponseSerializer.serializeResponse(request, response, responseData, error)
            
            switch result {
            case .Success(let value):
                let json = SwiftyJSON.JSON(value)
                let wrapper = ProductsWrapper()
                wrapper.next = json["next"].stringValue
                wrapper.previous = json["previous"].stringValue
                wrapper.count = json["count"].intValue
                
                var getProducts = [GetProducts]()
                print(json)
                let results = json["results"]
                print(result)
                for jsonProduct in results {
                    print(jsonProduct.1)
                    //let products = Products(json: jsonProduct.1, id: Int(jsonProduct.0))
                    let products = GetProducts(json: jsonProduct.1, id: Int(jsonProduct.0))
                    getProducts.append(products)
                }
                return .Success(wrapper)
            case .Failure(let error):
                return .Failure(error)
            }
        }
        return response(responseSerializer: responseSerializer, completionHandler: completionHandler)
    }
}