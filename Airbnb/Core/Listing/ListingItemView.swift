//
//  ListingItemView.swift
//  Airbnb
//
//  Created by Ateeq Ahmed on 11/10/24.
//

import SwiftUI

struct ListingItemView: View {
    
    var body: some View {
        
        VStack(spacing: 8) {
            
            ListingImageCarouselView()
                .frame(height: 400)
                .clipShape(RoundedRectangle(cornerRadius: 10))
            
            HStack(alignment: .top) {
                VStack(alignment: .leading) {
                    Text("Miami, Florida")
                        .fontWeight(.semibold)
                        .foregroundStyle(.black)
                    Text("12 mi away")
                        .foregroundStyle(.gray)
                    Text("Nov 3 - 10")
                        .foregroundStyle(.gray)
                    HStack {
                        Text("$567")
                            .fontWeight(.bold)
                        Text("night")
                    }
                    .foregroundStyle(.black)
                }
                Spacer()
                HStack {
                    Image(systemName: "star.fill")
                    Text("4.8")
                }
                .foregroundStyle(.black)
            }
            .font(.footnote)
        }
    }
}

#Preview {
    ListingItemView()
}
