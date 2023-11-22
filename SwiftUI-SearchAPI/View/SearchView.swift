//
//  SearchView.swift
//  SwiftUI-APISearch
//
//  Created by Ajit Satarkar on 22/11/23.
//

import SwiftUI

struct SearchView : View {
    @State private var query: String = ""
    @EnvironmentObject var repoStore: ReposStore

    var body: some View {
        NavigationView {
            VStack {
                TextField("Type something here...", text: $query, onCommit: fetch)
                    .padding(.leading)
                    .backgroundStyle(.gray)
                
                List {
                    ForEach(repoStore.repos) { repo in
                        RepoRow(repo: repo)
                    }
                }.navigationBarTitle(Text("Search"))
            }
        }
        .onAppear(perform: fetch)
        .preferredColorScheme(.light)
    }

    private func fetch() {
        repoStore.fetch(matching: query)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        SearchView()
            .environmentObject(ReposStore(service: .init()))
    }
}
