//
//  ItemComponent.swift
//  TtouchIsland
//
//  Created by 김현기 on 7/18/25.
//  Copyright © 2025 Graphicana. All rights reserved.
//

import RealityKit

struct ItemComponent: Component {
    enum ItemType {
        case newspaper
        case backpack
        case cheese
        case bottle
        case flashlight
        case mapCompass
    }

    var type: ItemType
    var maxDistance: Float = 1.5
    var targetEntity: Entity?

    var isCollected: Bool = false

    public init(type: ItemType, targetEntity: Entity? = nil) {
        self.type = type
        self.targetEntity = targetEntity

        Task {
            await ItemSystem.registerSystem()
            print("⚙️ ItemSystem Registered with type: \(type)")
        }
    }
}
