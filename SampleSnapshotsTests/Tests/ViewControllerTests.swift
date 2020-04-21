//
//  ViewControllerTests.swift
//  SampleSnapshotsTests
//
//  Created by Tatsunori Kuri on 2020/04/20.
//  Copyright © 2020 kuritatu18. All rights reserved.
//

@testable import SampleSnapshots
import FBSnapshotTestCase
import UIKit

class ViewControllerTests: SnapshotTestCase {
    func testViewController() {
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        let vc = storyboard.instantiateViewController(withIdentifier: "ViewController")
        verifyView(vc.view)
    }

    func testViewControllerRed() {
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        let vc = storyboard.instantiateViewController(withIdentifier: "ViewController")
        vc.view.backgroundColor = UIColor.red
        verifyView(vc.view, identifier: "背景が赤い")
    }
}
