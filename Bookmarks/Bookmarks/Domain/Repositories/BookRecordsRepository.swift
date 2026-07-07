public protocol BookRecordsRepository {
    func getBookRecords() -> [BookRecord]
}
