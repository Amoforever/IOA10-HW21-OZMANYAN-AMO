//
//  Cell for Cards.swift
//  IOA10-HW21-OZMANYAN AMO
//
//  Created by Amahastla on 20.09.2023.
//

import UIKit

class CardCell: UITableViewCell {
    static let identifier = "cardCell"
    //let networkManager = NetworkManager()

    var cards: DataCards? {
        didSet {
            nameLabel.text = cards?.name
            cmcLabel.text = "CMC -> \(cards?.cmc ?? 0)"
            manaCostLabel.text = "ManaCost -> \(cards?.manaCost ?? "")"
        }
    }

    // MARK: - UI Elements
    private lazy var nameLabel: UILabel = {
        let label = UILabel()
        label.font = .systemFont(ofSize: 20, weight: .bold)
        return label
    }()

    private lazy var cmcLabel: UILabel = {
        let label = UILabel()
        label.font = .systemFont(ofSize: 20, weight: .regular)
        return label
    }()

    private lazy var manaCostLabel: UILabel = {
        let label = UILabel()
        label.font = .systemFont(ofSize: 10, weight: .regular)
        return label
    }()

    private lazy var stackLabel: UIStackView = {
        let stack = UIStackView()
        stack.axis = .vertical
        stack.alignment = .center
        stack.translatesAutoresizingMaskIntoConstraints = false
        return stack
    }()

    // MARK: - Initializers
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        setupHierarchy()
        setupLayout()
    }

    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

    // MARK: - Setup
    private func setupHierarchy() {
        stackLabel.addArrangedSubview(nameLabel)
        stackLabel.addArrangedSubview(cmcLabel)
        stackLabel.addArrangedSubview(manaCostLabel)
        contentView.addSubview(stackLabel)
    }

    private func setupLayout() {
        NSLayoutConstraint.activate([
            stackLabel.topAnchor.constraint(equalTo: contentView.topAnchor),
            stackLabel.centerXAnchor.constraint(equalTo: centerXAnchor),
        ])
        stackLabel.setCustomSpacing(5, after: nameLabel)
    }

    override func prepareForReuse() {
        super.prepareForReuse()
        self.accessoryType = .none
        self.cards = nil
    }
}

