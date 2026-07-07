public struct SaveBookRecordUseCaseImpl: SaveBookRecordUseCase {

    private let repository: BookRecordsRepository

    public init(
        repository: BookRecordsRepository
    ) {
        self.repository = repository
    }

    public func execute(_ bookRecord: BookRecord) {
        repository.save(bookRecord)
    }
}
