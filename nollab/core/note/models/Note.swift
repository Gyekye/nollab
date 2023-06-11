import Foundation


/// A note entity
struct Note: Identifiable, Codable {
    // Unique id of note
    let id: UUID
    
    // Title of note
    var title: String
    
    // Content of note
    var content: String
    
    // Files attached to note
    var files: [String]
    
    // Theme of note
    var theme: Theme
    
    // Category of notes
    var category: [NoteCategory]

    // Creator id of note
    var creator: String
    
    // Other users note has been shared with
    var collaborators: [String]
    
    // Date note was created
    var date: String
    
    
    // Constructor
    init(
        id: UUID = UUID(),
        title: String,
        content: String,
        files: [String],
        theme: Theme,
        category: [NoteCategory],
        creator: String,
        collaborators: [String],
        date: String
        ){
        self.id = id
        self.title = title
        self.content = content
        self.files = files
        self.theme = theme
        self.category = category
        self.creator = creator
        self.collaborators = collaborators
        self.date = date
    }
}


///  Extension on [Note]
extension Note {
    
    /// Initial data of Scrum
    static var emptyNote: Note {
        Note(
            title: "",
            content: "",
            files: [],
            theme: .green,
            category: [],
            creator:"",
            collaborators: [],
            date: ""
        )
    }
    
    /// Initial mock data to populate views
    static let mock: [Note] = [
    
    ]
}
