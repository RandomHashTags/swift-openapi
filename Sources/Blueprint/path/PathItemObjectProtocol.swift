
/// Describes the operations available on a single path.
/// A Path Item _MAY_ be empty, due to [ACL constraints](https://spec.openapis.org/oas/v3.1.0#security-filtering).
/// The path itself is still exposed to the documentation viewer but they will not know which operations and parameters are available.
/// 
/// This object _MAY_ be extended with [Specification Extensions](https://spec.openapis.org/oas/v3.1.0#specification-extensions).
/// 
/// https://spec.openapis.org/oas/v3.1.0#path-item-object
public protocol PathItemObjectProtocol: AnyPathItemObjectProtocol, ~Copyable {
    associatedtype GETOperation:OperationObjectProtocol
    associatedtype PUTOperation:OperationObjectProtocol
    associatedtype POSTOperation:OperationObjectProtocol
    associatedtype DELETEOperation:OperationObjectProtocol
    associatedtype OPTIONSOperation:OperationObjectProtocol
    associatedtype HEADOperation:OperationObjectProtocol
    associatedtype PATCHOperation:OperationObjectProtocol
    associatedtype TRACEOperation:OperationObjectProtocol
    associatedtype ServerObject:ServerObjectProtocol
    associatedtype ParameterObject:ParameterObjectProtocol

    /// A definition of a GET operation on this path.
    var get: GETOperation? { get }

    /// A definition of a PUT operation on this path.
    var put: PUTOperation? { get }

    /// A definition of a POST operation on this path.
    var post: POSTOperation? { get }

    /// A definition of a DELETE operation on this path.
    var delete: DELETEOperation? { get }

    /// A definition of a OPTIONS operation on this path.
    var options: OPTIONSOperation? { get }

    /// A definition of a HEAD operation on this path.
    var head: HEADOperation? { get }

    /// A definition of a PATCH operation on this path.
    var patch: PATCHOperation? { get }

    /// A definition of a TRACE operation on this path.
    var trace: TRACEOperation? { get }

    /// An alternative `server` array to service all operations in this path.
    var servers: [ServerObject]? { get }

    /// A list of parameters that are applicable for all the operations described under this path.
    /// These parameters can be overridden at the operation level, but cannot be removed there.
    /// The list _MUST NOT_ include duplicated parameters.
    /// A unique parameter is defined by a combination of a [name](https://spec.openapis.org/oas/v3.1.0#parameterName) and [location](https://spec.openapis.org/oas/v3.1.0#parameterIn).
    /// The list can use the [Reference Object](https://spec.openapis.org/oas/v3.1.0#reference-object) to link to parameters that are defined at the [OpenAPI Object’s components/parameters](https://spec.openapis.org/oas/v3.1.0#componentsParameters).
    var parameters: [ParameterObject]? { get }
}