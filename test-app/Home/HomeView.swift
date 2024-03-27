//
//  HomeView.swift
//  test-app
//
//  Created by Orangeodc4 on 26/3/2024.
//

import SwiftUI

struct HomeView: View {
    let places:[PlaceItem] = [
        PlaceItem(name : "Place 1" , distance : 12.10 , kinds :  ["Restoo", "HH"]),
        
        PlaceItem(name : "Place 2" , distance : 12.0 , kinds :  ["Restoo", "HH"]),
        PlaceItem(name : "Place 3" , distance : 12.0 , kinds :  ["Restoo", "HH"] ),
        
    ]
    let options = ["My Location","Tunis" , "Bizerte" , "Sousse"]
    @State var selectedOption = 0
    @EnvironmentObject var homeViewModel : HomeViewModel

    var body: some View {
        VStack{
            HStack{
                VStack(alignment : .leading){
                   
                    Text("RecentPlace ( \(places.count))" ).bold().font(.system(size: 14))
                    Text("Range : 500 " ).font(.system(size: 10))
                    
                       
                   
                }
                Spacer()
                Picker(selection: $selectedOption,
                       label:Text("").tint(.black).font(.system(size: 10))){
                            ForEach(0..<options.count){
                                option in
                                Text(self.options[option]).tag(option)
                            }
                    }
            }.padding(10)
                    if case .loading = self.homeViewModel.getAllPlacesState {
                        HStack {
                            ProgressView().progressViewStyle(.circular)
                        }.frame(maxWidth: .infinity, maxHeight: .infinity)
                    } else if case let .success(places) = self.homeViewModel.getAllPlacesState{
                        ScrollView(showsIndicators: false) {
                            ForEach(places) {
                                item in
                                NavigationLink {
                                    Text("")
                                }
                                label : {
                                    PlaceItemView(item:item)
                                }.buttonStyle(PlainButtonStyle())
                        }.padding(.horizontal ,15)
                    }
                }

        }.frame(maxWidth:.infinity , maxHeight :.infinity , alignment: .top).onAppear(){
            self.homeViewModel.getAllPlaces()
        }
        
    }
    
}


#Preview {
    HomeView()
}
