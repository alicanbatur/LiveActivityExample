//
//  StatusView.swift
//  LiveActivity
//
//  Created by Ali Can Batur on 29.07.2022.
//

import SwiftUI

struct StatusView: View {
  
  @State var attribute: StatusAttribute
  @State var state: StatusAttribute.ContentState
  
  var body: some View {
    
    ZStack {
      Color.white
      VStack(spacing: 0) {
        TopView(attribute: attribute)
        BottomView(state: state)
      }
      .activitySystemActionForegroundColor(Color.cyan)
    }
  }
}
