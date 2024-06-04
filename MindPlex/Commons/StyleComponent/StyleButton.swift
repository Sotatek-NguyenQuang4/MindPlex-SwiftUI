//
//  StyleButton.swift
//  MindPlex
//
//  Created by Nguyễn Như Quang on 03/06/2024.
//

import SwiftUI

struct StyleButton: ButtonStyle {
    let style: StyleButton.Style
    func makeBody(configuration: Configuration) -> some View {
        configuration.label
              .frame(maxWidth: .infinity, maxHeight: 44)
              .foregroundColor(style.foregroundColor)
              .background(style.background)
              .font(FontFamily.Barlow.bold.swiftUIFont(size: 16))
              .cornerRadius(8)
              .overlay(
                  RoundedRectangle(cornerRadius: 8)
                    .stroke(style.strokeColor, lineWidth: 1)
              )
    }
    enum Style {
        case plain
        case fill
        case outline
        var foregroundColor: Color? {
            switch self {
            case .plain:
                return Color(asset: XCAsset.Colors.MainColor.mainTitleText)
            case .fill:
                return .white
            case .outline:
                return Color(asset: XCAsset.Colors.MainColor.mainPrimary)
            }
        }
        var background: Color? {
            switch self {
            case .plain, .outline:
                return .clear
            case .fill:
                return Color(asset: XCAsset.Colors.MainColor.mainPrimary)
            }
        }
        var strokeColor: Color {
            switch self {
            case .plain, .fill:
                return .clear
            case .outline:
                return Color(asset: XCAsset.Colors.MainColor.mainPrimary)
            }
        }
    }
}
