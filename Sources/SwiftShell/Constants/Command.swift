//
//  Command.swift
//  
//
//  Created by Aaron Hinton on 12/28/21.
//

/// Shell commands
enum Command {
    case cp
    case custom(String)
    case echo
    case kill
    case ls
    case mv
    case rm
    case pkill
    case which
    case xcodebuild
    case xcodeselect
    case xcrun
    
    var string: String {
        switch self {
        case .custom(let command):
            return command
        default:
            return "\(self)"
        }
    }
}
