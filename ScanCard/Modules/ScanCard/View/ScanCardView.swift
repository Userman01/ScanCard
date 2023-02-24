//
//  Created by postnikov_pp on 24/02/2023.
//  Copyright (c) 2023 BVC. All rights reserved.
//

import UIKit

final class ScanCardView: UIView {

    private enum ViewMetrics {
        static let backgroundColor: UIColor! = .red
    }

    private weak var delegate: ScanCardViewControllerDelegate?

    private lazy var label: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()

    init(frame: CGRect, delegate: ScanCardViewControllerDelegate) {
        self.delegate = delegate
        super.init(frame: frame)
        setupLayout()
    }

    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

    private func setupLayout() {
        backgroundColor = ViewMetrics.backgroundColor
    }

    func configure(with viewModel: ScanCardViewModel) {

    }
}
