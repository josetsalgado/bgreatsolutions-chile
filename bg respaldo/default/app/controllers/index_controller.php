<?php
Load::models("general","banner","nosotros","cronologia","parallax","equipo","soluciones","item","imagenes","clientes","categorias","testimonios","categoriablog","blog","empleo","postulaciones");

class IndexController extends AppController
{

    public function index()
    {
    	$id=1;
    	$this->info = Load::model("general")->find_by_id($id);
    	$this->banners = Load::model("banner")->find();
    	$this->nosotros = Load::model("nosotros")->find_by_id($id);
    	$this->cronologia = Load::model("cronologia")->find();
    	$this->parallax = Load::model("parallax")->find_by_id($id);
    	$this->equipo = Load::model("equipo")->find();
        $this->equipos = Load::model("equipo")->find();
    	$this->cuatro = Load::model("equipo")->find("equipo.id>=1 limit 0,4");
    	$this->dos_mas = Load::model("equipo")->find("equipo.id>=5");
        $this->servicios = Load::model("soluciones")->find();
        $this->soluciones = Load::model("soluciones")->find();
        $this->categorias = Load::model("categorias")->find();
        $this->clientes = Load::model("clientes")->find();
        $this->testimonio_activo = Load::model("testimonios")->find("testimonios.id>=1 ORDER BY id asc limit 1");
        $this->testimonios = Load::model("testimonios")->find("testimonios.id>=2 ORDER BY id asc limit 0,50");
        $this->testimonios_img = Load::model("testimonios")->find("testimonios.id>=2 ORDER BY id asc limit 0,50");
        $this->blog = Load::model("blog")->find();

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
