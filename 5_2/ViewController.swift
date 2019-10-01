//
//  ViewController.swift
//  5_2
//
//  Created by Ilari Marjamaa on 01/10/2019.
//  Copyright © 2019 Ilari Marjamaa. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITextViewDelegate {

    @IBOutlet weak var tekstiBoksi: UITextView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        tekstiBoksi.delegate = self
        
        let loadText = UserDefaults.standard.string(forKey: "savedText")
        tekstiBoksi.text = loadText
        
    }

    func textViewDidChange(_ textField: UITextView){
        let note = tekstiBoksi.text
        UserDefaults.standard.set(note, forKey: "savedText")
    }

}

