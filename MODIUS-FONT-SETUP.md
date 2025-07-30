# Configuración de la Fuente Modius

## Descripción
La fuente Modius es una tipografía personalizada creada por Typologic, disponible en [DaFont](https://www.dafont.com/es/modius.font). Es una fuente bold y moderna perfecta para encabezados y títulos.

## Instalación

### Paso 1: Descargar la fuente
1. Ve a [https://www.dafont.com/es/modius.font](https://www.dafont.com/es/modius.font)
2. Haz clic en el botón "Download" (Descargar)
3. Guarda el archivo como `Modius-Regular.otf` en la carpeta `public/fonts/`
4. Si hay una versión Bold disponible, guárdala como `Modius-Bold.otf`

### Paso 2: Verificar la estructura
Tu proyecto debe tener esta estructura:
```
public/
  fonts/
    Modius-Regular.otf
    Modius-Bold.otf (opcional)
```

### Paso 3: La implementación ya está lista
El CSS ya está configurado en `src/index.css` y el componente Hero ya usa la clase `font-modius`.

## Uso en el código

### En componentes React:
```tsx
// Usar la clase CSS personalizada
<div className="font-modius">
  Tu texto aquí
</div>

// O usar directamente la fuente
<div className="font-['Modius']">
  Tu texto aquí
</div>
```

### En CSS:
```css
.modius-text {
  font-family: 'Modius', 'Anton', 'Impact', sans-serif;
  font-weight: normal;
  letter-spacing: -0.02em;
  text-transform: uppercase;
}
```

## Fallback
Si la fuente Modius no está disponible, el sistema usará:
1. Anton (Google Fonts) - Similar estilo bold
2. Impact - Fuente del sistema
3. Arial Black - Fuente del sistema
4. Helvetica Bold - Fuente del sistema

## Características de la fuente Modius
- **Estilo**: Bold y moderno
- **Uso recomendado**: Encabezados, títulos, logos
- **Peso**: Regular y Bold (si está disponible)
- **Licencia**: Gratis para uso personal (verificar licencia comercial)

## Verificación
Para verificar que la fuente está funcionando:
1. Abre las herramientas de desarrollador del navegador
2. Inspecciona el elemento con la clase `font-modius`
3. En la pestaña "Computed", verifica que `font-family` muestre "Modius"

## Solución de problemas

### La fuente no se carga
- Verifica que los archivos estén en `public/fonts/`
- Verifica que los nombres de archivo sean exactos
- Limpia la caché del navegador

### La fuente se ve diferente
- La fuente Anton se usa como fallback y tiene un estilo similar
- Una vez que descargues la fuente Modius original, se aplicará automáticamente

## Comandos útiles

### Verificar archivos de fuente:
```powershell
Get-ChildItem public/fonts/
```

### Ejecutar el script de verificación:
```powershell
powershell -ExecutionPolicy Bypass -File download-modius-font.ps1
``` 