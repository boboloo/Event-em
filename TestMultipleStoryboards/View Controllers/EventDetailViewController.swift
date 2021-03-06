//
//  EventDetailViewController.swift
//  TestMultipleStoryboards
//
//  Created by Josue on 10/28/17.
//  Copyright © 2017 Summer Moon Solutions. All rights reserved.
//

import UIKit

class EventDetailViewController: UIViewController {
    
    var ET: String?
    var ED: String?
    var ETT: String?

    @IBOutlet weak var eventImage: UIImageView!
    @IBOutlet weak var eventType: UILabel!
    @IBOutlet weak var eventDescription: UILabel!
    @IBOutlet weak var backLabel: UIButton!
    @IBOutlet weak var lineLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // setup
        self.title = ET!
        eventImage.image = DataStore.shared.getImage(title: ET!)
        eventImage.contentMode = .scaleAspectFit
        eventDescription.text = ED!
        eventDescription.sizeToFit()
        eventType.text = ETT!
        
        backLabel.layer.cornerRadius = 10
        backLabel.clipsToBounds = true
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)

        self.view.backgroundColor = Style.backgroundColor
        self.navigationController?.navigationBar.barTintColor = Style.barTintColor
        self.navigationController?.navigationBar.tintColor = Style.textColor
        self.navigationController?.navigationBar.titleTextAttributes = [
            NSForegroundColorAttributeName : Style.textColor]
        
        eventType.textColor = Style.textColor
        eventDescription.textColor = Style.textColor
        backLabel.setTitleColor(Style.buttonTextColor, for: .normal)
        backLabel.backgroundColor = Style.buttonBackgroundColor
        lineLabel.backgroundColor = Style.textColor
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func backButton(_ sender: Any) {
        self.dismiss(animated: true, completion: nil)
        
    }
    
}

