//
//  MultiAvatar.swift
//  SVG Experiment
//
//  Created by Johann Fong  on 18/4/21.
//

import Foundation

public class Multiavatar {
    func multiavatar(string _: String, sansEnv _: String, ver _: String) -> String {
        // '<svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 231 231">'
        var svgStart = "<svg xmlns=\"http://www.w3.org/2000/svg\" viewBox=\"0 0 231 231\">"
        var svgEnd = "</svg>"

        // Optimization
        var env = "<path d=\"M33.83,33.83a115.5,115.5,0,1,1,0,163.34,115.49,115.49,0,0,1,0-163.34Z\" style=\"fill:#01;\"/>"
        var head = "<path d=\"m115.5 51.75a63.75 63.75 0 0 0-10.5 126.63v14.09a115.5 115.5 0 0 0-53.729 19.027 115.5 115.5 0 0 0 128.46 0 115.5 115.5 0 0 0-53.729-19.029v-14.084a63.75 63.75 0 0 0 53.25-62.881 63.75 63.75 0 0 0-63.65-63.75 63.75 63.75 0 0 0-0.09961 0z\" style=\"fill:#000;\"/>"
        var str = "stroke-linecap:round;stroke-linejoin:round;stroke-width:"

        var sP = SP()
        sP._00.env = env
        sP._00.clo = "<path d=\"m141.74 195a114.93 114.93 0 0 1 37.912 16.45l0.07 0.05c-1.17 0.79-2.3601 1.55-3.5601 2.29a115.55 115.55 0 0 1-120.95 0.21q-2.0001-1.23-4.0002-2.54a114.79 114.79 0 0 1 38.002-16.5 116.21 116.21 0 0 1 15.791-2.49v-14.57c1.32 0.22 2.6501 0.39 4.0002 0.51 2.0001 0.19 4.0002 0.28 6.1202 0.29a64.333 64.33 0 0 0 8.8804-0.62c0.67003-0.09 1.3401-0.2 2.0001-0.31v14.69a118 118 0 0 1 15.741 2.54z\" style=\"fill:#fff;\"/><path d=\"m79.292 212a3.4601 3.46 0 0 0 3.8902 5.07 3.3801 3.38 0 0 0 2.1001-1.61 3.4701 3.47 0 0 0-1.2801-4.72 3.4201 3.42 0 0 0-2.6201-0.34 3.5101 3.51 0 0 0-2.0901 1.6zm60.122 0.46a3.4901 3.49 0 0 0 1.21 4.7h0.06a3.4601 3.46 0 0 0 4.7202-1.27l0.07-0.13a3.4601 3.46 0 0 0-1.34-4.6 3.4601 3.46 0 0 0-2.5801-0.32 3.5301 3.53 0 0 0-2.1001 1.61zm9.8004 5.7 5.8602 5.87c-1.39 0.5-2.7901 1-4.2102 1.44l-4.4802-4.47a7.5203 7.52 0 0 1-1.9401 0.81 7.8303 7.83 0 0 1-6.0002-0.79 7.8703 7.87 0 0 1-2.9201-10.69v-0.07a7.8903 7.89 0 0 1 10.77-2.88l0.12 0.07a7.8603 7.86 0 0 1 2.7901 10.62v0.07zm-37.701-2.36-9.5004 9.51v4.9c-1.35-0.16-2.6801-0.33-4.0002-0.54v-6l0.58002-0.58 10.1-10.09a7.8703 7.87 0 1 1 2.8401 2.86zm7.3203-5.91a3.4601 3.46 0 1 0-1.6101 2.1 3.3801 3.38 0 0 0 1.6101-2.1zm-29.741 7.82 3.0901 3.1 0.59002 0.59v7.36c-1.3401-0.26-2.6801-0.55-4.0002-0.87v-4.84l-2.5101-2.51a7.5203 7.52 0 0 1-1.9401 0.81 7.8803 7.88 0 1 1 1.9101-14.43 7.8703 7.87 0 0 1 2.8901 10.75z\" style=\"fill:#1a1a1a;\"/>"
        sP._00.head = head
        sP._00.mouth = "<path d=\"m94.19 136.84h42.632a3.7801 3.78 0 0 1 3.7802 3.78v3.22a15.231 15.23 0 0 1-15.211 15.16h-19.781a15.251 15.25 0 0 1-15.221-15.16v-3.22a3.8002 3.8 0 0 1 3.7802-3.78z\" style=\"fill:#fff;" + str + "3px;stroke:#1a1a1a;\"/><path d=\"m130.96 136.84v21.16m-30.911-21.16v21.16m10.34-21.16v22.16m10.31-22.2v22.2\" style=\"fill:none;" + str + "3px;stroke:#1a1a1a;\"/>"
        sP._00.eyes = "<path d=\"m83.739 83.92h63.533a19.101 19.1 0 0 1 19.051 19 19.111 19.11 0 0 1-19.051 19h-63.533a19.091 19.09 0 0 1-19.001-19 19.091 19.09 0 0 1 19.001-19z\" style=\"fill:#1a1a1a;\"/><path d=\"m140.23 93.54a9.3804 9.38 0 1 0 9.3804 9.38 9.3804 9.38 0 0 0-9.3804-9.38zm-49.402 0a9.3804 9.38 0 1 0 9.3804 9.38 9.3904 9.39 0 0 0-9.3804-9.38z\" style=\"fill:#e6e7e8;\"/><rect x=\"79.795\" y=\"98.627\" width=\"71.471\" height=\"8.5859\" ry=\"4.2929\" style=\"fill:#b3b3b3;\"/>"
        sP._00.top = "<path d=\"m32.902 67.662c-0.36295 1.7227-6.2342 30.695 5.6133 52.596 4.5843 8.4743 9.0081 13.239 12.75 15.893a67.7 67.7 0 0 1-3.4688-21.35 67.7 67.7 0 0 1 2.332-17.658c-4.4914-2.4646-10.868-6.9012-13.834-13.52-4.1626-9.285-3.6155-14.673-3.3926-15.961zm165.19 0c0.22292 1.2882 0.77005 6.6759-3.3926 15.961-2.9664 6.6183-9.3426 11.055-13.834 13.52a67.7 67.7 0 0 1 2.332 17.658 67.7 67.7 0 0 1-3.4688 21.35c3.7419-2.6532 8.1657-7.4183 12.75-15.893 11.847-21.9 5.9762-50.873 5.6133-52.596z\" style=\"fill:#fff;\"/><path d=\"m115.73 13.191c-7.3787-0.13351-13.509 5.7888-13.631 13.168-0.10128 5.8827 3.4508 10.518 8.0566 12.52 1.061 0.46115 2.1869 0.78009 3.3418 0.95703v8.4291c0.66778-0.02035 1.3358-0.03077 2.0039-0.03125 0.66547-9e-5 1.3309 0.0097 1.9961 0.0293v-8.4115c2.6002-0.38406 5.1586-1.5484 7.3086-3.625 4.2322-4.0878 4.9991-9.8755 3.1582-14.549-1.8407-4.6726-6.3502-8.3834-12.232-8.4863z\" style=\"fill:#fff;\"/>"
        print("\(svgStart)\(sP._00.env!)\(sP._00.head!)\(sP._00.clo!)\(sP._00.top!)\(sP._00.eyes!)\(sP._00.mouth!)\(svgEnd)")

        return "\(svgStart)\(sP._00.env!)\(sP._00.head!)\(sP._00.clo!)\(sP._00.top!)\(sP._00.eyes!)\(sP._00.mouth!)\(svgEnd)"
    }

    // Copy from multi avatar
    let themes: Themes = {
        // Robo
        let themeConfig_00_A = ThemeConfig(
            env: ["#ff2f2b"],
            clo: ["#fff", "#000"],
            head: ["#fff"],
            mouth: ["#fff", "#000", "#000"],
            eyes: ["#000", "none", "#00FFFF"],
            top: ["#fff", "#fff"]
        )
        let themeConfig_00_B = ThemeConfig(
            env: ["#ff2f2b"],
            clo: ["#fff", "#000"],
            head: ["#fff"],
            mouth: ["#fff", "#000", "#000"],
            eyes: ["#000", "none", "#00FFFF"],
            top: ["#fff", "#fff"]
        )
        let themeConfig_00_C = ThemeConfig(
            env: ["#ff2f2b"],
            clo: ["#fff", "#000"],
            head: ["#fff"],
            mouth: ["#fff", "#000", "#000"],
            eyes: ["#000", "none", "#00FFFF"],
            top: ["#fff", "#fff"]
        )
        let themeClass_00 = ThemeClass(
            A: themeConfig_00_A,
            B: themeConfig_00_B,
            C: themeConfig_00_C
        )
        // Girl
        let themeConfig_01_A = ThemeConfig(
            env: ["#a50000"],
            clo: ["#f06", "#8e0039"],
            head: ["#85492C"],
            mouth: ["#000"],
            eyes: ["#000", "#ff9809"],
            top: ["#ff9809", "#ff9809", "none", "none"]
        )
        let themeConfig_01_B = ThemeConfig(
            env: ["#40E83B"],
            clo: ["#00650b", "#62ce5a"],
            head: ["#f7c1a6"],
            mouth: ["#6e1c1c"],
            eyes: ["#000", "#ff833b"],
            top: ["#67FFCC", "none", "none", "#ecff3b"]
        )
        let themeConfig_01_C = ThemeConfig(
            env: ["#ff2c2c"],
            clo: ["#fff", "#000"],
            head: ["#ffce8b"],
            mouth: ["#000"],
            eyes: ["#000", "#0072ff"],
            top: ["#ff9809", "none", "#ffc809", "none"]
        )
        let themeClass_01 = ThemeClass(
            A: themeConfig_01_A,
            B: themeConfig_01_B,
            C: themeConfig_01_C
        )
        // Blonde
        let themeConfig_02_A = ThemeConfig(
            env: ["#ff7520"],
            clo: ["#d12823"],
            head: ["#fee3c5"],
            mouth: ["#d12823"],
            eyes: ["#000", "none"],
            top: ["#000", "none", "none", "#FFCC00", "red"]
        )
        let themeConfig_02_B = ThemeConfig(
            env: ["#ff9700"],
            clo: ["#000"],
            head: ["#d2ad6d"],
            mouth: ["#000"],
            eyes: ["#000", "#00ffdc"],
            top: ["#fdff00", "#fdff00", "none", "none", "none"]
        )
        let themeConfig_02_C = ThemeConfig(
            env: ["#26a7ff"],
            clo: ["#d85cd7"],
            head: ["#542e02"],
            mouth: ["#f70014"],
            eyes: ["#000", "magenta"],
            top: ["#FFCC00", "#FFCC00", "#FFCC00", "#ff0000", "yellow"]
        )
        let themeClass_02 = ThemeClass(
            A: themeConfig_02_A,
            B: themeConfig_02_B,
            C: themeConfig_02_C
        )
        // Evilnormie
        let themeConfig_03_A = ThemeConfig(
            env: ["#6FC30E"],
            clo: ["#b4e1fa", "#5b5d6e", "#515262", "#a0d2f0", "#a0d2f0"],
            head: ["#fae3b9"],
            mouth: ["#fff", "#000"],
            eyes: ["#000"],
            top: ["#8eff45", "#8eff45", "none", "none"]
        )
        let themeConfig_03_B = ThemeConfig(
            env: ["#00a58c"],
            clo: ["#000", "none", "none", "none", "none"],
            head: ["#FAD2B9"],
            mouth: ["#fff", "#000"],
            eyes: ["#000"],
            top: ["#FFC600", "none", "#FFC600", "none"]
        )
        let themeConfig_03_C = ThemeConfig(
            env: ["#ff501f"],
            clo: ["#000", "#ff0000", "#ff0000", "#7d7d7d", "#7d7d7d"],
            head: ["#fff3dc"],
            mouth: ["#d2001b", "none"],
            eyes: ["#000"],
            top: ["#D2001B", "none", "none", "#D2001B"]
        )
        let themeClass_03 = ThemeClass(
            A: themeConfig_03_A,
            B: themeConfig_03_B,
            C: themeConfig_03_C
        )
        // Country
        let themeConfig_04_A = ThemeConfig(
            env: ["#fc0"],
            clo: ["#901e0e", "#ffbe1e", "#ffbe1e", "#c55f54"],
            head: ["#f8d9ad"],
            mouth: ["#000", "none", "#000", "none"],
            eyes: ["#000"],
            top: ["#583D00", "#AF892E", "#462D00", "#a0a0a0"]
        )
        let themeConfig_04_B = ThemeConfig(
            env: ["#386465"],
            clo: ["#fff", "#333", "#333", "#333"],
            head: ["#FFD79D"],
            mouth: ["#000", "#000", "#000", "#000"],
            eyes: ["#000"],
            top: ["#27363C", "#5DCAD4", "#314652", "#333"]
        )
        let themeConfig_04_C = ThemeConfig(
            env: ["#DFFF00"],
            clo: ["#304267", "#aab0b1", "#aab0b1", "#aab0b1"],
            head: ["#e6b876"],
            mouth: ["#50230a", "#50230a", "#50230a", "#50230a"],
            eyes: ["#000"],
            top: ["#333", "#afafaf", "#222", "#6d3a1d"]
        )
        let themeClass_04 = ThemeClass(
            A: themeConfig_04_A,
            B: themeConfig_04_B,
            C: themeConfig_04_C
        )
        // Johnyold
        let themeConfig_05_A = ThemeConfig(
            env: ["#a09300"],
            clo: ["#c7d4e2", "#435363", "#435363", "#141720", "#141720", "#e7ecf2", "#e7ecf2"],
            head: ["#f5d4a6"],
            mouth: ["#000", "#cf9f76"],
            eyes: ["#000", "#000", "#000", "#000", "#000", "#000", "#fff", "#fff", "#fff", "#fff", "#000", "#000"],
            top: ["none", "#fdff00"]
        )
        let themeConfig_05_B = ThemeConfig(
            env: ["#b3003e"],
            clo: ["#000", "#435363", "#435363", "#000", "none", "#e7ecf2", "#e7ecf2"],
            head: ["#f5d4a6"],
            mouth: ["#000", "#af9f94"],
            eyes: ["#9ff3ff;opacity:0.96", "#000", "#9ff3ff;opacity:0.96", "#000", "#2f508a", "#000", "#000", "#000", "none", "none", "none", "none"],
            top: ["#ff9a00", "#ff9a00"]
        )
        let themeConfig_05_C = ThemeConfig(
            env: ["#884f00"],
            clo: ["#ff0000", "#fff", "#fff", "#141720", "#141720", "#e7ecf2", "#e7ecf2"],
            head: ["#c57b14"],
            mouth: ["#000", "#cf9f76"],
            eyes: ["none", "#000", "none", "#000", "#5a0000", "#000", "#000", "#000", "none", "none", "none", "none"],
            top: ["#efefef", "none"]
        )
        let themeClass_05 = ThemeClass(
            A: themeConfig_05_A,
            B: themeConfig_05_B,
            C: themeConfig_05_C
        )
        // Asian
        let themeConfig_06_A = ThemeConfig(
            env: ["#8acf00"],
            clo: ["#ee2829", "#ff0"],
            head: ["#ffce73"],
            mouth: ["#fff", "#000"],
            eyes: ["#000"],
            top: ["#000", "#000", "none", "#000", "#ff4e4e", "#000"]
        )
        let themeConfig_06_B = ThemeConfig(
            env: ["#00d2a3"],
            clo: ["#0D0046", "#ffce73"],
            head: ["#ffce73"],
            mouth: ["#000", "none"],
            eyes: ["#000"],
            top: ["#000", "#000", "#000", "none", "#ffb358", "#000", "none", "none"]
        )
        let themeConfig_06_C = ThemeConfig(
            env: ["#ff184e"],
            clo: ["#000", "none"],
            head: ["#ffce73"],
            mouth: ["#ff0000", "none"],
            eyes: ["#000"],
            top: ["none", "none", "none", "none", "none", "#ffc107", "none", "none"]
        )
        let themeClass_06 = ThemeClass(
            A: themeConfig_06_A,
            B: themeConfig_06_B,
            C: themeConfig_06_C
        )
        // Punk
        let themeConfig_07_A = ThemeConfig(
            env: ["#00deae"],
            clo: ["#ff0000"],
            head: ["#ffce94"],
            mouth: ["#f73b6c", "#000"],
            eyes: ["#e91e63", "#000", "#e91e63", "#000", "#000", "#000"],
            top: ["#dd104f", "#dd104f", "#f73b6c", "#dd104f"]
        )
        let themeConfig_07_B = ThemeConfig(
            env: ["#181284"],
            clo: ["#491f49", "#ff9809", "#491f49"],
            head: ["#f6ba97"],
            mouth: ["#ff9809", "#000"],
            eyes: ["#c4ffe4", "#000", "#c4ffe4", "#000", "#000", "#000"],
            top: ["none", "none", "#d6f740", "#516303"]
        )
        let themeConfig_07_C = ThemeConfig(
            env: ["#bcf700"],
            clo: ["#ff14e4", "#000", "#14fffd"],
            head: ["#7b401e"],
            mouth: ["#666", "#000"],
            eyes: ["#00b5b4", "#000", "#00b5b4", "#000", "#000", "#000"],
            top: ["#14fffd", "#14fffd", "#14fffd", "#0d3a62"]
        )
        let themeClass_07 = ThemeClass(
            A: themeConfig_07_A,
            B: themeConfig_07_B,
            C: themeConfig_07_C
        )
        // Afrohair
        let themeConfig_08_A = ThemeConfig(
            env: ["#0df"],
            clo: ["#571e57", "#ff0"],
            head: ["#f2c280"],
            mouth: ["#ff0000"],
            eyes: ["#795548", "#000"],
            top: ["#de3b00", "none"]
        )
        let themeConfig_08_B = ThemeConfig(
            env: ["#B400C2"],
            clo: ["#0D204A", "#00ffdf"],
            head: ["#ca8628"],
            mouth: ["#1a1a1a"],
            eyes: ["#cbbdaf", "#000"],
            top: ["#000", "#000"]
        )
        let themeConfig_08_C = ThemeConfig(
            env: ["#ffe926"],
            clo: ["#00d6af", "#000"],
            head: ["#8c5100"],
            mouth: ["#7d0000"],
            eyes: ["none", "#000"],
            top: ["#f7f7f7", "none"]
        )
        let themeClass_08 = ThemeClass(
            A: themeConfig_08_A,
            B: themeConfig_08_B,
            C: themeConfig_08_C
        )
        // Normie female
        let themeConfig_09_A = ThemeConfig(
            env: ["#4aff0c"],
            clo: ["#101010", "#fff", "#fff"],
            head: ["#dbbc7f"],
            mouth: ["#000"],
            eyes: ["#000", "none", "none"],
            top: ["#531148", "#531148", "#531148", "none"]
        )
        let themeConfig_09_B = ThemeConfig(
            env: ["#FFC107"],
            clo: ["#033c58", "#fff", "#fff"],
            head: ["#dbc97f"],
            mouth: ["#000"],
            eyes: ["none", "#fff", "#000"],
            top: ["#FFEB3B", "#FFEB3B", "none", "#FFEB3B"]
        )
        let themeConfig_09_C = ThemeConfig(
            env: ["#FF9800"],
            clo: ["#b40000", "#fff", "#fff"],
            head: ["#E2AF6B"],
            mouth: ["#000"],
            eyes: ["none", "#fff", "#000"],
            top: ["#ec0000", "#ec0000", "none", "none"]
        )
        let themeClass_09 = ThemeClass(
            A: themeConfig_09_A,
            B: themeConfig_09_B,
            C: themeConfig_09_C
        )
        // Older
        let themeConfig_10_A = ThemeConfig(
            env: ["#104c8c"],
            clo: ["#354B65", "#3D8EBB", "#89D0DA", "#00FFFD"],
            head: ["#cc9a5c"],
            mouth: ["#222", "#fff"],
            eyes: ["#000", "#000"],
            top: ["#fff", "#fff", "none"]
        )
        let themeConfig_10_B = ThemeConfig(
            env: ["#0DC15C"],
            clo: ["#212121", "#fff", "#212121", "#fff"],
            head: ["#dca45f"],
            mouth: ["#111", "#633b1d"],
            eyes: ["#000", "#000"],
            top: ["none", "#792B74", "#792B74"]
        )
        let themeConfig_10_C = ThemeConfig(
            env: ["#ffe500"],
            clo: ["#1e5e80", "#fff", "#1e5e80", "#fff"],
            head: ["#e8bc86"],
            mouth: ["#111", "none"],
            eyes: ["#000", "#000"],
            top: ["none", "none", "#633b1d"]
        )
        let themeClass_10 = ThemeClass(
            A: themeConfig_10_A,
            B: themeConfig_10_B,
            C: themeConfig_10_C
        )
        // Firehair
        let themeConfig_11_A = ThemeConfig(
            env: ["#4a3f73"],
            clo: ["#e6e9ee", "#f1543f", "#ff7058", "#fff", "#fff"],
            head: ["#b27e5b"],
            mouth: ["#191919", "#191919"],
            eyes: ["#000", "#000", "#57FFFD"],
            top: ["#ffc", "#ffc", "#ffc"]
        )
        let themeConfig_11_B = ThemeConfig(
            env: ["#00a08d"],
            clo: ["#FFBA32", "#484848", "#4e4e4e", "#fff", "#fff"],
            head: ["#ab5f2c"],
            mouth: ["#191919", "#191919"],
            eyes: ["#000", "#ff23fa;opacity:0.39", "#000"],
            top: ["#ff90f4", "#ff90f4", "#ff90f4"]
        )
        let themeConfig_11_C = ThemeConfig(
            env: ["#22535d"],
            clo: ["#000", "#ff2500", "#ff2500", "#fff", "#fff"],
            head: ["#a76c44"],
            mouth: ["#191919", "#191919"],
            eyes: ["#000", "none", "#000"],
            top: ["none", "#00efff", "none"]
        )
        let themeClass_11 = ThemeClass(
            A: themeConfig_11_A,
            B: themeConfig_11_B,
            C: themeConfig_11_C
        )
        // Blond
        let themeConfig_12_A = ThemeConfig(
            env: ["#2668DC"],
            clo: ["#2385c6", "#b8d0e0", "#b8d0e0"],
            head: ["#ad8a60"],
            mouth: ["#000", "#4d4d4d"],
            eyes: ["#7fb5a2", "#d1eddf", "#301e19"],
            top: ["#fff510", "#fff510"]
        )
        let themeConfig_12_B = ThemeConfig(
            env: ["#643869"],
            clo: ["#D67D1B", "#b8d0e0", "#b8d0e0"],
            head: ["#CC985A", "none0000"],
            mouth: ["#000", "#ececec"],
            eyes: ["#1f2644", "#9b97ce", "#301e19"],
            top: ["#00eaff", "none"]
        )
        let themeConfig_12_C = ThemeConfig(
            env: ["#F599FF"],
            clo: ["#2823C6", "#b8d0e0", "#b8d0e0"],
            head: ["#C7873A"],
            mouth: ["#000", "#4d4d4d"],
            eyes: ["#581b1b", "#FF8B8B", "#000"],
            top: ["none", "#9c0092"]
        )
        let themeClass_12 = ThemeClass(
            A: themeConfig_12_A,
            B: themeConfig_12_B,
            C: themeConfig_12_C
        )
        // Ateam
        let themeConfig_13_A = ThemeConfig(
            env: ["#d10084"],
            clo: ["#efedee", "#00a1e0", "#00a1e0", "#efedee", "#ffce1c"],
            head: ["#b35f49"],
            mouth: ["#3a484a", "#000"],
            eyes: ["#000"],
            top: ["#000", "none", "#000", "none"]
        )
        let themeConfig_13_B = ThemeConfig(
            env: ["#E6C117"],
            clo: ["#efedee", "#ec0033", "#ec0033", "#efedee", "#f2ff05"],
            head: ["#ffc016"],
            mouth: ["#4a3737", "#000"],
            eyes: ["#000"],
            top: ["#ffe900", "#ffe900", "none", "#ffe900"]
        )
        let themeConfig_13_C = ThemeConfig(
            env: ["#1d8c00"],
            clo: ["#e000cb", "#fff", "#fff", "#e000cb", "#ffce1c"],
            head: ["#b96438"],
            mouth: ["#000", "#000"],
            eyes: ["#000"],
            top: ["#53ffff", "#53ffff", "none", "none"]
        )
        let themeClass_13 = ThemeClass(
            A: themeConfig_13_A,
            B: themeConfig_13_B,
            C: themeConfig_13_C
        )
        // Rasta
        let themeConfig_14_A = ThemeConfig(
            env: ["#fc0065"],
            clo: ["#708913", "#fdea14", "#708913", "#fdea14", "#708913"],
            head: ["#DEA561"],
            mouth: ["#444", "#000"],
            eyes: ["#000"],
            top: ["#32393f", "#32393f", "#32393f", "#32393f", "#32393f", "#32393f", "#32393f", "#32393f", "#32393f", "#32393f", "#32393f", "#32393f", "#32393f", "#32393f", "#32393f", "#32393f", "#32393f"]
        )
        let themeConfig_14_B = ThemeConfig(
            env: ["#81f72e"],
            clo: ["#ff0000", "#ffc107", "#ff0000", "#ffc107", "#ff0000"],
            head: ["#ef9831"],
            mouth: ["#6b0000", "#000"],
            eyes: ["#000"],
            top: ["#FFFAAD", "#FFFAAD", "#FFFAAD", "#FFFAAD", "#FFFAAD", "#FFFAAD", "#FFFAAD", "#FFFAAD", "#FFFAAD", "#FFFAAD", "#FFFAAD", "#FFFAAD", "#FFFAAD", "none", "none", "none", "none"]
        )
        let themeConfig_14_C = ThemeConfig(
            env: ["#00D872"],
            clo: ["#590D00", "#FD1336", "#590D00", "#FD1336", "#590D00"],
            head: ["#c36c00"],
            mouth: ["#56442b", "#000"],
            eyes: ["#000"],
            top: ["#004E4C", "#004E4C", "#004E4C", "#004E4C", "#004E4C", "#004E4C", "#004E4C", "#004E4C", "#004E4C", "none", "none", "none", "none", "none", "none", "none", "none"]
        )
        let themeClass_14 = ThemeClass(
            A: themeConfig_14_A,
            B: themeConfig_14_B,
            C: themeConfig_14_C
        )
        // Meta
        let themeConfig_15_A = ThemeConfig(
            env: ["#111"],
            clo: ["#000", "#00FFFF"],
            head: ["#755227"],
            mouth: ["#fff", "#000"],
            eyes: ["black", "#008;opacity:0.67", "aqua"],
            top: ["#fff", "#fff", "#fff", "#fff", "#fff"]
        )
        let themeConfig_15_B = ThemeConfig(
            env: ["#00D0D4"],
            clo: ["#000", "#fff"],
            head: ["#755227"],
            mouth: ["#fff", "#000"],
            eyes: ["black", "#1df7ff;opacity:0.64", "#fcff2c"],
            top: ["#fff539", "none", "#fff539", "none", "#fff539"]
        )
        let themeConfig_15_C = ThemeConfig(
            env: ["#DC75FF"],
            clo: ["#000", "#FFBDEC"],
            head: ["#997549"],
            mouth: ["#fff", "#000"],
            eyes: ["black", "black", "aqua"],
            top: ["#00fffd", "none", "none", "none", "none"]
        )
        let themeClass_15 = ThemeClass(
            A: themeConfig_15_A,
            B: themeConfig_15_B,
            C: themeConfig_15_C
        )

        let themes = Themes(
            _00: themeClass_00,
            _01: themeClass_01,
            _02: themeClass_02,
            _03: themeClass_03,
            _04: themeClass_04,
            _05: themeClass_05,
            _06: themeClass_06,
            _07: themeClass_07,
            _08: themeClass_08,
            _09: themeClass_09,
            _10: themeClass_10,
            _11: themeClass_11,
            _12: themeClass_12,
            _13: themeClass_13,
            _14: themeClass_14,
            _15: themeClass_15
        )
        return themes
    }()
}
