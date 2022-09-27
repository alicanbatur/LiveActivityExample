//
//  BottomView.swift
//  LiveActivity
//
//  Created by Ali Can Batur on 29.07.2022.
//

import SwiftUI

struct BottomView: View {
  
  @State var state: StatusAttribute.ContentState
  
  var body: some View {
    VStack {
      
      HStack(spacing: 0) {
        
        Text("Status:")
          .font(.system(size: 28, weight: .regular))
          .padding(.top, 16)
        
        Text(state.status.title)
          .font(.system(size: 36, weight: .medium))
          .padding(.top, 8)
          .padding(.leading, 5)
        
        Image(state.status.icon)
          .frame(width: 40, height: 40)
          .padding(.top, 10)
          .padding(.leading, 8)
      }
      .frame(maxWidth: .infinity, alignment: .leading)
      .padding(.horizontal, 20)
      
      HStack(spacing: 8) {
      
        if state.status.isDone {
          Text("Process finished.")
            .font(.system(size: 14, weight: .regular))
        } else {
          Text("Elapsed Time:")
            .font(.system(size: 14, weight: .regular))
          
          Text(state.estimatedCompletionTime, style: .timer)
            .font(.system(size: 14, weight: .medium))
        }
      }
      .frame(maxWidth: .infinity, alignment: .leading)
      .padding(.horizontal, 20)
      .padding(.bottom, 16)
    }
  }
}

