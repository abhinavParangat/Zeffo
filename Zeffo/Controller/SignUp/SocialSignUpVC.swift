//
//  SocialSignUpVC.swift
//  Zeffo
//
//  Created by Sahil Gupta on 10/01/23.
//

import UIKit

class SocialSignUpVC: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    

    
    // MARK: - Button
    @IBAction func clickOnAnotherEmailBtn(_ sender : UIButton){
        let vc = storyboard?.instantiateViewController(withIdentifier: "SignUpVC") as! SignUpVC
        self.navigationController?.pushViewController(vc, animated: true)
    }
    
//    @IBAction func clickOnBackButton(_ sender : UIButton){
//        self.navigationController?.popViewController(animated: true)
//    }
    
    
}
