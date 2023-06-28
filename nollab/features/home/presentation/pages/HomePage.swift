//
//  HomePage.swift
//  nollab
//
//  Created by richmond gyekye on 28/06/2023.
//

import SwiftUI

struct HomePage: View {
    
    // UI
    var body: some View {
        NavigationStack {
            ScrollView {
                Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
            }
            .navigationTitle("Home Page")
            .navigationBarBackButtonHidden()
        }
    }
}

struct HomePage_Previews: PreviewProvider {
    static var previews: some View {
        HomePage()
    }
}
