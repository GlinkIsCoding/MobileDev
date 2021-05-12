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
        NavigationView{
            
            List(countryController.countries) { country in
                NavigationLink(destination: DetailView(country: country)) {
                    Text(country.name)
                }
            } // List
            .navigationBarTitle("Countries", displayMode: .inline)
        } // NavView
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}


