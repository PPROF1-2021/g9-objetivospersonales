class Prioritarios extends Dato{
    static contadorPrioritarios = 0;

    constructor(descripcion){
        super(descripcion);
        this._id = ++Prioritarios.contadorPrioritarios;
    }

    get id(){
        return this._id;
    }
}
