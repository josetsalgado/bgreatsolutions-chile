<?php
Load::models("user","general","banner","nosotros","cronologia","parallax","equipo","soluciones","item","imagenes","clientes","categorias","testimonios","categoriablog","blog","empleo");

class AdminController extends AppController
{

    public function index(){
    
      View::template("admin");

      if (Input::haspost("user")){
        $user = new User();
        $post = Input::post("user");
        session_start();
          $pwd = $user->encriptar($post['clave']);
          $usuario=$post['usuario'];
          $auth = new Auth("model", "class: user", "usuario: $usuario", "clave: $pwd");
          if ($auth->authenticate()) {
            if (Auth::get("admin") == "1") {
                Router::redirect("admin/config");
            }else{
                Flash::error("Solo puede usar el blog");
            }
          } else {
             Flash::error("El usuario o clave que ha ingresado es invalido");
          }

      }
    }

    public function cv(){
    View::template("general");
      if (Auth::is_valid()){
        $this->postulaciones = Load::model("postulaciones")->find();
      }else{
        Flash::valid("Necesita un usuario autenticado");
        Router::redirect("admin");
      }
    }

    public function config(){
      View::template("administrador");
      $user = new User();
      if (Auth::is_valid()){
        $this->usuario = $user->getInfoUser();
      }else{
        Flash::valid("Necesita un usuario autenticado");
        Router::redirect("admin");
      }
    }

    public function general(){
      $id = 1;
      View::template("general");
      if (Auth::is_valid()){
        $general = new General();
        if (Input::haspost("general")) {
        $general = new General(Input::post("general"));
          if ($general->update()) {
            Flash::valid("Informacion actualizada");
            Router::redirect("admin/general");
          }else{
            Flash::error("Error al editar, verifique e intente de nuevo");
            Router::redirect("admin/general");
          }
        }else {
          $this->general = $general->find_by_id((int)$id);
        }
      }else{
        Flash::valid("Necesita un usuario autenticado");
        Router::redirect("admin");
      }   
    }

    public function banners(){
      View::template("general");
      if (Auth::is_valid()){
        $this->banners=Load::model("banner")->find();
      }else{
        Flash::valid("Necesita un usuario autenticado");
        Router::redirect("admin");
      }
    }

    public function deletebanner($id)
    {
     if (Auth::is_valid()){
        $banner = new Banner();
        $banner = Load::model("banner")->find_by_id($id);
       
        if ($banner->delete((int)$id)) {
            Flash::valid('Operación exitosa');
        }else{
            Flash::error('Falló Operación'); 
        }
         Router::redirect("admin/banners");
        
     }else{
        Flash::valid("Necesita un usuario autenticado");
        Router::redirect("admin");
      }
    }

    public function editar_banner($id){
      View::template("general");
      if (Auth::is_valid()){
        $banner = new Banner();
        if (Input::haspost("banner")) {
        $banner = new banner(Input::post("banner"));

                if (!empty($_FILES['images']['name'])) {
                    $images = Upload::factory('images', 'image');
                    $images->setExtensions(array('jpg', 'png', 'gif','jpeg'));
                        if ($images->isUploaded()) {
                            if ($img = $images->save(date("Y_m_d_h.i.s").$_FILES['images']['name']))
                                $banner->img = "upload/".$img;
                            }else{
                            Flash::warning('No se ha podido subir la imagen ...!!!');
                         }
                }

           if (!$banner->activo=='1'){
                  $banner->activo=='0';
                }
                
          if ($banner->update()) {
            Flash::valid("Banner actualizado");
            Router::redirect("admin/banners");
          }else{
            Flash::error("Error al editar, verifique e intente de nuevo");
            Router::redirect("admin/editar_banner/$id");
          }
        }else {
          $this->banner = $banner->find_by_id((int)$id);
        }
      }else{
        Flash::valid("Necesita un usuario autenticado");
        Router::redirect("admin");
      }   
    }


    public function nuevo_banner(){
      View::template("general");
      if (Auth::is_valid()){
        if (Input::haspost("banner")) {
        $banner = new Banner(Input::post("banner"));

            if (!empty($_FILES['images']['name'])) {
                    $images = Upload::factory('images', 'image');
                    $images->setExtensions(array('jpg', 'png', 'gif','jpeg'));
                        if ($images->isUploaded()) {
                            if ($img = $images->save(date("Y_m_d_h.i.s").$_FILES['images']['name']))
                                $banner->img = "upload/".$img;
                            }else{
                            Flash::warning('No se ha podido subir la imagen ...!!!');
                         }
                }

                if (!$banner->activo=='1'){
                  $banner->activo=='0';
                }

                if ($banner->save()) {
                Flash::valid("Banner Registrado");
                Router::redirect("admin/banners");
              }else{
                Flash::error("Error al registrar banner");
              }
             
          }


      }else{
        Flash::valid("Necesita un usuario autenticado");
        Router::redirect("admin");
      }
    }

    public function nosotros(){
      $id = 1;
      View::template("general");
      if (Auth::is_valid()){
        $nosotros = new Nosotros();
        if (Input::haspost("nosotros")) {
        $nosotros = new Nosotros(Input::post("nosotros"));


        if (!empty($_FILES['images']['name'])) {
                    $images = Upload::factory('images', 'image');
                    $images->setExtensions(array('jpg', 'png', 'gif','jpeg'));
                        if ($images->isUploaded()) {
                            if ($img = $images->save(date("Y_m_d_h.i.s").$_FILES['images']['name']))
                                $nosotros->img_video = "upload/".$img;
                            }else{
                            Flash::warning('No se ha podido subir la imagen ...!!!');
                         }
                }


        if (!empty($_FILES['imagesa']['name'])) {
                    $imagesa = Upload::factory('imagesa', 'image');
                    $imagesa->setExtensions(array('jpg', 'png', 'gif','jpeg'));
                        if ($imagesa->isUploaded()) {
                            if ($imga = $imagesa->save(date("Y_m_d_h.i.s").$_FILES['imagesa']['name']))
                                $nosotros->img_valora = "upload/".$imga;
                            }else{
                            Flash::warning('No se ha podido subir la imagen del valor a ...!!!');
                         }
                }


        if (!empty($_FILES['imagesb']['name'])) {
                    $imagesb = Upload::factory('imagesb', 'image');
                    $imagesb->setExtensions(array('jpg', 'png', 'gif','jpeg'));
                        if ($imagesb->isUploaded()) {
                            if ($imgb = $imagesb->save(date("Y_m_d_h.i.s").$_FILES['imagesb']['name']))
                                $nosotros->img_valorb = "upload/".$imgb;
                            }else{
                            Flash::warning('No se ha podido subir la imagen del valor b ...!!!');
                         }
                }


          if ($nosotros->update()) {
            Flash::valid("Informacion actualizada");
            Router::redirect("admin/nosotros");
          }else{
            Flash::error("Error al editar, verifique e intente de nuevo");
            Router::redirect("admin/nosotros");
          }
        }else {
          $this->nosotros = $nosotros->find_by_id((int)$id);
        }
      }else{
        Flash::valid("Necesita un usuario autenticado");
        Router::redirect("admin");
      }   
    }

    public function cronologia(){
      View::template("general");
      if (Auth::is_valid()){
        $this->cronologia=Load::model("cronologia")->find();

        if (Input::haspost("cronologia")) {
        $cronologia = new Cronologia(Input::post("cronologia"));
              if ($cronologia->save()) {
                Flash::valid("Registro exitoso");
                Router::redirect("admin/cronologia");
              }else{
                Flash::error("Error al registrar");
              }
             
          }
      }else{
        Flash::valid("Necesita un usuario autenticado");
        Router::redirect("admin");
      }
    }

   public function deletecronologia($id)
    {
     if (Auth::is_valid()){
        $cronologia = new Cronologia();
        $cronologia = Load::model("cronologia")->find_by_id($id);
       
        if ($cronologia->delete((int)$id)) {
            Flash::valid('Operación exitosa');
        }else{
            Flash::error('Falló Operación'); 
        }
         Router::redirect("admin/cronologia");
        
     }else{
        Flash::valid("Necesita un usuario autenticado");
        Router::redirect("admin");
      }
    }


    public function editar_cronologia($id){
      View::template("general");
      if (Auth::is_valid()){
        $cronologia = new Cronologia();
        if (Input::haspost("cronologia")) {
        $cronologia = new Cronologia(Input::post("cronologia"));
                
          if ($cronologia->update()) {
            Flash::valid("Datos actualizados");
            Router::redirect("admin/cronologia");
          }else{
            Flash::error("Error al editar, verifique e intente de nuevo");
            Router::redirect("admin/editar_cronologia/$id");
          }
        }else {
          $this->cronologia = $cronologia->find_by_id((int)$id);
        }
      }else{
        Flash::valid("Necesita un usuario autenticado");
        Router::redirect("admin");
      }   
    }

    public function parallax(){
      $id = 1;
      View::template("general");
      if (Auth::is_valid()){
        $parallax = new Parallax();
        if (Input::haspost("parallax")) {
        $parallax = new Parallax(Input::post("parallax"));
          if ($parallax->update()) {
            Flash::valid("Informacion actualizada");
            Router::redirect("admin/parallax");
          }else{
            Flash::error("Error al editar, verifique e intente de nuevo");
            Router::redirect("admin/parallax");
          }
        }else {
          $this->parallax = $parallax->find_by_id((int)$id);
        }
      }else{
        Flash::valid("Necesita un usuario autenticado");
        Router::redirect("admin");
      }   
    }


    public function equipo(){
      View::template("general");
      if (Auth::is_valid()){
        $this->miembros = Load::model("equipo")->find();

        if (Input::haspost("equipo")) {
        $equipo = new Equipo(Input::post("equipo"));

            if (!empty($_FILES['images']['name'])) {
                    $images = Upload::factory('images', 'image');
                    $images->setExtensions(array('jpg', 'png', 'gif','jpeg'));
                        if ($images->isUploaded()) {
                            if ($img = $images->save(date("Y_m_d_h.i.s").$_FILES['images']['name']))
                                $equipo->img = "upload/".$img;
                            }else{
                            Flash::warning('No se ha podido subir la imagen ...!!!');
                         }
                }

                if ($equipo->save()) {
                Flash::valid("Miembro Registrado");
                Router::redirect("admin/equipo");
              }else{
                Flash::error("Error al registrar miembro del equipo");
              }
             
          }


      }else{
        Flash::valid("Necesita un usuario autenticado");
        Router::redirect("admin");
      }
    }

    public function editar_equipo($id){
      View::template("general");
      if (Auth::is_valid()){
        $equipo = new Equipo();
        if (Input::haspost("equipo")) {
        $equipo = new Equipo(Input::post("equipo"));

               if (!empty($_FILES['images']['name'])) {
                    $images = Upload::factory('images', 'image');
                    $images->setExtensions(array('jpg', 'png', 'gif','jpeg'));
                        if ($images->isUploaded()) {
                            if ($img = $images->save(date("Y_m_d_h.i.s").$_FILES['images']['name']))
                                $equipo->img = "upload/".$img;
                            }else{
                            Flash::warning('No se ha podido subir la imagen ...!!!');
                         }
                }


          if ($equipo->update()) {
            Flash::valid("Datos actualizados");
            Router::redirect("admin/equipo");
          }else{
            Flash::error("Error al editar, verifique e intente de nuevo");
            Router::redirect("admin/editar_equipo/$id");
          }
        }else {
          $this->equipo = $equipo->find_by_id((int)$id);
        }
      }else{
        Flash::valid("Necesita un usuario autenticado");
        Router::redirect("admin");
      }   
    }

    public function deleteequipo($id)
    {
     if (Auth::is_valid()){
        $equipo = new Equipo();
        $equipo = Load::model("equipo")->find_by_id($id);
       
        if ($equipo->delete((int)$id)) {
            Flash::valid('Operación exitosa');
        }else{
            Flash::error('Falló Operación'); 
        }
         Router::redirect("admin/equipo");
        
     }else{
        Flash::valid("Necesita un usuario autenticado");
        Router::redirect("admin");
      }
    }



    public function soluciones(){
      View::template("general");
      if (Auth::is_valid()){
        $this->servicios = Load::model("soluciones")->find();


      }else{
        Flash::valid("Necesita un usuario autenticado");
        Router::redirect("admin");
      }
    }


    public function agregar_servicio(){
      View::template("general");
      if (Auth::is_valid()){

        if (Input::haspost("soluciones")) {
        $soluciones = new Soluciones(Input::post("soluciones"));

            if (!empty($_FILES['images']['name'])) {
                    $images = Upload::factory('images', 'image');
                    $images->setExtensions(array('jpg', 'png', 'gif','jpeg'));
                        if ($images->isUploaded()) {
                            if ($img = $images->save(date("Y_m_d_h.i.s").$_FILES['images']['name']))
                                $soluciones->img = "upload/".$img;
                            }else{
                            Flash::warning('No se ha podido subir la imagen ...!!!');
                         }
                }

                if ($soluciones->save()) {
                Flash::valid("Servicio Registrado");
                Router::redirect("admin/soluciones");
              }else{
                Flash::error("Error al registrar el servicio");
              }
             
          }


      }else{
        Flash::valid("Necesita un usuario autenticado");
        Router::redirect("admin");
      }
    }

    public function editar_servicio($id){
      View::template("general");
      if (Auth::is_valid()){
        $soluciones = new Soluciones();
        if (Input::haspost("soluciones")) {
        $soluciones = new Soluciones(Input::post("soluciones"));

               if (!empty($_FILES['images']['name'])) {
                    $images = Upload::factory('images', 'image');
                    $images->setExtensions(array('jpg', 'png', 'gif','jpeg'));
                        if ($images->isUploaded()) {
                            if ($img = $images->save(date("Y_m_d_h.i.s").$_FILES['images']['name']))
                                $soluciones->img = "upload/".$img;
                            }else{
                            Flash::warning('No se ha podido subir la imagen ...!!!');
                         }
                }


          if ($soluciones->update()) {
            Flash::valid("Datos actualizados");
            Router::redirect("admin/soluciones");
          }else{
            Flash::error("Error al editar, verifique e intente de nuevo");
            Router::redirect("admin/editar_servicio/$id");
          }
        }else {
          $this->soluciones = $soluciones->find_by_id((int)$id);
        }
      }else{
        Flash::valid("Necesita un usuario autenticado");
        Router::redirect("admin");
      }   
    }

    public function deleteservicio($id)
    {
     if (Auth::is_valid()){
        $soluciones = new Soluciones();
        $soluciones = Load::model("soluciones")->find_by_id($id);
       
        if ($soluciones->delete((int)$id)) {
            Flash::valid('Operación exitosa');
        }else{
            Flash::error('Falló Operación'); 
        }
         Router::redirect("admin/soluciones");
        
     }else{
        Flash::valid("Necesita un usuario autenticado");
        Router::redirect("admin");
      }
    }


    public function items($id){
      View::template("general");
      if (Auth::is_valid()){
        $this->items = Load::model("item")->find("item.soluciones_id=$id");
        $this->servicios = Load::model("soluciones")->find_by_id($id);
        $this->imagenes = Load::model("imagenes")->find("imagenes.id>0 order by id desc");

        $imagenes = new Imagenes();
        if (Input::post("imagenes")) {

          $imagenes->subirImagenes();

        }

      }else{
        Flash::valid("Necesita un usuario autenticado");
        Router::redirect("admin");
      }
    }

     public function imagenes(){
      View::template("general");
      if (Auth::is_valid()){
        $this->imagenes = Load::model("imagenes")->find("imagenes.id>0 order by id desc");


        $imagenes = new Imagenes();
        if (Input::post("imagenes")) {

          $imagenes->subirImagenes();
            
        }

      }else{
        Flash::valid("Necesita un usuario autenticado");
        Router::redirect("admin");
      }
    }

    public function agregar_item($id){
      View::template("general");
      if (Auth::is_valid()){

        $this->servicios = Load::model("soluciones")->find_by_id($id);
        if (Input::haspost("item")) {
        $item = new Item(Input::post("item"));
        $item->soluciones_id=$id;

                if ($item->save()) {
                Flash::valid("Item Registrado");
                Router::redirect("admin/items/$id");
              }else{
                Flash::error("Error al registrar item");
              }
             
          }


      }else{
        Flash::valid("Necesita un usuario autenticado");
        Router::redirect("admin");
      }
    }


    public function editar_item($id,$solucion){
      View::template("general");
      if (Auth::is_valid()){
        $item = new Item();
        if (Input::haspost("item")) {
        $item = new Item(Input::post("item"));


          if ($item->update()) {
            Flash::valid("Datos actualizados");
            Router::redirect("admin/items/$solucion");
          }else{
            Flash::error("Error al editar, verifique e intente de nuevo");
            Router::redirect("admin/editar_item/$id");
          }
        }else {
          $this->item = $item->find_by_id((int)$id);
          $this->soluciones = Load::model("soluciones")->find_by_id($soluciones);
        }
      }else{
        Flash::valid("Necesita un usuario autenticado");
        Router::redirect("admin");
      }   
    }

    public function deleteitem($id,$solucion)
    {
     if (Auth::is_valid()){
        $item = new Item();
        $item = Load::model("item")->find_by_id($id);
       
        if ($item->delete((int)$id)) {
            Flash::valid('Operación exitosa');
        }else{
            Flash::error('Falló Operación'); 
        }
         Router::redirect("admin/items/$solucion");
        
     }else{
        Flash::valid("Necesita un usuario autenticado");
        Router::redirect("admin");
      }
    }



    public function clientes(){
      View::template("general");
      if (Auth::is_valid()){
        $this->clientes = Load::model("clientes")->find();


      }else{
        Flash::valid("Necesita un usuario autenticado");
        Router::redirect("admin");
      }
    }

    public function agregar_categoriacliente(){
      View::template("general");
      if (Auth::is_valid()){
        $this->categorias=Load::model("categorias")->find();

        if (Input::haspost("categorias")) {
        $categorias = new Categorias(Input::post("categorias"));
              if ($categorias->save()) {
                Flash::valid("Registro exitoso");
                Router::redirect("admin/agregar_categoriacliente");
              }else{
                Flash::error("Error al registrar");
              }
             
          }
      }else{
        Flash::valid("Necesita un usuario autenticado");
        Router::redirect("admin");
      }
    }

     public function agregar_cliente(){
      View::template("general");
      if (Auth::is_valid()){
        $this->categorias = Load::model("categorias")->find();
        if (Input::haspost("clientes")) {
        $clientes = new Clientes(Input::post("clientes"));


            if (!empty($_FILES['images']['name'])) {
                    $images = Upload::factory('images', 'image');
                    $images->setExtensions(array('jpg', 'png', 'gif','jpeg'));
                        if ($images->isUploaded()) {
                            if ($img = $images->save(date("Y_m_d_h.i.s").$_FILES['images']['name']))
                                $clientes->img = "upload/".$img;
                            }else{
                            Flash::warning('No se ha podido subir la imagen ...!!!');
                         }
                }

                if ($clientes->save()) {
                Flash::valid("clientes Registrado");
                Router::redirect("admin/clientes");
              }else{
                Flash::error("Error al registrar clientes");
              }
             
          }


      }else{
        Flash::valid("Necesita un usuario autenticado");
        Router::redirect("admin");
      }
    }



     public function editar_cliente($id){
      View::template("general");
      if (Auth::is_valid()){
        $this->categorias = Load::model("categorias")->find();
        $clientes = new Clientes();
        if (Input::haspost("clientes")) {
        $clientes = new Clientes(Input::post("clientes"));

               if (!empty($_FILES['images']['name'])) {
                    $images = Upload::factory('images', 'image');
                    $images->setExtensions(array('jpg', 'png', 'gif','jpeg'));
                        if ($images->isUploaded()) {
                            if ($img = $images->save(date("Y_m_d_h.i.s").$_FILES['images']['name']))
                                $clientes->img = "upload/".$img;
                            }else{
                            Flash::warning('No se ha podido subir la imagen ...!!!');
                         }
                }


          if ($clientes->update()) {
            Flash::valid("Datos actualizados");
            Router::redirect("admin/clientes");
          }else{
            Flash::error("Error al editar, verifique e intente de nuevo");
            Router::redirect("admin/editar_cliente/$id");
          }
        }else {
          $this->clientes = $clientes->find_by_id((int)$id);
        }
      }else{
        Flash::valid("Necesita un usuario autenticado");
        Router::redirect("admin");
      }   
    }

    public function deletecliente($id)
    {
     if (Auth::is_valid()){
        $clientes = new Clientes();
        $clientes = Load::model("clientes")->find_by_id($id);
       
        if ($clientes->delete((int)$id)) {
            Flash::valid('Operación exitosa');
        }else{
            Flash::error('Falló Operación'); 
        }
         Router::redirect("admin/clientes");
        
     }else{
        Flash::valid("Necesita un usuario autenticado");
        Router::redirect("admin");
      }
    }


    public function testimonios(){
      View::template("general");
      if (Auth::is_valid()){
        $this->testimonios = Load::model("testimonios")->find();
      }else{
        Flash::valid("Necesita un usuario autenticado");
        Router::redirect("admin");
      }
    }


    public function agregar_testimonio(){
      View::template("general");
      if (Auth::is_valid()){
        $this->clientes = Load::model("clientes")->find();
        if (Input::haspost("testimonios")) {
        $testimonios = new Testimonios(Input::post("testimonios"));


            if (!empty($_FILES['images']['name'])) {
                    $images = Upload::factory('images', 'image');
                    $images->setExtensions(array('jpg', 'png', 'gif','jpeg'));
                        if ($images->isUploaded()) {
                            if ($img = $images->save(date("Y_m_d_h.i.s").$_FILES['images']['name']))
                                $testimonios->img = "upload/".$img;
                            }else{
                            Flash::warning('No se ha podido subir la imagen ...!!!');
                         }
                }

                if (!empty($_FILES['img_video']['name'])) {
                    $img_video = Upload::factory('img_video', 'image');
                    $img_video->setExtensions(array('jpg', 'png', 'gif','jpeg'));
                        if ($img_video->isUploaded()) {
                            if ($imgs = $img_video->save(date("Y_m_d_h.i.s").$_FILES['img_video']['name']))
                                $testimonios->img_video = "upload/".$imgs;
                            }else{
                            Flash::warning('No se ha podido subir la imagen ...!!!');
                         }
                }

                if ($testimonios->save()) {
                Flash::valid("Testimonio Registrado");
                Router::redirect("admin/testimonios");
              }else{
                Flash::error("Error al registrar testimonios");
              }
             
          }


      }else{
        Flash::valid("Necesita un usuario autenticado");
        Router::redirect("admin");
      }
    }


    public function editar_testimonio($id){
      View::template("general");
      if (Auth::is_valid()){
        $this->clientes = Load::model("clientes")->find();
        $testimonios = new Testimonios();
        if (Input::haspost("testimonios")) {
        $testimonios = new Testimonios(Input::post("testimonios"));

               if (!empty($_FILES['images']['name'])) {
                    $images = Upload::factory('images', 'image');
                    $images->setExtensions(array('jpg', 'png', 'gif','jpeg'));
                        if ($images->isUploaded()) {
                            if ($img = $images->save(date("Y_m_d_h.i.s").$_FILES['images']['name']))
                                $testimonios->img = "upload/".$img;
                            }else{
                            Flash::warning('No se ha podido subir la imagen ...!!!');
                         }
                }

                if (!empty($_FILES['img_video']['name'])) {
                    $img_video = Upload::factory('img_video', 'image');
                    $img_video->setExtensions(array('jpg', 'png', 'gif','jpeg'));
                        if ($img_video->isUploaded()) {
                            if ($imgs = $img_video->save(date("Y_m_d_h.i.s").$_FILES['img_video']['name']))
                                $testimonios->img_video = "upload/".$imgs;
                            }else{
                            Flash::warning('No se ha podido subir la imagen ...!!!');
                         }
                }


          if ($testimonios->update()) {
            Flash::valid("Datos actualizados");
            Router::redirect("admin/testimonios");
          }else{
            Flash::error("Error al editar, verifique e intente de nuevo");
            Router::redirect("admin/editar_testimonio/$id");
          }
        }else {
          $this->testimonios = $testimonios->find_by_id((int)$id);
        }
      }else{
        Flash::valid("Necesita un usuario autenticado");
        Router::redirect("admin");
      }   
    }

    public function deletetestimonio($id)
    {
     if (Auth::is_valid()){
        $testimonios = new Testimonios();
        $testimonios = Load::model("testimonios")->find_by_id($id);
       
        if ($testimonios->delete((int)$id)) {
            Flash::valid('Operación exitosa');
        }else{
            Flash::error('Falló Operación'); 
        }
         Router::redirect("admin/testimonios");
        
     }else{
        Flash::valid("Necesita un usuario autenticado");
        Router::redirect("admin");
      }
    }




     public function blog(){
      View::template("general");
      if (Auth::is_valid()){
        $this->blog = Load::model("blog")->find();
      }else{
        Flash::valid("Necesita un usuario autenticado");
        Router::redirect("admin");
      }
    }





    public function logout(){
      if (Auth::is_valid()){
        Auth::destroy_identity();
        Router::redirect("admin");
      }
    } 

    public function categoriablog(){
      View::template("general");
      if (Auth::is_valid()){
        $this->categoriablog=Load::model("categoriablog")->find();

        if (Input::haspost("categoriablog")) {
        $categoriablog = new Categoriablog(Input::post("categoriablog"));
              if ($categoriablog->save()) {
                Flash::valid("Registro exitoso");
                Router::redirect("admin/categoriablog");
              }else{
                Flash::error("Error al registrar");
              }
             
          }
      }else{
        Flash::valid("Necesita un usuario autenticado");
        Router::redirect("admin");
      }
    }


    public function agregar_blog(){
      View::template("general");
      if (Auth::is_valid()){
        $this->categoriablog = Load::model("categoriablog")->find();
        if (Input::haspost("blog")) {
        $blog = new Blog(Input::post("blog"));

            if (!empty($_FILES['images']['name'])) {
                    $images = Upload::factory('images', 'image');
                    $images->setExtensions(array('jpg', 'png', 'gif','jpeg'));
                        if ($images->isUploaded()) {
                            if ($img = $images->save(date("Y_m_d_h.i.s").$_FILES['images']['name']))
                                $blog->img = "upload/".$img;
                            }else{
                            Flash::warning('No se ha podido subir la imagen ...!!!');
                         }
                }
              $blog->fecha = date("Y-m-d");
                if ($blog->save()) {
                Flash::valid("Noticia Registrada");
                Router::redirect("admin/blog");
              }else{
                Flash::error("Error al registrar la noticia");
              }
             
          }


      }else{
        Flash::valid("Necesita un usuario autenticado");
        Router::redirect("admin");
      }
    }


     public function editar_blog($id){
      View::template("general");
      if (Auth::is_valid()){
        $this->categoriablog = Load::model("categoriablog")->find();
        $blog = new Blog();
        if (Input::haspost("blog")) {
        $blog = new Blog(Input::post("blog"));

               if (!empty($_FILES['images']['name'])) {
                    $images = Upload::factory('images', 'image');
                    $images->setExtensions(array('jpg', 'png', 'gif','jpeg'));
                        if ($images->isUploaded()) {
                            if ($img = $images->save(date("Y_m_d_h.i.s").$_FILES['images']['name']))
                                $blog->img = "upload/".$img;
                            }else{
                            Flash::warning('No se ha podido subir la imagen ...!!!');
                         }
                }


          if ($blog->update()) {
            Flash::valid("Datos actualizados");
            Router::redirect("admin/blog");
          }else{
            Flash::error("Error al editar, verifique e intente de nuevo");
            Router::redirect("admin/editar_blog/$id");
          }
        }else {
          $this->blog = $blog->find_by_id((int)$id);
        }
      }else{
        Flash::valid("Necesita un usuario autenticado");
        Router::redirect("admin");
      }   
    }


    public function deleteblog($id)
    {
     if (Auth::is_valid()){
        $blog = new Blog();
        $blog = Load::model("blog")->find_by_id($id);
       
        if ($blog->delete((int)$id)) {
            Flash::valid('Operación exitosa');
        }else{
            Flash::error('Falló Operación'); 
        }
         Router::redirect("admin/blog");
        
     }else{
        Flash::valid("Necesita un usuario autenticado");
        Router::redirect("admin");
      }
    }

}
