//
//  ExploreView.swift
//  Airbnb
//
//  Created by Ateeq Ahmed on 11/10/24.
//

import SwiftUI

struct ExploreView: View {
    
    @State private var showDestinationSearchView = false
    
    var body: some View {
        NavigationStack {
            
            if showDestinationSearchView {
                DestinationSearchView(show: $showDestinationSearchView)
            }
            else {
            ScrollView {
                
                SearchAndFilterBar()
                    .onTapGesture {
                        withAnimation(.snappy){
                            showDestinationSearchView.toggle()
                        }
                    }
                
                LazyVStack(spacing: 32) {
                    ForEach(0..<10, id: \.self) { listing in
                        NavigationLink(value: listing) {
                            ListingItemView()
                        }
                    }
                }
                .padding()
            }
            .navigationDestination(for: Int.self) { listing in
                ListingDetailView()
                    .toolbar(.hidden)
            }
            }
        }
    }
}

#Preview {
    ExploreView()
}
