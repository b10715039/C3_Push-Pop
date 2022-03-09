//
//  ThirdViewController.swift
//  C3_Push&Pop
//
//  Created by mac12 on 2022/3/3.
//

import UIKit

class ThirdViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.backgroundColor = UIColor(patternImage: UIImage(named: "texture1.jpg")!)
        // Do any additional setup after loading the view.
    }
    

    @IBAction func toNext(_ sender: Any) {
        let myStoryBoard: UIStoryboard = UIStoryboard(name: "Main", bundle: nil)
        let vc = myStoryBoard.instantiateViewController(withIdentifier: "FourthVC")
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
