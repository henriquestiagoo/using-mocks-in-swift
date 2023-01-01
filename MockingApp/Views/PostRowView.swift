//
//  PostRowView.swift
//  MockingApp
//
//  Created by Tiago Henriques on 01/01/2023.
//

import Foundation
import SwiftUI

struct PostRowView: View {
    let post: Post

    init(post: Post) {
        self.post = post
    }
    
    var body: some View {
        VStack(alignment: .leading) {
            HStack {
                Text(post.name).bold()
                Spacer()
                Text(post.publishedAt)
                    .foregroundColor(Color.gray)
            }
            Text(post.summary)
        }
        .padding()
    }
}

struct PostRow_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            PostRowView(
                post: Constants.posts.first!
            )
            .previewLayout(.fixed(width: 300, height: 100))
        }
    }
}
