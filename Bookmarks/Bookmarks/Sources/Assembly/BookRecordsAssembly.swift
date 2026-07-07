import Data
import Domain
import Presentation
import UIKit

enum BookRecordsAssembly {
    static func makeRootViewController() -> UIViewController {
        let localDataSource = BookRecordsLocalDataSourceImpl()
        let repository = BookRecordsRepositoryImpl(localDataSource: localDataSource)
        let getBookRecordsUseCase = GetBookRecordsUseCaseImpl(repository: repository)
        let saveBookRecordUseCase = SaveBookRecordUseCaseImpl(repository: repository)
        return BookRecordsViewController(
            getBookRecordsUseCase: getBookRecordsUseCase,
            saveBookRecordUseCase: saveBookRecordUseCase
        )
    }
}
