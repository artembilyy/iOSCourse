//
//  Protocols.swift
//  Tower Defense
//
//  Created by Artem Bilyi on 13.08.2022.
//


protocol TowerLevel1 {
    var name: String { get set }
    var power: Int { get set }
    
    func attack()
}

protocol TowerLevel2: TowerLevel1 {
    func heal()
    func armorUp()
    
}

protocol TowerLevel3: TowerLevel2 {
    func freeze() -> Int
    func fire() -> Int
}

protocol TowersAbilities {
    var towers: [TowerLevel1] { get set }
    
    func godPower() -> Int
}

extension TowerLevel1 {
    var name: String { return "Base Level Tower" }
    var power: Int { return 1 }
    func attack() {
        print("Tower attack enemy")
    }
}

extension TowerLevel2 {
    var name: String { return "Medium Level Tower" }
    var power: Int { return 2 }
    func heal() {
        print("Tower is healing now")
    }
    func armorUp() {
        print("Tower armor increased")
    }
}

extension TowerLevel3 {
    var name: String { return "Top Level Tower" }
    var power: Int { return 3 }
    func freeze() {
        print("Tower is freezed enemy")
    }
    func fire() {
        print("Tower is fired enemy")
    }
}
