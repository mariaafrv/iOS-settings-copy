import SwiftUI

struct BrightnessView: View {
  @State var isAutomaticToggleOn: Bool = false
  @State var isBoldToggleOn: Bool = false
  @State var brightnessSlider = 50.0
  @State var isTrueToneToggleOn: Bool = false
  @State var isUpOn: Bool = false
  var body: some View {
    NavigationStack {
      Form {
        Section(header: Text("APARÊNCIA")){
          HStack {
            Toggle("Automática", isOn: $isAutomaticToggleOn)
          }
        }
        
        Section {
          NavigationLink(destination: AutomaticLock()) {
            HStack {
              Text("Tamanho do texto")
              Spacer()
            }
          }
          
          HStack {
            Toggle("Negrito", isOn: $isBoldToggleOn)
          }
        }
        
        Section(header: Text("Brilho"),
                footer: Text("Adapte a tela do iPhone automaticamente de acordo com a luminação ambiente para que as cores apareçam consistentes em ambientes diferentes.")) {
          HStack {
            Image(systemName: "sun.max.fill")
              .foregroundColor(.gray)
            Slider(value: $brightnessSlider, in:0...100)
            Image(systemName: "sun.max.fill")
              .resizable()
              .frame(width: 25, height: 25)
              .foregroundColor(.gray)
          }
          
          HStack {
            Toggle("True Tone", isOn: $isTrueToneToggleOn)
          }
        }
        
        Section {
          NavigationLink(destination: AutomaticLock()) {
            HStack {
              Text("Night Shift")
              Spacer()
              Text("Desativado")
                .foregroundStyle(.gray)
                .font(.callout)
            }
          }
        }
        
        Section {
          NavigationLink(destination: AutomaticLock()) {
            HStack {
              Text("Bloqueio automático")
              Spacer()
              Text("30 segundos") // O valor (nome da rede, por exemplo)
                .foregroundStyle(.gray)
                .font(.callout)
            }
          }
          
          HStack {
            Toggle("Elevar para Acender", isOn: $isUpOn)
          }
        }
        
        Section(header: Text("Tela"),
                footer: Text("Escolha uma visualização para o iPhone. Texto Maior mostra os controles amplicados. Padrão mostra mais conteúdo.")) {
          NavigationLink(destination: AutomaticLock()) {
            HStack {
              Text("Zoom da Tela")
              Spacer()
              Text("Padrão")
                .foregroundStyle(.gray)
                .font(.callout)
            }
          }
        }
      }
    }.navigationTitle("Tela e Brilho")
      .navigationBarTitleDisplayMode(.inline)
  }
}

#Preview {
  NavigationStack {
    BrightnessView()
  }
}
