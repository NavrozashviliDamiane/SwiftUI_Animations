import SwiftUI

@main
struct CustomAnimationsApp: App {
    var body: some Scene {
        WindowGroup {
            TabView {
                CustomAnimatedView()
                    .tabItem {
                        Label("Custom", systemImage: "star.fill")
                    }
                SwiftUIXmasTree2()
                    .tabItem {
                        Label("Xmas Tree", systemImage: "sparkles")
                    }
            }
        }
    }
}
