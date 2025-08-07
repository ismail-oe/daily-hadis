import Foundation
import SwiftUI

struct hadisView: View {
    @AppStorage("size") private var size = 0.0
    @AppStorage("showText") private var showText = true
    @State private var sheet = false
    var hadis: allHadis.Hadis
    
    var body: some View {
        Section(footer: Text("\(hadis.source_tr)" + " - " + "\(hadis.source_ar)")) {
            if showText == true {
                Text("\(hadis.data_ar)")
                    .environment(\.layoutDirection,  .rightToLeft)
                    .font(.system(size: UIFontMetrics.default.scaledValue(for: 18+(size*1.5))))
            }
            Text("\(hadis.data_tr)")
                .font(.system(size: UIFontMetrics.default.scaledValue(for: 18+(size*1.5))))
        }
    }
}
