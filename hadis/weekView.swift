import Foundation
import SwiftUI

struct weekView: View {
    @AppStorage("size") private var size = 0.0
    @State private var sheet = false
    var hadis: allHadis.Hadis
    
    var body: some View {
        NavigationStack {
            List {
                hadisView(hadis: hadis)
            }
            .navigationTitle("Woche: "  + "\(currentWeek)")
            .toolbar {
                toolView(hadis: hadis)
            }
        }
    }
}
