org 00h
mov 56,#0
mov p1,#0ffh
mov p3,#00h
mov p2,#00h
mov p0,#00h




start:;code
call space
call shiftl
call letc
call shiftl
call leto
call shiftl
call letd
call shiftl
call lete
call shiftl
call space
call shiftl
call screen





startup:

jb p2.1,enter
jb p2.2,select
jb p2.3,up
jb p2.0,down
call screen
jmp startup



up:
mov a,56
cjne a,#9, emeka
mov 56, #0
call decoder
call release
jmp startup

emeka:
inc 56
call decoder
call release
jmp startup


down:
mov a, 56
cjne a,#0, rex
mov 56,#9
call decoder
call release
jmp startup

rex:
dec 56
call decoder
call release
jmp startup





select:
call space
call shiftl
mov 56,#0
call release
jmp startup

enter:;place to encode your code,code;224455
mov a,30
cjne a,#00100100b,ad

mov a,31
cjne a,#00100100b,ad

mov a,32
cjne a,#00100100b,ad

mov a,33
cjne a,#00100100b,ad

mov a,34
cjne a,#00100100b,ad

mov a,35
cjne a,#00100100b,ad

jmp ag



ad:  ;acess denied
clr p3.7
call leta
call shiftl
call play1
call letc
call shiftl
call play1
call letc
call shiftl
call play1
call lete
call shiftl
call play1
call lets
call shiftl
call play1
call shiftl
call play1
call space
call shiftl
call play1
call letd
call shiftl
call play1
call lete
call shiftl
call play1
call letn
call shiftl
call play1
call leti
call shiftl
call play1
call lete
call shiftl
call play1
call letd
call shiftl
call play1
call space
call shiftl
call play1
call space
call shiftl
call play1
call space
call shiftl
call play1
call space
call shiftl
call play1
call space
call shiftl
call play1
call space
call shiftl
call play1
call space
call shiftl
call play1
setb p3.7
jmp start

ag:;acess granted

call leta
call shiftl
call play1
call letc
call shiftl
call play1
call letc
call shiftl
call play1
call lete
call shiftl
call play1
call lets
call shiftl
call play1
call lets
call shiftl
call play1
call space
call shiftl
call play1
call letg
call shiftl
call play1
call letr
call shiftl
call play1
call leta
call shiftl
call play1
call letn
call shiftl
call play1
call lett
call shiftl
call play1
call lete
call shiftl
call play1
call letd
call shiftl
call play1
call space
call shiftl
call play1
call space
call shiftl
call play1
call space
call shiftl
call play1
call space
call shiftl
call play1
call space
call shiftl
call play1
call space
call shiftl
call play1
call space
call shiftl
call play1

ag2: ;oning p1.7
call space
call shiftl
setb p1.7
setb p1.7
call leto
call shiftl
call letn
call shiftl
setb p1.7
jmp ag2






release:
wait: call screen
jb p2.3,wait
jb p2.2,wait
jb p2.1,wait
jb p2.0,wait
ret



decoder:
mov a,56
cjne a,#0,decode1
mov 35,#01000000b
ret
decode1:
mov a,56
cjne a,#1,decode2
mov 35,#01111001b
ret
decode2:
mov a,56
cjne a,#2,decode3
mov 35,#00100100b
ret
decode3:
mov a,56
cjne a,#3,decode4
mov 35,#00110000b
ret
decode4:
mov a,56
cjne a,#4,decode5
mov 35,#00011001b
ret
decode5:
mov a,56
cjne a,#5,decode6
mov 35,#00010010b
ret

decode6:
mov a,56
cjne a,#6,decode7
mov 35,#00000010b
ret

decode7:
mov a,56
cjne a,#7,decode8
mov 35,#01111000b
ret

decode8:
mov a,56
cjne a,#8,decode9
mov 35,#00000000b
ret

decode9:
mov 35,#00010000b
ret

;alphabet and alphanumerical codeing
num0:
mov 36,#01000000b
ret

num1:
mov 36,#01111001b
ret

num2:
mov 36,#00100100b
ret

num3:

mov 36,#00110000b
ret

num4:
mov 36,#00011001b
ret

num5:
mov 36,#00010010b
ret

num6:
mov 36,#00000010b
ret

num7:
mov 36,#01111000b
ret

num8:
mov 36,#00000000b
ret

num9:
mov 36,#00010000b
ret

space:
mov 36,#01111111b
ret


leta:
mov 36,#00001000b
ret

letb:
mov 36,#00000011b
ret

letc:
mov 36,#01000110b
ret

letd:
mov 36,#00100001b
ret

lete:
mov 36,#00000110b
ret

letf:
mov 36,#00001110b
ret

letg:
mov 36,#00010000b
ret

leth:
mov 36,#00001011b
ret

leti:
mov 36,#01111001b
ret

letj:
mov 36,#01110001b
ret

letl:
mov 36,#01000111b
ret

letn:
mov 36,#01001000b
ret

leto:
mov 36,#01000000b
ret

letp:
mov 36,#00001100b
ret

letq:
mov 36,#00011000b
ret

letr:
mov 36,#01001110b
ret

lets:
mov 36,#00010010b
ret

lett:
mov 36,#00000111b
ret

letu:
mov 36,#01000001b
ret

lety:
mov 36,#00010001b
ret



shiftl:
mov 30,31
mov 31,32
mov 32,33
mov 33,34
mov 34,35
mov 35,36
ret


screen:
mov p1,30
call clock
setb p3.0
call delay
clr p3.0

mov p1,31
call clock
setb p3.1
call delay
clr p3.1

mov p1,32
call clock
setb p3.2
call delay
clr p3.2

mov p1,33
call clock
setb p3.3
call delay
clr p3.3

mov p1,34
call clock
setb p3.4
call delay
clr p3.4

mov p1,35
call clock
setb p3.5
call delay
clr p3.5

ret

play1:
call play
call delay
ret

play:
	mov r0,#100
jos:	call screen
	djnz r0,jos
	ret

clock:
	clr p3.7
	setb p3.7
	clr p3.7
	ret


delay:
	mov r1,#255
okija:	nop
	djnz r1,okija
	ret











end

	
