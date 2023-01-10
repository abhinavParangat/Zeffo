//
//  VerifyMobileVC.swift
//  Zeffo
//
//  Created by Sahil Gupta on 10/01/23.
//

import UIKit

class VerifyMobileVC: UIViewController {
    
    @IBOutlet weak var firstTextField : UITextView!
    @IBOutlet weak var secondTextField : UITextView!
    @IBOutlet weak var thirdTextField : UITextView!
    @IBOutlet weak var fourthTextField : UITextView!
    @IBOutlet weak var fifthTextField : UITextView!
    @IBOutlet weak var sixthTextFiled : UITextView!
    
    
    // MARK: - Variables
    var window: UIWindow?
    private lazy var textFieldsArray = [self.firstTextField,self.secondTextField,self.thirdTextField,self.fourthTextField,self.fifthTextField, self.sixthTextFiled]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setUpUI()
        // Do any additional setup after loading the view.
    }
    
    // MARK: - Supported Func
    func setUpUI(){
        firstTextField.TextViewBorder(borderCornerRadius: 10, borderColor: UIColor(red: 255/255, green: 143/255, blue: 102/255, alpha: 1).cgColor, borderWith: 1)
        secondTextField.TextViewBorder(borderCornerRadius: 10, borderColor: UIColor(red: 255/255, green: 143/255, blue: 102/255, alpha: 1).cgColor, borderWith: 1)
        thirdTextField.TextViewBorder(borderCornerRadius: 10, borderColor: UIColor(red: 255/255, green: 143/255, blue: 102/255, alpha: 1).cgColor, borderWith: 1)
        fourthTextField.TextViewBorder(borderCornerRadius: 10, borderColor: UIColor(red: 255/255, green: 143/255, blue: 102/255, alpha: 1).cgColor, borderWith: 1)
        fifthTextField.TextViewBorder(borderCornerRadius: 10, borderColor: UIColor(red: 255/255, green: 143/255, blue: 102/255, alpha: 1).cgColor, borderWith: 1)
        sixthTextFiled.TextViewBorder(borderCornerRadius: 10, borderColor: UIColor(red: 255/255, green: 143/255, blue: 102/255, alpha: 1).cgColor, borderWith: 1)
        
        initialLoads()
        
    }
    
    
    private func initialLoads() {
        
        firstTextField.becomeFirstResponder()
        
        addToolBarTextView(textView: firstTextField)
        addToolBarTextView(textView: secondTextField)
        addToolBarTextView(textView: thirdTextField)
        addToolBarTextView(textView: fourthTextField)
        addToolBarTextView(textView: fifthTextField)
        addToolBarTextView(textView: sixthTextFiled)
        
        firstTextField.delegate = self
        secondTextField.delegate = self
        thirdTextField.delegate = self
        fourthTextField.delegate = self
        fifthTextField.delegate = self
        sixthTextFiled.delegate = self
        
        
        //        firstTextField.textContainerInset = UIEdgeInsets(top: 12, left: 0, bottom: 0, right: 0)
        //        secondTextField.textContainerInset = UIEdgeInsets(top: 12, left: 0, bottom: 0, right: 0)
        //        thirdTextField.textContainerInset = UIEdgeInsets(top: 12, left: 0, bottom: 0, right: 0)
        //        fourthTextField.textContainerInset = UIEdgeInsets(top: 12, left: 0, bottom: 0, right: 0)
        //        fifthTextField.textContainerInset = UIEdgeInsets(top: 12, left: 0, bottom: 0, right: 0)
        //        sixthTextFiled.textContainerInset = UIEdgeInsets(top: 12, left: 0, bottom: 0, right: 0)
    }
    
    func addToolBarTextView(textView: UITextView){
        let toolBar = UIToolbar()
        toolBar.barStyle = UIBarStyle.default
        toolBar.isTranslucent = true
        toolBar.tintColor = .lightGray
        _ = UIBarButtonItem(barButtonSystemItem: UIBarButtonItem.SystemItem.flexibleSpace, target: nil, action: nil)
        //let doneButton = UIBarButtonItem(barButtonSystemItem: .done, target: self, action: #selector(UIViewController.dismissKeyboard))
        //toolBar.setItems([flexButton,doneButton], animated: false)
        toolBar.isUserInteractionEnabled = true
        toolBar.sizeToFit()
        textView.inputAccessoryView = toolBar
    }
    
    
    // MARK: - Button
    @IBAction func clickOnBackButton(_ sender : UIButton){
        self.navigationController?.popViewController(animated: true)
    }
    
    @IBAction func clickOnNextButton(_ sender : UIButton){
        let vc = storyboard?.instantiateViewController(withIdentifier: "SocialSignUpVC") as! SocialSignUpVC
        self.navigationController?.pushViewController(vc, animated: true)
    }
    
    
}

// MARK:- UITextViewDelegate
extension VerifyMobileVC : UITextViewDelegate {
    
    func textViewDidBeginEditing(_ textView: UITextView) {
        
        self.makeResponsive(textView: textView)
        
        if textView.text.count>1, var text = textView.text {
            text.removeFirst()
            textView.text = text
        }
    }
    
    func textViewDidChange(_ textView: UITextView) {
        
        if Int.val(val: textView.text?.count)>1, var text = textView.text {
            text.removeFirst()
            textView.text = text
        }
        
        if textView.text.count>=1 {
            if textFieldsArray[textFieldsArray.count-1] == textView {
                textView.resignFirstResponder()
            } else {
                if let index = textFieldsArray.firstIndex(where: { $0 == textView}) {
                    textFieldsArray[index+1]?.becomeFirstResponder()
                }else {
                    
                    textView.resignFirstResponder()
                    //let getOtp = firstTextField.text! + secondTextField.text! + thirdTextField.text! + fourthTextField.text!
                    //verifyOtp(mobile: self.phnNo, otp: getOtp)
                }
            }
        }
        if textView == firstTextField {
            if firstTextField.text != "" {
                
            } else {
                
            }
        } else if textView == secondTextField {
            if secondTextField.text != "" {
                
            } else {
                firstTextField.becomeFirstResponder()
            }
        } else if textView == thirdTextField {
            if thirdTextField.text != "" {
                
            } else {
                secondTextField.becomeFirstResponder()
            }
        } else if textView == fourthTextField {
            if fourthTextField.text != "" {
                
            } else {
                thirdTextField.becomeFirstResponder()
            }
        } else if textView == fifthTextField {
            if fifthTextField.text != "" {
                
            } else {
                fourthTextField.becomeFirstResponder()
            }
        } else if textView == sixthTextFiled {
            if sixthTextFiled.text != "" {
                
            } else {
                fifthTextField.becomeFirstResponder()
            }
        }
        
    }
    
    private func makeResponsive(textView : UITextView){
        textFieldsArray.forEach { (field) in
            field?.layer.masksToBounds = !(textView == field)
        }
    }
}



