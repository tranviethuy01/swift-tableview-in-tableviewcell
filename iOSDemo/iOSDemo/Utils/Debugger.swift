//
//  Debugger.swift
//  iOSDemo
//
//  Created by Viet Huy on 4/26/23.
//

import Foundation


class Debugger {
    static func debug(_ content: (() -> String),
               functionName: String = #function,
               file: String = #file,
               fileID: String = #fileID,
               line: Int = #line) {
        
        #if DEBUG
        let log = content()
        let dateFormatter = DateFormatter.init()
        dateFormatter.locale = Locale.init(identifier: "en_US_POSIX")
        dateFormatter.dateFormat = "dd/MM/yyyy HH:mm:ss"
        print("[\(dateFormatter.string(from: Date()))] \(file) - line \(line) - func \(functionName): \(log)")
        #endif
    }
    
    static func debug(_ content: String,
               functionName: String = #function,
               file: String = #file,
               fileID: String = #fileID,
               line: Int = #line) {
        
        #if DEBUG
        let log = content
        let dateFormatter = DateFormatter.init()
        dateFormatter.locale = Locale.init(identifier: "en_US_POSIX")
        dateFormatter.dateFormat = "dd/MM/yyyy HH:mm:ss"
        print("[\(dateFormatter.string(from: Date()))] \(file) - line \(line) - func \(functionName): \(log)")
        #endif
    }
    
    static func debug(_ content: Any..., separator: String = " ", terminator: String = "\n",
                      functionName: String = #function,
                      file: String = #file,
                      fileID: String = #fileID,
                      line: Int = #line) {
        #if DEBUG
        let log = content
        let dateFormatter = DateFormatter.init()
        dateFormatter.locale = Locale.init(identifier: "en_US_POSIX")
        dateFormatter.dateFormat = "dd/MM/yyyy HH:mm:ss"
        print("[\(dateFormatter.string(from: Date()))] \(file) - line \(line) - func \(functionName): \(log)")
        #else
        
        #endif
    }
}
