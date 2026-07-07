import Domain

public struct BookRecordsLocalDataSourceImpl: BookRecordsLocalDataSource {
    public init() {
        
    }
    
    public func save(_ bookRecord: BookRecord) {
        print("BookRecordsLocalDataSourceImpl save")
    }
    
    public func fetch() -> [BookRecord] {
        print("BookRecordsLocalDataSourceImpl fetch")
        return []
    }
}
