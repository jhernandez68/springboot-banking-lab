from pathlib import Path
import sqlite3

root = Path(__file__).resolve().parent.parent
database_path = root / "banking-lab.db"
schema_path = root / "database" / "schema.sql"
seed_path = root / "database" / "seed.sql"

if database_path.exists():
    database_path.unlink()

connection = sqlite3.connect(database_path)
connection.executescript(schema_path.read_text(encoding="utf-8"))
connection.executescript(seed_path.read_text(encoding="utf-8"))
connection.commit()
connection.close()

print(f"Base de datos recreada en {database_path}")
