//
//  ViewController.swift
//  UIKitSwift
//
//  Created by Desenvolvimento on 2024/10/15.
//

import UIKit

class ViewController: UIViewController {
    private lazy var backgroundView: UIImageView = {
        let imageView = UIImageView(frame: .zero)
        imageView.image = UIImage(named: "background")
        imageView.contentMode = .scaleAspectFill
        imageView.translatesAutoresizingMaskIntoConstraints = false
        return imageView
    }()
    override func viewDidLoad() {
        super.viewDidLoad()
        setView()
    }
    
    private func setView() {
        view.backgroundColor = .red
        setHierarchy()
        setConstrains()
    }
    private func setHierarchy() {
        view.addSubview(backgroundView)
    }
    private func setConstrains() {
        NSLayoutConstraint.activate([
            backgroundView.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor),
            backgroundView.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor),
            backgroundView.trailingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.trailingAnchor),
            backgroundView.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor)
        ])    }

}

