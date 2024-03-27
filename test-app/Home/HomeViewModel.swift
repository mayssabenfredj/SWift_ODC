//
//  HomeViewModel.swift
//  test-app
//
//  Created by Orangeodc4 on 26/3/2024.
//

import Foundation

class HomeViewModel : ObservableObject
{
    let placeMapper : PlaceMapper
    
    init(placeMapper: PlaceMapper) {
            self.placeMapper = placeMapper
        }
    @Published var getAllPlacesState : GetAllPlacesStates = .loading

    
    func getAllPlaces()
    {
        Task {
            let result = await self.placeMapper.getAllPlaces(url:Consts.URL)
            if case .success(let places) = result {
                DispatchQueue.main.async {
                  self.getAllPlacesState = .success( places )
                               }
                print (places)
                
            }else if case let .failure(failure) = result {
                DispatchQueue.main.async {
                  self.getAllPlacesState = .error(failure.message)
                               }
                print("error")
            }
        }
    }
}
