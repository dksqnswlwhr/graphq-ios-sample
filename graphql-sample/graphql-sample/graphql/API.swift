//  This file was automatically generated and should not be edited.

import Apollo
import Foundation

public final class TestQuery: GraphQLQuery {
  /// The raw GraphQL definition of this operation.
  public let operationDefinition =
    """
    query Test {
      Store {
        __typename
        storeType
        updated_at
        storeName
        storeDescription
        created_at
        updated_at
        storeId
      }
    }
    """

  public let operationName = "Test"

  public init() {
  }

  public struct Data: GraphQLSelectionSet {
    public static let possibleTypes = ["query_root"]

    public static let selections: [GraphQLSelection] = [
      GraphQLField("Store", type: .nonNull(.list(.nonNull(.object(Store.selections))))),
    ]

    public private(set) var resultMap: ResultMap

    public init(unsafeResultMap: ResultMap) {
      self.resultMap = unsafeResultMap
    }

    public init(store: [Store]) {
      self.init(unsafeResultMap: ["__typename": "query_root", "Store": store.map { (value: Store) -> ResultMap in value.resultMap }])
    }

    /// fetch data from the table: "Store"
    public var store: [Store] {
      get {
        return (resultMap["Store"] as! [ResultMap]).map { (value: ResultMap) -> Store in Store(unsafeResultMap: value) }
      }
      set {
        resultMap.updateValue(newValue.map { (value: Store) -> ResultMap in value.resultMap }, forKey: "Store")
      }
    }

    public struct Store: GraphQLSelectionSet {
      public static let possibleTypes = ["Store"]

      public static let selections: [GraphQLSelection] = [
        GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
        GraphQLField("storeType", type: .nonNull(.scalar(String.self))),
        GraphQLField("updated_at", type: .scalar(String.self)),
        GraphQLField("storeName", type: .nonNull(.scalar(String.self))),
        GraphQLField("storeDescription", type: .nonNull(.scalar(String.self))),
        GraphQLField("created_at", type: .scalar(String.self)),
        GraphQLField("updated_at", type: .scalar(String.self)),
        GraphQLField("storeId", type: .nonNull(.scalar(String.self))),
      ]

      public private(set) var resultMap: ResultMap

      public init(unsafeResultMap: ResultMap) {
        self.resultMap = unsafeResultMap
      }

      public init(storeType: String, updatedAt: String? = nil, storeName: String, storeDescription: String, createdAt: String? = nil, storeId: String) {
        self.init(unsafeResultMap: ["__typename": "Store", "storeType": storeType, "updated_at": updatedAt, "storeName": storeName, "storeDescription": storeDescription, "created_at": createdAt, "storeId": storeId])
      }

      public var __typename: String {
        get {
          return resultMap["__typename"]! as! String
        }
        set {
          resultMap.updateValue(newValue, forKey: "__typename")
        }
      }

      public var storeType: String {
        get {
          return resultMap["storeType"]! as! String
        }
        set {
          resultMap.updateValue(newValue, forKey: "storeType")
        }
      }

      public var updatedAt: String? {
        get {
          return resultMap["updated_at"] as? String
        }
        set {
          resultMap.updateValue(newValue, forKey: "updated_at")
        }
      }

      public var storeName: String {
        get {
          return resultMap["storeName"]! as! String
        }
        set {
          resultMap.updateValue(newValue, forKey: "storeName")
        }
      }

      public var storeDescription: String {
        get {
          return resultMap["storeDescription"]! as! String
        }
        set {
          resultMap.updateValue(newValue, forKey: "storeDescription")
        }
      }

      public var createdAt: String? {
        get {
          return resultMap["created_at"] as? String
        }
        set {
          resultMap.updateValue(newValue, forKey: "created_at")
        }
      }

      public var storeId: String {
        get {
          return resultMap["storeId"]! as! String
        }
        set {
          resultMap.updateValue(newValue, forKey: "storeId")
        }
      }
    }
  }
}
