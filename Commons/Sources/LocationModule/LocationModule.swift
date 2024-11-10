import ReactiveSwift

public protocol LocationModule {
    func requestWhenInUseAuthorization() -> SignalProducer<AuthorizationStatus, Never>
}
