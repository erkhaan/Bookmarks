import Domain

public struct BookRecordsRepositoryImpl: BookRecordsRepository {
    private let localDataSource: BookRecordsLocalDataSource
    
    public init(
        localDataSource: BookRecordsLocalDataSource
    ) {
        self.localDataSource = localDataSource
    }

    public func getBookRecords() -> [BookRecord] {
        localDataSource.fetch()
    }

    public func save(_ bookRecord: BookRecord) {
        localDataSource.save(bookRecord)
    }
}
