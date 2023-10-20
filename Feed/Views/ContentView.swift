//
//  ContentView.swift
//  Feed
//
//  Created by Namratha P Somachudan on 10/18/23.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        TabView {
            HeaderView()
                .tabItem {
                    Image(systemName: "homekit")
                        .symbolRenderingMode(.palette)
                        .foregroundStyle(.black)
                }
            
            HeaderView()
                .tabItem {
                    Image(systemName: "plus")
                        .symbolRenderingMode(.palette)
                        .foregroundStyle(.black)
                }
            
            HeaderView()
                .tabItem {
                    Image(systemName: "globe")
                        .symbolRenderingMode(.palette)
                        .foregroundStyle(.black)
                }
        }
    }
}

#Preview {
    ContentView()
}
