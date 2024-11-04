import SwiftUI

struct ContentView: View {
  @State var isSwitchOn: Bool = false
  var body: some View {
    Form {
      Section {
        HStack {
          Image(systemName: "airplane")
            .foregroundColor(.white)
            .padding(6)
            .background(
              RoundedRectangle(cornerRadius: 10)
                .fill(Color.orange)
            )
          Text("Airplane Mode")
          Toggle("", isOn: $isSwitchOn)
        }
        
        
        HStack {
          Image(systemName: "wifi")
            .foregroundColor(.white)
            .padding(6)
            .background(
              RoundedRectangle(cornerRadius: 10)
                .fill(Color.blue)
            )
          Text("Wi-fi")
          Spacer()
          Text("nome da rede")
            .foregroundStyle(.gray)
            .font(.callout)
          Button {
            // show wifi page
          } label: {
            Image(systemName: "chevron.right")
          }.foregroundColor(.gray)
        }
      }
      
      Section {
        HStack {
          Image(systemName: "folder.fill.badge.plus")
            .foregroundColor(.white)
            .padding(6)
            .background(
              RoundedRectangle(cornerRadius: 10)
                .fill(Color.red)
            )
          Text("Notifications")
          Spacer()
          Button {
            // show wifi page
          } label: {
            Image(systemName: "chevron.right")
          }.foregroundColor(.gray)
        }
      }
      
    }
  }
}

#Preview {
  ContentView()
}
