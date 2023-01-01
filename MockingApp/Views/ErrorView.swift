//
//  ErrorView.swift
//  MockingApp
//
//  Created by Tiago Henriques on 01/01/2023.
//

import Foundation
import SwiftUI

struct ErrorView: View {
    private let title: String

    init(title: String) {
        self.title = title
    }
    
    var body: some View {
        VStack(alignment: .leading) {
            Text("Error fetching articles")
                .font(.title)
                .bold()
            Text(title)
        }
        .padding()
    }
}

struct ErrorView_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            ErrorView(title: Constants.dummyError.localizedDescription)
            .previewLayout(.fixed(width: 300, height: 100))
        }
    }
}
