package br.empone.servlet;

import java.io.IOException;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import br.empone.entity.Contato;
import sun.tools.tree.ThisExpression;

/**
 * Servlet implementation class ContatoServlet
 */
@WebServlet("/ContatoServlet")
public class ContatoServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private List<Contato> contatos = new ArrayList<>();
	
	@Override
	public void init() throws ServletException {
		super.init();
	}
	
    /**
     * Default constructor. 
     */
    public ContatoServlet() {
    	super();
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		var acao = request.getParameter("acao");
		
		if(acao.equals("listar")) {
			request.setAttribute("contatos", this.contatos);
			request.getRequestDispatcher("/WEB-INF/views/lista_contato.jsp").forward(request, response);
			return;
		}
		
		if(acao.equals("editar")) {
			request.setAttribute("contato", this.getContatoById(Integer.parseInt(request.getParameter("id"))));
			request.getRequestDispatcher("/WEB-INF/views/index-contato.jsp").forward(request, response);
			return;
		}
		if(acao.equals("remover")) {
			this.removeContato(Integer.parseInt(request.getParameter("id")));
			request.setAttribute("contatos", this.contatos);
			request.getRequestDispatcher("/WEB-INF/views/lista_contato.jsp").forward(request, response);
			return;
		}
	}

	private Contato getContatoById(int id) {
		for(Contato contato: contatos) {
			if(contato.getId() == id) {
				return contato;
			}
		}
		return null;
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		var nome = request.getParameter("nome");
		var endereco = request.getParameter("endereco");
		var email = request.getParameter("email");
		var descricao = request.getParameter("descricao");
		
		if(request.getParameter("id") == null) {
		var contato = new Contato(getId(), nome, endereco, email, descricao);
		
		this.contatos.add(contato);
		response.sendRedirect("http://localhost:8080/empone-eng/ContatoServlet?acao=listar");
	    }else {
	    	var idContato = Integer.parseInt(request.getParameter("id"));
	    	var contato = new Contato (idContato, nome, endereco, email, descricao);
	    	
	    	this.atualizaContato(contato);
	    	
	    	response.sendRedirect("http://localhost:8080/empone-eng/ContatoServlet?acao=listar");
	    }
	}
	
	private void atualizaContato(Contato contato) {
		var indice = this.contatos.indexOf(getContatoById(contato.getId()));
		this.contatos.set(indice, contato);
	}
	
	private void removeContato(int id) {
		this.contatos.remove(this.getContatoById(id));
	}

	private int getId() {
		return this.contatos.size()+1;
	}

}
