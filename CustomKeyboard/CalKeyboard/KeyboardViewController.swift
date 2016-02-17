//
//  KeyboardViewController.swift
//  CalKeyboard
//
//  Created by Gene Yoo on 9/15/15.
//  Copyright © 2015 iOS Decal. All rights reserved.
//

import UIKit

class KeyboardViewController: UIInputViewController {

    @IBOutlet var nextKeyboardButton: UIButton!
    @IBOutlet var returnButton: UIButton!
    @IBOutlet var deleteButton: UIButton!
    @IBOutlet var tableFlipButton: UIButton!
    @IBOutlet var lennyFaceButton: UIButton!
    @IBOutlet var disapprovalButton: UIButton!
    @IBOutlet var holdingBackTearsButton: UIButton!
    @IBOutlet var wasteHerTimeButton: UIButton!
    @IBOutlet var wasteHisTimeButton: UIButton!
    
    var keyboardView: UIView!


    override func updateViewConstraints() {
        super.updateViewConstraints()
    
        // Add custom view sizing constraints here
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        loadInterface()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated
    }

    override func textWillChange(textInput: UITextInput?) {
        // The app is about to change the document's contents. Perform any preparation here.
    }

    override func textDidChange(textInput: UITextInput?) {
        // The app has just changed the document's contents, the document context has been updated.
    }

    func loadInterface() {
        let keyboardNib = UINib(nibName: "Keyboard", bundle: nil)
        keyboardView = keyboardNib.instantiateWithOwner(self, options: nil)[0] as! UIView
        keyboardView.frame = view.frame
        view.addSubview(keyboardView)
        view.backgroundColor = keyboardView.backgroundColor
        nextKeyboardButton.addTarget(self, action: "advanceToNextInputMode", forControlEvents: .TouchUpInside) // advanceToNextInputMode is already defined in template
        returnButton.addTarget(self, action: "enterFunc", forControlEvents: .TouchUpInside)
        deleteButton.addTarget(self, action: "deleteBack", forControlEvents: .TouchUpInside)
        tableFlipButton.addTarget(self, action: "tableFlip", forControlEvents: .TouchUpInside)
        lennyFaceButton.addTarget(self, action: "lennyFace", forControlEvents: .TouchUpInside)
        disapprovalButton.addTarget(self, action: "disapproval", forControlEvents: .TouchUpInside)
        holdingBackTearsButton.addTarget(self, action: "holdingBackTears", forControlEvents: .TouchUpInside)
        wasteHerTimeButton.addTarget(self, action: "wasteHerTime", forControlEvents: .TouchUpInside)
        wasteHisTimeButton.addTarget(self, action: "wasteHisTime", forControlEvents: .TouchUpInside)
        
    }
    
    func enterFunc() {
        let proxy = textDocumentProxy as UITextDocumentProxy
        proxy.insertText("\n")
    }
    
    func deleteBack() {
        let proxy = textDocumentProxy as UITextDocumentProxy
        proxy.deleteBackward()
    }
    
    func tableFlip() {
        let proxy = textDocumentProxy as UITextDocumentProxy
        proxy.insertText("(╯°□°）╯︵ ┻━┻)")
    }
    
    func lennyFace() {
        let proxy = textDocumentProxy as UITextDocumentProxy
        proxy.insertText("( ͡° ͜ʖ ͡°)")
    }
    
    func disapproval() {
        let proxy = textDocumentProxy as UITextDocumentProxy
        proxy.insertText("ಠ_ಠ")
    }
    
    func holdingBackTears() {
        let proxy = textDocumentProxy as UITextDocumentProxy
        proxy.insertText("ಥ_ಥ")
    }
    
    func wasteHerTime() {
        let proxy = textDocumentProxy as UITextDocumentProxy
        proxy.insertText("#wastehertime2016")
    }
    
    func wasteHisTime() {
        let proxy = textDocumentProxy as UITextDocumentProxy
        proxy.insertText("#wastehistime2016")
    }
}
