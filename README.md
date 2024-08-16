# peking-duck

Sample dbt project using DuckDB as the data store and source data from a bikeshare dataset.

## Prerequisites

- Python 3.x
- pip

## Setup

### 2. Clone the Repository

Clone the repository to your local machine:

### 1. Install Dependencies

Install the required Python packages using pip:

```sh
pip install -r requirements.txt
```

Packages include:

- dbt-core
- dbt-duckdb
- duckdb

### 3. Create the DuckDB Database
Here we will create a DuckDB database and load the bikeshare data into it.

```sh
python db_setup.py
```

This will create a DuckDB database called `duckdb.db` in the db directory, 
create schemas analytics and raw, 
and create a table called `bikeshare_day` in the raw schema from the `source_data/bikeshare/bikeshare_day.csv` file. 


### 4. Run the dbt Project
Execute the dbt project:

```sh
dbt run
```

## License
This project is licensed under the MIT License - see the [LICENSE](LICENSE) file for details.
```