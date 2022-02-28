//
//  PostButtonViewController.swift
//  Navigation_version99
//
//  Created by Pavel Nebogatov on 27.02.2022.
//

import UIKit

class InfoViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.backgroundColor = .black
    
    let button = UIButton(frame: CGRect(x:  100, y: 300, width: 200, height: 50))
    button.setTitle("touch touch touch", for: .normal)
    button.addTarget(self, action: #selector(tap), for: .touchUpInside)
    view.addSubview(button)
    
}

@objc func tap() {
    let alertVC = UIAlertController(title: "Exam", message: "U good boy ?", preferredStyle: .alert)
    let actionOK = UIAlertAction(title: "Yep", style: .cancel, handler: nil)
    let actionNO = UIAlertAction(title: "No", style: .default, handler: nil)
    alertVC.addAction(actionOK)
    alertVC.addAction(actionNO)
    self.present(alertVC,  animated: true ,completion: nil)
    }

}
