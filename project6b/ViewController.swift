//
//  ViewController.swift
//  project6b
//
//  Created by Tamim Khan on 13/2/23.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        let lable1 = UILabel()
        lable1.translatesAutoresizingMaskIntoConstraints = false
        lable1.backgroundColor = UIColor.yellow
        lable1.text = "what"
        lable1.sizeToFit()
        
        
        let lable2 = UILabel()
        lable2.translatesAutoresizingMaskIntoConstraints = false
        lable2.backgroundColor = UIColor.cyan
        lable2.text = "colour"
        lable2.sizeToFit()
        
        
        let lable3 = UILabel()
        lable3.translatesAutoresizingMaskIntoConstraints = false
        lable3.backgroundColor = UIColor.gray
        lable3.text = "your"
        lable3.sizeToFit()
        
        
        let lable4 = UILabel()
        lable4.translatesAutoresizingMaskIntoConstraints = false
        lable4.backgroundColor = UIColor.red
        lable4.text = "bugatti"
        lable4.sizeToFit()
        
        
        let lable5 = UILabel()
        lable5.translatesAutoresizingMaskIntoConstraints = false
        lable5.backgroundColor = UIColor.brown
        lable5.text = "is?"
        lable5.sizeToFit()
        
        
        view.addSubview(lable1)
        view.addSubview(lable2)
        view.addSubview(lable3)
        view.addSubview(lable4)
        view.addSubview(lable5)
        
        
        let viewDictonary = ["lable1": lable1, "lable2": lable2, "lable3": lable3, "lable4": lable4, "lable5": lable5]
        
        
        for lable in viewDictonary.keys{
            view.addConstraints(NSLayoutConstraint.constraints(withVisualFormat: "H:|[\(lable)]|", options: [], metrics: nil, views: viewDictonary))
        }
        view.addConstraints(NSLayoutConstraint.constraints(withVisualFormat: "V:|[lable1]-[lable2]-[lable3]-[lable4]-[lable5]", options: [], metrics: nil, views: viewDictonary))
    }


}

