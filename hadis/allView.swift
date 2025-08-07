import Foundation
import SwiftUI

struct allView: View {
    @State private var filter = ""
    var allHadis: allHadis
    
    var body: some View {
        NavigationView {
            List {
                ForEach(allHadis.data) { obj in
                    let con = searchData(raw: obj.data_tr, filter: filter)
                    if con == 1 {
                        NavigationLink(destination: detailView(hadis: obj)) {
                            HStack {
                                Text("\(obj.week)")
                                    .frame(width: 33)
                                Divider()
                                Text("\(obj.data_tr)")
                                    .frame(height: 100)
                                    .truncationMode(.tail)
                            }
                        }
                    }
                }
            }
            .searchable(text: $filter)
            .navigationTitle("Alle Hadis")
        }
    }
}

func searchData(raw: String, filter: String) -> Int {
    if raw.folding(options: .diacriticInsensitive, locale: .current).lowercased().contains(filter.folding(options: .diacriticInsensitive, locale: .current).lowercased()) || filter.isEmpty {
        return(1)
    } else {
        return(0)
    }
}
