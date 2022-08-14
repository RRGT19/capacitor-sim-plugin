import Foundation
import Capacitor

/**
 * Please read the Capacitor iOS Plugin Development Guide
 * here: https://capacitorjs.com/docs/plugins/ios
 */
@objc(SimPlugin)
public class SimPlugin: CAPPlugin {

    private var implementation: Sim?

    public override func load() {
        self.implementation = Sim()
    }


    @objc func getInfo(_ call: CAPPluginCall) {
        call.resolve([
            "carrierId": implementation?.getSimCarrierId() ?? -1,
            "carrierIdName": implementation?.getSimCarrierIdName() ?? "",
            "countryIso": implementation?.getSimCountryIso() ?? "",
            "operator": implementation?.getSimOperator() ?? "",
            "operatorName": implementation?.getSimOperatorName() ?? "",
        ])
    }
}
