//
//  ViewController.swift
//  DayFinder
//
//  Created by Dace Laizane on 25/10/2019.
//  Copyright © 2019 Kate Klavina. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
 var str = ""
    @IBOutlet weak var dayFinder: UILabel!
    @IBOutlet weak var day: UILabel!
    @IBOutlet weak var dayType: UITextField!
    @IBOutlet weak var Month: UILabel!
    @IBOutlet weak var monthType: UITextField!
    @IBOutlet weak var year: UILabel!
    @IBOutlet weak var yearType: UITextField!
    @IBOutlet weak var dayOfWeek: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        statusBarStyle()
    }
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(true)
    }
    func statusBarStyle (){
        let app = UINavigationBarAppearance()
        app.backgroundColor = UIColor.red.withAlphaComponent(0.7)
        app.largeTitleTextAttributes = [.foregroundColor: UIColor.white]
        
        self.navigationController?.navigationBar.scrollEdgeAppearance = app
    }

    @IBAction func dayFinderbutton(_ sender: UIButton) {
    } //touch down
}

