//  This file was automatically generated and should not be edited.

import Apollo

public final class LiveChannelsQuery: GraphQLQuery {
    public static let operationDefinition =
        "query LiveChannels {" +
        "  live_channels {" +
        "    __typename" +
        "    id" +
        "    name" +
        "  }" +
        "}"
    public init() {
    }

    public struct Data: GraphQLMappable {
        public let liveChannels: [LiveChannel?]?

        public init(reader: GraphQLResultReader) throws {
            liveChannels = try reader.optionalList(for: Field(responseName: "live_channels"))
        }

        public struct LiveChannel: GraphQLMappable {
            public let __typename: String
            public let id: GraphQLID
            public let name: String

            public init(reader: GraphQLResultReader) throws {
                __typename = try reader.value(for: Field(responseName: "__typename"))
                id = try reader.value(for: Field(responseName: "id"))
                name = try reader.value(for: Field(responseName: "name"))
            }
        }
    }
}
