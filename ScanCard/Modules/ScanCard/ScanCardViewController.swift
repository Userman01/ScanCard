//
//  ScanCard module
//
//  Created by postnikov_pp on 24/02/2023.
//  Copyright (c) 2023 BVC. All rights reserved.
//

import UIKit

protocol ScanCardDisplayLogic: AnyObject {

    // Отображение полей
    func displayFields(viewModel: ScanCard.GetFields.ViewModel)
}

protocol ScanCardViewControllerDelegate: AnyObject {

}

final class ScanCardViewController: UIViewController {

    private let interactor: ScanCardBusinessLogic

    private lazy var customView = view as? ScanCardView

    init(interactor: ScanCardBusinessLogic) {
        self.interactor = interactor
        super.init(nibName: nil, bundle: nil)
    }

    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

    // MARK: View lifecycle
    override func loadView() {
        view = ScanCardView(frame: UIScreen.main.bounds, delegate: self)
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        getFields()
    }

    // MARK: Получение полей
    private func getFields() {
        interactor.getFields(request: ScanCard.GetFields.Request())
    }
}

extension ScanCardViewController: ScanCardDisplayLogic {

    // MARK: Отображение полей
    func displayFields(viewModel: ScanCard.GetFields.ViewModel) {
        customView?.configure(with: viewModel.result)
    }
}

extension ScanCardViewController: ScanCardViewControllerDelegate {

}
