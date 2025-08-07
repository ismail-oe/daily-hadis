import Foundation

struct allHadis: Codable, Identifiable {
    struct Hadis: Codable, Identifiable {
        var data_tr: String
        var source_tr: String
        var data_ar: String
        var source_ar: String
        var week: String
        var id = UUID()
        
        enum CodingKeys: String, CodingKey {
            case data_tr, source_tr, data_ar, source_ar, week
        }
    }
    var data: [Hadis]
    var id = UUID()
    
    enum CodingKeys: String, CodingKey {
        case data
    }
}

func GetJSON(raw: String) -> allHadis {
    let jsonData = raw.data(using: .utf8)!
    let allHadis = try! JSONDecoder().decode(allHadis.self, from: jsonData)
    return allHadis
}
