//
//  DepartureDetailView.swift
//  Now Boarding
//
//  Created by Peter Cole on 27/01/2023.
//

import SwiftUI

struct DepartureDetailView: View {
    var departuresService: DeparturesService
    
    var body: some View {
        VStack() {
            DeparturesRow(departuresService: departuresService)
        }.padding().ignoresSafeArea()
    }
}

struct DepartureDetailView_Previews: PreviewProvider {
    static var previews: some View {
        DepartureDetailView(departuresService: ModelData().departuresServices[0])
    }
}
