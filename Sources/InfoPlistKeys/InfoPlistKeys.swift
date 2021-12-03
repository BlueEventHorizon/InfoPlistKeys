//
//  InfoPlistKeys.swift
//  BwTools
//
//  Created by Katsuhiko Terada on 2021/03/11.
//  Copyright © 2021 beowulf-tech. All rights reserved.
//

import Foundation

// https://developer.apple.com/library/archive/documentation/General/Reference/InfoPlistKeyReference/Articles/CoreFoundationKeys.html

public enum InfoPlistKeys: String, Codable, CaseIterable, CustomStringConvertible {
    // Bundle Identifier
    case identifier = "CFBundleIdentifier"

    // アプリ名
    case name = "CFBundleName"

    // ローカル・アプリ名
    case displayName = "CFBundleDisplayName"

    // バージョン
    case shortVersion = "CFBundleShortVersionString"

    // Buildバージョン
    case version = "CFBundleVersion"

    // The system uses this key as the language if it can't locate a resource for the user’s preferred language.
    // The value should be a language ID that identifies a language, dialect, or script.
    case region = "CFBundleDevelopmentRegion"

    // Deep LinkなどのためのURLScheme
    case URLTypes = "CFBundleURLTypes"
    case typeRole = "CFBundleTypeRole"

    // CFBundleURLTypes内で記述されたURLSchemes
    case URLSchemes = "CFBundleURLSchemes"

    // canOpenURL()で有効を返すためのSchemeリスト
    case applicationQueriesSchemes = "LSApplicationQueriesSchemes"

    case ats = "NSAppTransportSecurity"
    case atsAllowsArbitraryLoads = "NSAllowsArbitraryLoads"
    case backgroundModes = "UIBackgroundModes"
    case launchStoryboardName = "UILaunchStoryboardName"
    case mainStoryboardFile = "UIMainStoryboardFile"

    // Application supports iTunes file sharing iTunesファイル共有フラグ
    case fileSharingEnabled = "UIFileSharingEnabled"

    // 画像をフォトライブラリに保存
    case photoLibraryAddUsageDescription = "NSPhotoLibraryAddUsageDescription"

    // フォトライブラリの利用
    case photoLibraryUsageDescription = "NSPhotoLibraryUsageDescription"

    // 音声認識利用
    case speechRecognitionUsageDescription = "NSSpeechRecognitionUsageDescription"

    // 位置情報の利用 (常に許可)
    case locationAlwaysUsageDescription = "NSLocationAlwaysUsageDescription"

    // 位置情報の利用 (使用中のみ許可)
    case locationWhenInUseUsageDescription = "NSLocationWhenInUseUsageDescription"

    // 位置情報の利用（両方)
    // swiftlint:disable:next identifier_name
    case locationAlwaysAndWhenInUseUsageDescription = "NSLocationAlwaysAndWhenInUseUsageDescription"

    // Bluetooth インターフェースの利用
    case bluetoothPeripheralUsageDescription = "NSBluetoothPeripheralUsageDescription"

    // Bluetoothの利用
    case bluetoothAlwaysUsageDescription = "NSBluetoothAlwaysUsageDescription"

    // カレンダーの利用
    case calendarsUsageDescription = "NSCalendarsUsageDescription"

    // リマインダーの利用
    case remindersUsageDescription = "NSRemindersUsageDescription"

    // カメラの利用
    case cameraUsageDescription = "NSCameraUsageDescription"

    // マイクの利用
    case microphoneUsageDescription = "NSMicrophoneUsageDescription"

    // 連絡先の利用
    case contactsUsageDescription = "NSContactsUsageDescription"

    // ヘルスデータの利用（読み込み）
    case healthShareUsageDescription = "NSHealthShareUsageDescription"

    // ヘルスデータの更新（書き込み）
    case healthUpdateUsageDescription = "NSHealthUpdateUsageDescription"

    // HomeKit設定の利用
    case homeKitUsageDescription = "NSHomeKitUsageDescription"

    // Siriへユーザーデータ送信
    case siriUsageDescription = "NSSiriUsageDescription"

    // メディアライブラリの利用
    case appleMusicUsageDescription = "NSAppleMusicUsageDescription"

    // 加速度計の利用
    case motionUsageDescription = "NSMotionUsageDescription"

    // FaceIDの利用
    case faceIDUsageDescription = "NSFaceIDUsageDescription"

    // ローカルネットワークの利用
    case localNetworkUsageDescription = "NSLocalNetworkUsageDescription"

    // ボンジュールの利用
    case bonjourServices = "NSBonjourServices"

    // 近接デバイスとの対話セッションを開始するためのユーザー許可の1回限りの要求。
    // ⚠️ Deprecated only for iOS 14
    // https://developer.apple.com/documentation/bundleresources/information_property_list/nsnearbyinteractionallowonceusagedescription
    case nearbyInteractionAllowOnceUsageDescription = "NSNearbyInteractionAllowOnceUsageDescription"

    // 近接デバイスとの対話セッションを開始するためのユーザー許可の要求。
    // After iOS15
    // https://developer.apple.com/documentation/bundleresources/information_property_list/nsnearbyinteractionusagedescription
    case nearbyInteractionUsageDescription = "NSNearbyInteractionUsageDescription"

    // MARK: - CustomStringConvertible

    public var description: String {
        return self.rawValue
    }

    public func check() -> Bool {
        let result = Bundle.main.object(forInfoDictionaryKey: self.description)
        return result != nil
    }

    public func getValue<T>() -> T? {
        let result = Bundle.main.object(forInfoDictionaryKey: self.description) as? T
        // let result = InfoPlistChecker.word(for: self)

        switch self {
            case .URLTypes:
                guard result is [[String: Any]]? else {
                    assertionFailure("型が違います")
                    return result
                }
                return result

            case .applicationQueriesSchemes:
                guard result is [String]? else {
                    assertionFailure("型が違います")
                    return result
                }
                return result

            default:
                //
                return result
        }
    }
}
