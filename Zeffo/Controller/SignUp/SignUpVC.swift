//
//  SignUpVC.swift
//  Zeffo
//
//  Created by Sahil Gupta on 10/01/23.
//

import UIKit

class SignUpVC: UIViewController {
    
    @IBOutlet weak var emailView : UIView!
    @IBOutlet weak var emailTextField : UITextField!

    override func viewDidLoad() {
        super.viewDidLoad()
        setUpUI()

        // Do any additional setup after loading the view.
    }
    
    
    // MARk: - Supported Func
    func setUpUI(){
        emailView.ViewBorder(borderCornerRadius: 13, borderColor: UIColor(red: 255/255, green: 143/255, blue: 102/255, alpha: 1).cgColor, borderWith: 1.5)
        emailTextField.becomeFirstResponder()
    }


    // MARK: - Button
    @IBAction func clickOnBackButton(_ sender : UIButton){
        self.navigationController?.popViewController(animated: true)
    }
    
    @IBAction func clickOnNextButton(_ sender : UIButton){
        let vc = storyboard?.instantiateViewController(withIdentifier: "SelectLifeStageVC") as! SelectLifeStageVC
        self.navigationController?.pushViewController(vc, animated: true)
    }


}
