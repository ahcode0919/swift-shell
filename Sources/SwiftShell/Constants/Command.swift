//
//  Command.swift
//  
//
//  Created by Aaron Hinton on 12/28/21.
//

/// Shell commands
public enum Command {
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
    
    public var string: String {
        switch self {
        case .custom(let command):
            return command
        case .xcodeselect:
            return "xcode-select"
        default:
            return "\(self)"
        }
    }
}
