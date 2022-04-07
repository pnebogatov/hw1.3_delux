//
//  ProfileViewController.swift
//  Navigation_version99
//
//  Created by Pavel Nebogatov on 23.02.2022.
//
import UIKit

class ProfileViewController: UIViewController {
    
   
    let profileHeaderView = ProfileHeaderView() // так выглядит вонючий экземпляр который сбил меня с толку
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.backgroundColor = .lightGray
        self.view.addSubview(profileHeaderView) // чтобы прогружался экземпляр
        self.profileHeaderView.translatesAutoresizingMaskIntoConstraints = false
        
        [
            self.profileHeaderView.heightAnchor.constraint(equalToConstant: 220),
            self.profileHeaderView.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            self.profileHeaderView.trailingAnchor.constraint(equalTo: view.trailingAnchor),
            self.profileHeaderView.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor)
        ].forEach{$0.isActive = true}
        
        
    }

    open override func viewWillLayoutSubviews() {
//        super.viewWillLayoutSubviews()
//        profileHeaderView.frame = view.frame // сделали размер экземпляра в размер всего вью
        
    }

    open override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        title = "Profile"
    }
}

