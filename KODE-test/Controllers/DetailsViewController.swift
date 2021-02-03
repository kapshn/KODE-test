//
//  DetailsViewController.swift
//  KODE-test
//
//  Created by Monday MeoW. on 25.01.2021.
//

import UIKit

class DetailsViewController: UIViewController {

	let detailView = DetailsView()
	override func loadView() {
		self.view = detailView
	}

	func set() {
		detailView.set()
	}
}
