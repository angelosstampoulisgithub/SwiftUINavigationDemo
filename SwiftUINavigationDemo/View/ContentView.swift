//
//  ContentView.swift
//  SwiftUINavigationDemo
//
//  Created by Angelos Staboulis on 14/3/25.
//

import SwiftUI

struct ContentView: View {
    @StateObject private var navigationManager = NavigationManager()

    var body: some View {
        NavigationStack(path:$navigationManager.path){
            VStack {
                Button("View A") {
                    navigationManager.push(route:AppRoute.first)
                }
                Button("View B") {
                    navigationManager.push(route:AppRoute.second)
                }
                Button("View C") {
                    navigationManager.push(route:AppRoute.third)
                }
            }.navigationDestination(for: AppRoute.self) { route in
                switch route {
                case .first:
                    FirstView()
                case .second:
                    SecondView()
                case .third:
                    ThirdView()
                    
                }
                
            }
        }

    }
}

#Preview {
    ContentView()
}
