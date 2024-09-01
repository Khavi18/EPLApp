//
//  AboutRowView.swift
//  UltimateSports
//
//  Created by Khavishini on 01/09/2024.
//

import SwiftUI

struct AboutRowView: View {
    
    var title: String
    var value: String
    
    var body: some View {
        HStack {
            Text(title)
            Spacer()
            Text(value)
                .bold()
        }
    }
}

#Preview {
    AboutRowView(title: "Developer", value: "Khavi")
}
