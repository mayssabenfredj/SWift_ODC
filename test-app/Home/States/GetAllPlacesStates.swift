//
//  GetAllPlacesStates.swift
//  test-app
//
//  Created by Orangeodc4 on 27/3/2024.
//

import Foundation

enum GetAllPlacesStates
{
    
    case loading
    case success([PlaceItem])
    case error(String)
    
}
