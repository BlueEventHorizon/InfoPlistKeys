//
//  InfoPlistKeys.swift
//  BwCore
//
//  Created by k2moons on 2021/03/11.
//  Copyright © 2021 k2moons. All rights reserved.
//

import Foundation

// https://developer.apple.com/library/archive/documentation/General/Reference/InfoPlistKeyReference/Articles/CoreFoundationKeys.html

public enum InfoPlistKeys: String, Codable, CaseIterable, CustomStringConvertible {
    // Bundle Identifier
    // https://developer.apple.com/documentation/bundleresources/information_property_list/cfbundleidentifier
    case identifier = "CFBundleIdentifier"

    // アプリ名
    // https://developer.apple.com/documentation/bundleresources/information_property_list/cfbundlename
    case name = "CFBundleName"

    // ローカル・アプリ名
    // https://developer.apple.com/documentation/bundleresources/information_property_list/cfbundledisplayname
    case displayName = "CFBundleDisplayName"

    // バージョン
    // https://developer.apple.com/documentation/bundleresources/information_property_list/cfbundleshortversionstring
    case shortVersion = "CFBundleShortVersionString"

    // Buildバージョン
    // https://developer.apple.com/documentation/bundleresources/information_property_list/cfbundleversion
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

    // MARK: - フォトライブラリ

    /// 画像をフォトライブラリに保存
    case photoLibraryAddUsageDescription = "NSPhotoLibraryAddUsageDescription"

    /// フォトライブラリの利用
    case photoLibraryUsageDescription = "NSPhotoLibraryUsageDescription"

    // MARK: - 音声認識

    /// 音声認識利用
    case speechRecognitionUsageDescription = "NSSpeechRecognitionUsageDescription"

    // MARK: - 位置情報

    /// [iOS 14.0+] ユーザーの位置情報への一時的なアクセスを要求している理由を説明するメッセージのコレクション
    case locationTemporaryUsageDescriptionDictionary = "NSLocationTemporaryUsageDescriptionDictionary"

    /// [iOS 14.0+] デフォルトで位置精度の低下を要求するかどうかを示すブール値
    case NSLocationDefaultAccuracyReduced = "NSLocationDefaultAccuracyReduced"

    /// [iOS 11.0+] フォアグラウンドで動作しているときに、がユーザーの位置情報へのアクセスを要求している理由をユーザーに伝える (使用中のみ許可)
    case locationWhenInUseUsageDescription = "NSLocationWhenInUseUsageDescription"

    /// [iOS 11.0+] ユーザーの位置情報へのアクセスを常時要求している理由を伝える
    // swiftlint:disable:next identifier_name
    case locationAlwaysAndWhenInUseUsageDescription = "NSLocationAlwaysAndWhenInUseUsageDescription"

    /// [Deprecated] 位置情報へのアクセスを要求している理由を伝えるメッセージ
    case locationUsageDescription = "NSLocationUsageDescription"

    /// [Deprecated] 位置情報の利用 (常に許可)
    case locationAlwaysUsageDescription = "NSLocationAlwaysUsageDescription"

    // MARK: - Bluetooth

    /// Bluetooth インターフェースの利用
    case bluetoothPeripheralUsageDescription = "NSBluetoothPeripheralUsageDescription"

    /// Bluetoothの利用
    case bluetoothAlwaysUsageDescription = "NSBluetoothAlwaysUsageDescription"

    // MARK: - カレンダー

    /// カレンダーの利用
    case calendarsUsageDescription = "NSCalendarsUsageDescription"

    // MARK: - リマインダー

    /// リマインダーの利用
    case remindersUsageDescription = "NSRemindersUsageDescription"

    // MARK: - カメラ

    /// カメラの利用
    case cameraUsageDescription = "NSCameraUsageDescription"

    /// マイクの利用
    case microphoneUsageDescription = "NSMicrophoneUsageDescription"

    /// 連絡先の利用
    case contactsUsageDescription = "NSContactsUsageDescription"

    /// ヘルスデータの利用（読み込み）
    case healthShareUsageDescription = "NSHealthShareUsageDescription"

    /// ヘルスデータの更新（書き込み）
    case healthUpdateUsageDescription = "NSHealthUpdateUsageDescription"

    /// HomeKit設定の利用
    case homeKitUsageDescription = "NSHomeKitUsageDescription"

    /// Siriへユーザーデータ送信
    case siriUsageDescription = "NSSiriUsageDescription"

    /// メディアライブラリの利用
    case appleMusicUsageDescription = "NSAppleMusicUsageDescription"

    /// 加速度計の利用
    case motionUsageDescription = "NSMotionUsageDescription"

    /// FaceIDの利用
    case faceIDUsageDescription = "NSFaceIDUsageDescription"

    /// ローカルネットワークの利用
    case localNetworkUsageDescription = "NSLocalNetworkUsageDescription"

    /// ボンジュールの利用
    case bonjourServices = "NSBonjourServices"

    /// 近接デバイスとの対話セッションを開始するためのユーザー許可の1回限りの要求。
    // ⚠️ Deprecated only for iOS 14
    // https://developer.apple.com/documentation/bundleresources/information_property_list/nsnearbyinteractionallowonceusagedescription
    case nearbyInteractionAllowOnceUsageDescription = "NSNearbyInteractionAllowOnceUsageDescription"

    /// 近接デバイスとの対話セッションを開始するためのユーザー許可の要求。
    // After iOS15
    // https://developer.apple.com/documentation/bundleresources/information_property_list/nsnearbyinteractionusagedescription
    case nearbyInteractionUsageDescription = "NSNearbyInteractionUsageDescription"

    // MARK: - CustomStringConvertible

    public var description: String {
        return rawValue
    }

    // MARK: - public

    public func check() -> Bool {
        let result = Bundle.main.object(forInfoDictionaryKey: description)
        return result != nil
    }

    /// 文字列として要素を取得する
    /// - Returns: 文字列
    public func getAsString() -> String? {
        let result = Bundle.main.object(forInfoDictionaryKey: description) as? String
        return result
    }

    /// 文字列配列として要素を取得する
    public func getAsDictionary() -> [String: String]? {
        let result = Bundle.main.object(forInfoDictionaryKey: description) as? [String: String]
        return result
    }

    /// 型推論によって要素を取得する
    public func getValue<T>() -> T? {
        let result = Bundle.main.object(forInfoDictionaryKey: description) as? T
        // let result = InfoPlistChecker.word(for: self)

        switch self {
            case .URLTypes:
                guard result is [String: String]? else {
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

