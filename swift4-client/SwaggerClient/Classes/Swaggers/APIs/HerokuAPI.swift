//
// HerokuAPI.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation
import Alamofire



open class HerokuAPI {
    /**

     - parameter body: (body)  
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func herokuResourcesPost(body: ProvisionRequest, completion: @escaping ((_ data: HerokuProvision?,_ error: Error?) -> Void)) {
        herokuResourcesPostWithRequestBuilder(body: body).execute { (response, error) -> Void in
            completion(response?.body, error)
        }
    }


    /**
     - POST /heroku/resources
     - examples: [{output=none}]
     
     - parameter body: (body)  

     - returns: RequestBuilder<HerokuProvision> 
     */
    open class func herokuResourcesPostWithRequestBuilder(body: ProvisionRequest) -> RequestBuilder<HerokuProvision> {
        let path = "/heroku/resources"
        let URLString = SwaggerClientAPI.basePath + path
        let parameters = JSONEncodingHelper.encodingParameters(forEncodableObject: body)

        let url = URLComponents(string: URLString)

        let requestBuilder: RequestBuilder<HerokuProvision>.Type = SwaggerClientAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "POST", URLString: (url?.string ?? URLString), parameters: parameters, isBody: true)
    }

}