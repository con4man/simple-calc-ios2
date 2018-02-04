//
//  historyViewController.swift
//  simplecalc-ios
//
//  Created by iGuest on 2/3/18.
//  Copyright © 2018 Connor Hawthorne. All rights reserved.
//

import Foundation
import UIKit
class historyViewController: UIViewController {
    
    @IBOutlet weak var scrollView: UIScrollView!
    var operationLine = ""
    var operationHistory:[String] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        for index in 0...operationHistory.count - 1 {
            let label = UILabel(frame: CGRect(x: 50, y: index * 25 + 50, width: 300, height: 40))
            label.text = operationHistory[index]
            scrollView.addSubview(label)
        }
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let calculatorView = segue.destination as! ViewController
        calculatorView.operationHistory = operationHistory
    }
    
}
