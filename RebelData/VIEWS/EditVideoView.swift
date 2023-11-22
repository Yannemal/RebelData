//
//  EditVideoView.swift
//  tut by Rebeloper
//  https://www.youtube.com/watch?v=8Mjno_Dy1jQ&list=PLYsurjw5fRpQUdXzOqkU6DGzcmgPbbQOr
//  Student yannemal on 21 NOV 2023.
//

import SwiftUI

struct EditVideoView: View {
   // DATA:
    @Binding var video: Video
    @State private var newKeywordName = ""
    
    var body: some View {
    // some VIEW:
        Form {
            TextField("Title", text: $video.title)
            DatePicker("Date", selection: $video.date)
            
            Section("Keywords") {
                ForEach(video.keywords) { keyword in
                    Text(keyword.title)
                }
                
                HStack{
                    TextField("Add a new keyword for \(video.title)", text: $newKeywordName)
                    
                    Button("Add", action: addKeyword)
                }
            }
        }
        .navigationTitle("Edit Video")
        .navigationBarTitleDisplayMode(.inline)
       
    }
    // METHODS:
    func addKeyword() {
        guard newKeywordName.isEmpty == false
        else { return }
        
        withAnimation {
            let keyword = Keyword(title: newKeywordName)
            video.keywords.append(keyword)
            newKeywordName = ""
        }
    }
}


//#Preview {
//    EditVideoView()
//}
