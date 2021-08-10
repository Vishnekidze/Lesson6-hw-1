//
//  ViewController.swift
//  Lesson6 hw1
//
//  Created by Егор Вишняков on 9.08.21.
//

import UIKit

class ViewController: UIViewController {
    
    var randomButton = UIButton()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    
    override func viewWillAppear(_ animated: Bool) {
        
        randomButton = UIButton(frame: CGRect(x: 100,
                                              y: 100,
                                              width: 100,
                                              height: 100))
        
        randomButton.backgroundColor = .red
        randomButton.setTitle("Click", for: .normal)
        randomButton.layer.cornerRadius = 50
        randomButton.center = CGPoint(x: view.frame.maxX/2, y: view.frame.maxY/2)
        view.addSubview(randomButton)
        randomButton.addTarget(self, action: #selector(random), for: .touchUpInside)
        view.backgroundColor = .black
        
        
        
    }
    
    @objc func random (sender: UIButton!) {
        
        randomButton.center = CGPoint(x: CGFloat.random(in: 0...view.frame.maxX), y: CGFloat.random(in: 0...view.frame.maxY) )
        
        
        
        
        
        
        
    }
}
