import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack(alignment: .center) {
            Color(red: 1/255, green: 168/255, blue: 98/255)
                .ignoresSafeArea()
            
            Image("starbucks_logo")
                .resizable()
                .frame(width: 168, height: 168)
        }
    }
}

#Preview {
    ContentView()
}
