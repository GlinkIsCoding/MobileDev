//
//  ContentView.swift
//  LiveListProject
//
//  Created by Guillermo C Espino M on 06/05/21.
//

import SwiftUI

struct ContentView: View {
    var countryController = CountryController()
    var body: some View {
        List(countryController.countries) { country in
            Text(country.name)
        }
            
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
