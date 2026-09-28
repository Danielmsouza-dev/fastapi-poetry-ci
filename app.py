from fastapi import FastAPI


app = FastAPI(title="FastAPI Poetry CI")


@app.get("/health")
def health_check():
    return {"status": "ok"}
