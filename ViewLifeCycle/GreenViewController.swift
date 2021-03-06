//
//  GreenViewController.swift
//  ViewLifeCycle
//
//  Created by Павел Григорьев on 06/05/2019.
//  Copyright © 2019 GP. All rights reserved.
//

import UIKit

class GreenViewController: UIViewController {

    @IBOutlet var greenTextView: UITextView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        LogSheet.shared.printMessage(textView: greenTextView, viewController: self)
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        LogSheet.shared.printMessage(textView: greenTextView, viewController: self)
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        LogSheet.shared.printMessage(textView: greenTextView, viewController: self)
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        LogSheet.shared.printMessage(textView: greenTextView, viewController: self)
    }
    
    override func viewDidDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        LogSheet.shared.printMessage(textView: greenTextView, viewController: self)
    }

}
