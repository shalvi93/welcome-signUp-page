

import UIKit

class ViewController_signUp: UIViewController {
    
    @IBOutlet weak var signUpEmailTxtF: UITextField!
    
    @IBOutlet weak var signUpPwdTxtF: UITextField!
    
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    
    @IBAction func signUpBackbtnAc(_ sender: Any) {
         _ = navigationController?.popViewController(animated: true)
        
    }
    

    @IBAction func SignUpNxtActn(_ sender: Any) {
        
        
//        if !isvalidEmail (YourEMailAddress: signUpEmailTxtF.text!)
//        {
//            
//            let alert = UIAlertController(title: "Invalid", message: "Please enter a valid email address", preferredStyle: UIAlertControllerStyle.alert)
//            alert.addAction(UIAlertAction(title:"Ok", style: UIAlertActionStyle.default, handler: nil))
//            present(alert, animated: true, completion: nil)
//            
//        }
//        else if (signUpPwdTxtF.text == "")
//        {
//            let alert = UIAlertController(title: "Invalid", message: "password should be more than 5 digits", preferredStyle: UIAlertControllerStyle.alert)
//            alert.addAction(UIAlertAction(title:"Ok", style: UIAlertActionStyle.default, handler: nil))
//            present(alert, animated: true, completion: nil)        }
//        }
//    
//    
//    func isvalidEmail(YourEMailAddress: String) -> Bool {
//        let REGEX: String
//        REGEX = "[A-Z0-9a-z._%+-]+@[A-Za-z0-9.-]+\\.[A-Za-z]{2,6}"
//        return NSPredicate(format: "SELF MATCHES %@", REGEX).evaluate(with: YourEMailAddress)
//    }
//    
//    func textFieldShouldReturn(_ textField: UITextField) -> Bool
//    {
//        if let nextField = textField.superview?.viewWithTag(textField.tag + 1) as? UITextField {
//            nextField.becomeFirstResponder()
//        }
//        else
//        {
//            textField.resignFirstResponder()
//        }
//        return false
 }

    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        
    }
    
    
    
    
}
