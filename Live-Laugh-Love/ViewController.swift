//
//  ViewController.swift
//  Live-Laugh-Love
//
//  Created by Isabella Hochschild on 7/20/21.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
    }
    @IBAction func clickMeButtonTapped(_ sender: Any) {
        
        let message = "Did you know?"
        let alertController = UIAlertController(
            title: "", // This gets overridden below.
            message: message,
            preferredStyle: .alert
        )
        let OKAction = UIAlertAction(title: "OK", style: .cancel) { _ -> Void in
        }
        alertController.addAction(OKAction)

        let liveLaughLove = "live, laugh, & love"
        let lll_font = UIFont(name: "The Skinny", size: 17)!
        let customTitle:NSString = "I \(liveLaughLove) Swift" as NSString // Use NSString, which lets you call rangeOfString()
        let attributedString = NSMutableAttributedString(string: customTitle as String)
        let fontAwesomeAttributes = [
            NSAttributedString.Key.font: lll_font
        ]
        let matchRange = customTitle.range(of: liveLaughLove)
        attributedString.addAttributes(fontAwesomeAttributes, range: matchRange)
        alertController.setValue(attributedString, forKey: "attributedTitle")
        self.present(alertController, animated: true, completion: nil)
    }
    
}

