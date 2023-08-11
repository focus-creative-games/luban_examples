local require = require
local print = print

local C = {}

local require = require
local assert = assert
local pairs = pairs
local print = print
local tinsert = table.insert
local tconcat = table.concat

local function ttostring2(x, result)
    local t = type(x)
    if t == "table" then
        tinsert(result, "{")
        for k, v in pairs(x) do
            tinsert(result, tostring(k))
            tinsert(result, "=")
            ttostring2(v, result)
            tinsert(result, ",")
        end

        tinsert(result, "}")
    elseif t == "string" then
        tinsert(result, x)
    else
        tinsert(result, tostring(x))
    end
end

function ttostring(t)
    local out = {}
    ttostring2(t, out)
    return tconcat(out)
end


ByteBuf = CS.Bright.Serialization.ByteBuf

local byteBufIns = ByteBuf()

local byteBufFuns = {
    readBool = byteBufIns.ReadBool,
    writeBool = byteBufIns.WriteBool,
    readByte = byteBufIns.ReadByte,
    writeByte = byteBufIns.WriteByte,
    readShort = byteBufIns.ReadShort,
    writeShort = byteBufIns.WriteShort,
    readFshort = byteBufIns.ReadFshort,
    writeInt = byteBufIns.WriteInt,
    readInt = byteBufIns.ReadInt,
    writeFint = byteBufIns.WriteFint,
    readFint = byteBufIns.ReadFint,
    readLong = byteBufIns.ReadLong,
    writeLong = byteBufIns.WriteLong,
    readFlong = byteBufIns.ReadFlong,
    writeFlong = byteBufIns.WriteFlong,
    readFloat = byteBufIns.ReadFloat,
    writeFloat = byteBufIns.WriteFloat,
    readDouble = byteBufIns.ReadDouble,
    writeDouble = byteBufIns.WriteDouble,
    readSize = byteBufIns.ReadSize,
    writeSize = byteBufIns.WriteSize,
    readString = byteBufIns.ReadString,
    writeString = byteBufIns.WriteString,
    readBytes = byteBufIns.ReadBytes,
    writeBytes = byteBufIns.WriteBytes
}

function read_file_all_bytes(fileName)
    local file = io.open(fileName, "rb")
    local bytes = file:read("*a")
    file:close()
    return bytes
end


local enumDefs = {}
local constDefs = {}

local tables = {}

---@param configPath string
---@param configFileloader function
function Load(typeDefs, configFileloader)

    local configPath = CS.UnityEngine.Application.dataPath .. "/../../GenerateDatas/bytes/"
	
    enumDefs = typeDefs.enums
    constDefs = typeDefs.consts

    local buf = ByteBuf()
    local tableDefs = typeDefs.tables
    local beanDefs = typeDefs.beans
    for _, t in pairs(tableDefs) do
        --print("load table:", ttostring(t))
        buf:Clear()
        buf:WriteBytesWithoutSize(read_file_all_bytes(configPath .. "/" .. t.file .. ".bytes"))

        local valueType = beanDefs[t.value_type]
        local mode = t.mode

        local tableDatas
        if mode == "map" then
            tableDatas = {}
			local index = t.index
            for i = 1, buf:ReadSize() do
                local v = valueType._deserialize(buf)
                tableDatas[v[index]] = v
            end
        elseif mode == "list" then
            tableDatas = {}
            for i = 1, buf:ReadSize() do
                local v = valueType._deserialize(buf)
                tinsert(tableDatas, v)
            end
        else
            assert(buf:ReadSize() == 1)
            tableDatas = valueType._deserialize(buf)
        end
		print(ttostring(tableDatas))
        tables[t.name] = tableDatas
    end
end

---@param typeName string
---@param key string
function GetEnum(typeName, key)
    local def = enumDefs[typeName]
    return key and def[key] or def
end

---@param typeName string
---@param field string
function GetConst(typeName, field)
    local def = constDefs[typeName]
    return field and def[field] or constDefs
end

function GetData(tableName, key1, key2)
    local tableDatas = tables[tableName]
    if not key1 then
        return tableDatas
    end
    local value1 = tableDatas[key1]
    return key2 and value1[key2] or value1
end



function C.Start()
    local cfgTypeDefs = require("Gen.schema").InitTypes(byteBufFuns)
    Load(cfgTypeDefs)
end



return C
