<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0"
                xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
  
  <xsl:output method="html" encoding="UTF-8" indent="yes"/>
  
  <xsl:template match="/">
    <html lang="es">
      <head>
        <meta charset="UTF-8"/>
        <title>Catálogo 2 - VideoKluba</title>
        <link rel="stylesheet" href="../assets/css/main.css"/>
      </head>
      <body>
        <header>
          <h1>Catálogo de VideoKluba (Bloques)</h1>
        </header>
        
        <xsl:for-each select="Catalogo/Categoria">
          <h2><xsl:value-of select="@tipo"/></h2>
          <xsl:for-each select="Contenido">
            <div class="box">
              <a>
                <xsl:attribute name="href"><xsl:value-of select="URL"/></xsl:attribute>
                <img>
                  <xsl:attribute name="src"><xsl:value-of select="Imagen"/></xsl:attribute>
                  <xsl:attribute name="alt"><xsl:value-of select="Titulo"/></xsl:attribute>
                  <xsl:attribute name="class">image fit</xsl:attribute>
                </img>
              </a>
              <h3><xsl:value-of select="Titulo"/></h3>
              <p><strong>Género / Año / Duración:</strong> 
                <xsl:value-of select="Genero"/> / 
                <xsl:value-of select="Año"/> / 
                <xsl:value-of select="Duracion"/>
              </p>
              <p><strong>Precio:</strong> <xsl:value-of select="Precio"/> (<xsl:value-of select="Descuento"/> descuento)</p>
              <a>
                <xsl:attribute name="href"><xsl:value-of select="URL"/></xsl:attribute>
                class="button fit"
                Ver más
              </a>
            </div>
          </xsl:for-each>
        </xsl:for-each>
        
      </body>
    </html>
  </xsl:template>
  
</xsl:stylesheet>
