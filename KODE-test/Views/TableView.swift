//
//  TableView.swift
//  KODE-test
//
//  Created by Monday MeoW. on 25.01.2021.
//

import UIKit

class TableView: UIView {
	private var table = UITableView()
	private let cellIdentifier = "Cell"

	init() {
		super.init(frame: .zero)
		self.backgroundColor = UIColor.clear

		setupTableView()
	}

	required init?(coder: NSCoder) {
		fatalError("init(coder:) has not been implemented")
	}

}

private extension TableView {

	func setupTableView() {
		table.backgroundColor = UIColor.clear
		table.delegate = self
		table.dataSource = self
		self.addSubview(table)
		table.translatesAutoresizingMaskIntoConstraints = false
		NSLayoutConstraint.activate([
			table.topAnchor.constraint(equalTo: self.topAnchor),
			table.bottomAnchor.constraint(equalTo: self.bottomAnchor),
			table.leftAnchor.constraint(equalTo: self.leftAnchor),
			table.rightAnchor.constraint(equalTo: self.rightAnchor)
		])
		table.register(TableViewCell.self, forCellReuseIdentifier: cellIdentifier)
	}
}

extension TableView: UITableViewDelegate, UITableViewDataSource {
	func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
		return 10
	}

	func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
		return 110
	}

	func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
		let tableVC = TableViewController()

		tableVC.selectCell()
	}

	func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
		let cell = table.dequeueReusableCell(withIdentifier: cellIdentifier) as! TableViewCell
		cell.set()
		return cell
	}
}
