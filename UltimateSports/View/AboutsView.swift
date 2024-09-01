//
//  AboutsView.swift
//  UltimateSports
//
//  Created by Khavishini on 01/09/2024.
//

import SwiftUI

struct AboutsView: View {
    var body: some View {
        VStack {
            Text("About")
                .font(.title)
                .fontWeight(.bold)
            
            Form(content: {
                Section {
                    AboutRowView(title: "Developer",
                                 value: "Khavishini")
                    
                    AboutRowView(title: "Github",
                                 value: "github.com/Khavi18")
                    
                    AboutRowView(title: "Linkedin",
                                 value: "linkedin.com/in/khavishinisuresh")
                    
                } header: {
                    Text("About Developer")
                }
                
                Section {
                    AboutRowView(title: "Name",
                                 value: "The Sports DB")
                    
                    AboutRowView(title: "Website",
                                 value: "thesportsdb.com")
                } header: {
                    Text("API")
                }
            })
        }
    }
}



#Preview {
    AboutsView()
}
