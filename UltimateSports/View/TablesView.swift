//
//  TablesView.swift
//  UltimateSports
//
//  Created by Khavishini on 31/08/2024.
//

import SwiftUI

struct TablesView: View {
    
    @StateObject private var tablesVM = TablesViewModel()
    
    var body: some View {
        VStack(content: {
            Text("Look up Table")
                .font(.title)
                .fontWeight(.bold)
            
            Text("2023-2024")
                .font(.subheadline)
                .fontWeight(.bold)
            
            List {
                ForEach(tablesVM.table, id: \.idTeam) { item in
                    HStack(content: {
                        Text(item.intRank ?? "")
                            .bold()
                            .background(
                                Circle().fill(.blue).frame(width: 30, height: 30, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                            )
                        Spacer()
                        Text(item.strTeam ?? "")
                        Spacer()
                    })
                    
                }
            }
        })
        .onAppear(perform: {
            tablesVM.getTable(in: "2023-2024")
        })
    }
}

#Preview {
    TablesView()
}
