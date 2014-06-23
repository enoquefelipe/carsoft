package br.carsoft.entities;

public class Pessoa {

    private int id_pessoa;
    private String nome;
    private String rg;
    private String cpf;
    private String nascimento;
    private String sexo;

    public Pessoa(int id_pessoa, String nome, String rg, String cpf, String nascimento, String sexo) {
        this.id_pessoa = id_pessoa;
        this.nome = nome;
        this.rg = rg;
        this.cpf = cpf;
        this.nascimento = nascimento;
        this.sexo = sexo;
    }

    public Pessoa() {
    }

    public String getNome() {
        return nome;
    }

    public String getRg() {
        return rg;
    }

    public String getCpf() {
        return cpf;
    }

    public String getNascimento() {
        return nascimento;
    }

    public String getSexo() {
        return sexo;
    }

    public int getId_pessoa() {
        return id_pessoa;
    }

    public void setNome(String nome) {
        this.nome = nome;
    }

    public void setRg(String rg) {
        this.rg = rg;
    }

    public void setCpf(String cpf) {
        this.cpf = cpf;
    }

    public void setNascimento(String nascimento) {
        this.nascimento = nascimento;
    }

    public void setSexo(String sexo) {
        this.sexo = sexo;
    }

    public void setId_pessoa(int id_pessoa) {
        this.id_pessoa = id_pessoa;
    }
}
