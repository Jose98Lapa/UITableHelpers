//
//  UITableViewCell.swift
//  TableViewHelper
//
//  Created by José Lapa on 13/09/2021.
//

import UIKit

protocol Reusable { }

extension UITableViewCell: Reusable { }

extension Reusable where Self: UITableViewCell {
	static var reuseID: String {
		return String( describing: self )
	}
}
