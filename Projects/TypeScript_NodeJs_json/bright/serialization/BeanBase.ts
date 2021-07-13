import ByteBuf from "./ByteBuf";
import ISerializable from "./ISerializable";

export default abstract class BeanBase implements ISerializable {
    abstract getTypeId(): number
    abstract serialize(_buf_: ByteBuf): void
    abstract deserialize(_buf_: ByteBuf): void
}