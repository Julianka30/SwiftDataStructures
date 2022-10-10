//
//  LinkedList.swift
//  SwiftDataStructuresTests
//
//  Created by Julia on 10/4/22.
//

import SwiftDataStructures
import XCTest

final class LinkedListTests: XCTestCase {
    func test_append() {
        let list = LinkedList()
        XCTAssertEqual(list.toArray(), [])
        
        list.append("Vova")
        list.append("Julia")
        XCTAssertEqual(list.toArray(), ["Vova", "Julia"])
    }
    
    func test_count() {
        let list = LinkedList()
        XCTAssertEqual(list.count, 0)
        
        list.append("Vova")
        list.append("Julia")
        XCTAssertEqual(list.count, 2)
    }
    
    func test_remove() {
        let list = LinkedList()
        list.append("Anna")
        list.append("Kate")
        
        list.remove("Anna")
        XCTAssertEqual(list.toArray(), ["Kate"])
        
    
        list.append("Vasyl")
        list.remove("Vasyl")
        list.append("Pavlo")
        XCTAssertEqual(list.toArray(), ["Kate", "Pavlo"])
    }

    func test_remove_at_index() {
        let list = LinkedList()
        list.append("Anna")
        list.append("Kate")
        list.append("Nora")
        
        list.remove(at: 0)
        XCTAssertEqual(list.toArray(), ["Kate","Nora"])
    }
}
