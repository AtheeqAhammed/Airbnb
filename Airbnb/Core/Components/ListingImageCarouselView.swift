//
//  ListingImageCarouselView.swift
//  Airbnb
//
//  Created by Ateeq Ahmed on 12/10/24.
//

import SwiftUI

struct ListingImageCarouselView: View {
    
    var images = ["Airbnb1", "Airbnb2", "Airbnb3", "Airbnb4"]
    
    var body: some View {
        
        TabView {
            ForEach (images, id: \.self) { image in
                Image(image)
                    .resizable()
                    .scaledToFill()
            }
        }
        .tabViewStyle(.page)
    }
}

#Preview {
    ListingImageCarouselView()
}
