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
        let themes = Themes(_00: themeClass_00)
        return themes
    }()
}
