//
//  ContentView.swift
//  Squirtle
//
//  Created by Łukasz Galiński on 21/01/2023.
//

import SwiftUI

struct ContentView: View {
    
    let options: [optionsData] = [
            .init(title: "General", icon: "house"),
            .init(title: "Options", icon: "info.circle"),
            .init(title: "Storage", icon: "gear"),
            .init(title: "Appearance", icon: "message"),
        ]
    var body: some View {
        VStack{
            NavigationBar(options: options)
            Divider()
            GeneralViewSettings()
        }.frame(maxWidth: 300)
    }
}

struct GeneralViewSettings: View {
    @State private var copyStorageOptionOn = false
    @State private var launchOnStartOptionOn = true
    @State private var checkForUpdateOptionOn = false
    
    var body: some View {
        VStack{
            Toggle(
                isOn: $copyStorageOptionOn,
                label: {
                    Text("Copy storage")
                        .font(.caption)
                }).toggleStyle(.switch)
            Toggle(
                isOn: $launchOnStartOptionOn,
                label: {
                    Text("Launch on start")
                        .font(.caption)
                }).toggleStyle(.switch)
            Toggle(
                isOn: $checkForUpdateOptionOn,
                label: {
                    Text("Auto check for updates")
                        .font(.caption)
                }).toggleStyle(.switch)
        }
    }
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

