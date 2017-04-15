import XCTest
@testable import MastodonKit

class FollowRequestsTests: XCTestCase {
    static var allTests = [
        ("testAll", testAll)
    ]

    func testAll() {
        let resource = FollowRequests.all()

        XCTAssertEqual(resource.path, "/api/v1/follow_requests")
        XCTAssertEqual(resource.httpMethod, .get)
        XCTAssertNil(resource.parameters)
        XCTAssertNotNil(resource.parse)
    }
}