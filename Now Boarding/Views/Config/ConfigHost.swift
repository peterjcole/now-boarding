//
//  ConfigHost.swift
//  Now Boarding
//
//  Created by Peter Cole on 30/01/2023.
//

import SwiftUI

struct ConfigHost: View {
    @Environment(\.editMode) var editMode
    @EnvironmentObject var modelData: ModelData
    @State private var draftConfig = Config.default
    
    var body: some View {
        VStack(alignment: .leading, spacing: 20) {
            HStack {
                if editMode?.wrappedValue == .active {
                    Button("Cancel", role: .cancel) {
                        draftConfig = modelData.config
                        editMode?.animation().wrappedValue = .inactive
                    }
                }
                Spacer()
                EditButton()
            }
            
            if (editMode?.wrappedValue == .inactive) {
                ConfigSummary(config: modelData.config)
            } else {
                ConfigEditor(config: $draftConfig)
                    .onAppear {
                        draftConfig = modelData.config
                    }
                    .onDisappear {
                        modelData.config = draftConfig
                    }
            }
        }
        .padding()
    }
}

struct ConfigHost_Previews: PreviewProvider {
    static var previews: some View {
        ConfigHost()
            .environmentObject(ModelData())
    }
}
