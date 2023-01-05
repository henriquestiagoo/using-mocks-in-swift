//
//  PostsView.swift
//  MockingApp
//
//  Created by Tiago Henriques on 31/12/2022.
//

import SwiftUI

struct PostsView: View {
    @ObservedObject private var viewModel: PostsViewModel
    @Environment(\.openURL) var openURL
    
    init(viewModel: PostsViewModel) {
        self.viewModel = viewModel
    }
    
    var body: some View {
        NavigationView {
            ZStack {
                List(viewModel.posts, id: \.id) { post in
                    PostRowView(post: post)
                    .onTapGesture {
                        openPostUrl(post: post)
                    }
                }
                .navigationBarTitle("Latest Articles")
                
                if let error = viewModel.error {
                    ErrorView(title: error.localizedDescription)
                }
            }
            .onAppear(perform: viewModel.fetchPosts)
        }
    }
    
    func openPostUrl(post: Post) {
        guard let url = URL(string: post.postUrl) else { return }
        openURL(url)
    }
}

struct PostsView_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            PostsView(viewModel: PostsViewModel(
                service: HappyPathMockedService())
            )
            
            PostsView(viewModel: PostsViewModel(
                service: SadPathMockedService())
            )
        }
    }
}
