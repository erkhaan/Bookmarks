import Domain
import Presentation
import UIKit

enum BookRecordsAssembly {
    static func makeRootViewController() -> UIViewController {
        let useCase = GetBookRecordsUseCaseImpl()
        return BookRecordsViewController(getBookRecordsUseCase: useCase)
    }
}
