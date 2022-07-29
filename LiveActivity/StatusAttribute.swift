//
//  Attribute.swift
//  LiveActivity
//
//  Created by Ali Can Batur on 28.07.2022.
//

import SwiftUI
import WidgetKit
import ActivityKit

struct StatusAttribute: ActivityAttributes {
  public typealias ProcessStatus = ContentState
  
  public struct ContentState: Codable, Hashable {
    var status: Status
    var estimatedCompletionTime: Date
  }
  
  var buildId: String
}

