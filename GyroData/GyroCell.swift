//
//  GyroCell.swift
//  GyroData
//
//  Created by Rhode on 2023/06/12.
//

import UIKit

final class GyroCell: UITableViewCell {
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        configureUI()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func configureUI() {
        backgroundColor = .systemBlue
    }
}
