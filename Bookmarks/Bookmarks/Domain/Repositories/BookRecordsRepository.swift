public protocol BookRecordsRepository {
    func getBookRecords() -> [BookRecord]
    func save(_ bookRecord: BookRecord)
}
