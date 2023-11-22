//
//  RepoModel.swift
//  SwiftUI-APISearch
//
//  Created by Ajit Satarkar on 22/11/23.
//

import Foundation

struct Repo: Decodable, Identifiable {
    var id: Int
    let name: String
    let description: String
}

struct SearchResponse: Decodable {
    let items: [Repo]
}
