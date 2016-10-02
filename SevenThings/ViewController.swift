//
//  ViewController.swift
//  SevenThings
//
//  Created by Laticia Chance on 9/30/16.
//  Copyright © 2016 Laticia Chance. All rights reserved.
//


import UIKit
import Speech

class ViewController: UIViewController, SFSpeechRecognizerDelegate {
    
    @IBOutlet weak var userPromptLabel: UILabel!
    @IBOutlet weak var textView: UITextView!
    @IBOutlet weak var recordingButton: UIButton!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    @IBOutlet weak var recordingButtonTapped: UIButton!

    
}
