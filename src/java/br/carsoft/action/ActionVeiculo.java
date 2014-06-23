package br.carsoft.action;

import br.carsoft.dao.VeiculoDAO;
import br.carsoft.entities.Veiculo;
import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;
import java.io.File;
import java.io.IOException;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import javax.servlet.http.HttpServletRequest;
import org.apache.commons.io.FileUtils;
import org.apache.struts2.ServletActionContext;
import org.apache.struts2.interceptor.ServletRequestAware;

public class ActionVeiculo extends ActionSupport implements ServletRequestAware {

    private Veiculo veiculo = new Veiculo();
    private List<Veiculo> listVeiculo = new ArrayList<>();
    
//    upload   
    public File toBeUploaded;
    public String fnameUp;
    public String toBeUploadedContentType;
    private HttpServletRequest servletRequest;
    // fim do upload

    public String cadastra() throws SQLException {
        VeiculoDAO dao = new VeiculoDAO();
        execute();
        veiculo.setImagem("upload/" + fnameUp);
        dao.cadastra(veiculo);
        return "Cadastrado";
    }

    public String lista() throws SQLException {
        VeiculoDAO dao = new VeiculoDAO();
        listVeiculo = dao.lista();
        return "Lista";
    }

    public String remove() throws Exception {
        VeiculoDAO dao = new VeiculoDAO();
        HttpServletRequest request = (HttpServletRequest) ActionContext.getContext().get(ServletActionContext.HTTP_REQUEST);
        dao.remove(Integer.parseInt(request.getParameter("id_veiculo")));
        return "Delete";
    }

    public String prepara() throws Exception {
        VeiculoDAO dao = new VeiculoDAO();
        HttpServletRequest request = (HttpServletRequest) ActionContext.getContext().get(ServletActionContext.HTTP_REQUEST);
        veiculo = dao.veiculoId(Integer.parseInt(request.getParameter("id_veiculo")));
        return "prepara";
    }

    public String edita() throws Exception {
        VeiculoDAO dao = new VeiculoDAO();
        veiculo = dao.edita(veiculo);
        return "editado";
    }

    public Veiculo getVeiculo() {
        return veiculo;
    }

    public void setVeiculo(Veiculo veiculo) {
        this.veiculo = veiculo;
    }

    public List<Veiculo> getListVeiculo() {
        return listVeiculo;
    }

    public void setListVeiculo(List<Veiculo> listVeiculo) {
        this.listVeiculo = listVeiculo;
    }

    @Override
    public String execute() {

        String filePath = servletRequest.getSession().getServletContext().getRealPath("/upload");

        File fileToCreate = new File(filePath, this.fnameUp);

        try {
            FileUtils.copyFile(this.toBeUploaded, fileToCreate);
        } catch (IOException e) {
            // TODO Auto-generated catch block
            addActionError(e.getMessage());
        }
        return fnameUp;
    }

    public File getToBeUploaded() {
        return toBeUploaded;
    }

    public void setToBeUploaded(File toBeUploaded) {
        this.toBeUploaded = toBeUploaded;
    }

    public String getToBeUploadedFileName() {
        return fnameUp;
    }

    public void setToBeUploadedFileName(String toBeUploadedFileName) {
        this.fnameUp = toBeUploadedFileName;
    }

    public String getToBeUploadedContentType() {
        return toBeUploadedContentType;
    }

    public void setToBeUploadedContentType(
            String toBeUploadedFileNameContentType) {
        this.toBeUploadedContentType = toBeUploadedFileNameContentType;
    }

    @Override
    public void setServletRequest(HttpServletRequest servletRequest) {
        this.servletRequest = servletRequest;
    }
}
