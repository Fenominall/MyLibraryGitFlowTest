//
//  File.swift
//  MyLibraryGitFlowTest
//
//  Created by Fenominall on 2/19/25.
//

import Foundation

public final class MyFirstFile {
    private var name: String
    
    public init(name: String) {
        self.name = name
    }
    
    private var myNamesArray = [String]()
    private let threadSafeQueue = DispatchQueue(label: "my.queu", attributes: .concurrent)
    
    private func changeName(with words: String) -> String {
        return name + " " + words
    }
    
    func setName(with name: String) {
        threadSafeQueue.async(flags: .barrier) { [weak self] in
            self?.myNamesArray.append(name)
        }
    }
    
    private func randomlySetName() {
        guard let randomNames = myNamesArray.randomElement() else {
            return
        }
        
        name = randomNames
    }
}
