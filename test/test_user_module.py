import cocotb
from cocotb.triggers import Timer


@cocotb.test()
async def test_basic_addition(dut):
    # A = 1, B = 2, sel = 000 (suma)
    A = 1
    B = 2
    sel = 0b000  # suma

    dut.io_in.value = (A << 4) | B  # A en bits 7:4, B en bits 3:0
    dut.io_in.value = (dut.io_in.value & 0b11111000) | sel  # insertar sel en bits 2:0

    await Timer(10, units='ns')

    expected = A + B
    actual = dut.io_out.value.integer

    assert actual == expected, f"Suma fallida: esperado {expected}, obtenido {actual}"
