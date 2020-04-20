//
//  ViewControllerTests.swift
//  SampleSnapshotsTests
//
//  Created by Tatsunori Kuri on 2020/04/20.
//  Copyright © 2020 kuritatu18. All rights reserved.
//

import XCTest
@testable import SampleSnapshots
import FBSnapshotTestCase

class DashboardViewControllerTests: SnapshotTestCase {
    func testDashboardSnapshot() {
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        let vc = storyboard.instantiateViewController(withIdentifier: "ViewController")
        FBSnapshotVerifyView(vc.view)
    }
}
