# 🧠 ALU de 8 Bits con Carry Look-Ahead - Tiny Tapeout

Este proyecto implementa una ALU (Unidad Aritmético Lógica) de 8 bits compatible con la plataforma [Tiny Tapeout](https://tinytapeout.com/). Permite realizar operaciones básicas como suma, resta, AND y OR usando un sumador optimizado tipo *carry look-ahead*.

---

## 📦 Estructura del Proyecto

```
.
├── info.yaml                  # Información del proyecto (nombre, autor, descripción)
├── visual.json                # Configuración visual del módulo para el visor 2D/3D
├── user_project_wrapper.v     # Envoltorio necesario para la plataforma (puede ser vacío)
├── src/
│   ├── user_module.v          # Módulo principal conectado a io_in / io_out
│   ├── alu_8bit.v             # ALU con 4 operaciones básicas
│   └── carry_lookahead_adder_8bit.v # Sumador look-ahead de 8 bits
├── test/
│   └── user_module_tb.v       # Testbench funcional básico
├── docs/
│   └── README.md              # Documentación del diseño
```

---

## ⚙️ Funcionamiento

### Entradas `io_in[7:0]`
- `A[3:0]` = `io_in[7:4]`
- `B[3:0]` = `io_in[3:0]`
- `sel[2:0]` = `io_in[2:0]` (selección de operación)

### Salida `io_out[7:0]`
- Resultado de la operación aritmético-lógica seleccionada

### Operaciones implementadas

| sel (3 bits) | Operación         |
|--------------|-------------------|
| 000          | A + B (suma)      |
| 001          | A - B (resta)     |
| 010          | A & B (AND)       |
| 011          | A \| B (OR)        |
| otro         | Resultado = 0     |

---

## 🔧 Cómo simular

```bash
# Simular con iverilog y ver salida
iverilog -o alu_testbench src/*.v test/user_module_tb.v
vvp alu_testbench
```

---

## 🧑 Autor

**Byron Rosales**  
Proyecto para fabricación de chip educativo en Tiny Tapeout.


