import SwiftUI

struct RootView: View {
    @ObservedObject private var nav: NavGuard = NavGuard.shared

    var body: some View {
        switch nav.currentScreen {
        case .MENU:
            MenuView()
        case .GAME:
            PlayPage()
        case .SETTINGS:
            SettingsPage()
        case .RULES:
            RulesPage()
        case .QUIZ:
            QuizPage()
        case .STATS:
            ProgressPage()
        }
    }
}

#Preview {
    RootView()
}
