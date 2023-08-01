//
//  ProductData.swift
//  NeoProductDemo
//
//  Created by apple on 28/07/23.
//

import Foundation

struct Response : Decodable{
    var status : Int
    var data: [Product]?
}

struct Product : Decodable {
    
    var name:String
    var producer:String
    var cost:Int
    var productImage:String
    
    enum CodingKeys: String,CodingKey{
        case name
        case producer
        case cost
        case productImage = "product_images"
    }
}
