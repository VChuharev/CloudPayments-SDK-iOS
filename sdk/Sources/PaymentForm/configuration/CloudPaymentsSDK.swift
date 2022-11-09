//
//  CloudPaymentsSDK.swift
//  sdk
//
//  Created by a.ignatov on 19.09.2022.
//  Copyright © 2022 Cloudpayments. All rights reserved.
//

import Foundation

final public class CloudPaymentsSDK {

    private(set) static var yandexPayAppId: String?
    private static var initialized: Bool = false

    public static var instance: CloudPaymentsSDK = {
        guard initialized == true else {
            fatalError("CloudPaymentsSDK should be initialized using initialize(yandexPayAppId:sandboxMode:) method before use")
        }
        return CloudPaymentsSDK()
    }()

    public static func initialize(yandexPayAppId: String?, yandexPaySandboxMode: Bool? = false) throws {
        Self.yandexPayAppId = yandexPayAppId
        initialized = true
    }

    final public func applicationWillEnterForeground() {
    }

    final public func applicationDidBecomeActive() {
    }

    final public func applicationDidReceiveOpen(_ url: URL, sourceApplication: String?) -> Bool {
        return true
    }

    final public func applicationDidReceiveUserActivity(_ userActivity: NSUserActivity) -> Bool {
        return true
    }
}
