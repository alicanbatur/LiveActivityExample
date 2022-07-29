//
//  LiveActivityHelper.swift
//  LiveActivity
//
//  Created by Ali Can Batur on 29.07.2022.
//

import Foundation
import ActivityKit

class LiveActivityHelper {
  
  var statusActivity: Activity<StatusAttribute>?
  
  func start() {
    // We can check if activity is enabled.
    
    guard ActivityAuthorizationInfo().areActivitiesEnabled else {
      print("Activities are not enabled!")
      return
    }
    
    // Initializing the models.
    let statusAttribute = StatusAttribute(buildId: "123456789")
    let initialStatus = StatusAttribute.ProcessStatus(status: .pending,
                                                      estimatedCompletionTime: Date())
    
    // Key point here!
    // Now we tell iOS that there is a new activity started!
    do {
      statusActivity = try Activity<StatusAttribute>.request(
        attributes: statusAttribute,
        contentState: initialStatus,
        pushType: nil)
      
      guard let statusActivity else {
        print("Error: Could not initialize activity.")
        return
      }
      
      print("Build with ID: \(statusActivity.id) is now pending.")
    } catch (let error) {
      print("Error: \(error.localizedDescription)")
    }
    
  }
  
  // Now I will update the current activity.
  func update() {
    Task {
      let updatedCICDStatus = StatusAttribute.ProcessStatus(status: .inProgress,
                                                            estimatedCompletionTime: Date())
      guard let statusActivity else {
        return
      }
      
      await statusActivity.update(using: updatedCICDStatus)
    }
  }
  
  func end(with status: Status) {
    Task {
      let updatedCICDStatus = StatusAttribute.ProcessStatus(status: status, estimatedCompletionTime: Date())
      
      guard let statusActivity else {
        return
      }
      
      await statusActivity.end(using: updatedCICDStatus, dismissalPolicy: .default)
    }
  }
  
}
