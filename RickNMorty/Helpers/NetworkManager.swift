//
//  NetworkManager.swift
//  RickNMorty
//
//  Created by Gabriel Palhares on 15/07/19.
//  Copyright © 2019 Gabriel Palhares. All rights reserved.
//

import Foundation
// Use netwowk manager as Struct, always choose to value type
class NetworkManager {
    // Singleton many times it's not a best solution
    static let sharedInstance = NetworkManager()
    private init() {}
    // Get is default, you don't need create a URLRequest to just made a Get
    func createGetRequest(url: String) -> URLRequest {
        let getURL = URL(string: url)!
        var getRequest = URLRequest(url: getURL, cachePolicy: .useProtocolCachePolicy, timeoutInterval: 30)
        getRequest.httpMethod = "GET"
        return getRequest
    }
    
    // Just trying use Result of Swift 5, the closure just can be escaping, T or Error, result is enum perfect to made that
    func sendGetRequest<T:Codable>(getRequest: URLRequest, type: T.Type, completion: @escaping (_ result: T?,_ error: Error?) -> Void) {
       // This code of fetch data is always repeating, just made better, protocol, enum that has implementation to get,post,put,delete,patch use this
        
        let getTask = URLSession.shared.dataTask(with: getRequest) { (data, response, err) in
            guard err == nil else {
                print("GET Request in \(getRequest) Error: \(String(describing: err))")
                return
            }
            // You can made guard let to data, to escaping Network Error
            if let receivedData = data {
                do {
                    let resultObject = try JSONDecoder().decode(type, from: receivedData)
                    DispatchQueue.main.async {
                        completion(resultObject, nil) // Result 
                    }
                } catch {
                    DispatchQueue.main.async {
                        completion(nil, error) // Completion(.failure(let error))
                    }
                }
            } else {
                print("Received empty response from \(getRequest)")
            }
        }
        DispatchQueue.main.async(qos: .background) {
            getTask.resume()
        }
    }
}
