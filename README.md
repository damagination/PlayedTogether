
This is a simple Python scraper that helps you determine whether two football (soccer) players ever played together as teammates and when. The data is pulled from www.soccerbase.com. Currently only a command line utility and only works with full names correctly spelled.

Python2 run do:
```bash
$ python pt.py
```
for Python3 do:
```bash
$ python3 pt.py
```

Troubleshooting(Made for OS X):
1. "ImportError: No module named '<module name>'"
    - Run the included setup script to install OS X missing dependencies
    ```bash
    $ chmod +x setup.sh
    $ ./setup.sh
    ```

    If all dependencies are satisfied:
    - pip install -r requirements.txt (python2)
    - python3 -m pip -r requirements.txt (Python3)

    General fix:
    - pip install <missing module> (for python2)
    - python3 -m pip install <missing module> (for python3)

2. Permissions
    - Pip and the included script do not require root privilege(sudo) to run.
      if installation of any modules fails because of permission errors, use ```bash pip install --user <module name> ```
      or add ```bash sudo -H ``` before pip command. Please refer to http://kazhack.org/?post/2014/12/12/pip-gem-install-without-sudo
      and http://stackoverflow.com/questions/21055859/what-are-the-risks-of-running-sudo-pip about using sudo with pip.
