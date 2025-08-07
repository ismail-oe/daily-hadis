import SwiftUI

let calendar = Calendar.current
let currentDate = Date()
let currentWeek = calendar.component(.weekOfYear, from: currentDate)

struct MainView: View {
    var globalString = GlobalString()
    var jsonObject: allHadis
    
    init() {
        jsonObject = GetJSON(raw: globalString.rawJSON)
    }
    var body: some View {
        TabView {
            weekView(hadis: jsonObject.data[currentWeek-1])
                .tabItem() {
                    Image(systemName: "calendar")
                    Text("Woche")
                }
            allView(allHadis: jsonObject)
                .tabItem() {
                    Image(systemName: "list.bullet")
                    Text("Alle Hadis")
                }
        }
    }
}

#Preview {
    MainView()
}
