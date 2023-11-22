//
//  VideosListView.swift
//  RebelData
//  tut by Rebeloper
//  https://www.youtube.com/watch?v=8Mjno_Dy1jQ&list=PLYsurjw5fRpQUdXzOqkU6DGzcmgPbbQOr
//  Student yannemal on 21 NOV 2023.
//

import SwiftUI
import SwiftData

struct VideosListView: View {
    // DATA:
    @Query var videos : [Video]
    
    var body: some View {
        // someVIEW
        
        List {
            ForEach(videos) { video in
             cell(video)
                    .listRowInsets(.init(top: 12, leading: 0, bottom: 12, trailing: 0))
            }
        }
    }
    // METHODS: 
    func cell(_ video: Video) -> some View {
        
        VStack {
            VStack(alignment: . leading) {
                Text(video.title).bold()
                Text(video.date.formatted(date: .abbreviated, time: .shortened))
                    .font(.caption)
                    .foregroundStyle(.gray)
            
            }
            .padding(.horizontal)
            
            ScrollView(.horizontal, showsIndicators: false) {
                LazyHStack(spacing: 0) {
                    ForEach(video.keywords) { keyword in
                        Text(keyword.title)
                            .font(.caption2)
                            .foregroundStyle(.background)
                            .bold()
                            .padding(6)
                            .background {
                                RoundedRectangle(cornerRadius: 4)
                                    .foregroundStyle(.gray.opacity(0.4))
                            }
                            .padding(.horizontal, 4)
                    }
                }
            } // end ScrollView
        } // end VS
    }
}

#Preview {
    VideosListView()
}
