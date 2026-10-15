  <h3>Finalizar Pedido</h3>
<hr>
<!-- botoes e opções de cima -->
<section class="row">
    
   
    
</section>
    <br>

<!--  table listagem de itens -->
<section class="row">
    <div class="col-xs-12">
        <div class="alert alert-success">Pedido Finalizado com Sucesso</div>
        <div class="table-responsive">
            <table class="table table-bordered table-striped">
                <thead>
                    <tr class="text-danger bg-danger">
                        <th>Produto</th> 
                        <th class="text-right">Valor R$</th> 
                        <th class="text-center">Qtd</th> 
                        <th class="text-right">Subtotal R$</th> 
                    </tr>
                </thead>
                <tbody>
                {foreach from=$PRO item=P}
                    <tr>
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
<section class="row" id="total" style="margin-top: 15px;">
    <div class="col-xs-12 col-md-6 col-md-offset-6">
        <div class="well">
            <h4>Total dos Produtos: <strong>R$ {$TOTAL}</strong></h4>
            <h4>Frete: <strong>R$ {$FRETE}</strong></h4>
            <hr>
            <h3 class="text-danger">Total do Pedido: <strong>R$ {$TOTAL_FRETE}</strong></h3>
        </div>
    </div>
</section>


   <section class="row">
            <h3 class="text-center"> Formas de pagamento </h3>     
            
            <div class="col-md-4">
              
            </div>
            <!-- botao de pagamento  -->
            <div class="col-md-4">


            <!--FORMA DE PGTO AQUI -->

            <img src="{$TEMA}/images/logo-pagseguro.png"  alt=""> 


                
            </div>
            

            <div class="col-md-4">
              
            </div>
         
            
        </section>


       <br>
       <br>
       <br>
       <br>