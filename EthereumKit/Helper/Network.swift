public enum Network {
    case main
    case ropsten
    
    // https://github.com/satoshilabs/slips/blob/master/slip-0044.md
    public var coinType: UInt32 {
        switch self {
        case .main:
            return 60
        case .ropsten:
            return 1
        }
    }
    
    public var privateKeyPrefix: UInt32 {
        switch self {
        case .main:
            return 0x0488ade4
        case .ropsten:
            return 0x04358394
        }
    }
    
    public var publicKeyPrefix: UInt32 {
        switch self {
        case .main:
            return 0x0488b21e
        case .ropsten:
            return 0x043587cf
        }
    }
    
    public var chainID: Int {
        switch self {
        case .main:
            return 1
        case .ropsten:
            return 3
        }
    }
}
