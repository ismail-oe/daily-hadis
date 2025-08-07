import Foundation
import SwiftUI

struct detailView: View {
    @State private var sheet = false
    
    var hadis: allHadis.Hadis
    var body: some View {
            List {
                hadisView(hadis: hadis)
            }
            .toolbar {
                toolView(hadis: hadis)
            }
    }
}
