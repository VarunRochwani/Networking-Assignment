//
//  extension+UIImageView.swift
//  NeoProductDemo
//
//  Created by apple on 31/07/23.
//

import Foundation
import UIKit

extension UIImageView{
    
    func downloadImage(from url:URL){
        let dataTask = URLSession.shared.dataTask(with: url) { data,response,error in
            guard let httpUrlResponse = response as? HTTPURLResponse, httpUrlResponse.statusCode == 200, let mimeType = response?.mimeType, mimeType.hasPrefix("image"),
            let data = data, error == nil,
            let image = UIImage(data: data)
            else{
                return
            }
            DispatchQueue.main.async {
                self.image = image
            }
            
        }
        dataTask.resume()
    }
}
