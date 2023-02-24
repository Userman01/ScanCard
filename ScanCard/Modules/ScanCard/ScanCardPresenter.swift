//
//  ScanCard module
//  Created by postnikov_pp on 24/02/2023.
//  Copyright (c) 2023 BVC. All rights reserved.
//

protocol ScanCardPresentationLogic {

    // Показ полей
    func presentFields(response: ScanCard.GetFields.Response)
}

final class ScanCardPresenter: ScanCardPresentationLogic {

    weak var viewController: ScanCardDisplayLogic?

    // MARK: Показ полей
    func presentFields(response: ScanCard.GetFields.Response) {
        let viewModel = getViewModel()
        viewController?.displayFields(viewModel: ScanCard.GetFields.ViewModel(result: viewModel))
    }
}

extension ScanCardPresenter {

    private func getViewModel() -> ScanCardViewModel {
        ScanCardViewModel()
    }
}