//
//  ViewController.swift
//  NeoProductDemo
//
//  Created by apple on 28/07/23.
//

import UIKit

class ViewController: UIViewController {

    
    @IBOutlet weak var productListTableView: UITableView!
    var productData:[Product]?
    
    var defaultImage = "https://picsum.photos/200"
    
    var productListTableViewModel = ProductListTableViewModel()
    override func viewDidLoad() {
        super.viewDidLoad()
        setUpProductTableView()
        productListTableViewModel.delegate = self
        fetchData()
          
    }
    func fetchData(){
        productListTableViewModel.fetchProductListData()
    }

    func setUpProductTableView(){
        productListTableView.dataSource = self
        productListTableView.delegate = self
    }

}

