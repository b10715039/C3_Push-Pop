//
//  SecondViewController.swift
//  C3_Push&Pop
//
//  Created by mac12 on 2022/3/3.
//

import UIKit

class SecondViewController: UIViewController {
    let gradientLayer = CAGradientLayer()
    func createGradientLayer() {
        gradientLayer.startPoint = CGPoint(x: 0, y: 0)
        gradientLayer.endPoint = CGPoint(x: 1, y: 1)
        gradientLayer.colors = [UIColor.yellow.cgColor, UIColor.green.cgColor]
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
    @IBAction func toNext(_ sender: Any) {
        let myStoryBoard: UIStoryboard = UIStoryboard(name: "Main", bundle: nil)
        let vc = myStoryBoard.instantiateViewController(withIdentifier: "ThirdVC")
        self.navigationController?.pushViewController(vc, animated: true)
    }
    
    @IBAction func back(_ sender: Any) {
        guard (self.navigationController?.popViewController(animated: true)) != nil else {
            print("No Navigation Controller")
            return
        }
    }
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
