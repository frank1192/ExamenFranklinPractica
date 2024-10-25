#!/usr/bin/env bash
#
# Este script se encarga de invocar los tres programas que permiten la 
# conversion de un PNG a secuencia de pixeles, se procesan esos pixeles y
# posteriormente se convierte esa secuencia de pixeles a un archivo en formato
# PNG
#
# Autor: John Sanabria - john.sanabria@correounivalle.edu.co
# Fecha: 2024-08-22
#
#!/usr/bin/env bash
#
# Este script se encarga de invocar los tres programas que permiten la 
# conversión de múltiples archivos JPG a secuencia de píxeles, procesarlos
# y posteriormente convertir esa secuencia a archivos PNG.
#
# Autor: John Sanabria - john.sanabria@correounivalle.edu.co
# Fecha: 2024-08-22
#

for INPUT_JPG in imagenes/*.jpg; do
  TEMP_FILE="${INPUT_JPG%.jpg}.bin"

  echo "Procesando ${INPUT_JPG}..."
  python3 fromPNG2Bin.py "${INPUT_JPG}"
  ./main "${TEMP_FILE}"
  python3 fromBin2PNG.py "${TEMP_FILE}.new"
done
