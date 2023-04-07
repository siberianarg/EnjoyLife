//
//  ViewController.swift
//  MyDaysApp
//
//  Created by Galymzhan A on 20.01.2023.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var infoLabel: UILabel!
    @IBOutlet weak var resoultButton: UIButton!
    @IBOutlet weak var dataPicker: UIDatePicker!
    
    private var numberOfDays:String = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
        buttonView()
        view.backgroundColor = UIColor(red: 203/255, green: 228/255, blue: 222/255, alpha: 1.0)
        dataPicker.maximumDate = Date.now
        infoLabel.textColor = UIColor(red: 14/255, green: 131/255, blue: 136/255, alpha: 1.0)
        infoLabel.isHidden = true
    }
    
    func buttonView() {
        resoultButton.layer.cornerRadius = 12
        resoultButton.backgroundColor = UIColor(red: 14/255, green: 131/255, blue: 136/255, alpha: 1.0)
        resoultButton.setTitleColor(UIColor(red: 203/255, green: 228/255, blue: 222/255, alpha: 1.0), for: .normal)
    }
    
    @IBAction func dataPicker(_ sender: UIDatePicker) {
        let range = sender.date..<Date.now
        numberOfDays = range.formatted(.components(style: .wide, fields: [.day]).locale(Locale(identifier: "ru_RF")))
    }
    
    @IBAction func resoultButtonTapped() {
        infoLabel.isHidden = false
        infoLabel.text = "Ты наслаждаешься жизнью уже \(numberOfDays), люби жизнь, развивайся, твори добро!"
    }
}

