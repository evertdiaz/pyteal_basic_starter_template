from pyteal import *
from pyteal.ast.bytes import Bytes

def clear():
  return Return(
    Int(1)
  )

if __name__ == '__main__':
  print(compileTeal(clear(), Mode.Application, version=6))