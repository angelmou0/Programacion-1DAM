package modelo;

import java.io.Serializable;
import java.util.ArrayList;
import java.util.Date;

public class Cuenta implements Serializable {
    private long numero;
    private Cliente titular;
    private float saldo;
    private float interesAnual;
    private ArrayList<Movimiento> movimientos;

    //Constructor
    public Cuenta(long numero, Cliente titular, float interesAnual){
        this.numero = numero;
        this.titular= new Cliente(titular);//Se pone un new y así creamos una instancia nueva de ciente
        this.saldo = 0;
        this.interesAnual = interesAnual;
        movimientos = new ArrayList<Movimiento>();
    }

    //Constructor copia
    public Cuenta (Cuenta cuenta){
        this.interesAnual = cuenta.getInteresAnual();
        this.saldo = cuenta.getSaldo();
        this.titular = new Cliente(cuenta.getTitular());//Se pone un new y así creamos una instancia nueva de ciente
        this.numero = cuenta.getNumero();
        this.movimientos = cuenta.getMovimientos();
    }

    //Setter de la clase
    public void setInteresAnual(float interesAnual) {
        this.interesAnual = interesAnual;
    }
    public void setNumero(long numero) {
        this.numero = numero;
    }
    public void setTitular(Cliente titular) {this.titular = titular;}
    public void setSaldo(float saldo){
        this.saldo = saldo;
    }
    //getter de la clase
    public float getInteresAnual() {
        return interesAnual;
    }
    public float getSaldo() {
        return saldo;
    }
    public long getNumero() {
        return numero;
    }
    public ArrayList<Movimiento> getMovimientos() {
        return movimientos;
    }

    public Cliente getTitular() { //Devuelve una copia del titular para que desde fuera no puedan modificar el titular
        Cliente temp;
        temp = new Cliente(this.titular.getNombre(),this.titular.getApellidos(),this.titular.getDni(),
                this.titular.getNumMovil(),this.titular.getEmail(),this.titular.getFechNac());
        return temp;
    }

    //Otros metodos
    public void cambiaTitualr(Cliente titular){
        this.titular = titular;
    }
    public void ingreso (float cantidad ){
        saldo +=cantidad;
        movimientos.add(new Movimiento(new Date(),'I',cantidad,saldo));
    }
    public void reintegro (float cantidad){
        saldo -=cantidad;
        movimientos.add(new Movimiento(new Date(),'R',cantidad,saldo));
    }
    public void reintegro (float cantidad, float comision){
        float totalReintegro;
        totalReintegro = cantidad + comision;
        saldo -=totalReintegro;
        movimientos.add(new Movimiento(new Date(),'R',cantidad,saldo));
    }
    public void ingresoInteresMes(){
        float interes = interesAnual * saldo / 1200;
        saldo += interes;
        movimientos.add(new Movimiento(new Date(),'I',interes,saldo));
    }
    public boolean enRojos(){return (saldo<0);}
    public static float eurosAPesetas (float euros){return euros*166.386f;}

    static public class Movimiento implements Serializable{ //Como privada y así no es visible desde el exterior
        Date fecha;
        char tipo;
        float importe,saldo;

        public Movimiento(Date fecha, char tipo, float importe, float saldo){
            this.fecha = fecha;
            this.tipo = tipo;
            this.importe = importe;
            this.saldo = saldo;
        }

        public Date getFecha() {
            return fecha;
        }

        public char getTipo() {
            return tipo;
        }

        public float getImporte() {
            return importe;
        }

        public float getSaldo() {
            return saldo;
        }
    }
}


