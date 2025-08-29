
public struct InfoObject: Codable, Sendable {
    public var title:String
    public var summary:String?
    public var description:String?
    public var termsOfService:String?
    public var contact:ContactObject?
    public var license:LicenseObject?
    public var version:String
}