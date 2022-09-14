from sqlalchemy import create_engine
from sqlalchemy.orm import sessionmaker
from sqlalchemy.ext.declarative import declarative_base


# MySQL Series
# SQLALCHEMY_DATABASE_URL="mysql+pymysql://root:12345678@127.0.0.1:3306/todoapp"
# engine=create_engine(
#     SQLALCHEMY_DATABASE_URL
# )

# SQLite series
SQLALCHEMY_DATABASE_URL = "sqlite:///./todos.db"
engine = create_engine(
    SQLALCHEMY_DATABASE_URL, connect_args={"check_same_thread": False}
)

SessionLocal=sessionmaker(autocommit=False,autoflush=False,bind=engine)

Base=declarative_base()
