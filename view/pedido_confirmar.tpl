  <h3>Confirmar Pedido</h3>
<hr>
<!-- botoes e opções de cima -->
<section class="row">
    
    <div class="col-md-12 " align="right">
        <a href="{$PAG_CARRINHO}" class="btn btn-info" title="">Voltar para Carrinho</a>
    </div>
    <div class="col-md-4">
        
    </div>
    <div class="col-md-4 text-right">
         
    </div>
    
</section>
    <br>

<!--  table listagem de itens -->
<section class="row">
    <div class="col-xs-12">
        <div class="table-responsive">
            <table class="table table-bordered table-striped">
                <thead>
                    <tr class="text-danger bg-danger">
                        <th style="width: 70px;"></th> 
                        <th>Produto</th> 
                        <th class="text-right">Valor R$</th> 
                        <th class="text-center">Qtd</th> 
                        <th class="text-right">Subtotal R$</th> 
                    </tr>
                </thead>
                <tbody>
                {foreach from=$PRO item=P}
                    <tr>
                        <td><img src="{$P.pro_img}" alt="{$P.pro_nome}" class="img-responsive" style="max-height: 50px;"></td>
                        <td>{$P.pro_nome}</td>
                        <td class="text-right">{$P.pro_valor}</td>
                        <td class="text-center">{$P.pro_qtd}</td>
                        <td class="text-right">{$P.pro_subTotal}</td>
                    </tr>
                {/foreach}
                </tbody>
            </table>
        </div>
    </div>
</section><!-- fim da listagem itens -->
        
<!-- botoes de baixo e valor total -->
<section class="row" id="total" style="margin-top: 20px;">
    <div class="col-xs-12 col-sm-6 col-md-6">
        <div class="well">
            <h4>Total dos Produtos: <strong>R$ {$TOTAL}</strong></h4>
            <h4>Frete: <strong>R$ {$FRETE}</strong></h4>
            <hr>
            <h3 class="text-danger">Total com Frete: <strong>R$ {$TOTAL_FRETE}</strong></h3>
        </div>
    </div>
    
    <div class="col-xs-12 col-sm-6 col-md-6 text-center" style="margin-top: 15px;">
        <form name="pedido_finalizar" id="pedido_finalizar" method="post" action="{$PAG_FINALIZAR}">
            <button class="btn btn-success btn-lg btn-block" type="submit">
                <i class="glyphicon glyphicon-ok"></i> Finalizar Pedido
            </button>
        </form>
    </div>
</section>
       <br>
       <br>
       <br>
       <br>