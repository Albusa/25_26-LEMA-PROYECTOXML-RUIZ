<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0"
                xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
  
  <xsl:output method="html" encoding="UTF-8" indent="yes"/>
  
  <xsl:template match="/">
    <html lang="es">
      <head>
        <meta charset="UTF-8"/>
        <title>Catálogo 1 - VideoKluba</title>
        <link rel="stylesheet" href="../assets/css/main.css"/>
      </head>
      <body>
        <header>
          <h1>Catálogo de VideoKluba (Tabla)</h1>
        </header>
        <div class="table-wrapper">
          <table>
            <thead>
              <tr>
                <th>Imagen</th>
                <th>Título</th>
                <th>Género / Año / Duración</th>
                <th>Precio</th>
                <th>Enlace</th>
              </tr>
            </thead>
            <tbody>
              <xsl:for-each select="Catalogo/Categoria/Contenido">
                <tr>
                  <td><img>
                      <xsl:attribute name="src"><xsl:value-of select="Imagen"/></xsl:attribute>
                      <xsl:attribute name="alt"><xsl:value-of select="Titulo"/></xsl:attribute>
                      <xsl:attribute name="width">100</xsl:attribute>
                      <xsl:attribute name="height">100</xsl:attribute>
                    </img></td>
                  <td><xsl:value-of select="Titulo"/></td>
                  <td>
                    <xsl:value-of select="Genero"/> / 
                    <xsl:value-of select="Año"/> / 
                    <xsl:value-of select="Duracion"/>
                  </td>
                  <td>
                    <xsl:value-of select="Precio"/>
                    <xsl:text> (</xsl:text>
                    <xsl:value-of select="Descuento"/>
                    <xsl:text> descuento)</xsl:text>
                  </td>
                  <td><a>
                      <xsl:attribute name="href"><xsl:value-of select="URL"/></xsl:attribute>
                      Ver más
                    </a></td>
                </tr>
              </xsl:for-each>
            </tbody>
          </table>
        </div>
      </body>
    </html>
  </xsl:template>
  
</xsl:stylesheet>
