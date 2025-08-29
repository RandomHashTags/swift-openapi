
import Blueprint

public struct ContactObject: Codable, ContactObjectProtocol {
    public var name:String?
    public var url:String?
    public var email:String?

    public init(
        name: String?,
        url: String?,
        email: String?
    ) {
        self.name = name
        self.url = url
        self.email = email
    }
}