//
//  ProductListTableViewModel.swift
//  NeoProductDemo
//
//  Created by apple on 28/07/23.
//

import Foundation

protocol ProductListTableViewModelDelegate{
    func getTableviewData(data:[Product]?)
}

struct ProductListTableViewModel{
    
    var delegate:ProductListTableViewModelDelegate?
    
    let getProductDataUrl = URL(string: "http://staging.php-dev.in:8844/trainingapp/api/products/getList?product_category_id=1")!
    let apiUtility = Utility()
    
    func fetchProductListData(){
        apiUtility.getApiData(requestUrl: getProductDataUrl, resultType: Response.self) { result in
            
            guard let resultData = result.data
            else{
                self.delegate?.getTableviewData(data: nil)
                return
            }
            self.delegate?.getTableviewData(data: resultData)
        }
    }
    
}

