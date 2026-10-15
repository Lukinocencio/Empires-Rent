<h4 class="text-center">Gerenciar Clientes</h4>
<hr>

<!-- Listando clientes -->
<section class="row">
    <div class="col-xs-12">
        <div class="table-responsive">
            <table class="table table-bordered table-striped table-hover">
                <thead>
                    <tr class="text-success bg-success">
                        <th style="width: 90px;" class="text-center">Pedidos</th>
                        <th>Nome Completo</th>
                        <th>E-mail</th>
                        <th>Telefone</th>
                        <th>Data de Cadastro</th>
                        <th style="width: 80px;" class="text-center">Ações</th>
                    </tr>
                </thead>
                <tbody>
                    {foreach from=$CLIENTES item=C}
                    <tr>
                        <td class="text-center">
                            <a href="{$PAG_PEDIDOS}/{$C.cli_id}" class="btn btn-info btn-sm">
                                <i class="glyphicon glyphicon-list-alt"></i> Pedidos
                            </a>
                        </td>
                        <td><strong>{$C.cli_nome} {$C.cli_sobrenome}</strong></td>
                        <td>{$C.cli_email}</td>
                        <td>{$C.cli_fone}</td>
                        <td>{$C.cli_data_cad}</td>
                        <td class="text-center">
                            <a href="{$PAG_EDITAR}/{$C.cli_id}" class="btn btn-primary btn-sm">
                                <i class="glyphicon glyphicon-eye-open"></i> Ver
                            </a>
                        </td>
                    </tr>
                    {/foreach}
                </tbody>
            </table>
        </div>
    </div>
</section>