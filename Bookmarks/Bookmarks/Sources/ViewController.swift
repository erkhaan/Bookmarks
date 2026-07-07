//
//  ViewController.swift
//  Bookmarks
//
//  Created by Erkhaan  on 04.07.2026.
//

import Domain
import UIKit

class ViewController: UIViewController {

    private let getBookRecordsUseCase: GetBookRecordsUseCase

    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

    init(getBookRecordsUseCase: GetBookRecordsUseCase) {
        self.getBookRecordsUseCase = getBookRecordsUseCase
        super.init(nibName: nil, bundle: nil)
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        getBookRecordsUseCase.execute()
        let label = UILabel()
        label.text = "Hello, UIKit!"
        label.textColor = .black
        label.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(label)

        NSLayoutConstraint.activate([
            label.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            label.centerYAnchor.constraint(equalTo: view.centerYAnchor),
        ])
    }
}
