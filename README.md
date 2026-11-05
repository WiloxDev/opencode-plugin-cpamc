<p align="center">
  <img src="assets/logo.png" alt="OpenCode Go Plugin for CPAMC" width="220" />
</p>

# 🟢 OpenCode Go Plugin for CLI PROXY API CONSOLE (CPAMC)

[![Ecosistema](https://img.shields.io/badge/Ecosistema-CPAMC%20%7C%20Gentle--Shell%20%7C%20Auto--Switcher--Pro-purple?style=flat-square)](#)
[![Release](https://img.shields.io/badge/Release-v1.0.0-blue?style=flat-square)](https://github.com/WiloxDev/opencode-plugin-cpamc/releases)
[![Licencia](https://img.shields.io/badge/Licencia-MIT-green?style=flat-square)](LICENSE)

Plugin de **OpenCode Go** para **CLI PROXY API CONSOLE (CPAMC)** y el ecosistema **Gentle-Shell**, con soporte nativo para pools de trabajo continuo en **CPAMC Auto Switcher Pro**.

---

## 🌟 Modelos Soportados

- DeepSeek V4 Flash / Vision / Pro / 4.1 Flash
- GLM 5.2 / GLM 5.3 / GLM 5.3 Flash
- Grok 4.6 / Grok 4.7
- GPT 5.6 Luna / GPT 6 Luna
- Kimi K2.7 Code / Kimi K3
- MiMo V2.5 / MiMo V2.6 Flash / MiMo Pro
- MiniMax M2.7 / MiniMax M3
- Qwen 3.8 Flash / Qwen 3 Pro

---

## 🔄 Integración Dual: Standalone & Pools con Auto Switcher Pro

- **Modo Nativo Directo**: Conexión limpia y ligera en CLI PROXY API CONSOLE (CPAMC) y Gentle-Shell para una cuenta individual.
- **Modo Pool de Trabajo Continuo**: Compatible al 100% con **CPAMC Auto Switcher Pro** para crear grupos de cuentas con rotación automática, conmutación por error (failover ante 429/401) y operación ininterrumpida 24/7.
- 💡 **Multi-Cuenta**: También si tienes dos o más cuentas complementa con el plugin Auto Switcher Pro, así podrás tener una Rotación Continua, distribuir el consumo y evitar agotamiento de cuotas.

---

## 🛠️ Compilación e Instalación

Para compilar e instalar directamente en el directorio de plugins de CPAMC:

```bash
make install
```

O compilar manualmente la biblioteca compartida C-ABI (`.so`):

```bash
make build
```

El binario resultante se ubicará en `~/services/cliproxy/plugins/opencode-plugin-linux-amd64.so`.
