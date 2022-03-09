//
//  ViewController.swift
//  C3_Push&Pop
//
//  Created by mac12 on 2022/3/3.
//

import UIKit

class ViewController: UIViewController {
    
    let gradientLayer = CAGradientLayer()
    
    func createGradientLayer() {
        gradientLayer.colors = [UIColor.orange.cgColor, UIColor.blue.cgColor]
        gradientLayer.frame = self.view.bounds
        self.view.layer.insertSublayer(gradientLayer, at: 0)
    }
    
    override func viewDidAppear(_ animated: Bool) {
        createGradientLayer()
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func toSecond(_ sender: Any) {
        if let vc = storyboard?.instantiateViewController(withIdentifier: "SecondVC") {
            self.navigationController?.pushViewController(vc, animated: true)
        }
    }
    
    @IBAction func toThird(_ sender: Any) {
        let vc = storyboard?.instantiateViewController(withIdentifier: "ThirdVC")
        self.navigationController?.pushViewController(vc!, animated: true)
        
    }
    
}

