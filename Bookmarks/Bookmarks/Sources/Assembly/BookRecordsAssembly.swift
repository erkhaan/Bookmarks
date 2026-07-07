import Data
import Domain
import Presentation
import UIKit

enum BookRecordsAssembly {
    static func makeRootViewController() -> UIViewController {
        let repository = BookRecordsRepositoryImpl()
        let useCase = GetBookRecordsUseCaseImpl(repository: repository)
        return BookRecordsViewController(getBookRecordsUseCase: useCase)
    }
}
