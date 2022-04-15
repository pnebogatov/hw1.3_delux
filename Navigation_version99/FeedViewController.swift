//
//  FeedViewController.swift
//  Navigation_version99
//
//  Created by Pavel Nebogatov on 23.02.2022.
//

import UIKit

class FeedViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        let button = UIButton()
        button.setTitle("press me", for: .normal)
        button.addTarget(self, action: #selector(tap), for: .touchUpInside)
        view.addSubview(button)
        button.translatesAutoresizingMaskIntoConstraints = false
        
        [
            button.centerXAnchor.constraint(equalTo: self.view.centerXAnchor),
            button.centerYAnchor.constraint(equalTo: self.view.centerYAnchor),
            button.widthAnchor.constraint(equalToConstant: 200),
            button.heightAnchor.constraint(equalToConstant: 50)
            
        ].forEach{$0.isActive = true}
    
    }

    @objc func tap(){
        let vc = PostViewController()
        navigationController?.pushViewController(vc, animated: true)
        
        
    }

}

