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
task1.status = data_pb2.DOING
task1.time = 1507541540

task2 = data_pb2.Task()
task2.id = 2
task2.name = "Protobuf Flask python server "
task2.status = data_pb2.FINISHED
task2.time = 1507541540


task3 = data_pb2.Task()
task3.id = 3
task3.name = "Build Rxswift ios Demo"
task3.status = data_pb2.DOING
task2.time = 1507541540

task4 = data_pb2.Task()
task4.id = 4
task4.name = "learn android "
task4.status = data_pb2.FINISHED
task4.time = 1507541540

task5 = data_pb2.Task()
task5.id = 5
task5.name = "learn Ruby"
task5.status = data_pb2.DOING
task5.time = 1507541540

task6 = data_pb2.Task()
task6.id = 6
task6.name = "learn Java"
task6.status = data_pb2.DOING
task6.time = 1507541540

task7 = data_pb2.Task()
task7.id = 7
task7.name = "learn CC"
task7.status = data_pb2.FINISHED
task7.time = 1507541540

tasks = [task1, task2, task3, task4 , task5 , task6 , task7]

