//
//  Logger.swift
//  WZLogKit
//
//  Created by xiaobin liu on 2019/7/30.
//  Copyright © 2019 xiaobin liu. All rights reserved.
//

import Foundation


/// MARK - 我主良缘日志类
public struct WZLogger {
    
    /// 默认等级为debug
    public static var logLevel: WZLogger.Level = .all
    
    /// MARK - 设置开启的日子级别
    public static func setLog(level: WZLogger.Level) {
        self.logLevel = level
    }
}

// MARK: - Description
extension WZLogger {
    
    /// debug日志
    ///
    /// - Parameters:
    ///   - message: message description
    ///   - file: file description
    ///   - function: function description
    ///   - line: line description
    public static func debug(_ message: @autoclosure () -> WZLogger.Message, file: String = #file, function: String = #function, line: UInt = #line) {
        self.log(level: .debug, message(), file: file, function: function, line: line)
    }
    
    
    /// 信息日志
    ///
    /// - Parameters:
    ///   - message: message description
    ///   - file: file description
    ///   - function: function description
    ///   - line: line description
    public static func info(_ message: @autoclosure () -> WZLogger.Message, file: String = #file, function: String = #function, line: UInt = #line) {
        self.log(level: .info, message(), file: file, function: function, line: line)
    }
    
    
    
    /// 警告日志
    ///
    /// - Parameters:
    ///   - message: message description
    ///   - file: file description
    ///   - function: function description
    ///   - line: line description
    public static func warning(_ message: @autoclosure () -> WZLogger.Message, file: String = #file, function: String = #function, line: UInt = #line) {
        self.log(level: .warning, message(), file: file, function: function, line: line)
    }
    
    
    /// 错误日志
    ///
    /// - Parameters:
    ///   - message: message description
    ///   - file: file description
    ///   - function: function description
    ///   - line: line description
    public static func error(_ message: @autoclosure () -> WZLogger.Message, file: String = #file, function: String = #function, line: UInt = #line) {
        self.log(level: .error, message(), file: file, function: function, line: line)
    }
    
    
    /// 日志
    ///
    /// - Parameters:
    ///   - level: level description
    ///   - message: message description
    ///   - file: file description
    ///   - function: function description
    ///   - line: line description
    public static func log(level: WZLogger.Level,
                           _ message: @autoclosure () -> WZLogger.Message,
                           file: String = #file, function: String = #function, line: UInt = #line) {
        if self.logLevel >= level {
            let fileName = (file as NSString).lastPathComponent
            debugPrint("\(fileName):\(line) \(function) | \(message())")
        }
    }
}


// MARK: - WZLogger
extension WZLogger {
    
    /// 日志级别
    ///
    /// - off: 关闭
    /// - debug: debug
    /// - info: 信息
    /// - warning: 警告
    /// - error: 错误
    /// - all: 输出所有的日志
    public enum Level: CaseIterable {
        
        case off
        case debug
        case info
        case warning
        case error
        case all
    }
}


// MARK: - Description
extension WZLogger.Level {
    
    internal var naturalIntegralValue: Int {
        switch self {
        case .off:
            return 0
        case .debug:
            return 1
        case .info:
            return 2
        case .warning:
            return 3
        case .error:
            return 4
        case .all:
            return 5
        }
    }
}

// MARK: - Comparable
extension WZLogger.Level: Comparable {
    
    public static func < (lhs: WZLogger.Level, rhs: WZLogger.Level) -> Bool {
        return lhs.naturalIntegralValue < rhs.naturalIntegralValue
    }
}

// MARK: - Message
extension WZLogger {
    
    public struct Message: ExpressibleByStringLiteral,
        Equatable,
        CustomStringConvertible,
    ExpressibleByStringInterpolation {
        public typealias StringLiteralType = String
        
        private var value: String
        
        public init(stringLiteral value: String) {
            self.value = value
        }
        
        public var description: String {
            return self.value
        }
    }
}

