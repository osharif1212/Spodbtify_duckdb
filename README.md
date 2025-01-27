### Using this project

#### Create a virtualenv for the requirements
```python
python3 -m venv env_1.7
source ./env_1.7/bin/activate #Optional to make it easier to run commands
./env_1.7/bin/pip install -r requirements.txt
```

#### Run dev
```
dbt run --target dev
```

#### Run prod
```
dbt run --target prod
```

#### Run the whole project
```
make run
```

#### Generate doc
```
make doc
```