import duckdb

if __name__ == "__main__":
    # Create a new persistent database
    con = duckdb.connect('db/duckdb.db', read_only=False)
    print("🎉 Database duckdb.db created successfully")

    # Create the raw and analytics schema
    con.execute("CREATE SCHEMA IF NOT EXISTS raw")
    con.execute("CREATE SCHEMA IF NOT EXISTS analytics")
    print("🎉 Schema raw and analytics created successfully")

    # import the data from csv in the source_data folder
    con.execute("CREATE TABLE IF NOT EXISTS raw.bikeshare_day as from 'source_data/bikeshare/bikeshare_day.csv'")
    print("🎉 Table duckdb.raw.bikeshare_day created successfully")

    # Print the first 5 rows of the table
    print("\n👀 Here are the first 5 rows of source table duckdb.raw.bikeshare_day:")
    sample = con.execute("SELECT * FROM raw.bikeshare_day LIMIT 5").fetchall()
    for row in sample:
        print(row)
    # Close the connection
    con.close()
    print("\n👋 Connection closed\n")
