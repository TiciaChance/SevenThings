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
    
    private let speechRecognizer = SFSpeechRecognizer(locale: Locale.init(identifier: "en-US"))
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        recordingButton.isEnabled = false
        speechRecognizer?.delegate = self
        
        SFSpeechRecognizer.requestAuthorization { (authStatus) in
            
            var isButtonEnabled = false
            
            switch authStatus {  //5
            case .authorized:
                isButtonEnabled = true
                
            case .denied:
                isButtonEnabled = false
                print("User denied access to speech recognition")
                
            case .restricted:
                isButtonEnabled = false
                print("Speech recognition restricted on this device")
                
            case .notDetermined:
                isButtonEnabled = false
                print("Speech recognition not yet authorized")
            }
            
            OperationQueue.main.addOperation() {
                self.recordingButton.isEnabled = isButtonEnabled
            }
        }
    }
    

    @IBAction func recordingButtonTapped(_ sender: AnyObject) {
    }
    
}
