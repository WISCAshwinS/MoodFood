//
//  AllRecipesRequest.swift
//  MoodFood
//
//  Created by Jai Sinha on 11/4/23.
//

import Foundation

func callAPI(searchString: String) -> Recipe? {
    var globalRecipe = Recipe()
    print("Starting")
    let group = DispatchGroup()
    group.enter()
    if let url = URL(string: "http://10.139.251.103:5000/\(searchString)") {
        print("Fetched")
        DispatchQueue.global(qos: .default).async {
            let task = URLSession.shared.dataTask(with: url) { data, response, error in
                if let error = error {
                    print("Error: \(error)")
                } else if let data = data {
                    // Parse the JSON response if applicable
                    do {
                        let json = try JSONSerialization.jsonObject(with: data, options: []) as? [String: Any]
                        // Handle the JSON data here
                        print("Received JSON data: \(String(describing: json))")
                        let recipe = try JSONDecoder().decode(Recipe.self, from: data)
                        globalRecipe = recipe
                        print("Stored recipe")
                        
                    } catch {
                        print("Error parsing JSON: \(error)")
                    }
                }
                else {
                    print("Invalid URL")
                }
                group.leave()
            }
            task.resume()
        }
        group.wait()
    }
    print("Recipe name: \(globalRecipe.name)")
    return globalRecipe
}
