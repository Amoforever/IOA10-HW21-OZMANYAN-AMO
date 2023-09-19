//
//  MainView for Card Search.swift
//  IOA10-HW21-OZMANYAN AMO
//
//  Created by Amahastla on 20.09.2023.
//

import UIKit

class MainView: UIView {

    // MARK: - UI Elements
    lazy var tableView: UITableView = {
        let table = UITableView(frame: .zero, style: .insetGrouped)
        table.backgroundColor = .systemTeal
        table.translatesAutoresizingMaskIntoConstraints = false
        return table
    }()

    lazy var searchButton: UIButton = {
        let button = UIButton(type: .system)
        button.setTitle("Search", for: .normal)
        button.setTitleColor(.black, for: .normal)
        button.backgroundColor = .white
        button.clipsToBounds = true
        button.layer.cornerRadius = 0
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
    }()

    lazy var nameTextField: UITextField = {
        let txfld = UITextField()
        txfld.placeholder = "Name of Card"
        txfld.clipsToBounds = true
        txfld.layer.cornerRadius = 0
        txfld.backgroundColor = .white
        txfld.textAlignment = .center
        txfld.translatesAutoresizingMaskIntoConstraints = false
        return txfld
    }()

    // MARK: - Initializers
    override init(frame: CGRect) {
        super.init(frame: frame)
        setupHierarchy()
        setupLayout()
        backgroundColor = .systemTeal
    }

    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

    // MARK: - Setup
    private func setupHierarchy() {
        addSubview(nameTextField)
        addSubview(searchButton)
        addSubview(tableView)
    }

    private func setupLayout() {
        NSLayoutConstraint.activate([
            nameTextField.centerXAnchor.constraint(equalTo: centerXAnchor),
            nameTextField.topAnchor.constraint(equalTo: safeAreaLayoutGuide.topAnchor, constant: 20),
            nameTextField.widthAnchor.constraint(equalToConstant: 250),
            nameTextField.heightAnchor.constraint(equalToConstant: 40),

            searchButton.centerXAnchor.constraint(equalTo: centerXAnchor),
            searchButton.topAnchor.constraint(equalTo: nameTextField.bottomAnchor, constant: 20),
            searchButton.widthAnchor.constraint(equalToConstant: 250),
            searchButton.heightAnchor.constraint(equalToConstant: 40),

            tableView.topAnchor.constraint(equalTo: searchButton.bottomAnchor, constant: 10),
            tableView.bottomAnchor.constraint(equalTo: bottomAnchor),
            tableView.rightAnchor.constraint(equalTo: rightAnchor),
            tableView.leftAnchor.constraint(equalTo: leftAnchor)
        ])
    }
}

