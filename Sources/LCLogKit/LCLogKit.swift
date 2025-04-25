//
//  LCLogKit.swift
//
//
//  Created by DevLiuSir on 2019/12/20.
//



import Foundation

#if DEBUG
import os.log
#endif

enum DebugLogLevel: String {
    case debug = "🐞 DEBUG"
    case info = "ℹ️ INFO"
    case warning = "⚠️ WARNING"
    case error = "❌ ERROR"
}

final public class LCLogKit {
    
    public static let shared = LCLogKit()
    
    private init() {}
    
    /// 主日志方法
    func log(_ message: Any, level: DebugLogLevel = .debug, showFunction: Bool = true, file: String = #file, function: String = #function, line: Int = #line) {
#if DEBUG
        let fileName = URL(fileURLWithPath: file).lastPathComponent
        let messageString = String(describing: message)
        let line = "[\(line)]"
        
        let timeStamp = Self.formattedDate()
        
        var logLine = "[\(level.rawValue)] [\(timeStamp)] \(fileName): \(line)"
        if showFunction {
            logLine += " \(function)"
        }
        logLine += " => \(messageString)"
        
        NSLog("%@", logLine)
#endif
    }
    
    public static func debug(_ message: Any, showFunction: Bool = true, file: String = #file, function: String = #function, line: Int = #line) {
        shared.log(message, level: .debug, showFunction: showFunction, file: file, function: function, line: line)
    }
    
    public static func info(_ message: Any, showFunction: Bool = true, file: String = #file, function: String = #function, line: Int = #line) {
        shared.log(message, level: .info, showFunction: showFunction, file: file, function: function, line: line)
    }
    
    public static func warning(_ message: Any, showFunction: Bool = true, file: String = #file, function: String = #function, line: Int = #line) {
        shared.log(message, level: .warning, showFunction: showFunction, file: file, function: function, line: line)
    }
    
    public static func error(_ message: Any, showFunction: Bool = true, file: String = #file, function: String = #function, line: Int = #line) {
        shared.log(message, level: .error, showFunction: showFunction, file: file, function: function, line: line)
    }
    
    /// 时间戳格式化器
    /// 用于格式化日志中的时间戳，使其符合 "yyyy-MM-dd HH:mm:ss" 格式
    private static func formattedDate() -> String {
        let formatter = DateFormatter()
        formatter.locale = Locale(identifier: "en_US_POSIX") // 确保时间格式稳定
        formatter.dateFormat = "yyyy-MM-dd HH:mm:ss" // 设定日期格式
        return formatter.string(from: Date())
    }
}
