//
//  RepoRow.swift
//  SwiftUI-APISearch
//
//  Created by Ajit Satarkar on 22/11/23.
//

import SwiftUI

struct RepoRow: View {
    let repo: Repo

    var body: some View {
        VStack(alignment: .leading) {
            Text(repo.name)
                .font(.headline)
            Text(repo.description)
                .font(.subheadline)
        }
    }
}


