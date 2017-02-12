class ArchivosController < ApplicationController

  Ruta_archivo_comentarios = "public/comentarios/comentarios.txt";
  Ruta_directorio_archivos = "public/archivos/";

  def subir_archivos
     @formato_erroneo = false;
     if request.post?
        #Archivo subido por el usuario.
        archivo = params[:archivo];
        #Nombre original del archivo.
        nombre = archivo.original_filename;
        #Directorio donde se va a guardar.
        directorio = Ruta_directorio_archivos;
        #Extensión del archivo.
        extension = nombre.slice(nombre.rindex("."), nombre.length).downcase;
        #Verifica que el archivo tenga una extensión correcta.
        if extension == ".pdf" or extension == ".doc" or extension == ".docx"
           #Ruta del archivo.
           path = File.join(directorio, nombre);
           #Crear en el archivo en el directorio. Guardamos el resultado en una variable, será true si el archivo se ha guardado correctamente.
           resultado = File.open(path, "wb") { |f| f.write(archivo.read) };
           #Verifica si el archivo se subió correctamente.
           if resultado
              subir_archivo = "ok";
           else
              subir_archivo = "error";
           end
           #Redirige al controlador "archivos", a la acción "lista_archivos" y con la variable de tipo GET "subir_archivos" con el valor "ok" si se subió el archivo y "error" si no se pudo.
           redirect_to :controller => "archivos", :action => "listar_archivos", :subir_archivo => subir_archivo;
        else
           @formato_erroneo = true;
        end
      end
   end



  def listar_archivos
  end

  def borrar_archivos
  end

  def guardar_comentarios
  end
end
