//
//  DeparturesRow.swift
//  Now Boarding
//
//  Created by Peter Cole on 27/01/2023.
//

import SwiftUI

struct DeparturesRow: View {
    var departuresService: DeparturesService
    
    var body: some View {
        HStack {
            Text(departuresService.etd ?? "nope")
                .font(.title2)
            Spacer()
            VStack {
                Text("Platform " + (departuresService.platform ?? "-"))
                Text((departuresService.formation?.numCoaches?.description ?? "-") + " coaches")

            }.font(.caption)
        }.padding()
    }
}

struct DeparturesRow_Previews: PreviewProvider {
    static var previews: some View {
        DeparturesRow(departuresService: ModelData().departuresServices[0])
//        Group {
//            DeparturesRow(departuresService: departuresServices[0])
//            DeparturesRow(departuresService: departuresServices[1])
//            DeparturesRow(departuresService: departuresServices[2])
//            DeparturesRow(departuresService: departuresServices[3])
//        }
        .previewLayout(.fixed(width: 300, height: 700))
        

    }
}
