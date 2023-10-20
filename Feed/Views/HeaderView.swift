//
//  HomeView.swift
//  Feed
//
//  Created by Namratha P Somachudan on 10/18/23.
//

import SwiftUI

struct HeaderView: View {
    
    @State var isToggleEnabled: Bool = true
    
    var body: some View {
        GeometryReader { geometry in
            VStack {
                HStack {
                    Image(systemName: "line.3.horizontal.decrease.circle.fill")
                        .scaleEffect(CGSize(width: 1.5, height: 1.5))
                        .padding()
                    
                    Capsule()
                        .fill(Color(red: 0.80, green: 0.64, blue: 0.59))
                        .frame(height: 44)
                        .frame(width: 250, height: 20)
                        .overlay(
                            HStack {
                                Capsule()
                                    .fill(self.isToggleEnabled ? Color(red: 0.87, green: 0.78, blue: 0.75) : Color(red: 0.80, green: 0.64, blue: 0.59))
                                    .frame(width: 100, height: 35)
                                    .overlay(Text("Stay Local").bold())
                                    .offset(x: 0)
                                
                                Capsule()
                                    .fill(self.isToggleEnabled ? Color(red: 0.80, green: 0.64, blue: 0.59) : Color(red: 0.87, green: 0.78, blue: 0.75))
                                    .frame(width: 100, height: 35)
                                    .overlay(Text("Go Global").bold())
                                    .offset(x: 0)
                            }
                        ).onTapGesture {
                            withAnimation(.spring) {
                                self.isToggleEnabled.toggle()
                            }
                        }
                    
                    Image(systemName: "person.crop.circle")
                        .scaleEffect(CGSize(width: 1.5, height: 1.5))
                        .padding()
                    
                }
                .frame(
                    alignment: .top
                )
                
                Spacer()
                
                ScrollView {
                    PageView(imageName: "cake-1", imageWidth: geometry.size.width, imageHeight: geometry.size.height)
                    PageView(imageName: "margarita-1", imageWidth: geometry.size.width, imageHeight: geometry.size.height)
                }
            }
        }
    }
}

#Preview {
    HeaderView()
}
