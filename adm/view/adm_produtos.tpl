<h4 class="text-center">Gerenciar Produtos</h4>
<hr>
<section class="row ">
    
    
 <div class="col-md-4"> </div>

 

    <div class="col-md-4"> </div>

    <div class="col-md-4 text-right">
        <a href="{$PAG_PRODUTO_NOVO}" class="btn btn-success"> <i class="glyphicon glyphicon-plus"></i> Novo Produto</a>

    </div>




</section>
<br>

<!--     exibe mensagem caso nao encontre produtos -->
 {if $PRO_TOTAL < 1}
    <h4 class="alert alert-danger">Ops... Nada foi encontrado </h4>  
 {/if}

        
    <!--  começa lista de produtos  ---->   
  <section id="produtos" class="row">  
      <div class="col-xs-12">
          <div class="table-responsive">
              <table class="table table-bordered table-striped table-hover">  
                  <tr class="bg-success text-success">
                      <th style="width: 70px;"></th> 
                      <th>Produto</th> 
                      <th>Categoria</th> 
                      <th>Preço</th> 
                      <th style="width: 50px;">Editar</th>      
                      <th style="width: 50px;">Fotos</th>      
                  </tr>
                  {foreach from=$PRO item=P}
                  <tr>
                      <td class="text-center">  <img src="{$P.pro_img_p}" alt="" class="img-responsive center-block" style="max-height: 50px;"> </td>
                      <td> {$P.pro_nome}</td>
                      <td>{$P.cate_nome}</td>
                      <td class="text-right">R$ {$P.pro_valor}</td>
                      <td class="text-center">
                          <form name="proeditar" method="post" action="{$PAG_PRODUTO_EDITAR}">
                              <input type="hidden" name="pro_id" id="pro_id" value="{$P.pro_id}">
                              <button class="btn btn-success btn-sm" title="Editar"> <i class="glyphicon glyphicon-pencil"></i> </button>
                          </form>  
                      </td>
                      <td class="text-center">
                          <form name="proimg" method="post" action="{$PAG_PRODUTO_IMG}">
                              <input type="hidden" name="pro_id" id="pro_id" value="{$P.pro_id}">
                              <input type="hidden" name="pro_nome" id="pro_nome" value="{$P.pro_nome}">
                              <button class="btn btn-info btn-sm" title="Fotos"> <i class="glyphicon glyphicon-picture"></i> </button>
                          </form>  
                      </td>
                  </tr>
                  {/foreach}
              </table>
          </div>
      </div>
  </section>
    
    
     <!--  paginação inferior   -->  
    <section id="pagincao" class="row">
    <center>
    {$PAGINAS}
    </center>
    </section>


