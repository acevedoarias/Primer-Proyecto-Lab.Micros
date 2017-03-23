%macro writetxt 2

	mov rax, 2
	mov rdi, filename
	mov rsi, 1 + 1024
	mov rdx, 0644o
	syscall
	
	push rax
	mov rdi, rax
	mov rax, 1
	mov rsi, %1
	mov rdx, %2
	syscall

	mov rax, 3
	pop rdi
	syscall

		
%endmacro

section .data
	
	;imprimir en el file
	filename db "myfile.txt",0
	text db "Here's some text."	
	


	msgOP db 'Opcode no válido',10
	lenOP equ $-msgOP
	msgFunction db 'Function no válido',10
	lenFunction equ $-msgFunction
	msgBienvenido db 'Bienvenido al Emulador MIPS',10
	lenBienvenido equ $-msgBienvenido
	msgCurso db 'EL-4313-Lab.Estructura de Microprocesadores',10
	lenCurso equ $-msgCurso
	msgSemestre db 'I Semestre, 2017',10
	lenSemestre equ $-msgSemestre
	msgExcede db 'Excede el número permitido de argumentos',10
	lenExcede equ $-msgExcede
	archivo db 'archivo.txt',0
	msgBuscando db 'Buscando archivo',10
	lenBuscando equ $-msgBuscando
	msgEncontrado db 'Archivo encontrado',10
	lenEncontrado equ $-msgEncontrado
	msgNo db 'Archivo no encontrado',10
	lenNo equ $-msgNo
	msgEnter db 'Presione Enter'
	lenEnter equ $-msgEnter
	msgSalida db 'Presione Enter para terminar'
	lenSalida equ $-msgSalida
	msgExito db 'Ejecución existosa',10
	lenExito equ $-msgExito
	msgFallida db 'Ejecución fallida',10
	lenFallida equ $-msgFallida
	msgRonald db 'Ronald Miranda Arce 2013025663',10
	lenRonald equ $-msgRonald
	msgJavier db 'Javier Acevedo Arias 2013113174',10
	lenJavier equ $-msgJavier
	msgTony db 'Ricardo Vargas Arce 201233414',10
	lenTony equ $-msgTony
	msgJulio db 'Julio Zamora Madrigal 2014081688',10
	lenJulio equ $-msgJulio


	msgDir db 'Dirección inválida',10
	lenDir equ $-msgDir
	

	msgvalreg db '******************** Valores de los REGISTROS ********************',10	
	lenvalreg equ $-msgvalreg

	msgvalreg1 db '*****************************************************************',10	
	lenvalreg1 equ $-msgvalreg1



;----------------------Datos procesador------------------------------------
	
	msgID db 'ID de fabricante: '
	lenID equ $-msgID
	msgFamilia db 'Familia de CPU: '
	lenFamilia equ $-msgFamilia
	msgModelo db 'Nombre de modelo: '
	lenModelo equ $-msgModelo


;//////////////////// TIPO R ////////////////////////
	
	msgadd db 'La instruccion que se ejecuta es: add ' 
	lenadd equ $-msgadd
	msgsub db 'La instruccion que se ejecuta es: sub ' 
	lensub equ $-msgsub


	msgaddu db 'La instruccion que se ejecuta es: addu ' 
	lenaddu equ $-msgaddu
	msgsubu db 'La instruccion que se ejecuta es: subu ' 
	lensubu equ $-msgsubu

	msgand db 'La instruccion que se ejecuta es: and ' 
	lenand equ $-msgand
	msgor db 'La instruccion que se ejecuta es: or ' 
	lenor equ $-msgor

	msgnor db 'La instruccion que se ejecuta es: nor ' 
	lennor equ $-msgnor
	msgSLT db 'La instruccion que se ejecuta es: SLT ' 
	lenSLT equ $-msgSLT

	msgSLL db 'La instruccion que se ejecuta es: SLL ' 
	lenSLL equ $-msgSLL
	msgSLTU db 'La instruccion que se ejecuta es: SLTU ' 
	lenSLTU equ $-msgSLTU

	msgSRL db 'La instruccion que se ejecuta es: SRL ' 
	lenSRL equ $-msgSRL

	msgJR db 'La instruccion que se ejecuta es: JR '
	lenJR equ $-msgJR

	msgMULT db 'La instruccion que se ejecuta es: MULT '
	lenMULT equ $-msgMULT


;//////////////////// TIPO I ////////////////////////


	msgaddi db 'La instruccion que se ejecuta es: addi ' 
	lenaddi equ $-msgaddi
	msgaddiu db 'La instruccion que se ejecuta es: addiu ' 
	lenaddiu equ $-msgaddiu
	msgandi db 'La instruccion que se ejecuta es: andi ' 
	lenandi equ $-msgandi
	;msgaddiu db 'La instruccion que se ejecuta es: addiu ' 
	;lenaddiu equ $-msgaddiu
	msgori db 'La instruccion que se ejecuta es: ori ' 
	lenori equ $-msgori
	msgSLTI db 'La instruccion que se ejecuta es: SLTI ' 
	lenSLTI equ $-msgSLTI
	msgSLTIU db 'La instruccion que se ejecuta es: SLTIU ' 
	lenSLTIU equ $-msgSLTIU
	msgBEQ db 'La instruccion que se ejecuta es: BEQ ' 
	lenBEQ equ $-msgBEQ
	msgBNE db 'La instruccion que se ejecuta es: BNE ' 
	lenBNE equ $-msgBNE
	msgsw db 'La instruccion que se ejecuta es: sw ' 
	lensw equ $-msgsw
	msglw db 'La instruccion que se ejecuta es: lw ' 
	lenlw equ $-msglw

;//////////////////// TIPO J ////////////////////////


	msgjump db 'La instruccion que se ejecuta es: jump dir_' 
	lenjump equ $-msgjump
	msgjal db 'La instruccion que se ejecuta es: jal dir_' 
	lenjal equ $-msgjal

;///////////////////////////////////////////////////


	msgresultado db 'El resultado de la instruccion ejecutada es: '	
	lenresultado equ $-msgresultado

	msgspace db ' ',10	
	lenspace equ $-msgspace
	msgmenos db '-'	
	lenmenos equ $-msgmenos

	msgPAR1 db '('	
	lenPAR1 equ $-msgPAR1
	msgPAR2 db ')'	
	lenPAR2 equ $-msgPAR2


	msg$zero db '$zero '
	len$zero equ $-msg$zero
	
	msg$at db '$at ' 
	len$at equ $-msg$at

	msg$v0 db '$v0 ' 
	len$v0 equ $-msg$v0

	msg$v1 db '$v1 ' 
	len$v1 equ $-msg$v1

	msg$a0 db '$a0 ' 
	len$a0 equ $-msg$a0	

	msg$a1 db '$a1 ' 
	len$a1 equ $-msg$a1

	msg$a2 db '$a2 ' 
	len$a2 equ $-msg$a2

	msg$a3 db '$a3 ' 
	len$a3 equ $-msg$a3

;REGISTROS DEL $t0-$t7

	msg$t0 db '$t0 ' 
	len$t0 equ $-msg$t0

	msg$t1 db '$t1 ' 
	len$t1 equ $-msg$t1

	msg$t2 db '$t2 ' 
	len$t2 equ $-msg$t2

	msg$t3 db '$t3 ' 
	len$t3 equ $-msg$t3

	msg$t4 db '$t4 ' 
	len$t4 equ $-msg$t4

	msg$t5 db '$t5 ' 
	len$t5 equ $-msg$t5

	msg$t6 db '$t6 ' 
	len$t6 equ $-msg$t6

	msg$t7 db '$t7 ' 
	len$t7 equ $-msg$t7

;REGISTROS DEL $s0-$s7

	msg$s0 db '$s0 ' 
	len$s0 equ $-msg$s0

	msg$s1 db '$s1 ' 
	len$s1 equ $-msg$s1

	msg$s2 db '$s2 ' 
	len$s2 equ $-msg$s2

	msg$s3 db '$s3 ' 
	len$s3 equ $-msg$s3

	msg$s4 db '$s4 ' 
	len$s4 equ $-msg$s4

	msg$s5 db '$s5 ' 
	len$s5 equ $-msg$s5

	msg$s6 db '$s6 ' 
	len$s6 equ $-msg$s6

	msg$s7 db '$s7 ' 
	len$s7 equ $-msg$s7

;REGISTROS DEL $t8- $t9

	msg$t8 db '$t8 ' 
	len$t8 equ $-msg$t8

	msg$t9 db '$t9 ' 
	len$t9 equ $-msg$t9


;REGISTROS DEL $k0- $k1

	msg$k0 db '$k0 ' 
	len$k0 equ $-msg$k0

	msg$k1 db '$k1 ' 
	len$k1 equ $-msg$k1

;REGISTROS $gp

	msg$gp db '$gp ' 
	len$gp equ $-msg$gp

;REGISTROS $sp

	msg$sp db '$sp ' 
	len$sp equ $-msg$sp

;REGISTROS $fp

	msg$fp db '$fp ' 
	len$fp equ $-msg$fp


;REGISTROS $ra

	msg$ra db '$ra ' 
	len$ra equ $-msg$ra






	I DD 00000001h	


section .bss


;Espacio para reservar campos en memoria

;texto guarda lo leido de la ROM

	texto resb 4950
	en resb 1				;Para guardar cuando se presiona ENTER
	
	datos resb 800				;Memoria de datos
	stack resb 800				;stack para ejecutar SW y LW
	br resb 256				;Banco de Ragistros
	pc resb 600				;PC
	funct resb 8				;se guarda lo obtenido del Function en cada instruccion
	shamnt resb 8				;guarda lo obtenido del shamnt en cada instruccion
	rd resb 8				;guarda lo obtenido del rd en cada instruccion
	rs resb 8				;guarda lo obtenido del rs en cada instruccion
	immediate resb 8			;guarda lo obtenido del immediate en cada instruccion
	rt resb 8				;guarda lo obtenido del rt en cada instruccion
	op resb 8				;guarda lo obtenido del op en cada instruccion
	address resb 8				;guarda lo obtenido del address en cada instruccion
	arg0 resb 4				;guarda el argumento 0
	arg1 resb 4				;guarda el argumento 1
	arg2 resb 4				;guarda el argumento 2
	arg3 resb 4				;guarda el argumento 3

	digitSpace resb 100 			
	digitSpacePos resb 8 

	proce resb 48				;guarda los datos del procesador
	fabri resb 12				;guarda los datos del fabricante
	familia resb 4				;guarda la familia del procesador


section .text
	global _start


_start:
	mov rax, 2				;crear archivo de texto
	mov rdi, filename
	mov rsi, 64 + 512
	mov rdx, 0644o
	syscall	
		
	mov rax, 2		;sys_open
	mov rdi, archivo	;
	mov rsi, 0		;solo lectura
	mov rdx, 0		;
	syscall			;
	
	
	push rax		;
_n:
	mov rdi, rax		;
	mov rax, 0		;sys_read
	mov rsi, texto		;Carga lo que esta en el archivo
	mov rdx, 4950		;Cantidad de bytes que se podran leer
	syscall			;

	
	mov rax, 3		;sys_close
	pop rdi			;
	syscall			;
	mov r11, 0
;--------------------------Argumentos---------------------------
	mov rax, 1		
	pop rbx			;saca argc del stack
	mov r8, rbx		;lo muevo a r8
	mov r13, r8		;muevo r8 a r13
	cmp r8, 6
	jge _excede		;si el numero de arg excede 5 imprime que excedio el limite
	cmp r8, 1		;si unicamente de mete un argumento entonces se guardan ceros en los demás
	je _exit1

	pop rbx			;saco el path
	pop rbx			;saco el ./ejecutable
	jmp _loop
_pop:
	sub r13, 1
	cmp r11, 0
	je _arg0
	cmp r11, 1
	je _arg1
	cmp r11, 2
	je _arg2
	cmp r11, 3
	je _arg3
_arg0:				;Guardo el argumento cero
	mov [arg0], r10d
	add r11, 1
	mov r10, 0
	mov rax, 1
	jmp _seguir1
_arg1:				;Guardo el argumento uno
	mov [arg1], r10d
	add r11, 1
	mov r10, 0
	mov rax, 1
	jmp _seguir1
_arg2:				;Guardo el argumento dos
	mov [arg2], r10d
	add r11, 1
	mov r10, 0
	mov rax, 1
	jmp _seguir1
_arg3:				;Guardo el argumento tres
	mov [arg3], r10d
	add r11, 1
	mov r10, 0
	mov rax, 1
	jmp _s
_seguir1:
	cmp r13, 1		;comparo el registro con 1
	je _s			;si es 1 brinco a _s donde se sigue con la ejecución del código
	pop rbx

_loop:
	;Recorre el arreglo argv hasta encontrar un cero

	mov r8b, [rbx]
	cmp r8b, 0
	je _dec
	inc rbx
	jmp _loop
	
_dec:

	;Cuando encuentra un cero recorre el arreglo en dirección opuesta sacando cada valor en ascii
	dec rbx
	mov r8b, [rbx]
	cmp r8b, 0
	je _pop
	jmp _calc
_calc:
	sub r8b, 48	;resta al valor en ascii 48 para obtener el valor en enteros
	push rax
	mul r8d
	mov r9, rax
	add r10, r9
	pop rax
	mov r12, 10
	mul r12
	jmp _dec

_exit1:
	
	mov r8, 0
	mov [arg0], r8d
	mov [arg1], r8d
	mov [arg2], r8d
	mov [arg3], r8d
	jmp _s

_excede:
	mov rdx, lenExcede
	mov rsi, msgExcede
	mov rdi, 1
	mov rax, 1
	syscall
	jmp _salida
_s:


;Cargo los valores predeterminados para correr el código brindado por el profesor
	mov r8d, 1
	mov [datos+192], r8d
	mov r8d, 2
	mov [datos+196], r8d
	mov r8d, 3
	mov [datos+200], r8d
	mov r8d, 4
	mov [datos+204], r8d
	mov r8d, 5
	mov [datos+208], r8d
	mov r8d, 6
	mov [datos+212], r8d
	mov r8d, 7
	mov [datos+216], r8d
	mov r8d, 8
	mov [datos+220], r8d
	
;R15d de toma como puntero del PC
	mov r15d, pc
	add r15d, 600	
	mov [br+248], r15d	;se guarda en $ra el ultimo valor del PC

;se vuelve a cargar r15d en la primera posición del PC
	mov r15d, pc


	mov r15d, 0
	mov r9, [arg0]
	mov [br+32], r9
	mov r9, [arg1]
	mov [br+40], r9
	mov r9, [arg2]
	mov [br+48], r9
	mov r9, [arg3]
	mov [br+56], r9


	;Mensajes de inicio

	mov rdx, lenBienvenido
	mov rsi, msgBienvenido
	mov rdi, 1
	mov rax, 1
	syscall
	
	mov rdx, lenCurso
	mov rsi, msgCurso
	mov rdi, 1
	mov rax, 1
	syscall

	mov rdx, lenSemestre
	mov rsi, msgSemestre
	mov rdi, 1
	mov rax, 1
	syscall

	jmp _g



;-----------------------------DECODIFICACION DEL ARCHIVO DE TEXTO------------------------------
_g:	
	mov r11, stack
	add r11, 800
	push r11
	mov r10d, pc			;puntero del pc
	mov r8d, texto			;puntero de lo almacenado en texto
_0:

	mov r9d, [r8d]			;r9d almacena lo contenido en los primeros 4bytes del texto

	mov r12d, 255			;r12d carga los primeros 8 bits en uno
	and r9d, r12d			;se realiza una máscara para obtener el primer byte del texto

	cmp r9d, 31h			;se compara con el código ascii del uno
	je _suma0			;si la comparación es igual hace el jump a la etiqueta _suma0
_1:
	mov r9d, [r8d+1]		;se almacena los siguientes 4 bytes del archivo de texto, omitiendo el que ya se decodificó

	and r9d, r12d			;se realiza el mismo procedimiento para todos los bytes

	cmp r9d, 31h
	je _suma1
_2:
	mov r9d, [r8d+2]
	and r9d, r12d
	cmp r9d, 31h
	je _suma2
_3:
	mov r9d, [r8d+3]
	and r9d, r12d
	cmp r9d, 31h
	je _suma3
_4:
	mov r9d, [r8d+4]
	and r9d, r12d
	cmp r9d, 31h
	je _suma4
_5:
	mov r9d, [r8d+5]
	and r9d, r12d
	cmp r9d, 31h
	je _suma5
_6:
	mov r9d, [r8d+6]
	and r9d, r12d
	cmp r9d, 31h
	je _suma6
_7:
	mov r9d, [r8d+7]
	and r9d, r12d
	cmp r9d, 31h
	je _suma7
_8:
	mov r9d, [r8d+8]
	and r9d, r12d
	cmp r9d, 31h
	je _suma8
_9:
	mov r9d, [r8d+9]
	and r9d, r12d
	cmp r9d, 31h
	je _suma9
_10:
	mov r9d, [r8d+10]
	and r9d, r12d
	cmp r9d, 31h
	je _suma10
_11:
	mov r9d, [r8d+11]
	and r9d, r12d
	cmp r9d, 31h
	je _suma11
_12:
	mov r9d, [r8d+12]
	and r9d, r12d
	cmp r9d, 31h
	je _suma12
_13:
	mov r9d, [r8d+13]
	and r9d, r12d
	cmp r9d, 31h
	je _suma13
_14:
	mov r9d, [r8d+14]
	and r9d, r12d
	cmp r9d, 31h
	je _suma14
_15:
	mov r9d, [r8d+15]
	and r9d, r12d
	cmp r9d, 31h
	je _suma15
_16:
	mov r9d, [r8d+16]
	and r9d, r12d
	cmp r9d, 31h
	je _suma16
_17:
	mov r9d, [r8d+17]
	and r9d, r12d
	cmp r9d, 31h
	je _suma17
_18:
	mov r9d, [r8d+18]
	and r9d, r12d
	cmp r9d, 31h
	je _suma18
_19:
	mov r9d, [r8d+19]
	and r9d, r12d
	cmp r9d, 31h
	je _suma19
_20:
	mov r9d, [r8d+20]
	and r9d, r12d
	cmp r9d, 31h
	je _suma20
_21:
	mov r9d, [r8d+21]
	and r9d, r12d
	cmp r9d, 31h
	je _suma21
_22:
	mov r9d, [r8d+22]
	and r9d, r12d
	cmp r9d, 31h
	je _suma22
_23:
	mov r9d, [r8d+23]
	and r9d, r12d
	cmp r9d, 31h
	je _suma23
_24:
	mov r9d, [r8d+24]
	and r9d, r12d
	cmp r9d, 31h
	je _suma24
_25:
	mov r9d, [r8d+25]
	and r9d, r12d
	cmp r9d, 31h
	je _suma25
_26:
	mov r9d, [r8d+26]
	and r9d, r12d
	cmp r9d, 31h
	je _suma26
_27:
	mov r9d, [r8d+27]
	and r9d, r12d
	cmp r9d, 31h
	je _suma27
_28:
	mov r9d, [r8d+28]
	and r9d, r12d
	cmp r9d, 31h
	je _suma28
_29:
	mov r9d, [r8d+29]
	and r9d, r12d
	cmp r9d, 31h
	je _suma29
_30:
	mov r9d, [r8d+30]
	and r9d, r12d
	cmp r9d, 31h
	je _suma30
_31:
	mov r9d, [r8d+31]
	and r9d, r12d
	cmp r9d, 31h
	je _suma31
_32:
	mov r9d, [r8d+32]
	and r9d, r12d
	cmp r9d, 10			;el ultimo byte almacenado es un salto de línea por lo que se compara con 10
	je _suma32
	jmp _EA





_suma0:
	mov r11d, 2147483648		;se carga un 1 en el bit 32 del registro r11d
	add [r10d], r11d		;le sumo el numero cargado en r11d a lo contenido en r10d
	jmp _1
_suma1:
	mov r11d, 1073741824
	add [r10d], r11d		;le sumo el numero cargado en r11d a lo contenido en r10d
	jmp _2
_suma2:
	mov r11d, 536870912
	add [r10d], r11d		;le sumo el numero cargado en r11d a lo contenido en r10d
	jmp _3
_suma3:
	mov r11d, 268435456
	add [r10d], r11d		;le sumo el numero cargado en r11d a lo contenido en r10d
	jmp _4
_suma4:
	mov r11d, 134217728
	add [r10d], r11d		;le sumo el numero cargado en r11d a lo contenido en r10d
	jmp _5
_suma5:
	mov r11d, 67108864
	add [r10d], r11d		;le sumo el numero cargado en r11d a lo contenido en r10d
	jmp _6
_suma6:
	mov r11d, 33554432
	add [r10d], r11d		;le sumo el numero cargado en r11d a lo contenido en r10d
	jmp _7
_suma7:
	mov r11d, 16777216
	add [r10d], r11d		;le sumo el numero cargado en r11d a lo contenido en r10d
	jmp _8
_suma8:
	mov r11d, 8388608
	add [r10d], r11d		;le sumo el numero cargado en r11d a lo contenido en r10d
	jmp _9
_suma9:
	mov r11d, 4194304
	add [r10d], r11d		;le sumo el numero cargado en r11d a lo contenido en r10d
	jmp _10
_suma10:
	mov r11d, 2097152
	add [r10d], r11d		;le sumo el numero cargado en r11d a lo contenido en r10d
	jmp _11
_suma11:
	mov r11d, 1048576
	add [r10d], r11d		;le sumo el numero cargado en r11d a lo contenido en r10d
	jmp _12
_suma12:
	mov r11d, 524288
	add [r10d], r11d		;le sumo el numero cargado en r11d a lo contenido en r10d
	jmp _13
_suma13:
	mov r11d, 262144
	add [r10d], r11d		;le sumo el numero cargado en r11d a lo contenido en r10d
	jmp _14
_suma14:
	mov r11d, 131072
	add [r10d], r11d		;le sumo el numero cargado en r11d a lo contenido en r10d
	jmp _15
_suma15:
	mov r11d, 65536
	add [r10d], r11d		;le sumo el numero cargado en r11d a lo contenido en r10d
	jmp _16
_suma16:
	mov r11d, 32768
	add [r10d], r11d		;le sumo el numero cargado en r11d a lo contenido en r10d
	jmp _17
_suma17:
	mov r11d, 16384
	add [r10d], r11d		;le sumo el numero cargado en r11d a lo contenido en r10d
	jmp _18
_suma18:
	mov r11d, 8192
	add [r10d], r11d		;le sumo el numero cargado en r11d a lo contenido en r10d
	jmp _19
_suma19:
	mov r11d, 4096
	add [r10d], r11d		;le sumo el numero cargado en r11d a lo contenido en r10d
	jmp _20
_suma20:
	mov r11d, 2048
	add [r10d], r11d		;le sumo el numero cargado en r11d a lo contenido en r10d
	jmp _21
_suma21:
	mov r11d, 1024
	add [r10d], r11d		;le sumo el numero cargado en r11d a lo contenido en r10d
	jmp _22
_suma22:
	mov r11d, 512
	add [r10d], r11d		;le sumo el numero cargado en r11d a lo contenido en r10d
	jmp _23
_suma23:
	mov r11d, 256
	add [r10d], r11d		;le sumo el numero cargado en r11d a lo contenido en r10d
	jmp _24
_suma24:
	mov r11d, 128
	add [r10d], r11d		;le sumo el numero cargado en r11d a lo contenido en r10d
	jmp _25
_suma25:
	mov r11d, 64
	add [r10d], r11d		;le sumo el numero cargado en r11d a lo contenido en r10d
	jmp _26
_suma26:
	mov r11d, 32
	add [r10d], r11d		;le sumo el numero cargado en r11d a lo contenido en r10d
	jmp _27
_suma27:
	mov r11d, 16
	add [r10d], r11d		;le sumo el numero cargado en r11d a lo contenido en r10d
	jmp _28
_suma28:
	mov r11d, 8
	add [r10d], r11d		;le sumo el numero cargado en r11d a lo contenido en r10d
	jmp _29
_suma29:
	mov r11d, 4
	add [r10d], r11d		;le sumo el numero cargado en r11d a lo contenido en r10d
	jmp _30
_suma30:
	mov r11d, 2
	add [r10d], r11d		;le sumo el numero cargado en r11d a lo contenido en r10d
	jmp _31
_suma31:
	mov r11d, 1
	add [r10d], r11d		;le sumo el numero cargado en r11d a lo contenido en r10d
	jmp _32
_suma32:

	;cuando se detecta un salto de línea se le suma 4 al puntero del pc y 33 al puntero del texto 
	;para que empiece a leer en la siguiente linea de texto

	add r10d, 4
	add r8d, 33
	jmp _0

_EA:
	;Revisa si se encontró el archivo de texto o no
	mov rdx, lenBuscando
	mov rsi, msgBuscando
	mov rdi, 1
	mov rax, 1
	syscall
	
	mov r9d, [pc+r15d]
	cmp r9d, 0
	je _vacio

	mov rdx, lenEncontrado
	mov rsi, msgEncontrado
	mov rdi, 1
	mov rax, 1
	syscall	

	mov rdx, lenEnter
	mov rsi, msgEnter
	mov rdi, 1
	mov rax, 1
	syscall	

	mov rax, 0
	mov rdi, 0
	mov rsi, en
	mov rdx, 1
	syscall
	jmp _deco
	
_vacio:
	mov rdx, lenNo
	mov rsi, msgNo
	mov rdi, 1
	mov rax, 1
	syscall

	mov rdx, lenEnter
	mov rsi, msgEnter
	mov rdi, 1
	mov rax, 1
	syscall

	mov rax, 0
	mov rdi, 0
	mov rsi, en
	mov rdx, 1
	syscall
	jmp _fallida


;---------------------------DECODIFICACION DE LAS INSTRUCCIONES-------------------------------------------------------------------
_deco:




	;FUNCT
	mov r10d, 63		;se carga en el valor para realizar la mascara
	mov r9d, [pc+r15d]	;se crea un puntero con la primera posicion del pc
	and r9d, r10d		;se realiza la mascara

	mov r8d, [funct]	;se limpia el espacio de memoria 
	sub [funct], r8d	;llamado funct
	

	add [funct], r9d	;se guarda el valor obtenido de la mascara


	;SHAMNT
	mov r10d, 192		;cargo el valor para hacer la mascara de los dos bits más significativos del primer byte
	mov r8d, [pc+r15d]	;se carga la dirreción de pc
	mov r9d, r8d
	and r9d, r10d		;se realiza la mascara

	mov r10d, 1792		;cargo el valor para hacer la mascara de los tres bits menos significativos del segundo byte
	and r8d, r10d		;se realiza la mascara
	add r9d, r8d		;se suman los dos valores de las mascaras
	shr r9d, 6		;se corre el dato a la derecha para que el dato quede en los bits menos significativos

	mov r11d, [shamnt]	;se limpia el espacio de memoria 
	sub [shamnt], r11d	;llamado shamnt

	add [shamnt], r9d	;se guardan el resultado en el espacio de memoria reservado para el shamnt
	;mov r12d, [shamnt]
	
	;RD
	mov r10d, 63488		;cargo el dato para realizar la mascara
	mov r8d, [pc+r15d]	;se carga la dirreción del pc
	and r8d, r10d		;se realiza la mascara
	shr r8d, 11		;se corre el dato para que quede en los bits menos significativos

	mov r11d, [rd]		;se limpia el espacio de memoria 
	sub [rd], r11d		;llamado rd

	add [rd], r8d		;se guarda el dato en el espacio de memoria reservado
	;mov r13d, [rd]
	
	;RS
	mov r10d, 65011712	;cargo el dato para realizar la mascara
	mov r8d, [pc+r15d]	;se carga la dirreción del pc
	and r8d, r10d		;se realiza la mascara
	shr r8d, 21		;se corre el dato para que quede en los bits menos significativos

	mov r11d, [rs]		;se limpia el espacio de memoria 
	sub [rs], r11d		;llamado rs

	add [rs], r8d		;se guarda el dato en el espacio de memoria reservado
	;mov r14d, [rs]


	;IMMEDIATE

	mov r10d, 65535		;cargo el dato para realizar la mascara
	mov r8d, [pc+r15d]	;se carga la dirreción del pc
	mov r9d, r8d		
	and r9d, r10d		;se realiza la mascara

	mov r11d, [immediate]	;se limpia el espacio de memoria 
	sub [immediate], r11d	;llamado immediate

	add [immediate], r9d	;se guarda el dato en el espacio de memoria reservado
	mov r12d, [immediate]

	;RT

	mov r10d, 2031616	;cargo el dato para realizar la mascara
	mov r8d, [pc+r15d]	;se carga la dirreción del pc
	mov r9d, r8d		
	and r9d, r10d		;se realiza la mascara
	shr r9d, 16		;se corre el dato para que quede en los bits menos significativos

	mov r11d, [rt]		;se limpia el espacio de memoria 
	sub [rt], r11d		;llamado rt

	add [rt], r9d		;se guarda el dato en el espacio de memoria reservado
	;mov r13d, [rt]

	;OP
	mov r10d, 4227858432	;cargo el dato para realizar la mascara
	mov r8d, [pc+r15d]	;se carga la dirreción del pc
	mov r9d, r8d
	and r9d, r10d		;se realiza la mascara
	shr r9d, 26		;se corre el dato para que quede en los bits menos significativos

	mov r11d, [op]		;se limpia el espacio de memoria 
	sub [op], r11d		;llamado op

	add [op], r9d		;se guarda el dato en el espacio de memoria reservado
	mov r14d, [op]

	;ADDRESS
	
	mov r10d, 67108863	;cargo el dato para realizar la mascara
	mov r9d, [pc+r15d]	;se carga la dirreción del pc
	and r9d, r10d		;se realiza la mascara

	mov r11d, [address]	;se limpia el espacio de memoria 
	sub [address], r11d	;llamado funct

	add [address], r9d	;se guarda el dato en el espacio de memoria reservado
	mov r11d, [address]

;--------------------OBTENER VALORES DE LOS REGISTROS-------------------------------------

	
	; Registro RS	

	mov r8, [rs]
	shl r8, 3

	mov r9d, [br+r8]	;en r9d tengo el registro que voy a usar
_p:
	; Registro RT

	mov r13, [rt]
	shl r13, 3
	
	mov r10d, [br+r13]	;en r10d tengo el registro que voy a usar
_l:
	; Registro RD

	mov r12, [rd]
	shl r12, 3
	
	mov r11d, [br+r12]	;en r11d tengo el registro que voy a usar



;------------------------------COMPARACIONES DE OPCODES----------------------------------------------

	
	mov r8, [op]
	cmp r8, 0
	je _tipoR
	cmp r8, 8h
	je _addi
	cmp r8, 1100b
	je _andi
	cmp r8, 1101b
	je _ori
	cmp r8, 1010b
	je _SLTI
	cmp r8, 4h
	je _BEQ
	cmp r8, 5h
	je _BNE
	cmp r8, 9h
	je _addiu
	cmp r8, 101011b
	je _sw
	cmp r8, 100011b
	je _lw
	cmp r8, 1011b
	je _SLTIU
	cmp r8, 3h
	je _JAndLink
	cmp r8, 2h
	je _Jump
	jmp _w



_tipoR:

;-----------------------------------------COMPARACIONES DEL FUNCTION--------------------------------------
	
	mov r8, [funct]
	cmp r8, 20h
	je _add
	cmp r8, 22h
	je _sub
	cmp r8, 24h
	je _and
	cmp r8, 25h
	je _or
	cmp r8, 27h
	je _nor
 	cmp r8, 2ah
	je _SLT
	cmp r8, 00h
	je _SLL
	cmp r8, 02h
	je _SRL
	cmp r8, 21h
	je _addu
	cmp r8, 23h
	je _subu
	cmp r8, 101011b
	je _SLTU
	cmp r8, 08h
	je _JR
	cmp r8, 18h
	je _MULT
	jmp _ww
;-------------------------------------------INTRUCCIONES---------------------------------------------------------
_add:


	
	;Imprime en pantalla la instruccion a ejecutar

	mov rax, 1
	mov rdi, 1
	mov rsi, msgadd
	mov rdx, lenadd	
	syscall
	;Se imprime en el archivo de texto
	push r12
	mov r14, msgadd
	mov r12, lenadd
	writetxt r14, r12	
	pop r12

	;me da el registro que se uso en el espacio de rs

	call _printrd

	;seguir operacion

	add r9d, r10d			;sumo rs y rt
	mov r13, [br+r12]		;limpio lo que haya contenido en el registro rd
	sub [br+r12], r13
	add [br+r12], r9d		;guardo al registro rd el resultado de la suma
	mov r9d, [br+r12]
	
	;imprime el resultado

	mov rax, 1
	mov rdi, 1
	mov rsi, msgresultado
	mov rdx, lenresultado
	syscall
	push r12
	mov r14, msgresultado
	mov r12, lenresultado
	writetxt r14, r12
	pop r12

	;revisa si el resultado es negativo
	
	mov r10d, r9d
	shr r10d, 31
	cmp r10d, 1
	je _m1
	jmp _s1

	
_m1:

	;si es negativo le hace complemento a 2

	not r9d
	add r9d, 1

;Imprime un guión

	mov rax, 1
	mov rdi, 1
	mov rsi, msgmenos
	mov rdx, lenmenos
	syscall

	push r12	
	mov r14, msgmenos
	mov r12, lenmenos
	writetxt r14, r12
	pop r12
_s1:

;Si el resultado es positivo imprime el valor normal

	push r10
	mov r10d, r9d
	mov rax, r10
	call _printRAX
	pop r10
	
;Llama a imprimer el valor de los registros
	call _valreg

	jmp _d
_addu:

;El proceso es igual que el del add

	mov rax, 1
	mov rdi, 1
	mov rsi, msgaddu
	mov rdx, lenaddu	
	syscall
	;Se imprime en el archivo de texto
	push r12
	mov r14, msgaddu
	mov r12, lenaddu
	writetxt r14, r12	
	pop r12


	;me da el registro que se uso en el espacio de rs
	call _printrd
		
;se le hace un shift a la izquiera y uno a la derecha para quitarle el signo a los registros
	shl r9, 32
	shr r9,32
	shl r10, 32
	shr r10,32

	add r9, r10
	mov r13, [br+r12]
	sub [br+r12], r13
	add [br+r12], r9
	mov r9, [br+r12]

	mov rax, 1
	mov rdi, 1
	mov rsi, msgresultado
	mov rdx, lenresultado
	syscall

	push r12	
	mov r14, msgresultado
	mov r12, lenresultado
	writetxt r14, r12
	pop r12

	push r10
	mov r10d, r9d
	mov rax, r10
	call _printRAX
	pop r10
	
	call _valreg

	jmp _d
_sub:	


;El proceso es igual que el del add

		
	mov rax, 1
	mov rdi, 1
	mov rsi, msgsub
	mov rdx, lensub	
	syscall
	;Se imprime en el archivo de texto	
	push r12
	mov r14, msgsub
	mov r12, lensub
	writetxt r14, r12
	pop r12
	;me da el registro que se uso en el espacio de rs
	call _printrd

	sub r9, r10			;resto rs y rt
	mov r13, [br+r12]		;limpio lo que haya contenido en el registro rd
	sub [br+r12], r13	
	add [br+r12], r9		;guardo en rd el resultado de la resta
	mov r9, [br+r12]	

	mov rax, 1
	mov rdi, 1
	mov rsi, msgresultado
	mov rdx, lenresultado
	syscall

	push r12
	mov r14, msgresultado
	mov r12, lenresultado
	writetxt r14, r12
	pop r12

	mov r10d, r9d
	shr r10d, 31
	cmp r10d, 1
	je _m2
	jmp _s2

	
_m2:

	not r9d
	add r9d, 1

	mov rax, 1
	mov rdi, 1
	mov rsi, msgmenos
	mov rdx, lenmenos
	syscall

	push r12	
	mov r14, msgmenos
	mov r12, lenmenos
	writetxt r14, r12
	pop r12
_s2:

	push r10
	mov r10d, r9d
	mov rax, r10
	call _printRAX
	pop r10
	
	call _valreg

	jmp _d
	


_subu:
	mov rax, 1
	mov rdi, 1
	mov rsi, msgsubu
	mov rdx, lensubu	
	syscall	
	;Se imprime en el archivo de texto
	push r12
	mov r14, msgsubu
	mov r12, lensubu
	writetxt r14, r12	
	pop r12
	;me da el registro que se uso en el espacio de rs
	call _printrd

		
;se le hace un shift a la izquiera y uno a la derecha para quitarle el signo a los registros

	shl r9, 32
	shr r9, 32

	shl r10, 32
	shr r10, 32

	sub r9, r10
	mov r13, [br+r12]
	sub [br+r12], r13
	add [br+r12], r9
	mov r9, [br+r12]

	mov rax, 1
	mov rdi, 1
	mov rsi, msgresultado
	mov rdx, lenresultado
	syscall

	push r12
	mov r14, msgresultado
	mov r12, lenresultado
	writetxt r14, r12	
	pop r12

	push r10
	mov r10d, r9d
	mov rax, r10
	call _printRAX
	pop r10
	
	call _valreg

	jmp _d

_and:

;Realiza el and entre los dos registros


	mov rax, 1
	mov rdi, 1
	mov rsi, msgand
	mov rdx, lenand	
	syscall
	;Se imprime en el archivo de texto	
	push r12
	mov r14, msgand
	mov r12, lenand
	writetxt r14, r12	
	pop r12
	;me da el registro que se uso en el espacio de rs
	call _printrd

	and r9, r10		;aplico una and entre rs y rt
	mov r13, [br+r12]	;limpio lo contenido en rd
	sub [br+r12], r13
	add [br+r12], r9  ;guardo en rd el resultado de la and
	mov r9, [br+r12]

	mov rax, 1
	mov rdi, 1
	mov rsi, msgresultado
	mov rdx, lenresultado
	syscall

	push r12
	mov r14, msgresultado
	mov r12, lenresultado
	writetxt r14, r12	
	pop r12
	
	push r10
	mov r10d, r9d
	mov rax, r10
	call _printRAX
	pop r10
	
	call _valreg

	jmp _d

_or:

;Ejecuta una or entre los dos registros
	mov rax, 1
	mov rdi, 1
	mov rsi, msgor
	mov rdx, lenor
	syscall
	;Se imprime en el archivo de texto	
	push r12
	mov r14, msgor
	mov r12, lenor
	writetxt r14, r12
	pop r12
	;me da el registro que se uso en el espacio de rs
	call _printrd

	or r9, r10		;aplico una or entre rs y rt
	mov r13, [br+r12]	;limpio lo contenido en rd
	sub [br+r12], r13
	add [br+r12], r9	;guardo en rd el resultado
	mov r9, [br+r12]

	mov rax, 1
	mov rdi, 1
	mov rsi, msgresultado
	mov rdx, lenresultado
	syscall

	push r12
	mov r14, msgresultado
	mov r12, lenresultado
	writetxt r14, r12	
	pop r12

	push r10
	mov r10d, r9d
	mov rax, r10
	call _printRAX
	pop r10
	
	call _valreg

	jmp _d

_nor:	


;Ejecuta una nor entre dos registros	
	mov rax, 1
	mov rdi, 1
	mov rsi, msgnor
	mov rdx, lennor
	syscall
	;Se imprime en el archivo de texto	
	push r12
	mov r14, msgnor
	mov r12, lennor
	writetxt r14, r12
	pop r12
	;me da el registro que se uso en el espacio de rs
	call _printrd
		
	or r9, r10		;aplico or entre rs y rt
	not r9			;niego el resultado
	mov r13, 15
	and r9, r13 ;se hace una mascara para dejar unicamente
	mov r13, [br+r12]
	sub [br+r12], r13
	add [br+r12], r9
	mov r9, [br+r12]

	mov rax, 1
	mov rdi, 1
	mov rsi, msgresultado
	mov rdx, lenresultado
	syscall

	push r12
	mov r14, msgresultado
	mov r12, lenresultado
	writetxt r14, r12	
	pop r12	

	push r10
	mov r10d, r9d
	mov rax, r10
	call _printRAX
	pop r10
	
	call _valreg

	jmp _d

_SLT:
	mov rax, 1
	mov rdi, 1
	mov rsi, msgSLT
	mov rdx, lenSLT
	syscall
	;Se imprime en el archivo de texto	
	push r12
	mov r14, msgSLT
	mov r12, lenSLT
	writetxt r14, r12
	pop r12
	;me da el registro que se uso en el espacio de rs
	call _printrd



	cmp r9, r10	;se compara rs y rt
	jge _cero	;si rs es mayor que rt, brinca a cero
	jl _uno		;si es menor brinca a 1
	jmp _d


_SLTU:
	
	mov rax, 1
	mov rdi, 1
	mov rsi, msgSLTU
	mov rdx, lenSLTU
	syscall
	;Se imprime en el archivo de texto	
	push r12
	mov r14, msgSLTU
	mov r12, lenSLTU
	writetxt r14, r12	
	pop r12

	;me da el registro que se uso en el espacio de rs
	call _printrd
;shift a la izquierda y derecha para quitar el signo
	shl r9, 32
	shr r9, 32
	shl r10, 32
	shr r10, 32

	cmp r9, r10
	jge _cero
	jl _uno
	jmp _d

	
_cero:
	mov r13, [br+r12]	;se limpia lo almacenado en rd
	sub [br+r12], r13
	mov r13, 0		
	add [br+r12], r13	;se guarda un cero en rd
	mov r9, [br+r12]

	mov rax, 1
	mov rdi, 1
	mov rsi, msgresultado
	mov rdx, lenresultado
	syscall

	push r12
	mov r14, msgresultado
	mov r12, lenresultado
	writetxt r14, r12
	pop r12

	push r11
	push r9
	mov rax, r9
	call _printRAX 
	pop r9
	pop r11

	call _valreg
	
	jmp _d

_uno:

	mov r13, [br+r12]  ;se limpia lo almacenado en rd
	sub [br+r12], r13
	mov r13, 1
	add [br+r12], r13   ;se guarda un uno en rd
	mov r9, [br+r12]

	mov rax, 1
	mov rdi, 1
	mov rsi, msgresultado
	mov rdx, lenresultado
	syscall
	
	push r12
	mov r14, msgresultado
	mov r12, lenresultado
	writetxt r14, r12	
	pop r12

	push r11
	push r9
	mov rax, r9
	call _printRAX 
	pop r9
	pop r11

	call _valreg

	jmp _d


_SLL:
	mov rax, 1
	mov rdi, 1
	mov rsi, msgSLL
	mov rdx, lenSLL
	syscall
	;Se imprime en el archivo de texto	
	push r12
	mov r14, msgSLL
	mov r12, lenSLL
	writetxt r14, r12
	pop r12

	;me da el registro que se uso en el espacio de rs
	call _printrdS

	mov r11, [shamnt]
	push r11
	mov rax, r11
	call _printRAX
	pop r11

	mov cl, [shamnt]	;se mueve al registro cl lo contenido en shamnt para realizar el sll
	shl r10, cl		;se realiza el sll
	mov r13, [br+r12]	;se limpia lo contenido en rd
	sub [br+r12], r13
	add [br+r12], r10	;se guarda el resultado en rd
	mov r9, [br+r12]

	mov rax, 1
	mov rdi, 1
	mov rsi, msgresultado
	mov rdx, lenresultado
	syscall

	push r12
	mov r14, msgresultado
	mov r12, lenresultado
	writetxt r14, r12	
	pop r12

	push r11
	push r10
	mov rax, r10
	call _printRAX 
	pop r10
	pop r11
	
	call _valreg

	jmp _d

_SRL:
	mov rax, 1
	mov rdi, 1
	mov rsi, msgSRL
	mov rdx, lenSRL
	syscall	
	;Se imprime en el archivo de texto
	push r12
	mov r14, msgSRL
	mov r12, lenSRL
	writetxt r14, r12
	pop r12

	;me da el registro que se uso en el espacio de rs
	call _printrdS

	mov r11, [shamnt]
	push r11
	mov rax, r11
	call _printRAX
	pop r11

	mov cl, [shamnt] 	;se mueve a cl lo contenido en shamnt
	shr r10, cl		;se realiza en srl
	mov r13, [br+r12]  	;se limpia lo contenido en rd
	sub [br+r12], r13
	add [br+r12], r10 	;se guarda en rd el resultado del shift
	mov r9, [br+r12]

	mov rax, 1
	mov rdi, 1
	mov rsi, msgresultado
	mov rdx, lenresultado
	syscall

	push r12
	mov r14, msgresultado
	mov r12, lenresultado
	writetxt r14, r12	
	pop r12
		
	push r11
	push r9
	mov rax, r9
	call _printRAX 
	pop r9
	pop r11
	
 	call _valreg

	jmp _d


_JR:

	mov rax, 1
	mov rdi, 1
	mov rsi, msgJR
	mov rdx, lenJR	
	syscall

	;Se imprime en el archivo de texto
	push r12
	mov r14, msgJR
	mov r12, lenJR
	writetxt r14, r12
	pop r12

	call _printrsi
	
	mov rax, 1
	mov rdi, 1
	mov rsi, msgspace
	mov rdx, lenspace
	syscall

	;Se imprime en el archivo de texto
	push r12
	mov r14, msgspace
	mov r12, lenspace
	writetxt r14, r12
	pop r12

	mov r15d, r9d		;mueve al puntero del pc la dirección guardad en r9d
	call _valreg
_y:
	cmp r15d, 6370327	;compara si el registro r9d esta al final del pc


	je _exito		;imprime ejecución exitosa
	jmp _deco

_MULT:

	

;Ejecuta la instrucción MUL entre dos registros
	mov rax, 1
	mov rdi, 1
	mov rsi, msgMULT
	mov rdx, lenMULT	
	syscall

	;Se imprime en el archivo de texto
	push r12
	mov r14, msgMULT
	mov r12, lenMULT
	writetxt r14, r12
	pop r12

	call _printrd

	imul r9d, r10d
	mov r13, [br+r12]  
	sub [br+r12], r13
	add [br+r12], r9d 
	mov r9d, [br+r12]


	mov rax, 1
	mov rdi, 1
	mov rsi, msgresultado
	mov rdx, lenresultado
	syscall

	push r12
	mov r14, msgresultado
	mov r12, lenresultado
	writetxt r14, r12
	pop r12
	
	mov r10d, r9d
	shr r10d, 31
	cmp r10d, 1
	je _m3
	jmp _seg

	
_m3:

	not r9d
	add r9d, 1

	mov rax, 1
	mov rdi, 1
	mov rsi, msgmenos
	mov rdx, lenmenos
	syscall
	
	push r12
	mov r14, msgmenos
	mov r12, lenmenos
	writetxt r14, r12
	pop r12
_s3:

	push r10
	mov r10d, r9d
	mov rax, r10
	call _printRAX
	pop r10
	
	call _valreg

	jmp _d



;///////////////////////TIPO I

_addi:

	mov rax, 1
	mov rdi, 1
	mov rsi, msgaddi
	mov rdx, lenaddi	
	syscall

	;Se imprime en el archivo de texto
	push r12	
	mov r14, msgaddi
	mov r12, lenaddi
	writetxt r14, r12
	pop r12

	call _printrti

;Revisa si el immediate es negativo

	mov r10, [immediate]
	shr r10, 15
	cmp r10, 1
	je _continue
	jmp _seguir

_continue:

;Si es negativo imprime el guión

	mov rax, 1
	mov rdi, 1
	mov rsi, msgmenos
	mov rdx, lenmenos
	syscall
	
	push r12
	mov r14, msgmenos
	mov r12, lenmenos
	writetxt r14, r12
	pop r12
	
;Hace la extensión de signo al immediate

	mov r11, 4294901760
	add r11, [immediate]
	push r11
	mov r10, r11
	not r10
	add r10, 1
	mov r11d, r10d
	mov rax, r11
	call _printRAX
	pop r11
_tt:
	add r9, r11
	mov r12, [br+r13]
	sub [br+r13], r12
	add [br+r13], r9d	
	mov r9d, [br+r13]
_pp:

;Imprime el resultado
	mov rax, 1
	mov rdi, 1
	mov rsi, msgresultado
	mov rdx, lenresultado
	syscall

	push r12	
	mov r14, msgresultado
	mov r12, lenresultado
	writetxt r14, r12
	pop r12
	
;Si el resultado es negativo
	mov r10d, r9d
	shr r10d, 31
	cmp r10d, 1
	je _menos
	jmp _seg

	
_menos:


;Hace el complemento a 2 al resultado
	not r9d
	add r9d, 1

	mov rax, 1
	mov rdi, 1
	mov rsi, msgmenos
	mov rdx, lenmenos
	syscall
	
	push r12
	mov r14, msgmenos
	mov r12, lenmenos
	writetxt r14, r12
	pop r12
_seg:


;si no es negativo imprime el resultado normal
	push r10
	mov r10d, r9d
	mov rax, r10
	call _printRAX
	pop r10
	
	call _valreg

	jmp _d

_seguir:


;si el immediate es positivo 
	add r10, [immediate]
	mov rax, r10
	call _printRAX

	add r9, [immediate]
	mov r12, [br+r13]
	sub [br+r13], r12
	add [br+r13], r9d
	mov r9d, [br+r13]

	mov rax, 1
	mov rdi, 1
	mov rsi, msgresultado
	mov rdx, lenresultado
	syscall

	push r12
	mov r14, msgresultado
	mov r12, lenresultado
	writetxt r14, r12
	pop r12

	mov r10d, r9d
	shr r10d, 31
	cmp r10d, 1
	je _menos1
	jmp _seg1
_menos1:

	not r9d
	add r9d, 1

	mov rax, 1
	mov rdi, 1
	mov rsi, msgmenos
	mov rdx, lenmenos
	syscall

	push r12
	mov r14, msgmenos
	mov r12, lenmenos
	writetxt r14, r12
	pop r12
_seg1:
	mov r10d, r9d
	mov rax, r10
	call _printRAX
	
	call _valreg

	jmp _d


_addiu:


;realiza la suma sin signo
	
	mov rax, 1
	mov rdi, 1
	mov rsi, msgaddiu
	mov rdx, lenaddiu	
	syscall

	;Se imprime en el archivo de texto
	push r12
	mov r14, msgaddiu
	mov r12, lenaddiu
	writetxt r14, r12
	pop r12

	call _printrti
	mov r10, [immediate]
	push r10
	mov rax, r10
	call _printRAX
	pop r10


_k:


;Le hace un shift a la izquierda y a la derecha al registro y al immediate para quitar el signo
	shl r9, 32
	shr r9,32
	shl r10, 48
	shr r10,48
	add r9, r10
	mov r12, [br+r13]
	sub [br+r13], r12
	add [br+r13], r9
	mov r9, [br+r13]

	mov rax, 1
	mov rdi, 1
	mov rsi, msgresultado
	mov rdx, lenresultado
	syscall
	
	push r12
	mov r14, msgresultado
	mov r12, lenresultado
	writetxt r14, r12	
	pop r12
		
	call _valreg


	mov rax, r9
	call _printRAX
_E:
	jmp _d

_andi:


	mov rax, 1
	mov rdi, 1
	mov rsi, msgandi
	mov rdx, lenandi	
	syscall

	;Se imprime en el archivo de texto
	push r12
	mov r14, msgandi
	mov r12, lenandi
	writetxt r14, r12
	pop r12

	call _printrti	
;se compara si el immediate es negativo
	mov r10, [immediate]
	shr r10, 15
	cmp r10, 1
	je _continue5
	jmp _seguir5
	

_continue5:

	mov rax, 1
	mov rdi, 1
	mov rsi, msgmenos
	mov rdx, lenmenos
	syscall

	push r12
	mov r14, msgmenos
	mov r12, lenmenos
	writetxt r14, r12	
	pop r12
	
	mov r11, 4294901760
	add r11, [immediate]

	push r11
	mov r10, r11
	not r10
	add r10, 1
	mov r11d, r10d
	mov rax, r11
	call _printRAX
	pop r11

	and r9, r11
	mov r12, [br+r13]
	sub [br+r13], r12
	add [br+r13], r9
	mov r9d, [br+r13]


	mov rax, 1
	mov rdi, 1
	mov rsi, msgresultado
	mov rdx, lenresultado
	syscall

	push r12
	mov r14, msgresultado
	mov r12, lenresultado
	writetxt r14, r12
	pop r12

	push r10
	mov r10d, r9d
	mov rax, r10
	call _printRAX
	pop r10
	
	call _valreg


	jmp _d

_seguir5:

	mov r10,[immediate]
	mov rax, r10
	call _printRAX

	and r9, [immediate]
	mov r12, [br+r13]
	sub [br+r13], r12d
	add [br+r13], r9d
	mov r9d, [br+r13]

	mov rax, 1
	mov rdi, 1
	mov rsi, msgresultado
	mov rdx, lenresultado
	syscall
	
	push r12
	mov r14, msgresultado
	mov r12, lenresultado
	writetxt r14, r12	
	pop r12

	mov rax, r9
	call _printRAX
	
	call _valreg


	jmp _d


_ori:
	mov rax, 1
	mov rdi, 1
	mov rsi, msgori
	mov rdx, lenori	
	syscall
	
	;Se imprime en el archivo de texto
	push r12
	mov r14, msgori
	mov r12, lenori
	writetxt r14, r12
	pop r12
	
	call _printrti
;Se revisa si el immediate es negativo
	mov r10, [immediate]
	shr r10, 15
	cmp r10, 1
	je _continue6
	jmp _seguir6

_continue6:
	
	mov rax, 1
	mov rdi, 1
	mov rsi, msgmenos
	mov rdx, lenmenos
	syscall

	push r12
	mov r14, msgmenos
	mov r12, lenmenos
	writetxt r14, r12
	pop r12

	mov r11, 4294901760
	add r11, [immediate]

	push r11
	mov r10, r11
	not r10
	add r10, 1
	mov r11d, r10d
	mov rax, r11
	call _printRAX
	pop r11

	or r9, r11
	mov r12, [br+r13]
	sub [br+r13], r12
	add [br+r13], r9
	mov r9d, [br+r13]

	not r9d
	add r9d , 1

	mov rax, 1
	mov rdi, 1
	mov rsi, msgresultado
	mov rdx, lenresultado
	syscall

;Guarda en el archivo de texto
	push r12
	mov r14, msgresultado
	mov r12, lenresultado
	writetxt r14, r12
	pop r12

	push r10
	mov r10d, r9d
	mov rax, r10
	call _printRAX
	pop r10
	
	call _valreg
	jmp _d

_seguir6:
	
	mov r10,[immediate]
	mov rax, r10
	call _printRAX

	or r9, [immediate]
	mov r12, [br+r13]
	sub [br+r13], r12d
	add [br+r13], r9d
	mov r9d, [br+r13]

	mov rax, 1
	mov rdi, 1
	mov rsi, msgresultado
	mov rdx, lenresultado
	syscall

	push r12
	mov r14, msgresultado
	mov r12, lenresultado
	writetxt r14, r12
	pop r12

	mov rax, r9
	call _printRAX
	
	call _valreg
	jmp _d

_SLTI:
	
	mov rax, 1
	mov rdi, 1
	mov rsi, msgSLTI
	mov rdx, lenSLTI
	syscall

	;Se imprime en el archivo de texto
	push r12
	mov r14, msgSLTI
	mov r12, lenSLTI
	writetxt r14, r12
	pop r12

	call _printrti

	mov r10, [immediate]
	shr r10, 15
	cmp r10, 1
	je _continue7
	jmp _seguir7

_continue7:
	mov rax, 1
	mov rdi, 1
	mov rsi, msgmenos
	mov rdx, lenmenos
	syscall

	;Se imprime en el archivo de texto
	push r12
	mov r14, msgmenos
	mov r12, lenmenos
	writetxt r14, r12
	pop r12

	mov r11, 4294901760
	add r11, [immediate]

	push r11
	mov r10, r11
	not r10
	add r10, 1
	mov r11d, r10d
	mov rax, r11
	call _printRAX
	pop r11

	not r9d
	add r9d , 1

	cmp r9, r11
	jge _cero1
	jl _uno1
	jmp _d

_seguir7:
	mov r10, [immediate]
	push r11
	push r10
	mov rax, r10
	call _printRAX
	pop r10
	pop r11
	
	call _valreg

	
	cmp r9, [immediate]
	jge _cero1
	jl _uno1
	jmp _d



_SLTIU:

	mov rax, 1
	mov rdi, 1
	mov rsi, msgSLTIU
	mov rdx, lenSLTIU
	syscall

	;Se imprime en el archivo de texto
	push r12	
	mov r14, msgSLTIU
	mov r12, lenSLTIU
	writetxt r14, r12
	pop r12

	call _printrti	

	mov r10, [immediate]
	push r11
	push r10
	mov rax, r10
	call _printRAX
	pop r10
	pop r11	
		
	
	shl r9, 32
	shr r9, 32
	shl r10, 48
	shr r10, 48
	cmp r9, r10
	jge _cero1
	jl _uno1

	jmp _d

_cero1:
	mov r12, [br+r13]
	sub [br+r13], r12
	mov r9, 0
	add [br+r13], r9
	mov r9d, [br+r13]

	mov rax, 1
	mov rdi, 1
	mov rsi, msgresultado
	mov rdx, lenresultado
	syscall

	;Se imprime en el archivo de texto
	push r12
	mov r14, msgresultado
	mov r12, lenresultado
	writetxt r14, r12
	pop r12

	push r10
	mov r10d, r9d
	mov rax, r10
	call _printRAX
	pop r10

	call _valreg
	
	jmp _d

_uno1:
	mov r12, [br+r13]
	sub [br+r13], r12
	mov r9d, 1
	add [br+r13], r9
	mov r9d, [br+r13]

	mov rax, 1
	mov rdi, 1
	mov rsi, msgresultado
	mov rdx, lenresultado
	syscall

	;Se imprime en el archivo de texto
	push r12
	mov r14, msgresultado
	mov r12, lenresultado
	writetxt r14, r12
	pop r12

	push r10
	mov r10d, r9d
	mov rax, r10
	call _printRAX
	pop r10

	call _valreg
	
	jmp _d


_BEQ:
	cmp r9, r10
	je _flag

	mov rax, 1
	mov rdi, 1
	mov rsi, msgBEQ
	mov rdx, lenBEQ
	syscall

	;Se imprime en el archivo de texto
	push r14	
	mov r14, msgBEQ
	mov r12, lenBEQ
	writetxt r14, r12
	pop r14

	call _printrsix

	;imprime la dirección de la etiqueta
	mov r14, [immediate]	
	mov rax, r14
	call _printRAX

	jmp _d

_BNE:
	cmp r9, r10
	jne _flag1

	mov rax, 1
	mov rdi, 1
	mov rsi, msgBNE
	mov rdx, lenBNE
	syscall

	;Se imprime en el archivo de texto
	push r12
	mov r14, msgBNE
	mov r12, lenBNE
	writetxt r14, r12
	pop r12

	push r15
	call _printrsix	

	;imprime la dirección de la etiqueta
	mov r14, [immediate]	
	mov rax, r14
	call _printRAX
	pop r15
	jmp _d


_flag:
	
	mov rax, 1
	mov rdi, 1
	mov rsi, msgBEQ
	mov rdx, lenBEQ
	syscall

	;Se imprime en el archivo de texto
	push r12
	mov r14, msgBEQ
	mov r12, lenBEQ
	writetxt r14, r12
	pop r12

	add r15d, 4
	mov r10, [immediate]
	shr r10, 15
	cmp r10, 1
	je _continue3
	push r15
	call _printrsix	
	pop r15
	jmp _seguir3


_flag1:
	
	mov rax, 1
	mov rdi, 1
	mov rsi, msgBNE
	mov rdx, lenBNE
	syscall

	mov r14, msgBNE
	mov r12, lenBNE
	writetxt r14, r12

	add r15d, 4
	mov r10, [immediate]
	shr r10, 15
_hh:
	cmp r10, 1
	je _continue3
	push r15
	call _printrsix	;ARREGLAR
	pop r15
	jmp _seguir3

_continue3:

	;imprime la dirección de la etiqueta
	push r11
	mov r14, [immediate]	
	mov rax, r14
	call _printRAX
	pop r11

	mov r11, 4294901760
	add r11, [immediate]
	shl r11, 2
	add r15d, r11d
	
	call _valreg	
	jmp _deco


_seguir3:

	mov r11, [immediate]
	push r11
	;imprime la dirección de la etiqueta	
	mov rax, r11
	call _printRAX
	pop r11
	shl r11, 2
	add r15d, r11d
	call _valreg
	jmp _deco

_sw:
	mov rax, 1
	mov rdi, 1
	mov rsi, msgsw
	mov rdx, lensw
	syscall

	;Se imprime en el archivo de texto
	push r12
	mov r14, msgsw
	mov r12, lensw
	writetxt r14, r12
	pop r12

	call _printrtW
	call _printrsW

	mov r11, [rs]
	cmp r11, 29
	je _stack1
	jmp _continue1
_stack1:
	push r11
	;imprime la dirección de la etiqueta	
	mov r14, [immediate]

	mov r11d, r14d
	mov rax, r11
	call _printRAX
	pop r11
	pop r11
	push r11
	mov r14d, r9d
	mov r11, [immediate]
	shr r11, 15
	cmp r11, 1
	je _ex1s
	jmp _ex0s

_ex1s:

	mov r11, 4294901760
	add r11, [immediate]
	add r14, r11
	pop r11
	mov r12d, [r11d+r14d]
	sub [r11d+r14d], r12d
	add [r11d+r14d], r10d
	mov r9d, [r11d+r14d]
	call _valreg
	jmp _d
	
_ex0s:


	pop r11
	push r11
	add r14d, [immediate]
	mov r12d, [r11d+r14d]
	sub [r11d+r14d], r12d	
	add [r11d+r14d], r10d
	mov r9d, [r11d+r14d]
	call _valreg
	jmp _d

_continue1:
	
	mov r11d, r14d
	mov rax, r11
	call _printRAX
	mov r14, r9
	mov r10, [immediate]
	shr r10, 15
	cmp r10, 1
	je _ex1
	jmp _ex0
_ex1:

	mov r11, 4294901760
	add r11, [immediate]
	add r14, r11
	add r14, r11
	mov r12d, [datos+r14d]
	sub [datos+r14d], r12d	
	add [datos+r14d], r10d
	mov r9d, [datos+r14d]
	call _valreg
	jmp _d
_ex0:


	add r14d, [immediate]
	mov r12d, [datos+r14d]
	sub [datos+r14d], r12d	
	add [datos+r14d], r10d
	mov r9d, [datos+r14d]
	call _valreg
	jmp _d
_lw:


	mov rax, 1
	mov rdi, 1
	mov rsi, msglw
	mov rdx, lenlw	
	syscall

	;Se imprime en el archivo de texto
	push r12
	mov r14, msglw
	mov r12, lenlw
	writetxt r14, r12
	pop r12

	call _printrtW
	call _printrsW


	mov r14d, r9d
	mov r11, [rs]
	cmp r11, 29
	je _stack2
	jmp _continue2

_stack2:
	pop r11
	push r11
	mov r12, [br+r13]
	sub [br+r13], r12

	push r11
	;imprime la dirección de la etiqueta	
	mov r14, [immediate]
	mov r11d, r14d
	mov rax, r11
	call _printRAX
	pop r11
	pop r11
	push r11
	mov r14d, r9d
	mov r11, [immediate]
	shr r11, 15
	cmp r11, 1

	je _ext1s
	jmp _ext0s
_ext1s:
	mov r11, 4294901760
	add r11, [immediate]
	add r14, r11
	pop r11
	mov r10, [r11+r14]
	add [br+r13], r10
	mov r9, [br+r13]
	call _valreg
	jmp _d

_continue2:

	mov r14, [immediate]
	mov r11d, r14d
	mov rax, r11
	call _printRAX
	mov r12, [br+r13]
	sub [br+r13], r12
	mov r14, r9
	mov r11, [immediate]
	shr r11, 15
	cmp r11, 1
	je _ext1
	jmp _ext0
_ext1:
	mov r11, 4294901760
	add r11, [immediate]
	add r14, r11
	pop r11
	mov r10, [datos+r14]
	add [br+r13], r10
	mov r9, [br+r13]
	call _valreg
	jmp _d
_ext0:
	add r14, [immediate]
_t:
	mov r10, [datos+r14d]
_zz:
	add [br+r13], r10
	mov r9d, [br+r13]
	call _valreg
	jmp _d
_ext0s:	
	pop r11
	push r11
	add r14d, [immediate]
_o:
	add r14d, r11d
_h:
	mov r10d, [r14d]
_j:
	add [br+r13], r10d
	mov r9d, [br+r13]
	call _valreg
	jmp _d


;TIPO J

_Jump:

	mov rax, 1
	mov rdi, 1
	mov rsi, msgjump
	mov rdx, lenjump
	syscall
	;Se imprime en el archivo de texto
	push r12
	mov r14, msgjump
	mov r12, lenjump
	writetxt r14, r12	
	pop r12
	
	mov r9d, [address]
	shl r9d, 2
	mov r12d, 4026531840
	and r15d, r12d
	add r15d, r9d

	cmp r15d, 6370327
	je _dirinv
	

	mov r10d, r15d
	;imprime la direccion de la etiqueta a la que brinca		
	mov rax, r10
	call _printRAX	
	;vuelve y brinca para decodificar la siguiente intruccion

	call _valreg
	
	jmp _deco

_JAndLink:

	mov rax, 1
	mov rdi, 1
	mov rsi, msgjal
	mov rdx, lenjal
	syscall
	;Se imprime en el archivo de texto
	push r12
	mov r14, msgjal
	mov r12, lenjal
	writetxt r14, r12
	pop r12

	add r15d, 4
	mov [br+248], r15d
	mov r9d, [address]
	shl r9d, 2
	mov r12d, 4026531840
	and r15d, r12d
	add r15d, r9d

	;imprime la direccion de la etiqueta a la que brinca
	mov r10d, r15d	
	mov rax, r10
	call _printRAX
	call _valreg
	jmp _deco


_printRAX:
	
	mov rcx, digitSpace
    	mov rbx, 10
    	mov [rcx], rbx
    	inc rcx
    	mov [digitSpacePos], rcx

_printRAXLoop:
    	mov rdx, 0
    	mov rbx, 10
    	div rbx
    	push rax
    	add rdx, 48
 
    	mov rcx, [digitSpacePos]
    	mov [rcx], dl
    	inc rcx
    	mov [digitSpacePos], rcx
   
    	pop rax
    	cmp rax, 0
    	jne _printRAXLoop
 
_printRAXLoop2:
   	mov rcx, [digitSpacePos]
 
   	mov rax, 1
    	mov rdi, 1
    	mov rsi, rcx
    	mov rdx, 1
    	syscall

	mov rcx, [digitSpacePos]
	push r8
	push r9
	mov r8, rcx
	mov r9d, r8d
	writetxt r9, 1
	pop r9
 	pop r8 	

    	mov rcx, [digitSpacePos]
    	dec rcx
    	mov [digitSpacePos], rcx
 
    	cmp rcx, digitSpace
    	jge _printRAXLoop2
 
    	ret
;///////////////////////////////////////////IMPRESION EN PANTALLA DE RD PARA LAS INST TIPO R
_printrd:
	mov r14, [rd]
	cmp r14, 0
	jne _$at

	;imprime $zero
	mov rax, 1
	mov rdi, 1
	mov rsi, msg$zero
	mov rdx, len$zero
	syscall

	;imprime en el archivo de texto
	push r12
	mov r14, msg$zero
	mov r12, len$zero
	writetxt r14, r12
	pop r12


	;siguiente registro
	jmp _printrs ;

_$at:
	
	mov r14, [rd]	
	cmp r14, 1
	jne _$v0 

	;imprime $at
	mov rax, 1
	mov rdi, 1
	mov rsi, msg$at
	mov rdx, len$at
	syscall

;imprime en el archivo de texto
	push r12
	mov r14, msg$at
	mov r12, len$at
	writetxt r14, r12
	pop r12

	;siguiente registro
	jmp _printrs ;

_$v0:
	
	mov r14, [rd]	
	cmp r14, 2
	jne _$v1 ;falta
	
	;imprime $v0
	mov rax, 1
	mov rdi, 1
	mov rsi, msg$v0
	mov rdx, len$v0
	syscall

	;imprime en el archivo de texto
	push r12
	mov r14, msg$v0
	mov r12, len$v0
	writetxt r14, r12
	pop r12

	;siguiente registro
	jmp _printrs ;

_$v1:
	
	mov r14, [rd]	
	cmp r14, 3
	jne _$a0 ;falta

	;imprime $v1
	mov rax, 1
	mov rdi, 1
	mov rsi, msg$v1
	mov rdx, len$v1
	syscall

	;imprime en el archivo de texto
	push r12
	mov r14, msg$v1
	mov r12, len$v1
	writetxt r14, r12
	pop r12

	;siguiente registro
	jmp _printrs ;

_$a0:
	
	mov r14, [rd]	
	cmp r14, 4
	jne _$a1 ;falta

	;imprime $a0
	mov rax, 1
	mov rdi, 1
	mov rsi, msg$a0
	mov rdx, len$a0
	syscall

	;imprime en el archivo de texto
	push r12
	mov r14, msg$a0
	mov r12, len$a0
	writetxt r14, r12
	pop r12

	;siguiente registro
	jmp _printrs ;

_$a1:
	
	mov r14, [rd]	
	cmp r14, 5
	jne _$a2 ;falta

	;imprime $a1
	mov rax, 1
	mov rdi, 1
	mov rsi, msg$a1
	mov rdx, len$a1
	syscall

	;imprime en el archivo de texto
	push r12
	mov r14, msg$a1
	mov r12, len$a1
	writetxt r14, r12
	pop r12

	;siguiente registro
	jmp _printrs ;


_$a2:
	
	mov r14, [rd]	
	cmp r14, 6
	jne _$a3 ;falta

	;imprime $a2
	mov rax, 1
	mov rdi, 1
	mov rsi, msg$a2
	mov rdx, len$a2
	syscall

	;imprime en el archivo de texto
	push r12
	mov r14, msg$a2
	mov r12, len$a2
	writetxt r14, r12
	pop r12

	;siguiente registro
	jmp _printrs;


_$a3:
	
	mov r14, [rd]	
	cmp r14, 7
	jne _$t0 ;falta

	;imprime $a3
	mov rax, 1
	mov rdi, 1
	mov rsi, msg$a3
	mov rdx, len$a3
	syscall

	;imprime en el archivo de texto
	push r12
	mov r14, msg$a3
	mov r12, len$a3
	writetxt r14, r12
	pop r12

	;siguiente registro
	jmp _printrs ;

_$t0:
	
	mov r14, [rd]	
	cmp r14, 8
	jne _$t1 ;falta

	;imprime $t0
	mov rax, 1
	mov rdi, 1
	mov rsi, msg$t0
	mov rdx, len$t0
	syscall
	
	;imprime en el archivo de texto
	push r12
	mov r14, msg$t0
	mov r12, len$t0
	writetxt r14, r12
	pop r12

	;siguiente registro
	jmp _printrs ;

_$t1:
	
	mov r14, [rd]	
	cmp r14, 9
	jne _$t2 ;falta

	;imprime $t1
	mov rax, 1
	mov rdi, 1
	mov rsi, msg$t1
	mov rdx, len$t1
	syscall

	;imprime en el archivo de texto
	push r12
	mov r14, msg$t1
	mov r12, len$t1
	writetxt r14, r12
	pop r12

	;siguiente registro
	jmp _printrs ;

_$t2:
	
	mov r14, [rd]	
	cmp r14, 10
	jne _$t3 ;falta

	;imprime $t2
	mov rax, 1
	mov rdi, 1
	mov rsi, msg$t2
	mov rdx, len$t2
	syscall

	;imprime en el archivo de texto
	push r12
	mov r14, msg$t2
	mov r12, len$t2
	writetxt r14, r12
	pop r12

	;siguiente registro
	jmp _printrs ;

_$t3:
	
	mov r14, [rd]	
	cmp r14, 11
	jne _$t4 ;falta

	;imprime $t3
	mov rax, 1
	mov rdi, 1
	mov rsi, msg$t3
	mov rdx, len$t3
	syscall

	;imprime en el archivo de texto
	push r12
	mov r14, msg$t3
	mov r12, len$t3
	writetxt r14, r12
	pop r12

	;siguiente registro
	jmp _printrs ;

_$t4:
	
	mov r14, [rd]	
	cmp r14, 12
	jne _$t5 ;falta

	;imprime $t4
	mov rax, 1
	mov rdi, 1
	mov rsi, msg$t4
	mov rdx, len$t4
	syscall

	;imprime en el archivo de texto
	push r12
	mov r14, msg$t4
	mov r12, len$t4
	writetxt r14, r12
	pop r12

	;siguiente registro
	jmp _printrs ;

_$t5:
	
	mov r14, [rd]	
	cmp r14, 13
	jne _$t6 ;falta

	;imprime $t5
	mov rax, 1
	mov rdi, 1
	mov rsi, msg$t5
	mov rdx, len$t5
	syscall
	
	;imprime en el archivo de texto
	push r12
	mov r14, msg$t5
	mov r12, len$t5
	writetxt r14, r12
	pop r12

	;siguiente registro
	jmp _printrs ;

_$t6:
	
	mov r14, [rd]	
	cmp r14, 14
	jne _$t7 ;falta

	;imprime $t6
	mov rax, 1
	mov rdi, 1
	mov rsi, msg$t6
	mov rdx, len$t6
	syscall

	;imprime en el archivo de texto
	push r12
	mov r14, msg$t6
	mov r12, len$t6
	writetxt r14, r12
	pop r12

	;siguiente registro
	jmp _printrs ;

_$t7:
	
	mov r14, [rd]	
	cmp r14, 15
	jne _$s0 ;falta

	;imprime $t7
	mov rax, 1
	mov rdi, 1
	mov rsi, msg$t7
	mov rdx, len$t7
	syscall

	;imprime en el archivo de texto
	push r12
	mov r14, msg$t7
	mov r12, len$t7
	writetxt r14, r12
	pop r12

	;siguiente registro
	jmp _printrs ;

_$s0:
	
	mov r14, [rd]	
	cmp r14, 16
	jne _$s1 ;falta

	;imprime $s0
	mov rax, 1
	mov rdi, 1
	mov rsi, msg$s0
	mov rdx, len$s0
	syscall

	;imprime en el archivo de texto
	push r12
	mov r14, msg$s0
	mov r12, len$s0
	writetxt r14, r12
	pop r12

	;siguiente registro
	jmp _printrs ;

_$s1:
	
	mov r14, [rd]	
	cmp r14, 17
	jne _$s2 ;falta

	;imprime $s1
	mov rax, 1
	mov rdi, 1
	mov rsi, msg$s1
	mov rdx, len$s1
	syscall

	;imprime en el archivo de texto
	push r12
	mov r14, msg$s1
	mov r12, len$s1
	writetxt r14, r12
	pop r12

	;siguiente registro
	jmp _printrs ;

_$s2:
	
	mov r14, [rd]	
	cmp r14, 18
	jne _$s3 ;falta

	;imprime $s2
	mov rax, 1
	mov rdi, 1
	mov rsi, msg$s2
	mov rdx, len$s2
	syscall

	;imprime en el archivo de texto
	push r12
	mov r14, msg$s2
	mov r12, len$s2
	writetxt r14, r12
	pop r12

	;siguiente registro
	jmp _printrs ;

_$s3:
	
	mov r14, [rd]	
	cmp r14, 19
	jne _$s4 ;falta

	;imprime $s3
	mov rax, 1
	mov rdi, 1
	mov rsi, msg$s3
	mov rdx, len$s3
	syscall

	;imprime en el archivo de texto
	push r12
	mov r14, msg$s3
	mov r12, len$s3
	writetxt r14, r12
	pop r12

	;siguiente registro
	jmp _printrs ;

_$s4:
	
	mov r14, [rd]	
	cmp r14, 20
	jne _$s5 ;falta

	;imprime $s4
	mov rax, 1
	mov rdi, 1
	mov rsi, msg$s4
	mov rdx, len$s4
	syscall

	;imprime en el archivo de texto
	push r12
	mov r14, msg$s4
	mov r12, len$s4
	writetxt r14, r12
	pop r12

	;siguiente registro
	jmp _printrs ;

_$s5:
	
	mov r14, [rd]	
	cmp r14, 21
	jne _$s6 ;falta

	;imprime $s5
	mov rax, 1
	mov rdi, 1
	mov rsi, msg$s5
	mov rdx, len$s5
	syscall

	;imprime en el archivo de texto
	push r12
	mov r14, msg$s5
	mov r12, len$s5
	writetxt r14, r12
	pop r12

	;siguiente registro
	jmp _printrs ;

_$s6:
	
	mov r14, [rd]	
	cmp r14, 22
	jne _$s7 ;falta

	;imprime $s6
	mov rax, 1
	mov rdi, 1
	mov rsi, msg$s6
	mov rdx, len$s6
	syscall

	;imprime en el archivo de texto
	push r12
	mov r14, msg$s6
	mov r12, len$s6
	writetxt r14, r12
	pop r12

	;siguiente registro
	jmp _printrs ;

_$s7:
	
	mov r14, [rd]	
	cmp r14, 23
	jne _$t8 ;falta

	;imprime $s7
	mov rax, 1
	mov rdi, 1
	mov rsi, msg$s7
	mov rdx, len$s7
	syscall

	;imprime en el archivo de texto
	push r12
	mov r14, msg$s7
	mov r12, len$s7
	writetxt r14, r12
	pop r12

	;siguiente registro
	jmp _printrs ;

_$t8:
	
	mov r14, [rd]	
	cmp r14, 24
	jne _$t9 ;falta

	;imprime $t8
	mov rax, 1
	mov rdi, 1
	mov rsi, msg$t8
	mov rdx, len$t8
	syscall

	;imprime en el archivo de texto
	push r12
	mov r14, msg$t8
	mov r12, len$t8
	writetxt r14, r12
	pop r12

	;siguiente registro
	jmp _printrs ;

_$t9:
	
	mov r14, [rd]	
	cmp r14, 25
	jne _$k0 ;falta

	;imprime $t9
	mov rax, 1
	mov rdi, 1
	mov rsi, msg$t9
	mov rdx, len$t9
	syscall

	;imprime en el archivo de texto
	push r12
	mov r14, msg$t9
	mov r12, len$t9
	writetxt r14, r12
	pop r12

	;siguiente registro
	jmp _printrs ;

_$k0:
	
	mov r14, [rd]	
	cmp r14, 26
	jne _$k1 ;falta

	;imprime $k0
	mov rax, 1
	mov rdi, 1
	mov rsi, msg$k0
	mov rdx, len$k0
	syscall

	;imprime en el archivo de texto
	push r12
	mov r14, msg$k0
	mov r12, len$k0
	writetxt r14, r12
	pop r12

	;siguiente registro
	jmp _printrs ;

_$k1:
	
	mov r14, [rd]	
	cmp r14, 27
	jne _$gp ;falta

	;imprime $k1
	mov rax, 1
	mov rdi, 1
	mov rsi, msg$k1
	mov rdx, len$k1
	syscall

	;imprime en el archivo de texto
	push r12
	mov r14, msg$k1
	mov r12, len$k1
	writetxt r14, r12
	pop r12

	;siguiente registro
	jmp _printrs ;

_$gp:
	
	mov r14, [rd]	
	cmp r14, 28
	jne _$sp ;falta

	;imprime $gp
	mov rax, 1
	mov rdi, 1
	mov rsi, msg$gp
	mov rdx, len$gp
	syscall

	;imprime en el archivo de texto
	push r12
	mov r14, msg$gp
	mov r12, len$gp
	writetxt r14, r12
	pop r12

	;siguiente registro
	jmp _printrs ;

_$sp:
	
	mov r14, [rd]	
	cmp r14, 29
	jne _$fp ;falta

	;imprime $sp
	mov rax, 1
	mov rdi, 1
	mov rsi, msg$sp
	mov rdx, len$sp
	syscall

	;imprime en el archivo de texto
	push r12
	mov r14, msg$sp
	mov r12, len$sp
	writetxt r14, r12
	pop r12

	;siguiente registro
	jmp _printrs ;

_$fp:
	
	mov r14, [rd]	
	cmp r14, 30
	jne _$ra ;falta

	;imprime $fp
	mov rax, 1
	mov rdi, 1
	mov rsi, msg$fp
	mov rdx, len$fp
	syscall

	;imprime en el archivo de texto
	push r12
	mov r14, msg$fp
	mov r12, len$fp
	writetxt r14, r12
	pop r12

	;siguiente registro
	jmp _printrs ;

_$ra:
	

	;imprime $ra
	mov rax, 1
	mov rdi, 1
	mov rsi, msg$ra
	mov rdx, len$ra
	syscall

	;imprime en el archivo de texto
	push r12
	mov r14, msg$ra
	mov r12, len$ra
	writetxt r14, r12
	pop r12

	;siguiente registro
	jmp _printrs ;


;///////////////////////////////////////////IMPRESION EN PANTALLA DE RS PARA LAS INST TIPO R
	
_printrs:
	mov r14, [rs]
	cmp r14, 0
	jne _$$at

	;imprime $zero
	mov rax, 1
	mov rdi, 1
	mov rsi, msg$zero
	mov rdx, len$zero
	syscall

	;imprime en el archivo de texto
	push r12
	mov r14, msg$zero
	mov r12, len$zero
	writetxt r14, r12
	pop r12

	;siguiente registro
	jmp _printrt	
_$$at:
	mov r14, [rs]	
	cmp r14, 1
	jne _$$v0 ; falta

	;imprime $at
	mov rax, 1
	mov rdi, 1
	mov rsi, msg$at
	mov rdx, len$at
	syscall

	;imprime en el archivo de texto
	push r12
	mov r14, msg$at
	mov r12, len$at
	writetxt r14, r12
	pop r12

	;siguiente registro
	jmp _printrt ;

_$$v0:
	
	mov r14, [rs]	
	cmp r14, 2
	jne _$$v1 ;falta
	
	;imprime $v0
	mov rax, 1
	mov rdi, 1
	mov rsi, msg$v0
	mov rdx, len$v0
	syscall

	;imprime en el archivo de texto
	push r12
	mov r14, msg$v0
	mov r12, len$v0
	writetxt r14, r12
	pop r12

	;siguiente registro
	jmp _printrt ;

_$$v1:
	
	mov r14, [rs]	
	cmp r14, 3
	jne _$$a0 ;falta

	;imprime $v1
	mov rax, 1
	mov rdi, 1
	mov rsi, msg$v1
	mov rdx, len$v1
	syscall

	;imprime en el archivo de texto
	push r12
	mov r14, msg$v1
	mov r12, len$v1
	writetxt r14, r12
	pop r12

	;siguiente registro
	jmp _printrt ;

_$$a0:
	
	mov r14, [rs]	
	cmp r14, 4
	jne _$$a1 ;falta

	;imprime $a0
	mov rax, 1
	mov rdi, 1
	mov rsi, msg$a0
	mov rdx, len$a0
	syscall

	;imprime en el archivo de texto
	push r12
	mov r14, msg$a0
	mov r12, len$a0
	writetxt r14, r12
	pop r12

	;siguiente registro
	jmp _printrt ;

_$$a1:
	
	mov r14, [rs]	
	cmp r14, 5
	jne _$$a2 ;falta

	;imprime $a1
	mov rax, 1
	mov rdi, 1
	mov rsi, msg$a1
	mov rdx, len$a1
	syscall

	;imprime en el archivo de texto
	push r12
	mov r14, msg$a1
	mov r12, len$a1
	writetxt r14, r12
	pop r12

	;siguiente registro
	jmp _printrt ;


_$$a2:
	
	mov r14, [rs]	
	cmp r14, 6
	jne _$$a3 ;falta

	;imprime $a2
	mov rax, 1
	mov rdi, 1
	mov rsi, msg$a2
	mov rdx, len$a2
	syscall

	;imprime en el archivo de texto
	push r12
	mov r14, msg$a2
	mov r12, len$a2
	writetxt r14, r12
	pop r12

	;siguiente registro
	jmp _printrt ;


_$$a3:
	
	mov r14, [rs]	
	cmp r14, 7
	jne _$$t0 ;falta

	;imprime $a3
	mov rax, 1
	mov rdi, 1
	mov rsi, msg$a3
	mov rdx, len$a3
	syscall

	;imprime en el archivo de texto
	push r12
	mov r14, msg$a3
	mov r12, len$a3
	writetxt r14, r12
	pop r12

	;siguiente registro
	jmp _printrt ;

_$$t0:
	
	mov r14, [rs]	
	cmp r14, 8
	jne _$$t1 ;falta

	;imprime $t0
	mov rax, 1
	mov rdi, 1
	mov rsi, msg$t0
	mov rdx, len$t0
	syscall

	;imprime en el archivo de texto
	push r12
	mov r14, msg$t0
	mov r12, len$t0
	writetxt r14, r12
	pop r12

	;siguiente registro
	jmp _printrt ;

_$$t1:
	
	mov r14, [rs]	
	cmp r14, 9
	jne _$$t2 ;falta

	;imprime $t1
	mov rax, 1
	mov rdi, 1
	mov rsi, msg$t1
	mov rdx, len$t1
	syscall

	;imprime en el archivo de texto
	push r12
	mov r14, msg$t1
	mov r12, len$t1
	writetxt r14, r12
	pop r12

	;siguiente registro
	jmp _printrt ;

_$$t2:
	
	mov r14, [rs]	
	cmp r14, 10
	jne _$$t3 ;falta

	;imprime $t2
	mov rax, 1
	mov rdi, 1
	mov rsi, msg$t2
	mov rdx, len$t2
	syscall

	;imprime en el archivo de texto
	push r12
	mov r14, msg$t2
	mov r12, len$t2
	writetxt r14, r12
	pop r12

	;siguiente registro
	jmp _printrt ;

_$$t3:
	
	mov r14, [rs]	
	cmp r14, 11
	jne _$$t4 ;falta

	;imprime $t3
	mov rax, 1
	mov rdi, 1
	mov rsi, msg$t3
	mov rdx, len$t3
	syscall

	;imprime en el archivo de texto
	push r12
	mov r14, msg$t3
	mov r12, len$t3
	writetxt r14, r12
	pop r12

	;siguiente registro
	jmp _printrt ;

_$$t4:
	
	mov r14, [rs]	
	cmp r14, 12
	jne _$$t5 ;falta

	;imprime $t4
	mov rax, 1
	mov rdi, 1
	mov rsi, msg$t4
	mov rdx, len$t4
	syscall

	;imprime en el archivo de texto
	push r12
	mov r14, msg$t4
	mov r12, len$t4
	writetxt r14, r12
	pop r12

	;siguiente registro
	jmp _printrt ;

_$$t5:
	
	mov r14, [rs]	
	cmp r14, 13
	jne _$$t6 ;falta

	;imprime $t5
	mov rax, 1
	mov rdi, 1
	mov rsi, msg$t5
	mov rdx, len$t5
	syscall

	;imprime en el archivo de texto
	push r12
	mov r14, msg$t5
	mov r12, len$t5
	writetxt r14, r12
	pop r12

	;siguiente registro
	jmp _printrt ;

_$$t6:
	
	mov r14, [rs]	
	cmp r14, 14
	jne _$$t7 ;falta

	;imprime $t6
	mov rax, 1
	mov rdi, 1
	mov rsi, msg$t6
	mov rdx, len$t6
	syscall

	;imprime en el archivo de texto
	push r12
	mov r14, msg$t6
	mov r12, len$t6
	writetxt r14, r12
	pop r12

	;siguiente registro
	jmp _printrt ;

_$$t7:
	
	mov r14, [rs]	
	cmp r14, 15
	jne _$$s0 ;falta

	;imprime $t7
	mov rax, 1
	mov rdi, 1
	mov rsi, msg$t7
	mov rdx, len$t7
	syscall

	;imprime en el archivo de texto
	push r12
	mov r14, msg$t7
	mov r12, len$t7
	writetxt r14, r12
	pop r12

	;siguiente registro
	jmp _printrt ;

_$$s0:
	
	mov r14, [rs]	
	cmp r14, 16
	jne _$$s1 ;falta

	;imprime $s0
	mov rax, 1
	mov rdi, 1
	mov rsi, msg$s0
	mov rdx, len$s0
	syscall

	;imprime en el archivo de texto
	push r12
	mov r14, msg$s0
	mov r12, len$s0
	writetxt r14, r12
	pop r12

	;siguiente registro
	jmp _printrt ;

_$$s1:
	
	mov r14, [rs]	
	cmp r14, 17
	jne _$$s2 ;falta

	;imprime $s1
	mov rax, 1
	mov rdi, 1
	mov rsi, msg$s1
	mov rdx, len$s1
	syscall

	;imprime en el archivo de texto
	push r12
	mov r14, msg$s1
	mov r12, len$s1
	writetxt r14, r12
	pop r12

	;siguiente registro
	jmp _printrt ;

_$$s2:
	
	mov r14, [rs]	
	cmp r14, 18
	jne _$$s3 ;falta

	;imprime $s2
	mov rax, 1
	mov rdi, 1
	mov rsi, msg$s2
	mov rdx, len$s2
	syscall

	;imprime en el archivo de texto
	push r12
	mov r14, msg$s2
	mov r12, len$s2
	writetxt r14, r12
	pop r12

	;siguiente registro
	jmp _printrt ;

_$$s3:
	
	mov r14, [rs]	
	cmp r14, 19
	jne _$$s4 ;falta

	;imprime $s3
	mov rax, 1
	mov rdi, 1
	mov rsi, msg$s3
	mov rdx, len$s3
	syscall

	;imprime en el archivo de texto
	push r12
	mov r14, msg$s3
	mov r12, len$s3
	writetxt r14, r12
	pop r12

	;siguiente registro
	jmp _printrt ;

_$$s4:
	
	mov r14, [rs]	
	cmp r14, 20
	jne _$$s5 ;falta

	;imprime $s4
	mov rax, 1
	mov rdi, 1
	mov rsi, msg$s4
	mov rdx, len$s4
	syscall

	;imprime en el archivo de texto
	push r12
	mov r14, msg$s4
	mov r12, len$s4
	writetxt r14, r12
	pop r12

	;siguiente registro
	jmp _printrt ;

_$$s5:
	
	mov r14, [rs]	
	cmp r14, 21
	jne _$$s6 ;falta

	;imprime $s5
	mov rax, 1
	mov rdi, 1
	mov rsi, msg$s5
	mov rdx, len$s5
	syscall

	;imprime en el archivo de texto
	push r12
	mov r14, msg$s5
	mov r12, len$s5
	writetxt r14, r12
	pop r12

	;siguiente registro
	jmp _printrt ;

_$$s6:
	
	mov r14, [rs]	
	cmp r14, 22
	jne _$$s7 ;falta

	;imprime $s6
	mov rax, 1
	mov rdi, 1
	mov rsi, msg$s6
	mov rdx, len$s6
	syscall

	;imprime en el archivo de texto
	push r12
	mov r14, msg$s6
	mov r12, len$s6
	writetxt r14, r12
	pop r12

	;siguiente registro
	jmp _printrt ;

_$$s7:
	
	mov r14, [rs]	
	cmp r14, 23
	jne _$$t8 ;falta

	;imprime $s7
	mov rax, 1
	mov rdi, 1
	mov rsi, msg$s7
	mov rdx, len$s7
	syscall

	;imprime en el archivo de texto
	push r12
	mov r14, msg$s7
	mov r12, len$s7
	writetxt r14, r12
	pop r12

	;siguiente registro
	jmp _printrt ;

_$$t8:
	
	mov r14, [rs]	
	cmp r14, 24
	jne _$$t9 ;falta

	;imprime $t8
	mov rax, 1
	mov rdi, 1
	mov rsi, msg$t8
	mov rdx, len$t8
	syscall

	;imprime en el archivo de texto
	push r12
	mov r14, msg$t8
	mov r12, len$t8
	writetxt r14, r12
	pop r12

	;siguiente registro
	jmp _printrt ;

_$$t9:
	
	mov r14, [rs]	
	cmp r14, 25
	jne _$$k0 ;falta

	;imprime $t9
	mov rax, 1
	mov rdi, 1
	mov rsi, msg$t9
	mov rdx, len$t9
	syscall

	;imprime en el archivo de texto
	push r12
	mov r14, msg$t9
	mov r12, len$t9
	writetxt r14, r12
	pop r12

	;siguiente registro
	jmp _printrt ;

_$$k0:
	
	mov r14, [rs]	
	cmp r14, 26
	jne _$$k1 ;falta

	;imprime $k0
	mov rax, 1
	mov rdi, 1
	mov rsi, msg$k0
	mov rdx, len$k0
	syscall

	;imprime en el archivo de texto
	push r12
	mov r14, msg$k0
	mov r12, len$k0
	writetxt r14, r12
	pop r12

	;siguiente registro
	jmp _printrt ;

_$$k1:
	
	mov r14, [rs]	
	cmp r14, 27
	jne _$$gp ;falta

	;imprime $k1
	mov rax, 1
	mov rdi, 1
	mov rsi, msg$k1
	mov rdx, len$k1
	syscall

	;imprime en el archivo de texto
	push r12
	mov r14, msg$k1
	mov r12, len$k1
	writetxt r14, r12
	pop r12

	;siguiente registro
	jmp _printrt ;

_$$gp:
	
	mov r14, [rs]	
	cmp r14, 28
	jne _$$sp ;falta

	;imprime $gp
	mov rax, 1
	mov rdi, 1
	mov rsi, msg$gp
	mov rdx, len$gp
	syscall

	;imprime en el archivo de texto
	push r12
	mov r14, msg$gp
	mov r12, len$gp
	writetxt r14, r12
	pop r12

	;siguiente registro
	jmp _printrt ;

_$$sp:
	
	mov r14, [rs]	
	cmp r14, 29
	jne _$$fp ;falta

	;imprime $sp
	mov rax, 1
	mov rdi, 1
	mov rsi, msg$sp
	mov rdx, len$sp
	syscall

	;imprime en el archivo de texto
	push r12
	mov r14, msg$sp
	mov r12, len$sp
	writetxt r14, r12
	pop r12

	;siguiente registro
	jmp _printrt ;

_$$fp:
	
	mov r14, [rs]	
	cmp r14, 30
	jne _$$ra ;falta

	;imprime $fp
	mov rax, 1
	mov rdi, 1
	mov rsi, msg$fp
	mov rdx, len$fp
	syscall

	;imprime en el archivo de texto
	push r12
	mov r14, msg$fp
	mov r12, len$fp
	writetxt r14, r12
	pop r12

	;siguiente registro
	jmp _printrt ;

_$$ra:
	

	;imprime $ra
	mov rax, 1
	mov rdi, 1
	mov rsi, msg$ra
	mov rdx, len$ra
	syscall

	;imprime en el archivo de texto
	push r12
	mov r14, msg$ra
	mov r12, len$ra
	writetxt r14, r12
	pop r12

	;siguiente registro
	jmp _printrt ;

;///////////////////////////////////////////////////IMPRESION EN PANTALLA DE RT PARA LAS INST TIPO R
	
_printrt:	
	mov r14, [rt]
	cmp r14, 0
	jne _$$$at

	;imprime $zero
	mov rax, 1
	mov rdi, 1
	mov rsi, msg$zero
	mov rdx, len$zero
	syscall

	;imprime en el archivo de texto
	push r12
	mov r14, msg$zero
	mov r12, len$zero
	writetxt r14, r12
	pop r12

	;imprime el espacio
	mov rax, 1
	mov rdi, 1
	mov rsi, msgspace
	mov rdx, lenspace
	syscall

	;imprime en el archivo de texto
	push r12
	mov r14, msgspace
	mov r12, lenspace
	writetxt r14, r12
	pop r12
				
	ret	;vuelve a la operacion

_$$$at:
	
	mov r14, [rt]
	cmp r14, 1
	jne _$$$v0

	;imprime $zero
	mov rax, 1
	mov rdi, 1
	mov rsi, msg$at
	mov rdx, len$at
	syscall

	;imprime en el archivo de texto
	push r12
	mov r14, msg$at
	mov r12, len$at
	writetxt r14, r12
	pop r12

	;imprime el espacio
	mov rax, 1
	mov rdi, 1
	mov rsi, msgspace
	mov rdx, lenspace
	syscall

	;imprime en el archivo de texto
	push r12
	mov r14, msgspace
	mov r12, lenspace
	writetxt r14, r12
	pop r12
					
	ret	;vuelve a la operacion

_$$$v0:
	
	mov r14, [rt]	
	cmp r14, 2
	jne _$$$v1 ;falta
	
	;imprime $v0
	mov rax, 1
	mov rdi, 1
	mov rsi, msg$v0
	mov rdx, len$v0
	syscall

	;imprime en el archivo de texto
	push r12
	mov r14, msg$v0
	mov r12, len$v0
	writetxt r14, r12
	pop r12

	;imprime el espacio
	mov rax, 1
	mov rdi, 1
	mov rsi, msgspace
	mov rdx, lenspace
	syscall

	;imprime en el archivo de texto
	push r12
	mov r14, msgspace
	mov r12, lenspace
	writetxt r14, r12
	pop r12

	ret	;vuelve a la operacion

_$$$v1:
	
	mov r14, [rt]	
	cmp r14, 3
	jne _$$$a0 ;falta

	;imprime $v1
	mov rax, 1
	mov rdi, 1
	mov rsi, msg$v1
	mov rdx, len$v1
	syscall

	;imprime en el archivo de texto
	push r12
	mov r14, msg$v1
	mov r12, len$v1
	writetxt r14, r12
	pop r12

	;imprime el espacio
	mov rax, 1
	mov rdi, 1
	mov rsi, msgspace
	mov rdx, lenspace
	syscall

	;imprime en el archivo de texto
	push r12
	mov r14, msgspace
	mov r12, lenspace
	writetxt r14, r12
	pop r12

	ret	;vuelve a la operacion

_$$$a0:
	
	mov r14, [rt]	
	cmp r14, 4
	jne _$$$a1 ;falta

	;imprime $a0
	mov rax, 1
	mov rdi, 1
	mov rsi, msg$a0
	mov rdx, len$a0
	syscall

	;imprime en el archivo de texto
	push r12
	mov r14, msg$a0
	mov r12, len$a0
	writetxt r14, r12
	pop r12

	;imprime el espacio
	mov rax, 1
	mov rdi, 1
	mov rsi, msgspace
	mov rdx, lenspace
	syscall

	;imprime en el archivo de texto
	push r12
	mov r14, msgspace
	mov r12, lenspace
	writetxt r14, r12
	pop r12

	ret	;vuelve a la operacion

_$$$a1:
	
	mov r14, [rt]	
	cmp r14, 5
	jne _$$$a2 ;falta

	;imprime $a1
	mov rax, 1
	mov rdi, 1
	mov rsi, msg$a1
	mov rdx, len$a1
	syscall

	;imprime en el archivo de texto
	push r12
	mov r14, msg$a1
	mov r12, len$a1
	writetxt r14, r12
	pop r12

	;imprime el espacio
	mov rax, 1
	mov rdi, 1
	mov rsi, msgspace
	mov rdx, lenspace
	syscall

	;imprime en el archivo de texto
	push r12
	mov r14, msgspace
	mov r12, lenspace
	writetxt r14, r12
	pop r12

	ret	;vuelve a la operacion


_$$$a2:
	
	mov r14, [rt]	
	cmp r14, 6
	jne _$$$a3 ;falta

	;imprime $a2
	mov rax, 1
	mov rdi, 1
	mov rsi, msg$a2
	mov rdx, len$a2
	syscall

	;imprime en el archivo de texto
	push r12
	mov r14, msg$a2
	mov r12, len$a2
	writetxt r14, r12
	pop r12

	;imprime el espacio
	mov rax, 1
	mov rdi, 1
	mov rsi, msgspace
	mov rdx, lenspace
	syscall

	;imprime en el archivo de texto
	push r12
	mov r14, msgspace
	mov r12, lenspace
	writetxt r14, r12
	pop r12

	ret	;vuelve a la operacion


_$$$a3:
	
	mov r14, [rt]	
	cmp r14, 7
	jne _$$$t0 ;falta

	;imprime $a3
	mov rax, 1
	mov rdi, 1
	mov rsi, msg$a3
	mov rdx, len$a3
	syscall

	;imprime en el archivo de texto
	push r12
	mov r14, msg$a3
	mov r12, len$a3
	writetxt r14, r12
	pop r12

	;imprime el espacio
	mov rax, 1
	mov rdi, 1
	mov rsi, msgspace
	mov rdx, lenspace
	syscall

	;imprime en el archivo de texto
	push r12
	mov r14, msgspace
	mov r12, lenspace
	writetxt r14, r12
	pop r12

	ret	;vuelve a la operacion

_$$$t0:
	
	mov r14, [rt]	
	cmp r14, 8
	jne _$$$t1 ;falta

	;imprime $t0
	mov rax, 1
	mov rdi, 1
	mov rsi, msg$t0
	mov rdx, len$t0
	syscall

	;imprime en el archivo de texto
	push r12
	mov r14, msg$t0
	mov r12, len$t0
	writetxt r14, r12
	pop r12

	;imprime el espacio
	mov rax, 1
	mov rdi, 1
	mov rsi, msgspace
	mov rdx, lenspace
	syscall

	;imprime en el archivo de texto
	push r12
	mov r14, msgspace
	mov r12, lenspace
	writetxt r14, r12
	pop r12

	ret	;vuelve a la operacion

_$$$t1:
	
	mov r14, [rt]	
	cmp r14, 9
	jne _$$$t2 ;falta

	;imprime $t1
	mov rax, 1
	mov rdi, 1
	mov rsi, msg$t1
	mov rdx, len$t1
	syscall

	;imprime en el archivo de texto
	push r12
	mov r14, msg$t1
	mov r12, len$t1
	writetxt r14, r12
	pop r12

	;imprime el espacio
	mov rax, 1
	mov rdi, 1
	mov rsi, msgspace
	mov rdx, lenspace
	syscall

	;imprime en el archivo de texto
	push r12
	mov r14, msgspace
	mov r12, lenspace
	writetxt r14, r12
	pop r12

	ret	;vuelve a la operacion

_$$$t2:
	
	mov r14, [rt]	
	cmp r14, 10
	jne _$$$t3 ;falta

	;imprime $t2
	mov rax, 1
	mov rdi, 1
	mov rsi, msg$t2
	mov rdx, len$t2
	syscall

	;imprime en el archivo de texto
	push r12
	mov r14, msg$t2
	mov r12, len$t2
	writetxt r14, r12
	pop r12

	;imprime el espacio
	mov rax, 1
	mov rdi, 1
	mov rsi, msgspace
	mov rdx, lenspace
	syscall

	;imprime en el archivo de texto
	push r12
	mov r14, msgspace
	mov r12, lenspace
	writetxt r14, r12
	pop r12

	ret	;vuelve a la operacion

_$$$t3:
	
	mov r14, [rt]	
	cmp r14, 11
	jne _$$$t4 ;falta

	;imprime $t3
	mov rax, 1
	mov rdi, 1
	mov rsi, msg$t3
	mov rdx, len$t3
	syscall

	;imprime en el archivo de texto
	push r12
	mov r14, msg$t3
	mov r12, len$t3
	writetxt r14, r12
	pop r12

	;imprime el espacio
	mov rax, 1
	mov rdi, 1
	mov rsi, msgspace
	mov rdx, lenspace
	syscall

	;imprime en el archivo de texto
	push r12
	mov r14, msgspace
	mov r12, lenspace
	writetxt r14, r12
	pop r12

	ret	;vuelve a la operacion

_$$$t4:
	
	mov r14, [rt]	
	cmp r14, 12
	jne _$$$t5 ;falta

	;imprime $t4
	mov rax, 1
	mov rdi, 1
	mov rsi, msg$t4
	mov rdx, len$t4
	syscall

	;imprime en el archivo de texto
	push r12
	mov r14, msg$t4
	mov r12, len$t4
	writetxt r14, r12
	pop r12

	;imprime el espacio
	mov rax, 1
	mov rdi, 1
	mov rsi, msgspace
	mov rdx, lenspace
	syscall

	;imprime en el archivo de texto
	push r12
	mov r14, msgspace
	mov r12, lenspace
	writetxt r14, r12
	pop r12

	ret	;vuelve a la operacion

_$$$t5:
	
	mov r14, [rt]	
	cmp r14, 13
	jne _$$$t6 ;falta

	;imprime $t5
	mov rax, 1
	mov rdi, 1
	mov rsi, msg$t5
	mov rdx, len$t5
	syscall

	;imprime en el archivo de texto
	push r12
	mov r14, msg$t5
	mov r12, len$t5
	writetxt r14, r12
	pop r12

	;imprime el espacio
	mov rax, 1
	mov rdi, 1
	mov rsi, msgspace
	mov rdx, lenspace
	syscall

	;imprime en el archivo de texto
	push r12
	mov r14, msgspace
	mov r12, lenspace
	writetxt r14, r12
	pop r12

	ret	;vuelve a la operacion

_$$$t6:
	
	mov r14, [rt]	
	cmp r14, 14
	jne _$$$t7 ;falta

	;imprime $t6
	mov rax, 1
	mov rdi, 1
	mov rsi, msg$t6
	mov rdx, len$t6
	syscall

	;imprime en el archivo de texto
	push r12
	mov r14, msg$t6
	mov r12, len$t6
	writetxt r14, r12
	pop r12

	;imprime el espacio
	mov rax, 1
	mov rdi, 1
	mov rsi, msgspace
	mov rdx, lenspace
	syscall

	;imprime en el archivo de texto
	push r12
	mov r14, msgspace
	mov r12, lenspace
	writetxt r14, r12
	pop r12

	ret	;vuelve a la operacion

_$$$t7:
	
	mov r14, [rt]	
	cmp r14, 15
	jne _$$$s0 ;falta

	;imprime $t7
	mov rax, 1
	mov rdi, 1
	mov rsi, msg$t7
	mov rdx, len$t7
	syscall

	;imprime en el archivo de texto
	push r12
	mov r14, msg$t7
	mov r12, len$t7
	writetxt r14, r12
	pop r12

	;imprime el espacio
	mov rax, 1
	mov rdi, 1
	mov rsi, msgspace
	mov rdx, lenspace
	syscall

	;imprime en el archivo de texto
	push r12
	mov r14, msgspace
	mov r12, lenspace
	writetxt r14, r12
	pop r12

	ret	;vuelve a la operacion

_$$$s0:
	
	mov r14, [rt]	
	cmp r14, 16
	jne _$$$s1 ;falta

	;imprime $s0
	mov rax, 1
	mov rdi, 1
	mov rsi, msg$s0
	mov rdx, len$s0
	syscall

	;imprime en el archivo de texto
	push r12
	mov r14, msg$s0
	mov r12, len$s0
	writetxt r14, r12
	pop r12

	;imprime el espacio
	mov rax, 1
	mov rdi, 1
	mov rsi, msgspace
	mov rdx, lenspace
	syscall

	;imprime en el archivo de texto
	push r12
	mov r14, msgspace
	mov r12, lenspace
	writetxt r14, r12
	pop r12

	ret	;vuelve a la operacion

_$$$s1:
	
	mov r14, [rt]	
	cmp r14, 17
	jne _$$$s2 ;falta

	;imprime $s1
	mov rax, 1
	mov rdi, 1
	mov rsi, msg$s1
	mov rdx, len$s1
	syscall

	;imprime en el archivo de texto
	push r12
	mov r14, msg$s1
	mov r12, len$s1
	writetxt r14, r12
	pop r12

	;imprime el espacio
	mov rax, 1
	mov rdi, 1
	mov rsi, msgspace
	mov rdx, lenspace
	syscall

	;imprime en el archivo de texto
	push r12
	mov r14, msgspace
	mov r12, lenspace
	writetxt r14, r12
	pop r12

	ret	;vuelve a la operacion

_$$$s2:
	
	mov r14, [rt]	
	cmp r14, 18
	jne _$$$s3 ;falta

	;imprime $s2
	mov rax, 1
	mov rdi, 1
	mov rsi, msg$s2
	mov rdx, len$s2
	syscall

	;imprime en el archivo de texto
	push r12
	mov r14, msg$s2
	mov r12, len$s2
	writetxt r14, r12
	pop r12

	;imprime el espacio
	mov rax, 1
	mov rdi, 1
	mov rsi, msgspace
	mov rdx, lenspace
	syscall

	;imprime en el archivo de texto
	push r12
	mov r14, msgspace
	mov r12, lenspace
	writetxt r14, r12
	pop r12

	ret	;vuelve a la operacion

_$$$s3:
	
	mov r14, [rt]	
	cmp r14, 19
	jne _$$$s4 ;falta

	;imprime $s3
	mov rax, 1
	mov rdi, 1
	mov rsi, msg$s3
	mov rdx, len$s3
	syscall

	;imprime en el archivo de texto
	push r12
	mov r14, msg$s3
	mov r12, len$s3
	writetxt r14, r12
	pop r12

	;imprime el espacio
	mov rax, 1
	mov rdi, 1
	mov rsi, msgspace
	mov rdx, lenspace
	syscall

	;imprime en el archivo de texto
	push r12
	mov r14, msgspace
	mov r12, lenspace
	writetxt r14, r12
	pop r12

	ret	;vuelve a la operacion

_$$$s4:
	
	mov r14, [rt]	
	cmp r14, 20
	jne _$$$s5 ;falta

	;imprime $s4
	mov rax, 1
	mov rdi, 1
	mov rsi, msg$s4
	mov rdx, len$s4
	syscall

	;imprime en el archivo de texto
	push r12
	mov r14, msg$s4
	mov r12, len$s4
	writetxt r14, r12
	pop r12

	;imprime el espacio
	mov rax, 1
	mov rdi, 1
	mov rsi, msgspace
	mov rdx, lenspace
	syscall

	;imprime en el archivo de texto
	push r12
	mov r14, msgspace
	mov r12, lenspace
	writetxt r14, r12
	pop r12

	ret	;vuelve a la operacion

_$$$s5:
	
	mov r14, [rt]	
	cmp r14, 21
	jne _$$$s6 ;falta

	;imprime $s5
	mov rax, 1
	mov rdi, 1
	mov rsi, msg$s5
	mov rdx, len$s5
	syscall

	;imprime en el archivo de texto
	push r12
	mov r14, msg$s5
	mov r12, len$s5
	writetxt r14, r12
	pop r12

	;imprime el espacio
	mov rax, 1
	mov rdi, 1
	mov rsi, msgspace
	mov rdx, lenspace
	syscall

	;imprime en el archivo de texto
	push r12
	mov r14, msgspace
	mov r12, lenspace
	writetxt r14, r12
	pop r12

	ret	;vuelve a la operacion

_$$$s6:
	
	mov r14, [rt]	
	cmp r14, 22
	jne _$$$s7 ;falta

	;imprime $s6
	mov rax, 1
	mov rdi, 1
	mov rsi, msg$s6
	mov rdx, len$s6
	syscall

	;imprime en el archivo de texto
	push r12
	mov r14, msg$s6
	mov r12, len$s6
	writetxt r14, r12
	pop r12

	;imprime el espacio
	mov rax, 1
	mov rdi, 1
	mov rsi, msgspace
	mov rdx, lenspace
	syscall

	;imprime en el archivo de texto
	push r12
	mov r14, msgspace
	mov r12, lenspace
	writetxt r14, r12
	pop r12

	ret	;vuelve a la operacion

_$$$s7:
	
	mov r14, [rt]	
	cmp r14, 23
	jne _$$$t8 ;falta

	;imprime $s7
	mov rax, 1
	mov rdi, 1
	mov rsi, msg$s7
	mov rdx, len$s7
	syscall

	;imprime en el archivo de texto
	push r12
	mov r14, msg$s7
	mov r12, len$s7
	writetxt r14, r12
	pop r12

	;imprime el espacio
	mov rax, 1
	mov rdi, 1
	mov rsi, msgspace
	mov rdx, lenspace
	syscall

	;imprime en el archivo de texto
	push r12
	mov r14, msgspace
	mov r12, lenspace
	writetxt r14, r12
	pop r12

	ret	;vuelve a la operacion

_$$$t8:
	
	mov r14, [rt]	
	cmp r14, 24
	jne _$$$t9 ;falta

	;imprime $t8
	mov rax, 1
	mov rdi, 1
	mov rsi, msg$t8
	mov rdx, len$t8
	syscall

	;imprime en el archivo de texto
	push r12
	mov r14, msg$t8
	mov r12, len$t8
	writetxt r14, r12
	pop r12

	;imprime el espacio
	mov rax, 1
	mov rdi, 1
	mov rsi, msgspace
	mov rdx, lenspace
	syscall

	;imprime en el archivo de texto
	push r12
	mov r14, msgspace
	mov r12, lenspace
	writetxt r14, r12
	pop r12

	ret	;vuelve a la operacion

_$$$t9:
	
	mov r14, [rt]	
	cmp r14, 25
	jne _$$$k0 ;falta

	;imprime $t9
	mov rax, 1
	mov rdi, 1
	mov rsi, msg$t9
	mov rdx, len$t9
	syscall

	;imprime en el archivo de texto
	push r12
	mov r14, msg$t9
	mov r12, len$t9
	writetxt r14, r12
	pop r12

	;imprime el espacio
	mov rax, 1
	mov rdi, 1
	mov rsi, msgspace
	mov rdx, lenspace
	syscall

	;imprime en el archivo de texto
	push r12
	mov r14, msgspace
	mov r12, lenspace
	writetxt r14, r12
	pop r12

	ret	;vuelve a la operacion

_$$$k0:
	
	mov r14, [rt]	
	cmp r14, 26
	jne _$$$k1 ;falta

	;imprime $k0
	mov rax, 1
	mov rdi, 1
	mov rsi, msg$k0
	mov rdx, len$k0
	syscall

	;imprime en el archivo de texto
	push r12
	mov r14, msg$k0
	mov r12, len$k0
	writetxt r14, r12
	pop r12

	;imprime el espacio
	mov rax, 1
	mov rdi, 1
	mov rsi, msgspace
	mov rdx, lenspace
	syscall

	;imprime en el archivo de texto
	push r12
	mov r14, msgspace
	mov r12, lenspace
	writetxt r14, r12
	pop r12

	ret	;vuelve a la operacion

_$$$k1:
	
	mov r14, [rt]	
	cmp r14, 27
	jne _$$$gp ;falta

	;imprime $k1
	mov rax, 1
	mov rdi, 1
	mov rsi, msg$k1
	mov rdx, len$k1
	syscall

	;imprime en el archivo de texto
	push r12
	mov r14, msg$k1
	mov r12, len$k1
	writetxt r14, r12
	pop r12

	;imprime el espacio
	mov rax, 1
	mov rdi, 1
	mov rsi, msgspace
	mov rdx, lenspace
	syscall

	;imprime en el archivo de texto
	push r12
	mov r14, msgspace
	mov r12, lenspace
	writetxt r14, r12
	pop r12

	ret	;vuelve a la operacion

_$$$gp:
	
	mov r14, [rt]	
	cmp r14, 28
	jne _$$$sp ;falta

	;imprime $gp
	mov rax, 1
	mov rdi, 1
	mov rsi, msg$gp
	mov rdx, len$gp
	syscall

	;imprime en el archivo de texto
	push r12
	mov r14, msg$gp
	mov r12, len$gp
	writetxt r14, r12
	pop r12

	;imprime el espacio
	mov rax, 1
	mov rdi, 1
	mov rsi, msgspace
	mov rdx, lenspace
	syscall

	;imprime en el archivo de texto
	push r12
	mov r14, msgspace
	mov r12, lenspace
	writetxt r14, r12
	pop r12

	ret	;vuelve a la operacion

_$$$sp:
	
	mov r14, [rt]	
	cmp r14, 29
	jne _$$$fp ;falta

	;imprime $sp
	mov rax, 1
	mov rdi, 1
	mov rsi, msg$sp
	mov rdx, len$sp
	syscall

	;imprime en el archivo de texto
	push r12
	mov r14, msg$sp
	mov r12, len$sp
	writetxt r14, r12
	pop r12

	;imprime el espacio
	mov rax, 1
	mov rdi, 1
	mov rsi, msgspace
	mov rdx, lenspace
	syscall

	;imprime en el archivo de texto
	push r12
	mov r14, msgspace
	mov r12, lenspace
	writetxt r14, r12
	pop r12

	ret	;vuelve a la operacion

_$$$fp:
	
	mov r14, [rt]	
	cmp r14, 30
	jne _$$$ra ;falta

	;imprime $fp
	mov rax, 1
	mov rdi, 1
	mov rsi, msg$fp
	mov rdx, len$fp
	syscall

	;imprime en el archivo de texto
	push r12
	mov r14, msg$fp
	mov r12, len$fp
	writetxt r14, r12
	pop r12

	;imprime el espacio
	mov rax, 1
	mov rdi, 1
	mov rsi, msgspace
	mov rdx, lenspace
	syscall

	;imprime en el archivo de texto
	push r12
	mov r14, msgspace
	mov r12, lenspace
	writetxt r14, r12
	pop r12

	ret	;vuelve a la operacion

_$$$ra:
	

	;imprime $ra
	mov rax, 1
	mov rdi, 1
	mov rsi, msg$ra
	mov rdx, len$ra
	syscall

	;imprime en el archivo de texto
	push r12
	mov r14, msg$ra
	mov r12, len$ra
	writetxt r14, r12
	pop r12

	;imprime el espacio
	mov rax, 1
	mov rdi, 1
	mov rsi, msgspace
	mov rdx, lenspace
	syscall

	;imprime en el archivo de texto
	push r12
	mov r14, msgspace
	mov r12, lenspace
	writetxt r14, r12
	pop r12

	ret	;vuelve a la operacion




;//////////////////////////////////////////////////////////////	


;///////////////////////////////////////////IMPRESION EN PANTALLA DE RT Para los I
_printrti:
	mov r14, [rt]
	cmp r14, 0
	jne _$ati

	;imprime $zero
	mov rax, 1
	mov rdi, 1
	mov rsi, msg$zero
	mov rdx, len$zero
	syscall

	;imprime en el archivo de texto
	push r12
	mov r14, msg$zero
	mov r12, len$zero
	writetxt r14, r12
	pop r12

	;siguiente registro
	jmp _printrsi ;

_$ati:
	
	mov r14, [rt]	
	cmp r14, 1
	jne _$v0i 

	;imprime $at
	mov rax, 1
	mov rdi, 1
	mov rsi, msg$at
	mov rdx, len$at
	syscall

	;imprime en el archivo de texto
	push r12
	mov r14, msg$at
	mov r12, len$at
	writetxt r14, r12
	pop r12

	;siguiente registro
	jmp _printrsi ;

_$v0i:
	
	mov r14, [rt]	
	cmp r14, 2
	jne _$v1i ;falta
	
	;imprime $v0
	mov rax, 1
	mov rdi, 1
	mov rsi, msg$v0
	mov rdx, len$v0
	syscall

	;imprime en el archivo de texto
	push r12
	mov r14, msg$v0
	mov r12, len$v0
	writetxt r14, r12
	pop r12

	;siguiente registro
	jmp _printrsi ;

_$v1i:
	
	mov r14, [rt]	
	cmp r14, 3
	jne _$a0i ;falta

	;imprime $v1
	mov rax, 1
	mov rdi, 1
	mov rsi, msg$v1
	mov rdx, len$v1
	syscall

	;imprime en el archivo de texto
	push r12
	mov r14, msg$v1
	mov r12, len$v1
	writetxt r14, r12
	pop r12

	;siguiente registro
	jmp _printrsi ;

_$a0i:
	
	mov r14, [rt]	
	cmp r14, 4
	jne _$a1i ;falta

	;imprime $a0
	mov rax, 1
	mov rdi, 1
	mov rsi, msg$a0
	mov rdx, len$a0
	syscall

	;imprime en el archivo de texto
	push r12
	mov r14, msg$a0
	mov r12, len$a0
	writetxt r14, r12
	pop r12

	;siguiente registro
	jmp _printrsi ;

_$a1i:
	
	mov r14, [rt]	
	cmp r14, 5
	jne _$a2i ;falta

	;imprime $a1
	mov rax, 1
	mov rdi, 1
	mov rsi, msg$a1
	mov rdx, len$a1
	syscall

	;imprime en el archivo de texto
	push r12
	mov r14, msg$a1
	mov r12, len$a1
	writetxt r14, r12
	pop r12

	;siguiente registro
	jmp _printrsi ;


_$a2i:
	
	mov r14, [rt]	
	cmp r14, 6
	jne _$a3i ;falta

	;imprime $a2
	mov rax, 1
	mov rdi, 1
	mov rsi, msg$a2
	mov rdx, len$a2
	syscall

	;imprime en el archivo de texto
	push r12
	mov r14, msg$a2
	mov r12, len$a2
	writetxt r14, r12
	pop r12

	;siguiente registro
	jmp _printrsi;


_$a3i:
	
	mov r14, [rt]	
	cmp r14, 7
	jne _$t0i ;falta

	;imprime $a3
	mov rax, 1
	mov rdi, 1
	mov rsi, msg$a3
	mov rdx, len$a3
	syscall

	;imprime en el archivo de texto
	push r12
	mov r14, msg$a3
	mov r12, len$a3
	writetxt r14, r12
	pop r12

	;siguiente registro
	jmp _printrsi ;

_$t0i:
	
	mov r14, [rt]	
	cmp r14, 8
	jne _$t1i ;falta

	;imprime $t0
	mov rax, 1
	mov rdi, 1
	mov rsi, msg$t0
	mov rdx, len$t0
	syscall

	;imprime en el archivo de texto
	push r12
	mov r14, msg$t0
	mov r12, len$t0
	writetxt r14, r12
	pop r12

	;siguiente registro
	jmp _printrsi ;

_$t1i:
	
	mov r14, [rt]	
	cmp r14, 9
	jne _$t2i ;falta

	;imprime $t1
	mov rax, 1
	mov rdi, 1
	mov rsi, msg$t1
	mov rdx, len$t1
	syscall

	;imprime en el archivo de texto
	push r12
	mov r14, msg$t1
	mov r12, len$t1
	writetxt r14, r12
	pop r12

	;siguiente registro
	jmp _printrsi ;

_$t2i:
	
	mov r14, [rt]	
	cmp r14, 10
	jne _$t3i ;falta

	;imprime $t2
	mov rax, 1
	mov rdi, 1
	mov rsi, msg$t2
	mov rdx, len$t2
	syscall

	;imprime en el archivo de texto
	push r12
	mov r14, msg$t2
	mov r12, len$t2
	writetxt r14, r12
	pop r12

	;siguiente registro
	jmp _printrsi ;

_$t3i:
	
	mov r14, [rt]	
	cmp r14, 11
	jne _$t4i ;falta

	;imprime $t3
	mov rax, 1
	mov rdi, 1
	mov rsi, msg$t3
	mov rdx, len$t3
	syscall

	;imprime en el archivo de texto
	push r12
	mov r14, msg$t3
	mov r12, len$t3
	writetxt r14, r12
	pop r12

	;siguiente registro
	jmp _printrsi ;

_$t4i:
	
	mov r14, [rt]	
	cmp r14, 12
	jne _$t5i ;falta

	;imprime $t4
	mov rax, 1
	mov rdi, 1
	mov rsi, msg$t4
	mov rdx, len$t4
	syscall

	;imprime en el archivo de texto
	push r12
	mov r14, msg$t4
	mov r12, len$t4
	writetxt r14, r12
	pop r12

	;siguiente registro
	jmp _printrsi ;

_$t5i:
	
	mov r14, [rt]	
	cmp r14, 13
	jne _$t6i ;falta

	;imprime $t5
	mov rax, 1
	mov rdi, 1
	mov rsi, msg$t5
	mov rdx, len$t5
	syscall

	;imprime en el archivo de texto
	push r12
	mov r14, msg$t5
	mov r12, len$t5
	writetxt r14, r12
	pop r12

	;siguiente registro
	jmp _printrsi ;

_$t6i:
	
	mov r14, [rt]	
	cmp r14, 14
	jne _$t7i ;falta

	;imprime $t6
	mov rax, 1
	mov rdi, 1
	mov rsi, msg$t6
	mov rdx, len$t6
	syscall

	;imprime en el archivo de texto
	push r12
	mov r14, msg$t6
	mov r12, len$t6
	writetxt r14, r12
	pop r12

	;siguiente registro
	jmp _printrsi ;

_$t7i:
	
	mov r14, [rt]	
	cmp r14, 15
	jne _$s0i ;falta

	;imprime $t7
	mov rax, 1
	mov rdi, 1
	mov rsi, msg$t7
	mov rdx, len$t7
	syscall

	;imprime en el archivo de texto
	push r12
	mov r14, msg$t7
	mov r12, len$t7
	writetxt r14, r12
	pop r12

	;siguiente registro
	jmp _printrsi ;

_$s0i:
	
	mov r14, [rt]	
	cmp r14, 16
	jne _$s1i ;falta

	;imprime $s0
	mov rax, 1
	mov rdi, 1
	mov rsi, msg$s0
	mov rdx, len$s0
	syscall

	;imprime en el archivo de texto
	push r12
	mov r14, msg$s0
	mov r12, len$s0
	writetxt r14, r12
	pop r12

	;siguiente registro
	jmp _printrsi ;

_$s1i:
	
	mov r14, [rt]	
	cmp r14, 17
	jne _$s2i ;falta

	;imprime $s1
	mov rax, 1
	mov rdi, 1
	mov rsi, msg$s1
	mov rdx, len$s1
	syscall

	;imprime en el archivo de texto
	push r12
	mov r14, msg$s1
	mov r12, len$s1
	writetxt r14, r12
	pop r12

	;siguiente registro
	jmp _printrsi ;

_$s2i:
	
	mov r14, [rt]	
	cmp r14, 18
	jne _$s3i ;falta

	;imprime $s2
	mov rax, 1
	mov rdi, 1
	mov rsi, msg$s2
	mov rdx, len$s2
	syscall

	;imprime en el archivo de texto
	push r12
	mov r14, msg$s2
	mov r12, len$s2
	writetxt r14, r12
	pop r12

	;siguiente registro
	jmp _printrsi ;

_$s3i:
	
	mov r14, [rt]	
	cmp r14, 19
	jne _$s4i ;falta

	;imprime $s3
	mov rax, 1
	mov rdi, 1
	mov rsi, msg$s3
	mov rdx, len$s3
	syscall

	;imprime en el archivo de texto
	push r12
	mov r14, msg$s3
	mov r12, len$s3
	writetxt r14, r12
	pop r12

	;siguiente registro
	jmp _printrsi ;

_$s4i:
	
	mov r14, [rt]	
	cmp r14, 20
	jne _$s5i ;falta

	;imprime $s4
	mov rax, 1
	mov rdi, 1
	mov rsi, msg$s4
	mov rdx, len$s4
	syscall

	;imprime en el archivo de texto
	push r12
	mov r14, msg$s4
	mov r12, len$s4
	writetxt r14, r12
	pop r12

	;siguiente registro
	jmp _printrsi ;

_$s5i:
	
	mov r14, [rt]	
	cmp r14, 21
	jne _$s6i ;falta

	;imprime $s5
	mov rax, 1
	mov rdi, 1
	mov rsi, msg$s5
	mov rdx, len$s5
	syscall

	;imprime en el archivo de texto
	push r12
	mov r14, msg$s5
	mov r12, len$s5
	writetxt r14, r12
	pop r12

	;siguiente registro
	jmp _printrsi ;

_$s6i:
	
	mov r14, [rt]	
	cmp r14, 22
	jne _$s7i ;falta

	;imprime $s6
	mov rax, 1
	mov rdi, 1
	mov rsi, msg$s6
	mov rdx, len$s6
	syscall

	;imprime en el archivo de texto
	push r12
	mov r14, msg$s6
	mov r12, len$s6
	writetxt r14, r12
	pop r12

	;siguiente registro
	jmp _printrsi ;

_$s7i:
	
	mov r14, [rt]	
	cmp r14, 23
	jne _$t8i ;falta

	;imprime $s7
	mov rax, 1
	mov rdi, 1
	mov rsi, msg$s7
	mov rdx, len$s7
	syscall

	;imprime en el archivo de texto
	push r12
	mov r14, msg$s7
	mov r12, len$s7
	writetxt r14, r12
	pop r12

	;siguiente registro
	jmp _printrsi ;

_$t8i:
	
	mov r14, [rt]	
	cmp r14, 24
	jne _$t9i ;falta

	;imprime $t8
	mov rax, 1
	mov rdi, 1
	mov rsi, msg$t8
	mov rdx, len$t8
	syscall

	;imprime en el archivo de texto
	push r12
	mov r14, msg$t8
	mov r12, len$t8
	writetxt r14, r12
	pop r12

	;siguiente registro
	jmp _printrsi ;

_$t9i:
	
	mov r14, [rt]	
	cmp r14, 25
	jne _$k0i ;falta

	;imprime $t9
	mov rax, 1
	mov rdi, 1
	mov rsi, msg$t9
	mov rdx, len$t9
	syscall

	;imprime en el archivo de texto
	push r12
	mov r14, msg$t9
	mov r12, len$t9
	writetxt r14, r12
	pop r12

	;siguiente registro
	jmp _printrsi ;

_$k0i:
	
	mov r14, [rt]	
	cmp r14, 26
	jne _$k1i ;falta

	;imprime $k0
	mov rax, 1
	mov rdi, 1
	mov rsi, msg$k0
	mov rdx, len$k0
	syscall

	;imprime en el archivo de texto
	push r12
	mov r14, msg$k0
	mov r12, len$k0
	writetxt r14, r12
	pop r12

	;siguiente registro
	jmp _printrsi ;

_$k1i:
	
	mov r14, [rt]	
	cmp r14, 27
	jne _$gpi ;falta

	;imprime $k1
	mov rax, 1
	mov rdi, 1
	mov rsi, msg$k1
	mov rdx, len$k1
	syscall

	;imprime en el archivo de texto
	push r12
	mov r14, msg$k1
	mov r12, len$k1
	writetxt r14, r12
	pop r12

	;siguiente registro
	jmp _printrsi ;

_$gpi:
	
	mov r14, [rt]	
	cmp r14, 28
	jne _$spi ;falta

	;imprime $gp
	mov rax, 1
	mov rdi, 1
	mov rsi, msg$gp
	mov rdx, len$gp
	syscall

	;imprime en el archivo de texto
	push r12
	mov r14, msg$gp
	mov r12, len$gp
	writetxt r14, r12
	pop r12

	;siguiente registro
	jmp _printrsi ;

_$spi:
	
	mov r14, [rt]	
	cmp r14, 29
	jne _$fpi ;falta

	;imprime $sp
	mov rax, 1
	mov rdi, 1
	mov rsi, msg$sp
	mov rdx, len$sp
	syscall

	;imprime en el archivo de texto
	push r12
	mov r14, msg$sp
	mov r12, len$sp
	writetxt r14, r12
	pop r12

	;siguiente registro
	jmp _printrsi ;

_$fpi:
	
	mov r14, [rt]	
	cmp r14, 30
	jne _$rai ;falta

	;imprime $fp
	mov rax, 1
	mov rdi, 1
	mov rsi, msg$fp
	mov rdx, len$fp
	syscall

	;imprime en el archivo de texto
	push r12
	mov r14, msg$fp
	mov r12, len$fp
	writetxt r14, r12
	pop r12

	;siguiente registro
	jmp _printrsi ;

_$rai:
	

	;imprime $rai
	mov rax, 1
	mov rdi, 1
	mov rsi, msg$ra
	mov rdx, len$ra
	syscall

	;imprime en el archivo de texto
	push r12
	mov r14, msg$ra
	mov r12, len$ra
	writetxt r14, r12
	pop r12

	;siguiente registro
	jmp _printrsi ;




;///////////////////////////////////////////////////////////// imprime en pantalla los valores de RS para los tipo I

_printrsi:	
	mov r14, [rs]
	cmp r14, 0
	jne _$$$ati

	;imprime $zero
	mov rax, 1
	mov rdi, 1
	mov rsi, msg$zero
	mov rdx, len$zero
	syscall

	;imprime en el archivo de texto
	push r12
	mov r14, msg$zero
	mov r12, len$zero
	writetxt r14, r12
	pop r12

					
	ret	;vuelve a la operacion

_$$$ati:
	
	mov r14, [rs]
	cmp r14, 1
	jne _$$$v0i

	;imprime $zero
	mov rax, 1
	mov rdi, 1
	mov rsi, msg$at
	mov rdx, len$at
	syscall

	;imprime en el archivo de texto
	push r12
	mov r14, msg$at
	mov r12, len$at
	writetxt r14, r12
	pop r12
					
	ret	;vuelve a la operacion

_$$$v0i:
	
	mov r14, [rs]	
	cmp r14, 2
	jne _$$$v1i ;falta
	
	;imprime $v0
	mov rax, 1
	mov rdi, 1
	mov rsi, msg$v0
	mov rdx, len$v0
	syscall

	;imprime en el archivo de texto
	push r12
	mov r14, msg$v0
	mov r12, len$v0
	writetxt r14, r12
	pop r12

	ret	;vuelve a la operacion

_$$$v1i:
	
	mov r14, [rs]	
	cmp r14, 3
	jne _$$$a0i ;falta

	;imprime $v1
	mov rax, 1
	mov rdi, 1
	mov rsi, msg$v1
	mov rdx, len$v1
	syscall

	;imprime en el archivo de texto
	push r12
	mov r14, msg$v1
	mov r12, len$v1
	writetxt r14, r12
	pop r12

	ret	;vuelve a la operacion

_$$$a0i:
	
	mov r14, [rs]	
	cmp r14, 4
	jne _$$$a1i ;falta

	;imprime $a0
	mov rax, 1
	mov rdi, 1
	mov rsi, msg$a0
	mov rdx, len$a0
	syscall

	;imprime en el archivo de texto
	push r12
	mov r14, msg$a0
	mov r12, len$a0
	writetxt r14, r12
	pop r12

	ret	;vuelve a la operacion

_$$$a1i:
	
	mov r14, [rs]	
	cmp r14, 5
	jne _$$$a2i ;falta

	;imprime $a1
	mov rax, 1
	mov rdi, 1
	mov rsi, msg$a1
	mov rdx, len$a1
	syscall

	;imprime en el archivo de texto
	push r12
	mov r14, msg$a1
	mov r12, len$a1
	writetxt r14, r12
	pop r12

	ret	;vuelve a la operacion

_$$$a2i:
	
	mov r14, [rs]	
	cmp r14, 6
	jne _$$$a3i ;falta

	;imprime $a2
	mov rax, 1
	mov rdi, 1
	mov rsi, msg$a2
	mov rdx, len$a2
	syscall

	;imprime en el archivo de texto
	push r12
	mov r14, msg$a2
	mov r12, len$a2
	writetxt r14, r12
	pop r12

	ret	;vuelve a la operacion


_$$$a3i:
	
	mov r14, [rs]	
	cmp r14, 7
	jne _$$$t0i ;falta

	;imprime $a3
	mov rax, 1
	mov rdi, 1
	mov rsi, msg$a3
	mov rdx, len$a3
	syscall

	;imprime en el archivo de texto
	push r12
	mov r14, msg$a3
	mov r12, len$a3
	writetxt r14, r12
	pop r12

	ret	;vuelve a la operacion

_$$$t0i:
	
	mov r14, [rs]	
	cmp r14, 8
	jne _$$$t1i ;falta

	;imprime $t0
	mov rax, 1
	mov rdi, 1
	mov rsi, msg$t0
	mov rdx, len$t0
	syscall

	;imprime en el archivo de texto
	push r12
	mov r14, msg$t0
	mov r12, len$t0
	writetxt r14, r12
	pop r12

	ret	;vuelve a la operacion

_$$$t1i:
	
	mov r14, [rs]	
	cmp r14, 9
	jne _$$$t2i ;falta

	;imprime $t1
	mov rax, 1
	mov rdi, 1
	mov rsi, msg$t1
	mov rdx, len$t1
	syscall

	;imprime en el archivo de texto
	push r12
	mov r14, msg$t1
	mov r12, len$t1
	writetxt r14, r12
	pop r12

	ret	;vuelve a la operacion

_$$$t2i:
	
	mov r14, [rs]	
	cmp r14, 10
	jne _$$$t3i ;falta

	;imprime $t2
	mov rax, 1
	mov rdi, 1
	mov rsi, msg$t2
	mov rdx, len$t2
	syscall

	;imprime en el archivo de texto
	push r12
	mov r14, msg$t2
	mov r12, len$t2
	writetxt r14, r12
	pop r12

	ret	;vuelve a la operacion

_$$$t3i:
	
	mov r14, [rs]	
	cmp r14, 11
	jne _$$$t4i ;falta

	;imprime $t3
	mov rax, 1
	mov rdi, 1
	mov rsi, msg$t3
	mov rdx, len$t3
	syscall

	;imprime en el archivo de texto
	push r12
	mov r14, msg$t3
	mov r12, len$t3
	writetxt r14, r12
	pop r12

	ret	;vuelve a la operacion

_$$$t4i:
	
	mov r14, [rs]	
	cmp r14, 12
	jne _$$$t5i ;falta

	;imprime $t4
	mov rax, 1
	mov rdi, 1
	mov rsi, msg$t4
	mov rdx, len$t4
	syscall

	;imprime en el archivo de texto
	push r12
	mov r14, msg$t4
	mov r12, len$t4
	writetxt r14, r12
	pop r12

	ret	;vuelve a la operacion

_$$$t5i:
	
	mov r14, [rs]	
	cmp r14, 13
	jne _$$$t6i ;falta

	;imprime $t5
	mov rax, 1
	mov rdi, 1
	mov rsi, msg$t5
	mov rdx, len$t5
	syscall

	;imprime en el archivo de texto
	push r12
	mov r14, msg$t5
	mov r12, len$t5
	writetxt r14, r12
	pop r12

	ret	;vuelve a la operacion

_$$$t6i:
	
	mov r14, [rs]	
	cmp r14, 14
	jne _$$$t7i ;falta

	;imprime $t6
	mov rax, 1
	mov rdi, 1
	mov rsi, msg$t6
	mov rdx, len$t6
	syscall

	;imprime en el archivo de texto
	push r12
	mov r14, msg$t6
	mov r12, len$t6
	writetxt r14, r12
	pop r12

	ret	;vuelve a la operacion

_$$$t7i:
	
	mov r14, [rs]	
	cmp r14, 15
	jne _$$$s0i ;falta

	;imprime $t7
	mov rax, 1
	mov rdi, 1
	mov rsi, msg$t7
	mov rdx, len$t7
	syscall

	;imprime en el archivo de texto
	push r12
	mov r14, msg$t7
	mov r12, len$t7
	writetxt r14, r12
	pop r12

	ret	;vuelve a la operacion

_$$$s0i:
	
	mov r14, [rs]	
	cmp r14, 16
	jne _$$$s1i ;falta

	;imprime $s0
	mov rax, 1
	mov rdi, 1
	mov rsi, msg$s0
	mov rdx, len$s0
	syscall

	;imprime en el archivo de texto
	push r12
	mov r14, msg$s0
	mov r12, len$s0
	writetxt r14, r12
	pop r12

	ret	;vuelve a la operacion

_$$$s1i:
	
	mov r14, [rs]	
	cmp r14, 17
	jne _$$$s2i ;falta

	;imprime $s1
	mov rax, 1
	mov rdi, 1
	mov rsi, msg$s1
	mov rdx, len$s1
	syscall

	;imprime en el archivo de texto
	push r12
	mov r14, msg$s1
	mov r12, len$s1
	writetxt r14, r12
	pop r12


	ret	;vuelve a la operacion

_$$$s2i:
	
	mov r14, [rs]	
	cmp r14, 18
	jne _$$$s3i ;falta

	;imprime $s2
	mov rax, 1
	mov rdi, 1
	mov rsi, msg$s2
	mov rdx, len$s2
	syscall

	;imprime en el archivo de texto
	push r12
	mov r14, msg$s2
	mov r12, len$s2
	writetxt r14, r12
	pop r12

	ret	;vuelve a la operacion

_$$$s3i:
	
	mov r14, [rs]	
	cmp r14, 19
	jne _$$$s4i ;falta

	;imprime $s3
	mov rax, 1
	mov rdi, 1
	mov rsi, msg$s3
	mov rdx, len$s3
	syscall

	;imprime en el archivo de texto
	push r12
	mov r14, msg$s3
	mov r12, len$s3
	writetxt r14, r12
	pop r12

	ret	;vuelve a la operacion

_$$$s4i:
	
	mov r14, [rs]	
	cmp r14, 20
	jne _$$$s5i ;falta

	;imprime $s4
	mov rax, 1
	mov rdi, 1
	mov rsi, msg$s4
	mov rdx, len$s4
	syscall

	;imprime en el archivo de texto
	push r12
	mov r14, msg$s4
	mov r12, len$s4
	writetxt r14, r12
	pop r12

	ret	;vuelve a la operacion

_$$$s5i:
	
	mov r14, [rs]	
	cmp r14, 21
	jne _$$$s6i ;falta

	;imprime $s5
	mov rax, 1
	mov rdi, 1
	mov rsi, msg$s5
	mov rdx, len$s5
	syscall

	;imprime en el archivo de texto
	push r12
	mov r14, msg$s5
	mov r12, len$s5
	writetxt r14, r12
	pop r12

	ret	;vuelve a la operacion

_$$$s6i:
	
	mov r14, [rs]	
	cmp r14, 22
	jne _$$$s7i ;falta

	;imprime $s6
	mov rax, 1
	mov rdi, 1
	mov rsi, msg$s6
	mov rdx, len$s6
	syscall
	
	;imprime en el archivo de texto
	push r12
	mov r14, msg$s6
	mov r12, len$s6
	writetxt r14, r12
	pop r12

	ret	;vuelve a la operacion

_$$$s7i:
	
	mov r14, [rs]	
	cmp r14, 23
	jne _$$$t8i ;falta

	;imprime $s7
	mov rax, 1
	mov rdi, 1
	mov rsi, msg$s7
	mov rdx, len$s7
	syscall

	;imprime en el archivo de texto
	push r12
	mov r14, msg$s7
	mov r12, len$s7
	writetxt r14, r12
	pop r12

	ret	;vuelve a la operacion

_$$$t8i:
	
	mov r14, [rs]	
	cmp r14, 24
	jne _$$$t9i ;falta

	;imprime $t8
	mov rax, 1
	mov rdi, 1
	mov rsi, msg$t8
	mov rdx, len$t8
	syscall

	;imprime en el archivo de texto
	push r12
	mov r14, msg$t8
	mov r12, len$t8
	writetxt r14, r12
	pop r12
	ret	;vuelve a la operacion

_$$$t9i:
	
	mov r14, [rs]	
	cmp r14, 25
	jne _$$$k0i ;falta

	;imprime $t9
	mov rax, 1
	mov rdi, 1
	mov rsi, msg$t9
	mov rdx, len$t9
	syscall

	;imprime en el archivo de texto
	push r12
	mov r14, msg$t9
	mov r12, len$t9
	writetxt r14, r12
	pop r12

	ret	;vuelve a la operacion

_$$$k0i:
	
	mov r14, [rs]	
	cmp r14, 26
	jne _$$$k1i ;falta

	;imprime $k0
	mov rax, 1
	mov rdi, 1
	mov rsi, msg$k0
	mov rdx, len$k0
	syscall

	;imprime en el archivo de texto
	push r12
	mov r14, msg$k0
	mov r12, len$k0
	writetxt r14, r12
	pop r12

	ret	;vuelve a la operacion

_$$$k1i:
	
	mov r14, [rs]	
	cmp r14, 27
	jne _$$$gpi ;falta

	;imprime $k1
	mov rax, 1
	mov rdi, 1
	mov rsi, msg$k1
	mov rdx, len$k1
	syscall

	;imprime en el archivo de texto
	push r12
	mov r14, msg$k1
	mov r12, len$k1
	writetxt r14, r12
	pop r12

	ret	;vuelve a la operacion

_$$$gpi:
	
	mov r14, [rs]	
	cmp r14, 28
	jne _$$$spi ;falta

	;imprime $gp
	mov rax, 1
	mov rdi, 1
	mov rsi, msg$gp
	mov rdx, len$gp
	syscall

	;imprime en el archivo de texto
	push r12
	mov r14, msg$gp
	mov r12, len$gp
	writetxt r14, r12
	pop r12


	ret	;vuelve a la operacion

_$$$spi:
	
	mov r14, [rs]	
	cmp r14, 29
	jne _$$$fpi ;falta

	;imprime $sp
	mov rax, 1
	mov rdi, 1
	mov rsi, msg$sp
	mov rdx, len$sp
	syscall

	;imprime en el archivo de texto
	push r12
	mov r14, msg$sp
	mov r12, len$sp
	writetxt r14, r12
	pop r12


	ret	;vuelve a la operacion

_$$$fpi:
	
	mov r14, [rs]	
	cmp r14, 30
	jne _$$$rai ;falta

	;imprime $fp
	mov rax, 1
	mov rdi, 1
	mov rsi, msg$fp
	mov rdx, len$fp
	syscall

	;imprime en el archivo de texto
	push r12
	mov r14, msg$fp
	mov r12, len$fp
	writetxt r14, r12
	pop r12


	ret	;vuelve a la operacion

_$$$rai:
	

	;imprime $ra
	mov rax, 1
	mov rdi, 1
	mov rsi, msg$ra
	mov rdx, len$ra
	syscall

	;imprime en el archivo de texto
	push r12
	mov r14, msg$ra
	mov r12, len$ra
	writetxt r14, r12
	pop r12


	ret	;vuelve a la operacion


;/////////////////////////////////////////////////////////////	

;/////////////////////////////////////////// Impresi\F3n en pantalla RS para los branchs
	
_printrsix:
	mov r14, [rs]
	cmp r14, 0
	jne _$$atix

	;imprime $zero
	mov rax, 1
	mov rdi, 1
	mov rsi, msg$zero
	mov rdx, len$zero
	syscall

	;imprime en el archivo de texto
	push r12
	mov r14, msg$zero
	mov r12, len$zero
	writetxt r14, r12
	pop r12

	;siguiente registro
	jmp _printrtix	
_$$atix:
	mov r14, [rs]	
	cmp r14, 1
	jne _$$v0ix ; falta

	;imprime $at
	mov rax, 1
	mov rdi, 1
	mov rsi, msg$at
	mov rdx, len$at
	syscall

	;imprime en el archivo de texto
	push r12
	mov r14, msg$at
	mov r12, len$at
	writetxt r14, r12
	pop r12

	;siguiente registro
	jmp _printrtix


_$$v0ix:
	
	mov r14, [rs]	
	cmp r14, 2
	jne _$$v1ix ;falta
	
	;imprime $v0
	mov rax, 1
	mov rdi, 1
	mov rsi, msg$v0
	mov rdx, len$v0
	syscall

	;imprime en el archivo de texto
	push r12
	mov r14, msg$v0
	mov r12, len$v0
	writetxt r14, r12
	pop r12

	;siguiente registro
	jmp _printrtix

_$$v1ix:
	
	mov r14, [rs]	
	cmp r14, 3
	jne _$$a0ix ;falta

	;imprime $v1
	mov rax, 1
	mov rdi, 1
	mov rsi, msg$v1
	mov rdx, len$v1
	syscall

	;imprime en el archivo de texto
	push r12
	mov r14, msg$v1
	mov r12, len$v1
	writetxt r14, r12
	pop r12

	;siguiente registro
	jmp _printrtix

_$$a0ix:
	
	mov r14, [rs]	
	cmp r14, 4
	jne _$$a1ix ;falta

	;imprime $a0
	mov rax, 1
	mov rdi, 1
	mov rsi, msg$a0
	mov rdx, len$a0
	syscall

	;imprime en el archivo de texto
	push r12
	mov r14, msg$a0
	mov r12, len$a0
	writetxt r14, r12
	pop r12

	;siguiente registro
	jmp _printrtix

_$$a1ix:
	
	mov r14, [rs]	
	cmp r14, 5
	jne _$$a2ix ;falta

	;imprime $a1
	mov rax, 1
	mov rdi, 1
	mov rsi, msg$a1
	mov rdx, len$a1
	syscall

	;imprime en el archivo de texto	
	push r12
	mov r14, msg$a1
	mov r12, len$a1
	writetxt r14, r12
	pop r12

	;siguiente registro
	jmp _printrtix


_$$a2ix:
	
	mov r14, [rs]	
	cmp r14, 6
	jne _$$a3ix ;falta

	;imprime $a2
	mov rax, 1
	mov rdi, 1
	mov rsi, msg$a2
	mov rdx, len$a2
	syscall

	;imprime en el archivo de texto
	push r12
	mov r14, msg$a2
	mov r12, len$a2
	writetxt r14, r12
	pop r12

	;siguiente registro
	jmp _printrtix


_$$a3ix:
	
	mov r14, [rs]	
	cmp r14, 7
	jne _$$t0ix ;falta

	;imprime $a3
	mov rax, 1
	mov rdi, 1
	mov rsi, msg$a3
	mov rdx, len$a3
	syscall

	;imprime en el archivo de texto
	push r12
	mov r14, msg$a3
	mov r12, len$a3
	writetxt r14, r12
	pop r12

	;siguiente registro
	jmp _printrtix

_$$t0ix:
	
	mov r14, [rs]	
	cmp r14, 8
	jne _$$t1ix ;falta

	;imprime $t0
	mov rax, 1
	mov rdi, 1
	mov rsi, msg$t0
	mov rdx, len$t0
	syscall

	;imprime en el archivo de texto	
	push r12
	mov r14, msg$t0
	mov r12, len$t0
	writetxt r14, r12
	pop r12

	;siguiente registro
	jmp _printrtix

_$$t1ix:
	
	mov r14, [rs]	
	cmp r14, 9
	jne _$$t2ix ;falta

	;imprime $t1
	mov rax, 1
	mov rdi, 1
	mov rsi, msg$t1
	mov rdx, len$t1
	syscall

	;imprime en el archivo de texto	
	push r12
	mov r14, msg$t1
	mov r12, len$t1
	writetxt r14, r12
	pop r12

	;siguiente registro
	jmp _printrtix

_$$t2ix:
	
	mov r14, [rs]	
	cmp r14, 10
	jne _$$t3ix ;falta

	;imprime $t2
	mov rax, 1
	mov rdi, 1
	mov rsi, msg$t2
	mov rdx, len$t2
	syscall

	;imprime en el archivo de texto	
	push r12
	mov r14, msg$t2
	mov r12, len$t2
	writetxt r14, r12
	pop r12

	;siguiente registro
	jmp _printrtix

_$$t3ix:
	
	mov r14, [rs]	
	cmp r14, 11
	jne _$$t4ix ;falta

	;imprime $t3
	mov rax, 1
	mov rdi, 1
	mov rsi, msg$t3
	mov rdx, len$t3
	syscall

	;imprime en el archivo de texto	
	push r12
	mov r14, msg$t3
	mov r12, len$t3
	writetxt r14, r12
	pop r12

	;siguiente registro
	jmp _printrtix

_$$t4ix:
	
	mov r14, [rs]	
	cmp r14, 12
	jne _$$t5ix ;falta

	;imprime $t4
	mov rax, 1
	mov rdi, 1
	mov rsi, msg$t4
	mov rdx, len$t4
	syscall

	;imprime en el archivo de texto	
	push r12
	mov r14, msg$t4
	mov r12, len$t4
	writetxt r14, r12
	pop r12

	;siguiente registro
	jmp _printrtix

_$$t5ix:
	
	mov r14, [rs]	
	cmp r14, 13
	jne _$$t6ix ;falta

	;imprime $t5
	mov rax, 1
	mov rdi, 1
	mov rsi, msg$t5
	mov rdx, len$t5
	syscall

	;imprime en el archivo de texto	
	push r12
	mov r14, msg$t5
	mov r12, len$t5
	writetxt r14, r12
	pop r12

	;siguiente registro
	jmp _printrtix

_$$t6ix:
	
	mov r14, [rs]	
	cmp r14, 14
	jne _$$t7ix ;falta

	;imprime $t6
	mov rax, 1
	mov rdi, 1
	mov rsi, msg$t6
	mov rdx, len$t6
	syscall

	;imprime en el archivo de texto	
	push r12
	mov r14, msg$t6
	mov r12, len$t6
	writetxt r14, r12
	pop r12

	;siguiente registro
	jmp _printrtix

_$$t7ix:
	
	mov r14, [rs]	
	cmp r14, 15
	jne _$$s0ix ;falta

	;imprime $t7
	mov rax, 1
	mov rdi, 1
	mov rsi, msg$t7
	mov rdx, len$t7
	syscall

	;imprime en el archivo de texto	
	push r12
	mov r14, msg$t7
	mov r12, len$t7
	writetxt r14, r12
	pop r12

	;siguiente registro
	jmp _printrtix

_$$s0ix:
	
	mov r14, [rs]	
	cmp r14, 16
	jne _$$s1ix ;falta

	;imprime $s0
	mov rax, 1
	mov rdi, 1
	mov rsi, msg$s0
	mov rdx, len$s0
	syscall

	;imprime en el archivo de texto	
	push r12
	mov r14, msg$s0
	mov r12, len$s0
	writetxt r14, r12
	pop r12

	;siguiente registro
	jmp _printrtix

_$$s1ix:
	
	mov r14, [rs]	
	cmp r14, 17
	jne _$$s2ix ;falta

	;imprime $s1
	mov rax, 1
	mov rdi, 1
	mov rsi, msg$s1
	mov rdx, len$s1
	syscall

	;imprime en el archivo de texto	
	push r12
	mov r14, msg$s1
	mov r12, len$s1
	writetxt r14, r12
	pop r12

	;siguiente registro
	jmp _printrtix

_$$s2ix:
	
	mov r14, [rs]	
	cmp r14, 18
	jne _$$s3ix ;falta

	;imprime $s2
	mov rax, 1
	mov rdi, 1
	mov rsi, msg$s2
	mov rdx, len$s2
	syscall

	;imprime en el archivo de texto	
	push r12
	mov r14, msg$s2
	mov r12, len$s2
	writetxt r14, r12
	pop r12

	;siguiente registro
	jmp _printrtix

_$$s3ix:
	
	mov r14, [rs]	
	cmp r14, 19
	jne _$$s4ix ;falta

	;imprime $s3
	mov rax, 1
	mov rdi, 1
	mov rsi, msg$s3
	mov rdx, len$s3
	syscall

	;imprime en el archivo de texto	
	push r12
	mov r14, msg$s3
	mov r12, len$s3
	writetxt r14, r12
	pop r12

	;siguiente registro
	jmp _printrtix

_$$s4ix:
	
	mov r14, [rs]	
	cmp r14, 20
	jne _$$s5ix ;falta

	;imprime $s4
	mov rax, 1
	mov rdi, 1
	mov rsi, msg$s4
	mov rdx, len$s4
	syscall

	;imprime en el archivo de texto	
	push r12
	mov r14, msg$s4
	mov r12, len$s4
	writetxt r14, r12
	pop r12

	;siguiente registro
	jmp _printrtix

_$$s5ix:
	
	mov r14, [rs]	
	cmp r14, 21
	jne _$$s6ix ;falta

	;imprime $s5
	mov rax, 1
	mov rdi, 1
	mov rsi, msg$s5
	mov rdx, len$s5
	syscall

	;imprime en el archivo de texto	
	push r12
	mov r14, msg$s5
	mov r12, len$s5
	writetxt r14, r12
	pop r12

	;siguiente registro
	jmp _printrtix

_$$s6ix:
	
	mov r14, [rs]	
	cmp r14, 22
	jne _$$s7ix ;falta

	;imprime $s6
	mov rax, 1
	mov rdi, 1
	mov rsi, msg$s6
	mov rdx, len$s6
	syscall

	;imprime en el archivo de texto	
	push r12
	mov r14, msg$s6
	mov r12, len$s6
	writetxt r14, r12
	pop r12

	;siguiente registro
	jmp _printrtix

_$$s7ix:
	
	mov r14, [rs]	
	cmp r14, 23
	jne _$$t8ix ;falta

	;imprime $s7
	mov rax, 1
	mov rdi, 1
	mov rsi, msg$s7
	mov rdx, len$s7
	syscall

	;imprime en el archivo de texto	
	push r12
	mov r14, msg$s7
	mov r12, len$s7
	writetxt r14, r12
	pop r12

	;siguiente registro
	jmp _printrtix

_$$t8ix:
	
	mov r14, [rs]	
	cmp r14, 24
	jne _$$t9ix ;falta

	;imprime $t8
	mov rax, 1
	mov rdi, 1
	mov rsi, msg$t8
	mov rdx, len$t8
	syscall

	;imprime en el archivo de texto	
	push r12
	mov r14, msg$t8
	mov r12, len$t8
	writetxt r14, r12
	pop r12

	;siguiente registro
	jmp _printrtix

_$$t9ix:
	
	mov r14, [rs]	
	cmp r14, 25
	jne _$$k0ix ;falta

	;imprime $t9
	mov rax, 1
	mov rdi, 1
	mov rsi, msg$t9
	mov rdx, len$t9
	syscall

	;imprime en el archivo de texto	
	push r12
	mov r14, msg$t9
	mov r12, len$t9
	writetxt r14, r12
	pop r12

	;siguiente registro
	jmp _printrtix

_$$k0ix:
	
	mov r14, [rs]	
	cmp r14, 26
	jne _$$k1ix ;falta

	;imprime $k0
	mov rax, 1
	mov rdi, 1
	mov rsi, msg$k0
	mov rdx, len$k0
	syscall

	;imprime en el archivo de texto	
	push r12
	mov r14, msg$k0
	mov r12, len$k0
	writetxt r14, r12
	pop r12

	;siguiente registro
	jmp _printrtix

_$$k1ix:
	
	mov r14, [rs]	
	cmp r14, 27
	jne _$$gpix ;falta

	;imprime $k1
	mov rax, 1
	mov rdi, 1
	mov rsi, msg$k1
	mov rdx, len$k1
	syscall

	;imprime en el archivo de texto	
	push r12
	mov r14, msg$k1
	mov r12, len$k1
	writetxt r14, r12
	pop r12

	;siguiente registro
	jmp _printrtix

_$$gpix:
	
	mov r14, [rs]	
	cmp r14, 28
	jne _$$spix ;falta

	;imprime $gp
	mov rax, 1
	mov rdi, 1
	mov rsi, msg$gp
	mov rdx, len$gp
	syscall

	;imprime en el archivo de texto	
	push r12
	mov r14, msg$gp
	mov r12, len$gp
	writetxt r14, r12
	pop r12

	;siguiente registro
	jmp _printrtix

_$$spix:
	
	mov r14, [rs]	
	cmp r14, 29
	jne _$$fpix ;falta

	;imprime $sp
	mov rax, 1
	mov rdi, 1
	mov rsi, msg$sp
	mov rdx, len$sp
	syscall

	;imprime en el archivo de texto	
	push r12
	mov r14, msg$sp
	mov r12, len$sp
	writetxt r14, r12
	pop r12

	;siguiente registro
	jmp _printrtix

_$$fpix:
	
	mov r14, [rs]	
	cmp r14, 30
	jne _$$raix ;falta

	;imprime $fp
	mov rax, 1
	mov rdi, 1
	mov rsi, msg$fp
	mov rdx, len$fp
	syscall

	;imprime en el archivo de texto	
	push r12
	mov r14, msg$fp
	mov r12, len$fp
	writetxt r14, r12
	pop r12

	;siguiente registro
	jmp _printrtix

_$$raix:
	

	;imprime $ra
	mov rax, 1
	mov rdi, 1
	mov rsi, msg$ra
	mov rdx, len$ra
	syscall

	;imprime en el archivo de texto	
	push r12
	mov r14, msg$ra
	mov r12, len$ra
	writetxt r14, r12
	pop r12

	;siguiente registro
	jmp _printrtix

;////////////////////////////////////////////////////////////////////////////////////////
	
_printrtix:	
	mov r14, [rt]
	cmp r14, 0
	jne _$$$atix

	;imprime $zero
	mov rax, 1
	mov rdi, 1
	mov rsi, msg$zero
	mov rdx, len$zero
	syscall

	;imprime en el archivo de texto	
	push r12
	mov r14, msg$zero
	mov r12, len$zero
	writetxt r14, r12
	pop r12
					
	ret	;vuelve a la operacion

_$$$atix:
	
	mov r14, [rt]
	cmp r14, 1
	jne _$$$v0ix

	;imprime $zero
	mov rax, 1
	mov rdi, 1
	mov rsi, msg$at
	mov rdx, len$at
	syscall

	;imprime en el archivo de texto	
	push r12
	mov r14, msg$at
	mov r12, len$at
	writetxt r14, r12
	pop r12
					
	ret	;vuelve a la operacion

_$$$v0ix:
	
	mov r14, [rt]	
	cmp r14, 2
	jne _$$$v1ix ;falta
	
	;imprime $v0
	mov rax, 1
	mov rdi, 1
	mov rsi, msg$v0
	mov rdx, len$v0
	syscall

	;imprime en el archivo de texto	
	push r12
	mov r14, msg$v0
	mov r12, len$v0
	writetxt r14, r12
	pop r12


	ret	;vuelve a la operacion

_$$$v1ix:
	
	mov r14, [rt]	
	cmp r14, 3
	jne _$$$a0ix ;falta

	;imprime $v1
	mov rax, 1
	mov rdi, 1
	mov rsi, msg$v1
	mov rdx, len$v1
	syscall

	;imprime en el archivo de texto	
	push r12
	mov r14, msg$v1
	mov r12, len$v1
	writetxt r14, r12
	pop r12


	ret	;vuelve a la operacion

_$$$a0ix:
	
	mov r14, [rt]	
	cmp r14, 4
	jne _$$$a1ix ;falta

	;imprime $a0
	mov rax, 1
	mov rdi, 1
	mov rsi, msg$a0
	mov rdx, len$a0
	syscall

	;imprime en el archivo de texto	
	push r12
	mov r14, msg$a0
	mov r12, len$a0
	writetxt r14, r12
	pop r12

	ret	;vuelve a la operacion

_$$$a1ix:
	
	mov r14, [rt]	
	cmp r14, 5
	jne _$$$a2ix ;falta

	;imprime $a1
	mov rax, 1
	mov rdi, 1
	mov rsi, msg$a1
	mov rdx, len$a1
	syscall

	;imprime en el archivo de texto	
	push r12
	mov r14, msg$a1
	mov r12, len$a1
	writetxt r14, r12
	pop r12

	ret	;vuelve a la operacion

_$$$a2ix:
	
	mov r14, [rt]	
	cmp r14, 6
	jne _$$$a3ix ;falta

	;imprime $a2
	mov rax, 1
	mov rdi, 1
	mov rsi, msg$a2
	mov rdx, len$a2
	syscall

	;imprime en el archivo de texto	
	push r12
	mov r14, msg$a2
	mov r12, len$a2
	writetxt r14, r12
	pop r12

	ret	;vuelve a la operacion

_$$$a3ix:
	
	mov r14, [rt]	
	cmp r14, 7
	jne _$$$t0ix ;falta

	;imprime $a3
	mov rax, 1
	mov rdi, 1
	mov rsi, msg$a3
	mov rdx, len$a3
	syscall

	;imprime en el archivo de texto	
	push r12
	mov r14, msg$a3
	mov r12, len$a3
	writetxt r14, r12
	pop r12

	ret	;vuelve a la operacion

_$$$t0ix:
	
	mov r14, [rt]	
	cmp r14, 8
	jne _$$$t1ix ;falta

	;imprime $t0
	mov rax, 1
	mov rdi, 1
	mov rsi, msg$t0
	mov rdx, len$t0
	syscall

	;imprime en el archivo de texto	
	push r12
	mov r14, msg$t0
	mov r12, len$t0
	writetxt r14, r12
	pop r12

	ret	;vuelve a la operacion

_$$$t1ix:
	
	mov r14, [rt]	
	cmp r14, 9
	jne _$$$t2ix ;falta

	;imprime $t1
	mov rax, 1
	mov rdi, 1
	mov rsi, msg$t1
	mov rdx, len$t1
	syscall

	;imprime en el archivo de texto	
	push r12
	mov r14, msg$t1
	mov r12, len$t1
	writetxt r14, r12
	pop r12


	ret	;vuelve a la operacion

_$$$t2ix:
	
	mov r14, [rt]	
	cmp r14, 10
	jne _$$$t3ix ;falta

	;imprime $t2
	mov rax, 1
	mov rdi, 1
	mov rsi, msg$t2
	mov rdx, len$t2
	syscall

	;imprime en el archivo de texto	
	push r12
	mov r14, msg$t2
	mov r12, len$t2
	writetxt r14, r12
	pop r12

	ret	;vuelve a la operacion

_$$$t3ix:
	
	mov r14, [rt]	
	cmp r14, 11
	jne _$$$t4ix ;falta

	;imprime $t3
	mov rax, 1
	mov rdi, 1
	mov rsi, msg$t3
	mov rdx, len$t3
	syscall

	;imprime en el archivo de texto	
	push r12
	mov r14, msg$t3
	mov r12, len$t3
	writetxt r14, r12
	pop r12


	ret	;vuelve a la operacion

_$$$t4ix:
	
	mov r14, [rt]	
	cmp r14, 12
	jne _$$$t5ix ;falta

	;imprime $t4
	mov rax, 1
	mov rdi, 1
	mov rsi, msg$t4
	mov rdx, len$t4
	syscall

	;imprime en el archivo de texto	
	push r12
	mov r14, msg$t4
	mov r12, len$t4
	writetxt r14, r12
	pop r12

	ret	;vuelve a la operacion

_$$$t5ix:
	
	mov r14, [rt]	
	cmp r14, 13
	jne _$$$t6ix ;falta

	;imprime $t5
	mov rax, 1
	mov rdi, 1
	mov rsi, msg$t5
	mov rdx, len$t5
	syscall

	;imprime en el archivo de texto	
	push r12
	mov r14, msg$t5
	mov r12, len$t5
	writetxt r14, r12
	pop r12

	ret	;vuelve a la operacion

_$$$t6ix:
	
	mov r14, [rt]	
	cmp r14, 14
	jne _$$$t7ix ;falta

	;imprime $t6
	mov rax, 1
	mov rdi, 1
	mov rsi, msg$t6
	mov rdx, len$t6
	syscall

	;imprime en el archivo de texto	
	push r12
	mov r14, msg$t6
	mov r12, len$t6
	writetxt r14, r12
	pop r12

	ret	;vuelve a la operacion

_$$$t7ix:
	
	mov r14, [rt]	
	cmp r14, 15
	jne _$$$s0ix ;falta

	;imprime $t7
	mov rax, 1
	mov rdi, 1
	mov rsi, msg$t7
	mov rdx, len$t7
	syscall

	;imprime en el archivo de texto	
	push r12
	mov r14, msg$t7
	mov r12, len$t7
	writetxt r14, r12
	pop r12


	ret	;vuelve a la operacion

_$$$s0ix:
	
	mov r14, [rt]	
	cmp r14, 16
	jne _$$$s1ix ;falta

	;imprime $s0
	mov rax, 1
	mov rdi, 1
	mov rsi, msg$s0
	mov rdx, len$s0
	syscall

	;imprime en el archivo de texto	
	push r12
	mov r14, msg$s0
	mov r12, len$s0
	writetxt r14, r12
	pop r12


	ret	;vuelve a la operacion

_$$$s1ix:
	
	mov r14, [rt]	
	cmp r14, 17
	jne _$$$s2ix ;falta

	;imprime $s1
	mov rax, 1
	mov rdi, 1
	mov rsi, msg$s1
	mov rdx, len$s1
	syscall

	;imprime en el archivo de texto	
	push r12
	mov r14, msg$s1
	mov r12, len$s1
	writetxt r14, r12
	pop r12


	ret	;vuelve a la operacion

_$$$s2ix:
	
	mov r14, [rt]	
	cmp r14, 18
	jne _$$$s3ix ;falta

	;imprime $s2
	mov rax, 1
	mov rdi, 1
	mov rsi, msg$s2
	mov rdx, len$s2
	syscall

	;imprime en el archivo de texto	
	push r12
	mov r14, msg$s2
	mov r12, len$s2
	writetxt r14, r12
	pop r12

	ret	;vuelve a la operacion

_$$$s3ix:
	
	mov r14, [rt]	
	cmp r14, 19
	jne _$$$s4ix ;falta

	;imprime $s3
	mov rax, 1
	mov rdi, 1
	mov rsi, msg$s3
	mov rdx, len$s3
	syscall

	;imprime en el archivo de texto	
	push r12
	mov r14, msg$s3
	mov r12, len$s3
	writetxt r14, r12
	pop r12

	ret	;vuelve a la operacion

_$$$s4ix:
	
	mov r14, [rt]	
	cmp r14, 20
	jne _$$$s5ix ;falta

	;imprime $s4
	mov rax, 1
	mov rdi, 1
	mov rsi, msg$s4
	mov rdx, len$s4
	syscall

	;imprime en el archivo de texto	
	push r12
	mov r14, msg$s4
	mov r12, len$s4
	writetxt r14, r12
	pop r12

	ret	;vuelve a la operacion

_$$$s5ix:
	
	mov r14, [rt]	
	cmp r14, 21
	jne _$$$s6ix ;falta

	;imprime $s5
	mov rax, 1
	mov rdi, 1
	mov rsi, msg$s5
	mov rdx, len$s5
	syscall

	;imprime en el archivo de texto	
	push r12
	mov r14, msg$s5
	mov r12, len$s5
	writetxt r14, r12
	pop r12

	ret	;vuelve a la operacion

_$$$s6ix:
	
	mov r14, [rt]	
	cmp r14, 22
	jne _$$$s7ix ;falta

	;imprime $s6
	mov rax, 1
	mov rdi, 1
	mov rsi, msg$s6
	mov rdx, len$s6
	syscall

	;imprime en el archivo de texto	
	push r12
	mov r14, msg$s6
	mov r12, len$s6
	writetxt r14, r12
	pop r12

	ret	;vuelve a la operacion

_$$$s7ix:
	
	mov r14, [rt]	
	cmp r14, 23
	jne _$$$t8ix ;falta

	;imprime $s7
	mov rax, 1
	mov rdi, 1
	mov rsi, msg$s7
	mov rdx, len$s7
	syscall

	;imprime en el archivo de texto	
	push r12
	mov r14, msg$s7
	mov r12, len$s7
	writetxt r14, r12
	pop r12


	ret	;vuelve a la operacion

_$$$t8ix:
	
	mov r14, [rt]	
	cmp r14, 24
	jne _$$$t9ix ;falta

	;imprime $t8
	mov rax, 1
	mov rdi, 1
	mov rsi, msg$t8
	mov rdx, len$t8
	syscall

	;imprime en el archivo de texto	
	push r12
	mov r14, msg$t8
	mov r12, len$t8
	writetxt r14, r12
	pop r12

	ret	;vuelve a la operacion

_$$$t9ix:
	
	mov r14, [rt]	
	cmp r14, 25
	jne _$$$k0ix ;falta

	;imprime $t9
	mov rax, 1
	mov rdi, 1
	mov rsi, msg$t9
	mov rdx, len$t9
	syscall

	;imprime en el archivo de texto	
	push r12
	mov r14, msg$t9
	mov r12, len$t9
	writetxt r14, r12
	pop r12

	ret	;vuelve a la operacion

_$$$k0ix:
	
	mov r14, [rt]	
	cmp r14, 26
	jne _$$$k1ix ;falta

	;imprime $k0
	mov rax, 1
	mov rdi, 1
	mov rsi, msg$k0
	mov rdx, len$k0
	syscall

	;imprime en el archivo de texto	
	push r12
	mov r14, msg$k0
	mov r12, len$k0
	writetxt r14, r12
	pop r12

	ret	;vuelve a la operacion

_$$$k1ix:
	
	mov r14, [rt]	
	cmp r14, 27
	jne _$$$gpix ;falta

	;imprime $k1
	mov rax, 1
	mov rdi, 1
	mov rsi, msg$k1
	mov rdx, len$k1
	syscall

	;imprime en el archivo de texto	
	push r12
	mov r14, msg$k1
	mov r12, len$k1
	writetxt r14, r12
	pop r12

	ret	;vuelve a la operacion

_$$$gpix:
	
	mov r14, [rt]	
	cmp r14, 28
	jne _$$$spix ;falta

	;imprime $gp
	mov rax, 1
	mov rdi, 1
	mov rsi, msg$gp
	mov rdx, len$gp
	syscall

	;imprime en el archivo de texto	
	push r12
	mov r14, msg$gp
	mov r12, len$gp
	writetxt r14, r12
	pop r12

	ret	;vuelve a la operacion

_$$$spix:
	
	mov r14, [rt]	
	cmp r14, 29
	jne _$$$fpix ;falta

	;imprime $sp
	mov rax, 1
	mov rdi, 1
	mov rsi, msg$sp
	mov rdx, len$sp
	syscall

	;imprime en el archivo de texto	
	push r12
	mov r14, msg$sp
	mov r12, len$sp
	writetxt r14, r12
	pop r12

	ret	;vuelve a la operacion

_$$$fpix:
	
	mov r14, [rt]	
	cmp r14, 30
	jne _$$$raix ;falta

	;imprime $fp
	mov rax, 1
	mov rdi, 1
	mov rsi, msg$fp
	mov rdx, len$fp
	syscall

	;imprime en el archivo de texto	
	push r12
	mov r14, msg$fp
	mov r12, len$fp
	writetxt r14, r12
	pop r12


	ret	;vuelve a la operacion

_$$$raix:
	

	;imprime $ra
	mov rax, 1
	mov rdi, 1
	mov rsi, msg$ra
	mov rdx, len$ra
	syscall

	;imprime en el archivo de texto	
	push r12
	mov r14, msg$ra
	mov r12, len$ra
	writetxt r14, r12
	pop r12

	ret	;vuelve a la operacion




;////////////////////////////////////////////////////////////// IMPRESI\D3N EN PANTALLA DE RS PARA LOS LW Y SW
	
_printrtW:	
	mov r14, [rt]
	cmp r14, 0
	jne _$$$atW

	;imprime $zero
	mov rax, 1
	mov rdi, 1
	mov rsi, msg$zero
	mov rdx, len$zero
	syscall
	
	;imprime en el archivo de texto
	push r12
	mov r14, msg$zero
	mov r12, len$zero
	writetxt r14, r12
	pop r12
					
	ret	;vuelve a la operacion

_$$$atW:
	
	mov r14, [rt]
	cmp r14, 1
	jne _$$$v0W

	;imprime $at
	mov rax, 1
	mov rdi, 1
	mov rsi, msg$at
	mov rdx, len$at
	syscall

	;imprime en el archivo de texto
	push r12
	mov r14, msg$at
	mov r12, len$at
	writetxt r14, r12
	pop r12
				
	ret	;vuelve a la operacion

_$$$v0W:
	
	mov r14, [rt]	
	cmp r14, 2
	jne _$$$v1W ;falta
	
	;imprime $v0
	mov rax, 1
	mov rdi, 1
	mov rsi, msg$v0
	mov rdx, len$v0
	syscall

	;imprime en el archivo de texto
	push r12
	mov r14, msg$v0
	mov r12, len$v0
	writetxt r14, r12
	pop r12

	ret	;vuelve a la operacion

_$$$v1W:
	
	mov r14, [rt]	
	cmp r14, 3
	jne _$$$a0W ;falta

	;imprime $v1
	mov rax, 1
	mov rdi, 1
	mov rsi, msg$v1
	mov rdx, len$v1
	syscall

	;imprime en el archivo de texto
	push r12
	mov r14, msg$v1
	mov r12, len$v1
	writetxt r14, r12
	pop r12

	ret	;vuelve a la operacion

_$$$a0W:
	
	mov r14, [rt]	
	cmp r14, 4
	jne _$$$a1W ;falta

	;imprime $a0
	mov rax, 1
	mov rdi, 1
	mov rsi, msg$a0
	mov rdx, len$a0
	syscall

	;imprime en el archivo de texto
	push r12
	mov r14, msg$a0
	mov r12, len$a0
	writetxt r14, r12
	pop r12


	ret	;vuelve a la operacion

_$$$a1W:
	
	mov r14, [rt]	
	cmp r14, 5
	jne _$$$a2W ;falta

	;imprime $a1
	mov rax, 1
	mov rdi, 1
	mov rsi, msg$a1
	mov rdx, len$a1
	syscall

	;imprime en el archivo de texto
	push r12
	mov r14, msg$a1
	mov r12, len$a1
	writetxt r14, r12
	pop r12


	ret	;vuelve a la operacion

_$$$a2W:
	
	mov r14, [rt]	
	cmp r14, 6
	jne _$$$a3W ;falta

	;imprime $a2
	mov rax, 1
	mov rdi, 1
	mov rsi, msg$a2
	mov rdx, len$a2
	syscall

	;imprime en el archivo de texto
	push r12
	mov r14, msg$a2
	mov r12, len$a2
	writetxt r14, r12
	pop r12


	ret	;vuelve a la operacion

_$$$a3W:
	
	mov r14, [rt]	
	cmp r14, 7
	jne _$$$t0W ;falta

	;imprime $a3
	mov rax, 1
	mov rdi, 1
	mov rsi, msg$a3
	mov rdx, len$a3
	syscall

	;imprime en el archivo de texto
	push r12
	mov r14, msg$a3
	mov r12, len$a3
	writetxt r14, r12
	pop r12


	ret	;vuelve a la operacion

_$$$t0W:
	
	mov r14, [rt]	
	cmp r14, 8
	jne _$$$t1W ;falta

	;imprime $t0
	mov rax, 1
	mov rdi, 1
	mov rsi, msg$t0
	mov rdx, len$t0
	syscall

	;imprime en el archivo de texto
	push r12
	mov r14, msg$t0
	mov r12, len$t0
	writetxt r14, r12
	pop r12

	ret	;vuelve a la operacion

_$$$t1W:
	
	mov r14, [rt]	
	cmp r14, 9
	jne _$$$t2W ;falta

	;imprime $t1
	mov rax, 1
	mov rdi, 1
	mov rsi, msg$t1
	mov rdx, len$t1
	syscall

	;imprime en el archivo de texto
	push r12
	mov r14, msg$t1
	mov r12, len$t1
	writetxt r14, r12
	pop r12

	ret	;vuelve a la operacion

_$$$t2W:
	
	mov r14, [rt]	
	cmp r14, 10
	jne _$$$t3W ;falta

	;imprime $t2
	mov rax, 1
	mov rdi, 1
	mov rsi, msg$t2
	mov rdx, len$t2
	syscall

	;imprime en el archivo de texto
	push r12
	mov r14, msg$t2
	mov r12, len$t2
	writetxt r14, r12
	pop r12

	ret	;vuelve a la operacion

_$$$t3W:
	
	mov r14, [rt]	
	cmp r14, 11
	jne _$$$t4W ;falta

	;imprime $t3
	mov rax, 1
	mov rdi, 1
	mov rsi, msg$t3
	mov rdx, len$t3
	syscall

	;imprime en el archivo de texto
	push r12
	mov r14, msg$t3
	mov r12, len$t3
	writetxt r14, r12
	pop r12

	ret	;vuelve a la operacion

_$$$t4W:
	
	mov r14, [rt]	
	cmp r14, 12
	jne _$$$t5W ;falta

	;imprime $t4
	mov rax, 1
	mov rdi, 1
	mov rsi, msg$t4
	mov rdx, len$t4
	syscall

	;imprime en el archivo de texto
	push r12
	mov r14, msg$t4
	mov r12, len$t4
	writetxt r14, r12
	pop r12

	ret	;vuelve a la operacion

_$$$t5W:
	
	mov r14, [rt]	
	cmp r14, 13
	jne _$$$t6W ;falta

	;imprime $t5
	mov rax, 1
	mov rdi, 1
	mov rsi, msg$t5
	mov rdx, len$t5
	syscall

	;imprime en el archivo de texto
	push r12
	mov r14, msg$t5
	mov r12, len$t5
	writetxt r14, r12
	pop r12


	ret	;vuelve a la operacion

_$$$t6W:
	
	mov r14, [rt]	
	cmp r14, 14
	jne _$$$t7W ;falta

	;imprime $t6
	mov rax, 1
	mov rdi, 1
	mov rsi, msg$t6
	mov rdx, len$t6
	syscall

	;imprime en el archivo de texto
	push r12
	mov r14, msg$t6
	mov r12, len$t6
	writetxt r14, r12
	pop r12


	ret	;vuelve a la operacion

_$$$t7W:
	
	mov r14, [rt]	
	cmp r14, 15
	jne _$$$s0W ;falta

	;imprime $t7
	mov rax, 1
	mov rdi, 1
	mov rsi, msg$t7
	mov rdx, len$t7
	syscall

	;imprime en el archivo de texto
	push r12
	mov r14, msg$t7
	mov r12, len$t7
	writetxt r14, r12
	pop r12

	ret	;vuelve a la operacion

_$$$s0W:
	
	mov r14, [rt]	
	cmp r14, 16
	jne _$$$s1W ;falta

	;imprime $s0
	mov rax, 1
	mov rdi, 1
	mov rsi, msg$s0
	mov rdx, len$s0
	syscall

	;imprime en el archivo de texto
	push r12
	mov r14, msg$s0
	mov r12, len$s0
	writetxt r14, r12
	pop r12


	ret	;vuelve a la operacion

_$$$s1W:
	
	mov r14, [rt]	
	cmp r14, 17
	jne _$$$s2W ;falta

	;imprime $s1
	mov rax, 1
	mov rdi, 1
	mov rsi, msg$s1
	mov rdx, len$s1
	syscall

	;imprime en el archivo de texto
	push r12
	mov r14, msg$s1
	mov r12, len$s1
	writetxt r14, r12
	pop r12


	ret	;vuelve a la operacion

_$$$s2W:
	
	mov r14, [rt]	
	cmp r14, 18
	jne _$$$s3W ;falta

	;imprime $s2
	mov rax, 1
	mov rdi, 1
	mov rsi, msg$s2
	mov rdx, len$s2
	syscall

	;imprime en el archivo de texto
	push r12
	mov r14, msg$s2
	mov r12, len$s2
	writetxt r14, r12
	pop r12


	ret	;vuelve a la operacion

_$$$s3W:
	
	mov r14, [rt]	
	cmp r14, 19
	jne _$$$s4W ;falta

	;imprime $s3
	mov rax, 1
	mov rdi, 1
	mov rsi, msg$s3
	mov rdx, len$s3
	syscall

	;imprime en el archivo de texto
	push r12
	mov r14, msg$s3
	mov r12, len$s3
	writetxt r14, r12
	pop r12


	ret	;vuelve a la operacion

_$$$s4W:
	
	mov r14, [rt]	
	cmp r14, 20
	jne _$$$s5W 

	;imprime $s4
	mov rax, 1
	mov rdi, 1
	mov rsi, msg$s4
	mov rdx, len$s4
	syscall

	;imprime en el archivo de texto
	push r12
	mov r14, msg$s4
	mov r12, len$s4
	writetxt r14, r12
	pop r12

	ret	;vuelve a la operacion

_$$$s5W:
	
	mov r14, [rt]	
	cmp r14, 21
	jne _$$$s6W 

	;imprime $s5
	mov rax, 1
	mov rdi, 1
	mov rsi, msg$s5
	mov rdx, len$s5
	syscall

	;imprime en el archivo de texto
	push r12
	mov r14, msg$s5
	mov r12, len$s5
	writetxt r14, r12
	pop r12


	ret	;vuelve a la operacion

_$$$s6W:
	
	mov r14, [rt]	
	cmp r14, 22
	jne _$$$s7W ;falta

	;imprime $s6
	mov rax, 1
	mov rdi, 1
	mov rsi, msg$s6
	mov rdx, len$s6
	syscall

	;imprime en el archivo de texto
	push r12
	mov r14, msg$s6
	mov r12, len$s6
	writetxt r14, r12
	pop r12


	ret	;vuelve a la operacion

_$$$s7W:
	
	mov r14, [rt]	
	cmp r14, 23
	jne _$$$t8W ;falta

	;imprime $s7
	mov rax, 1
	mov rdi, 1
	mov rsi, msg$s7
	mov rdx, len$s7
	syscall

	;imprime en el archivo de texto
	push r12
	mov r14, msg$s7
	mov r12, len$s7
	writetxt r14, r12
	pop r12


	ret	;vuelve a la operacion

_$$$t8W:
	
	mov r14, [rt]	
	cmp r14, 24
	jne _$$$t9W ;falta

	;imprime $t8
	mov rax, 1
	mov rdi, 1
	mov rsi, msg$t8
	mov rdx, len$t8
	syscall

	;imprime en el archivo de texto
	push r12
	mov r14, msg$t8
	mov r12, len$t8
	writetxt r14, r12
	pop r12


	ret	;vuelve a la operacion

_$$$t9W:
	
	mov r14, [rt]	
	cmp r14, 25
	jne _$$$k0W ;falta

	;imprime $t9
	mov rax, 1
	mov rdi, 1
	mov rsi, msg$t9
	mov rdx, len$t9
	syscall

	;imprime en el archivo de texto
	push r12
	mov r14, msg$t9
	mov r12, len$t9
	writetxt r14, r12
	pop r12


	ret	;vuelve a la operacion

_$$$k0W:
	
	mov r14, [rt]	
	cmp r14, 26
	jne _$$$k1W ;falta

	;imprime $k0
	mov rax, 1
	mov rdi, 1
	mov rsi, msg$k0
	mov rdx, len$k0
	syscall

	;imprime en el archivo de texto
	push r12
	mov r14, msg$k0
	mov r12, len$k0
	writetxt r14, r12
	pop r12

	ret	;vuelve a la operacion

_$$$k1W:
	
	mov r14, [rt]	
	cmp r14, 27
	jne _$$$gpW ;falta

	;imprime $k1
	mov rax, 1
	mov rdi, 1
	mov rsi, msg$k1
	mov rdx, len$k1
	syscall

	;imprime en el archivo de texto
	push r12
	mov r14, msg$k1
	mov r12, len$k1
	writetxt r14, r12
	pop r12

	ret	;vuelve a la operacion

_$$$gpW:
	
	mov r14, [rt]	
	cmp r14, 28
	jne _$$$spW ;falta

	;imprime $gp
	mov rax, 1
	mov rdi, 1
	mov rsi, msg$gp
	mov rdx, len$gp
	syscall

	;imprime en el archivo de texto
	push r12
	mov r14, msg$gp
	mov r12, len$gp
	writetxt r14, r12
	pop r12

	ret	;vuelve a la operacion

_$$$spW:
	
	mov r14, [rt]	
	cmp r14, 29
	jne _$$$fpW ;falta

	;imprime $sp
	mov rax, 1
	mov rdi, 1
	mov rsi, msg$sp
	mov rdx, len$sp
	syscall

	;imprime en el archivo de texto
	push r12
	mov r14, msg$sp
	mov r12, len$sp
	writetxt r14, r12
	pop r12


	ret	;vuelve a la operacion

_$$$fpW:
	
	mov r14, [rt]	
	cmp r14, 30
	jne _$$$raW;falta

	;imprime $fp
	mov rax, 1
	mov rdi, 1
	mov rsi, msg$fp
	mov rdx, len$fp
	syscall

	;imprime en el archivo de texto
	push r12
	mov r14, msg$fp
	mov r12, len$fp
	writetxt r14, r12
	pop r12


	ret	;vuelve a la operacion

_$$$raW:
	

	;imprime $ra
	mov rax, 1
	mov rdi, 1
	mov rsi, msg$ra
	mov rdx, len$ra
	syscall

	;imprime en el archivo de texto
	push r12
	mov r14, msg$ra
	mov r12, len$ra
	writetxt r14, r12
	pop r12

	ret	;vuelve a la operacion




;//////////////////////////////////////////////////////////////


;/////////////////////////////////////////// Impresi\F3n en pantalla RS para los SW Y LW
	
_printrsW:
	


	mov r14, [rs]
	cmp r14, 0
	jne _$$atW

	;imprime Parentesis 1
	mov rax, 1
	mov rdi, 1
	mov rsi, msgPAR1
	mov rdx, lenPAR1
	syscall

	;imprime en el archivo de texto
	push r12
	mov r14, msgPAR1
	mov r12, lenPAR1
	writetxt r14, r12
	pop r12


	;imprime $zero
	mov rax, 1
	mov rdi, 1
	mov rsi, msg$zero
	mov rdx, len$zero
	syscall

	;imprime en el archivo de texto
	push r12
	mov r14, msg$zero
	mov r12, len$zero
	writetxt r14, r12
	pop r12

	;imprime Parentesis 2
	mov rax, 1
	mov rdi, 1
	mov rsi, msgPAR2
	mov rdx, lenPAR2
	syscall

	;imprime en el archivo de texto
	push r12
	mov r14, msgPAR2
	mov r12, lenPAR2
	writetxt r14, r12
	pop r12
	

	ret
	
_$$atW:



	mov r14, [rs]	
	cmp r14, 1
	jne _$$v0W ; falta

	;imprime Parentesis 1
	mov rax, 1
	mov rdi, 1
	mov rsi, msgPAR1
	mov rdx, lenPAR1
	syscall

	;imprime en el archivo de texto
	push r12
	mov r14, msgPAR1
	mov r12, lenPAR1
	writetxt r14, r12
	pop r12

	;imprime $at
	mov rax, 1
	mov rdi, 1
	mov rsi, msg$at
	mov rdx, len$at
	syscall

	;imprime en el archivo de texto
	push r12
	mov r14, msg$at
	mov r12, len$at
	writetxt r14, r12
	pop r12

	;imprime Parentesis 2
	mov rax, 1
	mov rdi, 1
	mov rsi, msgPAR2
	mov rdx, lenPAR2
	syscall

	;imprime en el archivo de texto
	push r12
	mov r14, msgPAR2
	mov r12, lenPAR2
	writetxt r14, r12
	pop r12


	ret


_$$v0W:
	
	mov r14, [rs]	
	cmp r14, 2
	jne _$$v1W ;falta

	;imprime Parentesis 1
	mov rax, 1
	mov rdi, 1
	mov rsi, msgPAR1
	mov rdx, lenPAR1
	syscall

	;imprime en el archivo de texto
	push r12
	mov r14, msgPAR1
	mov r12, lenPAR1
	writetxt r14, r12
	pop r12
	
	;imprime $v0
	mov rax, 1
	mov rdi, 1
	mov rsi, msg$v0
	mov rdx, len$v0
	syscall

	;imprime en el archivo de texto
	push r12
	mov r14, msg$v0
	mov r12, len$v0
	writetxt r14, r12
	pop r12

	;imprime Parentesis 2
	mov rax, 1
	mov rdi, 1
	mov rsi, msgPAR2
	mov rdx, lenPAR2
	syscall

	;imprime en el archivo de texto
	push r12
	mov r14, msgPAR2
	mov r12, lenPAR2
	writetxt r14, r12
	pop r12

	ret; vuelve a la operaci\F3n

_$$v1W:
	
	mov r14, [rs]	
	cmp r14, 3
	jne _$$a0W ;falta

	;imprime Parentesis 1
	mov rax, 1
	mov rdi, 1
	mov rsi, msgPAR1
	mov rdx, lenPAR1
	syscall

	;imprime en el archivo de texto
	push r12
	mov r14, msgPAR1
	mov r12, lenPAR1
	writetxt r14, r12
	pop r12

	;imprime $v1
	mov rax, 1
	mov rdi, 1
	mov rsi, msg$v1
	mov rdx, len$v1
	syscall

	;imprime en el archivo de texto
	push r12
	mov r14, msg$v1
	mov r12, len$v1
	writetxt r14, r12
	pop r12

	;imprime Parentesis 2
	mov rax, 1
	mov rdi, 1
	mov rsi, msgPAR2
	mov rdx, lenPAR2
	syscall

	;imprime en el archivo de texto
	push r12
	mov r14, msgPAR2
	mov r12, lenPAR2
	writetxt r14, r12
	pop r12

	ret

_$$a0W:
	
	mov r14, [rs]	
	cmp r14, 4
	jne _$$a1W ;falta

	;imprime Parentesis 1
	mov rax, 1
	mov rdi, 1
	mov rsi, msgPAR1
	mov rdx, lenPAR1
	syscall

	;imprime en el archivo de texto
	push r12
	mov r14, msgPAR1
	mov r12, lenPAR1
	writetxt r14, r12
	pop r12

	;imprime $a0
	mov rax, 1
	mov rdi, 1
	mov rsi, msg$a0
	mov rdx, len$a0
	syscall

	;imprime en el archivo de texto
	push r12
	mov r14, msg$a0
	mov r12, len$a0
	writetxt r14, r12
	pop r12

	;imprime Parentesis 2
	mov rax, 1
	mov rdi, 1
	mov rsi, msgPAR2
	mov rdx, lenPAR2
	syscall

	;imprime en el archivo de texto
	push r12
	mov r14, msgPAR2
	mov r12, lenPAR2
	writetxt r14, r12
	pop r12

	ret; vuelve a la operaci\F3n

_$$a1W:


	mov r14, [rs]	
	cmp r14, 5
	jne _$$a2W ;falta

	;imprime Parentesis 1
	mov rax, 1
	mov rdi, 1
	mov rsi, msgPAR1
	mov rdx, lenPAR1
	syscall

	;imprime en el archivo de texto
	push r12
	mov r14, msgPAR1
	mov r12, lenPAR1
	writetxt r14, r12
	pop r12

	;imprime $a1
	mov rax, 1
	mov rdi, 1
	mov rsi, msg$a1
	mov rdx, len$a1
	syscall

	;imprime en el archivo de texto
	push r12
	mov r14, msg$a1
	mov r12, len$a1
	writetxt r14, r12
	pop r12

	;imprime Parentesis 2
	mov rax, 1
	mov rdi, 1
	mov rsi, msgPAR2
	mov rdx, lenPAR2
	syscall

	;imprime en el archivo de texto
	push r12
	mov r14, msgPAR2
	mov r12, lenPAR2
	writetxt r14, r12
	pop r12

	ret; vuelve a la operaci\F3n


_$$a2W:


	
	mov r14, [rs]	
	cmp r14, 6
	jne _$$a3W ;falta

	;imprime Parentesis 1
	mov rax, 1
	mov rdi, 1
	mov rsi, msgPAR1
	mov rdx, lenPAR1
	syscall

	;imprime en el archivo de texto
	push r12
	mov r14, msgPAR1
	mov r12, lenPAR1
	writetxt r14, r12
	pop r12

	;imprime $a2
	mov rax, 1
	mov rdi, 1
	mov rsi, msg$a2
	mov rdx, len$a2
	syscall

	;imprime en el archivo de texto
	push r12
	mov r14, msg$a2
	mov r12, len$a2
	writetxt r14, r12
	pop r12

	;imprime Parentesis 2
	mov rax, 1
	mov rdi, 1
	mov rsi, msgPAR2
	mov rdx, lenPAR2
	syscall

	;imprime en el archivo de texto
	push r12
	mov r14, msgPAR2
	mov r12, lenPAR2
	writetxt r14, r12
	pop r12

	ret; vuelve a la operaci\F3n


_$$a3W:

	mov r14, [rs]	
	cmp r14, 7
	jne _$$t0W ;falta

	;imprime Parentesis 1
	mov rax, 1
	mov rdi, 1
	mov rsi, msgPAR1
	mov rdx, lenPAR1
	syscall	

	;imprime en el archivo de texto
	push r12
	mov r14, msgPAR1
	mov r12, lenPAR1
	writetxt r14, r12
	pop r12

	;imprime $a3
	mov rax, 1
	mov rdi, 1
	mov rsi, msg$a3
	mov rdx, len$a3
	syscall

	;imprime en el archivo de texto
	push r12
	mov r14, msg$a3
	mov r12, len$a3
	writetxt r14, r12
	pop r12

	;imprime Parentesis 2
	mov rax, 1
	mov rdi, 1
	mov rsi, msgPAR2
	mov rdx, lenPAR2
	syscall

	;imprime en el archivo de texto
	push r12
	mov r14, msgPAR1
	mov r12, lenPAR1
	writetxt r14, r12
	pop r12

	ret; vuelve a la operaci\F3n

_$$t0W:

	mov r14, [rs]	
	cmp r14, 8
	jne _$$t1W ;falta

	;imprime Parentesis 1
	mov rax, 1
	mov rdi, 1
	mov rsi, msgPAR1
	mov rdx, lenPAR1
	syscall

	;imprime en el archivo de texto
	push r12
	mov r14, msgPAR1
	mov r12, lenPAR1
	writetxt r14, r12
	pop r12

	;imprime $t0
	mov rax, 1
	mov rdi, 1
	mov rsi, msg$t0
	mov rdx, len$t0
	syscall

	;imprime en el archivo de texto
	push r12
	mov r14, msg$t0
	mov r12, len$t0
	writetxt r14, r12
	pop r12

	;imprime Parentesis 2
	mov rax, 1
	mov rdi, 1
	mov rsi, msgPAR2
	mov rdx, lenPAR2
	syscall

	;imprime en el archivo de texto
	push r12
	mov r14, msgPAR2
	mov r12, lenPAR2
	writetxt r14, r12
	pop r12

	ret; vuelve a la operaci\F3n

_$$t1W:
	
	mov r14, [rs]	
	cmp r14, 9
	jne _$$t2W ;falta

	;imprime Parentesis 1
	mov rax, 1
	mov rdi, 1
	mov rsi, msgPAR1
	mov rdx, lenPAR1
	syscall

	;imprime en el archivo de texto
	push r12
	mov r14, msgPAR1
	mov r12, lenPAR1
	writetxt r14, r12
	pop r12

	;imprime $t1
	mov rax, 1
	mov rdi, 1
	mov rsi, msg$t1
	mov rdx, len$t1
	syscall

	;imprime en el archivo de texto
	push r12
	mov r14, msg$t1
	mov r12, len$t1
	writetxt r14, r12
	pop r12

	;imprime Parentesis 2
	mov rax, 1
	mov rdi, 1
	mov rsi, msgPAR2
	mov rdx, lenPAR2
	syscall

	;imprime en el archivo de texto
	push r12
	mov r14, msgPAR2
	mov r12, lenPAR2
	writetxt r14, r12
	pop r12

	ret; vuelve a la operaci\F3n

_$$t2W:

	mov r14, [rs]	
	cmp r14, 10
	jne _$$t3W ;falta

	;imprime Parentesis 1
	mov rax, 1
	mov rdi, 1
	mov rsi, msgPAR1
	mov rdx, lenPAR1
	syscall

	;imprime en el archivo de texto
	push r12
	mov r14, msgPAR1
	mov r12, lenPAR1
	writetxt r14, r12
	pop r12

	;imprime $t2
	mov rax, 1
	mov rdi, 1
	mov rsi, msg$t2
	mov rdx, len$t2
	syscall

	;imprime en el archivo de texto
	push r12
	mov r14, msg$t2
	mov r12, len$t2
	writetxt r14, r12
	pop r12

	;imprime Parentesis 2
	mov rax, 1
	mov rdi, 1
	mov rsi, msgPAR2
	mov rdx, lenPAR2
	syscall

	;imprime en el archivo de texto
	push r12
	mov r14, msgPAR2
	mov r12, lenPAR2
	writetxt r14, r12
	pop r12

	ret; vuelve  a la operaci\F3n

_$$t3W:

	mov r14, [rs]	
	cmp r14, 11
	jne _$$t4W ;falta


	;imprime Parentesis 1
	mov rax, 1
	mov rdi, 1
	mov rsi, msgPAR1
	mov rdx, lenPAR1
	syscall	

	;imprime en el archivo de texto
	push r12
	mov r14, msgPAR1
	mov r12, lenPAR1
	writetxt r14, r12
	pop r12

	;imprime $t3
	mov rax, 1
	mov rdi, 1
	mov rsi, msg$t3
	mov rdx, len$t3
	syscall

	;imprime en el archivo de texto
	push r12
	mov r14, msg$t3
	mov r12, len$t3
	writetxt r14, r12
	pop r12

	;imprime Parentesis 2
	mov rax, 1
	mov rdi, 1
	mov rsi, msgPAR2
	mov rdx, lenPAR2
	syscall

	;imprime en el archivo de texto
	push r12
	mov r14, msgPAR2
	mov r12, lenPAR2
	writetxt r14, r12
	pop r12
	
	ret; vuelve a la operaci\F3n
	
_$$t4W:

	mov r14, [rs]	
	cmp r14, 12
	jne _$$t5W ;falta
	
	;imprime Parentesis 1
	mov rax, 1
	mov rdi, 1
	mov rsi, msgPAR1
	mov rdx, lenPAR1
	syscall

	;imprime en el archivo de texto
	push r12
	mov r14, msgPAR1
	mov r12, lenPAR1
	writetxt r14, r12
	pop r12

	;imprime $t4
	mov rax, 1
	mov rdi, 1
	mov rsi, msg$t4
	mov rdx, len$t4
	syscall

	;imprime en el archivo de texto
	push r12
	mov r14, msg$t4
	mov r12, len$t4
	writetxt r14, r12
	pop r12

	;imprime Parentesis 2
	mov rax, 1
	mov rdi, 1
	mov rsi, msgPAR2
	mov rdx, lenPAR2
	syscall

	;imprime en el archivo de texto
	push r12
	mov r14, msgPAR2
	mov r12, lenPAR2
	writetxt r14, r12
	pop r12

	ret; vuelve a la operaci\F3n

_$$t5W:

	mov r14, [rs]	
	cmp r14, 13
	jne _$$t6W ;falta

	
	;imprime Parentesis 1
	mov rax, 1
	mov rdi, 1
	mov rsi, msgPAR1
	mov rdx, lenPAR1
	syscall

	;imprime en el archivo de texto
	push r12
	mov r14, msgPAR1
	mov r12, lenPAR1
	writetxt r14, r12
	pop r12

	;imprime $t5
	mov rax, 1
	mov rdi, 1
	mov rsi, msg$t5
	mov rdx, len$t5
	syscall

	;imprime en el archivo de texto
	push r12
	mov r14, msg$t5
	mov r12, len$t5
	writetxt r14, r12
	pop r12

	;imprime Parentesis 2
	mov rax, 1
	mov rdi, 1
	mov rsi, msgPAR2
	mov rdx, lenPAR2
	syscall

	;imprime en el archivo de texto
	push r12
	mov r14, msgPAR2
	mov r12, lenPAR2
	writetxt r14, r12
	pop r12

	ret; vuelve a la operaci\F3n

_$$t6W:
	
	mov r14, [rs]	
	cmp r14, 14
	jne _$$t7W ;falta

	;imprime Parentesis 1
	mov rax, 1
	mov rdi, 1
	mov rsi, msgPAR1
	mov rdx, lenPAR1
	syscall

	;imprime en el archivo de texto
	push r12
	mov r14, msgPAR1
	mov r12, lenPAR1
	writetxt r14, r12
	pop r12

	;imprime $t6
	mov rax, 1
	mov rdi, 1
	mov rsi, msg$t6
	mov rdx, len$t6
	syscall

	;imprime en el archivo de texto
	push r12
	mov r14, msg$t6
	mov r12, len$t6
	writetxt r14, r12
	pop r12

	;imprime Parentesis 2
	mov rax, 1
	mov rdi, 1
	mov rsi, msgPAR2
	mov rdx, lenPAR2
	syscall

	;imprime en el archivo de texto
	push r12
	mov r14, msgPAR2
	mov r12, lenPAR2
	writetxt r14, r12
	pop r12

	ret

_$$t7W:
	
	mov r14, [rs]	
	cmp r14, 15
	jne _$$s0W ;falta


	;imprime Parentesis 1
	mov rax, 1
	mov rdi, 1
	mov rsi, msgPAR1
	mov rdx, lenPAR1
	syscall

	;imprime en el archivo de texto
	push r12
	mov r14, msgPAR1
	mov r12, lenPAR1
	writetxt r14, r12
	pop r12

	;imprime $t7
	mov rax, 1
	mov rdi, 1
	mov rsi, msg$t7
	mov rdx, len$t7
	syscall

	;imprime en el archivo de texto
	push r12
	mov r14, msg$t7
	mov r12, len$t7
	writetxt r14, r12
	pop r12

	;imprime Parentesis 2
	mov rax, 1
	mov rdi, 1
	mov rsi, msgPAR2
	mov rdx, lenPAR2
	syscall

	;imprime en el archivo de texto
	push r12
	mov r14, msgPAR2
	mov r12, lenPAR2
	writetxt r14, r12
	pop r12

	ret; vuelve a la operaci\F3n

_$$s0W:

	mov r14, [rs]	
	cmp r14, 16
	jne _$$s1W ;falta

	
	;imprime Parentesis 1
	mov rax, 1
	mov rdi, 1
	mov rsi, msgPAR1
	mov rdx, lenPAR1
	syscall

	;imprime en el archivo de texto
	push r12
	mov r14, msgPAR1
	mov r12, lenPAR1
	writetxt r14, r12
	pop r12

	;imprime $s0
	mov rax, 1
	mov rdi, 1
	mov rsi, msg$s0
	mov rdx, len$s0
	syscall

	;imprime en el archivo de texto
	push r12
	mov r14, msg$s0
	mov r12, len$s0
	writetxt r14, r12
	pop r12

	;imprime Parentesis 2
	mov rax, 1
	mov rdi, 1
	mov rsi, msgPAR2
	mov rdx, lenPAR2
	syscall

	;imprime en el archivo de texto
	push r12
	mov r14, msgPAR2
	mov r12, lenPAR2
	writetxt r14, r12
	pop r12

	ret; vuelve a la operaci\F3n

_$$s1W:
	
	mov r14, [rs]	
	cmp r14, 17
	jne _$$s2W ;falta

	;imprime Parentesis 1
	mov rax, 1
	mov rdi, 1
	mov rsi, msgPAR1
	mov rdx, lenPAR1
	syscall

	;imprime en el archivo de texto
	push r12
	mov r14, msgPAR1
	mov r12, lenPAR1
	writetxt r14, r12
	pop r12

	;imprime $s1
	mov rax, 1
	mov rdi, 1
	mov rsi, msg$s1
	mov rdx, len$s1
	syscall

	;imprime en el archivo de texto
	push r12
	mov r14, msg$s1
	mov r12, len$s1
	writetxt r14, r12
	pop r12

	;imprime Parentesis 2
	mov rax, 1
	mov rdi, 1
	mov rsi, msgPAR2
	mov rdx, lenPAR2
	syscall

	;imprime en el archivo de texto
	push r12
	mov r14, msgPAR2
	mov r12, lenPAR2
	writetxt r14, r12
	pop r12

	ret; vuelve a la operaci\F3n

_$$s2W:
	
	mov r14, [rs]	
	cmp r14, 18
	jne _$$s3W ;falta


	;imprime Parentesis 1
	mov rax, 1
	mov rdi, 1
	mov rsi, msgPAR1
	mov rdx, lenPAR1
	syscall

	;imprime en el archivo de texto
	push r12
	mov r14, msgPAR1
	mov r12, lenPAR1
	writetxt r14, r12
	pop r12

	;imprime $s2
	mov rax, 1
	mov rdi, 1
	mov rsi, msg$s2
	mov rdx, len$s2
	syscall

	;imprime en el archivo de texto
	push r12
	mov r14, msg$s2
	mov r12, len$s2
	writetxt r14, r12
	pop r12

	;imprime Parentesis 2
	mov rax, 1
	mov rdi, 1
	mov rsi, msgPAR2
	mov rdx, lenPAR2
	syscall

	;imprime en el archivo de texto
	push r12
	mov r14, msgPAR2
	mov r12, lenPAR2
	writetxt r14, r12
	pop r12

	ret; vuelve a la operaci\F3n

_$$s3W:

	mov r14, [rs]	
	cmp r14, 19
	jne _$$s4W ;falta


	;imprime Parentesis 1
	mov rax, 1
	mov rdi, 1
	mov rsi, msgPAR1
	mov rdx, lenPAR1
	syscall

	;imprime en el archivo de texto
	push r12
	mov r14, msgPAR1
	mov r12, lenPAR1
	writetxt r14, r12
	pop r12
	

	;imprime $s3
	mov rax, 1
	mov rdi, 1
	mov rsi, msg$s3
	mov rdx, len$s3
	syscall

	;imprime en el archivo de texto
	push r12
	mov r14, msg$s3
	mov r12, len$s3
	writetxt r14, r12
	pop r12

	;imprime Parentesis 2
	mov rax, 1
	mov rdi, 1
	mov rsi, msgPAR2
	mov rdx, lenPAR2
	syscall

	;imprime en el archivo de texto
	push r12
	mov r14, msgPAR2
	mov r12, lenPAR2
	writetxt r14, r12
	pop r12

	ret

_$$s4W:

	
	mov r14, [rs]	
	cmp r14, 20
	jne _$$s5W ;falta


	;imprime Parentesis 1
	mov rax, 1
	mov rdi, 1
	mov rsi, msgPAR1
	mov rdx, lenPAR1
	syscall

	;imprime en el archivo de texto
	push r12
	mov r14, msgPAR1
	mov r12, lenPAR1
	writetxt r14, r12
	pop r12

	;imprime $s4
	mov rax, 1
	mov rdi, 1
	mov rsi, msg$s4
	mov rdx, len$s4
	syscall

	;imprime en el archivo de texto
	push r12
	mov r14, msg$s4
	mov r12, len$s4
	writetxt r14, r12
	pop r12

	;imprime Parentesis 2
	mov rax, 1
	mov rdi, 1
	mov rsi, msgPAR2
	mov rdx, lenPAR2
	syscall

	;imprime en el archivo de texto
	push r12
	mov r14, msgPAR2
	mov r12, lenPAR2
	writetxt r14, r12
	pop r12

	ret; vuelve a la operaci\F3n

_$$s5W:
	
	mov r14, [rs]	
	cmp r14, 21
	jne _$$s6W ;falta

	;imprime Parentesis 1
	mov rax, 1
	mov rdi, 1
	mov rsi, msgPAR1
	mov rdx, lenPAR1
	syscall

	;imprime en el archivo de texto
	push r12
	mov r14, msgPAR1
	mov r12, lenPAR1
	writetxt r14, r12
	pop r12

	;imprime $s5
	mov rax, 1
	mov rdi, 1
	mov rsi, msg$s5
	mov rdx, len$s5
	syscall

	;imprime en el archivo de texto
	push r12
	mov r14, msg$s5
	mov r12, len$s5
	writetxt r14, r12
	pop r12

	;imprime Parentesis2
	mov rax, 1
	mov rdi, 1
	mov rsi, msgPAR2
	mov rdx, lenPAR2
	syscall

	;imprime en el archivo de texto
	push r12
	mov r14, msgPAR2
	mov r12, lenPAR2
	writetxt r14, r12
	pop r12

	ret; vuelve a la operaci\F3n

_$$s6W:
	
	mov r14, [rs]	
	cmp r14, 22
	jne _$$s7W ;falta


	;imprime Parentesis 1
	mov rax, 1
	mov rdi, 1
	mov rsi, msgPAR1
	mov rdx, lenPAR1
	syscall

	;imprime en el archivo de texto
	push r12
	mov r14, msgPAR1
	mov r12, lenPAR1
	writetxt r14, r12
	pop r12

	;imprime $s6
	mov rax, 1
	mov rdi, 1
	mov rsi, msg$s6
	mov rdx, len$s6
	syscall

	;imprime en el archivo de texto
	push r12
	mov r14, msg$s6
	mov r12, len$s6
	writetxt r14, r12
	pop r12

	;imprime Parentesis 2
	mov rax, 1
	mov rdi, 1
	mov rsi, msgPAR2
	mov rdx, lenPAR2
	syscall

	;imprime en el archivo de texto
	push r12
	mov r14, msgPAR2
	mov r12, lenPAR2
	writetxt r14, r12
	pop r12

	ret; vuelve a la operaci\F3n

_$$s7W:
	
	mov r14, [rs]	
	cmp r14, 23
	jne _$$t8W ;falta


	;imprime Parentesis 1
	mov rax, 1
	mov rdi, 1
	mov rsi, msgPAR1
	mov rdx, lenPAR1
	syscall

	;imprime en el archivo de texto
	push r12
	mov r14, msgPAR1
	mov r12, lenPAR1
	writetxt r14, r12
	pop r12

	;imprime $s7
	mov rax, 1
	mov rdi, 1
	mov rsi, msg$s7
	mov rdx, len$s7
	syscall

	;imprime en el archivo de texto
	push r12
	mov r14, msg$s7
	mov r12, len$s7
	writetxt r14, r12
	pop r12

	;imprime Parentesis 2
	mov rax, 1
	mov rdi, 1
	mov rsi, msgPAR2
	mov rdx, lenPAR2
	syscall

	;imprime en el archivo de texto
	push r12
	mov r14, msgPAR2
	mov r12, lenPAR2
	writetxt r14, r12
	pop r12

	ret; vuelve a la operaci\F3n

_$$t8W:
	
	mov r14, [rs]	
	cmp r14, 24
	jne _$$t9W ;falta


	;imprime Parentesis 1
	mov rax, 1
	mov rdi, 1
	mov rsi, msgPAR1
	mov rdx, lenPAR1
	syscall

	;imprime en el archivo de texto
	push r12
	mov r14, msgPAR1
	mov r12, lenPAR1
	writetxt r14, r12
	pop r12

	;imprime $t8
	mov rax, 1
	mov rdi, 1
	mov rsi, msg$t8
	mov rdx, len$t8
	syscall

	;imprime en el archivo de texto
	push r12
	mov r14, msg$t8
	mov r12, len$t8
	writetxt r14, r12
	pop r12

	;imprime Parentesis 2
	mov rax, 1
	mov rdi, 1
	mov rsi, msgPAR2
	mov rdx, lenPAR2
	syscall

	;imprime en el archivo de texto
	push r12
	mov r14, msgPAR2
	mov r12, lenPAR2
	writetxt r14, r12
	pop r12

	ret; vuelve a  la operaci\F3n

_$$t9W:

	mov r14, [rs]	
	cmp r14, 25
	jne _$$k0W ;falta


	;imprime Parentesis 1
	mov rax, 1
	mov rdi, 1
	mov rsi, msgPAR1
	mov rdx, lenPAR1
	syscall

	;imprime en el archivo de texto
	push r12
	mov r14, msgPAR1
	mov r12, lenPAR1
	writetxt r14, r12
	pop r12
	

	;imprime $t9
	mov rax, 1
	mov rdi, 1
	mov rsi, msg$t9
	mov rdx, len$t9
	syscall

	;imprime en el archivo de texto
	push r12
	mov r14, msg$t9
	mov r12, len$t9
	writetxt r14, r12
	pop r12

	;imprime Parentesis 2
	mov rax, 1
	mov rdi, 1
	mov rsi, msgPAR2
	mov rdx, lenPAR2
	syscall

	;imprime en el archivo de texto
	push r12
	mov r14, msgPAR2
	mov r12, lenPAR2
	writetxt r14, r12
	pop r12

	ret; vuelve a la operaci\F3n

_$$k0W:

	mov r14, [rs]	
	cmp r14, 26
	jne _$$k1W ;falta

	
	;imprime Parentesis 1
	mov rax, 1
	mov rdi, 1
	mov rsi, msgPAR1
	mov rdx, lenPAR1
	syscall

	;imprime en el archivo de texto
	push r12
	mov r14, msgPAR1
	mov r12, lenPAR1
	writetxt r14, r12
	pop r12

	;imprime $k0
	mov rax, 1
	mov rdi, 1
	mov rsi, msg$k0
	mov rdx, len$k0
	syscall

	;imprime en el archivo de texto
	push r12
	mov r14, msg$k0
	mov r12, len$k0
	writetxt r14, r12
	pop r12

	;imprime Parentesis 2
	mov rax, 1
	mov rdi, 1
	mov rsi, msgPAR2
	mov rdx, lenPAR2
	syscall

	;imprime en el archivo de texto
	push r12
	mov r14, msgPAR2
	mov r12, lenPAR2
	writetxt r14, r12
	pop r12

	ret; vuelve a la operaci\F3n

_$$k1W:
	
	mov r14, [rs]	
	cmp r14, 27
	jne _$$gpW ;falta


	;imprime Parentesis 1
	mov rax, 1
	mov rdi, 1
	mov rsi, msgPAR1
	mov rdx, lenPAR1
	syscall

	;imprime en el archivo de texto
	push r12
	mov r14, msgPAR1
	mov r12, lenPAR1
	writetxt r14, r12
	pop r12

	;imprime $k1
	mov rax, 1
	mov rdi, 1
	mov rsi, msg$k1
	mov rdx, len$k1
	syscall

	;imprime en el archivo de texto
	push r12
	mov r14, msg$k1
	mov r12, len$k1
	writetxt r14, r12
	pop r12

	;imprime Parentesis 2
	mov rax, 1
	mov rdi, 1
	mov rsi, msgPAR2
	mov rdx, lenPAR2
	syscall

	;imprime en el archivo de texto
	push r12
	mov r14, msgPAR2
	mov r12, lenPAR2
	writetxt r14, r12
	pop r12

	ret; vuelve a la operaci\F3n

_$$gpW:

	
	mov r14, [rs]	
	cmp r14, 28
	jne _$$spW ;falta


	;imprime Parentesis 1
	mov rax, 1
	mov rdi, 1
	mov rsi, msgPAR1
	mov rdx, lenPAR1
	syscall

	;imprime en el archivo de texto
	push r12
	mov r14, msgPAR1
	mov r12, lenPAR1
	writetxt r14, r12
	pop r12

	;imprime $gp
	mov rax, 1
	mov rdi, 1
	mov rsi, msg$gp
	mov rdx, len$gp
	syscall

	;imprime en el archivo de texto
	push r12
	mov r14, msg$gp
	mov r12, len$gp
	writetxt r14, r12
	pop r12

	;imprime Parentesis 2
	mov rax, 1
	mov rdi, 1
	mov rsi, msgPAR2
	mov rdx, lenPAR2
	syscall

	;imprime en el archivo de texto
	push r12
	mov r14, msgPAR2
	mov r12, lenPAR2
	writetxt r14, r12
	pop r12

	ret

_$$spW:
	
	mov r14, [rs]	
	cmp r14, 29
	jne _$$fpW ;falta

	;imprime Parentesis 1
	mov rax, 1
	mov rdi, 1
	mov rsi, msgPAR1
	mov rdx, lenPAR1
	syscall

	;imprime en el archivo de texto
	push r12
	mov r14, msgPAR1
	mov r12, lenPAR1
	writetxt r14, r12
	pop r12

	;imprime $sp
	mov rax, 1
	mov rdi, 1
	mov rsi, msg$sp
	mov rdx, len$sp
	syscall

	;imprime en el archivo de texto
	push r12
	mov r14, msg$sp
	mov r12, len$sp
	writetxt r14, r12
	pop r12

	;imprime Parentesis 2
	mov rax, 1
	mov rdi, 1
	mov rsi, msgPAR2
	mov rdx, lenPAR2
	syscall

	;imprime en el archivo de texto
	push r12
	mov r14, msgPAR2
	mov r12, lenPAR2
	writetxt r14, r12
	pop r12

	ret; vuelve a la operaci\F3n

_$$fpW:
	
	mov r14, [rs]	
	cmp r14, 30
	jne _$$raW ;falta


	;imprime Parentesis 1
	mov rax, 1
	mov rdi, 1
	mov rsi, msgPAR1
	mov rdx, lenPAR1
	syscall

	;imprime en el archivo de texto
	push r12
	mov r14, msgPAR1
	mov r12, lenPAR1
	writetxt r14, r12
	pop r12

	;imprime $fp
	mov rax, 1
	mov rdi, 1
	mov rsi, msg$fp
	mov rdx, len$fp
	syscall

	;imprime en el archivo de texto
	push r12
	mov r14, msg$fp
	mov r12, len$fp
	writetxt r14, r12
	pop r12

	;imprime Parentesis 2
	mov rax, 1
	mov rdi, 1
	mov rsi, msgPAR2
	mov rdx, lenPAR2
	syscall

	;imprime en el archivo de texto
	push r12
	mov r14, msgPAR2
	mov r12, lenPAR2
	writetxt r14, r12
	pop r12

	ret; vuelve a la operaci\F3n

_$$raW:
	
	;imprime Parentesis 1
	mov rax, 1
	mov rdi, 1
	mov rsi, msgPAR1
	mov rdx, lenPAR1
	syscall

	;imprime en el archivo de texto
	push r12
	mov r14, msgPAR1
	mov r12, lenPAR1
	writetxt r14, r12
	pop r12

	;imprime $ra
	mov rax, 1
	mov rdi, 1
	mov rsi, msg$ra
	mov rdx, len$ra
	syscall

	;imprime en el archivo de texto
	push r12
	mov r14, msg$ra
	mov r12, len$ra
	writetxt r14, r12
	pop r12

	;imprime Parentesis 2
	mov rax, 1
	mov rdi, 1
	mov rsi, msgPAR2
	mov rdx, lenPAR2
	syscall

	;imprime en el archivo de texto
	push r12
	mov r14, msgPAR2
	mov r12, lenPAR2
	writetxt r14, r12
	pop r12

	ret

;////////////////////////////////////////////////////////////

;///////////////////////////////////////////IMPRESION EN PANTALLA DE RD para las instrucciones SLL Y SRL
_printrdS:
	mov r14, [rd]
	cmp r14, 0
	jne _$atB

	;imprime $zero
	mov rax, 1
	mov rdi, 1
	mov rsi, msg$zero
	mov rdx, len$zero
	syscall

	;imprime en el archivo de texto
	push r12
	mov r14, msg$zero
	mov r12, len$zero
	writetxt r14, r12
	pop r12

	;siguiente registro
	jmp _printrtS ;

_$atB:
	
	mov r14, [rd]	
	cmp r14, 1
	jne _$v0B 

	;imprime $at
	mov rax, 1
	mov rdi, 1
	mov rsi, msg$at
	mov rdx, len$at
	syscall

	;imprime en el archivo de texto
	push r12
	mov r14, msg$at
	mov r12, len$at
	writetxt r14, r12
	pop r12

	;siguiente registro
	jmp _printrtS ;

_$v0B:
	
	mov r14, [rd]	
	cmp r14, 2
	jne _$v1B ;falta
	
	;imprime $v0
	mov rax, 1
	mov rdi, 1
	mov rsi, msg$v0
	mov rdx, len$v0
	syscall

	;imprime en el archivo de texto
	push r12
	mov r14, msg$v0
	mov r12, len$v0
	writetxt r14, r12
	pop r12

	;siguiente registro
	jmp _printrtS ;

_$v1B:
	
	mov r14, [rd]	
	cmp r14, 3
	jne _$a0B ;falta

	;imprime $v1
	mov rax, 1
	mov rdi, 1
	mov rsi, msg$v1
	mov rdx, len$v1
	syscall

	;imprime en el archivo de texto
	push r12
	mov r14, msg$v1
	mov r12, len$v1
	writetxt r14, r12
	pop r12

	;siguiente registro
	jmp _printrtS ;

_$a0B:
	
	mov r14, [rd]	
	cmp r14, 4
	jne _$a1B ;falta

	;imprime $a0
	mov rax, 1
	mov rdi, 1
	mov rsi, msg$a0
	mov rdx, len$a0
	syscall

	;imprime en el archivo de texto
	push r12
	mov r14, msg$a0
	mov r12, len$a0
	writetxt r14, r12
	pop r12

	;siguiente registro
	jmp _printrtS ;

_$a1B:
	
	mov r14, [rd]	
	cmp r14, 5
	jne _$a2B ;falta

	;imprime $a1
	mov rax, 1
	mov rdi, 1
	mov rsi, msg$a1
	mov rdx, len$a1
	syscall

	;imprime en el archivo de texto
	push r12
	mov r14, msg$a1
	mov r12, len$a1
	writetxt r14, r12
	pop r12

	;siguiente registro
	jmp _printrtS ;


_$a2B:
	
	mov r14, [rd]	
	cmp r14, 6
	jne _$a3B ;falta

	;imprime $a2
	mov rax, 1
	mov rdi, 1
	mov rsi, msg$a2
	mov rdx, len$a2
	syscall

	;imprime en el archivo de texto
	push r12
	mov r14, msg$a2
	mov r12, len$a2
	writetxt r14, r12
	pop r12

	;siguiente registro
	jmp _printrtS;


_$a3B:
	
	mov r14, [rd]	
	cmp r14, 7
	jne _$t0B ;falta

	;imprime $a3
	mov rax, 1
	mov rdi, 1
	mov rsi, msg$a3
	mov rdx, len$a3
	syscall

	;imprime en el archivo de texto
	push r12
	mov r14, msg$a3
	mov r12, len$a3
	writetxt r14, r12
	pop r12

	;siguiente registro
	jmp _printrtS ;

_$t0B:
	
	mov r14, [rd]	
	cmp r14, 8
	jne _$t1B ;falta

	;imprime $t0
	mov rax, 1
	mov rdi, 1
	mov rsi, msg$t0
	mov rdx, len$t0
	syscall

	;imprime en el archivo de texto
	push r12
	mov r14, msg$t0
	mov r12, len$t0
	writetxt r14, r12
	pop r12

	;siguiente registro
	jmp _printrtS ;

_$t1B:
	
	mov r14, [rd]	
	cmp r14, 9
	jne _$t2B ;falta

	;imprime $t1
	mov rax, 1
	mov rdi, 1
	mov rsi, msg$t1
	mov rdx, len$t1
	syscall

	;imprime en el archivo de texto
	push r12
	mov r14, msg$t1
	mov r12, len$t1
	writetxt r14, r12
	pop r12

	;siguiente registro
	jmp _printrtS ;

_$t2B:
	
	mov r14, [rd]	
	cmp r14, 10
	jne _$t3B ;falta

	;imprime $t2
	mov rax, 1
	mov rdi, 1
	mov rsi, msg$t2
	mov rdx, len$t2
	syscall

	;imprime en el archivo de texto
	push r12
	mov r14, msg$t2
	mov r12, len$t2
	writetxt r14, r12
	pop r12

	;siguiente registro
	jmp _printrtS ;

_$t3B:
	
	mov r14, [rd]	
	cmp r14, 11
	jne _$t4B ;falta

	;imprime $t3
	mov rax, 1
	mov rdi, 1
	mov rsi, msg$t3
	mov rdx, len$t3
	syscall

	;imprime en el archivo de texto
	push r12
	mov r14, msg$t3
	mov r12, len$t3
	writetxt r14, r12
	pop r12

	;siguiente registro
	jmp _printrtS ;

_$t4B:
	
	mov r14, [rd]	
	cmp r14, 12
	jne _$t5B ;falta

	;imprime $t4
	mov rax, 1
	mov rdi, 1
	mov rsi, msg$t4
	mov rdx, len$t4
	syscall

	;imprime en el archivo de texto
	push r12
	mov r14, msg$t4
	mov r12, len$t4
	writetxt r14, r12
	pop r12

	;siguiente registro
	jmp _printrtS ;

_$t5B:
	
	mov r14, [rd]	
	cmp r14, 13
	jne _$t6B ;falta

	;imprime $t5
	mov rax, 1
	mov rdi, 1
	mov rsi, msg$t5
	mov rdx, len$t5
	syscall

	;imprime en el archivo de texto
	push r12
	mov r14, msg$t5
	mov r12, len$t5
	writetxt r14, r12
	pop r12

	;siguiente registro
	jmp _printrtS ;

_$t6B:
	
	mov r14, [rd]	
	cmp r14, 14
	jne _$t7B ;falta

	;imprime $t6
	mov rax, 1
	mov rdi, 1
	mov rsi, msg$t6
	mov rdx, len$t6
	syscall

	;imprime en el archivo de texto
	push r12
	mov r14, msg$t6
	mov r12, len$t6
	writetxt r14, r12
	pop r12

	;siguiente registro
	jmp _printrtS ;

_$t7B:
	
	mov r14, [rd]	
	cmp r14, 15
	jne _$s0B ;falta

	;imprime $t7
	mov rax, 1
	mov rdi, 1
	mov rsi, msg$t7
	mov rdx, len$t7
	syscall

	;imprime en el archivo de texto
	push r12
	mov r14, msg$t7
	mov r12, len$t7
	writetxt r14, r12
	pop r12

	;siguiente registro
	jmp _printrtS;

_$s0B:
	
	mov r14, [rd]	
	cmp r14, 16
	jne _$s1B ;falta

	;imprime $s0
	mov rax, 1
	mov rdi, 1
	mov rsi, msg$s0
	mov rdx, len$s0
	syscall

	;imprime en el archivo de texto
	push r12
	mov r14, msg$s0
	mov r12, len$s0
	writetxt r14, r12
	pop r12

	;siguiente registro
	jmp _printrtS ;

_$s1B:
	
	mov r14, [rd]	
	cmp r14, 17
	jne _$s2B ;falta

	;imprime $s1
	mov rax, 1
	mov rdi, 1
	mov rsi, msg$s1
	mov rdx, len$s1
	syscall

	;imprime en el archivo de texto
	push r12
	mov r14, msg$s1
	mov r12, len$s1
	writetxt r14, r12
	pop r12

	;siguiente registro
	jmp _printrtS;

_$s2B:
	
	mov r14, [rd]	
	cmp r14, 18
	jne _$s3B ;falta

	;imprime $s2
	mov rax, 1
	mov rdi, 1
	mov rsi, msg$s2
	mov rdx, len$s2
	syscall

	;imprime en el archivo de texto
	push r12
	mov r14, msg$s2
	mov r12, len$s2
	writetxt r14, r12
	pop r12

	;siguiente registro
	jmp _printrtS ;

_$s3B:
	
	mov r14, [rd]	
	cmp r14, 19
	jne _$s4B ;falta

	;imprime $s3
	mov rax, 1
	mov rdi, 1
	mov rsi, msg$s3
	mov rdx, len$s3
	syscall

	;imprime en el archivo de texto
	push r12
	mov r14, msg$s3
	mov r12, len$s3
	writetxt r14, r12
	pop r12

	;siguiente registro
	jmp _printrtS ;

_$s4B:
	
	mov r14, [rd]	
	cmp r14, 20
	jne _$s5B ;falta

	;imprime $s4
	mov rax, 1
	mov rdi, 1
	mov rsi, msg$s4
	mov rdx, len$s4
	syscall

	;imprime en el archivo de texto
	push r12
	mov r14, msg$s4
	mov r12, len$s4
	writetxt r14, r12
	pop r12

	;siguiente registro
	jmp _printrtS ;

_$s5B:
	
	mov r14, [rd]	
	cmp r14, 21
	jne _$s6B ;falta

	;imprime $s5
	mov rax, 1
	mov rdi, 1
	mov rsi, msg$s5
	mov rdx, len$s5
	syscall

	;imprime en el archivo de texto
	push r12
	mov r14, msg$s5
	mov r12, len$s5
	writetxt r14, r12
	pop r12

	;siguiente registro
	jmp _printrtS;

_$s6B:
	
	mov r14, [rd]	
	cmp r14, 22
	jne _$s7B ;falta

	;imprime $s6
	mov rax, 1
	mov rdi, 1
	mov rsi, msg$s6
	mov rdx, len$s6
	syscall

	;imprime en el archivo de texto
	push r12
	mov r14, msg$s6
	mov r12, len$s6
	writetxt r14, r12
	pop r12

	;siguiente registro
	jmp _printrtS ;

_$s7B:
	
	mov r14, [rd]	
	cmp r14, 23
	jne _$t8B ;falta

	;imprime $s7
	mov rax, 1
	mov rdi, 1
	mov rsi, msg$s7
	mov rdx, len$s7
	syscall

	;imprime en el archivo de texto
	push r12
	mov r14, msg$s7
	mov r12, len$s7
	writetxt r14, r12
	pop r12

	;siguiente registro
	jmp _printrtS ;

_$t8B:
	
	mov r14, [rd]	
	cmp r14, 24
	jne _$t9B ;falta

	;imprime $t8
	mov rax, 1
	mov rdi, 1
	mov rsi, msg$t8
	mov rdx, len$t8
	syscall

	;imprime en el archivo de texto
	push r12
	mov r14, msg$t8
	mov r12, len$t8
	writetxt r14, r12
	pop r12

	;siguiente registro
	jmp _printrtS ;

_$t9B:
	
	mov r14, [rd]	
	cmp r14, 25
	jne _$k0B ;falta

	;imprime $t9
	mov rax, 1
	mov rdi, 1
	mov rsi, msg$t9
	mov rdx, len$t9
	syscall

	;imprime en el archivo de texto
	push r12
	mov r14, msg$t9
	mov r12, len$t9
	writetxt r14, r12
	pop r12

	;siguiente registro
	jmp _printrtS ;

_$k0B:
	
	mov r14, [rd]	
	cmp r14, 26
	jne _$k1B ;falta

	;imprime $k0
	mov rax, 1
	mov rdi, 1
	mov rsi, msg$k0
	mov rdx, len$k0
	syscall

	;imprime en el archivo de texto
	push r12
	mov r14, msg$k0
	mov r12, len$k0
	writetxt r14, r12
	pop r12

	;siguiente registro
	jmp _printrtS ;

_$k1B:
	
	mov r14, [rd]	
	cmp r14, 27
	jne _$gpB ;falta

	;imprime $k1
	mov rax, 1
	mov rdi, 1
	mov rsi, msg$k1
	mov rdx, len$k1
	syscall

	;imprime en el archivo de texto
	push r12
	mov r14, msg$k1
	mov r12, len$k1
	writetxt r14, r12
	pop r12

	;siguiente registro
	jmp _printrtS ;

_$gpB:
	
	mov r14, [rd]	
	cmp r14, 28
	jne _$spB ;falta

	;imprime $gp
	mov rax, 1
	mov rdi, 1
	mov rsi, msg$gp
	mov rdx, len$gp
	syscall

	;imprime en el archivo de texto
	push r12
	mov r14, msg$gp
	mov r12, len$gp
	writetxt r14, r12
	pop r12

	;siguiente registro
	jmp _printrtS ;

_$spB:
	
	mov r14, [rd]	
	cmp r14, 29
	jne _$fpB ;falta

	;imprime $sp
	mov rax, 1
	mov rdi, 1
	mov rsi, msg$sp
	mov rdx, len$sp
	syscall

	;imprime en el archivo de texto
	push r12
	mov r14, msg$sp
	mov r12, len$sp
	writetxt r14, r12
	pop r12

	;siguiente registro
	jmp _printrtS ;

_$fpB:
	
	mov r14, [rd]	
	cmp r14, 30
	jne _$raB ;falta

	;imprime $fp
	mov rax, 1
	mov rdi, 1
	mov rsi, msg$fp
	mov rdx, len$fp
	syscall

	;imprime en el archivo de texto
	push r12
	mov r14, msg$fp
	mov r12, len$fp
	writetxt r14, r12
	pop r12

	;siguiente registro
	jmp _printrtS ;

_$raB:
	

	;imprime $ra
	mov rax, 1
	mov rdi, 1
	mov rsi, msg$ra
	mov rdx, len$ra
	syscall

	;imprime en el archivo de texto
	push r12
	mov r14, msg$ra
	mov r12, len$ra
	writetxt r14, r12
	pop r12

	;siguiente registro
	jmp _printrtS ;


;//////////////////////////////////////////////////////////////IMPRESION EN PANTALLA DE RT para las instrucciones SLL Y SRL

_printrtS:	
	mov r14, [rt]
	cmp r14, 0
	jne _$$$atB

	;imprime $zero
	mov rax, 1
	mov rdi, 1
	mov rsi, msg$zero
	mov rdx, len$zero
	syscall

	;imprime en el archivo de texto
	push r12
	mov r14, msg$zero
	mov r12, len$zero
	writetxt r14, r12
	pop r12
					
	ret	;vuelve a la operacion

_$$$atB:
	
	mov r14, [rt]
	cmp r14, 1
	jne _$$$v0B

	;imprime $zero
	mov rax, 1
	mov rdi, 1
	mov rsi, msg$at
	mov rdx, len$at
	syscall

	;imprime en el archivo de texto
	push r12
	mov r14, msg$at
	mov r12, len$at
	writetxt r14, r12
	pop r12
					
	ret	;vuelve a la operacion
_$$$v0B:
	
	mov r14, [rt]	
	cmp r14, 2
	jne _$$$v1B ;falta
	
	;imprime $v0
	mov rax, 1
	mov rdi, 1
	mov rsi, msg$v0
	mov rdx, len$v0
	syscall

	;imprime en el archivo de texto
	push r12
	mov r14, msg$v0
	mov r12, len$v0
	writetxt r14, r12
	pop r12

	ret	;vuelve a la operacion

_$$$v1B:
	
	mov r14, [rt]	
	cmp r14, 3
	jne _$$$a0B ;falta

	;imprime $v1
	mov rax, 1
	mov rdi, 1
	mov rsi, msg$v1
	mov rdx, len$v1
	syscall

	;imprime en el archivo de texto
	push r12
	mov r14, msg$v1
	mov r12, len$v1
	writetxt r14, r12
	pop r12

	ret	;vuelve a la operacion

_$$$a0B:
	
	mov r14, [rt]	
	cmp r14, 4
	jne _$$$a1B ;falta

	;imprime $a0
	mov rax, 1
	mov rdi, 1
	mov rsi, msg$a0
	mov rdx, len$a0
	syscall

	;imprime en el archivo de texto
	push r12
	mov r14, msg$a0
	mov r12, len$a0
	writetxt r14, r12
	pop r12

	ret	;vuelve a la operacion

_$$$a1B:
	
	mov r14, [rt]	
	cmp r14, 5
	jne _$$$a2B ;falta

	;imprime $a1
	mov rax, 1
	mov rdi, 1
	mov rsi, msg$a1
	mov rdx, len$a1
	syscall

	;imprime en el archivo de texto
	push r12
	mov r14, msg$a1
	mov r12, len$a1
	writetxt r14, r12
	pop r12

	ret	;vuelve a la operacion
_$$$a2B:
	
	mov r14, [rt]	
	cmp r14, 6
	jne _$$$a3B ;falta

	;imprime $a2
	mov rax, 1
	mov rdi, 1
	mov rsi, msg$a2
	mov rdx, len$a2
	syscall

	;imprime en el archivo de texto
	push r12
	mov r14, msg$a2
	mov r12, len$a2
	writetxt r14, r12
	pop r12

	ret	;vuelve a la operacion

_$$$a3B:
	
	mov r14, [rt]	
	cmp r14, 7
	jne _$$$t0B ;falta

	;imprime $a3
	mov rax, 1
	mov rdi, 1
	mov rsi, msg$a3
	mov rdx, len$a3
	syscall

	;imprime en el archivo de texto
	push r12
	mov r14, msg$a3
	mov r12, len$a3
	writetxt r14, r12
	pop r12

	ret	;vuelve a la operacion

_$$$t0B:
	
	mov r14, [rt]	
	cmp r14, 8
	jne _$$$t1B ;falta

	;imprime $t0
	mov rax, 1
	mov rdi, 1
	mov rsi, msg$t0
	mov rdx, len$t0
	syscall

	;imprime en el archivo de texto
	push r12
	mov r14, msg$t0
	mov r12, len$t0
	writetxt r14, r12
	pop r12

	ret	;vuelve a la operacion

_$$$t1B:
	
	mov r14, [rt]	
	cmp r14, 9
	jne _$$$t2B ;falta

	;imprime $t1
	mov rax, 1
	mov rdi, 1
	mov rsi, msg$t1
	mov rdx, len$t1
	syscall

	;imprime en el archivo de texto
	push r12
	mov r14, msg$t1
	mov r12, len$t1
	writetxt r14, r12
	pop r12

	ret	;vuelve a la operacion

_$$$t2B:
	
	mov r14, [rt]	
	cmp r14, 10
	jne _$$$t3B ;falta

	;imprime $t2
	mov rax, 1
	mov rdi, 1
	mov rsi, msg$t2
	mov rdx, len$t2
	syscall

	;imprime en el archivo de texto
	push r12
	mov r14, msg$t2
	mov r12, len$t2
	writetxt r14, r12
	pop r12

	ret	;vuelve a la operacion

_$$$t3B:
	
	mov r14, [rt]	
	cmp r14, 11
	jne _$$$t4B ;falta

	;imprime $t3
	mov rax, 1
	mov rdi, 1
	mov rsi, msg$t3
	mov rdx, len$t3
	syscall

	;imprime en el archivo de texto
	push r12
	mov r14, msg$t3
	mov r12, len$t3
	writetxt r14, r12
	pop r12

	ret	;vuelve a la operacion

_$$$t4B:
	
	mov r14, [rt]	
	cmp r14, 12
	jne _$$$t5B ;falta

	;imprime $t4
	mov rax, 1
	mov rdi, 1
	mov rsi, msg$t4
	mov rdx, len$t4
	syscall

	;imprime en el archivo de texto
	push r12
	mov r14, msg$t4
	mov r12, len$t4
	writetxt r14, r12
	pop r12

	ret	;vuelve a la operacion

_$$$t5B:
	
	mov r14, [rt]	
	cmp r14, 13
	jne _$$$t6B ;falta

	;imprime $t5
	mov rax, 1
	mov rdi, 1
	mov rsi, msg$t5
	mov rdx, len$t5
	syscall

	;imprime en el archivo de texto
	push r12
	mov r14, msg$t5
	mov r12, len$t5
	writetxt r14, r12
	pop r12

	ret	;vuelve a la operacion

_$$$t6B:
	
	mov r14, [rt]	
	cmp r14, 14
	jne _$$$t7B ;falta

	;imprime $t6
	mov rax, 1
	mov rdi, 1
	mov rsi, msg$t6
	mov rdx, len$t6
	syscall

	;imprime en el archivo de texto
	push r12
	mov r14, msg$t6
	mov r12, len$t6
	writetxt r14, r12
	pop r12

	ret	;vuelve a la operacion

_$$$t7B:
	
	mov r14, [rt]	
	cmp r14, 15
	jne _$$$s0B ;falta

	;imprime $t7
	mov rax, 1
	mov rdi, 1
	mov rsi, msg$t7
	mov rdx, len$t7
	syscall

	;imprime en el archivo de texto
	push r12
	mov r14, msg$t7
	mov r12, len$t7
	writetxt r14, r12
	pop r12

	ret	;vuelve a la operacion

_$$$s0B:
	
	mov r14, [rt]	
	cmp r14, 16
	jne _$$$s1B ;falta

	;imprime $s0
	mov rax, 1
	mov rdi, 1
	mov rsi, msg$s0
	mov rdx, len$s0
	syscall

	;imprime en el archivo de texto
	push r12
	mov r14, msg$s0
	mov r12, len$s0
	writetxt r14, r12
	pop r12

	ret	;vuelve a la operacion

_$$$s1B:
	
	mov r14, [rt]	
	cmp r14, 17
	jne _$$$s2B ;falta

	;imprime $s1
	mov rax, 1
	mov rdi, 1
	mov rsi, msg$s1
	mov rdx, len$s1
	syscall

	;imprime en el archivo de texto
	push r12
	mov r14, msg$s1
	mov r12, len$s1
	writetxt r14, r12
	pop r12

	ret	;vuelve a la operacion

_$$$s2B:
	
	mov r14, [rt]	
	cmp r14, 18
	jne _$$$s3B ;falta

	;imprime $s2
	mov rax, 1
	mov rdi, 1
	mov rsi, msg$s2
	mov rdx, len$s2
	syscall

	;imprime en el archivo de texto
	push r12
	mov r14, msg$s2
	mov r12, len$s2
	writetxt r14, r12
	pop r12

	ret	;vuelve a la operacion

_$$$s3B:
	
	mov r14, [rt]	
	cmp r14, 19
	jne _$$$s4B ;falta

	;imprime $s3
	mov rax, 1
	mov rdi, 1
	mov rsi, msg$s3
	mov rdx, len$s3
	syscall

	;imprime en el archivo de texto
	push r12
	mov r14, msg$s3
	mov r12, len$s3
	writetxt r14, r12
	pop r12

	ret	;vuelve a la operacion

_$$$s4B:
	
	mov r14, [rt]	
	cmp r14, 20
	jne _$$$s5B ;falta

	;imprime $s4
	mov rax, 1
	mov rdi, 1
	mov rsi, msg$s4
	mov rdx, len$s4
	syscall

	;imprime en el archivo de texto
	push r12
	mov r14, msg$s4
	mov r12, len$s4
	writetxt r14, r12
	pop r12

	ret	;vuelve a la operacion

_$$$s5B:
	
	mov r14, [rt]	
	cmp r14, 21
	jne _$$$s6B ;falta

	;imprime $s5
	mov rax, 1
	mov rdi, 1
	mov rsi, msg$s5
	mov rdx, len$s5
	syscall

	;imprime en el archivo de texto
	push r12
	mov r14, msg$s5
	mov r12, len$s5
	writetxt r14, r12
	pop r12

	ret	;vuelve a la operacion

_$$$s6B:
	
	mov r14, [rt]	
	cmp r14, 22
	jne _$$$s7B ;falta

	;imprime $s6
	mov rax, 1
	mov rdi, 1
	mov rsi, msg$s6
	mov rdx, len$s6
	syscall

	;imprime en el archivo de texto
	push r12
	mov r14, msg$s6
	mov r12, len$s6
	writetxt r14, r12
	pop r12

	ret	;vuelve a la operacion

_$$$s7B:
	
	mov r14, [rt]	
	cmp r14, 23
	jne _$$$t8B ;falta

	;imprime $s7
	mov rax, 1
	mov rdi, 1
	mov rsi, msg$s7
	mov rdx, len$s7
	syscall

	;imprime en el archivo de texto
	push r12
	mov r14, msg$s7
	mov r12, len$s7
	writetxt r14, r12
	pop r12

	ret	;vuelve a la operacion

_$$$t8B:
	
	mov r14, [rt]	
	cmp r14, 24
	jne _$$$t9B ;falta

	;imprime $t8
	mov rax, 1
	mov rdi, 1
	mov rsi, msg$t8
	mov rdx, len$t8
	syscall

	;imprime en el archivo de texto
	push r12
	mov r14, msg$t8
	mov r12, len$t8
	writetxt r14, r12
	pop r12

	ret	;vuelve a la operacion

_$$$t9B:
	
	mov r14, [rt]	
	cmp r14, 25
	jne _$$$k0B ;falta

	;imprime $t9
	mov rax, 1
	mov rdi, 1
	mov rsi, msg$t9
	mov rdx, len$t9
	syscall

	;imprime en el archivo de texto
	push r12
	mov r14, msg$t9
	mov r12, len$t9
	writetxt r14, r12
	pop r12

	ret	;vuelve a la operacion

_$$$k0B:
	
	mov r14, [rt]	
	cmp r14, 26
	jne _$$$k1B ;falta

	;imprime $k0
	mov rax, 1
	mov rdi, 1
	mov rsi, msg$k0
	mov rdx, len$k0
	syscall

	;imprime en el archivo de texto
	push r12
	mov r14, msg$k0
	mov r12, len$k0
	writetxt r14, r12
	pop r12

	ret	;vuelve a la operacion

_$$$k1B:
	
	mov r14, [rt]	
	cmp r14, 27
	jne _$$$gpB ;falta

	;imprime $k1
	mov rax, 1
	mov rdi, 1
	mov rsi, msg$k1
	mov rdx, len$k1
	syscall

	;imprime en el archivo de texto
	push r12
	mov r14, msg$k1
	mov r12, len$k1
	writetxt r14, r12
	pop r12


	ret	;vuelve a la operacion

_$$$gpB:
	
	mov r14, [rt]	
	cmp r14, 28
	jne _$$$spB ;falta

	;imprime $gp
	mov rax, 1
	mov rdi, 1
	mov rsi, msg$gp
	mov rdx, len$gp
	syscall

	;imprime en el archivo de texto
	push r12
	mov r14, msg$gp
	mov r12, len$gp
	writetxt r14, r12
	pop r12

	ret	;vuelve a la operacion

_$$$spB:
	
	mov r14, [rt]	
	cmp r14, 29
	jne _$$$fpB ;falta

	;imprime $sp
	mov rax, 1
	mov rdi, 1
	mov rsi, msg$sp
	mov rdx, len$sp
	syscall

	;imprime en el archivo de texto
	push r12
	mov r14, msg$sp
	mov r12, len$sp
	writetxt r14, r12
	pop r12

	ret	;vuelve a la operacion

_$$$fpB:
	
	mov r14, [rt]	
	cmp r14, 30
	jne _$$$raB ;falta

	;imprime $fp
	mov rax, 1
	mov rdi, 1
	mov rsi, msg$fp
	mov rdx, len$fp
	syscall

	;imprime en el archivo de texto
	push r12
	mov r14, msg$fp
	mov r12, len$fp
	writetxt r14, r12
	pop r12

	ret	;vuelve a la operacion

_$$$raB:

	;imprime $ra
	mov rax, 1
	mov rdi, 1
	mov rsi, msg$ra
	mov rdx, len$ra
	syscall

	;imprime en el archivo de texto
	push r12
	mov r14, msg$ra
	mov r12, len$ra
	writetxt r14, r12
	pop r12

	ret	;vuelve a la operacion

;/////////////////////////////////////

_valreg:
	
	mov rax, 1
	mov rdi, 1
	mov rsi, msgvalreg
	mov rdx, lenvalreg
	syscall

	;Se imprime en el archivo de texto
	push r12
	push r14
	mov r14, msgvalreg
	mov r12, lenvalreg
	writetxt r14, r12
	pop r14
	pop r12

	mov rax, 1
	mov rdi, 1
	mov rsi, msg$s0
	mov rdx, len$s0	
	syscall

	;Se imprime en el archivo de texto
	push r12
	push r14
	mov r14, msg$s0
	mov r12, len$s0
	writetxt r14, r12
	pop r14
	pop r12

	mov r14d, [br+128]
	mov r10d, r14d
	mov r10d, r14d
	shr r10d, 31
	cmp r10d, 1
	je _me1
	jmp _se1
_me1:

	not r14d
	add r14d, 1

	mov rax, 1
	mov rdi, 1
	mov rsi, msgmenos
	mov rdx, lenmenos
	syscall

	;Se imprime en el archivo de texto
	push r12
	push r14
	mov r14, msgmenos
	mov r12, lenmenos
	writetxt r14, r12
	pop r14
	pop r12
_se1:
	mov r11d, r14d
	mov rax, r11
	call _printRAX
	mov rax, 1
	mov rdi, 1
	mov rsi, msgspace
	mov rdx, lenspace	
	syscall	

	;Se imprime en el archivo de texto
	push r12
	push r14
	mov r14, msgspace
	mov r12, lenspace
	writetxt r14, r12
	pop r14
	pop r12

			  
	mov rax, 1
	mov rdi, 1
	mov rsi, msg$s1
	mov rdx, len$s1	
	syscall


	;Se imprime en el archivo de texto
	push r12
	push r14
	mov r14, msg$s1
	mov r12, len$s1
	writetxt r14, r12
	pop r14
	pop r12

	mov r14d, [br+136]
	mov r10d, r14d
	mov r10d, r14d
	shr r10d, 31
	cmp r10d, 1
	je _me2
	jmp _se2
_me2:

	not r14d
	add r14d, 1

	mov rax, 1
	mov rdi, 1
	mov rsi, msgmenos
	mov rdx, lenmenos
	syscall

	;Se imprime en el archivo de texto
	push r12
	push r14
	mov r14, msgmenos
	mov r12, lenmenos
	writetxt r14, r12
	pop r14
	pop r12
_se2:
	mov r11d, r14d
	mov rax, r11
	call _printRAX
	mov rax, 1
	mov rdi, 1
	mov rsi, msgspace
	mov rdx, lenspace	
	syscall	

	;Se imprime en el archivo de texto
	push r12
	push r14
	mov r14, msgspace
	mov r12, lenspace
	writetxt r14, r12
	pop r14
	pop r12



	mov rax, 1
	mov rdi, 1
	mov rsi, msg$s2
	mov rdx, len$s2	
	syscall

	;Se imprime en el archivo de texto
	push r12
	push r14
	mov r14, msg$s2
	mov r12, len$s2
	writetxt r14, r12
	pop r14
	pop r12

	mov r14d, [br+144]
	mov r10d, r14d
	mov r10d, r14d
	shr r10d, 31
	cmp r10d, 1
	je _me3
	jmp _se3
_me3:

	not r14d
	add r14d, 1

	mov rax, 1
	mov rdi, 1
	mov rsi, msgmenos
	mov rdx, lenmenos
	syscall

	;Se imprime en el archivo de texto
	push r12
	push r14
	mov r14, msgmenos
	mov r12, lenmenos
	writetxt r14, r12
	pop r14
	pop r12
_se3:
	mov r11d, r14d
	mov rax, r11
	call _printRAX
	mov rax, 1
	mov rdi, 1
	mov rsi, msgspace
	mov rdx, lenspace	
	syscall	

	;Se imprime en el archivo de texto
	push r12
	push r14
	mov r14, msgspace
	mov r12, lenspace
	writetxt r14, r12
	pop r14
	pop r12
	
	mov rax, 1
	mov rdi, 1
	mov rsi, msg$s3
	mov rdx, len$s3	
	syscall


	;Se imprime en el archivo de texto
	push r12
	push r14
	mov r14, msg$s3
	mov r12, len$s3
	writetxt r14, r12
	pop r14
	pop r12

	mov r14d, [br+152]
	mov r10d, r14d
	mov r10d, r14d
	shr r10d, 31
	cmp r10d, 1
	je _me4
	jmp _se4
_me4:

	not r14d
	add r14d, 1

	mov rax, 1
	mov rdi, 1
	mov rsi, msgmenos
	mov rdx, lenmenos
	syscall

	;Se imprime en el archivo de texto
	push r12
	push r14
	mov r14, msgmenos
	mov r12, lenmenos
	writetxt r14, r12
	pop r14
	pop r12
_se4:
	mov r11d, r14d
	mov rax, r11
	call _printRAX
	mov rax, 1
	mov rdi, 1
	mov rsi, msgspace
	mov rdx, lenspace	
	syscall	

	;Se imprime en el archivo de texto
	push r12
	push r14
	mov r14, msgspace
	mov r12, lenspace
	writetxt r14, r12
	pop r14
	pop r12

	mov rax, 1
	mov rdi, 1
	mov rsi, msg$s4
	mov rdx, len$s4	
	syscall


	;Se imprime en el archivo de texto
	push r12
	push r14
	mov r14, msg$s4
	mov r12, len$s4
	writetxt r14, r12
	pop r14
	pop r12

	mov r14d, [br+160]
	mov r10d, r14d
	mov r10d, r14d
	shr r10d, 31
	cmp r10d, 1
	je _me5
	jmp _se5
_me5:

	not r14d
	add r14d, 1

	mov rax, 1
	mov rdi, 1
	mov rsi, msgmenos
	mov rdx, lenmenos
	syscall

	;Se imprime en el archivo de texto
	push r12
	push r14
	mov r14, msgmenos
	mov r12, lenmenos
	writetxt r14, r12
	pop r14
	pop r12
_se5:
	mov r11d, r14d
	mov rax, r11
	call _printRAX
	mov rax, 1
	mov rdi, 1
	mov rsi, msgspace
	mov rdx, lenspace	
	syscall	

	;Se imprime en el archivo de texto
	push r12
	push r14
	mov r14, msgspace
	mov r12, lenspace
	writetxt r14, r12
	pop r14
	pop r12
	
	mov rax, 1
	mov rdi, 1
	mov rsi, msg$s5
	mov rdx, len$s5	
	syscall

	;Se imprime en el archivo de texto
	push r12
	push r14
	mov r14, msg$s5
	mov r12, len$s5
	writetxt r14, r12
	pop r14
	pop r12

	mov r14d, [br+168]
	mov r10d, r14d
	mov rax, r10
	mov r10d, r14d
	shr r10d, 31
	cmp r10d, 1
	je _me6
	jmp _se6
_me6:

	not r14d
	add r14d, 1

	mov rax, 1
	mov rdi, 1
	mov rsi, msgmenos
	mov rdx, lenmenos
	syscall

	;Se imprime en el archivo de texto
	push r12
	push r14
	mov r14, msgmenos
	mov r12, lenmenos
	writetxt r14, r12
	pop r14
	pop r12
_se6:
	mov r11d, r14d
	mov rax, r11
	call _printRAX
	mov rax, 1
	mov rdi, 1
	mov rsi, msgspace
	mov rdx, lenspace	
	syscall	

	;Se imprime en el archivo de texto
	push r12
	push r14
	mov r14, msgspace
	mov r12, lenspace
	writetxt r14, r12
	pop r14
	pop r12

	mov rax, 1
	mov rdi, 1
	mov rsi, msg$s6
	mov rdx, len$s6	
	syscall


	;Se imprime en el archivo de texto
	push r12
	push r14
	mov r14, msg$s6
	mov r12, len$s6
	writetxt r14, r12
	pop r14
	pop r12

	mov r14d, [br+176]
	mov r10d, r14d
	mov r10d, r14d
	shr r10d, 31
	cmp r10d, 1
	je _me7
	jmp _se7
_me7:

	not r14d
	add r14d, 1

	mov rax, 1
	mov rdi, 1
	mov rsi, msgmenos
	mov rdx, lenmenos
	syscall

	;Se imprime en el archivo de texto
	push r12
	push r14
	mov r14, msgmenos
	mov r12, lenmenos
	writetxt r14, r12
	pop r14
	pop r12
_se7:
	mov r11d, r14d
	mov rax, r11
	call _printRAX
	mov rax, 1
	mov rdi, 1
	mov rsi, msgspace
	mov rdx, lenspace	
	syscall	

	;Se imprime en el archivo de texto
	push r12
	push r14
	mov r14, msgspace
	mov r12, lenspace
	writetxt r14, r12
	pop r14
	pop r12

	mov rax, 1
	mov rdi, 1
	mov rsi, msg$s7
	mov rdx, len$s7	
	syscall

	;Se imprime en el archivo de texto
	push r12
	push r14
	mov r14, msg$s7
	mov r12, len$s7
	writetxt r14, r12
	pop r14
	pop r12

	mov r14d, [br+184]
	mov r10d, r14d
	mov r10d, r14d
	shr r10d, 31
	cmp r10d, 1
	je _me8
	jmp _se8
_me8:

	not r14d
	add r14d, 1

	mov rax, 1
	mov rdi, 1
	mov rsi, msgmenos
	mov rdx, lenmenos
	syscall

	;Se imprime en el archivo de texto
	push r12
	push r14
	mov r14, msgmenos
	mov r12, lenmenos
	writetxt r14, r12
	pop r14
	pop r12
_se8:
	mov r11d, r14d
	mov rax, r11
	call _printRAX
	mov rax, 1
	mov rdi, 1
	mov rsi, msgspace
	mov rdx, lenspace	
	syscall	

	;Se imprime en el archivo de texto
	push r12
	push r14
	mov r14, msgspace
	mov r12, lenspace
	writetxt r14, r12
	pop r14
	pop r12
	
	mov rax, 1
	mov rdi, 1
	mov rsi, msg$v0
	mov rdx, len$v0	
	syscall


	;Se imprime en el archivo de texto
	push r12
	push r14
	mov r14, msg$v0
	mov r12, len$v0
	writetxt r14, r12
	pop r14
	pop r12

	mov r14d, [br+16]
	mov r10d, r14d
	mov r10d, r14d
	shr r10d, 31
	cmp r10d, 1
	je _me9
	jmp _se9
_me9:

	not r14d
	add r14d, 1

	mov rax, 1
	mov rdi, 1
	mov rsi, msgmenos
	mov rdx, lenmenos
	syscall

	;Se imprime en el archivo de texto
	push r12
	push r14
	mov r14, msgmenos
	mov r12, lenmenos
	writetxt r14, r12
	pop r14
	pop r12
_se9:
	mov r11d, r14d
	mov rax, r11
	call _printRAX
	mov rax, 1
	mov rdi, 1
	mov rsi, msgspace
	mov rdx, lenspace	
	syscall	

	;Se imprime en el archivo de texto
	push r12
	push r14
	mov r14, msgspace
	mov r12, lenspace
	writetxt r14, r12
	pop r14
	pop r12
	
	mov rax, 1
	mov rdi, 1
	mov rsi, msg$v1
	mov rdx, len$v1	
	syscall

	;Se imprime en el archivo de texto
	push r12
	push r14
	mov r14, msg$v1
	mov r12, len$v1
	writetxt r14, r12
	pop r14
	pop r12

	mov r14d, [br+24]
	mov r10d, r14d
	mov r10d, r14d
	shr r10d, 31
	cmp r10d, 1
	je _me10
	jmp _se10
_me10:

	not r14d
	add r14d, 1

	mov rax, 1
	mov rdi, 1
	mov rsi, msgmenos
	mov rdx, lenmenos
	syscall

	;Se imprime en el archivo de texto
	push r12
	push r14
	mov r14, msgmenos
	mov r12, lenmenos
	writetxt r14, r12
	pop r14
	pop r12
_se10:
	mov r11d, r14d
	mov rax, r11
	call _printRAX
	mov rax, 1
	mov rdi, 1
	mov rsi, msgspace
	mov rdx, lenspace	
	syscall	

	;Se imprime en el archivo de texto
	push r12
	push r14
	mov r14, msgspace
	mov r12, lenspace
	writetxt r14, r12
	pop r14
	pop r12
	
	mov rax, 1
	mov rdi, 1
	mov rsi, msg$a0
	mov rdx, len$a0	
	syscall

	;Se imprime en el archivo de texto
	push r12
	push r14
	mov r14, msg$a0
	mov r12, len$a0
	writetxt r14, r12
	pop r14
	pop r12

	mov r14d, [br+32]
	mov r10d, r14d
	mov r10d, r14d
	shr r10d, 31
	cmp r10d, 1
	je _me11
	jmp _se11
_me11:

	not r14d
	add r14d, 1

	mov rax, 1
	mov rdi, 1
	mov rsi, msgmenos
	mov rdx, lenmenos
	syscall

	;Se imprime en el archivo de texto
	push r12
	push r14
	mov r14, msgmenos
	mov r12, lenmenos
	writetxt r14, r12
	pop r14
	pop r12
_se11:
	mov r11d, r14d
	mov rax, r11
	call _printRAX
	mov rax, 1
	mov rdi, 1
	mov rsi, msgspace
	mov rdx, lenspace	
	syscall	

	;Se imprime en el archivo de texto
	push r12
	push r14
	mov r14, msgspace
	mov r12, lenspace
	writetxt r14, r12
	pop r14
	pop r12
	
	mov rax, 1
	mov rdi, 1
	mov rsi, msg$a1
	mov rdx, len$a1	
	syscall

	;Se imprime en el archivo de texto
	push r12
	push r14
	mov r14, msg$a1
	mov r12, len$a1
	writetxt r14, r12
	pop r14
	pop r12

	mov r14d, [br+40]
	mov r10d, r14d
	mov r10d, r14d
	shr r10d, 31
	cmp r10d, 1
	je _me12
	jmp _se12
_me12:

	not r14d
	add r14d, 1

	mov rax, 1
	mov rdi, 1
	mov rsi, msgmenos
	mov rdx, lenmenos
	syscall

	;Se imprime en el archivo de texto
	push r12
	push r14
	mov r14, msgmenos
	mov r12, lenmenos
	writetxt r14, r12
	pop r14
	pop r12
_se12:
	mov r11d, r14d
	mov rax, r11
	call _printRAX
	mov rax, 1
	mov rdi, 1
	mov rsi, msgspace
	mov rdx, lenspace	
	syscall	

	;Se imprime en el archivo de texto
	push r12
	push r14
	mov r14, msgspace
	mov r12, lenspace
	writetxt r14, r12
	pop r14
	pop r12
	
	mov rax, 1
	mov rdi, 1
	mov rsi, msg$a2
	mov rdx, len$a2	
	syscall

	;Se imprime en el archivo de texto
	push r12
	push r14
	mov r14, msg$a2
	mov r12, len$a2
	writetxt r14, r12
	pop r14
	pop r12

	mov r14d, [br+48]
	mov r10d, r14d
mov r10d, r14d
	shr r10d, 31
	cmp r10d, 1
	je _me13
	jmp _se13
_me13:

	not r14d
	add r14d, 1

	mov rax, 1
	mov rdi, 1
	mov rsi, msgmenos
	mov rdx, lenmenos
	syscall

	;Se imprime en el archivo de texto
	push r12
	push r14
	mov r14, msgmenos
	mov r12, lenmenos
	writetxt r14, r12
	pop r14
	pop r12
_se13:
	mov r11d, r14d
	mov rax, r11
	call _printRAX
	mov rax, 1
	mov rdi, 1
	mov rsi, msgspace
	mov rdx, lenspace	
	syscall	

	;Se imprime en el archivo de texto
	push r12
	push r14
	mov r14, msgspace
	mov r12, lenspace
	writetxt r14, r12
	pop r14
	pop r12
	
	mov rax, 1
	mov rdi, 1
	mov rsi, msg$a3
	mov rdx, len$a3	
	syscall

	;Se imprime en el archivo de texto
	push r12
	push r14
	mov r14, msg$a3
	mov r12, len$a3
	writetxt r14, r12
	pop r14
	pop r12

	mov r14d, [br+56]
	mov r10d, r14d
mov r10d, r14d
	shr r10d, 31
	cmp r10d, 1
	je _me14
	jmp _se14
_me14:

	not r14d
	add r14d, 1

	mov rax, 1
	mov rdi, 1
	mov rsi, msgmenos
	mov rdx, lenmenos
	syscall

	;Se imprime en el archivo de texto
	push r12
	push r14
	mov r14, msgmenos
	mov r12, lenmenos
	writetxt r14, r12
	pop r14
	pop r12
_se14:
	mov r11d, r14d
	mov rax, r11
	call _printRAX
	mov rax, 1
	mov rdi, 1
	mov rsi, msgspace
	mov rdx, lenspace	
	syscall	

	;Se imprime en el archivo de texto
	push r12
	push r14
	mov r14, msgspace
	mov r12, lenspace
	writetxt r14, r12
	pop r14
	pop r12
			
	mov rax, 1
	mov rdi, 1
	mov rsi, msg$sp
	mov rdx, len$sp	
	syscall

	;Se imprime en el archivo de texto
	push r14
	push r12
	mov r14, msg$sp
	mov r12, len$sp
	writetxt r14, r12
	pop r12
	pop r14
	mov r14d, [br+232]
	mov r10d, r14d
	shr r10d, 31
	cmp r10d, 1
	je _m
	jmp _se
_m:

	not r14d
	add r14d, 1

	mov rax, 1
	mov rdi, 1
	mov rsi, msgmenos
	mov rdx, lenmenos
	syscall

	;Se imprime en el archivo de texto
	push r12
	push r14
	mov r14, msgmenos
	mov r12, lenmenos
	writetxt r14, r12
	pop r14
	pop r12
_se:
	mov r11d, r14d
	mov rax, r11
	call _printRAX
	mov rax, 1
	mov rdi, 1
	mov rsi, msgspace
	mov rdx, lenspace	
	syscall	

	;Se imprime en el archivo de texto
	push r12
	push r14
	mov r14, msgspace
	mov r12, lenspace
	writetxt r14, r12
	pop r14
	pop r12
	
	mov rax, 1
	mov rdi, 1
	mov rsi, msgvalreg1
	mov rdx, lenvalreg1
	syscall

	;Se imprime en el archivo de texto
	push r12
	push r14
	mov r14, msgvalreg1
	mov r12, lenvalreg1
	writetxt r14, r12
	pop r14
	pop r12
				
	ret;vuelve a la instruccion

_d:

	add r15d, 4	
	jmp _deco

_w:

	mov rdx, lenOP
	mov rsi, msgOP
	mov rdi, 1
	mov rax, 1
	syscall		
	jmp _fallida

_dirinv:

	mov rdx, lenDir
	mov rsi, msgDir
	mov rdi, 1
	mov rax, 1
	syscall		
	jmp _fallida

_ww:

	mov rdx, lenFunction
	mov rsi, msgFunction
	mov rdi, 1
	mov rax, 1
	syscall	
	jmp _fallida


	
_exit:


_fallida:
	mov rdx, lenFallida
	mov rsi, msgFallida
	mov rdi, 1
	mov rax, 1
	syscall	
	jmp _salida
_exito:
	mov rdx, lenExito
	mov rsi, msgExito
	mov rdi, 1
	mov rax, 1
	syscall	
	jmp _salida

_salida:
	
		
	
	mov rdx, lenJavier
	mov rsi, msgJavier
	mov rdi, 1
	mov rax, 1
	syscall
	
	mov rdx, lenRonald
	mov rsi, msgRonald
	mov rdi, 1
	mov rax, 1
	syscall
	
	mov rdx, lenTony
	mov rsi, msgTony
	mov rdi, 1
	mov rax, 1
	syscall
		
	mov rdx, lenJulio
	mov rsi, msgJulio
	mov rdi, 1
	mov rax, 1
	syscall

;---------------Datos CPU------------------------

	mov eax, 80000002H
	cpuid

	;mov [proce], eax
	mov [proce +4], ebx
	mov [proce +8], ecx
	mov [proce +12], edx

	mov eax, 80000003H
	cpuid
	
	mov [proce+16], eax
	mov [proce+20], ebx
	mov [proce+24], ecx
	mov [proce+28], edx

	mov eax, 80000004H
	cpuid

	mov [proce+32], eax
	mov [proce+36], ebx
	mov [proce+40], ecx
	mov [proce+44], edx


	mov rax, 1
	mov rdi, 1
	mov rsi, msgModelo
	mov rdx, lenModelo
	syscall


	mov rax, 1
	mov rdi, 1
	mov rsi, proce
	mov rdx, 48
	syscall

	
	mov rax, 1
	mov rdi, 1
	mov rsi, msgspace
	mov rdx, lenspace
	syscall

	mov eax, 1
	cpuid

	sar eax, 8
	and eax, 15
	add eax, 48
	mov [familia], eax

	mov rax, 1
	mov rdi, 1
	mov rsi, msgFamilia
	mov rdx, lenFamilia
	syscall
	
	mov rax, 1
	mov rdi, 1
	mov rsi, familia
	mov rdx, 4
	syscall

	mov rax, 1
	mov rdi, 1
	mov rsi, msgspace
	mov rdx, lenspace
	syscall

	mov eax, 0
	cpuid
	mov [fabri], ebx
	mov [fabri+4], edx
	mov [fabri+8], ecx

	mov rax, 1
	mov rdi, 1
	mov rsi, msgID
	mov rdx, lenID
	syscall

	mov rax, 1
	mov rdi, 1
	mov rsi, fabri
	mov rdx, 12
	syscall

	mov rax, 1
	mov rdi, 1
	mov rsi, msgspace
	mov rdx, lenspace
	syscall


	mov rdx, lenSalida
	mov rsi, msgSalida
	mov rdi, 1
	mov rax, 1
	syscall

	mov rax, 0
	mov rdi, 0
	mov rsi, en
	mov rdx, 1
	syscall


	mov rax, 60
	syscall
