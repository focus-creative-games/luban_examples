
//------------------------------------------------------------------------------
// <auto-generated>
//     This code was generated by a tool.
//     Changes to this file may cause incorrect behavior and will be lost if
//     the code is regenerated.
// </auto-generated>
//------------------------------------------------------------------------------
package cfg.ai;
public enum EKeyType {
    BOOL(1),
    INT(2),
    FLOAT(3),
    STRING(4),
    VECTOR(5),
    ROTATOR(6),
    NAME(7),
    CLASS(8),
    ENUM(9),
    OBJECT(10),
    ;

    private final int value;

    public int getValue() {
        return value;
    }

    EKeyType(int value) {
        this.value = value;
    }

    public static EKeyType valueOf(int value) {
        if (value == 1) return BOOL;
        if (value == 2) return INT;
        if (value == 3) return FLOAT;
        if (value == 4) return STRING;
        if (value == 5) return VECTOR;
        if (value == 6) return ROTATOR;
        if (value == 7) return NAME;
        if (value == 8) return CLASS;
        if (value == 9) return ENUM;
        if (value == 10) return OBJECT;
        throw new IllegalArgumentException("");
    }
}