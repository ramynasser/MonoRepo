import LocationModule
import CoreLocationModule
import B
import A

final class SomeFeature: Feature {
    var locationModule: LocationModule {
        return CoreLocationModule()
    }
}
