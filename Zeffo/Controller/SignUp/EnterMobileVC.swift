//
//  EnterMobileVC.swift
//  Zeffo
//
//  Created by Sahil Gupta on 10/01/23.
//

import UIKit

class EnterMobileVC: UIViewController {
    
    @IBOutlet weak var mainView : UIView!
    @IBOutlet weak var mobileTextFirlf : UITextField!

    override func viewDidLoad() {
        super.viewDidLoad()
        
        setUpUI()

        // Do any additional setup after loading the view.
    }
    
    // MARK: - Supported Function
    func setUpUI(){
        mainView.ViewBorder(borderCornerRadius: 13, borderColor: UIColor(red: 255/255, green: 143/255, blue: 102/255, alpha: 1).cgColor, borderWith: 1.5)

    }
    
    // MARK: - Button Action
    @IBAction func clickonNextButton(_ sender : UIButton){
        let vc = storyboard?.instantiateViewController(withIdentifier: "VerifyMobileVC") as! VerifyMobileVC
        self.navigationController?.pushViewController(vc, animated: true)
    }
    


}
