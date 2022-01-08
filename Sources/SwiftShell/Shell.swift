//
//  Shell.swift
//  
//
//  Created by Aaron Hinton on 12/28/21.
//

import Foundation

/// Execute shell commands
public class Shell {
    
    /// Execute non-blocking shell commands
    /// - Parameters:
    ///   - command: base command
    ///   - args: arguments to pass to command
    /// - Throws: Error on failure
    /// - Returns: Output of shell command
    public static func execute(_ command: Command, args: [String]) throws -> String? {
        let process = Process()
        let pipe = Pipe()
        
        process.standardOutput = pipe
        process.standardError = pipe
        process.arguments = [command.string] + args
        process.launchPath = "/usr/bin/env"
        
        try process.run()
        process.waitUntilExit()
        
        let data = pipe.fileHandleForReading.readDataToEndOfFile()
        
        return String(data: data, encoding: .utf8)?.chomp()
    }
}
