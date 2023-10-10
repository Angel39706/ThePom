//
//  ThePomApp.swift
//  ThePom
//
//  Created by Angel Martinez on 10/9/23.
//

import SwiftUI

@main
struct ThePomApp: App {
    @State private var showLaunchScreen = true
    
    var body: some Scene {
        WindowGroup {
            if showLaunchScreen {
                LaunchScreenView()
                    .onAppear{
                        DispatchQueue.main.asyncAfter(deadline: .now() + 2) {
                            withAnimation {
                                showLaunchScreen = false
                            }
                        }
                    }
            }else {
                TabView {
                    HomeView()
                        .tabItem {
                            Label("Home", systemImage: "timer.square")
                        }
                    ProfileView()
                        .tabItem {
                            Label("Home", systemImage: "person.crop.circle")
                        }
                }
                
            }
        }
    }
}
