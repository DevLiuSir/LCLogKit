//
//  LCLogKit.swift
//
//
//  Created by DevLiuSir on 2019/12/20.
//



import Foundation

#if DEBUG
import os.log
import os
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
        
        // 根据系统版本选择日志输出方式
        if #available(macOS 16.0, *) {
            // macOS Tahoe 26.0 及以上，使用 os_log 输出结构化日志（支持隐私控制和系统 Console.app 检索）
            
            // ✅ macOS 16.0 及以上（包括 macOS Tahoe 26.0 等未来版本）会进入此分支
            // ⚠️ 注意：某些 macOS 26.0 Beta 版本存在系统版本报告 bug，`ProcessInfo` 显示为 16.x，
            // 此时 #available(macOS 16.0, *) 判断依然会成立，因此这里可以兼容性地认为 >= 16.0 支持 os_log
            // 使用 os_log 输出结构化日志（支持 Console.app 分级、隐私控制、格式化）
            os_log("%{public}@", type: .default, logLine)
        }else {
            NSLog("%@", logLine)
        }
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
