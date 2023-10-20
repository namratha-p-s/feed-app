//
//  FeedView.swift
//  Feed
//
//  Created by Namratha P Somachudan on 10/19/23.
//

import SwiftUI

struct PageView: View {
    var imageName: String
    @State var imageWidth: CGFloat
    @State var imageHeight: CGFloat
    
    var body: some View {
        ZStack{
            Image(imageName)
                .resizable()
                .scaledToFit()
            
            HStack {
                Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/, label: {
                    Text("Rec")
                        .foregroundStyle(.black)
                        .bold()
                })
                .buttonStyle(.borderedProminent)
                .tint(Color(red: 0.99, green: 0.64, blue: 0.62))
                
                Button(action: {}, label: {
                    Text("Experience")
                        .foregroundStyle(.black)
                        .bold()
                })
                .buttonStyle(.borderedProminent)
                .tint(Color(red: 0.87, green: 0.78, blue: 0.75))
                
                Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/, label: {
                    Text("Class")
                        .foregroundStyle(.black)
                        .bold()
                })
                .buttonStyle(.borderedProminent)
                .tint(Color(red: 0.87, green: 0.78, blue: 0.75))
            }
            .frame(
                maxWidth: imageWidth,
                maxHeight: imageHeight,
                alignment: .topLeading
            )
            .padding()
            
            Spacer()
            
            CardView()
                .background(.thinMaterial)
                .padding()
                .frame(
                    maxWidth: imageWidth,
                    maxHeight: imageHeight,
                    alignment: .bottomLeading
                )
        }
    }
}
