// swiftlint:disable all
// Generated using SwiftGen — https://github.com/SwiftGen/SwiftGen

#if os(macOS)
  import AppKit.NSFont
#elseif os(iOS) || os(tvOS) || os(watchOS)
  import UIKit.UIFont
#endif
#if canImport(SwiftUI)
  import SwiftUI
#endif

// Deprecated typealiases
@available(*, deprecated, renamed: "FontConvertible.Font", message: "This typealias will be removed in SwiftGen 7.0")
internal typealias Font = FontConvertible.Font

// swiftlint:disable superfluous_disable_command file_length implicit_return

// MARK: - Fonts

// swiftlint:disable identifier_name line_length type_body_length
internal enum FontFamily {
  internal enum Barlow {
    internal static let bold = FontConvertible(name: "Barlow-Bold", family: "Barlow", path: "Barlow-Bold.ttf")
    internal static let boldItalic = FontConvertible(name: "Barlow-BoldItalic", family: "Barlow", path: "Barlow-BoldItalic.ttf")
    internal static let italic = FontConvertible(name: "Barlow-Italic", family: "Barlow", path: "Barlow-Italic.ttf")
    internal static let regular = FontConvertible(name: "Barlow-Regular", family: "Barlow", path: "Barlow-Regular.ttf")
    internal static let all: [FontConvertible] = [bold, boldItalic, italic, regular]
  }
  internal enum BarlowBlack {
    internal static let regular = FontConvertible(name: "Barlow-Black", family: "Barlow Black", path: "Barlow-Black.ttf")
    internal static let italic = FontConvertible(name: "Barlow-BlackItalic", family: "Barlow Black", path: "Barlow-BlackItalic.ttf")
    internal static let all: [FontConvertible] = [regular, italic]
  }
  internal enum BarlowExtraBold {
    internal static let regular = FontConvertible(name: "Barlow-ExtraBold", family: "Barlow ExtraBold", path: "Barlow-ExtraBold.ttf")
    internal static let italic = FontConvertible(name: "Barlow-ExtraBoldItalic", family: "Barlow ExtraBold", path: "Barlow-ExtraBoldItalic.ttf")
    internal static let all: [FontConvertible] = [regular, italic]
  }
  internal enum BarlowExtraLight {
    internal static let regular = FontConvertible(name: "Barlow-ExtraLight", family: "Barlow ExtraLight", path: "Barlow-ExtraLight.ttf")
    internal static let italic = FontConvertible(name: "Barlow-ExtraLightItalic", family: "Barlow ExtraLight", path: "Barlow-ExtraLightItalic.ttf")
    internal static let all: [FontConvertible] = [regular, italic]
  }
  internal enum BarlowLight {
    internal static let regular = FontConvertible(name: "Barlow-Light", family: "Barlow Light", path: "Barlow-Light.ttf")
    internal static let italic = FontConvertible(name: "Barlow-LightItalic", family: "Barlow Light", path: "Barlow-LightItalic.ttf")
    internal static let all: [FontConvertible] = [regular, italic]
  }
  internal enum BarlowMedium {
    internal static let regular = FontConvertible(name: "Barlow-Medium", family: "Barlow Medium", path: "Barlow-Medium.ttf")
    internal static let italic = FontConvertible(name: "Barlow-MediumItalic", family: "Barlow Medium", path: "Barlow-MediumItalic.ttf")
    internal static let all: [FontConvertible] = [regular, italic]
  }
  internal enum BarlowSemiBold {
    internal static let regular = FontConvertible(name: "Barlow-SemiBold", family: "Barlow SemiBold", path: "Barlow-SemiBold.ttf")
    internal static let italic = FontConvertible(name: "Barlow-SemiBoldItalic", family: "Barlow SemiBold", path: "Barlow-SemiBoldItalic.ttf")
    internal static let all: [FontConvertible] = [regular, italic]
  }
  internal enum BarlowThin {
    internal static let regular = FontConvertible(name: "Barlow-Thin", family: "Barlow Thin", path: "Barlow-Thin.ttf")
    internal static let italic = FontConvertible(name: "Barlow-ThinItalic", family: "Barlow Thin", path: "Barlow-ThinItalic.ttf")
    internal static let all: [FontConvertible] = [regular, italic]
  }
  internal enum Staatliches {
    internal static let regular = FontConvertible(name: "Staatliches-Regular", family: "Staatliches", path: "Staatliches-Regular.ttf")
    internal static let all: [FontConvertible] = [regular]
  }
  internal enum TurretRoad {
    internal static let bold = FontConvertible(name: "TurretRoad-Bold", family: "Turret Road", path: "TurretRoad-Bold.ttf")
    internal static let all: [FontConvertible] = [bold]
  }
  internal static let allCustomFonts: [FontConvertible] = [Barlow.all, BarlowBlack.all, BarlowExtraBold.all, BarlowExtraLight.all, BarlowLight.all, BarlowMedium.all, BarlowSemiBold.all, BarlowThin.all, Staatliches.all, TurretRoad.all].flatMap { $0 }
  internal static func registerAllCustomFonts() {
    allCustomFonts.forEach { $0.register() }
  }
}
// swiftlint:enable identifier_name line_length type_body_length

// MARK: - Implementation Details

internal struct FontConvertible {
  internal let name: String
  internal let family: String
  internal let path: String

  #if os(macOS)
  internal typealias Font = NSFont
  #elseif os(iOS) || os(tvOS) || os(watchOS)
  internal typealias Font = UIFont
  #endif

  internal func font(size: CGFloat) -> Font {
    guard let font = Font(font: self, size: size) else {
      fatalError("Unable to initialize font '\(name)' (\(family))")
    }
    return font
  }

  #if canImport(SwiftUI)
  @available(iOS 13.0, tvOS 13.0, watchOS 6.0, macOS 10.15, *)
  internal func swiftUIFont(size: CGFloat) -> SwiftUI.Font {
    return SwiftUI.Font.custom(self, size: size)
  }

  @available(iOS 14.0, tvOS 14.0, watchOS 7.0, macOS 11.0, *)
  internal func swiftUIFont(fixedSize: CGFloat) -> SwiftUI.Font {
    return SwiftUI.Font.custom(self, fixedSize: fixedSize)
  }

  @available(iOS 14.0, tvOS 14.0, watchOS 7.0, macOS 11.0, *)
  internal func swiftUIFont(size: CGFloat, relativeTo textStyle: SwiftUI.Font.TextStyle) -> SwiftUI.Font {
    return SwiftUI.Font.custom(self, size: size, relativeTo: textStyle)
  }
  #endif

  internal func register() {
    // swiftlint:disable:next conditional_returns_on_newline
    guard let url = url else { return }
    CTFontManagerRegisterFontsForURL(url as CFURL, .process, nil)
  }

  fileprivate func registerIfNeeded() {
    #if os(iOS) || os(tvOS) || os(watchOS)
    if !UIFont.fontNames(forFamilyName: family).contains(name) {
      register()
    }
    #elseif os(macOS)
    if let url = url, CTFontManagerGetScopeForURL(url as CFURL) == .none {
      register()
    }
    #endif
  }

  fileprivate var url: URL? {
    // swiftlint:disable:next implicit_return
    return BundleToken.bundle.url(forResource: path, withExtension: nil)
  }
}

internal extension FontConvertible.Font {
  convenience init?(font: FontConvertible, size: CGFloat) {
    font.registerIfNeeded()
    self.init(name: font.name, size: size)
  }
}

#if canImport(SwiftUI)
@available(iOS 13.0, tvOS 13.0, watchOS 6.0, macOS 10.15, *)
internal extension SwiftUI.Font {
  static func custom(_ font: FontConvertible, size: CGFloat) -> SwiftUI.Font {
    font.registerIfNeeded()
    return custom(font.name, size: size)
  }
}

@available(iOS 14.0, tvOS 14.0, watchOS 7.0, macOS 11.0, *)
internal extension SwiftUI.Font {
  static func custom(_ font: FontConvertible, fixedSize: CGFloat) -> SwiftUI.Font {
    font.registerIfNeeded()
    return custom(font.name, fixedSize: fixedSize)
  }

  static func custom(
    _ font: FontConvertible,
    size: CGFloat,
    relativeTo textStyle: SwiftUI.Font.TextStyle
  ) -> SwiftUI.Font {
    font.registerIfNeeded()
    return custom(font.name, size: size, relativeTo: textStyle)
  }
}
#endif

// swiftlint:disable convenience_type
private final class BundleToken {
  static let bundle: Bundle = {
    #if SWIFT_PACKAGE
    return Bundle.module
    #else
    return Bundle(for: BundleToken.self)
    #endif
  }()
}
// swiftlint:enable convenience_type
