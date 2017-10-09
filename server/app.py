
from flask import Flask, request
from ProtoSchema import user_pb2, tasks_pb2
from dummy_data import admin, tasks
app = Flask(__name__)


# @app.route("/login/user/" , methods=['GET'])
@app.route("/login/user", methods=['POST'])
def log_in(): 
    admin_user =  admin()
    user_dict = request.args
    print user_dict
    user = user_pb2.User()
    user.user_name = user_dict["name"]
    user.password = user_dict["password"]
    if user.user_name == admin_user.user_name and user.password == admin_user.password:
        return user.SerializeToString()
    return "false"


@app.route("/tasks",  methods=["GET"])
def task():
    taskResponse = tasks_pb2.TasksResponse()
    taskResponse.tasks.extend(tasks)
    print taskResponse.SerializeToString()
    return taskResponse.SerializeToString()
    
    

if __name__ == "__main__":
    app.run()
