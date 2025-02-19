//
//  File.swift
//  MyLibraryGitFlowTest
//
//  Created by Fenominall on 2/19/25.
//

import Foundation

public final class MyFirstFile {
    private let name: String
    
    public init(name: String) {
        self.name = name
    }
    
    private func changeName(with words: String) -> String {
        return name + " " + words
    }
}
