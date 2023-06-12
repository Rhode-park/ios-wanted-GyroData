//
//  ListViewController.swift
//  GyroData
//
//  Created by kjs on 2022/09/16.
//

import UIKit

final class ListViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        configureUI()
    }
    
    private func configureUI() {
        view.backgroundColor = .white
        title = "목록"
        
        let measureButton = UIBarButtonItem(title: "측정", style: .plain, target: self, action: #selector(measureData))
        navigationItem.rightBarButtonItem = measureButton
    }
    
    @objc
    private func measureData() {
        
    }
}

