//
//  ScanCard module
//  Created by postnikov_pp on 24/02/2023.
//  Copyright (c) 2023 BVC. All rights reserved.
//

final class ScanCardBuilder {

    func build() -> ScanCardViewController {
        let presenter = ScanCardPresenter()
        let interactor = ScanCardInteractor(presenter: presenter)
        let controller = ScanCardViewController(interactor: interactor)
        presenter.viewController = controller
        return controller
    }
}
