//
//  CardView.swift
//  Feed
//
//  Created by Namratha P Somachudan on 10/19/23.
//

import SwiftUI

struct CardView: View {
    @State var isViewed = false
    @State private var showFullText = false
    
    var body: some View {
        VStack {
            HStack {
                Image(systemName: "person.crop.circle")
                    .padding()
                
                Text("Jane Doe")
                
                Spacer()
                
                Image(systemName: "heart")
                    .padding()
                
                Image(systemName: "pin")
                    .padding()
                
                Image(systemName: "bubble.left.and.bubble.right")                    .padding()
            }
            
            Text("19th October, 2023")
                .font(.subheadline)
                .fontWeight(.light)
                .frame(maxWidth: .infinity, alignment: .leading)
                .padding()
            
            Text("Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Facilisi cras fermentum odio eu feugiat. In arcu cursus euismod quis viverra nibh cras. Urna neque viverra justo nec ultrices. Lacus suspendisse faucibus interdum posuere lorem ipsum. Adipiscing elit duis tristique sollicitudin nibh sit amet commodo. Odio morbi quis commodo odio aenean. Interdum varius sit amet mattis vulputate enim nulla. Rhoncus aenean vel elit scelerisque. Sit amet consectetur adipiscing elit. Velit laoreet id donec ultrices tincidunt arcu non. Enim lobortis scelerisque fermentum dui faucibus in ornare quam. Leo in vitae turpis massa sed elementum tempus egestas. Sit amet nulla facilisi morbi. Arcu vitae elementum curabitur vitae nunc sed velit dignissim sodales. Aliquam id diam maecenas ultricies mi eget mauris. Pulvinar pellentesque habitant morbi tristique senectus et netus et malesuada. Feugiat sed lectus vestibulum mattis ullamcorper velit sed ullamcorper morbi.")
                .font(.caption)
                .lineLimit(showFullText ? nil : 5)
                .padding()
        }
        .onTapGesture {
            withAnimation {
                showFullText.toggle()
                isViewed.toggle()
            }
        }
    }
}

#Preview {
    CardView()
}
