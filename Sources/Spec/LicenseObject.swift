
import Blueprint

public struct LicenseObject: Codable, LicenseObjectProtocol {
    public var name:String
    public var identifier:String?
    public var url:String?
}