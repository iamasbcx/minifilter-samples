; Listing generated by Microsoft (R) Optimizing Compiler Version 15.00.30729.207 

include listing.inc

INCLUDELIB LIBCMT
INCLUDELIB OLDNAMES

PUBLIC	hFilter
_DATA	SEGMENT
COMM	ProtectedFile:BYTE:010H
_DATA	ENDS
_BSS	SEGMENT
hFilter	DQ	01H DUP (?)
_BSS	ENDS
_DATA	SEGMENT
$SG32846 DB	'%', 00H, 'w', 00H, 's', 00H, '\', 00H, 'I', 00H, 'n', 00H
	DB	's', 00H, 't', 00H, 'a', 00H, 'n', 00H, 'c', 00H, 'e', 00H, 's'
	DB	00H, 00H, 00H
	ORG $+4
$SG32849 DB	'%', 00H, 'w', 00H, 's', 00H, ' ', 00H, 'I', 00H, 'n', 00H
	DB	's', 00H, 't', 00H, 'a', 00H, 'n', 00H, 'c', 00H, 'e', 00H, 00H
	DB	00H
	ORG $+6
$SG32852 DB	'D', 00H, 'e', 00H, 'f', 00H, 'a', 00H, 'u', 00H, 'l', 00H
	DB	't', 00H, 'I', 00H, 'n', 00H, 's', 00H, 't', 00H, 'a', 00H, 'n'
	DB	00H, 'c', 00H, 'e', 00H, 00H, 00H
$SG32856 DB	'%', 00H, 'w', 00H, 's', 00H, '\', 00H, 'I', 00H, 'n', 00H
	DB	's', 00H, 't', 00H, 'a', 00H, 'n', 00H, 'c', 00H, 'e', 00H, 's'
	DB	00H, '%', 00H, 'w', 00H, 's', 00H, ' ', 00H, 'I', 00H, 'n', 00H
	DB	's', 00H, 't', 00H, 'a', 00H, 'n', 00H, 'c', 00H, 'e', 00H, 00H
	DB	00H
	ORG $+4
$SG32861 DB	'A', 00H, 'l', 00H, 't', 00H, 'i', 00H, 't', 00H, 'u', 00H
	DB	'd', 00H, 'e', 00H, 00H, 00H
	ORG $+6
$SG32865 DB	'F', 00H, 'l', 00H, 'a', 00H, 'g', 00H, 's', 00H, 00H, 00H
	ORG $+4
$SG32878 DB	'3', 00H, '2', 00H, '1', 00H, '2', 00H, '2', 00H, '9', 00H
	DB	00H, 00H
_DATA	ENDS
PUBLIC	SpyFindSubString
EXTRN	_wcsnicmp:PROC
EXTRN	__imp_RtlEqualUnicodeString:PROC
pdata	SEGMENT
$pdata$SpyFindSubString DD imagerel $LN8
	DD	imagerel $LN8+186
	DD	imagerel $unwind$SpyFindSubString
pdata	ENDS
xdata	SEGMENT
$unwind$SpyFindSubString DD 010e01H
	DD	0620eH
; Function compile flags: /Odtp
xdata	ENDS
_TEXT	SEGMENT
Index$ = 32
String$ = 64
SubString$ = 72
SpyFindSubString PROC
; File d:\projects\testminifilter\driver\minifilter.c
; Line 8
$LN8:
	mov	QWORD PTR [rsp+16], rdx
	mov	QWORD PTR [rsp+8], rcx
	sub	rsp, 56					; 00000038H
; Line 10
	mov	r8b, 1
	mov	rdx, QWORD PTR SubString$[rsp]
	mov	rcx, QWORD PTR String$[rsp]
	call	QWORD PTR __imp_RtlEqualUnicodeString
	movzx	eax, al
	test	eax, eax
	je	SHORT $LN5@SpyFindSub
	mov	al, 1
	jmp	$LN6@SpyFindSub
$LN5@SpyFindSub:
; Line 11
	mov	DWORD PTR Index$[rsp], 0
	jmp	SHORT $LN4@SpyFindSub
$LN3@SpyFindSub:
	mov	eax, DWORD PTR Index$[rsp]
	add	eax, 1
	mov	DWORD PTR Index$[rsp], eax
$LN4@SpyFindSub:
	mov	r8d, DWORD PTR Index$[rsp]
	mov	rax, QWORD PTR SubString$[rsp]
	movzx	eax, WORD PTR [rax]
	xor	edx, edx
	mov	ecx, 2
	div	rcx
	add	r8, rax
	mov	rax, QWORD PTR String$[rsp]
	movzx	eax, WORD PTR [rax]
	xor	edx, edx
	mov	ecx, 2
	div	rcx
	cmp	r8, rax
	ja	SHORT $LN2@SpyFindSub
; Line 13
	mov	rax, QWORD PTR SubString$[rsp]
	movzx	eax, WORD PTR [rax]
	xor	edx, edx
	mov	ecx, 2
	div	rcx
	mov	r8, rax
	mov	ecx, DWORD PTR Index$[rsp]
	mov	rax, QWORD PTR String$[rsp]
	mov	rax, QWORD PTR [rax+8]
	lea	rcx, QWORD PTR [rax+rcx*2]
	mov	rdx, QWORD PTR SubString$[rsp]
	mov	rdx, QWORD PTR [rdx+8]
	call	_wcsnicmp
	test	eax, eax
	jne	SHORT $LN1@SpyFindSub
	mov	al, 1
	jmp	SHORT $LN6@SpyFindSub
$LN1@SpyFindSub:
; Line 14
	jmp	SHORT $LN3@SpyFindSub
$LN2@SpyFindSub:
; Line 15
	xor	al, al
$LN6@SpyFindSub:
; Line 16
	add	rsp, 56					; 00000038H
	ret	0
SpyFindSubString ENDP
_TEXT	ENDS
PUBLIC	TpMFlt_SetInformationPreCall
EXTRN	FltReleaseFileNameInformation:PROC
EXTRN	FltParseFileNameInformation:PROC
EXTRN	FltGetFileNameInformation:PROC
pdata	SEGMENT
$pdata$TpMFlt_SetInformationPreCall DD imagerel $LN7
	DD	imagerel $LN7+161
	DD	imagerel $unwind$TpMFlt_SetInformationPreCall
pdata	ENDS
xdata	SEGMENT
$unwind$TpMFlt_SetInformationPreCall DD 011301H
	DD	06213H
; Function compile flags: /Odtp
xdata	ENDS
_TEXT	SEGMENT
NameInfo$ = 32
st$ = 40
FilterCallbackData$ = 64
FilterRelatedObjects$ = 72
CompletionContext$ = 80
TpMFlt_SetInformationPreCall PROC
; Line 19
$LN7:
	mov	QWORD PTR [rsp+24], r8
	mov	QWORD PTR [rsp+16], rdx
	mov	QWORD PTR [rsp+8], rcx
	sub	rsp, 56					; 00000038H
; Line 21
	lea	r8, QWORD PTR NameInfo$[rsp]
	mov	edx, 257				; 00000101H
	mov	rcx, QWORD PTR FilterCallbackData$[rsp]
	call	FltGetFileNameInformation
	mov	DWORD PTR st$[rsp], eax
; Line 22
	cmp	DWORD PTR st$[rsp], 0
	jl	SHORT $LN4@TpMFlt_Set
	mov	rax, QWORD PTR FilterCallbackData$[rsp]
	mov	rax, QWORD PTR [rax+16]
	movzx	eax, BYTE PTR [rax+4]
	cmp	eax, 6
	jne	SHORT $LN4@TpMFlt_Set
; Line 24
	mov	rcx, QWORD PTR NameInfo$[rsp]
	call	FltParseFileNameInformation
	mov	DWORD PTR st$[rsp], eax
; Line 25
	cmp	DWORD PTR st$[rsp], 0
	jl	SHORT $LN3@TpMFlt_Set
; Line 27
	mov	rcx, QWORD PTR NameInfo$[rsp]
	add	rcx, 8
	lea	rdx, OFFSET FLAT:ProtectedFile
	call	SpyFindSubString
	movzx	eax, al
	test	eax, eax
	je	SHORT $LN2@TpMFlt_Set
; Line 29
	mov	rcx, QWORD PTR NameInfo$[rsp]
	call	FltReleaseFileNameInformation
; Line 30
	mov	eax, 3
	jmp	SHORT $LN5@TpMFlt_Set
$LN2@TpMFlt_Set:
$LN3@TpMFlt_Set:
$LN4@TpMFlt_Set:
; Line 34
	cmp	DWORD PTR st$[rsp], 0
	jl	SHORT $LN1@TpMFlt_Set
	mov	rcx, QWORD PTR NameInfo$[rsp]
	call	FltReleaseFileNameInformation
$LN1@TpMFlt_Set:
; Line 35
	mov	eax, 1
$LN5@TpMFlt_Set:
; Line 36
	add	rsp, 56					; 00000038H
	ret	0
TpMFlt_SetInformationPreCall ENDP
_TEXT	ENDS
PUBLIC	PrepMiniFilter
EXTRN	__imp_RtlWriteRegistryValue:PROC
EXTRN	wcslen:PROC
EXTRN	__imp_RtlCreateRegistryKey:PROC
EXTRN	swprintf:PROC
EXTRN	memset:PROC
EXTRN	__imp_MmIsAddressValid:PROC
EXTRN	wcsrchr:PROC
pdata	SEGMENT
$pdata$PrepMiniFilter DD imagerel $LN8
	DD	imagerel $LN8+536
	DD	imagerel $unwind$PrepMiniFilter
pdata	ENDS
xdata	SEGMENT
$unwind$PrepMiniFilter DD 031201H
	DD	08e0112H
	DD	0700bH
; Function compile flags: /Odtp
xdata	ENDS
_TEXT	SEGMENT
wPtr$ = 48
st$ = 56
TempStr$ = 64
Data$ = 592
dwData$32864 = 1120
RegistryString$ = 1152
Altitude$ = 1160
PrepMiniFilter PROC
; Line 39
$LN8:
	mov	QWORD PTR [rsp+16], rdx
	mov	QWORD PTR [rsp+8], rcx
	push	rdi
	sub	rsp, 1136				; 00000470H
; Line 40
	mov	DWORD PTR st$[rsp], -1073741823		; ffffffffc0000001H
; Line 41
	xor	eax, eax
	mov	WORD PTR TempStr$[rsp], ax
	lea	rdi, QWORD PTR TempStr$[rsp+2]
	xor	eax, eax
	mov	ecx, 518				; 00000206H
	rep stosb
	xor	eax, eax
	mov	WORD PTR Data$[rsp], ax
	lea	rdi, QWORD PTR Data$[rsp+2]
	xor	eax, eax
	mov	ecx, 518				; 00000206H
	rep stosb
; Line 42
	mov	dx, 92					; 0000005cH
	mov	rcx, QWORD PTR RegistryString$[rsp]
	mov	rcx, QWORD PTR [rcx+8]
	call	wcsrchr
	mov	QWORD PTR wPtr$[rsp], rax
; Line 43
	mov	rcx, QWORD PTR wPtr$[rsp]
	call	QWORD PTR __imp_MmIsAddressValid
	movzx	eax, al
	test	eax, eax
	jne	SHORT $LN5@PrepMiniFi
	mov	eax, -1073741811			; ffffffffc000000dH
	jmp	$LN6@PrepMiniFi
$LN5@PrepMiniFi:
; Line 44
	mov	r8d, 520				; 00000208H
	xor	edx, edx
	lea	rcx, QWORD PTR TempStr$[rsp]
	call	memset
; Line 45
	mov	r8, QWORD PTR wPtr$[rsp]
	lea	rdx, OFFSET FLAT:$SG32846
	lea	rcx, QWORD PTR TempStr$[rsp]
	call	swprintf
; Line 47
	lea	rdx, QWORD PTR TempStr$[rsp]
	mov	ecx, 1
	call	QWORD PTR __imp_RtlCreateRegistryKey
	mov	DWORD PTR st$[rsp], eax
; Line 48
	cmp	DWORD PTR st$[rsp], 0
	jl	$LN4@PrepMiniFi
; Line 50
	mov	r8, QWORD PTR wPtr$[rsp]
	add	r8, 2
	lea	rdx, OFFSET FLAT:$SG32849
	lea	rcx, QWORD PTR Data$[rsp]
	call	swprintf
; Line 52
	lea	rcx, QWORD PTR Data$[rsp]
	call	wcslen
	lea	rax, QWORD PTR [rax+rax+2]
	mov	DWORD PTR [rsp+40], eax
	lea	rax, QWORD PTR Data$[rsp]
	mov	QWORD PTR [rsp+32], rax
	mov	r9d, 1
	lea	r8, OFFSET FLAT:$SG32852
	lea	rdx, QWORD PTR TempStr$[rsp]
	mov	ecx, 1
	call	QWORD PTR __imp_RtlWriteRegistryValue
	mov	DWORD PTR st$[rsp], eax
; Line 53
	cmp	DWORD PTR st$[rsp], 0
	jl	$LN3@PrepMiniFi
; Line 55
	mov	r8d, 520				; 00000208H
	xor	edx, edx
	lea	rcx, QWORD PTR TempStr$[rsp]
	call	memset
; Line 56
	mov	r9, QWORD PTR wPtr$[rsp]
	mov	r8, QWORD PTR wPtr$[rsp]
	lea	rdx, OFFSET FLAT:$SG32856
	lea	rcx, QWORD PTR TempStr$[rsp]
	call	swprintf
; Line 58
	lea	rdx, QWORD PTR TempStr$[rsp]
	mov	ecx, 1
	call	QWORD PTR __imp_RtlCreateRegistryKey
	mov	DWORD PTR st$[rsp], eax
; Line 59
	cmp	DWORD PTR st$[rsp], 0
	jl	$LN2@PrepMiniFi
; Line 61
	mov	rcx, QWORD PTR Altitude$[rsp]
	call	wcslen
	lea	rax, QWORD PTR [rax+rax+2]
	mov	DWORD PTR [rsp+40], eax
	mov	rax, QWORD PTR Altitude$[rsp]
	mov	QWORD PTR [rsp+32], rax
	mov	r9d, 1
	lea	r8, OFFSET FLAT:$SG32861
	lea	rdx, QWORD PTR TempStr$[rsp]
	mov	ecx, 1
	call	QWORD PTR __imp_RtlWriteRegistryValue
	mov	DWORD PTR st$[rsp], eax
; Line 62
	cmp	DWORD PTR st$[rsp], 0
	jl	SHORT $LN1@PrepMiniFi
; Line 64
	mov	DWORD PTR dwData$32864[rsp], 0
; Line 65
	mov	DWORD PTR [rsp+40], 4
	lea	rax, QWORD PTR dwData$32864[rsp]
	mov	QWORD PTR [rsp+32], rax
	mov	r9d, 4
	lea	r8, OFFSET FLAT:$SG32865
	lea	rdx, QWORD PTR TempStr$[rsp]
	mov	ecx, 1
	call	QWORD PTR __imp_RtlWriteRegistryValue
	mov	DWORD PTR st$[rsp], eax
$LN1@PrepMiniFi:
$LN2@PrepMiniFi:
$LN3@PrepMiniFi:
$LN4@PrepMiniFi:
; Line 70
	mov	eax, DWORD PTR st$[rsp]
$LN6@PrepMiniFi:
; Line 71
	add	rsp, 1136				; 00000470H
	pop	rdi
	ret	0
PrepMiniFilter ENDP
_TEXT	ENDS
PUBLIC	FinalizeMiniFilterCallback
EXTRN	FltUnregisterFilter:PROC
pdata	SEGMENT
$pdata$FinalizeMiniFilterCallback DD imagerel $LN3
	DD	imagerel $LN3+35
	DD	imagerel $unwind$FinalizeMiniFilterCallback
pdata	ENDS
xdata	SEGMENT
$unwind$FinalizeMiniFilterCallback DD 010801H
	DD	04208H
; Function compile flags: /Odtp
xdata	ENDS
_TEXT	SEGMENT
Flags$ = 48
FinalizeMiniFilterCallback PROC
; Line 74
$LN3:
	mov	DWORD PTR [rsp+8], ecx
	sub	rsp, 40					; 00000028H
; Line 75
	mov	rcx, QWORD PTR hFilter
	call	FltUnregisterFilter
; Line 76
	mov	DWORD PTR Flags$[rsp], 1
; Line 77
	xor	eax, eax
; Line 78
	add	rsp, 40					; 00000028H
	ret	0
FinalizeMiniFilterCallback ENDP
_TEXT	ENDS
PUBLIC	InitializeMiniFilter
EXTRN	FltStartFiltering:PROC
EXTRN	FltRegisterFilter:PROC
pdata	SEGMENT
$pdata$InitializeMiniFilter DD imagerel $LN5
	DD	imagerel $LN5+244
	DD	imagerel $unwind$InitializeMiniFilter
pdata	ENDS
xdata	SEGMENT
$unwind$InitializeMiniFilter DD 021101H
	DD	01d0111H
; Function compile flags: /Odtp
xdata	ENDS
_TEXT	SEGMENT
st$ = 32
FltReg$32881 = 48
FltOpReg$32882 = 160
DriverObject$ = 240
RegistryPath$ = 248
InitializeMiniFilter PROC
; Line 81
$LN5:
	mov	QWORD PTR [rsp+16], rdx
	mov	QWORD PTR [rsp+8], rcx
	sub	rsp, 232				; 000000e8H
; Line 82
	lea	rdx, OFFSET FLAT:$SG32878
	mov	rcx, QWORD PTR RegistryPath$[rsp]
	call	PrepMiniFilter
	mov	DWORD PTR st$[rsp], eax
; Line 83
	cmp	DWORD PTR st$[rsp], 0
	jl	$LN2@Initialize
; Line 87
	mov	r8d, 104				; 00000068H
	xor	edx, edx
	lea	rcx, QWORD PTR FltReg$32881[rsp]
	call	memset
; Line 88
	mov	r11d, 104				; 00000068H
	mov	WORD PTR FltReg$32881[rsp], r11w
; Line 89
	mov	eax, 514				; 00000202H
	mov	WORD PTR FltReg$32881[rsp+2], ax
; Line 90
	lea	rax, OFFSET FLAT:FinalizeMiniFilterCallback
	mov	QWORD PTR FltReg$32881[rsp+24], rax
; Line 91
	lea	rax, QWORD PTR FltOpReg$32882[rsp]
	mov	QWORD PTR FltReg$32881[rsp+16], rax
; Line 92
	mov	r8d, 64					; 00000040H
	xor	edx, edx
	lea	rcx, QWORD PTR FltOpReg$32882[rsp]
	call	memset
; Line 93
	mov	BYTE PTR FltOpReg$32882[rsp], 6
; Line 94
	mov	DWORD PTR FltOpReg$32882[rsp+4], 1
; Line 95
	lea	rax, OFFSET FLAT:TpMFlt_SetInformationPreCall
	mov	QWORD PTR FltOpReg$32882[rsp+8], rax
; Line 96
	mov	BYTE PTR FltOpReg$32882[rsp+32], 128	; 00000080H
; Line 97
	lea	r8, OFFSET FLAT:hFilter
	lea	rdx, QWORD PTR FltReg$32881[rsp]
	mov	rcx, QWORD PTR DriverObject$[rsp]
	call	FltRegisterFilter
	mov	DWORD PTR st$[rsp], eax
; Line 98
	cmp	DWORD PTR st$[rsp], 0
	jl	SHORT $LN1@Initialize
; Line 100
	mov	rcx, QWORD PTR hFilter
	call	FltStartFiltering
	mov	DWORD PTR st$[rsp], eax
$LN1@Initialize:
$LN2@Initialize:
; Line 103
	mov	eax, DWORD PTR st$[rsp]
; Line 104
	add	rsp, 232				; 000000e8H
	ret	0
InitializeMiniFilter ENDP
_TEXT	ENDS
END