//
//  ConfigEditor.swift
//  Now Boarding
//
//  Created by Peter Cole on 31/01/2023.
//

import SwiftUI

struct ConfigEditor: View {
    @Binding var config: Config
    
    var body: some View {
        List {
            HStack{
                Text("From station: ").bold()
                Divider()
                TextField("From station", text: $config.crsOne)
            }
            HStack{
                Text("To station: ").bold()
                Divider()
                TextField("To station", text: $config.crsTwo)
            }
            VStack(alignment: .leading, spacing: 20) {
                Text("Direction").bold()
                
                Picker("Direction", selection: $config.direction) {
                    ForEach(Config.Direction.allCases) { direction in
                        Text(direction.rawValue).tag(direction)
                    }
                }
                .pickerStyle(.segmented)
            }
        }
    }
}

struct ConfigEditor_Previews: PreviewProvider {
    static var previews: some View {
        ConfigEditor(config: .constant(.default))
    }
}
