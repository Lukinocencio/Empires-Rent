<br><h4 class="text-center">Dados do pedido</h4>

<!-- informações sobre o pedido -->
<section class="row">
    <div class="col-xs-12">
        <div class="table-responsive">
            <table class="table table-bordered">
                <tr class="bg-success">
                    <td><b>Data:</b> {$ITENS.1.ped_data}</td>
                    <td><b>Hora:</b> {$ITENS.1.ped_hora}</td>
                    <td><b>Ref:</b> {$ITENS.1.ped_ref}</td>
                    <td><b>Status:</b> {$ITENS.1.ped_pag_status}</td>
                </tr>  
            </table>
        </div>
    </div>
</section>

<!-- listagem dos itens -->
<section class="row" id="listaitens">
    <div class="col-xs-12">
        <div class="table-responsive">
            <table class="table table-bordered table-striped">
                <thead>
                    <tr class="text-success bg-success">
                        <th style="width: 70px;"></th>
                        <th>Item</th>
                        <th class="text-right">Valor Uni</th>
                        <th class="text-center">Qtd</th>
                        <th class="text-right">Subtotal</th>
                    </tr>
                </thead>
                <tbody>
                {foreach from=$ITENS item=P}
                    <tr>
                        <td><img src="{$P.item_img}" alt="" class="img-responsive" style="max-height: 50px;"></td>
                        <td>{$P.item_nome}</td>
                        <td class="text-right">{$P.item_valor}</td>
                        <td class="text-center">{$P.item_qtd}</td>
                        <td class="text-right">{$P.item_sub}</td>
                    </tr>
                {/foreach}
                </tbody>
            </table>
        </div>
    </div>
</section>
        
<section class="row" id="resumo">
    <div class="col-xs-12">
        <div class="table-responsive">
            <table class="table table-bordered">
                <tr>
                    <td class="text-danger"> <b>Frete:</b> {$ITENS.1.ped_frete_valor}</td>
                    <td class="text-danger"> <b>Total:</b> {$TOTAL}</td>
                    <td class="text-danger"> <b>Final:</b> {$ITENS.1.ped_frete_valor+$TOTAL}</td>
                </tr>  
            </table>
        </div>
    </div>
</section>  
                        
                        
              {if $ITENS.1.ped_pag_status =='NAO'}          
                         <!--  modos de pagamento e outras informações --> 
        <section class="row">
            <h3 class="text-center"> Formas de pagamento </h3>     
            
            <div class="col-md-4">
              
            </div>
            <!-- botao de pagamento  -->
            <div class="col-md-4">
               
                BOTÃO DE PAGAMENTO
                
                
                   <img src="{$TEMA}/images/logo-pagseguro.png"  alt=""> 
                   <script type="text/javascript" src=""></script>
                
            </div>
            <div class="col-md-4">
                
            </div>
         
            
        </section>



 {/if}


