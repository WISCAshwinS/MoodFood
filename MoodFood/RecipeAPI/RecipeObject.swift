//
//  RecipeObject.swift
//  MoodFood
//
//  Created by Jai Sinha on 11/4/23.
//

import Foundation

struct Recipe: Decodable {
    var name = ""
    var url = ""
    var image = ""
    var ingredients = [String]()
    var steps = [String]()
    var prep_time = ""
    var cook_time = ""
    var total_time = ""
    var servings = ""
    
    init() {}
    enum RootKeys: String, CodingKey {
        case name, url, ingredients, steps, prep_time, cook_time, total_time, nb_servings
    }
      
     
    init(from decoder: Decoder) throws {
        let values = try decoder.container(keyedBy: RootKeys.self)
        name = try values.decode(String.self, forKey: .name)
        url = try values.decode(String.self, forKey: .url)
//        image = try values.decode(String.self, forKey: .image)
        ingredients = try values.decode([String].self, forKey: .ingredients)
        steps = try values.decode([String].self, forKey: .steps)
        prep_time = try values.decode(String.self, forKey: .prep_time)
        cook_time = try values.decode(String.self, forKey: .cook_time)
        total_time = try values.decode(String.self, forKey: .total_time)
        servings = try values.decode(String.self, forKey: .nb_servings)
     }
}
