# import ProtoSchema.user_pb2
from ProtoSchema import user_pb2, data_pb2


def admin():
    """
    Create dummy admin user
    """
    user = user_pb2.User()
    user.user_name = "admin"
    user.password = "123456"
    return user

task1 = data_pb2.Task()
task1.id = 1
task1.name = "Build Rxswift Demo"
task1.status = data_pb2.DONE
task1.assignee.CopyFrom(admin())

task2 = data_pb2.Task()
task2.id = 2
task2.name = "Protobuf Flask server "
task2.status = data_pb2.INTESTING


task3 = data_pb2.Task()
task3.id = 3
task3.name = "Build Rxswift Demo"
task3.status = data_pb2.DOING
task3.assignee.CopyFrom(admin())

task4 = data_pb2.Task()
task4.id = 4
task4.name = "Build Rxswift Demo"
task4.status = data_pb2.TODO
task4.assignee.CopyFrom(admin())

tasks = [task1, task2, task3, task4]

