.text
mov r1, 0
mov r2, 15
mov r3, -1
mov r4, 0
mov r5, .common
st r2, [r5]
.forloop:
	cmp r4, 3
	bgt .loopend
	procid r4
	call .arraySum
	add r4, r4, 1
	b .forloop
.loopend:
wfe 01111
mov r5, .common
ld r6, 4[r5]
ld r7, 8[r5]
ld r8, 12[r5]
ld r9, 16[r5]
add r6, r6, r7
add r8, r8, r9
add r6, r6, r8
b .exit

.arraySum:
	mul r1, r0, 4
	add r2, r1, 3
	mov r10, .common
	mov r4, .array
	ld r3, [r10]
	cmp r3, r2
	bgt .next
	mov r2, r3
	.next:
	.for:
		cmp r1, r2
		bgt .endfor
		mul r5, r1, 4
		add r8, r4, r5
		ld r7, [r8]
		add r6, r6, r7
		add r1, r1, 1
		b .for
	.endfor:
	mov r4, .common
	mul r5,r0,4
	add r5,r5,4
	add r4,r4,r5
	ld r3, [r4]
	add r3, r3, r6
	st r3, [r4]
	sev 10000
	ret

.exit:
.end

.data
	.array:
		1
		2
		-3
		4
		5
		-6
		7
		8
		-9
		-10
		11
		12
		13
		-14
		15
		16
	.common:
		0
		0
		0
		0
		0
