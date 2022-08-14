//
//  TodoListViewCell.swift
//  FixedForExT
//
//  Created by 장효원 on 2022/08/14.
//

import UIKit

class TodoListViewCell: UITableViewCell {
    static let identifier = "TodoListViewCell"
    
    let label:UILabel = {
        let label = UILabel()
        
        label.translatesAutoresizingMaskIntoConstraints = false
        label.textColor = .black
        
        return label
    }()
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        
        //MARK: You should to add to "contentView"
        contentView.addSubview(label)
        
        NSLayoutConstraint.activate([
            label.leadingAnchor.constraint(equalTo: self.contentView.leadingAnchor),
            label.centerYAnchor.constraint(equalTo: self.contentView.centerYAnchor)
        ])
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
