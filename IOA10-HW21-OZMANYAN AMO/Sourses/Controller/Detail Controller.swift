//
//  Detail Controll.swift
//  IOA10-HW21-OZMANYAN AMO
//
//  Created by Amahastla on 20.09.2023.
//

import UIKit

class DetailViewController: UIViewController {
    var detailsOfCard: DataCards? {
        didSet {
            detailView.nameLabel.text = detailsOfCard?.name
            detailView.descriptionLabel.text = "\(detailsOfCard?.type ?? "") \n \(detailsOfCard?.manaCost ?? "") \n \(detailsOfCard?.cmc ?? 0)"
        }
    }
    
    // MARK: - Ui Elements
    let detailView = DetailView()
    
    // MARK: - Lifecycle
    override func loadView() {
        view = detailView
    }
}

