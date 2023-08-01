//
//  extension+ViewController.swift
//  NeoProductDemo,
//
//  Created by apple on 28/07/23.
//

import Foundation
import UIKit

extension ViewController: UITableViewDelegate,UITableViewDataSource{
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
       return  productData?.count ?? 0
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
       let cell = productListTableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as! ProductCell
        let imgUrl = URL(string: productData?[indexPath.row].productImage ?? defaultImage)!
        cell.productImg.downloadImage(from: imgUrl)
        cell.productName.text = productData?[indexPath.row].name
        cell.producerName.text = productData?[indexPath.row].producer
        let cost  = productData![indexPath.row].cost
        cell.cost.text = "Rs. \(cost)"
      
        return cell
    }
    
    
}

extension ViewController: ProductListTableViewModelDelegate{
    func getTableviewData(data: [Product]?) {
    
        if let fetchData = data{
            productData = fetchData
        }else{
            productData = data
        }
        DispatchQueue.main.async { [weak self] in
            self?.productListTableView.reloadData()
        }
    }
}

