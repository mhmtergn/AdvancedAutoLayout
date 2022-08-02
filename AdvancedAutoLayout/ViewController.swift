//
//  ViewController.swift
//  AdvancedAutoLayout
//
//  Created by Mehmet Ergün on 2022-08-02.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        let label1 = UILabel()
        label1.translatesAutoresizingMaskIntoConstraints = false
        label1.sizeToFit()
        label1.text = "LABEL 1"
        label1.backgroundColor = .red
        label1.textColor = .white
        
        let label2 = UILabel()
        label2.translatesAutoresizingMaskIntoConstraints = false
        label2.sizeToFit()
        label2.text = "LABEL 2"
        label2.backgroundColor = .green
        
        
        let label3 = UILabel()
        label3.translatesAutoresizingMaskIntoConstraints = false
        label3.sizeToFit()
        label3.text = "LABEL 3"
        label3.backgroundColor = .blue
       
        
        
        let label4 = UILabel()
        label4.translatesAutoresizingMaskIntoConstraints = false
        label4.sizeToFit()
        label4.text = "LABEL 4"
        label4.backgroundColor = .systemOrange
        
        
        let label5 = UILabel()
        label5.translatesAutoresizingMaskIntoConstraints = false
        label5.sizeToFit()
        label5.text = "LABEL 5"
        label5.backgroundColor = .systemMint
        
        
        view.addSubview(label1)
        view.addSubview(label2)
        view.addSubview(label3)
        view.addSubview(label4)
        view.addSubview(label5)
        
//        let viewDictionary = ["label1" : label1, "label2" : label2, "label3" : label3, "label4" : label4, "label5" : label5]
//
//        for label in viewDictionary.keys {
//
//            view.addConstraints(NSLayoutConstraint.constraints(withVisualFormat: "H:|-10-[\(label)]-10-|", options: [], metrics: nil, views: viewDictionary))
//
//        }
//
//        let metrics = ["labelHeight" : 100]
//
//        view.addConstraints(NSLayoutConstraint.constraints(withVisualFormat: "V:|-10-[label1(labelHeight@999)]-[label2(label1)]-[label3(label1)]-[label4(label1)]-[label5(label1)]-(>=10)-|", options: [], metrics: metrics, views: viewDictionary))
        
        var previous: UILabel?
        
        for label in [label1, label2, label3, label4, label5] {
            label.widthAnchor.constraint(equalTo: view.widthAnchor).isActive = true
            label.heightAnchor.constraint(equalToConstant: 75).isActive = true
            
            if let previous = previous {
                label.topAnchor.constraint(equalTo: previous.bottomAnchor, constant: 10).isActive = true
            }else {
                label.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 0).isActive = true
            }
                previous = label
        }
        
    }
    
}

