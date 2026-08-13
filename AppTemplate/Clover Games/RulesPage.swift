import SwiftUI
import WebKit

// Обертка для WKWebView
struct WebView: UIViewRepresentable {
    var htmlFileName: String
    
    func makeUIView(context: Context) -> WKWebView {
        let webView = WKWebView(frame: .zero)
        return webView
    }
    
    func updateUIView(_ uiView: WKWebView, context: Context) {
        if let url = Bundle.main.url(forResource: htmlFileName, withExtension: "html") {
            let request = URLRequest(url: url)
            uiView.load(request)
        }
    }
}

struct RulesPage: View {

    var body: some View {
        ZStack {
            WebView(htmlFileName: "rules")
                .edgesIgnoringSafeArea(.all)
            
            VStack {
                HStack {
                    Image("back")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 80, height: 80)
                        .onTapGesture {
                            NavGuard.shared.currentScreen = .MENU
                        }
                    Spacer()
                }
                Spacer()
            }
        }
    }
}

struct RulesPage_Previews: PreviewProvider {
    static var previews: some View {
        RulesPage()
    }
}
