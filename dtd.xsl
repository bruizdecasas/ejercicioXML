<?xml version="1.0" encoding="UTF-8"?>
<!DOCTYPE biblioteca[
	<!ELEMENT biblioteca (documento+)>
        <!ELEMENT documentos (libros,revistas,periodicos)>
            <!ELEMENT libros (libro+)>
            <!ELEMENT libro (titulo_libro,capitulos,indice_libro,sinopsis)>
                <!ATTLIST libro id ID #REQUIRED>   
                <!ATTLIST libro tipo_clase CDATA #REQUIRED>
                <!ATTLIST libro numero_paginas CDATA #REQUIRED>
                <!ELEMENT titulo_libro (#PCDATA)>
                <!ELEMENT capitulos (capitulo+)>
                <!ELEMENT capitulo (titulo_capitulo,contenido_capitulo)>
                    <!ATTLIST capitulo numero_paginas CDATA #REQUIRED>
                    <!ELEMENT titulo_capitulo (#PCDATA)>
                    <!ELEMENT contenido_capitulo (#PCDATA)>
                    <!ATTLIST contenido_capitulo enlace CDATA #REQUIRED>
                <!ELEMENT indice_libro (#PCDATA)>
                <!ELEMENT sinopsis (#PCDATA)>
            <!ELEMENT revistas (revista+)>
            <!ELEMENT revista (titulo_revista,numero,indice_revista,secciones_revista)>
                <!ATTLIST revistas id ID #REQUIRED>
                <!ATTLIST revista tipo_clase CDATA #REQUIRED>
                <!ATTLIST revista numero_paginas CDATA #REQUIRED>
                <!ELEMENT titulo_revista (#PCDATA)>
                <!ELEMENT numero (#PCDATA)>
                <!ELEMENT indice_revista (#PCDATA)>
                <!ELEMENT secciones_revista (seccion_revista+)>
                    <!ELEMENT sección_revista (contenido_revista)>
                    <!ATTLIST sección_revista número_páginas CDATA #REQUIRED>
                        <!ELEMENT contenido_revista (#PCDATA)>
                        <!ATTLIST contenido_revista enlace CDATA #REQUIRED>
            <!ELEMENT periodicos (periodicos+)>
            <!ELEMENT periodico (secciones_periodico,indice_periodico)>
                <!ATTLIST periodico id ID #REQUIRED>
                <!ATTLIST periodico tipo_clase CDATA #REQUIRED>
                <!ATTLIST periodico fecha_publicacion CDATA #REQUIRED>
                <!ELEMENT secciones_periodico (seccion_periodico+)>
                    <!ELEMENT seccion_periodico (articulo*,contenido_periodico)>
                    <!ATTLIST seccion_periodico tipo_seccion CDATA #REQUIRED>
                        <!ELEMENT articulo (#PCDATA)>   
                        <!ATTLIST articulo autor CDATA #REQUIRED>
                        <!ELEMENT contenido_periodico (#PCDATA)>
                        <!ATTLIST contenido_periodico informacion CDATA #REQUIRED>
                <!ELEMENT indice_periodico (#PCDATA)>
]>
