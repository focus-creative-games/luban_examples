
//------------------------------------------------------------------------------
// <auto-generated>
//     This code was generated by a tool.
//     Changes to this file may cause incorrect behavior and will be lost if
//     the code is regenerated.
// </auto-generated>
//------------------------------------------------------------------------------
package cfg.test;
public enum ETestUeType
{
    /**
     * 白
     */
    WHITE(0),
    BLACK(1),
    ;

    private final int value;

    public int getValue() {
        return value;
    }

    ETestUeType(int value) {
        this.value = value;
    }

    public static ETestUeType valueOf(int value) {
        if (value == 0) return WHITE;
        if (value == 1) return BLACK;
        throw new IllegalArgumentException("");
    }
}
