//
//  WSTag.swift
//  Whitesmith
//
//  Created by Ricardo Pereira on 12/05/16.
//  Copyright © 2016 Whitesmith. All rights reserved.
//

import Foundation

public struct WSTag: Hashable {

    public let id: UInt64
    public let text: String
    public let image: UIImage?

    public init(id: UInt64, text: String, image: UIImage? = nil) {
        self.id = id
        self.text = text
        self.image = image
    }

    public var hashValue: Int {
        return self.id.hashValue
    }

    public func equals(_ other: WSTag) -> Bool {
        return self.id == other.id
    }

}

public func == (lhs: WSTag, rhs: WSTag) -> Bool {
    return lhs.equals(rhs)
}
