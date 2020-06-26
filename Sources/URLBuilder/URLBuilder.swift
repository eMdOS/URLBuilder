import Foundation

public final class URLBuilder {
    private(set) var components = URLComponents()

    public init() {}

    public func build() -> URL {
        guard let url = components.url else {
            preconditionFailure("URL cannot be ceated. Invalid URL components: \(components)")
        }
        return url
    }
}

public extension URLBuilder {
    func setScheme(_ scheme: String?) -> Self {
        components.scheme = scheme
        return self
    }

    func setHost(_ host: String?) -> Self {
        components.host = host
        return self
    }

    func setPort(_ port: Int?) -> Self {
        components.port = port
        return self
    }

    func setPath(_ path: String) -> Self {
        components.path = path
        return self
    }

    func setQuery(_ query: [URLQueryItem]?) -> Self {
        components.queryItems = query
        return self
    }

    func addQuery(_ query: [URLQueryItem]) -> Self {
        guard !query.isEmpty else {
            // does nothing ...
            return self
        }

        guard let currentQuery = components.queryItems else {
            // set the given query ...
            components.queryItems = query
            return self
        }

        // append the given query to the current one ...
        components.queryItems = currentQuery + query
        return self
    }
}
