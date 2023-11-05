//
//  AllRecipesRequest.swift
//  MoodFood
//
//  Created by Jai Sinha on 11/4/23.
//

import Foundation

func callAPI(searchString: String) {
    if let url = URL(string: "http://127.0.0.1:5000/\(searchString)") {
        let task = URLSession.shared.dataTask(with: url) { data, response, error in
            if let error = error {
                print("Error: \(error)")
            } else if let data = data {
                // Parse the JSON response if applicable
                do {
                    let json = try JSONSerialization.jsonObject(with: data, options: [])
                    // Handle the JSON data here
                    print("Received JSON data: \(json)")
                } catch {
                    print("Error parsing JSON: \(error)")
                }
            }
        }
        task.resume()
    } else {
        print("Invalid URL")
    }
}

