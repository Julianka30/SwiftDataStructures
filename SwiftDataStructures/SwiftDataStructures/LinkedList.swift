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
            count += 1
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
        var it: Node? = head
        var ifContains = false
        while it != nil {
            if it!.value == value {
                ifContains = true
                break
            } else {
                it = it!.next
            }
         }
        return ifContains
    }
    
    public func insert(_ value: String, at index: Int) {
        let node = Node(value: value)
        var it: Node? = head
        var prev: Node? = nil
        var currentIndex = 0
        while it != nil {
            if currentIndex == index {
                prev?.next = node
                node.next = it
                if prev == nil { //добавляем в 0
                    self.head = node // head переходит на новый эл
                }
            } else {
                prev = it  // prev передвигается вместе с it
            }
            it = it!.next
            currentIndex += 1
        }
        if index == currentIndex {
            if head == nil {
                head = node
            }
            tail?.next = node
            tail = node
        }
    }
    
    public func remove(_ value: String) {
        var it: Node? = head
        var prev: Node? = nil
        while it != nil {
            if it!.value == value {
                if prev == nil {
                    self.head = it!.next
                }
                if it!.next == nil {
                    self.tail = prev
                }
                prev?.next = it!.next
            } else {
                prev = it
            }
            it = it!.next
        }
    }
        
    public func remove(at index: Int) {
        var it: Node? = head
        var prev: Node? = nil
        var currentIndex = 0
        while it != nil {
            if currentIndex == index {
                if prev == nil { //удаляется первый элемент
                    self.head = it!.next // head переходит на след эл
                }
                if it!.next == nil {
                    self.tail = prev
                }
                prev?.next = it!.next // предыдущий эл ссылается на след после удаляемого
            } else {
                prev = it  // если эл не удаляли, то prev передвигается вместе с it
            }
            it = it!.next
            currentIndex += 1
        }
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
