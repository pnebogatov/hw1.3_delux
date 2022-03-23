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

        
        let button = UIButton(frame: CGRect(x:  100, y: 300, width: 200, height: 50))
        button.setTitle("press me", for: .normal)
        button.addTarget(self, action: #selector(tap), for: .touchUpInside)
        view.addSubview(button)
        
    }

    @objc func tap(){
        let vc = PostViewController()
        navigationController?.pushViewController(vc, animated: true)
        
        
    }
    

}
