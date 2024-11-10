import ReactiveSwift
import CoreLocation
import LocationModule

public class CoreLocationModule: NSObject, LocationModule {

    private let locationManager: CLLocationManager
    private let authorizationStatusUpdate: (output: Signal<CLAuthorizationStatus, Never>, input: Signal<CLAuthorizationStatus, Never>.Observer)

    public override init() {
        locationManager = CLLocationManager()
        authorizationStatusUpdate = Signal<CLAuthorizationStatus, Never>.pipe()
        super.init()
        
        locationManager.delegate = self
    }

    public func requestWhenInUseAuthorization() -> SignalProducer<AuthorizationStatus, Never> {
        return SignalProducer { sink, _ in
            let currentAuthStatus = CLLocationManager.authorizationStatus()
            guard currentAuthStatus == .notDetermined else {
                sink.send(value: AuthorizationStatus(from: currentAuthStatus))
                sink.sendCompleted()
                return
            }
            self.locationManager.requestWhenInUseAuthorization()
        }
    }
}

extension CoreLocationModule: CLLocationManagerDelegate {
    public func locationManager(_ manager: CLLocationManager, didChangeAuthorization status: CLAuthorizationStatus) {
        authorizationStatusUpdate.input.send(value: status)
    }
}

extension AuthorizationStatus {
    init(from clAuthorizationStatus: CLAuthorizationStatus) {
        switch clAuthorizationStatus {
        case .notDetermined:
            self = .notDetermined
        case .authorizedWhenInUse, .authorizedAlways:
            self = .authorized
        case .restricted:
            self = .restricted
        case .denied:
            self = .denied
        }
    }
}
