<h4 class="text-center">Gerenciar Categorias</h4>
<hr>

<section class="row">
    <div class="col-xs-12">
        <form name="categoriainsere" method="post" action="" class="form-inline text-center">
            <div class="form-group" style="margin-right: 10px;">
                <input type="text" name="cate_nome" class="form-control" placeholder="Nome da nova categoria" required style="min-width: 250px;">  
            </div>
            <button class="btn btn-success" name="cate_nova" value="cate_nova">
                <i class="glyphicon glyphicon-plus"></i> Inserir Nova
            </button>
        </form>
    </div>
</section>
<hr>

<!-- Section listar categorias -->
<section class="row" id="listarcategorias">
    <div class="col-xs-12">
        <div class="table-responsive">
            <table class="table table-bordered table-striped table-hover">
                <thead>
                    <tr class="bg-primary">
                        <th>Nome da Categoria</th>
                        <th style="width: 100px;" class="text-center">Editar</th>
                        <th style="width: 100px;" class="text-center">Apagar</th>
                    </tr>
                </thead>
                <tbody>
                    {foreach from=$CATEGORIAS item=C}
                    <form name="categorias_editar" method="post" action="">
                        <tr>
                            <td>
                                <input type="text" name="cate_nome" value="{$C.cate_nome}" class="form-control" required> 
                                <input type="hidden" name="cate_id" value="{$C.cate_id}">
                            </td>
                            <td class="text-center">
                                <button class="btn btn-success btn-sm btn-block" name="cate_editar" value="cate_editar">
                                    <i class="glyphicon glyphicon-pencil"></i> Salvar
                                </button>
                            </td>
                            <td class="text-center">
                                <button class="btn btn-danger btn-sm btn-block" name="cate_apagar" value="cate_apagar" onclick="return confirm('Deseja realmente apagar esta categoria?');">
                                    <i class="glyphicon glyphicon-trash"></i> Apagar
                                </button>
                            </td>
                        </tr>        
                    </form>
                    {/foreach}
                </tbody>
            </table>
        </div>
    </div>
</section>