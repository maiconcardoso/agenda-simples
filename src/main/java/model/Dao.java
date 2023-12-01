package model;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;

public class Dao {
	
	/**
	 * Módulo de Conexão
	*/
	
	// Parâmetros de conexão
	private String driver = "com.mysql.cj.jdbc.Driver";
	private String url = "jdbc:mysql://127.0.0.1:3306/dbagenda?useTimezone=true&serverTimezone=UTC";
	private String user = "root";
	private String password = "mysql@123";
	
	// Método de conexão
	private Connection conectar() {
		
		Connection con = null;
		
		try {
			Class.forName(driver);
			con = DriverManager.getConnection(url, user, password);
			return con;
		} catch(Exception e) {
			System.out.println(e);
			return null;
		}
	}
	
	public void inserirContato(JavaBeans contato) {
		String create = "insert into contatos (nome, fone, email) values (?,?,?)";
		
		try {
			// Abrir conexão com o banco de dados
			Connection con = conectar();
			
			// Preparar a query para execução no banco de dados
			PreparedStatement pst = con.prepareStatement(create);
			
			// Substituir os parâmetros (?) pelas variáveis JavaBeans
			pst.setString(1, contato.getNome());
			pst.setString(2, contato.getFone());
			pst.setString(3, contato.getEmail());
			
			// Executar a query
			pst.executeUpdate();
			
			// Fechar a conexão do banco de dados
			con.close();
			
		} catch(Exception e) {
			System.err.println(e);
		}
	}

}
