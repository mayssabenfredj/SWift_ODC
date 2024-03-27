//
//  PlaceItem.swift
//  test-app
//
//  Created by Orangeodc4 on 26/3/2024.
//

import SwiftUI

struct PlaceItemView : View {
    
    
    let item : PlaceItem
    
    
    
    var body: some View {
        HStack{
            VStack(alignment :.leading){
                Text(item.name).bold()
                HStack{
                    ForEach(item.kinds, id: \.self){
                        kind in
                        Text(kind ).font(.system(size: 8)).padding(.vertical , 8).padding(.horizontal , 15).background(RoundedRectangle(cornerRadius: 50).fill(Color.gray.opacity(0.2)))

                    }
                }

                

            }
            Spacer()
            VStack{
                Image(systemName: "star").padding()
                Text(String(format: "%.1f m ", item.distance)).bold().font(.system(size: 10)).foregroundStyle(.gray)

                

            }
            
        }
        Divider()
    }
}

#Preview {
    PlaceItemView(item:   PlaceItem(name : "Place 2" , distance : 12.0 , kinds : ["Restoo", "HH"])
    
    )
}
