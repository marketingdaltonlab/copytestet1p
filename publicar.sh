#!/bin/sh
# Recifra a landing (source/Imersao T1P.dc.html) com a senha, sincroniza js/_ds/assets e publica.
cd "$(dirname "$0")"
printf "Senha da página: "; stty -echo; read PW; stty echo; echo
rsync -a --delete source/support.js source/image-slot.js ./ && rsync -a --delete source/_ds/ _ds/ && rsync -a --delete source/assets/ assets/
npx -y staticrypt "source/Imersao T1P.dc.html" -p "$PW" -d encrypted --short --remember 30 \
  --template-title "Imersão T1P · Landing (revisão)" \
  --template-instructions "Página em revisão, uso interno. Digite a senha pra abrir." \
  --template-button "Entrar" --template-placeholder "Senha" --template-error "Senha incorreta" \
  --template-remember "Lembrar neste dispositivo por 30 dias" \
  --template-toggle-show "Mostrar senha" --template-toggle-hide "Ocultar senha" \
  --template-color-primary "#101537" --template-color-secondary "#F4F7FB" >/dev/null
cp "encrypted/Imersao T1P.dc.html" index.html
git add -A && git commit -q -m "Atualiza landing ($(date +%d/%m\ %H:%M))" && git -c credential.helper=osxkeychain push -q && echo "publicado; o Pages atualiza em ~1 min"
