
local lua_src = "Bin64/lua_to_bytecode/src.lua"
local lua_bin = "lua_to_bytecode/src.bin" -- this will be found in your userfolder

-- load source
print("Loading source")
local handle = io.open(lua_src, "r")
if handle == nil then print(lua_src .. " is missing"); return nil end
local source = handle:read("*all")
handle:close()

-- convert to bin
print("Converting to bytecode")
local tobin, err = load(source)
if err then print(err); return nil end
local ok, tobin = pcall(tobin)
if not ok then print(tobin); return nil end
tobin = string.dump(tobin)

-- write to disk
print("Writing to file")
handle = io.open(lua_bin, "w")
if handle == nil then print("Cannot write to " .. lua_bin); return nil end
handle:write(tobin)
handle:close()

-- test
print("")
print("Testing")
handle = io.open(lua_bin, "r")
local bin = handle:read("*all")
handle:close()
bin = load(bin)
bin(1, 2)

