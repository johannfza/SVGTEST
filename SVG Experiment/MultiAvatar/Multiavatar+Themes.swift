//
//  Multiavatar+Themes.swift
//  SVG Experiment
//
//  Created by Johann Fong  on 18/4/21.
//

import Foundation

public extension Multiavatar {
    struct Themes {
        public var _00: ThemeClass
        public var _01: ThemeClass
        public var _02: ThemeClass
        public var _03: ThemeClass
        public var _04: ThemeClass
        public var _05: ThemeClass
        public var _06: ThemeClass
        public var _07: ThemeClass
        public var _08: ThemeClass
        public var _09: ThemeClass
        public var _10: ThemeClass
        public var _11: ThemeClass
        public var _12: ThemeClass
        public var _13: ThemeClass
        public var _14: ThemeClass
        public var _15: ThemeClass
    }

    struct ThemeClass {
        public var A: ThemeConfig!
        public var B: ThemeConfig!
        public var C: ThemeConfig!
    }

    struct ThemeConfig {
        public var env: [String]
        public var clo: [String]
        public var head: [String]
        public var mouth: [String]
        public var eyes: [String]
        public var top: [String]
    }

    struct SPConfig {
        public var env: String! = ""
        public var clo: String! = ""
        public var head: String! = ""
        public var mouth: String! = ""
        public var eyes: String! = ""
        public var top: String! = ""
    }

    struct SP {
        public var _00 = SPConfig()
        public var _01 = SPConfig()
        public var _02 = SPConfig()
        public var _03 = SPConfig()
        public var _04 = SPConfig()
        public var _05 = SPConfig()
        public var _06 = SPConfig()
        public var _07 = SPConfig()
        public var _08 = SPConfig()
        public var _09 = SPConfig()
        public var _10 = SPConfig()
        public var _11 = SPConfig()
        public var _12 = SPConfig()
        public var _13 = SPConfig()
        public var _14 = SPConfig()
        public var _15 = SPConfig()
    }
}
