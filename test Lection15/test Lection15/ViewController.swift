//
//  ViewController.swift
//  test Lection15
//
//  Created by Dima on 24.08.2022.
//

import UIKit

class ViewController: UIViewController {

    let buttonAlert = UIButton()
    let buttonSheet = UIButton()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        createButtonAlert()
        createButtonSheet()
        
    }
    func createButtonAlert() {
        buttonAlert.frame = CGRect(x: 100, y: view.center.y, width: 100, height: 40)
        buttonAlert.backgroundColor = .darkGray
        buttonAlert.setTitle("Alert", for: .normal)
        view.addSubview(buttonAlert)
        buttonAlert.addTarget(self, action: #selector(showAlertButton), for: .touchUpInside)
    }
    
    func createButtonSheet() {
        buttonSheet.frame = CGRect(x: 230, y: view.center.y, width: 100, height: 40)
        buttonSheet.backgroundColor = .darkGray
        buttonSheet.setTitle("Sheet", for: .normal)
        view.addSubview(buttonSheet)
        buttonSheet.addTarget(self, action: #selector(showAlertSheet), for: .touchUpInside)
    }

    @objc func showAlertButton() {
        let alert = UIAlertController(title: "Warning Exit Matrix", message: "You should to choose a pill", preferredStyle: .alert)
        present(alert, animated: true, completion: nil)
        
        let actionRed = UIAlertAction(title: "Red pill", style: .destructive, handler: nil)
        alert.addAction(actionRed)
        
        let actionBlue = UIAlertAction(title: "Blue pill", style: .default, handler: nil)
        alert.addAction(actionBlue)
    }
    
    @objc func showAlertSheet() {
        let sheet = UIAlertController(title: "Warning Exit Matrix", message: "You should to choose a pill", preferredStyle: .actionSheet)
        present(sheet, animated: true, completion: nil)
        
        let actionRed = UIAlertAction(title: "Red pill", style: .destructive, handler: nil)
        sheet.addAction(actionRed)
        
        let actionBlue = UIAlertAction(title: "Blue pill", style: .default, handler: nil)
        sheet.addAction(actionBlue)
    }
    
}

