//
//  AllRecipesRequest.swift
//  MoodFood
//
//  Created by Jai Sinha on 11/4/23.
//

import Foundation

class CallAPI : ObservableObject {
    @Published var globalRecipe = Recipe()
    func callAPI(searchString: String) {
        if let url = URL(string: "http://10.139.251.103:5000/\(searchString)") {
            let task = URLSession.shared.dataTask(with: url) { data, response, error in
                if let error = error {
                    print("Client error: \(error)")
                    return
                }
                guard let httpResponse = response as? HTTPURLResponse,
                      (200...299).contains(httpResponse.statusCode) else {
                    print("Server error")
                    return
                }
                if let mimeType = httpResponse.mimeType, mimeType == "application/json", // Assuming the response is JSON
                   let data = data {
                    do {
                        if let json = try JSONSerialization.jsonObject(with: data, options: []) as? [String: Any] {
                            // Successfully parsed JSON
                            print("Parsed JSON")
                            if let name = json["name"] as? String,
                                let url = json["url"] as? String,
                                let image = json["image"] as? String,
                                let ingredients = json["ingredients"] as? [String],
                                let steps = json["steps"] as? [String],
                                let prep_time = json["prep_time"] as? Int,
                                let cook_time = json["cook_time"] as? Int,
                                let total_time = json["total_time"] as? Int,
                                let servings = json["servings"] as? Int {
                                    let recipe = Recipe(name: name, url: url, image: image, ingredients: ingredients,
                                                        steps: steps, prep_time: prep_time, cook_time: cook_time,
                                                        total_time: total_time, servings: servings)
                                
                                // Now you have your object with JSON data assigned
                                    self.globalRecipe = recipe
                                    print("Stored recipe")
                            }
                        }
                    } catch {
                        print("JSON parsing error")
                    }
                }
            }
            task.resume()
        } else {
            print("Invalid URL")
        }
        
    }

}
