package br.carsoft.entities;

public class Concessionaria {

    private int id_concessionaria;
    private String cnpj;
    private String nome_fantasia;
    private String razao_social;

    public void setId_concessionaria(int id_concessionaria) {
        this.id_concessionaria = id_concessionaria;
    }

    public void setCnpj(String cnpj) {
        this.cnpj = cnpj;
    }

    public void setNome_fantasia(String nome_fantasia) {
        this.nome_fantasia = nome_fantasia;
    }

    public void setRazao_social(String razao_social) {
        this.razao_social = razao_social;
    }

    public int getId_concessionaria() {
        return id_concessionaria;
    }

    public String getCnpj() {
        return cnpj;
    }

    public String getNome_fantasia() {
        return nome_fantasia;
    }

    public String getRazao_social() {
        return razao_social;
    }
}
