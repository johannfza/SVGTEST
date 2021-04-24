//
//  Multiavatar+Themes.swift
//  SVG Experiment
//
//  Created by Johann Fong  on 18/4/21.
//

import Foundation

public extension Multiavatar {
    struct Themes {
        public var _00: ThemeClass!
//        let _01: ThemeClass
//        let _02: ThemeClass
//        let _03: ThemeClass
//        let _04: ThemeClass
//        let _05: ThemeClass
//        let _06: ThemeClass
//        let _07: ThemeClass
//        let _08: ThemeClass
//        let _09: ThemeClass
//        let _10: ThemeClass
//        let _11: ThemeClass
//        let _12: ThemeClass
//        let _13: ThemeClass
//        let _14: ThemeClass
//        let _15: ThemeClass
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
        public var _00: SPConfig! = SPConfig()
//        let _01: ThemeConfig
//        let _02: ThemeConfig
//        let _03: ThemeConfig
//        let _04: ThemeConfig
//        let _05: ThemeConfig
//        let _06: ThemeConfig
//        let _07: ThemeConfig
//        let _08: ThemeConfig
//        let _09: ThemeConfig
//        let _10: ThemeConfig
//        let _11: ThemeConfig
//        let _12: ThemeConfig
//        let _13: ThemeConfig
//        let _14: ThemeConfig
//        let _15: ThemeConfig
    }
}
