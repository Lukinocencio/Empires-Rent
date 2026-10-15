<h4 class="text-center"> Imagens do produto</h4>
<hr>

<!--- formulario de envio da foto -->
<section class="row" id="novaimg">
    
    <form name="nova" method="post" action=""  enctype="multipart/form-data">

        <div class="col-xs-12 col-sm-8 col-md-6 col-md-offset-1">
            <input type="hidden" name="pro_id" value="{$PRO}">
            <input type="file" name="pro_img" class="form-control" required>
        </div>
        <div class="col-xs-12 col-sm-4 col-md-4" style="margin-top: 5px;">
            <button class="btn btn-success btn-block"><i class="glyphicon glyphicon-upload"></i> Enviar Foto</button> 
        </div>
    </form> 
</section>

<hr>

<!-- listando as imagens que existem no produto-->
<section class="row" id="listarimg">
    <!-- formulario de apagar a foto ou varias -->
    <form name="deletar" method="post" action="">
        <ul style="list-style: none; padding-left: 0;">
            {foreach from=$IMAGES item=I}
                <li class="col-xs-6 col-sm-4 col-md-3 text-center" style="margin-bottom: 20px;">
                    <img src="{$I.img_nome}" alt="" class="img-responsive thumbnail" style="margin: 0 auto 10px auto; max-height: 140px; object-fit: cover;">
                    <label style="cursor: pointer;">
                        <input type="checkbox" name="fotos_apagar[]" value="{$I.img_arquivo}"> Apagar
                    </label>
                </li>
            {/foreach}
        </ul>
    
              
                <!--- botao de apagar fotos -->
                <br>
              <section class="col-md-12 text-center" id="apagar">
                <hr>
                
                  <button class="btn btn-danger"> Apagar Marcadas </button>
                  
                  
              </section>
              <br>
              <br>
              <br>
              
              
    </form>
</section>
              <section>
                  
                  <br>
                  <br>
                  <br>
                  <br>
              </section>