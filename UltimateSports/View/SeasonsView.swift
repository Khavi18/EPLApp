//
//  SeasonsView.swift
//  UltimateSports
//
//  Created by Khavishini on 27/07/2024.
//

import SwiftUI

struct SeasonsView: View {
    var eventSeasons = ["2011-2012","2012-2013","2013-2014","2014-2015","2015-2016","2016-2017","2017-2018","2018-2019","2019-2020","2020-2021","2021-2022","2022-2023","2023-2024"]
    
    var body: some View {
        VStack {
            Text("Seasons")
                .font(.title)
            LazyVGrid(columns: [GridItem(.fixed(100))], content: {
                ForEach(eventSeasons, id: \.self) { item in
                    Text(item)
                        .backgroundStyle(.blue)
                    Spacer()
                }
                
            })
        }
    }
    
}

#Preview {
    SeasonsView()
}
