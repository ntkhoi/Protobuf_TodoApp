#!/bin/bash
echo 'Running ProtoBuf Compiler to convert .proto schema to Swift'
protoc --swift_out=. user.proto
protoc --swift_out=. data.proto
protoc --swift_out=. tasks.proto
echo 'Running Protobuf Compiler to convert .proto schema to Python'
protoc -I=. --python_out=. ./user.proto
protoc -I=. --python_out=. ./tasks.proto
protoc -I=. --python_out=. ./data.proto