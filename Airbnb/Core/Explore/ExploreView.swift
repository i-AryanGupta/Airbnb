//
//  ExploreView.swift
//  Airbnb
//
//  Created by Yashom on 05/11/24.
//

import SwiftUI

struct ExploreView: View {
    var body: some View {
        NavigationStack{
            ScrollView{
                
                SearchAndFliterBar()
                
                // why - because we want only the item render on screen as they appear and we don't wanna render all at once
                LazyVStack(spacing: 32){
                    
                    ForEach(0 ... 10, id: \.self){ listing in
                        ListingItemView()
                            .frame(height: 400)
                            .clipShape(RoundedRectangle(cornerRadius: 10))
                    }
                    
                }
                .padding()
            }// scrollview
        }
    }
}

struct ExploreView_Previews: PreviewProvider {
    static var previews: some View {
        ExploreView()
    }
}
