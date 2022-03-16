from fastapi import FastAPI

app = FastAPI()


@app.get("/")
def home():
    return {"message": "Funcionando perfeitamente"}


@app.get("/users")
def get_users():
    return [{"id": 0, "name": "fake_user"}]
