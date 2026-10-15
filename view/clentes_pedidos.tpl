<br>
<br>

<section class="row" id="pedidos">
    
    <h4 class="text-center">Meus Pedidos</h4>
    {if $PEDIDOS_QUANTIDADE > 0}
    <div class="table-responsive">
    <table class="table table-bordered table-hover">
        <thead>
            <tr class="text-danger bg-danger">
                <th>Data</th>
                <th>Hora</th>
                <th>Ref</th>
                <th>Status</th>
                <th>Ação</th>
            </tr>
        </thead>
        <tbody>
        {foreach from=$PEDIDOS item=P}
            <tr>
                <td>{$P.ped_data}</td>
                <td>{$P.ped_hora}</td>
                <td>{$P.ped_ref}</td>
                <td>
                {if $P.ped_pag_status == 'NAO'} 
                    <span class="label label-danger">{$P.ped_pag_status}</span>
                {elseif $P.ped_pag_status == 'Pago'}
                    <span class="label label-success">{$P.ped_pag_status}</span>
                {else}
                    <span class="label label-info">{$P.ped_pag_status}</span>
                {/if}
                </td>
                <td>
                    <form name="itens" method="post" action="{$PAG_ITENS}">
                        <input type="hidden" name="cod_pedido" id="cod_pedido" value="{$P.ped_cod}">
                        <button class="btn btn-default btn-sm"><i class="glyphicon glyphicon-menu-hamburger"></i> Detalhes</button>
                    </form>
                </td>
            </tr>
        {/foreach}
        </tbody>
    </table>
    </div>
    {else}
        <div class="alert alert-info">Você não tem nenhum pedido ainda!</div>
    {/if}



    
</section>


<section id="pagincao" class="row">
    <center>
    {$PAGINAS}
    </center>
    </section>
      