package br.carsoft.entities;

public class Contato {

    private int id_contato;
    private String email;
    private String telefone;
    private String telefone2;
    private String celular;
    private String fax;

    public int getId_contato() {
        return id_contato;
    }

    public String getEmail() {
        return email;
    }

    public String getTelefone() {
        return telefone;
    }

    public String getTelefone2() {
        return telefone2;
    }

    public String getCelular() {
        return celular;
    }

    public String getFax() {
        return fax;
    }

    public void setId_contato(int id_contato) {
        this.id_contato = id_contato;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public void setTelefone(String telefone) {
        this.telefone = telefone;
    }

    public void setTelefone2(String telefone2) {
        this.telefone2 = telefone2;
    }

    public void setCelular(String celular) {
        this.celular = celular;
    }

    public void setFax(String fax) {
        this.fax = fax;
    }
}
