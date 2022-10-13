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

    func test_remove_from_beginning() {
        let list = LinkedList()
        list.remove(at: 0)
        XCTAssertEqual(list.toArray(), [])
        
        list.append("Anna")
        list.append("Kate")
        list.append("Nora")
        
        list.remove(at: 0)
        XCTAssertEqual(list.toArray(), ["Kate","Nora"])
    }
    
    func test_remove_from_last() {
        let list = LinkedList()
        list.append("Anna")
        list.append("Kate")
        list.append("Nora")
        
        list.remove(at: 2)
        XCTAssertEqual(list.toArray(), ["Anna","Kate"])
    }
    
    func test_remove_from_middle() {
        let list = LinkedList()
        list.append("Anna")
        list.append("Kate")
        list.append("Nora")
        
        list.remove(at: 1)
        XCTAssertEqual(list.toArray(), ["Anna","Nora"])
    }
    
    func test_remove_out_of_bounds() {
        let list = LinkedList()
        list.append("Anna")
        list.append("Kate")
        list.append("Nora")
        
        list.remove(at: 4)
        XCTAssertEqual(list.toArray(), ["Anna","Kate","Nora"])
    }
    
    func test_contains_value() {
        let list = LinkedList()
        list.append("Maria")
        list.append("Nikita")
        list.append("Rosa")
        
        XCTAssertEqual(list.contains("Rosa"), true)
    }
    
    func test_insert_at_last() {
        let list = LinkedList()
        list.append("Lara")
        list.append("Nik")
        list.append("Mike")
        
        list.insert("Tina", at: 2)
        XCTAssertEqual(list.toArray(), ["Lara","Nik","Tina","Mike"])
    }
    
    func test_insert_after_last() {
        let list = LinkedList()
        list.append("Lara")
        list.append("Nik")
        list.append("Mike")
        
        list.insert("Tina", at: 3)
        XCTAssertEqual(list.toArray(), ["Lara","Nik","Mike","Tina"])
    }
    
    func test_insert_out_of_bounds() {
        let list = LinkedList()
        list.append("Lara")
        list.append("Nik")
        list.append("Mike")
        
        list.insert("Tina", at: 6)
        XCTAssertEqual(list.toArray(), ["Lara","Nik","Mike"])
    }
    
    func test_insert_at_0() {
        let list = LinkedList()
        
        list.insert("Tina", at: 0)
        XCTAssertEqual(list.toArray(), ["Tina"])
        
        list.insert("Tina2", at: 0)
        XCTAssertEqual(list.toArray(), ["Tina2","Tina"])
    }
    
    func test_insert_in_the_middle() {
        let list = LinkedList()
        list.append("Lara")
        list.append("Nik")
        list.append("Mike")
        
        list.insert("Tina", at: 1)
        XCTAssertEqual(list.toArray(), ["Lara","Tina","Nik","Mike"])
    }
}
