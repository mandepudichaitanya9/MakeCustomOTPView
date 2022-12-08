//
//  ViewController.swift
//  MakeCustomOTPView
//
//  Created by chaitanya on 12/8/22.
//

import UIKit
import OTPFieldView

class ViewController: UIViewController {

    @IBOutlet weak var verifyBtn: UIButton!
    @IBOutlet weak var otpfieldview: OTPFieldView!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.verifyBtn.layer.masksToBounds = true
        self.verifyBtn.layer.cornerRadius = 15
        
        implementotpView()
    }
    
    
    func implementotpView(){
        self.otpfieldview.fieldsCount = 4
        self.otpfieldview.fieldBorderWidth = 2
        self.otpfieldview.filledBorderColor = UIColor.green
        self.otpfieldview.defaultBorderColor = UIColor.white
        self.otpfieldview.cursorColor = UIColor.black
        self.otpfieldview.displayType = .underlinedBottom
        self.otpfieldview.fieldSize = 50
        self.otpfieldview.separatorSpace = 15
        self.otpfieldview.shouldAllowIntermediateEditing = false
        self.otpfieldview.secureEntry = false
        self.otpfieldview.initializeUI()
        self.otpfieldview.delegate = self
        
    }

    
    @IBAction func verifyBtn(_ sender: Any) {
        print("verify Btn Tapped")
    }
}
extension ViewController: OTPFieldViewDelegate {
    // Delegate Methods
    func shouldBecomeFirstResponderForOTP(otpTextFieldIndex index: Int) -> Bool {
        return true
    }
    
    func enteredOTP(otp: String) {
        print(otp)
    }
    
    func hasEnteredAllOTP(hasEnteredAll: Bool) -> Bool {
        print("Has Entered OTP is \(hasEnteredAll)")
        return false
    }
    
    
}
