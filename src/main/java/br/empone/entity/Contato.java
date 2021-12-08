package br.empone.entity;

import java.io.Serializable;
import java.util.Objects;

public class Contato implements Serializable{
	
	int id;
	private String nome;
	private String endereco;
	private String email;
	private String descricao;
	
	public Contato(int id, String nome, String endereco, String email, String descricao) {
		super();
		this.id = id;
		this.nome = nome;
		this.endereco = endereco;
		this.email = email;
		this.descricao = descricao;
	}

	public void Contato(int id, String nome, String endereco, String email, String descricao) {
		// TODO Auto-generated constructor stub
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getNome() {
		return nome;
	}

	public void setNome(String nome) {
		this.nome = nome;
	}

	public String getEndereco() {
		return endereco;
	}

	public void setEndereco(String endereco) {
		this.endereco = endereco;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getDescricao() {
		return descricao;
	}

	public void setDescricao(String descricao) {
		this.descricao = descricao;
	}
	
	@Override
	public int hashCode() {
		return Objects.hash(descricao, email, endereco, id, nome);
	}

	@Override
	public boolean equals(Object obj) {
		if (this == obj)
			return true;
		if (obj == null)
			return false;
		if (getClass() != obj.getClass())
			return false;
		Contato other = (Contato) obj;
		return Objects.equals(descricao, other.descricao) && Objects.equals(email, other.email)
				&& Objects.equals(endereco, other.endereco) && id == other.id && Objects.equals(nome, other.nome);
	}

	@Override
	public String toString() {
		return "Contato [id=" + id + ", nome=" + nome + ", endereco=" + endereco + ", email=" + email + ", descricao="
				+ descricao + "]";
	}
	
}
