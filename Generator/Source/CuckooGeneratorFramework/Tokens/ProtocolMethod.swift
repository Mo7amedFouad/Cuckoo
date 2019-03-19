//
//  ProtocolMethod.swift
//  CuckooGenerator
//
//  Created by Filip Dolnik on 30.05.16.
//  Copyright © 2016 Brightify. All rights reserved.
//

public struct ProtocolMethod: Method {
    public var name: String
    public var accessibility: Accessibility
    public var returnType: WrappableType
    public var returnSignature: String
    public var range: CountableRange<Int>
    public var nameRange: CountableRange<Int>
    public var parameters: [MethodParameter]
    public var attributes: [Attribute]
    
    public var isOptional: Bool {
        return attributes.map { $0.kind }.contains(.optional)
    }
    public var isOverriding: Bool {
        return false
    }
}
