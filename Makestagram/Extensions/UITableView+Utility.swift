//
//  UITableView+Utility.swift
//  Makestagram
//
//  Created by Youssef Elabd on 7/2/17.
//  Copyright © 2017 Youssef Elabd. All rights reserved.
//

import UIKit

protocol CellIdentifiable {
    static var cellIdentifier : String { get }
}

extension CellIdentifiable where Self : UITableViewCell {
    
    static var cellIdentifier : String {
        return String(describing: self)
    }
}

extension UITableViewCell : CellIdentifiable{}

extension UITableView {
    
    func dequeueReusableCell<T: UITableViewCell>() -> T where T : CellIdentifiable{
        guard let cell = dequeueReusableCell(withIdentifier: T.cellIdentifier) as? T else {
            // 3
            fatalError("Error dequeuing cell for identifier \(T.cellIdentifier)")
        }
        
        return cell

    }
}

