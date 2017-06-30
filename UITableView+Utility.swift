//
//  UITableView+Utility.swift
//  Makestagram
//
//  Created by Iman F on 6/29/17.
//  Copyright © 2017 Iman F (group project). All rights reserved.
//

import Foundation
import UIKit
protocol CellIdentifiable {
    static var cellIdentifier: String { get }
}
extension CellIdentifiable where Self: UITableViewCell {
    static var cellIdentifier: String {
        return String(describing: self)
    }
}
extension UITableViewCell: CellIdentifiable {}
extension UITableView {
    func dequeuReusableCell<T: UITableViewCell>() -> T where T: CellIdentifiable {
        guard let cell = dequeueReusableCell(withIdentifier: T.cellIdentifier) as? T else {
            fatalError("Error dequeuing cell for identifier \(T.cellIdentifier)")
        }
        return cell
    }
}
