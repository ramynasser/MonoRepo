import UIKit

public struct Colors {
    static let fallback: Colors.Flavor.Palette = Colors.Flavor.Palette(
        primary: UIColor(red: 0.0/255.0, green: 183.0/255.0, blue: 191.0/255.0, alpha: 1.0),
        primaryDark: UIColor(red: 0.0/255.0, green: 128.0/255.0, blue: 133.0/255.0, alpha: 1.0),
        primaryLight: UIColor(red: 0.0/255.0, green: 91.0/255.0, blue: 95.0/255.0, alpha: 1.0),
        secondary: UIColor(red: 227.0/255.0, green: 228.0/255.0, blue: 230.0/255.0, alpha: 1.0)
    )
}

extension Colors {
    public enum Flavor {
        case primary, primaryDark, primaryLight, secondary

        //swiftlint:disable nesting
        public class Representable {
            public let rawValue: UIColor

            public init(flavor: Flavor, palette: Palette) {
                switch flavor {
                case .primary:
                    self.rawValue = palette.primary
                case .primaryDark:
                    self.rawValue = palette.primaryDark
                case .primaryLight:
                    self.rawValue = palette.primaryLight
                case .secondary:
                    self.rawValue = palette.secondary
                }
            }
        }

        public func rawValue(_ palette: Colors.Flavor.Palette) -> UIColor {
            return Representable(flavor: self, palette: palette).rawValue
        }

        //swiftlint:disable nesting
        public struct Palette {
            public let primary: UIColor
            public let primaryDark: UIColor
            public let primaryLight: UIColor
            public let secondary: UIColor

            public init(primary: UIColor, primaryDark: UIColor, primaryLight: UIColor, secondary: UIColor) {
                self.primary = primary
                self.primaryDark = primaryDark
                self.primaryLight = primaryLight
                self.secondary = secondary
            }
        }
    }
}
