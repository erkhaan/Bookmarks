import Domain

public protocol BookRecordsLocalDataSource {
    func save(_ bookRecord: BookRecord)
    func fetch() -> [BookRecord]
}
