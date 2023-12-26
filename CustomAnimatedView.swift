import SwiftUI

struct CustomAnimatedView: View {
    @State var isAnimated = false
    
    var body: some View {
        VStack {
            Text("Greetings!")
                .foregroundStyle(isAnimated ? .green : .purple)
                .font(.system(size: 25))
                .scaleEffect(isAnimated ? 1.5 : 1)
                .offset(y: isAnimated ? -50 : 0)
                .onAppear {
                    withAnimation(Animation.easeInOut(duration: 2.5).repeatForever(autoreverses: true)) {
                        isAnimated = true
                    }
                }
        }
    }
}
