//
//  ScanCard module
//  Created by postnikov_pp on 24/02/2023.
//  Copyright (c) 2023 BVC. All rights reserved.
//

protocol ScanCardBusinessLogic {

    // Получение полей
    func getFields(request: ScanCard.GetFields.Request)
}

final class ScanCardInteractor: ScanCardBusinessLogic {

    private let presenter: ScanCardPresentationLogic
    
    init(presenter: ScanCardPresentationLogic) {
        self.presenter = presenter
    }
    
    // MARK: Получение полей
    func getFields(request: ScanCard.GetFields.Request) {
        presenter.presentFields(response: ScanCard.GetFields.Response())
    }
}
