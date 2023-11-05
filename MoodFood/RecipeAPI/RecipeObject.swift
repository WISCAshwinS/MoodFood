//
//  RecipeObject.swift
//  MoodFood
//
//  Created by Jai Sinha on 11/4/23.
//

import Foundation

class Recipe {
    var name = ""
    var url = ""
    var image = ""
    var ingredients = [String]()
    var steps = [String]()
    var prep_time = 0
    var cook_time = 0
    var total_time = 0
    var servings = 0
    
    init() {}
    init(name: String, url: String, image: String, ingredients: [String], steps: [String], prep_time: Int, cook_time: Int, total_time: Int, servings: Int) {
        self.name = name
        self.url = url
        self.image = image
        self.ingredients = ingredients
        self.steps = steps
        self.prep_time = prep_time
        self.cook_time = cook_time
        self.total_time = total_time
        self.servings = servings
    }
}
