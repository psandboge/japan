//
//  HostingKatakanaRefController.swift
//  Gakusei Watch WatchKit Extension
//
//  Created by Pierre Sandboge on 2019-10-05.
//  Copyright © 2019 Pierre Sandboge. All rights reserved.
//

import WatchKit
import Foundation
import SwiftUI

class HostingKatakanaRefController : WKHostingController<KatakanaRefView> {
    override var body: KatakanaRefView {
        return KatakanaRefView()
    }
}
