//
//  ViewController.swift
//  TabBarDemo
//
//  Created by Ric Santos on 19/6/2024.
//

import UIKit

class ViewController: UIViewController {
    var buttonHandler: (() -> Void) = { }
    
    var showsNavigationBar = false
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //self.view.backgroundColor = UIColor.lightGray
        
        let button = UIButton()
        button.addTarget(self, action: #selector (buttonTapped), for: .touchUpInside)
        self.view.addSubview(button)
        button.setTitle("Button", for: .normal)
        button.setTitleColor(.label, for: .normal)
        button.titleLabel?.font = .preferredFont(forTextStyle: .headline)
        button.translatesAutoresizingMaskIntoConstraints = false
        button.backgroundColor = UIColor.systemOrange
        button.layer.cornerRadius = 10
        button.layer.masksToBounds = true
        let constraints = [
            button.centerXAnchor.constraint(equalTo: self.view.centerXAnchor),
            button.centerYAnchor.constraint(equalTo: self.view.centerYAnchor),
            button.widthAnchor.constraint(equalToConstant: 100),
            button.heightAnchor.constraint(equalToConstant: 44)
        ]
        NSLayoutConstraint.activate(constraints)
    }
    
    @objc func buttonTapped() {
        self.buttonHandler()
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
        self.navigationController?.setNavigationBarHidden(!self.showsNavigationBar, animated: animated)
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        
        //self.navigationController?.setNavigationBarHidden(!self.showsNavigationBar, animated: animated)
    }
}
