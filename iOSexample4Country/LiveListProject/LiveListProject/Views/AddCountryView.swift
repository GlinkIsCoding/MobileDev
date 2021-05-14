//
//  AddCountryView.swift
//  LiveListProject
//
//  Created by Guillermo C Espino M on 13/05/21.
//

import SwiftUI

struct AddCountryView: View {
    
    @State var cityName: String
    
    var body: some View {
        VStack{
            TextField("Add City name", text: $cityName)
        }//VStack
        .navigationBarTitle("Add a new Country")
    }
}

struct AddCountryView_Previews: PreviewProvider {
    static var previews: some View {
        AddCountryView(cityName: "")
    }
}
