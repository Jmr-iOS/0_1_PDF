/************************************************************************************************************************************/
/** @file		ViewController.swift
 *  @project    0_1 - PDF
 * 	@brief		x
 * 	@details	x
 *
 * 	@author		Justin Reina, Firmware Engineer, Jaostech
 * 	@created	11/12/15
 * 	@last rev	x
 *
 *  @section    Example
 *                  (Swift) https://github.com/fcamichel/ZoomingPDFViewer
 *                  (Obj-C) https://developer.apple.com/library/ios/samplecode/ZoomingPDFViewer/Introduction/Intro.html#//apple_ref/doc/uid/DTS40010281
 *
 * 	@notes		x
 *
 * 	@section	Opens
 * 			none current
 *
 * 	@section	Legal Disclaimer
 * 			All contents of this source file and/or any other Jaostech related source files are the explicit property on Jaostech
 * 			Corporation. Do not distribute. Do not copy.
 */
/************************************************************************************************************************************/
import UIKit

class ViewController: UIViewController {

    
    override func viewDidLoad() {
        super.viewDidLoad();
        
        self.view.translatesAutoresizingMaskIntoConstraints = false;

        optDemo_addButton(self.view);
        makeAMonsterousLabel(self.view);
        
        print("ViewController.viewDidLoad():       viewDidLoad() complete");
        
        return;
    }


    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning();

        return;
    }

    
    @objc func optDemo_addButton(_ view:UIView) {
        
        let button      : UIButton  = UIButton(type: UIButtonType.system) as UIButton;
        let buttonWidth : CGFloat   = 300;
        
        button.frame = CGRect(x: self.view.center.x-(buttonWidth/2), y: 100, width: buttonWidth, height: 50);

        
        button.backgroundColor = UIColor.green
        
        button.setTitle("Test Button", for: UIControlState());
  
        button.addTarget(self, action: #selector(ViewController.myButton_response(_:)), for:  .touchUpInside);

        view.addSubview(button);
        
        print("ViewController.optDemo_addButton(): Button added");
        
        return;
    }
    

    @objc func makeAMonsterousLabel(_ view:UIView) {
        
        let myFirstLabel  = UILabel();

        myFirstLabel.text          = "I made a label on the screen #toogood4you";
        myFirstLabel.font          = UIFont(name: "MarkerFelt-Thin", size: 45);
        myFirstLabel.textColor     = UIColor.red;
        myFirstLabel.textAlignment = .center;

        //text-wrap
        myFirstLabel.numberOfLines = 0;
        myFirstLabel.lineBreakMode = .byWordWrapping;
        
        myFirstLabel.frame = CGRect(x: (self.view.center.x - 150), y: 200, width: 300, height: 500);
        
        myFirstLabel.backgroundColor = UIColor.gray;
        
        view.addSubview(myFirstLabel);

        return;
    }
    
    
/*    func pressed(sender: UIButton!) {
        let alertView = UIAlertView();
        alertView.addButtonWithTitle("Ok");
        alertView.title = "title";
        alertView.message = "message";
        alertView.show();
        
        return;
    }
*/
    
    @objc func myButton_response(_ sender: UIButton!) {

        print("Button Response fired. Game on!");
        
        return;
    }
}



