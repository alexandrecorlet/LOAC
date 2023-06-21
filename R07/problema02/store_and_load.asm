# LOAC 2022.2
# Roteiro 07 - Problema 02: Leitura e Escrita na Memória de Dados
# (c) Alexandre B. Corlet dos Santos, 119210883
# This program store and reads a value from memory.

.text
main:
	lui x5, 0x10000				# Access data memory
	addi x5, x5, 0x00C			# Fill least signifcant bits with 0x00C	
	li x6, 0xFE					# Load value 0xFE into register x6
	sw x6, 0(x5)				# Store value in memory
	lw x10, 0(x5)				# Load value from x5 into x10

