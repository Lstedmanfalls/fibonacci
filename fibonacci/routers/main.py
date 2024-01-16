from fastapi import APIRouter, HTTPException
from pydantic import BaseModel
from ..services.fibonacci import get_fibonacci_series

router = APIRouter()


# pydantic checks that request has valid key and value type, or raises 422
class Num(BaseModel):
    num: int


@router.post("/fibonacci")
def fibonacci(input: Num):
    if input.num <= 0:
        raise HTTPException(status_code=422, detail="Number must be greater than 0")
    return get_fibonacci_series(input.num)
