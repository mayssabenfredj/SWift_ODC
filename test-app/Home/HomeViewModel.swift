//
//  HomeViewModel.swift
//  test-app
//
//  Created by Orangeodc4 on 26/3/2024.
//

import Foundation

class HomeViewModel : ObservableObject
{
    let placeMapper : PlaceMapper = PlaceMapper()
    
    func getAllPlaces()
    {
        Task {
            await self.placeMapper.getAllPlaces(url:Consts.URL)
            if case .success(let success) = result {
                
            }
        }
    }
}
