import LocationModule
import CoreLocationModule
import Foundation
final public class SomeFeature: Feature {
    public var locationModule: LocationModule {
        return CoreLocationModule()
    }
    
    public func print() {
        Swift.print("location")
    }
}
