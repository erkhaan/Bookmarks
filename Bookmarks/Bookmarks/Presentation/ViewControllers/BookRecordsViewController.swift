//
//  BookRecordsViewController.swift
//  Bookmarks
//
//  Created by Erkhaan  on 04.07.2026.
//

import Domain
import UIKit

public final class BookRecordsViewController: UIViewController {

    private let getBookRecordsUseCase: GetBookRecordsUseCase
    private let saveBookRecordsUsecase: SaveBookRecordUseCase
    private var bookRecords: [BookRecord] = []

    private let tableView = UITableView()

    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

    public init(
        getBookRecordsUseCase: GetBookRecordsUseCase,
        saveBookRecordUseCase: SaveBookRecordUseCase
    ) {
        self.getBookRecordsUseCase = getBookRecordsUseCase
        self.saveBookRecordsUsecase = saveBookRecordUseCase
        super.init(nibName: nil, bundle: nil)
    }

    public override func viewDidLoad() {
        super.viewDidLoad()

        title = "Books"
        view.backgroundColor = .systemBackground

        navigationItem.rightBarButtonItem = UIBarButtonItem(
            barButtonSystemItem: .add,
            target: self,
            action: #selector(didTapAddButton)
        )

        setupTableView()
    }
    
    private func getBookRecords() {
        bookRecords = getBookRecordsUseCase.execute()
        tableView.reloadData()
    }

    private func setupTableView() {
        tableView.translatesAutoresizingMaskIntoConstraints = false
        tableView.dataSource = self
        tableView.register(UITableViewCell.self, forCellReuseIdentifier: "Cell")

        view.addSubview(tableView)

        NSLayoutConstraint.activate([
            tableView.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor),
            tableView.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            tableView.trailingAnchor.constraint(equalTo: view.trailingAnchor),
            tableView.bottomAnchor.constraint(equalTo: view.bottomAnchor),
        ])
    }

    @objc
    private func didTapAddButton() {
        let newRecord = BookRecord(title: "Placeholder Title")
        bookRecords.append(newRecord)
        saveBookRecordsUsecase.execute(newRecord)
        tableView.reloadData()
    }
}

extension BookRecordsViewController: UITableViewDataSource {
    public func tableView(
        _ tableView: UITableView,
        numberOfRowsInSection section: Int
    ) -> Int {
        bookRecords.count
    }

    public func tableView(
        _ tableView: UITableView,
        cellForRowAt indexPath: IndexPath
    ) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(
            withIdentifier: "Cell",
            for: indexPath
        )

        var configuration = cell.defaultContentConfiguration()
        configuration.text = bookRecords[indexPath.row].title
        cell.contentConfiguration = configuration

        return cell
    }
}
