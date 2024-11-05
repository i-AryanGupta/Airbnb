//
//  ListingItemView.swift
//  Airbnb
//
//  Created by Yashom on 05/11/24.
//

import SwiftUI

struct ListingItemView: View {
    
    var images = [
    "listing_2",
    "listing_3",
    "listing_1",
    "listing_4"
    ]
    
    var body: some View {
        VStack(spacing: 8){
            //images
            TabView{
                ForEach(images, id: \.self){ image in
                    Image(image)
                        .resizable()
                        .scaledToFill()
                }
            }
            .frame(height: 320)
            .clipShape(RoundedRectangle(cornerRadius: 10))
            .tabViewStyle(.page)
            
            //listing details
            HStack(alignment: .top){
                //details
                VStack(alignment: .leading){
                    Text("Maimi, Florida")
                        .fontWeight(.semibold)
                    
                    Text("12 ml away")
                        .foregroundColor(.gray)
                    
                    Text("Nov 3 - 10")
                        .foregroundColor(.gray)
                    
                    
                    HStack(spacing: 4){
                        Text("$567")
                            .fontWeight(.semibold)
                        
                        Text("night")
                    }
                }
                
                Spacer()
        
                //rating
                
                HStack(spacing: 2){
                    Image(systemName: "star.fill")
                    
                    Text("4.68")
                }
            }
            .font(.footnote)
        }
    }
}

struct ListingItemView_Previews: PreviewProvider {
    static var previews: some View {
        ListingItemView()
    }
}
