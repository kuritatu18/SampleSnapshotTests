//
//  SnapshotTestCase.swift
//  SampleSnapshotsTests
//
//  Created by Tatsunori Kuri on 2020/04/20.
//  Copyright © 2020 kuritatu18. All rights reserved.
//

import FBSnapshotTestCase

class SnapshotTestCase: FBSnapshotTestCase {

    var window: UIWindow!

    override func setUp() {
        super.setUp()
        recordMode = ProcessInfo().environment["SNAPSHOT_TEST_RECORD_MODE"] == "true"
        fileNameOptions = [.device, .OS, .screenSize, .screenScale]

        window = UIWindow(frame: UIScreen.main.bounds)
        window.makeKeyAndVisible()
    }
}
