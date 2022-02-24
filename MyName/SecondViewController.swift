//
//  SecondViewController.swift
//  MyName
//
//  Created by Евгения Шевцова on 24.02.2022.
//

import UIKit

class SecondViewController: UIViewController {
    
    @IBOutlet weak var myLabel: UILabel!
    
    @IBAction func showAllert() {
        let alertController = UIAlertController(
            title: "Welcome",
            message: "This is MyName app",
            preferredStyle: .alert)
//Создаем стиль кнопки
        let actionOk = UIAlertAction(
            title: "OK",
            style: .default,
            handler: nil)
        
        let actionCancel = UIAlertAction(
            title: "Cancel",
            style: .cancel,
            handler: nil)
        
//Добавляем действие кнопкам алерта
        alertController.addAction(actionOk)
        alertController.addAction(actionCancel)
        
        self.present(alertController, animated: true, completion: nil)
    }
    
    @IBAction func changeLabelText(_ sender: UIButton) {
        if let buttonText = sender.titleLabel!.text {
            self.myLabel.text = "\(buttonText) button was pressed"
        }
    }
    
    
}
