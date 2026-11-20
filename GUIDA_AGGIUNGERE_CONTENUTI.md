# 📸 Guida: Come Aggiungere Foto e Grafiche al Portfolio


---

## 📋 Sommario
1. [Cosa ti serve](#cosa-ti-serve)
2. [Aggiungere un nuovo album di FOTO](#-aggiungere-un-nuovo-album-di-foto)
3. [Aggiungere un nuovo album di GRAFICHE](#-aggiungere-un-nuovo-album-di-grafiche)
4. [Pubblicare le modifiche online](#-pubblicare-le-modifiche-online)
5. [FAQ - Domande Frequenti](#-faq---domande-frequenti)

---

## Cosa ti serve

- **GitHub Desktop** (applicazione scaricabile da https://desktop.github.com) - per caricare i file online
- **Un editor di testo** come Notepad++ o Visual Studio Code (opzionale, per comodità)
- **Le tue immagini** in formato JPG, PNG o WebP

---

## 📷 Aggiungere un novo album di FOTO

### STEP 1: Prepara le immagini

1. **Crea una cartella** sul tuo computer con il nome dell'album (esempio: `venezia`)
2. **Metti tutte le foto** che vuoi nel tuo album in questa cartella
3. **Rinomina** la prima foto - sarà la copertina che appare nell'elenco album. Dagli un nome che la distingua, tipo `cover.jpg`
4. **Nota:** meglio usare **nomi semplici e minuscoli** per le foto (no spazi, no caratteri strani)

Esempio:
```
venezia/
  ├── cover.jpg          ← QUESTA sarà la copertina
  ├── foto1.jpg
  ├── foto2.jpg
  └── foto3.jpg
```

### STEP 2: Carica le immagini nella cartella giusta

1. Apri il **gestore file** (Esplora Risorse su Windows)
2. Vai a: `C:\.......\portfolio_dre\src\assets\photography\`
3. **Crea una nuova cartella** con il nome del tuo album (es: `venezia`)
4. **Copia tutte le tue foto** dentro la nuova cartella

Risultato:
```
src/assets/photography/venezia/
  ├── cover.jpg
  ├── foto1.jpg
  ├── foto2.jpg
  └── foto3.jpg
```

### STEP 3: Crea il file con le informazioni dell'album

1. Apri **Blocco Note** (o un editor di testo qualsiasi)
2. Copiaincolla il testo qui sotto:

```
---
title: "TITOLO ALBUM"
description: "Breve descrizione dell'album (opzionale)"
images:
  - "../../assets/photography/NOME_CARTELLA/cover.jpg"
  - "../../assets/photography/NOME_CARTELLA/foto1.jpg"
  - "../../assets/photography/NOME_CARTELLA/foto2.jpg"
  - "../../assets/photography/NOME_CARTELLA/foto3.jpg"
date: 2026-03-23
---
```

3. **Sostituisci i campi:**
   - `TITOLO ALBUM` → nome tuo album (es: "Venezia 2026")
   - `NOME_CARTELLA` → il nome della cartella che hai creato (es: `venezia`)
   - `Breve descrizione` → una frase che descrive l'album (opzionale, puoi lasciarla vuota)
   - `2026-03-23` → la data odierna (formato YYYY-MM-DD)
   - Aggiungi più righe `- "../../assets/photography/..."` se hai più foto

   **Esempio compilato:**
```
---
title: "Venezia 2026"
description: "Carnevale e calli di Venezia"
images:
  - "../../assets/photography/venezia/cover.jpg"
  - "../../assets/photography/venezia/foto1.jpg"
  - "../../assets/photography/venezia/foto2.jpg"
  - "../../assets/photography/venezia/foto3.jpg"
  - "../../assets/photography/venezia/foto4.jpg"
date: 2026-03-23
---
```

4. **Salva il file con un nome semplice e minuscolo**
   - Esempio: `venezia.md` (il `.md` è importante!)
   - Non usare spazi o caratteri speciali nel nome

### STEP 4: Metti il file nella cartella giusta

1. Il file `.md` che hai salvato va in: `C:\Users\[TUO_NOME]\OneDrive\Desktop\Varie\portfolio\portfolio_dre\src\content\photos\`
2. **Sposta il file** che hai creato lì dentro

Risultato finale:
```
src/content/photos/venezia.md        ← file con le info
src/assets/photography/venezia/      ← cartella con le foto
  ├── cover.jpg
  ├── foto1.jpg
  ├── foto2.jpg
  └── ...
```

✅ **Fatto!** L'album di foto è pronto. Ora salta a [Step 4](#step-4-pubblica-online) per pubblicare online.

---

## 🎨 Aggiungere un novo album di GRAFICHE

La procedura è **identica** alle foto, con una piccola differenza nei nomi delle cartelle.

### STEP 1-2: (uguale alle foto)

1. Prepara le immagini come visto sopra
2. Caricale in: `C:\..........\portfolio_dre\src\assets\graphic\NOME_CARTELLA\`
   
   ⚠️ **ATTENZIONE:** la cartella è `graphic` (non `photography`!)

### STEP 3: Crea il file con le informazioni

1. Apri Blocco Note
2. Copiaincolla il testo qui sotto:

```
---
title: "TITOLO ALBUM GRAFICO"
description: "Breve descrizione (opzionale)"
images:
  - "../../assets/graphic/NOME_CARTELLA/cover.jpg"
  - "../../assets/graphic/NOME_CARTELLA/grafica1.jpg"
  - "../../assets/graphic/NOME_CARTELLA/grafica2.jpg"
date: 2026-03-23
---
```

3. **Sostituisci i campi** come visto per le foto
4. **L'unica differenza:** il percorso contiene `graphic` invece di `photography`

**Esempio compilato:**
```
---
title: "Design Logos 2026"
description: "Collezione di loghi e brand identity"
images:
  - "../../assets/graphic/logos/cover.jpg"
  - "../../assets/graphic/logos/logo1.jpg"
  - "../../assets/graphic/logos/logo2.jpg"
  - "../../assets/graphic/logos/logo3.jpg"
date: 2026-03-23
---
```

### STEP 4: Metti il file nella cartella giusta

Salva il file (es: `logos.md`) in: `C:\Users\[TUO_NOME]\OneDrive\Desktop\Varie\portfolio\portfolio_dre\src\content\graphics\`

---

## 🚀 Pubblicare le modifiche online

Ora che hai creato l'album, serve farlo salire online (su GitHub).

### STEP 1: Apri GitHub Desktop

1. Apri l'app **GitHub Desktop** (che hai scaricato prima)
2. Seleziona il progetto `portfolio_dre` a sinistra

### STEP 2: Vedi i file che hai aggiunto

La sezione di sinistra ti mostra:
- I file .md che hai creato
- Le cartelle di immagini che hai aggiunto

Dovrebbe mostrare qualcosa tipo:
```
✓ src/content/photos/venezia.md (nuovo file)
✓ src/assets/photography/venezia/ (nuova cartella con immagini)
```

### STEP 3: Scrivi un messaggio descrittivo

In basso a sinistra, troverai un campo testo che dice "Summary". Scrivi un messaggio che descrive cosa hai fatto, tipo:

```
Aggiungi album fotos: Venezia
```

O per grafiche:
```
Aggiungi album grafiche: Logos 2026
```

### STEP 4: Fai il "Commit"

Premi il bottone blu grande che dice "Commit to main"

### STEP 5: Fai il "Push" (carica online)

In alto a destra, premi il bottone "Push origin"

**Aspetta qualche secondo...**

✅ **Fatto!** Il tuo nuovo album è online! Potrei vederlo nel sito tra pochi istanti.

---

## ⏱️ Quanto tempo ci vuole?

- **Aggiungere un album:** ~5-10 minuti
- **Pubblicare:** ~20-30 secondi

Se il caricamento è lento, è solo perché le immagini sono grandi. Aspetta tranquillo.

---

## 🆘 FAQ - Domande Frequenti

### D: Quante foto posso mettere in un album?
**R:** Teoricamente infinite, ma consiglio **5-20 foto per album** (così il sito carica veloce e non è troppo lungo da scrollare).

### D: Quali formati di immagine posso usare?
**R:** JPG, PNG, WebP. Meglio usare **JPG** perché pesano meno.

### D: Posso cambiar nome a un album dopo averlo creato?
**R:** Sì! Basta cambiare il nome nel file `.md` (il titolo) e ricaricare con GitHub Desktop (push).

### D: Posso aggiungere/togliere foto da un album esistente?
**R:** Sì! 
- **Per aggiungere:** aggiungi la foto nella cartella delle immagini e la riga nel file `.md`
- **Per togliere:** elimina la foto dalla cartella e rimuovi la riga dal file `.md`
- Poi fai commit e push su GitHub Desktop

### D: Che cosa è il file `.md`?
**R:** È un file di testo semplice con un formato speciale (Markdown). Non è complicato, è solo testo con delle linee guida di struttura. Non devi imparare niente di particolare, basta copiare la struttura che ti ho mostrato.

### D: Ho sbagliato a scrivere il nome dell'album, come lo correggo?
**R:** 
1. Apri il file `.md` con Blocco Note
2. Cambia il titolo nel campo `title: "..."`
3. Salva il file
4. Fai un nuovo commit e push su GitHub Desktop

### D: Sito non aggiorna dopo il push, che faccio?
**R:** Le modifiche possono impiegare **1-2 minuti** a comparire online. Aspetta un po' e poi **ricarica la pagina** (premendo F5 o Ctrl+R). Se aspetti 5 minuti e non vedi ancora nulla, scrivi a Andrea 😄

### D: Le foto sono sdopiate o stretchate online
**R:** È normale per foto molto piccole o molto grandi. Se vuoi, chiedi a Andrea di regolare le dimensioni.

### D: Posso eliminare un intero album?
**R:** Sì, ma è un po' più complicato. Meglio chiedere a Andrea per non rompere nulla. Fondamentalmente: elimina il file `.md` e la cartella di immagini, fai commit e push.

---

## 💡 Pro Tips

1. **Comprimi le immagini prima:** foto più leggere = sito più veloce. Usa https://compressor.io (online, gratis)
2. **Metti la foto migliore per prima:** sarà la copertina che appare nell'elenco
3. **Nomi chiari:** usa nomi che capisci (no `foto123.jpg`, sì `tramonto.jpg`)
4. **Backup:** conserva copie delle tue foto sul tuo PC, non solo nel sito

