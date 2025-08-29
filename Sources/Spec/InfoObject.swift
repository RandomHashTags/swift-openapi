
import Blueprint

public struct InfoObject: Codable, InfoObjectProtocol {
    public var title:String
    public var summary:String?
    public var description:String?
    public var termsOfService:String?
    public var contact:ContactObject?
    public var license:LicenseObject?
    public var version:String

    public init(
        title: String,
        summary: String? = nil,
        description: String? = nil,
        termsOfService: String? = nil,
        contact: ContactObject? = nil,
        license: LicenseObject? = nil,
        version: String
    ) {
        self.title = title
        self.summary = summary
        self.description = description
        self.termsOfService = termsOfService
        self.contact = contact
        self.license = license
        self.version = version
    }
}