<p align="center">
  <img src="assets/logo.png" alt="OpenCode Plugin for CPAMC" width="220" />
</p>

# 🌐 OpenCode Go Plugin for CLI PROXY API CONSOLE (CPAMC)

[![Gentle Hub](https://img.shields.io/badge/Gentle%20Hub-Plugin-F095C8?style=for-the-badge)](https://gentlemanprogramming.com/gentle-hub/)
[![Ecosistema](https://img.shields.io/badge/Ecosistema-CPAMC%20%7C%20Gentle--Shell-blue?style=for-the-badge)](#)
[![Discord](https://img.shields.io/badge/Discord-Apoyo-5865F2?style=for-the-badge&logo=discord&logoColor=white)](https://bit.ly/48zTJUo)
[![License: MIT](https://img.shields.io/badge/License-MIT-blue.svg?style=for-the-badge)](LICENSE)

Plugin oficial en Go (C-ABI) que conecta los endpoints y modelos optimizados de la plataforma **OpenCode** dentro de **CLI PROXY API CONSOLE (CPAMC)** y **Gentle-Shell**.

Permite acceder a modelos de codificación de baja latencia con soporte completo para pools de rotación multi-cuenta en **CPAMC Auto Switcher Pro**.

> 💬 **Comunidad y Soporte Oficial:** `wilox2` · [Servidor de Discord](https://bit.ly/48zTJUo)

---

## 🌟 Modelos y Características

- Integración directa con los endpoints de inferencia de OpenCode.
- Mapeo de respuestas en streaming compatible con OpenAI responses API.
- Baja sobrecarga de memoria gracias a su compilación nativa en CGO.

---

## 🛠️ Métodos de Instalación

### Método 1: Compilación local con Go
Requiere Go (>= 1.22) y compilador C:
```bash
git clone https://github.com/WiloxDev/opencode-plugin-cpamc.git
cd opencode-plugin-cpamc
make install
```
El archivo `opencode-plugin-linux-amd64.so` se copiará automáticamente en la carpeta de plugins de CPAMC.

---

### Método 2: Despliegue en Docker
Monta el archivo `.so` en el contenedor de CPAMC:
```yaml
services:
  cpamc:
    image: ghcr.io/router-for-me/cliproxyapi:latest
    volumes:
      - ./plugins/opencode-plugin-linux-amd64.so:/app/plugins/opencode.so:ro
      - ./config.yaml:/app/config.yaml:ro
    ports:
      - "8317:8317"
```

---

## ⚙️ Configuración en CPAMC

### En la Consola Web Oficial
1. Abre: 👉 **[http://127.0.0.1:8317/management.html](http://127.0.0.1:8317/management.html)**
2. Ve a **Plugins / OpenCode**.
3. Pega tu API Key / Token de OpenCode.

### En `config.yaml`
```yaml
plugins:
  opencode:
    enabled: true
    api_key: "tu-api-key-de-opencode"
    base_url: "https://api.opencode.dev/v1"
```

---

## 🚀 Uso en Gentle Shell

1. Sincroniza los modelos con `/cpamc refresh`.
2. Escribe `/model` y selecciona tu modelo bajo el prefijo `cpamc/opencode-*`.
3. Complementa con **[CPAMC Auto Switcher Pro](https://github.com/WiloxDev/cpamc-auto-switcher-pro)** si dispones de múltiples cuentas para balancear el consumo de cuota automáticamente.

---

## 🌐 Ecosistema de la Suite WiloxDev para Gentle Hub

- 🌉 **[bridge-cpamc-oficial](https://github.com/WiloxDev/bridge-cpamc-oficial)** — Puente e instalador oficial multiplataforma de CPAMC.
- ⚡ **[cpamc-auto-switcher-pro](https://github.com/WiloxDev/cpamc-auto-switcher-pro)** — Balanceador de carga y conmutación automática anti-429.
- 🐋 **[deepseek-plugin-cpamc](https://github.com/WiloxDev/deepseek-plugin-cpamc)** — Plugin oficial de DeepSeek V3 y R1.
- 👁️ **[gentle-context-lens](https://github.com/WiloxDev/gentle-context-lens)** — Cabina de contexto, semáforo de tokens y poda quirúrgica.

---

## 📄 Licencia

MIT © Wilox. Desarrollado para la comunidad de Gentle Shell y CLIProxyAPI.
