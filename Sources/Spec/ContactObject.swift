
import Blueprint

public struct ContactObject: Codable, ContactObjectProtocol {
    public var name:String?
    public var url:String?
    public var email:String?
}