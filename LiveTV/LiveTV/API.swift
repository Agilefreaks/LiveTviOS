//  This file was automatically generated and should not be edited.

import Apollo

public final class LiveChannelsQuery: GraphQLQuery {
    public static let operationDefinition =
        "query LiveChannels {" +
        "  live_channels {" +
        "    __typename" +
        "    id" +
        "    name" +
        "    now_playing {" +
        "      __typename" +
        "      starts_at" +
        "      content {" +
        "        __typename" +
        "        url" +
        "      }" +
        "    }" +
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
            public let nowPlaying: NowPlaying?

            public init(reader: GraphQLResultReader) throws {
                __typename = try reader.value(for: Field(responseName: "__typename"))
                id = try reader.value(for: Field(responseName: "id"))
                name = try reader.value(for: Field(responseName: "name"))
                nowPlaying = try reader.optionalValue(for: Field(responseName: "now_playing"))
            }

            public struct NowPlaying: GraphQLMappable {
                public let __typename: String
                public let startsAt: String
                public let content: Content?

                public init(reader: GraphQLResultReader) throws {
                    __typename = try reader.value(for: Field(responseName: "__typename"))
                    startsAt = try reader.value(for: Field(responseName: "starts_at"))
                    content = try reader.optionalValue(for: Field(responseName: "content"))
                }

                public struct Content: GraphQLMappable {
                    public let __typename: String
                    public let url: String

                    public init(reader: GraphQLResultReader) throws {
                        __typename = try reader.value(for: Field(responseName: "__typename"))
                        url = try reader.value(for: Field(responseName: "url"))
                    }
                }
            }
        }
    }
}
