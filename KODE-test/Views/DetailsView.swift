//
//  DetailsView.swift
//  KODE-test
//
//  Created by Monday MeoW. on 25.01.2021.
//

import UIKit

class DetailsView: UIView {

	var scrollView = UIScrollView()

	var sceneImage = UIImageView()
	var descriptionLabel = UILabel()
	var instructionLabel = UILabel()


	init() {
		super.init(frame: .zero)
		self.backgroundColor = UIColor.clear


		setupDescriptionLabel()
		//configureSceneImage()
	}

	required init?(coder: NSCoder) {
		fatalError("init(coder:) has not been implemented")
	}

	func set() {
		//sceneImage.image = natureCard.image
		descriptionLabel.text = "some text"
	}

//	func configureSceneImage() {
//		self.addSubview(sceneImage)
//		sceneImage.translatesAutoresizingMaskIntoConstraints = false
//
//		NSLayoutConstraint.activate([
//			sceneImage.leadingAnchor.constraint(equalTo: self.leadingAnchor),
//			sceneImage.trailingAnchor.constraint(equalTo: self.trailingAnchor),
//			sceneImage.heightAnchor.constraint(equalToConstant: 300),
//			sceneImage.centerYAnchor.constraint(equalTo: self.centerYAnchor)
//		])
//	}
	func setupScrollViewLayout() {
		self.addSubview(scrollView)
		scrollView.translatesAutoresizingMaskIntoConstraints = false

		NSLayoutConstraint.activate([
			scrollView.centerXAnchor.constraint(equalTo: self.centerXAnchor),
			scrollView.topAnchor.constraint(equalTo: self.safeAreaLayoutGuide.topAnchor),
			scrollView.bottomAnchor.constraint(equalTo: self.safeAreaLayoutGuide.bottomAnchor),
			scrollView.widthAnchor.constraint(equalTo: self.safeAreaLayoutGuide.widthAnchor)
		])
	}

	func setupDescriptionLabel() {
		self.addSubview(descriptionLabel)
		descriptionLabel.numberOfLines = 0
		descriptionLabel.adjustsFontSizeToFitWidth = true

		descriptionLabel.translatesAutoresizingMaskIntoConstraints = false

		NSLayoutConstraint.activate([
			descriptionLabel.centerYAnchor.constraint(equalTo: self.scrollView.centerYAnchor),
			descriptionLabel.leadingAnchor.constraint(equalTo: self.scrollView.leadingAnchor, constant: 20),
			descriptionLabel.heightAnchor.constraint(equalToConstant: 80),
			descriptionLabel.trailingAnchor.constraint(equalTo: self.scrollView.trailingAnchor, constant: -12)
		])
	}

	func configureTitleLabel() {
		self.addSubview(descriptionLabel)
		descriptionLabel.numberOfLines = 0
		descriptionLabel.adjustsFontSizeToFitWidth = true

		descriptionLabel.translatesAutoresizingMaskIntoConstraints = false

		NSLayoutConstraint.activate([
			descriptionLabel.centerYAnchor.constraint(equalTo: self.scrollView.centerYAnchor),
			descriptionLabel.leadingAnchor.constraint(equalTo: self.scrollView.leadingAnchor, constant: 20),
			descriptionLabel.topAnchor.constraint(equalTo: self.descriptionLabel.bottomAnchor),
			descriptionLabel.trailingAnchor.constraint(equalTo: self.scrollView.trailingAnchor, constant: -12)
		])
	}

}
