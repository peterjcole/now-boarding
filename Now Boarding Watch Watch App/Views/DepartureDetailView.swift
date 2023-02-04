//
//  DepartureDetailView.swift
//  Now Boarding Watch Watch App
//
//  Created by Peter Cole on 31/01/2023.
//

import SwiftUI

struct DepartureDetailView: View {
    var departuresService: DeparturesService
    var body: some View {
        Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
    }
}

struct DepartureDetailView_Previews: PreviewProvider {
    static var previews: some View {
        DepartureDetailView(departuresService: ModelData().departuresServices[0])
    }
}
