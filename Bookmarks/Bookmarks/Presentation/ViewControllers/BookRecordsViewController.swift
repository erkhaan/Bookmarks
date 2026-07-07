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
        view.backgroundColor = .white

        navigationItem.rightBarButtonItem = UIBarButtonItem(
            barButtonSystemItem: .add,
            target: self,
            action: #selector(didTapAddButton)
        )

        getBookRecordsUseCase.execute()
    }

    @objc
    private func didTapAddButton() {
        let newRecord = BookRecord(title: "Placeholder Title")
        bookRecords.append(newRecord)
        saveBookRecordsUsecase.execute(newRecord)
    }
}
