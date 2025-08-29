
import Blueprint

/// https://spec.openapis.org/oas/v3.1.0#header-object
public struct HeaderObject: Codable, Sendable { // TODO: fix
}

extension HeaderObject {
    public var name: String { "" }
    public var `in`: String { "" }
}