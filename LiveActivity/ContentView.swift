//
//  ContentView.swift
//  LiveActivity
//
//  Created by Ali Can Batur on 28.07.2022.
//

import SwiftUI
import ActivityKit

struct ContentView: View {
  
  let helper: LiveActivityHelper = LiveActivityHelper()
  
  var body: some View {
    VStack(spacing: 16) {
      
      
      Button {
        
        DispatchQueue
          .main
          .asyncAfter(deadline: .now() + 2,
                      execute: {
            helper.start()
          })
        
      } label: {
        Text("Start")
          .font(.system(size: 18, weight: .medium))
      }

      Button {
        
        DispatchQueue
          .main
          .asyncAfter(deadline: .now() + 2,
                      execute: {
            helper.update()
          })
        
      } label: {
        Text("Update with in progress")
          .font(.system(size: 18, weight: .medium))
      }
      
      
      Button {
        
        DispatchQueue
          .main
          .asyncAfter(deadline: .now() + 2,
                      execute: {
            helper.end(with: .succeed)
          })
        
      } label: {
        Text("End with succeed")
          .font(.system(size: 18, weight: .medium))
      }
      
      
      
      Button {
        
        DispatchQueue
          .main
          .asyncAfter(deadline: .now() + 2,
                      execute: {
            helper.end(with: .failed)
          })
        
      } label: {
        Text("End with failed")
          .font(.system(size: 18, weight: .medium))
      }
      

    }
  }
  
}

struct ContentView_Previews: PreviewProvider {
  static var previews: some View {
    ContentView()
  }
}
