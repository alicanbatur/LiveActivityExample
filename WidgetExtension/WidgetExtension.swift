//
//  WidgetExtension.swift
//  WidgetExtension
//
//  Created by Ali Can Batur on 28.07.2022.
//

import WidgetKit
import SwiftUI
import Intents

@main
struct WidgetExtension: Widget {
  let kind: String = "WidgetExtension"
  
  var body: some WidgetConfiguration {
    ActivityConfiguration(attributesType: StatusAttribute.self) { context in
      StatusView(attribute: context.attributes, state: context.state)
    }
  }
}

struct WidgetExtension_Previews: PreviewProvider {
  static var previews: some View {
    let testAttribute = StatusAttribute(buildId: "1231231")
    let testState = StatusAttribute.ContentState(
      status: .pending,
      estimatedCompletionTime: Date()
    )
    
    StatusView(attribute: testAttribute, state: testState)
      .previewContext(
        WidgetPreviewContext(
          family: .systemLarge
        )
      )
  }
}
