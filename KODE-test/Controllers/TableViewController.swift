//
//  TableViewController.swift
//  KODE-test
//
//  Created by Monday MeoW. on 25.01.2021.
//

import UIKit

class TableViewController: UIViewController {

	override func loadView() {
		self.view = TableView()
	}

	func selectCell() {
		let detailsVC = DetailsViewController()
		detailsVC.set()

		navigationController?.pushViewController(detailsVC, animated: true)
	}

	override func viewWillAppear(_ animated: Bool) {
		let url = URL(string: "https://test.kode-t.ru/recipes.json")!
		let dataTask = URLSession.shared.dataTask(with: url) { data, response, error in
			if let error = error {
				print(error)
				return
			}
			do {
				let result = try JSONDecoder().decode(Recipes.self, from: data!)
				print(result)
			} catch {
				print(error)
			}
		}
		dataTask.resume()
	}
}

extension TableViewController {

	func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
		let detailsVC = DetailsViewController()
		detailsVC.set()

		navigationController?.pushViewController(detailsVC, animated: true)
	}


}
