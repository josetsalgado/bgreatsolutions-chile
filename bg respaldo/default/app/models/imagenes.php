<?php 
class Imagenes extends ActiveRecord{


	public function subirImagenes(){
		 $i = 0;

		foreach($_FILES['imagenes'] as $file) 
        {
        	if (isset($_FILES["imagenes"]["name"][$i])) {
	            if($_FILES['imagenes']['tmp_name'][$i])
	            {
	                $trozos[$i] = explode(".", $_FILES["imagenes"]["name"][$i]);
	                $extension[$i] = end($trozos[$i]);
	                if($this->checkExtension($extension[$i]) === TRUE)
	                {    
	                    $nombre_doc_aux = $_FILES['imagenes']['name'][$i];
	                    $resto = substr($_FILES['imagenes']['name'][$i], -3);
	                    $_FILES['imagenes']['name'][$i] = date("Y-m-d_H-i-s_").$i.".".$resto;
	                    if(move_uploaded_file($_FILES['imagenes']['tmp_name'][$i],'img/upload/'.$_FILES['imagenes']['name'][$i]))
	                    {
	                        Flash::valid( "imagen subida".$nombre_doc_aux);
	                     
	                        $doc = new Imagenes();
	                        $doc->img = "upload/".$_FILES['imagenes']['name'][$i];
	                        if (!$doc->save()) {
	                        	Flash::error("Error al guardar la imagen ".$nombre_doc_aux);
	                        }

	                    } else{
	                    	$errores[]=array($_FILES['imagenes']['name'][$i]);
	                    }
	              
	                }else{
	                    Flash::error("la extension de ".$_FILES['imagenes']['name'][$i]." no esta permitida");
	                }

	            }
	            
	            $i++;     
        	}
        }   
	}
	public function checkExtension($extension)
    {
        $extensiones = array("jpg","jpeg","png");
        if(in_array(strtolower($extension), $extensiones))
        {
            return TRUE;
        }else{
            return FALSE;
        }
    }


}

 ?>