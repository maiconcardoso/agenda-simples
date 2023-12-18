/**
 * Confirmação de exclusão de contatos
 */

 function confirmar(idcon) {
	 let resposta = confirm("Confirma a exclusão deste contato?");
	 if (resposta === true) {
		 //alert(icon);
		 window.location.href = "delete?idcon=" + idcon;
	 }
 }