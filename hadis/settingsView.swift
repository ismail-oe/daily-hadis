import Foundation
import SwiftUI

struct settingsView: View {
    @AppStorage("size") private var size = 0.0
    @AppStorage("showText") private var showText = true
    @Environment(\.dismiss) var dismiss
    
    var info = Info()
    
    var body: some View {
        NavigationView {
            Form {
                Section(header: Text("Anzeige")) {
                    Toggle(isOn: $showText) {
                        Text("Zeige arabischen Text")
                    }
                }
                Section(header: Text("Textgröße")) {
                    Slider (
                        value: $size,
                        in: 0...9,
                        step: 1
                    )
                }
                Section(header: Text("Kontakt")) {
                    HStack {
                        Text("E-Mail")
                        Text("\(info.contact)")
                            .frame(maxWidth: .infinity, alignment: .trailing)
                            .foregroundColor(.secondary)
                            .textSelection(.enabled)
                    }
                }
                Section(header: Text("Info")) {
                    HStack {
                        Text("Version")
                        Text("\(info.version)")
                            .frame(maxWidth: .infinity, alignment: .trailing)
                            .foregroundColor(.secondary)
                    }
                }
            }
            .toolbar {
              ToolbarItemGroup(placement: .bottomBar) {
                  Text("Entwickelt von: " + "\(info.developer)")
                     .font(.footnote)
                     .foregroundColor(.secondary)
                     .frame(maxWidth: .infinity)
                 }
            }
            .navigationTitle("Einstellungen")
            .toolbar {
                Button(action: {
                    dismiss()
                }) {
                    Text("Fertig")
                }
            }
        }
    }
}

