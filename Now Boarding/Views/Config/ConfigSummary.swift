//
//  ConfigSummary.swift
//  Now Boarding
//
//  Created by Peter Cole on 30/01/2023.
//

import SwiftUI

struct ConfigSummary: View {
    var config: Config
    
    var body: some View {
        VStack(alignment: .leading, spacing: 10) {
            Text(config.crsOne)
            Text(config.crsTwo)
            Text(config.direction.rawValue)
            Spacer()
        }
    }
}

struct ConfigSummary_Previews: PreviewProvider {
    static var previews: some View {
        ConfigSummary(config: Config.default)
    }
}
