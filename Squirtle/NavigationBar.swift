//
//  NavigationBar.swift
//  Squirtle
//
//  Created by Łukasz Galiński on 21/01/2023.
//

import SwiftUI

struct optionsData: Hashable {
    let title: String
    let icon: String
}

struct NavigationBar: View {
    let options: [optionsData]
    
    var body: some View {
        HStack{
            ForEach(options, id: \.self) { option in
                Button {
                    print("Button" + option.title)
                } label: {
                    VStack{
                        Image(systemName: option.icon)
                        Text(option.title)
                            .font(.caption)
                    }
                }.buttonStyle(PlainButtonStyle())
            }
        }.padding(EdgeInsets(top: 8, leading: 2, bottom: 0, trailing: 2))
    }
}

