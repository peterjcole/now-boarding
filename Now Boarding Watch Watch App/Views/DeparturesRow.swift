//
//  DeparturesRow.swift
//  Now Boarding Watch Watch App
//
//  Created by Peter Cole on 27/01/2023.
//

import SwiftUI

struct DeparturesRow: View {
    var departuresService: DeparturesService
    
    var body: some View {
        HStack {
            ZStack {
                HStack {
                    VStack(alignment: .leading) {
                        Text(departuresService.etd ?? "-")
                            .font(.title2)
                        if (departuresService.etd != departuresService.std) {
                            Text("(" + (departuresService.std ?? "-") + ")")
                                .font(.caption2)
                                .strikethrough()
                                .padding(.bottom, 1.0)
                        }

                        
                        HStack {
                            Image(systemName: "arrow.right")
                                .padding(.trailing, -2.0)
                                .padding(.leading, -2.0)
                                .imageScale(.small)
                                .accessibilityLabel("Arrival time: ")
                            Text(departuresService.destinationEta ?? "-")
                                .font(.headline)
                        }
                        
                    }
                    Spacer()
                }
                HStack {
                    Spacer()
                    VStack(alignment: .trailing) {
                        HStack {
                            Text(departuresService.platform ?? "-")

                            Image(systemName: "p.square.fill").accessibilityLabel("Platform: ")
                        }.padding(.bottom, 1.0)
                        HStack {
                            Text(departuresService.formation?.numCoaches?.description ?? "-")

                            Image(systemName: "train.side.middle.car").accessibilityLabel("Coaches: ").imageScale(.small)
                        }.padding(.bottom, 1.0)
                        if (departuresService.formation?.avgLoading != nil) {
                            HStack {
                                Text(departuresService.formation?.avgLoading?.description ?? "-")

                                Image(systemName: "scalemass.fill").accessibilityLabel("Average loading: ").imageScale(.small).padding(.top, -2.0)
                            }
                        }
                        
                    }.font(.headline).bold()
                }
            }
            
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
