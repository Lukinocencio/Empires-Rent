<hr>

{if $PRO_TOTAL < 1}
    <div class="alert alert-warning text-center">
        <h4><i class="glyphicon glyphicon-info-sign"></i> Nenhum produto encontrado nesta categoria!</h4>
        <p><a href="{$PAG_PRODUTOS}" class="btn btn-primary">Ver todos os produtos</a></p>
    </div>
{else}
    <!-- Começa lista de produtos -->
    <section id="produtos">
        <div class="row produtos-grid">
            {foreach from=$PRO item=P}
            <div class="col-xs-12 col-sm-6 col-md-4 col-lg-4 item-produto-col">
                <div class="thumbnail card-produto">
                    <a href="{$PRO_INFO}/{$P.pro_id}/{$P.pro_slug}" class="link-produto">
                        <div class="img-wrapper">
                            <img src="{$P.pro_img}" alt="{$P.pro_nome}" class="img-responsive center-block">
                        </div>
                        <div class="caption text-center">
                            <h4 class="prod-titulo" title="{$P.pro_nome}">{$P.pro_nome}</h4>
                            <div class="prod-categoria text-muted"><small>{$P.cate_nome}</small></div>
                            <h3 class="prod-preco text-danger">R$ {$P.pro_valor}</h3>
                            <span class="btn btn-primary btn-sm btn-block btn-comprar">
                                <i class="glyphicon glyphicon-shopping-cart"></i> Ver Detalhes
                            </span>
                        </div>
                    </a>
                </div>
            </div>
            {/foreach}
        </div>
    </section>

    <!-- Paginação inferior -->
    {if $PAGINAS}
    <section id="paginacao" class="row text-center">
        <div class="col-xs-12">
            {$PAGINAS}
        </div>
    </section>
    {/if}
{/if}
