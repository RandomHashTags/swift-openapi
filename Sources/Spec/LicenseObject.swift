
import Blueprint

public struct LicenseObject: Codable, LicenseObjectProtocol {
    public var name:String
    public var identifier:String?
    public var url:String?

    public init(
        name: String,
        identifier: String? = nil,
        url: String? = nil
    ) {
        self.name = name
        self.identifier = identifier
        self.url = url
    }
}