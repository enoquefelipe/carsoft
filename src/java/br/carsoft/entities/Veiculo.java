package br.carsoft.entities;

public class Veiculo {

    private int id_veiculo;
    private String modelo;
    private String ano;
    private String cor;
    private String motor;
    private String montadora;
    private String categoria;
    private String preco;
    private String imagem;

    public int getId_veiculo() {
        return id_veiculo;
    }

    public String getModelo() {
        return modelo;
    }

    public String getAno() {
        return ano;
    }

    public String getCor() {
        return cor;
    }

    public String getMotor() {
        return motor;
    }

    public String getMontadora() {
        return montadora;
    }

    public String getCategoria() {
        return categoria;
    }

    public String getPreco() {
        return preco;
    }

    public String getImagem() {
        return imagem;
    }

    public void setId_veiculo(int id_veiculo) {
        this.id_veiculo = id_veiculo;
    }

    public void setModelo(String modelo) {
        this.modelo = modelo;
    }

    public void setAno(String ano) {
        this.ano = ano;
    }

    public void setCor(String cor) {
        this.cor = cor;
    }

    public void setMotor(String motor) {
        this.motor = motor;
    }

    public void setMontadora(String montadora) {
        this.montadora = montadora;
    }

    public void setCategoria(String categoria) {
        this.categoria = categoria;
    }

    public void setImagem(String imagem) {
        this.imagem = imagem;
    }

    public void setPreco(String preco) {
        this.preco = preco;
    }
}
