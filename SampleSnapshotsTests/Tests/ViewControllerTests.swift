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
    func testDashboardSnapshot() {
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        let vc = storyboard.instantiateViewController(withIdentifier: "ViewController")
        FBSnapshotVerifyView(vc.view)
    }

    func testDashboardSnapshot2() {
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        let vc = storyboard.instantiateViewController(withIdentifier: "ViewController")
        vc.view.backgroundColor = UIColor.red
        FBSnapshotVerifyView(vc.view)
    }
}
