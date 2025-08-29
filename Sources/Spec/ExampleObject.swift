
import Blueprint

/// https://spec.openapis.org/oas/v3.1.0#example-object
public struct ExampleObject: AnyExampleObject {
    public var summary:String?
    public var description:String?
    //public var value:Any? // TODO: fix
    public var externalValue:String?
}