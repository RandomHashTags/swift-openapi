
// https://spec.openapis.org/oas/v3.1.0#example-object
public protocol ExampleObjectProtocol: AnyExampleObject {
    associatedtype Value:Sendable

    /// Embedded literal example. The `value` field and `externalValue` field are mutually exclusive. To represent examples of media types that cannot naturally represented in JSON or YAML, use a string value to contain the example, escaping where necessary.
    var value: Value? { get }
}