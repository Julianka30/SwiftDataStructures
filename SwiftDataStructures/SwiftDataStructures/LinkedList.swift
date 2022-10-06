//
//  LinkedList.swift
//  SwiftDataStructures
//
//  Created by Julia on 10/4/22.
//

import Foundation
public class LinkedList {
    private class Node {
        var value: String
        var next: Node?
        
        init(value: String, next: Node? = nil) {
            self.value = value
            self.next = next
        }
    }
    
    private var head: Node?
    private var tail: Node?
    
    public init() {}
    
    public var count: Int {
        guard head != nil else { return 0 }
        var count = 0
        var current = head
        while current != nil {
            count+=1
            current = current!.next
        }
        return count
    }
    
    public func append(_ element: String ) {
        let node = Node(value: element)
        
        tail?.next = node
        tail = node
        
        if head == nil {
            head = node
        }
    }
    
    public func contains(_ value: String) -> Bool {
        return true
    }
    
    public func insert(_ value: String, at index: Int) {
        
    }
    
    public func remove(_ value: String) {
        
    }
        
    public func remove(at index: Int) {
        
    }
    
    public func toArray() -> [String] {
        var iterator = head
        var array:[String] = []
        
        while iterator != nil {
            array.append(iterator!.value)
            iterator = iterator!.next
        }
        return array
    }
       
}
