import Foundation
import CoreTelephony

@objc public class Sim: NSObject {

    private lazy var networkInfo: CTTelephonyNetworkInfo = {
        return CTTelephonyNetworkInfo()
    }()

    @objc public func getSimCarrierId() -> Int {
        return -1
    }

    @objc public func getSimCarrierIdName() -> String {
        return networkInfo.serviceSubscriberCellularProviders?.first?.value.carrierName ?? ""
    }

    @objc public func getSimCountryIso() -> String {
        return networkInfo.serviceSubscriberCellularProviders?.first?.value.isoCountryCode ?? ""
    }

    @objc public func getSimOperator() -> String {
        let mcc = networkInfo.serviceSubscriberCellularProviders?.first?.value.isoCountryCode ?? ""
        let mnc = networkInfo.serviceSubscriberCellularProviders?.first?.value.mobileCountryCode ?? ""
        return [mcc,mnc].joined(separator: "")
    }

    @objc public func getSimOperatorName() -> String {
        return networkInfo.serviceSubscriberCellularProviders?.first?.value.carrierName ?? ""
    }
}
