# Python3

**Create a python virtual environment**
```
$ python3 -m venv my_environment
$ source my_environment/bin/activate
$ pip3 install module1 module2 ... moduleN
```

**Update pip**
```
$ pip install --upgrade pip
```

**Create a exec/binary from a python script**
```
$ source my_environment/bin/activate
$ pip install pyinstaller
$ rm -rf build dist __pycache__ my_script.spec
$ pyinstaller --onefile --windowed --icon=meu_icone.ico my_script.py
```

**Install requirements (requirements.txt)**
```
$ pip install -r requirements.txt
```


```
@dnat
```
