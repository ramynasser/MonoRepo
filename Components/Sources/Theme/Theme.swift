public struct Theme {
    public let flavor: Colors.Flavor.Palette
}

public extension Theme {
    private static var _instance: Theme?

    static var instance: Theme {
        return _instance ?? Theme(flavor: Colors.fallback)
    }

    static func use(theme: Theme) {
        guard _instance == nil else {
            return
        }
        _instance = theme
    }
}
