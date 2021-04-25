//
//  ViewController.swift
//  SVG Experiment
//
//  Created by Johann Fong  on 17/4/21.
//

import Foundation
import UIKit
import WebKit

class ViewController: UIViewController, WKUIDelegate {
    let multiavatar = Multiavatar()

    var toggle: Bool = true

    let stackView: UIStackView = {
        let view = UIStackView()
        view.translatesAutoresizingMaskIntoConstraints = false
        view.distribution = .equalCentering
        view.axis = .vertical
        view.backgroundColor = .white
        view.spacing = 5
        view.setPadding(16)
        return view
    }()

    var button: UIButton = {
        let button = UIButton()
        button.setTitle("Toggle SVG", for: .normal)
        button.backgroundColor = .lightGray
        button.layer.cornerRadius = 5
        button.contentEdgeInsets = UIEdgeInsets(top: 8, left: 8, bottom: 8, right: 8)
        button.addTarget(self, action: #selector(toggleSVG(_:)), for: .touchUpInside)

        return button
    }()

    var createAvatarButton: UIButton = {
        let button = UIButton()
        button.setTitle("Create Avatar J", for: .normal)
        button.backgroundColor = .lightGray
        button.layer.cornerRadius = 5
        button.contentEdgeInsets = UIEdgeInsets(top: 8, left: 8, bottom: 8, right: 8)
        button.addTarget(self, action: #selector(createAvatar(_:)), for: .touchUpInside)

        return button
    }()

    var createRandomAvatarButton: UIButton = {
        let button = UIButton()
        button.setTitle("Create Random Avatar", for: .normal)
        button.backgroundColor = .lightGray
        button.layer.cornerRadius = 5
        button.contentEdgeInsets = UIEdgeInsets(top: 8, left: 8, bottom: 8, right: 8)
        button.addTarget(self, action: #selector(createRandomAvatar(_:)), for: .touchUpInside)
        return button
    }()

    var label: UILabel = {
        let label = UILabel()
        label.text = "MultiAvatar"
        label.textColor = .black
        return label
    }()

    var avatarName: UILabel = {
        let x: CGFloat = 0
        let y: CGFloat = 0
        let height: CGFloat = 50
        let label = UILabel(frame: CGRect(x: x, y: y, width: UIScreen.main.bounds.width, height: height))
        label.textAlignment = .center
        label.translatesAutoresizingMaskIntoConstraints = false
        label.font = label.font.withSize(32)
        label.textColor = .black
        label.text = "MultiAvatar"
        return label
    }()

    let webView: WKWebView = {
        let mySVGImage = "<svg height=\"190\"><polygon points=\"100,10 40,180 190,60 10,60 160,180\" style=\"fill:lime;stroke:purple;stroke-width:5;fill-rule:evenodd;\"></svg>"

        let preferences = WKPreferences()
//        preferences.javaScriptEnabled = false
        let configuration = WKWebViewConfiguration()
        let wv = WKWebView(frame: CGRect(x: 0, y: 0, width: 200, height: 200), configuration: configuration)
        wv.scrollView.isScrollEnabled = false
        wv.translatesAutoresizingMaskIntoConstraints = false
        wv.loadHTMLString(mySVGImage, baseURL: nil)

        return wv
    }()

    @IBAction func toggleSVG(_: Any) {
        let data = toggle ? getSVGString2() : getSVGString()
        webView.loadHTMLString(data, baseURL: nil)
        toggle = !toggle
    }

    @IBAction func createAvatar(_: Any) {
        avatarName.text = "J"
        avatarName.font = avatarName.font.withSize(32)
        webView.loadHTMLString(multiavatar.multiavatar(string: "J", sansEnv: "", ver: ""), baseURL: nil)
    }

    @IBAction func createRandomAvatar(_: Any) {
        let uuid = UUID().uuidString
        avatarName.text = uuid
        avatarName.font = avatarName.font.withSize(18)
        webView.loadHTMLString(multiavatar.multiavatar(string: uuid, sansEnv: "", ver: ""), baseURL: nil)
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        setup()
    }

    func setup() {
        stackView.addArrangedSubview(label)
        stackView.addArrangedSubview(button)
        stackView.addArrangedSubview(createAvatarButton)
        stackView.addArrangedSubview(createRandomAvatarButton)

        let svgString = getSVGString()
        webView.loadHTMLString(svgString, baseURL: nil)

        view.addSubview(stackView)
        view.addSubview(webView)
        view.addSubview(avatarName)

        stackView.leadingAnchor.constraint(equalTo: view.leadingAnchor).isActive = true
        stackView.trailingAnchor.constraint(equalTo: view.trailingAnchor).isActive = true
        stackView.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor).isActive = true

        NSLayoutConstraint.activate([
            webView.topAnchor
                .constraint(equalTo: stackView.bottomAnchor),
            webView.leadingAnchor
                .constraint(equalTo: view.leadingAnchor),
            webView.trailingAnchor.constraint(equalTo: view.trailingAnchor),
            webView.leadingAnchor
                .constraint(equalTo: view.leadingAnchor),
            webView.trailingAnchor.constraint(equalTo: view.trailingAnchor),
            webView.bottomAnchor.constraint(equalTo: view.bottomAnchor),
            avatarName.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor, constant: -100),
            avatarName.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            avatarName.trailingAnchor.constraint(equalTo: view.trailingAnchor),
            avatarName.centerXAnchor.constraint(equalTo: view.centerXAnchor),

        ])
    }

    func getSVGString() -> String {
        let encodedeSVG = "PHN2ZyB4bWxucz0iaHR0cDovL3d3dy53My5vcmcvMjAwMC9zdmciIHZpZXdCb3g9IjAgMCAyMzEgMjMxIj48cGF0aCBkPSJNMzMuODMsMzMuODNhMTE1LjUsMTE1LjUsMCwxLDEsMCwxNjMuMzQsMTE1LjQ5LDExNS40OSwwLDAsMSwwLTE2My4zNFoiIHN0eWxlPSJmaWxsOiNhMDkzMDA7Ii8+PHBhdGggZD0ibTExNS41IDUxLjc1YTYzLjc1IDYzLjc1IDAgMCAwLTEwLjUgMTI2LjYzdjE0LjA5YTExNS41IDExNS41IDAgMCAwLTUzLjcyOSAxOS4wMjcgMTE1LjUgMTE1LjUgMCAwIDAgMTI4LjQ2IDAgMTE1LjUgMTE1LjUgMCAwIDAtNTMuNzI5LTE5LjAyOXYtMTQuMDg0YTYzLjc1IDYzLjc1IDAgMCAwIDUzLjI1LTYyLjg4MSA2My43NSA2My43NSAwIDAgMC02My42NS02My43NSA2My43NSA2My43NSAwIDAgMC0wLjA5OTYxIDB6IiBzdHlsZT0iZmlsbDojZjJjMjgwOyIvPjxwYXRoIGQ9Im0xNDEuNzUgMTk1YTExNC43OSAxMTQuNzkgMCAwIDEgMzggMTYuNSAxMTUuNTMgMTE1LjUzIDAgMCAxLTEyOC40NiAwIDExNC43OSAxMTQuNzkgMCAwIDEgMzgtMTYuNWwxNS43MSAxNS43NWgyMXoiIHN0eWxlPSJmaWxsOiM5MDFlMGU7Ii8+PHBhdGggZD0ibTExNS40NSAyMTEuMzQtMTAuNTUgMTAuNTRhMi41MSAyLjUxIDAgMCAxLTMuNTU5OSAwIDIgMiAwIDAgMS0wLjI2OTk5LTAuMzA5OTRsLTE4LjQ4LTI1LjQgNS44OTAxLTUuODg5OWEyLjUyIDIuNTIgMCAwIDEgMy41MTk5LTAuMDc5MWwyMy40OSAyMS4xNHoiIHN0eWxlPSJmaWxsOiNmZmJlMWU7Ii8+PHBhdGggZD0ibTExNS40NSAyMTEuMzQgMTAuNTUgMTAuNTRhMi41MSAyLjUxIDAgMCAwIDMuNTU5OSAwIDIgMiAwIDAgMCAwLjI2OTk5LTAuMzA5OTRsMTguNDgtMjUuNC01Ljg5MDEtNS44ODk5YTIuNTIgMi41MiAwIDAgMC0zLjQ2OTktMC4wODlsLTIzLjQ5IDIxLjE0eiIgc3R5bGU9ImZpbGw6I2ZmYmUxZTsiLz48cGF0aCBkPSJtMTU4LjQxIDE5OS41OC0xMC4xMS0zLjI0MDF2MjkuOTNxNS4xNjAxLTEuNTI5OSAxMC4xMS0zLjUxem0tNzUuODIgMjYuNjZ2LTI5LjlsLTEwLjEgMy4yNDAxdjIzLjE0YzMuMjkwMSAxLjMxOTkgNi42NyAyLjQ5OTkgMTAuMSAzLjUxOTl6IiBzdHlsZT0iZmlsbDojYzU1ZjU0OyIvPjxwYXRoIGQ9Im0xMzcuMzggMTEuMTQ4Yy0xMi4yMyAxLjk1OTMtMTguNTExIDE0LjYwNi00My40MzYgOS40OTE1LTExLjI4NS0zLjIwNTQtMTYuNDA2LTMuNTczLTIwLjM4OSAwLjU4NTk0LTQuMTU0OCA0LjMzODQtNy4wMzMgMTIuNDM1LTkuODE4NCAyMS43MDYtMi4xMzU0IDcuNDEzNi0zLjcxODcgMTQuMzgxLTQuNzQ2MSAyMS42NDZoMTEyLjdjLTMuNDg3OC0yNC4yOTMtMTAuODIyLTQzLjI4MS0yNS4xODItNTEuMDYxLTMuNTMxNC0xLjYyMy02LjUyNzQtMi4yOTU5LTkuMTI4OS0yLjM2MTN6IiBzdHlsZT0iZmlsbDojMjczNjNDOyIvPjxwYXRoIGQ9Im0xMTQuMzcgNDMuMzgzYy0xOS40NDUgMC4wODgtMzguNTI0IDIuMDcyNC01Mi4zNzkgNS42OTkyLTEuMjc2NiA0LjU3OTUtMi40MzE3IDEwLjE2OS0zLjIyODUgMTYuODA3aDExMy4xMWMtMC44MzczMS02LjAxMDctMS45MTY0LTExLjY3NC0zLjMxODQtMTYuOTI0LTE1LjIyOS0zLjg4NDItMzQuODczLTUuNjY5My01NC4xOC01LjU4MnoiIHN0eWxlPSJmaWxsOiM1RENBRDQ7Ii8+PHBhdGggZD0ibTExNS41IDU1Ljc3M2MtNTguMzkgMC0xMDUuNzMgMTUuNDc2LTEwNS43MyAzNC41N2gwLjAzMTJjMCAxMS4yOTUgMTYuNDk2IDIxLjMxOSA0Mi4xMjYgMjcuNjI3LTAuMTAzMzEtNy43NzA0IDIuNzg4LTIxLjkwNCA1LjI3MzQtMzEuMDMxIDYuMDkzNS0xLjcxNjggNi45Mjk0LTEuODk3MSAxMy4xNjctMi45OTE5IDE0Ljg3NC0yLjgyNTYgMjkuOTktNC4yMDM3IDQ1LjEzMy00LjExNTMgMTUuMTQzLTAuMDg4NCAzMC4yNTkgMS4yODk3IDQ1LjEzMyA0LjExNTMgNi4yMzcyIDEuMDk0NyA3LjIwNjUgMS4yNzUxIDEzLjMgMi45OTE5IDIuNDg1NCA5LjEyNjcgNS4zNzY4IDIzLjI2IDUuMjczNCAzMS4wMzEgMjUuNjMtNi4zMDgyIDQxLjk5My0xNi4zMzIgNDEuOTkzLTI3LjYyN2gwLjAzMTJjMC0xOS4wOTMtNDcuMzQtMzQuNTctMTA1LjczLTM0LjU3eiIgc3R5bGU9ImZpbGw6IzMxNDY1MjsiLz48cGF0aCBkPSJtNzIuMDg4IDgzLjUzM2MtNi45NzY1IDEuMTE0Ny0xMy4zNTcgMi44NTYtMTguNDM5IDQuMzQ3Ny0xLjE4NjEgNy40MTUtMi4wMDM4IDE4Ljg1OC0xLjg5MjYgMjYuMjkzIDQuMzI3OC0wLjYyNzk1IDEwLjE1NS0xLjM2NDQgMTMuMjk1LTEuNjQ2NS0wLjQwNTU0IDAuMzAxOTggMi43MzQ0LTE3LjgyNyA3LjAzNzEtMjguOTk0em04Ni44MjQgMGM0LjMwMjggMTEuMTY3IDcuNDQyNiAyOS4yOTYgNy4wMzcxIDI4Ljk5NCAzLjEzOTYgMC4yODIxMyA4Ljk2NzEgMS4wMTg1IDEzLjI5NSAxLjY0NjUgMC4xMTExOS03LjQzNTEtMC43MDY1Mi0xOC44NzgtMS44OTI2LTI2LjI5My01LjA4MjItMS40OTE2LTExLjQ2My0zLjIzMjktMTguNDM5LTQuMzQ3N3oiIHN0eWxlPSJmaWxsOiMzMzM7Ii8+PHBhdGggZD0ibTk3LjU2IDEwNy44NGExMC42MyAxMC42MyAwIDAgMS0xNSAwLjEzbC0wLjEzLTAuMTMiIHN0eWxlPSJmaWxsOm5vbmU7c3Ryb2tlLWxpbmVjYXA6cm91bmQ7c3Ryb2tlLWxpbmVqb2luOnJvdW5kO3N0cm9rZS13aWR0aDo2LjNweDtzdHJva2U6IzAwMDsiLz48cGF0aCBkPSJtMTQ4LjU5IDEwNy44NGExMC42MyAxMC42MyAwIDAgMS0xNSAwLjEzbC0wLjEzLTAuMTMiIHN0eWxlPSJmaWxsOm5vbmU7c3Ryb2tlLWxpbmVjYXA6cm91bmQ7c3Ryb2tlLWxpbmVqb2luOnJvdW5kO3N0cm9rZS13aWR0aDo2LjNweDtzdHJva2U6IzAwMDsiLz48cGF0aCBkPSJtMTE1LjUgMTMxYy0xNy43MSAwLjY1LTI3IDkuNDEtMjkuNjEgMjMuNjktMSA1LjYyLTAuNDMgNy4wNiAyLjc2IDcuMTcgMjIuNzYgMC43NiAyMi4yMyAxOC4yMSAyNi44NSAxOC44OSA0LjYyLTAuNjggNC4wOS0xOC4xMyAyNi44NS0xOC44OSAzLjE5LTAuMTEgMy43OS0xLjU1IDIuNzYtNy4xNy0yLjYyLTE0LjI4LTExLjktMjMtMjkuNjEtMjMuNjl6bTAgMjkuMzFjLTEwIDAtMTgtNS0xOC0xMS4xN3M4LjA4LTExLjE3IDE4LTExLjE3IDE4IDUgMTggMTEuMTctOC4wOCAxMS4xNy0xOCAxMS4xN3oiIHN0eWxlPSJmaWxsOiM2YjAwMDA7Ii8+PHBhdGggZD0ibTEyMy41NCAxNDguNDZhMTEuNTMgMTEuNTMgMCAwIDEtMTYuMDkgMCIgc3R5bGU9ImZpbGw6bm9uZTtzdHJva2UtbGluZWNhcDpyb3VuZDtzdHJva2UtbGluZWpvaW46cm91bmQ7c3Ryb2tlLXdpZHRoOjYuNzk5OHB4O3N0cm9rZTojMDAwOyIvPjwvc3ZnPg=="
        let decodedData = Data(base64Encoded: encodedeSVG)!
        let decodedString = String(data: decodedData, encoding: .utf8)!
//        print(decodedString)
        return decodedString
    }

    func getSVGString2() -> String {
        let encodedeSVG = "PHN2ZyB4bWxucz0iaHR0cDovL3d3dy53My5vcmcvMjAwMC9zdmciIHZpZXdCb3g9IjAgMCAyMzEgMjMxIj48cGF0aCBkPSJNMzMuODMsMzMuODNhMTE1LjUsMTE1LjUsMCwxLDEsMCwxNjMuMzQsMTE1LjQ5LDExNS40OSwwLDAsMSwwLTE2My4zNFoiIHN0eWxlPSJmaWxsOiNiY2Y3MDA7Ii8+PHBhdGggZD0ibTExNS41IDUxLjc1YTYzLjc1IDYzLjc1IDAgMCAwLTEwLjUgMTI2LjYzdjE0LjA5YTExNS41IDExNS41IDAgMCAwLTUzLjcyOSAxOS4wMjcgMTE1LjUgMTE1LjUgMCAwIDAgMTI4LjQ2IDAgMTE1LjUgMTE1LjUgMCAwIDAtNTMuNzI5LTE5LjAyOXYtMTQuMDg0YTYzLjc1IDYzLjc1IDAgMCAwIDUzLjI1LTYyLjg4MSA2My43NSA2My43NSAwIDAgMC02My42NS02My43NSA2My43NSA2My43NSAwIDAgMC0wLjA5OTYxIDB6IiBzdHlsZT0iZmlsbDojYTc2YzQ0OyIvPjxwYXRoIGQ9Im0xNDEuNzUgMTk1YTExNC43OSAxMTQuNzkgMCAwIDEgMzggMTYuNSAxMTUuNTMgMTE1LjUzIDAgMCAxLTEyOC40NiAwIDExNC43OSAxMTQuNzkgMCAwIDEgMzgtMTYuNWwxNS43MSAxNS43NWgyMXoiIHN0eWxlPSJmaWxsOiM5MDFlMGU7Ii8+PHBhdGggZD0ibTExNS40NSAyMTEuMzQtMTAuNTUgMTAuNTRhMi41MSAyLjUxIDAgMCAxLTMuNTU5OSAwIDIgMiAwIDAgMS0wLjI2OTk5LTAuMzA5OTRsLTE4LjQ4LTI1LjQgNS44OTAxLTUuODg5OWEyLjUyIDIuNTIgMCAwIDEgMy41MTk5LTAuMDc5MWwyMy40OSAyMS4xNHoiIHN0eWxlPSJmaWxsOiNmZmJlMWU7Ii8+PHBhdGggZD0ibTExNS40NSAyMTEuMzQgMTAuNTUgMTAuNTRhMi41MSAyLjUxIDAgMCAwIDMuNTU5OSAwIDIgMiAwIDAgMCAwLjI2OTk5LTAuMzA5OTRsMTguNDgtMjUuNC01Ljg5MDEtNS44ODk5YTIuNTIgMi41MiAwIDAgMC0zLjQ2OTktMC4wODlsLTIzLjQ5IDIxLjE0eiIgc3R5bGU9ImZpbGw6I2ZmYmUxZTsiLz48cGF0aCBkPSJtMTU4LjQxIDE5OS41OC0xMC4xMS0zLjI0MDF2MjkuOTNxNS4xNjAxLTEuNTI5OSAxMC4xMS0zLjUxem0tNzUuODIgMjYuNjZ2LTI5LjlsLTEwLjEgMy4yNDAxdjIzLjE0YzMuMjkwMSAxLjMxOTkgNi42NyAyLjQ5OTkgMTAuMSAzLjUxOTl6IiBzdHlsZT0iZmlsbDojYzU1ZjU0OyIvPjxwYXRoIGQ9Im0xMzcuMzggMTEuMTQ4Yy0xMi4yMyAxLjk1OTMtMTguNTExIDE0LjYwNi00My40MzYgOS40OTE1LTExLjI4NS0zLjIwNTQtMTYuNDA2LTMuNTczLTIwLjM4OSAwLjU4NTk0LTQuMTU0OCA0LjMzODQtNy4wMzMgMTIuNDM1LTkuODE4NCAyMS43MDYtMi4xMzU0IDcuNDEzNi0zLjcxODcgMTQuMzgxLTQuNzQ2MSAyMS42NDZoMTEyLjdjLTMuNDg3OC0yNC4yOTMtMTAuODIyLTQzLjI4MS0yNS4xODItNTEuMDYxLTMuNTMxNC0xLjYyMy02LjUyNzQtMi4yOTU5LTkuMTI4OS0yLjM2MTN6IiBzdHlsZT0iZmlsbDojNTgzRDAwOyIvPjxwYXRoIGQ9Im0xMTQuMzcgNDMuMzgzYy0xOS40NDUgMC4wODgtMzguNTI0IDIuMDcyNC01Mi4zNzkgNS42OTkyLTEuMjc2NiA0LjU3OTUtMi40MzE3IDEwLjE2OS0zLjIyODUgMTYuODA3aDExMy4xMWMtMC44MzczMS02LjAxMDctMS45MTY0LTExLjY3NC0zLjMxODQtMTYuOTI0LTE1LjIyOS0zLjg4NDItMzQuODczLTUuNjY5My01NC4xOC01LjU4MnoiIHN0eWxlPSJmaWxsOiNBRjg5MkU7Ii8+PHBhdGggZD0ibTExNS41IDU1Ljc3M2MtNTguMzkgMC0xMDUuNzMgMTUuNDc2LTEwNS43MyAzNC41N2gwLjAzMTJjMCAxMS4yOTUgMTYuNDk2IDIxLjMxOSA0Mi4xMjYgMjcuNjI3LTAuMTAzMzEtNy43NzA0IDIuNzg4LTIxLjkwNCA1LjI3MzQtMzEuMDMxIDYuMDkzNS0xLjcxNjggNi45Mjk0LTEuODk3MSAxMy4xNjctMi45OTE5IDE0Ljg3NC0yLjgyNTYgMjkuOTktNC4yMDM3IDQ1LjEzMy00LjExNTMgMTUuMTQzLTAuMDg4NCAzMC4yNTkgMS4yODk3IDQ1LjEzMyA0LjExNTMgNi4yMzcyIDEuMDk0NyA3LjIwNjUgMS4yNzUxIDEzLjMgMi45OTE5IDIuNDg1NCA5LjEyNjcgNS4zNzY4IDIzLjI2IDUuMjczNCAzMS4wMzEgMjUuNjMtNi4zMDgyIDQxLjk5My0xNi4zMzIgNDEuOTkzLTI3LjYyN2gwLjAzMTJjMC0xOS4wOTMtNDcuMzQtMzQuNTctMTA1LjczLTM0LjU3eiIgc3R5bGU9ImZpbGw6IzQ2MkQwMDsiLz48cGF0aCBkPSJtNzIuMDg4IDgzLjUzM2MtNi45NzY1IDEuMTE0Ny0xMy4zNTcgMi44NTYtMTguNDM5IDQuMzQ3Ny0xLjE4NjEgNy40MTUtMi4wMDM4IDE4Ljg1OC0xLjg5MjYgMjYuMjkzIDQuMzI3OC0wLjYyNzk1IDEwLjE1NS0xLjM2NDQgMTMuMjk1LTEuNjQ2NS0wLjQwNTU0IDAuMzAxOTggMi43MzQ0LTE3LjgyNyA3LjAzNzEtMjguOTk0em04Ni44MjQgMGM0LjMwMjggMTEuMTY3IDcuNDQyNiAyOS4yOTYgNy4wMzcxIDI4Ljk5NCAzLjEzOTYgMC4yODIxMyA4Ljk2NzEgMS4wMTg1IDEzLjI5NSAxLjY0NjUgMC4xMTExOS03LjQzNTEtMC43MDY1Mi0xOC44NzgtMS44OTI2LTI2LjI5My01LjA4MjItMS40OTE2LTExLjQ2My0zLjIzMjktMTguNDM5LTQuMzQ3N3oiIHN0eWxlPSJmaWxsOiNhMGEwYTA7Ii8+PHBhdGggZD0ibTE0NS4zOCA5NS42MjhjLTUuMTYwMSAyLjI1OTctMTEuMDMgMi4yNTk3LTE2LjE5IDBtLTQ3LjI5IDEuNzVjNS4xNzU1LTIuMjY5NCAxMS4wNjUtMi4yNjk0IDE2LjI0IDAiIHN0eWxlPSJmaWxsOm5vbmU7c3Ryb2tlLWxpbmVjYXA6cm91bmQ7c3Ryb2tlLWxpbmVqb2luOnJvdW5kO3N0cm9rZS13aWR0aDo1Ljk5OThweDtzdHJva2U6bm9uZTsiLz48cGF0aCBkPSJtOTAuMDE2IDEwNi4yOGMtNC40NTA2LTAuMDEwNS02LjY5MDIgNS4zNjU3LTMuNTUwOCA4LjUxOTUgMy4xMzk0IDMuMTUzOSA4LjUyNTIgMC45Mzg4NyA4LjUzNTItMy41MTE3IDAuMDA2My0yLjc1MjItMi4yMjA0LTQuOTg5OC00Ljk3MjctNC45OTYxbC0wLjAxMTcxOS0wLjAxMTcyem00Ny4yODEgMGMtNC40NTA2LTAuMDEwNS02LjY5MDIgNS4zNjU3LTMuNTUwOCA4LjUxOTUgMy4xMzk0IDMuMTUzOSA4LjUyNTIgMC45Mzg4NyA4LjUzNTItMy41MTE3IDZlLTMgLTIuNzUyMi0yLjIyMDQtNC45ODk4LTQuOTcyNy00Ljk5NjFsLTAuMDExNzEtMC4wMTE3MnoiIHN0eWxlPSJmaWxsOiMwMDA7Ii8+PHBhdGggZD0ibTExOC41NyAxNjUuMTRhOC42NiA4LjY2IDAgMCAwLTIuNzYtNC4yM2gtMC42MmE4IDggMCAwIDAtMi43NiA0LjIyYy0wLjUyIDEuODkgMi4wNyAxMC42MSAyLjc2IDEyLjUzaDAuNjJjMC42NC0xLjc2IDMuMTktMTAuODIgMi43Ni0xMi41MnoiIHN0eWxlPSJmaWxsOiMxOTE5MTk7Ii8+PHBhdGggZD0ibTEwMi44MSAxNTIuMjRhMi40OTIxIDIuNDkyMSAwIDEgMSAxLjE5LTQuODRsMC4yMSAwLjA2YTM3LjEgMzcuMSAwIDAgMCA1LjQzIDEuMTIgNDQuNTIgNDQuNTIgMCAwIDAgMTEuNzYgMCAzNy4xIDM3LjEgMCAwIDAgNS40My0xLjEyIDIuNDkwMyAyLjQ5MDMgMCAwIDEgMS41OSA0LjcybC0wLjIxIDAuMDZhNDMuMDggNDMuMDggMCAwIDEtNi4xNSAxLjI5IDQ4LjU1IDQ4LjU1IDAgMCAxLTEzLjA4IDAgNDIuNzkgNDIuNzkgMCAwIDEtNi4xNy0xLjI5eiIgc3R5bGU9ImZpbGw6IzE5MTkxOTsiLz48L3N2Zz4="
        let decodedData = Data(base64Encoded: encodedeSVG)!
        let decodedString = String(data: decodedData, encoding: .utf8)!
        print(decodedString)
        return decodedString
    }
}

public extension UIStackView {
    func setPadding(_ padding: CGFloat) {
        setPadding(x: padding, y: padding)
    }

    func setPadding(x: CGFloat, y: CGFloat) {
        setPadding(top: y, leading: x, bottom: y, trailing: x)
    }

    func setPadding(top: CGFloat, leading: CGFloat, bottom: CGFloat, trailing: CGFloat) {
        isLayoutMarginsRelativeArrangement = true
        directionalLayoutMargins = NSDirectionalEdgeInsets(top: top, leading: leading, bottom: bottom, trailing: trailing)
    }
}

public class SVGView: UIView {
    public var webView = WKWebView(frame: CGRect(x: 0, y: 0, width: 500, height: 500))

    public init() {
        super.init(frame: .zero)
        webView.scrollView.isScrollEnabled = false
        webView.contentMode = .scaleAspectFit
        webView.backgroundColor = .clear
        webView.translatesAutoresizingMaskIntoConstraints = false
        addSubview(webView)
        webView.leadingAnchor
            .constraint(equalTo: leadingAnchor).isActive = true
        webView.trailingAnchor
            .constraint(equalTo: trailingAnchor).isActive = true
        webView.topAnchor
            .constraint(equalTo: topAnchor).isActive = true
        webView.bottomAnchor
            .constraint(equalTo: bottomAnchor).isActive = true
    }

    @available(*, unavailable)
    public required init?(coder _: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

    deinit {
        webView.stopLoading()
    }

    public func load(svgString: String) {
        webView.stopLoading()
        webView.loadHTMLString(svgString, baseURL: nil)
    }
}
