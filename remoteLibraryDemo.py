from robotremoteserver import RobotRemoteServer
class RemoteLibraryDemo:

    def plus(self,a,b):
        return a+b


if __name__=="__main__":
    RobotRemoteServer(RemoteLibraryDemo(),"127.0.0.1","9999")