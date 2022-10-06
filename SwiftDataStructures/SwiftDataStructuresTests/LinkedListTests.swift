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
}