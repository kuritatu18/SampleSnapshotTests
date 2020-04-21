//
//  ViewController.swift
//  SampleSnapshots
//
//  Created by Tatsunori Kuri on 2020/04/20.
//  Copyright © 2020 kuritatu18. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var label: UILabel!

    override func viewDidLoad() {
        super.viewDidLoad()
        label.text = NSLocalizedString("label", comment: "")
    }
}
