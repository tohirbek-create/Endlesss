import SwiftUI

struct ContentView: View {
    @State private var isVisible = true

    var body: some View {
        ZStack {
            Color.white
                .ignoresSafeArea()

            Text("Diqqat! Telefon keberhujumga uchradi!! Telefon Veruslanmoqda... 🚫 ")
                .font(.system(size: 28, weight: .bold))
                .foregroundColor(.white)
                .multilineTextAlignment(.center)
                .padding(.horizontal, 28)
                .padding(.vertical, 22)
                .background(
                    RoundedRectangle(cornerRadius: 18)
                        .fill(Color.black)
                )
                .opacity(isVisible ? 1 : 0)
                .animation(
                    .easeInOut(duration: 0.4),
                    value: isVisible
                )
        }
        .onAppear {
            Timer.scheduledTimer(withTimeInterval: 0.8, repeats: true) { _ in
                isVisible.toggle()
            }
        }
    }
}
