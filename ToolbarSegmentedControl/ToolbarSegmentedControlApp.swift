//
//  ToolbarSegmentedControlApp.swift
//  ToolbarSegmentedControl
//
//  Created by Maurice Parker on 10/3/22.
//

import SwiftUI

@main
struct ToolbarSegmentedControlApp: App {
	
	private let items = ["About", "Credits"]
	@State private var selected = 0
	
	var body: some Scene {
		WindowGroup {
			ContentView()
				.toolbar {
					ToolbarItem(placement: .principal) {
						Picker("", selection: $selected) {
							ForEach(items, id: \.self) { item in
								Text(item)
							}
						}
						.pickerStyle(.segmented)
					}
				}
				.frame(minWidth: 400, minHeight: 400)
		}
		.windowToolbarStyle(.unifiedCompact(showsTitle: false))
	}
}
