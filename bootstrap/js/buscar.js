function buscaClientes(nome){
    $.ajax({
        url:"busca.php",
        method:"POST",
        data:{nome:nome},
        success : function(data){
            $("#resultado").html(data);
        }
    }
    );
    $(document).ready(function(){
        var nome = $(this).val();
        if(nome != ''){
            buscaClientes(nome);
        }
        else{
            buscaClientes();
        }
    });
}