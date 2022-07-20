from pyteal import *
from pyteal.ast.bytes import Bytes

# recommended way
def approval():
  return Seq(
    Return(Int(1))
  )
  
if __name__ == '__main__':
  print(compileTeal(approval(), mode=Mode.Application, version=5))

# Another way to write for compilation

# def approval():
#   program = Seq(
#     Return(Int(1))
#   )
#   return compileTeal(program, Mode.Application, version=6)

# print(approval())