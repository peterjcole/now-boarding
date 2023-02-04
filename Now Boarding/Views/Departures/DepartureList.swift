//
//  DepartureList.swift
//  Now Boarding
//
//  Created by Peter Cole on 27/01/2023.
//

import SwiftUI

struct DepartureList: View {
    @EnvironmentObject var modelData: ModelData
    @State private var showingConfig = false
    
    var body: some View {
        List(modelData.departuresServices) { departuresService in
            NavigationLink {
                DepartureDetailView(departuresService: departuresService)
            } label: {
                DeparturesRow(departuresService: departuresService)
                
            }
        }
        .navigationTitle("Departures")
        
    }
}

struct DepartureList_Previews: PreviewProvider {
    static var previews: some View {
        ForEach(["iPad mini (6th generation)", "iPhone 14 Pro", "iPhone SE", "Apple Watch Series 8 (41mm)"], id: \.self) { deviceName in
            DepartureList()
                .environmentObject(ModelData())
                .previewDevice(PreviewDevice(rawValue: deviceName))
                .previewDisplayName(deviceName)
            
        }
    }
}
