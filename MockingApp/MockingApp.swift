//
//  MockingAppApp.swift
//  MockingApp
//
//  Created by Tiago Henriques on 31/12/2022.
//

import SwiftUI

@main
struct MockingApp: App {
    var body: some Scene {
        WindowGroup {
            PostsView(viewModel: PostsViewModel(service: Service()))
        }
    }
}
