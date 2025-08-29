
/// The Header Object follows the structure of the [Parameter Object](https://spec.openapis.org/oas/v3.1.0#parameter-object) with the following changes:
/// 
/// 1. `name` _MUST NOT_ be specified, it is given in the corresponding `headers` map.
/// 2. `in` _MUST NOT_ be specified, it is implicitly in `header`.
/// 3. All traits that are affected by the location _MUST_ be applicable to a location of `header` (for example, [`style`](https://spec.openapis.org/oas/v3.1.0#parameterStyle)).
/// 
/// https://spec.openapis.org/oas/v3.1.0#header-object
public protocol HeaderObjectProtocol: ParameterObjectProtocol, ~Copyable {
}

extension HeaderObjectProtocol {
    @inlinable
    public var name: String {
        ""
    }

    @inlinable
    public var `in`: String {
        ""
    }
}