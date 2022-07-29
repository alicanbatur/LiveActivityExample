//
//  Status.swift
//  LiveActivity
//
//  Created by Ali Can Batur on 29.07.2022.
//

import Foundation

enum Status: Codable {
  case pending
  case inProgress
  case succeed
  case failed
  
  var isDone: Bool {
    return self == .failed || self == .succeed
  }
  
  var title: String {
    switch self {
    case .pending:
      return "Pending"
    case .inProgress:
      return "In Progress"
    case .succeed:
      return "Succeed"
    case .failed:
      return "Failed"
    }
  }
  
  var icon: String {
    switch self {
    case .pending:
      return "pending"
    case .inProgress:
      return "in-progress"
    case .succeed:
      return "succeed"
    case .failed:
      return "failed"
    }
  }
}

