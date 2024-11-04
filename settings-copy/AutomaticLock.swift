import SwiftUI

struct AutomaticLock: View {
    var body: some View {
      List{
        Text("30 segundos")
        Text("1 minuto")
        Text("3 minutos")
        Text("4 minutos")
        Text("5 minutos")
        Text("Nunca")
      }.navigationTitle("Bloqueio Automático")
        .navigationBarTitleDisplayMode(.inline)
    }
}

#Preview {
  NavigationStack {
    AutomaticLock()
  }
}
