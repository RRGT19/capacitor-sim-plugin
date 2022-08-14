import XCTest
@testable import Plugin

class SimTests: XCTestCase {
    override func setUp() {
        super.setUp()
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }

    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        super.tearDown()
    }

    func testGetSimCarrierId() {
        let implementation = Sim()
        let value = -1
        let result = implementation.getSimCarrierId()

        XCTAssertEqual(value, result)
    }

    func testGetSimCarrierIdName() {
        let implementation = Sim()
        let value = ""
        let result = implementation.getSimCarrierIdName()

        XCTAssertEqual(value, result)
    }

    func testGetSimCountryIso() {
        let implementation = Sim()
        let value = ""
        let result = implementation.getSimCountryIso()

        XCTAssertEqual(value, result)
    }

    func testGetSimOperator() {
        let implementation = Sim()
        let value = ""
        let result = implementation.getSimOperator()

        XCTAssertEqual(value, result)
    }

    func testGetSimOperatorName() {
        let implementation = Sim()
        let value = ""
        let result = implementation.getSimOperatorName()

        XCTAssertEqual(value, result)
    }
}
