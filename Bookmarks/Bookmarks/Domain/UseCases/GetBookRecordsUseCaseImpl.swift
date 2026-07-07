public struct GetBookRecordsUseCaseImpl: GetBookRecordsUseCase {

    private let repository: BookRecordsRepository

    public init(
        repository: BookRecordsRepository
    ) {
        self.repository = repository
    }

    public func execute() {
        print("GetBookRecordsUseCase")
    }
}
