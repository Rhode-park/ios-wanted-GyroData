//
//  ListViewController.swift
//  GyroData
//
//  Created by kjs on 2022/09/16.
//

import UIKit

final class ListViewController: UIViewController {
    let dataTableView: UITableView = {
        let tableView = UITableView(frame: .zero, style: .plain)
        tableView.register(AccCell.self, forCellReuseIdentifier: "AccCell")
        tableView.register(GyroCell.self, forCellReuseIdentifier: "GyroCell")
        tableView.showsVerticalScrollIndicator = false
        tableView.translatesAutoresizingMaskIntoConstraints = false
        
        return tableView
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        configureUI()
        configureSubview()
        configureConstraint()
    }
    
    private func configureUI() {
        view.backgroundColor = .white
        title = "목록"
        
        let measureButton = UIBarButtonItem(title: "측정", style: .plain, target: self, action: #selector(measureData))
        navigationItem.rightBarButtonItem = measureButton
        
        dataTableView.dataSource = self
    }
    
    @objc
    private func measureData() {
        
    }
    
    func configureSubview() {
        view.addSubview(dataTableView)
    }
    
    func configureConstraint() {
        NSLayoutConstraint.activate([
            dataTableView.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor),
            dataTableView.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor),
            dataTableView.trailingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.trailingAnchor),
            dataTableView.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor)
        ])
    }
}

extension ListViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 3
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let remainder = indexPath.row % 2
        
        guard remainder == 0 else {
            guard let cell = tableView.dequeueReusableCell(withIdentifier: "GyroCell") as? GyroCell else { return GyroCell() }
            
            return cell
        }
        
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "AccCell") as? AccCell else { return AccCell() }
        
        return cell
    }
}
