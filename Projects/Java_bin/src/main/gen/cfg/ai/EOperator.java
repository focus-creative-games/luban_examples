
//------------------------------------------------------------------------------
// <auto-generated>
//     This code was generated by a tool.
//     Changes to this file may cause incorrect behavior and will be lost if
//     the code is regenerated.
// </auto-generated>
//------------------------------------------------------------------------------
package cfg.ai;
public enum EOperator
{
    IS_EQUAL_TO(0),
    IS_NOT_EQUAL_TO(1),
    IS_LESS_THAN(2),
    IS_LESS_THAN_OR_EQUAL_TO(3),
    IS_GREAT_THAN(4),
    IS_GREAT_THAN_OR_EQUAL_TO(5),
    CONTAINS(6),
    NOT_CONTAINS(7),
    ;

    private final int value;

    public int getValue() {
        return value;
    }

    EOperator(int value) {
        this.value = value;
    }

    public static EOperator valueOf(int value) {
        if (value == 0) return IS_EQUAL_TO;
        if (value == 1) return IS_NOT_EQUAL_TO;
        if (value == 2) return IS_LESS_THAN;
        if (value == 3) return IS_LESS_THAN_OR_EQUAL_TO;
        if (value == 4) return IS_GREAT_THAN;
        if (value == 5) return IS_GREAT_THAN_OR_EQUAL_TO;
        if (value == 6) return CONTAINS;
        if (value == 7) return NOT_CONTAINS;
        throw new IllegalArgumentException("");
    }
}
