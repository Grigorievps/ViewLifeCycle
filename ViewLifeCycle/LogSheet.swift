//
//  ContainerViewController.swift
//  ViewLifeCycle
//
//  Created by Павел Григорьев on 06/05/2019.
//  Copyright © 2019 GP. All rights reserved.
//

import UIKit

class LogSheet: NSObject {

    static let shared = LogSheet()
    private var logSheet = [String]()
    
    private override init() {
    }
    
    func printMessage(textView: UITextView, viewController: UIViewController, function: String = #function) {
    
    logSheet.append((viewController.title ?? "nil") + " - " + (function))
    let string = logSheet.joined(separator: "\n")
    textView.text = string
    
    textViewScrollToBottom(textView)
    }
    
    private func textViewScrollToBottom(_ textView: UITextView) {
        let bottom = NSMakeRange(textView.text.count-1, 1)
        textView.scrollRangeToVisible(bottom)
    }
}
