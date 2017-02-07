

import UIKit

class ViewController_signup2: UIViewController,UIImagePickerControllerDelegate, UINavigationControllerDelegate{
    
    
    @IBOutlet weak var imagePiker: UIImageView!
    @IBOutlet weak var signUp2FstNmeTxtF: UITextField!
    @IBOutlet weak var signUp2LastNmeTxtF: UITextField!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func backbuttn(_ sender: Any) {
        _ = navigationController?.popViewController(animated: true)
        
    }
    
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        self.view.endEditing(true)
    }
    
    
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?)
    {
        if segue.identifier == "ViewControllerSignUpFinish"{
            let vc = segue.destination as! ViewControllerSignUpFinish
            vc.nameL = signUp2FstNmeTxtF.text!
            vc.lastNameL = signUp2LastNmeTxtF.text!
            // vc.emailL = emailadd
        }
    }
    
    
    @IBAction func SignUp2FinishActn(_ sender: Any)
    {
        if (signUp2FstNmeTxtF.text == "" )
        {
            let alert = UIAlertController(title: "Invalid", message: "please enter your name", preferredStyle: UIAlertControllerStyle.alert)
            alert.addAction(UIAlertAction(title:"Ok", style: UIAlertActionStyle.default, handler: nil))
            present(alert, animated: true, completion: nil)
        }
        else if !validateUsername(str: signUp2FstNmeTxtF.text!)
        {
            let alert = UIAlertController(title: "Invalid", message: "you have entered digits.please try again", preferredStyle: UIAlertControllerStyle.alert)
            alert.addAction(UIAlertAction(title:"Ok", style: UIAlertActionStyle.default, handler: nil))
            present(alert, animated: true, completion: nil)
            
        }
            
        else if (signUp2LastNmeTxtF.text == "" )
        {
            let alert = UIAlertController(title: "Invalid", message: "please enter your Last name", preferredStyle: UIAlertControllerStyle.alert)
            alert.addAction(UIAlertAction(title:"Ok", style: UIAlertActionStyle.default, handler: nil))
            present(alert, animated: true, completion: nil)
            
        }
        // self.performSegue(withIdentifier: "segueSignUp2", sender: DATA TO, PASS, or, nil)
        
    }
    
    
    
    func validateUsername(str: String) -> Bool
    {
        do
        {
            let regex = try NSRegularExpression(pattern: "^[a-zA-Z]", options: .caseInsensitive)
            if regex.matches(in: str, options: [], range: NSMakeRange(0, str.characters.count)).count > 0
            {
                return true
            }
        }
        catch {}
        return false
    }
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool
    {
        if let nextField = textField.superview?.viewWithTag(textField.tag + 1) as? UITextField {
            nextField.becomeFirstResponder()
        }
        else
        {
            textField.resignFirstResponder()
        }
        return false
    }
    private  func switchFields(textField: UITextField) {
        switch textField {
        case signUp2FstNmeTxtF:
            signUp2LastNmeTxtF.becomeFirstResponder()
        default:
            break
        }
    }
    
    
    @IBAction func imageButn(_ sender: Any)
    {
        let image = UIImagePickerController()
        image.delegate = self
        
        image.sourceType = UIImagePickerControllerSourceType.photoLibrary
        image.allowsEditing = false
        self.present(image, animated: true)
        {
        }
    }
    
    
    
    func imagePickerControllerDidCancel(_ picker: UIImagePickerController) {
        dismiss(animated: true, completion: nil)
    }
    
    func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [String : Any]) {
        if let image = info[UIImagePickerControllerEditedImage] as? UIImage
        {
            imagePiker.image = image
        }
            
        else
        {
        }
        
        dismiss(animated: true)
    }
    
    //    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
    //        if segue.identifier == "ViewControllerSignUpFinish" {
    //            if let viewController = segue.destinationViewController as? <your view controller type> {
    //                //viewController.property = property
    //            }
    
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        
    }
}
