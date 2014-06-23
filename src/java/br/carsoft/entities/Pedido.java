package br.carsoft.entities;

public class Pedido {

    private int id_pedido;
    private String data_pedido;
    private String status_pedido;
    private String valor_pedido;
    private int id_veiculo;
    private int id_kit;
    private int id_interessado;
    private int id_concessionaria1;
    private int id_concessionaria2;
    private int id_concessionaria3;

    public int getId_pedido() {
        return id_pedido;
    }

    public String getData_pedido() {
        return data_pedido;
    }

    public String getStatus_pedido() {
        return status_pedido;
    }

    public String getValor_pedido() {
        return valor_pedido;
    }

    public int getId_veiculo() {
        return id_veiculo;
    }

    public int getId_kit() {
        return id_kit;
    }

    public int getId_interessado() {
        return id_interessado;
    }

    public int getId_concessionaria1() {
        return id_concessionaria1;
    }

    public int getId_concessionaria2() {
        return id_concessionaria2;
    }

    public int getId_concessionaria3() {
        return id_concessionaria3;
    }

    public void setId_pedido(int id_pedido) {
        this.id_pedido = id_pedido;
    }

    public void setData_pedido(String data_pedido) {
        this.data_pedido = data_pedido;
    }

    public void setStatus_pedido(String status_pedido) {
        this.status_pedido = status_pedido;
    }

    public void setValor_pedido(String valor_pedido) {
        this.valor_pedido = valor_pedido;
    }

    public void setId_veiculo(int id_veiculo) {
        this.id_veiculo = id_veiculo;
    }

    public void setId_kit(int id_kit) {
        this.id_kit = id_kit;
    }

    public void setId_interessado(int id_interessado) {
        this.id_interessado = id_interessado;
    }

    public void setId_concessionaria1(int id_concessionaria1) {
        this.id_concessionaria1 = id_concessionaria1;
    }

    public void setId_concessionaria2(int id_concessionaria2) {
        this.id_concessionaria2 = id_concessionaria2;
    }

    public void setId_concessionaria3(int id_concessionaria3) {
        this.id_concessionaria3 = id_concessionaria3;
    }
}
