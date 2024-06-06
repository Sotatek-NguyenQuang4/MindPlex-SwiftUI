// swiftlint:disable all
// Generated using SwiftGen — https://github.com/SwiftGen/SwiftGen

import Foundation

// swiftlint:disable superfluous_disable_command file_length implicit_return prefer_self_in_static_references

// MARK: - Strings

// swiftlint:disable explicit_type_interface function_parameter_count identifier_name line_length
// swiftlint:disable nesting type_body_length type_name vertical_whitespace_opening_braces
internal enum L10n {
  internal enum Common {
    internal enum Controls {
      internal enum Actions {
        /// Localizable.strings
        ///   MindPlex
        /// 
        ///   Created by Nguyễn Như Quang on 03/06/2024.
        internal static let back = L10n.tr("Localizable", "Common.Controls.Actions.Back", fallback: "Back")
      }
    }
  }
  internal enum Scene {
    internal enum Privacy {
      /// Although the Mindplex app does not collect any data, the server you sign up through may have a different policy. Take a minute to review and agree to the Mindplex app privacy policy and your server’s privacy policy.
      internal static let description = L10n.tr("Localizable", "Scene.Privacy.Description", fallback: "Although the Mindplex app does not collect any data, the server you sign up through may have a different policy. Take a minute to review and agree to the Mindplex app privacy policy and your server’s privacy policy.")
      /// Privacy
      internal static let title = L10n.tr("Localizable", "Scene.Privacy.Title", fallback: "Privacy")
      internal enum Button {
        /// I Agree
        internal static let confirm = L10n.tr("Localizable", "Scene.Privacy.Button.Confirm", fallback: "I Agree")
      }
      internal enum Policy {
        /// Privacy Policy - Mindplex for iOS
        internal static let ios = L10n.tr("Localizable", "Scene.Privacy.Policy.Ios", fallback: "Privacy Policy - Mindplex for iOS")
        /// Privacy Policy - Mindplex.social
        internal static let server = L10n.tr("Localizable", "Scene.Privacy.Policy.Server", fallback: "Privacy Policy - Mindplex.social")
      }
    }
    internal enum ServerRules {
      /// These are set and enforced by the
      /// mindplex.social moderators.
      internal static let subtitle = L10n.tr("Localizable", "Scene.ServerRules.Subtitle", fallback: "These are set and enforced by the\nmindplex.social moderators.")
      /// Some ground rules.
      internal static let title = L10n.tr("Localizable", "Scene.ServerRules.Title", fallback: "Some ground rules.")
      internal enum Button {
        /// I Agree
        internal static let confirm = L10n.tr("Localizable", "Scene.ServerRules.Button.Confirm", fallback: "I Agree")
      }
    }
    internal enum Welcome {
      /// Join Mindplex.social
      internal static let joinDefaultServer = L10n.tr("Localizable", "Scene.Welcome.JoinDefaultServer", fallback: "Join Mindplex.social")
      /// Learn more
      internal static let learnMore = L10n.tr("Localizable", "Scene.Welcome.LearnMore", fallback: "Learn more")
      /// Log In
      internal static let logIn = L10n.tr("Localizable", "Scene.Welcome.LogIn", fallback: "Log In")
      internal enum Separator {
        /// or
        internal static let or = L10n.tr("Localizable", "Scene.Welcome.Separator.Or", fallback: "or")
      }
    }
  }
}
// swiftlint:enable explicit_type_interface function_parameter_count identifier_name line_length
// swiftlint:enable nesting type_body_length type_name vertical_whitespace_opening_braces

// MARK: - Implementation Details

extension L10n {
  private static func tr(_ table: String, _ key: String, _ args: CVarArg..., fallback value: String) -> String {
    let format = BundleToken.bundle.localizedString(forKey: key, value: value, table: table)
    return String(format: format, locale: Locale.current, arguments: args)
  }
}

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
