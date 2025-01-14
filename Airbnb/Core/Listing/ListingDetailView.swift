//
//  ListingDetailView.swift
//  Airbnb
//
//  Created by Ateeq Ahmed on 11/10/24.
//

import SwiftUI
import MapKit

struct ListingDetailView: View {
    
    @Environment(\.dismiss) var dismiss
    
    var body: some View {
        ScrollView {
            ZStack(alignment: .topLeading) {
                ListingImageCarouselView()
                    .frame(height: 350)
                
                Button {
                    dismiss()
                } label: {
                    Image(systemName: "chevron.left")
                        .foregroundStyle(.black)
                        .background{
                            Circle()
                                .fill(.white)
                                .frame(width: 32, height: 32)
                        }
                        .padding(32)
                }

            }
            
            VStack(alignment: .leading) {
                Text("Miami Villa")
                    .font(.title)
                    .fontWeight(.semibold)
                HStack {
                    Image(systemName: "star.fill")
                    Text("4.8")
                    Text("-")
                    Text("100 reviews").underline()
                        .bold()
                }
                Text("Miami, Florida")
                
                Divider()
                
                HStack {
                    VStack(alignment: .leading){
                        Text("Enter Villa hosted by John Smith")
                            .font(.headline)
                            .frame(width: 250, alignment: .leading)
                        
                        Text("4 guests - 2 bedrooms - 4 beds - 2 baths")
                            .font(.footnote)
                    }
                    Spacer()
                    
                    Image("Airbnb2")
                        .resizable()
                        .frame(width: 70, height: 70)
                        .clipShape(Circle())
                }
                
                Divider()
                
                VStack(spacing: 16) {
                    
                    ForEach(0..<2) { feature in
                    HStack {
                        Image(systemName: "medal")
                        
                        VStack (alignment: .leading){
                            Text("Superhost")
                                .font(.footnote)
                                .fontWeight(.semibold)
                            
                            Text("Superhosts are experience, highly rated hosts who are commited to providing great stars for guests.")
                                .font(.caption)
                                .foregroundStyle(.gray)
                            }
                        }
                    }
                }
                
                Divider()
                
                VStack(alignment: .leading, spacing: 16) {
                    Text("Where you'll sleep")
                        .fontWeight(.semibold)
                    
                    ScrollView(.horizontal, showsIndicators: false) {
                        HStack(spacing: 16) {
                            ForEach(1..<5) { bedroom in
                                VStack {
                                    Image(systemName: "bed.double")
                                    
                                    Text("Bedroom\(bedroom)")
                                }
                                .frame(width: 132, height: 100)
                                .overlay {
                                    RoundedRectangle(cornerRadius: 15)
                                        .stroke(lineWidth: 1)
                                        .foregroundStyle(.gray)
                                        
                                }
                            }
                        }
                    }
                    .scrollTargetBehavior(.paging)
                }
                
                Divider()
                
                VStack(alignment: .leading, spacing: 16) {
                    Text("What this place offers")
                        .font(.headline)
                    
                    ForEach(0..<5) { items in
                        HStack {
                            Image(systemName: "wifi")
                                .frame(width: 32)
                            Text("Wifi")
                                .font(.footnote)
                        }
                    }
                }
                
                Divider()
                
                VStack(alignment: .leading, spacing: 16) {
                    Text("Where you'll be")
                        .font(.headline)
                 
                    Map()
                        .frame(height: 200)
                        .clipShape(RoundedRectangle(cornerRadius: 12))
                    
                }
                .padding(.bottom, 100)
                
            }
            .padding()
        }
        .ignoresSafeArea()
        
        .overlay(alignment: .bottom) {
            
            VStack {
                Divider()
                    .padding(.bottom)
                
                HStack{
                    VStack{
                        Text("$500")
                            .font(.headline)
                            .fontWeight(.semibold)
                        
                        Text("Total taxes before")
                            .font(.footnote)
                        
                        Text("Oct 15 - 20")
                            .font(.footnote)
                            .fontWeight(.semibold)
                            .underline()
                    }
                    
                    Spacer()
                    
                    Button {
                        
                    } label: {
                        Text("Reserve")
                            .foregroundStyle(.white)
                            .font(.subheadline)
                            .fontWeight(.semibold)
                            .frame(width: 140, height: 40)
                            .background(.pink)
                            .clipShape(RoundedRectangle(cornerRadius: 10))
                    }
                }
                .padding(.horizontal,32)
            }
            .background(.white)
        }
    }
}

#Preview {
    ListingDetailView()
}
