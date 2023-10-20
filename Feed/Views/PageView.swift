//
//  FeedView.swift
//  Feed
//
//  Created by Namratha P Somachudan on 10/19/23.
//

import SwiftUI

struct PageView: View {
    var imageName: String
    var width: CGFloat
    var height: CGFloat
    @Binding var isHeartFilled: Bool
    
    var body: some View {
        VStack{
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
                
                Spacer()
            }
            .padding([.top, .leading])
            
            Spacer()
            
            CardView(width: width * 0.9, height: height,
                isHeartFilled: $isHeartFilled)
            .padding([.leading, .trailing, .bottom])

                
        }
        .frame(width: width, height: height)
        .background(
            Image(imageName)
                .resizable()
                .aspectRatio(contentMode: .fill)
        )
        .cornerRadius(20)
    }
}

#Preview {
    ContentView()
}
