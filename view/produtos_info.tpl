{foreach from=$PRO item=P}
    <div class="produto-detalhe">
        <h3 class="page-header">{$P.pro_nome} <small class="text-muted pull-right">Ref: {$P.pro_ref}</small></h3>

        <div class="row">
            {* Coluna da Imagem Principal *}
            <div class="col-xs-12 col-sm-6 col-md-6">
                <div class="thumbnail text-center produto-img-principal">
                    <img class="img-responsive center-block" src="{$P.pro_img_g}" alt="{$P.pro_nome}">
                </div>
            </div>

            {* Coluna de Ações de Compra e Pagamento *}
            <div class="col-xs-12 col-sm-6 col-md-6">
                <div class="panel panel-default painel-compra">
                    <div class="panel-body text-center">
                        <div class="pagseguro-box">
                            <img src="{$TEMA}/images/logo-pagseguro.png" alt="PagSeguro" class="img-responsive center-block">
                        </div>
                        <hr>
                        <div class="row">
                            <div class="col-xs-12 col-sm-6 text-center">
                                <span class="text-muted">Preço à vista:</span>
                                <h2 class="text-danger prod-preco-destaque">R$ {$P.pro_valor}</h2>
                            </div>
                            <div class="col-xs-12 col-sm-6 text-center" style="margin-top: 10px;">
                                <form name="carrinho" method="post" action="{$PAG_COMPRAR}">
                                    <input type="hidden" name="pro_id" value="{$P.pro_id}">
                                    <input type="hidden" name="acao" value="add">
                                    <button class="btn btn-success btn-lg btn-block">
                                        <i class="glyphicon glyphicon-shopping-cart"></i> Comprar
                                    </button>
                                </form>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>

        {* Galeria de Imagens Complementares *}
        {if $IMAGES}
        <div class="row galeria-fotos">
            <div class="col-xs-12">
                <hr>
                <h4><i class="glyphicon glyphicon-picture"></i> Galeria de Fotos</h4>
                <div class="row">
                    {foreach from=$IMAGES item=I}
                    <div class="col-xs-6 col-sm-4 col-md-3">
                        <div class="thumbnail">
                            <a href="{$I.img_link}" target="_blank">
                                <img src="{$I.img_nome}" alt="{$P.pro_nome}" class="img-responsive center-block">
                            </a>
                        </div>
                    </div>
                    {/foreach}
                </div>
            </div>
        </div>
        {/if}

        {* Descrição do Produto *}
        <div class="row produto-descricao">
            <div class="col-xs-12">
                <hr>
                <div class="panel panel-default">
                    <div class="panel-heading">
                        <h4 class="panel-title"><i class="glyphicon glyphicon-align-left"></i> Descrição do Produto</h4>
                    </div>
                    <div class="panel-body">
                        {$P.pro_desc}
                    </div>
                </div>
            </div>
        </div>
    </div>
{/foreach}