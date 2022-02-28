//
//  PostViewController.swift
//  Navigation_version99
//
//  Created by Pavel Nebogatov on 25.02.2022.
//

import UIKit

class PostViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.backgroundColor = .darkGray
        
        self.navigationItem.rightBarButtonItem = UIBarButtonItem(barButtonSystemItem: .add, target: self, action: #selector(tap))
    
}
    

    @objc func tap(){
        let vc = InfoViewController()
        vc.modalPresentationStyle =  .automatic
        self.present(vc, animated: true)
    }
}
