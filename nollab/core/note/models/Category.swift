import Foundation


///  Category a [Note] can fall under
enum NoteCategory: String, CaseIterable, Identifiable, Codable {
    
    // Note for academic purposes
    case academic
    
    // Note for work purposes
    case work
    
    // Note for personal stuff
    case personal
    
    // Note for religious stuff
    case religion
    
    // Name of category
    var name: String {
        rawValue.capitalized
    }
    
    // Unique id of category
    var id: String {
        name
    }
}
