# BeamNG-ByteCodeLoader-poc
Proof of concept for loading bytecode in BeamNG

1. Drop this directory as is into your game installation at `Bin64/*`
2. Go into the `Bin64/lua_to_bytecode` directory and run `run.bat`
3. It will take the code from `src.lua` and converts it to bytecode
4. Result is written to your **Userfolder** at `lua_to_bytecode/src.bin`
5. This result is then read, loaded and test run


`lua_to_bytecode/to_bytecode.lua` contains the source that the game console executes


Enjoy o/