//
//  GiftCardVC.swift
//  Zeffo
//
//  Created by Sahil Gupta on 10/01/23.
//

import UIKit

class GiftCardVC: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        print("Hello")
    }
 
    // MARK: - Button
    
    
    @IBAction func clickOnNextButton(_ sender : UIButton){
        let vc = storyboard?.instantiateViewController(withIdentifier: "EnterMobileVC") as! EnterMobileVC
        self.navigationController?.pushViewController(vc, animated: true)
    }
  

}
