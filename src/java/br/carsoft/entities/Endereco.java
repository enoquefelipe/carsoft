package br.carsoft.entities;

public class Endereco {

    private String bairro;
    private String lagradouro;
    private String complemento;
    private String numero;
    private String cep;
    private String cidade;
    private String estado;

    public String getBairro() {
        return bairro;
    }

    public String getLagradouro() {
        return lagradouro;
    }

    public String getComplemento() {
        return complemento;
    }

    public String getNumero() {
        return numero;
    }

    public String getCep() {
        return cep;
    }

    public String getCidade() {
        return cidade;
    }

    public String getEstado() {
        return estado;
    }

    public void setBairro(String bairro) {
        this.bairro = bairro;
    }

    public void setLagradouro(String lagradouro) {
        this.lagradouro = lagradouro;
    }

    public void setComplemento(String complemento) {
        this.complemento = complemento;
    }

    public void setNumero(String numero) {
        this.numero = numero;
    }

    public void setCep(String cep) {
        this.cep = cep;
    }

    public void setCidade(String cidade) {
        this.cidade = cidade;
    }

    public void setEstado(String estado) {
        this.estado = estado;
    }
}
