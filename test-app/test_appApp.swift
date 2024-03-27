//
//  test_appApp.swift
//  test-app
//
//  Created by Orangeodc4 on 26/3/2024.
//

import SwiftUI

@main
struct test_appApp: App {
    @StateObject var homeViewModel : HomeViewModel = HomeViewModel(placeMapper: PlaceMapper())

    let persistenceController = PersistenceController.shared

    var body: some Scene {
        WindowGroup {
            NavigationStack{
                HomeView()

            }.environmentObject(self.homeViewModel)
        }
    }
}
