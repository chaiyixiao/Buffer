//
//  AdapterType.swift
//  Buffer
//
//  Created by Alex Usbergo on 24/05/16.
//  Copyright © 2016 Alex Usbergo. All rights reserved.
//


import Foundation

public protocol AdapterType {
    
    associatedtype Type
    associatedtype ViewType
    
    ///Returns the element currently on the front buffer at the given index path.
    func displayedElementAtIndex(index: Int) -> Type
    
    ///The total number of elements currently displayed.
    func countDisplayedElements() -> Int
    
    ///Replace the elements buffer and compute the diffs.
    /// - parameter newValues: The new values.
    /// - parameter synchronous: Wether the filter, sorting and diff should be executed synchronously or not.
    /// - parameter completion: Code that will be executed once the buffer is updated.
    func update(newValues: [Type]?, synchronous: Bool, completion: ((Void) -> Void)?)
    
    ///The section index associated with this adapter.
    var sectionIndex: Int { get set }
    
    ///The target view.
    var view: ViewType? { get }
    
    init(buffer: BufferType, view: ViewType)
    init(initialElements: [Type], view: ViewType)
}




