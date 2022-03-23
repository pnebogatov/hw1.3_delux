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
        
        
    }

    open override func viewWillLayoutSubviews() {
        super.viewWillLayoutSubviews()
        profileHeaderView.frame = view.frame // сделали размер экземпляра в размер всего вью
        
    }

    open override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        title = "Profile"
    }
}

