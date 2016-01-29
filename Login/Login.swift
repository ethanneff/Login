//
//  LoginViewController.swift
//  Login
//
//  Created by Ethan Neff on 1/11/16.
//  Copyright © 2016 Ethan Neff. All rights reserved.
//

import UIKit

class Login: UIViewController {
  @IBOutlet weak var loginEmail: UITextField!
  @IBOutlet weak var loginPassword: UITextField!
  @IBOutlet weak var signupEmail: UITextField!
  @IBOutlet weak var signupPassword: UITextField!
  @IBOutlet weak var forgotEmail: UITextField!
  
  override func viewDidLoad() {
    super.viewDidLoad()
  }
  
  override func didReceiveMemoryWarning() {
    super.didReceiveMemoryWarning()
  }
  
  @IBAction func login(button: UIButton) {
    print("login")
  }
  @IBAction func signup(button: UIButton) {
        print("signup")
  }
  @IBAction func forgot(button: UIButton) {
        print("forgot")
  }
  @IBAction func back(button: UIButton) {
     self.dismissViewControllerAnimated(true, completion: {})
  }
}
