
import Blueprint

public struct ExternalDocumentationObject: Codable, ExternalDocumentationObjectProtocol {
    public var description:String?
    public var url:String

    public init(
        description: String? = nil,
        url: String
    ) {
        self.description = description
        self.url = url
    }
}