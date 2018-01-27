<?php
Load::models("general","banner","nosotros","cronologia","parallax","equipo","soluciones","item","imagenes","clientes","categorias","testimonios","categoriablog","blog","empleo","postulaciones");

class PoliticasController extends AppController
{

	public function index()
    {
        View::template("otros");
        $id=1;
        $this->info = Load::model("general")->find_by_id($id);


                 if (Input::haspost("postulaciones")) {            
            $postulaciones = new Postulaciones(Input::post("postulaciones"));
            $path_pdf = getcwd()."/files/upload/cvs";
          
             if (!empty($_FILES['adjunto']['name'])) {
                    $adjunto = Upload::factory('adjunto', 'file');
                    $_FILES["adjunto"]["name"] = date("Y_m_d_h.i.s").$_FILES['adjunto']['name'];
                    $adjunto->setPath($path_pdf);
                    $adjunto->setExtensions(array('pdf','doc','docx','zip','rar'));
                        if ($adjunto->isUploaded()) {
                            if ($adjunto->save()){
                                $postulaciones->adjunto = "upload/cvs/".$_FILES["adjunto"]["name"];
                            }else{
                            Flash::warning('No se ha podido subir el archivo ...!!!');
                         }
                       }
                }

            $postulaciones->pais = $_POST['pais'];
            $postulaciones->mensaje = $_POST['mensaje'];
            $postulaciones->fecha = date("Y-m-d");
            $postulaciones->estado = 'No definido';

          if ($postulaciones->save()) {
             ?>
                    <script>
                    alert("Datos enviados exitosamente");
                    </script>
                    
                    <?php
          }else{
            ?>
                    <script>
                    alert("Error al enviar, intente nuevamente");
                    </script>
                    
                    <?php
            

          }
        
        
    }

    }

}