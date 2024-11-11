import LocationModule
import CoreLocationModule

final class SomeFeature: Feature {
    var locationModule: LocationModule {
        return CoreLocationModule()
    }
}
