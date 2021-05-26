//
//  ContentView.swift
//  LiveListProject
//
//  Created by Guillermo C Espino M on 06/05/21.
//

import SwiftUI

struct ContentView: View {
    @ObservedObject var countryController = CountryController()
    var body: some View {
        NavigationView{
            List{
                ForEach(countryController.countries) { country in
                    NavigationLink(destination: DetailView(country: country)) {
                        Text(country.name)
                    }
                } // List
            }
            
            .navigationBarTitle("Countries", displayMode: .inline)
            .navigationBarItems(trailing: NavigationLink(destination: AddCountryView(countryController: countryController)) {
                Image(systemName: "plus").foregroundColor(.blue)
            })
        } // NavView
    }
    
//    private func deleteItem(at indexSet: IndexSet){
//        self.countryController.countries.remove(atOffsets: IndexSet)
//    }
    
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}


