import SwiftUI

struct AutomaticLock: View {
    var body: some View {
      List{
        Text("30 segundos")
        Text("1 minuto")
        Text("30 segundos")
        Text("1 minuto")
        Text("30 segundos")
        Text("1 minuto")
        Text("30 segundos")
        Text("1 minuto")
      }.navigationTitle("Bloqueio Automático")
        .navigationBarTitleDisplayMode(.inline)
    }
}

#Preview {
  NavigationStack {
    AutomaticLock()
  }
}
