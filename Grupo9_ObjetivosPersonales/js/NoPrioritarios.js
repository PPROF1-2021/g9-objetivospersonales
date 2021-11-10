class NoPrioritarios extends Dato{
    static contadorNoPrioritarios = 0;

    constructor(descripcion){
        super(descripcion);
    }
    get id(){
        return this._id;
    }
}