#!/bin/bash
# HackeLists - Generador de contraseñas realizado por HackeMate2025
# By HackeMate 2025

# --- ASCII ART ---
cat << "EOF"
 /$$   /$$                     /$$                 /$$       /$$             /$$             
| $$  | $$                    | $$                | $$      |__/            | $$             
| $$  | $$  /$$$$$$   /$$$$$$$| $$   /$$  /$$$$$$ | $$       /$$  /$$$$$$$ /$$$$$$   /$$$$$$$
| $$$$$$$$ |____  $$ /$$_____/| $$  /$$/ /$$__  $$| $$      | $$ /$$_____/|_  $$_/  /$$_____/
| $$__  $$  /$$$$$$$| $$      | $$$$$$/ | $$$$$$$$| $$      | $$|  $$$$$$   | $$   |  $$$$$$ 
| $$  | $$ /$$__  $$| $$      | $$_  $$ | $$_____/| $$      | $$ \____  $$  | $$ /$$\____  $$
| $$  | $$|  $$$$$$$|  $$$$$$$| $$ \  $$|  $$$$$$$| $$$$$$$$| $$ /$$$$$$$/  |  $$$$//$$$$$$$/
|__/  |__/ \_______/ \_______/|__/  \__/ \_______/|________/|__/|_______/    \___/ |_______/ 
EOF
echo
echo -e "\e[32m© HackeLists 2025 - Derechos Reservados\e[0m"
echo "----------------------------------------------------"
sleep 1

# --- Animación estilo hacker ---
type_out() {
  text="$1"
  for ((i=0; i<${#text}; i++)); do
    echo -ne "\e[32m${text:$i:1}\e[0m"
    sleep 0.02
  done
  echo
}

progress_bar() {
  local progress=0
  local max=30
  while [ $progress -le $max ]; do
    hashes=$(printf "%-${progress}s" "#" | tr " " "#")
    spaces=$(printf "%-$((max-progress))s" " ")
    echo -ne "\e[32m[${hashes}\e[0m\e[90m${spaces}]\e[0m \e[36m$((progress*100/max))%\e[0m\r"
    sleep 0.05
    ((progress++))
  done
  echo
}

# --- Función input (permite omitir con Enter) ---
ask() {
  read -p "$1" var
  echo "$var"
}

# --- Variantes de mayúsculas/minúsculas ---
case_variants() {
  local word="$1"
  echo "$word"
  echo "${word,,}"
  echo "${word^^}"
  echo "${word^}"
}

# --- Menú estilo hacker pro ---
echo -e "\n\e[32m╔══════════════════════════════════════════════╗\e[0m"
echo -e "\e[32m║        H A C K E L I S T S   2 0 2 5         ║\e[0m"
echo -e "\e[32m╠══════════════════════════════════════════════╣\e[0m"
echo -e "\e[32m║ \e[36m[1]\e[0m \e[37mUsuario normal (personal)\e[0m                  \e[32m║\e[0m"
echo -e "\e[32m║ \e[36m[2]\e[0m \e[37mUsuario empresarial (corporativo)\e[0m          \e[32m║\e[0m"
echo -e "\e[32m╚══════════════════════════════════════════════╝\e[0m"
echo
read -p "Seleccione el tipo de perfil [1 o 2]: " perfil
echo

# --- Definir archivo de salida ---
if [ "$perfil" == "1" ]; then
  OUTPUT="Person.txt"
elif [ "$perfil" == "2" ]; then
  OUTPUT="Company.txt"
else
  echo -e "\e[31m[✘] Opción inválida. Ejecute nuevamente y seleccione 1 o 2.\e[0m"
  exit 1
fi
> $OUTPUT

# --- Preguntas según perfil ---
if [ "$perfil" == "1" ]; then
    # --- Preguntas personales ---
    nombre=$(ask "¿Cuál es el nombre de la persona? ")
    apellido=$(ask "¿Cuál es el apellido de la persona? ")
    nick=$(ask "¿Cuál es el apodo o nickname? ")
    nacimiento=$(ask "¿En qué año nació la persona? ")
    ciudad=$(ask "¿En qué ciudad vive la persona? ")
    papa=$(ask "¿Cómo se llama el papá de la persona? ")
    mama=$(ask "¿Cómo se llama la mamá de la persona? ")
    pareja=$(ask "¿Cómo se llama la pareja de la persona? ")
    hijo=$(ask "¿Cómo se llama el hijo o hija de la persona? ")
    mascota=$(ask "¿Cómo se llama la mascota de la persona? ")
    juego=$(ask "¿Cuál es el juego favorito de la persona? ")
    artista=$(ask "¿Quién es el artista, banda o youtuber favorito de la persona? ")
    equipo=$(ask "¿Cuál es el equipo de fútbol favorito de la persona? ")
    hobby=$(ask "¿Cuál es el hobby o pasatiempo principal? ")
    usuario=$(ask "¿Cuál es el usuario de la persona en Instagram/TikTok/X? ")
    hashtag=$(ask "¿Qué hashtag o frase suele usar la persona en redes sociales? ")
    graduacion=$(ask "¿En qué año se graduó la persona? ")
    relacion=$(ask "¿En qué año empezó su relación o se casó la persona? ")
    numero=$(ask "¿Cuál es el número favorito de la persona? ")
    color=$(ask "¿Cuál es el color favorito de la persona? ")
    comida=$(ask "¿Cuál es la comida o bebida favorita de la persona? ")
    marca=$(ask "¿Qué marca de celular o laptop usa la persona? ")
    dni=$(ask "¿Cuál es el número de DNI de la persona? (8 dígitos) ")
    echo
fi

if [ "$perfil" == "2" ]; then
    # --- Preguntas empresariales ---
    empresa=$(ask "¿Cuál es el nombre de la empresa? ")
    sigla=$(ask "¿Cuál es la abreviatura o sigla de la empresa? ")
    ciudad=$(ask "¿En qué ciudad está ubicada la oficina principal? ")
    fundacion=$(ask "¿En qué año se fundó la empresa o abrió la sede local? ")
    jefe=$(ask "¿Cuál es el nombre del jefe directo o gerente? ")
    area=$(ask "¿Cuál es el nombre del área o departamento? ")
    proyecto=$(ask "¿Cuál es el proyecto más importante de la empresa? ")
    software=$(ask "¿Cuál es el software o herramienta más usada en la empresa? ")
    producto=$(ask "¿Cuál es el producto o servicio principal de la empresa? ")
    slogan=$(ask "¿Cuál es el lema o hashtag de la empresa? ")
    laptop=$(ask "¿Qué marca de laptop/celular entrega la empresa a empleados? ")
    edificio=$(ask "¿Cuál es el nombre del edificio o torre donde trabaja la persona? ")
    ingreso=$(ask "¿En qué año ingresó la persona a la empresa? ")
    dominio=$(ask "¿Cuál es el dominio de correo corporativo? (ej: empresa.com) ")
    division=$(ask "¿Cuál es la filial, división o unidad del negocio? ")
    dni=$(ask "¿Cuál es el número de DNI de la persona? (8 dígitos) ")
    echo

    # --- Contraseñas clásicas empresariales ---
    BASE+=("admin" "Admin" "administrator" "Administrador" "root" "toor" \
           "admin123" "12345678" "password" "Password" "P@ssw0rd")
fi

# --- Construcción base ---
BASE=("${BASE[@]}")
for i in "$nombre" "$apellido" "$nick" "$ciudad" "$papa" "$mama" "$pareja" "$hijo" "$mascota" \
          "$juego" "$artista" "$equipo" "$hobby" "$usuario" "$hashtag" "$graduacion" "$relacion" \
          "$numero" "$color" "$comida" "$marca" "$empresa" "$sigla" "$fundacion" "$jefe" \
          "$area" "$proyecto" "$software" "$producto" "$slogan" "$laptop" "$edificio" "$ingreso" \
          "$dominio" "$division"; do
  if [ -n "$i" ]; then
    for v in $(case_variants "$i"); do
      BASE+=("$v")
    done
  fi
done

# --- Variantes de año ---
YEAR_VARIANTS=()
if [ -n "$nacimiento" ]; then
  YEAR_VARIANTS+=("$nacimiento")
  YEAR_VARIANTS+=("${nacimiento:2:2}")
  YEAR_VARIANTS+=("${nacimiento:1:3}")
fi
YEARS=(2023 2024 2025 "${YEAR_VARIANTS[@]}")

# --- Símbolos realistas ---
SYMBOLS=("!" "@" "#" "$" "%" "-" "_" "." "!!" "@@" "##" "??" "__" "&&" "\$\%")

# --- función leet ---
leet() {
  echo "$1" | sed 's/a/4/gi; s/e/3/gi; s/i/1/gi; s/o/0/gi; s/s/5/gi'
}

# --- Animación de generación ---
type_out "[*] Generando combinaciones base..."
progress_bar
type_out "[*] Agregando variantes con años de nacimiento y recientes..."
progress_bar
type_out "[*] Aplicando símbolos más usados..."
progress_bar
type_out "[*] Transformando palabras a estilo leet..."
progress_bar
type_out "[*] Combinando entradas dobles..."
progress_bar
type_out "[*] Insertando patrones con DNI..."
progress_bar

# --- Generación COMPLIANT ---
for w1 in "${BASE[@]}"; do
  for y in "${YEARS[@]}"; do
    for s in "${SYMBOLS[@]}"; do
      echo "${w1}${y}${s}" >> $OUTPUT
      [ -n "$numero" ] && echo "${w1}${numero}${y}${s}" >> $OUTPUT
      lw=$(leet "$w1")
      echo "${lw}${y}${s}" >> $OUTPUT
    done
  done
done

# --- Combinaciones dobles ---
for w1 in "${BASE[@]}"; do
  for w2 in "${BASE[@]}"; do
    [ "$w1" = "$w2" ] && continue
    for y in "${YEARS[@]}"; do
      for s in "${SYMBOLS[@]}"; do
        echo "${w1}${y}${s}${w2}" >> $OUTPUT
        echo "${w1}-${w2}${y}${s}" >> $OUTPUT
        echo "$(leet $w1)${y}${s}${w2}" >> $OUTPUT
      done
    done
  done
done

# --- Nombre + número favorito + símbolos ---
if [ -n "$numero" ]; then
  for w1 in "${BASE[@]}"; do
    for s in "${SYMBOLS[@]}"; do
      echo "${w1}${numero}${s}" >> $OUTPUT
      echo "${w1}${numero}${s}${s}" >> $OUTPUT
      echo "${w1}${numero}${s}${s}${s}" >> $OUTPUT
    done
  done
fi

# --- Bloque especial: DNI + número ---
if [[ "$dni" =~ ^[0-9]{8}$ ]]; then
  ultimos4=${dni:4:4}
  YEARS_DNI=(2023 2024 2025)
  
  for prefix in "dni" "Dni" "DNI"; do
    echo "${prefix}${dni}" >> $OUTPUT
    for s in "${SYMBOLS[@]}"; do
      echo "${prefix}${dni}${s}" >> $OUTPUT
      echo "${prefix}${dni}${s}${s}" >> $OUTPUT
      echo "${prefix}${dni}${s}${s}${s}" >> $OUTPUT
    done
    for y in "${YEARS_DNI[@]}"; do
      echo "${prefix}${dni}${y}" >> $OUTPUT
      for s in "${SYMBOLS[@]}"; do
        echo "${prefix}${dni}${y}${s}" >> $OUTPUT
      done
    done
    echo "${prefix}${ultimos4}" >> $OUTPUT
    for s in "${SYMBOLS[@]}"; do
      echo "${prefix}${ultimos4}${s}" >> $OUTPUT
      echo "${prefix}${ultimos4}${s}${s}" >> $OUTPUT
      echo "${prefix}${ultimos4}${s}${s}${s}" >> $OUTPUT
    done
    for y in "${YEARS_DNI[@]}"; do
      echo "${prefix}${ultimos4}${y}" >> $OUTPUT
      for s in "${SYMBOLS[@]}"; do
        echo "${prefix}${ultimos4}${y}${s}" >> $OUTPUT
      done
    done
  done
fi

# --- Filtrar contraseñas válidas y limitar tamaño ---
awk 'length($0) >= 8 && length($0) <= 20' $OUTPUT | sort -u | head -n 100000 > tmp && mv tmp $OUTPUT

# --- Resultado ---
echo
if [ -s "$OUTPUT" ]; then
  echo -e "\e[32m[✔] Diccionario generado exitosamente\e[0m"
  echo -e "\e[34mArchivo generado: $OUTPUT\e[0m"
  echo -e "\e[36mTotal de contraseñas: $(wc -l < $OUTPUT)\e[0m"
else
  echo -e "\e[31m[✘] Error: No se generaron combinaciones válidas\e[0m"
fi
