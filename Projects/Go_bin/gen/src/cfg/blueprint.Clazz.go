
//------------------------------------------------------------------------------
// <auto-generated>
//     This code was generated by a tool.
//     Changes to this file may cause incorrect behavior and will be lost if
//     the code is regenerated.
// </auto-generated>
//------------------------------------------------------------------------------
package cfg

import "bright/serialization"



type Blueprint_Clazz struct {
    
    Name string
    Desc string
    Parents []interface{}
    Methods []interface{}
}



func NewBlueprint_Clazz(_buf *serialization.ByteBuf) (_v *Blueprint_Clazz, err error) {
    _v = &Blueprint_Clazz{}

    if _v.Name, err = _buf.ReadString(); err != nil  { return } 
    if _v.Desc, err = _buf.ReadString(); err != nil  { return } 
    if _v.Parents, err = func (_buf2 *serialization.ByteBuf) (_v2 []interface{}, err2 error) {
                _v2 = make([]interface{}, 0)
                var n int
                if n, err2 = _buf2.ReadSize(); err2 != nil {return}
                for i := 0 ; i < n ; i++ {
                    var v3 interface{}
                    if v3, err2 = NewChildBlueprint_Clazz(_buf2); err2 != nil {return}
                    _v2 = append(_v2, v3)
                }
                return
                }(_buf); err != nil  { return } 
    if _v.Methods, err = func (_buf2 *serialization.ByteBuf) (_v2 []interface{}, err2 error) {
                _v2 = make([]interface{}, 0)
                var n int
                if n, err2 = _buf2.ReadSize(); err2 != nil {return}
                for i := 0 ; i < n ; i++ {
                    var v3 interface{}
                    if v3, err2 = NewChildBlueprint_Method(_buf2); err2 != nil {return}
                    _v2 = append(_v2, v3)
                }
                return
                }(_buf); err != nil  { return } 
    return
}

func NewChildBlueprint_Clazz(_buf *serialization.ByteBuf) (_v interface{}, err error) {
    var id int32
    if id, err = _buf.ReadInt() ; err != nil {
        return
    }
    switch id {
            case 0 : return nil, nil
            case 2114170750: return NewBlueprint_Interface(_buf);
            case -2073576778: return NewBlueprint_NormalClazz(_buf);
            case 1827364892: return NewBlueprint_EnumClazz(_buf);
    }
    return
}


