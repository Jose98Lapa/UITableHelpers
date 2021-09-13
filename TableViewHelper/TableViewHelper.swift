//
//  TableViewHelper.swift
//  TableViewHelper
//
//  Created by José Lapa on 13/09/2021.
//
import UIKit

extension UITableView {

	func registerCell< Cell: UITableViewCell > ( _ cellClass: Cell.Type ) {
		register( cellClass, forCellReuseIdentifier: cellClass.reuseID )
	}
	
	func dequeueReusableCell< Cell: UITableViewCell > ( forIndexPath indexPath: IndexPath ) -> Cell {
		
		guard let cell = self.dequeueReusableCell( withIdentifier: Cell.reuseID, for: indexPath ) as? Cell else {
			fatalError( "Fatal error for cell at \(indexPath)" )
		}
		
		return cell
	}
}
