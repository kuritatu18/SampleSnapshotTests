//
//  SnapshotTestCase.swift
//  SampleSnapshotsTests
//
//  Created by Tatsunori Kuri on 2020/04/20.
//  Copyright © 2020 kuritatu18. All rights reserved.
//
import Foundation
import FBSnapshotTestCase

class SnapshotTestCase: FBSnapshotTestCase {

    var window: UIWindow!

    override func setUp() {
        super.setUp()
//        recordMode = ProcessInfo().environment["SNAPSHOT_TEST_RECORD_MODE"] == "true"
        recordMode = true
        fileNameOptions = [.device, .OS, .screenSize]

        window = UIWindow(frame: UIScreen.main.bounds)
        window.makeKeyAndVisible()
    }
}

extension SnapshotTestCase {
    func verifyView(_ view: UIView) {
        let language = Locale.preferredLanguages.first
        FBSnapshotVerifyView(view, identifier: language)
    }
}
