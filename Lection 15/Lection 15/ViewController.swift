//
//  ViewController.swift
//  Lection 15
//
//  Created by Dima on 24.08.2022.
//

import UIKit

class ViewController: UIViewController {
    
    

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func showAlert() {
        let alert = UIAlertController(title: "Photo Access", message: "Do you alow use your photos?", preferredStyle: .alert)
        present(alert, animated: true, completion: nil)
        
        let okAction = UIAlertAction(title: "Ok", style: .cancel, handler: nil)
        alert.addAction(okAction)
        
        let cancelAction = UIAlertAction(title: "Cancel", style: .destructive, handler: nil)
        alert.addAction(cancelAction)
    }
    
    @IBAction func showActionSheet() {
        
    }
}

