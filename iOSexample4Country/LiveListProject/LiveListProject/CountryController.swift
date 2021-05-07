//
//  CountryController.swift
//  LiveListProject
//
//  Created by Guillermo C Espino M on 06/05/21.
//

import Foundation

class CountryController {
    // Create a variable (array) which will hold the data for the list
    var countries: [CountryModel]
    
    init() {
        // Let's put some Object into the array
        self.countries = [
            CountryModel(id: UUID(), name: "Mexico", population: "127M"),
            CountryModel(id: UUID(), name: "Canada", population: "37M"),
            CountryModel(id: UUID(), name: "France", population: "67M"),
            CountryModel(id: UUID(), name: "Italy", population: "60M"),
            CountryModel(id: UUID(), name: "China", population: "1388M"),
        ]
    }
}
