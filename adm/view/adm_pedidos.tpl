<h4 class="text-center">Gerenciar Pedidos</h4>
<hr>

<!-- Filtros de busca -->
<section class="row" id="pesquisa">
    <div class="col-xs-12 col-md-7" style="margin-bottom: 15px;">
        <label><i class="glyphicon glyphicon-calendar"></i> Buscar entre datas:</label>
        <form name="buscardata" method="post" action="" class="form-inline">
            <div class="form-group">            
                <input type="date" name="data_ini" class="form-control input-sm" required>
            </div> 
            <div class="form-group"> 
                <input type="date" name="data_fim" class="form-control input-sm" required>
            </div> 
            <button class="btn btn-success btn-sm"> <i class="glyphicon glyphicon-search"></i> Filtrar </button>
        </form>
    </div>

    <div class="col-xs-12 col-md-5" style="margin-bottom: 15px;">
        <label><i class="glyphicon glyphicon-tag"></i> Buscar por Referência:</label>
        <form name="buscarrefcod" method="post" action="" class="form-inline">  
            <div class="form-group">
                <input type="text" name="txt_ref" class="form-control input-sm" placeholder="Código ou Ref" required>   
            </div>
            <button class="btn btn-success btn-sm"> <i class="glyphicon glyphicon-search"></i> Buscar </button>   
        </form>
    </div>
</section>

<hr>

<!-- Tabela de pedidos -->
<section class="row" id="pedidos">
    <div class="col-xs-12">
        <div class="table-responsive">
            <table class="table table-bordered table-striped table-hover">
                <thead>
                    <tr class="text-success bg-success">
                        <th>Cliente</th>
                        <th style="width: 100px;">Data</th>
                        <th style="width: 90px;">Hora</th>
                        <th style="width: 110px;">Referência</th>
                        <th style="width: 90px;" class="text-center">Status</th>
                        <th style="width: 100px;" class="text-center">Detalhes</th>
                        <th style="width: 50px;" class="text-center">Excluir</th>
                    </tr>
                </thead>
                <tbody>
                    {foreach from=$PEDIDOS item=P}
                    <tr>
                        <td><strong>{$P.cli_nome} {$P.cli_sobrenome}</strong></td>
                        <td>{$P.ped_data}</td>
                        <td>{$P.ped_hora}</td>
                        <td><code>{$P.ped_ref}</code></td>
                        <td class="text-center">
                            {if $P.ped_pag_status == 'NAO'} 
                                <span class="label label-danger">Pendente</span>
                            {else}
                                <span class="label label-success">{$P.ped_pag_status}</span>
                            {/if}
                        </td>
                        <td class="text-center">
                            <form name="itens" method="post" action="{$PAG_ITENS}">
                                <input type="hidden" name="cod_pedido" id="cod_pedido" value="{$P.ped_cod}">
                                <button class="btn btn-info btn-sm btn-block">
                                    <i class="glyphicon glyphicon-eye-open"></i> Ver
                                </button>
                            </form> 
                        </td>
                        <td class="text-center">
                            <form name="deletar" method="post" action="">
                                <input type="hidden" name="cod_pedido" id="cod_pedido_del" value="{$P.ped_cod}">
                                <button class="btn btn-danger btn-sm" name="ped_apagar" value="ped_apagar" onclick="return confirm('Deseja realmente apagar este pedido?');">
                                    <i class="glyphicon glyphicon-trash"></i>
                                </button>
                            </form> 
                        </td>
                    </tr>
                    {/foreach}
                </tbody>
            </table>
        </div>
    </div>
</section>

{if $PAGINAS}
<section id="paginacao" class="row text-center">
    <div class="col-xs-12">
        {$PAGINAS}
    </div>
</section>
{/if}