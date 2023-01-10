//
//  SelectLifeStageVC.swift
//  Zeffo
//
//  Created by Sahil Gupta on 10/01/23.
//

import UIKit

class SelectLifeStageVC: UIViewController {
    
    @IBOutlet weak var firstView : UIView!
    @IBOutlet weak var seconView : UIView!
    @IBOutlet weak var thirdView : UIView!
    @IBOutlet weak var fourthView : UIView!

    override func viewDidLoad() {
        super.viewDidLoad()
        setUpUI()

        // Do any additional setup after loading the view.
    }
    
    // MARK: - Supported Function
    
    func setUpUI(){
        firstView.ViewBorder(borderCornerRadius: 12, borderColor: UIColor.inActiveColor.cgColor, borderWith: 1.5)
        seconView.ViewBorder(borderCornerRadius: 12, borderColor: UIColor.inActiveColor.cgColor, borderWith: 1.5)
        thirdView.ViewBorder(borderCornerRadius: 12, borderColor: UIColor.inActiveColor.cgColor, borderWith: 1.5)
        fourthView.ViewBorder(borderCornerRadius: 12, borderColor: UIColor.inActiveColor.cgColor, borderWith: 1.5)
    }
    

    
    // MARK: - Button
    @IBAction func clickOnBackButton(_ sender : UIButton){
        self.navigationController?.popViewController(animated: true)
    }
    
    @IBAction func clickOnNextButton(_ sender : UIButton){
        
    }


}
