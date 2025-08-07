import Foundation
import SwiftUI

struct toolView: View {
    @AppStorage("size") private var size = 0.0
    @State private var sheet = false
    var hadis: allHadis.Hadis
    
    var body: some View {
        Button(action: {
            sheet.toggle()
        }) {
            Image(systemName: "gear")
        }
        .sheet(isPresented: $sheet) {
            settingsView()
                .presentationDetents([.fraction(0.8)])
        }
        ShareLink(item: "\(hadis.data_ar)\n\n\(hadis.data_tr)\n\n\(hadis.source_tr)" + " - " + "\(hadis.source_ar)") {
            Label("Share", systemImage: "square.and.arrow.up")
        }
    }
}
