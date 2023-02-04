//
//  DepartureNavigation.swift
//  Now Boarding
//
//  Created by Peter Cole on 31/01/2023.
//

import SwiftUI

struct DepartureNavigation: View {
    @EnvironmentObject var modelData: ModelData
    @State private var showingConfig = false

    var body: some View {
        NavigationView {
            DepartureList()
                .navigationTitle("Departures")
                .toolbar {
                    VStack {
                        Spacer()
                        Button {
                            showingConfig.toggle()
                        } label: {
                            Label("Configure", systemImage: "gearshape.fill")
                        }
                    }
                }
                .sheet(isPresented: $showingConfig) {
                    ConfigHost().environmentObject(modelData)
                }
        }
    }
}

struct DepartureNavigation_Previews: PreviewProvider {
    static var previews: some View {
        DepartureNavigation()
            .environmentObject(ModelData())
    }
}
