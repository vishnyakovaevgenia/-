<meta charset="utm-8">
<!doctype html5>
<?php
function click(){
$a=array();
$written="";
if (($file = fopen(filter_input(INPUT_POST, 'file'), 'r+')) !==false){
    while (($data = fgetcsv($file, 1000, ",")) !== fasle) {
        $a[]=$data;
        mkdir("/upload/", 0777, true);
        $filename = 1;
        $b = new SplFileObject($filename,'w', false, null);
        $written = $b->fwrite($a[$filename][0]);
        $filename++;
    }
    fclose($file);
}
}
?>
<html>
    <head>
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>Form</title>
        <style>body {
background:url(https://images.wallpaperscraft.ru/image/single/morskoj_kotik_zhivotnoe_milyj_165041_1280x720.jpg);
background-size: cover;
font-family: sans-serif !important;
}
           form{
               background: white;
               width: 29em;
               top: 50%;
               left: 50%;
               position: fixed;
               transform: translate(-50%,-50%);
                   border-top: 20px solid #132d34;
    border-radius: 6px;
}
          @media(max-width:600px){
           form{
               width: 90%;
              top: 50%;
               left: 50%;
               position: fixed;
               transform: translate(-50%,-50%);
                   border-top: 20px solid #132d34;
    border-radius: 6px;
           }}
           @media(max-width:600px){
               .button{
               width: -webkit-fill-available;
               background: #132d34;
    color: white;
    border: 1px solid #011923;
    height: 2em;
           }
           }
         
           fieldset{
                   display: flex;
    align-items: center;
    padding: 1em !important;
    flex-direction: column;
   border: 0px;
           }
           input{
               margin: 0.5em !important;
                   /*width: 100%;*/
                   width: -webkit-fill-available;
           }
           .block{
               display: block;
               width: 100%;
               height: 100%;
               position: fixed;
               
           }
           .button{
               width: -webkit-fill-available;
               background: #132d34;
    color: white;
    border: 1px solid #011923;
    height: 35px;
           }

</style>
    </head>
    <body>
        <section class="section">
  <div class="section__container container">
    <div class="section__inner">
      <div class="section__content">
          <div class="block">
              <div class="block">
                  <form method="post">
              <fieldset><div class="name_input">Выберите файл</div><br>
  <input id="file"  type="file" name="file" required="required"></fieldset>
  <input class="button" type="submit" name="submit_btn" value="Отправить" onclick="click()">
              </form>
           </div></div>
      </div>
    </div>
  </div>
</section>

<?php
        