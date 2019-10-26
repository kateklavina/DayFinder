//
//  ViewController.swift
//  DayFinder
//
//  Created by Kate Klavina on 25/10/2019.
//  Copyright © 2019 Kate Klavina. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
 var str = ""
    @IBOutlet weak var dayFinder: UILabel!
   
    
    @IBOutlet weak var dayType: UITextField!
 
    
    @IBOutlet weak var monthType: UITextField!
   
    
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
        // navigacija liela pa visu lauk.
    }
    @IBAction func dayFinderbutton(_ sender: UIButton) {
        let calendar  = Calendar.current
       
    
        
        
        var dateComponents = DateComponents()
        
        guard let day = dayType.text, let month = monthType.text, let year = yearType.text else {return}
        dateComponents.day = Int(day)
          dateComponents.month = Int(month)
          dateComponents.year = Int(year)
        
    //    dateComponents.day = Int(dayType.text!)
    //    dateComponents.month = Int(monthType.text!)
    //    dateComponents.year = Int(yearType.text!)
        
    //    let date = calendar.date(from: dateComponents)
        
        guard let date  = calendar.date(from:dateComponents) else {return}
        
        let dateFormater = DateFormatter()
        dateFormater.locale = Locale (identifier: "lv_LV")
        dateFormater.dateFormat = "EEEE"
        
        let weekday = dateFormater.string(from: date)
        let capitalizeWeekday = weekday.capitalized
        
        dayOfWeek.text = capitalizeWeekday
    } //touch down
    
    
    override func touchesBegan(_ touchesBegan: Set<UITouch>,with event: UIEvent?){
        self.view.endEditing(true) //noņem keyborb
    }

}
