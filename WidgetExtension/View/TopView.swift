//
//  TopView.swift
//  LiveActivity
//
//  Created by Ali Can Batur on 29.07.2022.
//

import SwiftUI

struct TopView: View {
  
  @State var attribute: StatusAttribute
  
  var body: some View {
    ZStack {
      Color(hex: "EBEBEB")
      
      VStack(alignment: .leading, spacing: 8) {
        
        Text("CI/CD Process")
          .font(.system(size: 40, weight: .ultraLight))
        
        Text("Build ID: \(attribute.buildId)")
          .font(.system(size: 20, weight: .regular))
        
      }
      .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .leading)
      .padding(.horizontal, 20)
    }
    .frame(maxWidth: .infinity, alignment: .leading)
    .frame(height: 99)
    .shadow(color: .black.opacity(0.25), radius: 40, x: 0, y: 10)
    
    Rectangle()
      .fill(Color.gray.opacity(0.5))
      .frame(height: 1)
  }
}
