//
//  PlaceItemResponse.swift
//  test-app
//
//  Created by Orangeodc4 on 26/3/2024.
//

import Foundation

struct PlaceCoordinateResponse : Decodable{
    let lon :Double
    let lat:Double
}

struct PlaceItemResponse : Decodable
{
    let xid:String
    let name : String
    let dist:Double
    let rate:Double
    let kinds:String
    let point : PlaceCoordinateResponse
}
