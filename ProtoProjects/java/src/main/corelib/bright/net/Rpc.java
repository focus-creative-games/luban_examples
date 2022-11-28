package bright.net;

public abstract class Rpc<Arg,Res> extends Protocol {
    private Arg _arg;
    private Res _res;

    public final Arg getArg() {
        return _arg;
    }

    public final void setArg(Arg arg) {
        _arg = arg;
    }

    public final Res getRes() {
        return _res;
    }

    public final void setRes(Res res) {
        _res = res;
    }
}
