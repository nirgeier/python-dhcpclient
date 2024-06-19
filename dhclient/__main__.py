from dhclient import dhclient, __app_name__


def main():
    '''
    The main function of this package
    '''
    dhclient.app(prog_name=__app_name__)


if __name__ == "__main__":
    '''
    Invoke the main function if we are "executing" our module
    '''
    main()
