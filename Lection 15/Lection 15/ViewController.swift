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
        
        enum Films: String {
            case film1 = "Spiderman"
            case film2 = "Batman"
        }
        
        let alert = UIAlertController(title: nil, message: "Choose Film", preferredStyle: .actionSheet)
        present(alert, animated: true, completion: nil)
        
        let handler:(_ type: Films) -> (UIAlertAction) -> Void = { type in return { action in print(type.rawValue)}}
        
        let cancelAction = UIAlertAction(title: "Cancel", style: .cancel, handler: nil)
        alert.addAction(cancelAction)
        
        let film1 = UIAlertAction(title: Films.film1.rawValue, style: .default, handler: handler(.film1))
        alert.addAction(film1)
        
        let film2 = UIAlertAction(title: Films.film2.rawValue, style: .default, handler: handler(.film2))
        alert.addAction(film2)
        
    }
}

