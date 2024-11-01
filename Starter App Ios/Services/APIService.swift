//
//  APIService.swift
//  Starter App Ios
//
//  Created by Abbas on 28/06/2024.
//

import SwiftUI

import Foundation
//
class APIService {
    static let shared = APIService()
    
    private init() {}
    
    func fetchData(completion: @escaping (ResponseData?) -> Void) {
        var request = URLRequest(url: URL(string: "https://api.var-live.tv/api/Mobile/Home")!, timeoutInterval: Double.infinity)
        request.httpMethod = "GET"

        let task = URLSession.shared.dataTask(with: request) { data, response, error in
            guard let data = data else {
                print(String(describing: error))
                completion(nil)
                return
            }
            
            do {
                let decoder = JSONDecoder()
                let responseData = try decoder.decode(ResponseData.self, from: data)
                completion(responseData)
            } catch {
                print("Error decoding JSON: \(error)")
                completion(nil)
            }
        }

        task.resume()
    }

    
    
    //    https://api.hujozat.co/user/homePage/New
        
        
        func fetchHomeData(completion: @escaping (HomeResponseData?) -> Void) {
               var request = URLRequest(url: URL(string: "\(BASE_URL)/user/homePage/New")!, timeoutInterval: Double.infinity)
               request.httpMethod = "GET"
    
               let task = URLSession.shared.dataTask(with: request) { data, response, error in
                   guard let data = data else {
                       print(String(describing: error))
                       completion(nil)
                       return
                   }
    
                   // Print raw JSON data for debugging
                   if let jsonString = String(data: data, encoding: .utf8) {
                       print("Received JSON: \(jsonString)")
                   }
    
                   do {
                       let decoder = JSONDecoder()
                       let responseData = try decoder.decode(HomeResponseData.self, from: data)
                       completion(responseData)
                   } catch {
                       print("Error decoding JSON: \(error)")
                       completion(nil)
                   }
               }
    
               task.resume()
           }
}



 
class APIServices {
    func fetchHome(search: String, skip: Int = 1, take: Int = 20, completion: @escaping (Result<HomeResponseData, APIError>) -> Void) {
//        let url = URL(string: "\(BASE_URL)/user/homePage/New")
        let url = createURL(for: search, path: "/user/homePage/New", skip: skip, take:take)
        fetch(type: HomeResponseData.self, url: url, completion: completion)
    }

    private func fetch<T: Codable>(type: T.Type, url: URL?, completion: @escaping (Result<T, APIError>) -> Void) {
        guard let url = url else {
            let error = APIError.badURL
            completion(.failure(error))
            return
        }

        URLSession.shared.dataTask(with: url) { data, response, error in
            if let error = error as? URLError {
                let error = APIError.urlSessionError(error)
                completion(.failure(error))
            } else if let response = response as? HTTPURLResponse, !(200...299).contains(response.statusCode) {
                completion(.failure(APIError.badResponse(response.statusCode)))
            } else if let data = data {
                do {
                    let result = try JSONDecoder().decode(type, from: data)
                    completion(.success(result))
                } catch {
                    completion(.failure(APIError.decoding(error as? DecodingError)))
                }
            }
        }
        .resume()
    }
}



private func createURL(for search: String,path: String, skip: Int?, take: Int?) -> URL? {

  var queryItems = [
    URLQueryItem(name: "search", value: search)
  ]

  if let skip = skip, let take = take {
    queryItems.append(URLQueryItem(name: "skip", value: String(skip)))
    queryItems.append(URLQueryItem(name: "take", value: String(take)))
  }


  var components = URLComponents(string: BASE_URL)
  components?.path = path
  components?.queryItems = queryItems  
  return components?.url
}
