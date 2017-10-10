/// Generated by the Protocol Buffers 3.4.0 compiler.  DO NOT EDIT!
/// Protobuf-swift version: 3.0.24
/// Source file "user.proto"
/// Syntax "Proto3"

import Foundation
import ProtocolBuffers


public struct UserRoot {
    public static let `default` = UserRoot()
    public var extensionRegistry:ExtensionRegistry

    init() {
        extensionRegistry = ExtensionRegistry()
        registerAllExtensions(registry: extensionRegistry)
    }
    public func registerAllExtensions(registry: ExtensionRegistry) {
    }
}

final public class User : GeneratedMessage {
    public typealias BuilderType = User.Builder

    public static func == (lhs: User, rhs: User) -> Bool {
        if lhs === rhs {
            return true
        }
        var fieldCheck:Bool = (lhs.hashValue == rhs.hashValue)
        fieldCheck = fieldCheck && (lhs.hasUserName == rhs.hasUserName) && (!lhs.hasUserName || lhs.userName == rhs.userName)
        fieldCheck = fieldCheck && (lhs.hasPassword == rhs.hasPassword) && (!lhs.hasPassword || lhs.password == rhs.password)
        fieldCheck = fieldCheck && (lhs.hasType == rhs.hasType) && (!lhs.hasType || lhs.type == rhs.type)
        fieldCheck = (fieldCheck && (lhs.unknownFields == rhs.unknownFields))
        return fieldCheck
    }



        //Enum type declaration start 

        public enum AcountType:Int32, GeneratedEnum {
            case guest = 0
            case facebook = 1
            case google = 2
            public func toString() -> String {
                switch self {
                case .guest: return "GUEST"
                case .facebook: return "FACEBOOK"
                case .google: return "GOOGLE"
                }
            }
            public static func fromString(_ str:String) throws -> User.AcountType {
                switch str {
                case "GUEST":    return .guest
                case "FACEBOOK":    return .facebook
                case "GOOGLE":    return .google
                default: throw ProtocolBuffersError.invalidProtocolBuffer("Conversion failed.")
                }
            }
            public var debugDescription:String { return getDescription() }
            public var description:String { return getDescription() }
            private func getDescription() -> String { 
                switch self {
                case .guest: return ".guest"
                case .facebook: return ".facebook"
                case .google: return ".google"
                }
            }
            public var hashValue:Int {
                return self.rawValue.hashValue
            }
            public static func ==(lhs:AcountType, rhs:AcountType) -> Bool {
                return lhs.hashValue == rhs.hashValue
            }
        }

        //Enum type declaration end 

    public fileprivate(set) var userName:String! = nil
    public fileprivate(set) var hasUserName:Bool = false

    public fileprivate(set) var password:String! = nil
    public fileprivate(set) var hasPassword:Bool = false

    public fileprivate(set) var type:User.AcountType = User.AcountType.guest
    public fileprivate(set) var hasType:Bool = false
    required public init() {
        super.init()
    }
    override public func isInitialized() -> Bool {
        return true
    }
    override public func writeTo(codedOutputStream: CodedOutputStream) throws {
        if hasUserName {
            try codedOutputStream.writeString(fieldNumber: 1, value:userName)
        }
        if hasPassword {
            try codedOutputStream.writeString(fieldNumber: 2, value:password)
        }
        if hasType {
            try codedOutputStream.writeEnum(fieldNumber: 3, value:type.rawValue)
        }
        try unknownFields.writeTo(codedOutputStream: codedOutputStream)
    }
    override public func serializedSize() -> Int32 {
        var serialize_size:Int32 = memoizedSerializedSize
        if serialize_size != -1 {
         return serialize_size
        }

        serialize_size = 0
        if hasUserName {
            serialize_size += userName.computeStringSize(fieldNumber: 1)
        }
        if hasPassword {
            serialize_size += password.computeStringSize(fieldNumber: 2)
        }
        if (hasType) {
            serialize_size += type.rawValue.computeEnumSize(fieldNumber: 3)
        }
        serialize_size += unknownFields.serializedSize()
        memoizedSerializedSize = serialize_size
        return serialize_size
    }
    public class func getBuilder() -> User.Builder {
        return User.classBuilder() as! User.Builder
    }
    public func getBuilder() -> User.Builder {
        return classBuilder() as! User.Builder
    }
    override public class func classBuilder() -> ProtocolBuffersMessageBuilder {
        return User.Builder()
    }
    override public func classBuilder() -> ProtocolBuffersMessageBuilder {
        return User.Builder()
    }
    public func toBuilder() throws -> User.Builder {
        return try User.builderWithPrototype(prototype:self)
    }
    public class func builderWithPrototype(prototype:User) throws -> User.Builder {
        return try User.Builder().mergeFrom(other:prototype)
    }
    override public func encode() throws -> Dictionary<String,Any> {
        guard isInitialized() else {
            throw ProtocolBuffersError.invalidProtocolBuffer("Uninitialized Message")
        }

        var jsonMap:Dictionary<String,Any> = Dictionary<String,Any>()
        if hasUserName {
            jsonMap["userName"] = userName
        }
        if hasPassword {
            jsonMap["password"] = password
        }
        if hasType {
            jsonMap["type"] = type.toString()
        }
        return jsonMap
    }
    override class public func decode(jsonMap:Dictionary<String,Any>) throws -> User {
        return try User.Builder.decodeToBuilder(jsonMap:jsonMap).build()
    }
    override class public func fromJSON(data:Data) throws -> User {
        return try User.Builder.fromJSONToBuilder(data:data).build()
    }
    override public func getDescription(indent:String) throws -> String {
        var output = ""
        if hasUserName {
            output += "\(indent) userName: \(userName) \n"
        }
        if hasPassword {
            output += "\(indent) password: \(password) \n"
        }
        if (hasType) {
            output += "\(indent) type: \(type.description)\n"
        }
        output += unknownFields.getDescription(indent: indent)
        return output
    }
    override public var hashValue:Int {
        get {
            var hashCode:Int = 7
            if hasUserName {
                hashCode = (hashCode &* 31) &+ userName.hashValue
            }
            if hasPassword {
                hashCode = (hashCode &* 31) &+ password.hashValue
            }
            if hasType {
                 hashCode = (hashCode &* 31) &+ type.hashValue
            }
            hashCode = (hashCode &* 31) &+  unknownFields.hashValue
            return hashCode
        }
    }


    //Meta information declaration start

    override public class func className() -> String {
        return "User"
    }
    override public func className() -> String {
        return "User"
    }
    //Meta information declaration end

    final public class Builder : GeneratedMessageBuilder {
        fileprivate var builderResult:User = User()
        public func getMessage() -> User {
            return builderResult
        }

        required override public init () {
            super.init()
        }
        public var userName:String {
            get {
                return builderResult.userName
            }
            set (value) {
                builderResult.hasUserName = true
                builderResult.userName = value
            }
        }
        public var hasUserName:Bool {
            get {
                return builderResult.hasUserName
            }
        }
        @discardableResult
        public func setUserName(_ value:String) -> User.Builder {
            self.userName = value
            return self
        }
        @discardableResult
        public func clearUserName() -> User.Builder{
            builderResult.hasUserName = false
            builderResult.userName = nil
            return self
        }
        public var password:String {
            get {
                return builderResult.password
            }
            set (value) {
                builderResult.hasPassword = true
                builderResult.password = value
            }
        }
        public var hasPassword:Bool {
            get {
                return builderResult.hasPassword
            }
        }
        @discardableResult
        public func setPassword(_ value:String) -> User.Builder {
            self.password = value
            return self
        }
        @discardableResult
        public func clearPassword() -> User.Builder{
            builderResult.hasPassword = false
            builderResult.password = nil
            return self
        }
            public var type:User.AcountType {
                get {
                    return builderResult.type
                }
                set (value) {
                    builderResult.hasType = true
                    builderResult.type = value
                }
            }
            public var hasType:Bool{
                get {
                    return builderResult.hasType
                }
            }
        @discardableResult
            public func setType(_ value:User.AcountType) -> User.Builder {
              self.type = value
              return self
            }
        @discardableResult
            public func clearType() -> User.Builder {
               builderResult.hasType = false
               builderResult.type = .guest
               return self
            }
        override public var internalGetResult:GeneratedMessage {
            get {
                return builderResult
            }
        }
        @discardableResult
        override public func clear() -> User.Builder {
            builderResult = User()
            return self
        }
        override public func clone() throws -> User.Builder {
            return try User.builderWithPrototype(prototype:builderResult)
        }
        override public func build() throws -> User {
            try checkInitialized()
            return buildPartial()
        }
        public func buildPartial() -> User {
            let returnMe:User = builderResult
            return returnMe
        }
        @discardableResult
        public func mergeFrom(other:User) throws -> User.Builder {
            if other == User() {
                return self
            }
            if other.hasUserName {
                userName = other.userName
            }
            if other.hasPassword {
                password = other.password
            }
            if other.hasType {
                type = other.type
            }
            try merge(unknownField: other.unknownFields)
            return self
        }
        @discardableResult
        override public func mergeFrom(codedInputStream: CodedInputStream) throws -> User.Builder {
            return try mergeFrom(codedInputStream: codedInputStream, extensionRegistry:ExtensionRegistry())
        }
        @discardableResult
        override public func mergeFrom(codedInputStream: CodedInputStream, extensionRegistry:ExtensionRegistry) throws -> User.Builder {
            let unknownFieldsBuilder:UnknownFieldSet.Builder = try UnknownFieldSet.builderWithUnknownFields(copyFrom:self.unknownFields)
            while (true) {
                let protobufTag = try codedInputStream.readTag()
                switch protobufTag {
                case 0: 
                    self.unknownFields = try unknownFieldsBuilder.build()
                    return self

                case 10:
                    userName = try codedInputStream.readString()

                case 18:
                    password = try codedInputStream.readString()

                case 24:
                    let valueInttype = try codedInputStream.readEnum()
                    if let enumstype = User.AcountType(rawValue:valueInttype){
                        type = enumstype
                    } else {
                        try unknownFieldsBuilder.mergeVarintField(fieldNumber: 3, value:Int64(valueInttype))
                    }

                default:
                    if (!(try parse(codedInputStream:codedInputStream, unknownFields:unknownFieldsBuilder, extensionRegistry:extensionRegistry, tag:protobufTag))) {
                        unknownFields = try unknownFieldsBuilder.build()
                        return self
                    }
                }
            }
        }
        class override public func decodeToBuilder(jsonMap:Dictionary<String,Any>) throws -> User.Builder {
            let resultDecodedBuilder = User.Builder()
            if let jsonValueUserName = jsonMap["userName"] as? String {
                resultDecodedBuilder.userName = jsonValueUserName
            }
            if let jsonValuePassword = jsonMap["password"] as? String {
                resultDecodedBuilder.password = jsonValuePassword
            }
            if let jsonValueType = jsonMap["type"] as? String {
                resultDecodedBuilder.type = try User.AcountType.fromString(jsonValueType)
            }
            return resultDecodedBuilder
        }
        override class public func fromJSONToBuilder(data:Data) throws -> User.Builder {
            let jsonData = try JSONSerialization.jsonObject(with:data, options: JSONSerialization.ReadingOptions(rawValue: 0))
            guard let jsDataCast = jsonData as? Dictionary<String,Any> else {
              throw ProtocolBuffersError.invalidProtocolBuffer("Invalid JSON data")
            }
            return try User.Builder.decodeToBuilder(jsonMap:jsDataCast)
        }
    }

}

extension User: GeneratedMessageProtocol {
    public class func parseArrayDelimitedFrom(inputStream: InputStream) throws -> Array<User> {
        var mergedArray = Array<User>()
        while let value = try parseDelimitedFrom(inputStream: inputStream) {
          mergedArray.append(value)
        }
        return mergedArray
    }
    public class func parseDelimitedFrom(inputStream: InputStream) throws -> User? {
        return try User.Builder().mergeDelimitedFrom(inputStream: inputStream)?.build()
    }
    public class func parseFrom(data: Data) throws -> User {
        return try User.Builder().mergeFrom(data: data, extensionRegistry:UserRoot.default.extensionRegistry).build()
    }
    public class func parseFrom(data: Data, extensionRegistry:ExtensionRegistry) throws -> User {
        return try User.Builder().mergeFrom(data: data, extensionRegistry:extensionRegistry).build()
    }
    public class func parseFrom(inputStream: InputStream) throws -> User {
        return try User.Builder().mergeFrom(inputStream: inputStream).build()
    }
    public class func parseFrom(inputStream: InputStream, extensionRegistry:ExtensionRegistry) throws -> User {
        return try User.Builder().mergeFrom(inputStream: inputStream, extensionRegistry:extensionRegistry).build()
    }
    public class func parseFrom(codedInputStream: CodedInputStream) throws -> User {
        return try User.Builder().mergeFrom(codedInputStream: codedInputStream).build()
    }
    public class func parseFrom(codedInputStream: CodedInputStream, extensionRegistry:ExtensionRegistry) throws -> User {
        return try User.Builder().mergeFrom(codedInputStream: codedInputStream, extensionRegistry:extensionRegistry).build()
    }
    public subscript(key: String) -> Any? {
        switch key {
        case "userName": return self.userName
        case "password": return self.password
        case "type": return self.type
        default: return nil
        }
    }
}
extension User.Builder: GeneratedMessageBuilderProtocol {
    public typealias GeneratedMessageType = User
    public subscript(key: String) -> Any? {
        get { 
            switch key {
            case "userName": return self.userName
            case "password": return self.password
            case "type": return self.type
            default: return nil
            }
        }
        set (newSubscriptValue) { 
            switch key {
            case "userName":
                guard let newSubscriptValue = newSubscriptValue as? String else {
                    return
                }
                self.userName = newSubscriptValue
            case "password":
                guard let newSubscriptValue = newSubscriptValue as? String else {
                    return
                }
                self.password = newSubscriptValue
            case "type":
                guard let newSubscriptValue = newSubscriptValue as? User.AcountType else {
                    return
                }
                self.type = newSubscriptValue
            default: return
            }
        }
    }
}

// @@protoc_insertion_point(global_scope)