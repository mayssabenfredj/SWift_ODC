//
//  PlaceMapper.swift
//  test-app
//
//  Created by Orangeodc4 on 26/3/2024.
//

import Foundation

class PlaceMapper{
    
    let placeDataSource : PlaceDataSource = PlaceDataSource()
    func getAllPlaces(url : String )async ->Result<[PlaceItem],Failure>{
        let result =  try? await placeDataSource.getAllPlaces(url: Consts.URL)
        if let result = result as? [PlaceItemResponse]
        {
            return .success(result.map{
                return PlaceItem(name : $0.name , distance : $0.dist , kinds: $0.kinds.split(separator :",").map{String($0)})
            })
        }else {
            return .failure(Failure(message: "Server error please try again later"))
        }
    }
}
