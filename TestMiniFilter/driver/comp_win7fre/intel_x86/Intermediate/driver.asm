; Listing generated by Microsoft (R) Optimizing Compiler Version 15.00.30729.207 

	TITLE	D:\Projects\TestMiniFilter\driver\driver.c
	.686P
	.XMM
	include listing.inc
	.model	flat

INCLUDELIB LIBCMT
INCLUDELIB OLDNAMES

_DATA	SEGMENT
COMM	_MyName:DWORD
$SG21563 DB	'\', 00H, 'D', 00H, 'o', 00H, 's', 00H, 'D', 00H, 'e', 00H
	DB	'v', 00H, 'i', 00H, 'c', 00H, 'e', 00H, 's', 00H, '\', 00H, 'T'
	DB	00H, 'e', 00H, 's', 00H, 't', 00H, 'M', 00H, 'i', 00H, 'n', 00H
	DB	'i', 00H, 'F', 00H, 'i', 00H, 'l', 00H, 't', 00H, 'e', 00H, 'r'
	DB	00H, 00H, 00H
	ORG $+2
$SG21564 DB	'\', 00H, 'D', 00H, 'o', 00H, 's', 00H, 'D', 00H, 'e', 00H
	DB	'v', 00H, 'i', 00H, 'c', 00H, 'e', 00H, 's', 00H, '\', 00H, 'T'
	DB	00H, 'e', 00H, 's', 00H, 't', 00H, 'M', 00H, 'i', 00H, 'n', 00H
	DB	'i', 00H, 'F', 00H, 'i', 00H, 'l', 00H, 't', 00H, 'e', 00H, 'r'
	DB	00H, 00H, 00H
	ORG $+2
$SG21608 DB	'f', 00H, 'u', 00H, 'c', 00H, 'k', 00H, 'e', 00H, 'r', 00H
	DB	'.', 00H, 't', 00H, 'x', 00H, 't', 00H, 00H, 00H
	ORG $+2
$SG21618 DB	'\', 00H, 'D', 00H, 'e', 00H, 'v', 00H, 'i', 00H, 'c', 00H
	DB	'e', 00H, '\', 00H, 'T', 00H, 'e', 00H, 's', 00H, 't', 00H, 'M'
	DB	00H, 'i', 00H, 'n', 00H, 'i', 00H, 'F', 00H, 'i', 00H, 'l', 00H
	DB	't', 00H, 'e', 00H, 'r', 00H, 00H, 00H
	ORG $+2
$SG21619 DB	'\', 00H, 'D', 00H, 'e', 00H, 'v', 00H, 'i', 00H, 'c', 00H
	DB	'e', 00H, '\', 00H, 'T', 00H, 'e', 00H, 's', 00H, 't', 00H, 'M'
	DB	00H, 'i', 00H, 'n', 00H, 'i', 00H, 'F', 00H, 'i', 00H, 'l', 00H
	DB	't', 00H, 'e', 00H, 'r', 00H, 00H, 00H
	ORG $+2
$SG21621 DB	'\', 00H, 'D', 00H, 'o', 00H, 's', 00H, 'D', 00H, 'e', 00H
	DB	'v', 00H, 'i', 00H, 'c', 00H, 'e', 00H, 's', 00H, '\', 00H, 'T'
	DB	00H, 'e', 00H, 's', 00H, 't', 00H, 'M', 00H, 'i', 00H, 'n', 00H
	DB	'i', 00H, 'F', 00H, 'i', 00H, 'l', 00H, 't', 00H, 'e', 00H, 'r'
	DB	00H, 00H, 00H
	ORG $+2
$SG21622 DB	'\', 00H, 'D', 00H, 'o', 00H, 's', 00H, 'D', 00H, 'e', 00H
	DB	'v', 00H, 'i', 00H, 'c', 00H, 'e', 00H, 's', 00H, '\', 00H, 'T'
	DB	00H, 'e', 00H, 's', 00H, 't', 00H, 'M', 00H, 'i', 00H, 'n', 00H
	DB	'i', 00H, 'F', 00H, 'i', 00H, 'l', 00H, 't', 00H, 'e', 00H, 'r'
	DB	00H, 00H, 00H
_DATA	ENDS
PUBLIC	_DriverUnload@4
EXTRN	__imp__IoDeleteDevice@4:PROC
EXTRN	__imp__IoDeleteSymbolicLink@4:PROC
EXTRN	__imp__ExFreePoolWithTag@8:PROC
; Function compile flags: /Odtp
_TEXT	SEGMENT
_strLink$ = -8						; size = 8
_DriverObject$ = 8					; size = 4
_DriverUnload@4 PROC
; File d:\projects\testminifilter\driver\driver.c
; Line 13
	push	ebp
	mov	ebp, esp
	sub	esp, 8
; Line 14
	mov	eax, 52					; 00000034H
	mov	WORD PTR _strLink$[ebp], ax
	mov	ecx, 54					; 00000036H
	mov	WORD PTR _strLink$[ebp+2], cx
	mov	DWORD PTR _strLink$[ebp+4], OFFSET $SG21564
; Line 15
	cmp	DWORD PTR _MyName, 0
	je	SHORT $LN1@DriverUnlo
	push	0
	mov	edx, DWORD PTR _MyName
	push	edx
	call	DWORD PTR __imp__ExFreePoolWithTag@8
$LN1@DriverUnlo:
; Line 16
	lea	eax, DWORD PTR _strLink$[ebp]
	push	eax
	call	DWORD PTR __imp__IoDeleteSymbolicLink@4
; Line 17
	mov	ecx, DWORD PTR _DriverObject$[ebp]
	mov	edx, DWORD PTR [ecx+4]
	push	edx
	call	DWORD PTR __imp__IoDeleteDevice@4
; Line 18
	mov	esp, ebp
	pop	ebp
	ret	4
_DriverUnload@4 ENDP
_TEXT	ENDS
PUBLIC	_DispatchCreateClose@8
EXTRN	__imp_@IofCompleteRequest@8:PROC
; Function compile flags: /Odtp
_TEXT	SEGMENT
_DeviceObject$ = 8					; size = 4
_pIrp$ = 12						; size = 4
_DispatchCreateClose@8 PROC
; Line 21
	push	ebp
	mov	ebp, esp
; Line 22
	mov	eax, DWORD PTR _pIrp$[ebp]
	mov	DWORD PTR [eax+24], 0
; Line 23
	mov	ecx, DWORD PTR _pIrp$[ebp]
	mov	DWORD PTR [ecx+28], 0
; Line 24
	xor	dl, dl
	mov	ecx, DWORD PTR _pIrp$[ebp]
	call	DWORD PTR __imp_@IofCompleteRequest@8
; Line 25
	xor	eax, eax
; Line 26
	pop	ebp
	ret	8
_DispatchCreateClose@8 ENDP
_TEXT	ENDS
PUBLIC	_IoGetCurrentIrpStackLocation@4
PUBLIC	_DispatchIoctl@8
EXTRN	_memcpy:PROC
EXTRN	_memset:PROC
EXTRN	_ProtectedFile:QWORD
EXTRN	__imp__ExAllocatePool@8:PROC
EXTRN	__except_handler3:PROC
xdata$x	SEGMENT
__sehtable$_DispatchIoctl@8 DD 0ffffffffH
	DD	FLAT:$LN10@DispatchIo
	DD	FLAT:$LN11@DispatchIo
; Function compile flags: /Odtp
xdata$x	ENDS
_TEXT	SEGMENT
tv71 = -56						; size = 4
_uIoControlCode$ = -52					; size = 4
_InputSize$ = -48					; size = 4
_OutputSize$ = -44					; size = 4
_OutputBuffer$ = -40					; size = 4
_irpsp$ = -36						; size = 4
_InputBuffer$ = -32					; size = 4
_st$ = -28						; size = 4
__$SEHRec$ = -24					; size = 24
_DeviceObject$ = 8					; size = 4
_pIrp$ = 12						; size = 4
_DispatchIoctl@8 PROC
; Line 29
	push	ebp
	mov	ebp, esp
	push	-1
	push	OFFSET __sehtable$_DispatchIoctl@8
	push	OFFSET __except_handler3
	mov	eax, DWORD PTR fs:0
	push	eax
	mov	DWORD PTR fs:0, esp
	add	esp, -40				; ffffffd8H
	push	ebx
	push	esi
	push	edi
	mov	DWORD PTR __$SEHRec$[ebp], esp
; Line 30
	mov	DWORD PTR _st$[ebp], -1073741808	; c0000010H
; Line 31
	mov	eax, DWORD PTR _pIrp$[ebp]
	push	eax
	call	_IoGetCurrentIrpStackLocation@4
	mov	DWORD PTR _irpsp$[ebp], eax
; Line 32
	mov	ecx, DWORD PTR _irpsp$[ebp]
	mov	edx, DWORD PTR [ecx+12]
	mov	DWORD PTR _uIoControlCode$[ebp], edx
; Line 33
	mov	eax, DWORD PTR _pIrp$[ebp]
	mov	ecx, DWORD PTR [eax+12]
	mov	DWORD PTR _InputBuffer$[ebp], ecx
; Line 34
	mov	edx, DWORD PTR _pIrp$[ebp]
	mov	eax, DWORD PTR [edx+60]
	mov	DWORD PTR _OutputBuffer$[ebp], eax
; Line 35
	mov	ecx, DWORD PTR _irpsp$[ebp]
	mov	edx, DWORD PTR [ecx+8]
	mov	DWORD PTR _InputSize$[ebp], edx
; Line 36
	mov	eax, DWORD PTR _irpsp$[ebp]
	mov	ecx, DWORD PTR [eax+4]
	mov	DWORD PTR _OutputSize$[ebp], ecx
; Line 38
	mov	edx, DWORD PTR _uIoControlCode$[ebp]
	mov	DWORD PTR tv71[ebp], edx
	cmp	DWORD PTR tv71[ebp], 2236420		; 00222004H
	je	SHORT $LN4@DispatchIo
	jmp	$LN5@DispatchIo
$LN4@DispatchIo:
; Line 42
	mov	DWORD PTR __$SEHRec$[ebp+20], 0
; Line 44
	push	0
	mov	eax, DWORD PTR _MyName
	push	eax
	call	DWORD PTR __imp__ExFreePoolWithTag@8
; Line 45
	mov	ecx, DWORD PTR _InputSize$[ebp]
	add	ecx, 2
	push	ecx
	push	0
	call	DWORD PTR __imp__ExAllocatePool@8
	mov	DWORD PTR _MyName, eax
; Line 46
	mov	edx, DWORD PTR _MyName
	mov	DWORD PTR _ProtectedFile+4, edx
; Line 47
	mov	ax, WORD PTR _InputSize$[ebp]
	mov	WORD PTR _ProtectedFile, ax
; Line 48
	movzx	ecx, WORD PTR _InputSize$[ebp]
	add	ecx, 2
	mov	WORD PTR _ProtectedFile+2, cx
; Line 49
	mov	edx, DWORD PTR _InputSize$[ebp]
	add	edx, 2
	push	edx
	push	0
	mov	eax, DWORD PTR _ProtectedFile+4
	push	eax
	call	_memset
	add	esp, 12					; 0000000cH
; Line 50
	mov	ecx, DWORD PTR _InputSize$[ebp]
	push	ecx
	mov	edx, DWORD PTR _InputBuffer$[ebp]
	push	edx
	mov	eax, DWORD PTR _ProtectedFile+4
	push	eax
	call	_memcpy
	add	esp, 12					; 0000000cH
; Line 51
	mov	DWORD PTR __$SEHRec$[ebp+20], -1
	jmp	SHORT $LN13@DispatchIo
$LN10@DispatchIo:
$LN15@DispatchIo:
; Line 52
	mov	eax, 1
$LN12@DispatchIo:
$LN14@DispatchIo:
	ret	0
$LN11@DispatchIo:
	mov	esp, DWORD PTR __$SEHRec$[ebp]
; Line 55
	mov	DWORD PTR __$SEHRec$[ebp+20], -1
$LN13@DispatchIo:
; Line 56
	mov	DWORD PTR _st$[ebp], 0
$LN5@DispatchIo:
; Line 60
	cmp	DWORD PTR _st$[ebp], 0
	jne	SHORT $LN2@DispatchIo
; Line 61
	mov	ecx, DWORD PTR _pIrp$[ebp]
	mov	edx, DWORD PTR _OutputSize$[ebp]
	mov	DWORD PTR [ecx+28], edx
; Line 62
	jmp	SHORT $LN1@DispatchIo
$LN2@DispatchIo:
; Line 63
	mov	eax, DWORD PTR _pIrp$[ebp]
	mov	DWORD PTR [eax+28], 0
$LN1@DispatchIo:
; Line 64
	mov	ecx, DWORD PTR _pIrp$[ebp]
	mov	edx, DWORD PTR _st$[ebp]
	mov	DWORD PTR [ecx+24], edx
; Line 65
	xor	dl, dl
	mov	ecx, DWORD PTR _pIrp$[ebp]
	call	DWORD PTR __imp_@IofCompleteRequest@8
; Line 66
	mov	eax, DWORD PTR _st$[ebp]
$LN9@DispatchIo:
; Line 67
	mov	ecx, DWORD PTR __$SEHRec$[ebp+8]
	mov	DWORD PTR fs:0, ecx
	pop	edi
	pop	esi
	pop	ebx
	mov	esp, ebp
	pop	ebp
	ret	8
_DispatchIoctl@8 ENDP
; Function compile flags: /Odtp
_TEXT	ENDS
;	COMDAT _IoGetCurrentIrpStackLocation@4
_TEXT	SEGMENT
_Irp$ = 8						; size = 4
_IoGetCurrentIrpStackLocation@4 PROC			; COMDAT
; File c:\winddk\7600.16385.1\inc\ddk\wdm.h
; Line 23316
	push	ebp
	mov	ebp, esp
; Line 23318
	mov	eax, DWORD PTR _Irp$[ebp]
	mov	eax, DWORD PTR [eax+96]
; Line 23319
	pop	ebp
	ret	4
_IoGetCurrentIrpStackLocation@4 ENDP
_TEXT	ENDS
PUBLIC	_DriverReinitialize@12
EXTRN	__imp__RtlInitUnicodeString@8:PROC
; Function compile flags: /Odtp
_TEXT	SEGMENT
_DriverObject$ = 8					; size = 4
_Context$ = 12						; size = 4
_Count$ = 16						; size = 4
_DriverReinitialize@12 PROC
; File d:\projects\testminifilter\driver\driver.c
; Line 70
	push	ebp
	mov	ebp, esp
; Line 71
	push	OFFSET $SG21608
	push	OFFSET _ProtectedFile
	call	DWORD PTR __imp__RtlInitUnicodeString@8
; Line 72
	push	20					; 00000014H
	push	0
	call	DWORD PTR __imp__ExAllocatePool@8
	mov	DWORD PTR _MyName, eax
; Line 73
	pop	ebp
	ret	12					; 0000000cH
_DriverReinitialize@12 ENDP
_TEXT	ENDS
PUBLIC	_DriverEntry@8
EXTRN	__imp__IoCreateSymbolicLink@8:PROC
EXTRN	__imp__IoCreateDevice@28:PROC
EXTRN	_InitializeMiniFilter@8:PROC
EXTRN	__imp__IoRegisterDriverReinitialization@12:PROC
; Function compile flags: /Odtp
_TEXT	SEGMENT
_uniDevName$ = -24					; size = 8
_uniLinkName$ = -16					; size = 8
_st$ = -8						; size = 4
_pDevObj$ = -4						; size = 4
_DriverObject$ = 8					; size = 4
_RegistryString$ = 12					; size = 4
_DriverEntry@8 PROC
; Line 76
	push	ebp
	mov	ebp, esp
	sub	esp, 24					; 00000018H
; Line 77
	mov	DWORD PTR _st$[ebp], 0
; Line 78
	mov	eax, 44					; 0000002cH
	mov	WORD PTR _uniDevName$[ebp], ax
	mov	ecx, 46					; 0000002eH
	mov	WORD PTR _uniDevName$[ebp+2], cx
	mov	DWORD PTR _uniDevName$[ebp+4], OFFSET $SG21619
; Line 79
	mov	edx, 52					; 00000034H
	mov	WORD PTR _uniLinkName$[ebp], dx
	mov	eax, 54					; 00000036H
	mov	WORD PTR _uniLinkName$[ebp+2], ax
	mov	DWORD PTR _uniLinkName$[ebp+4], OFFSET $SG21622
; Line 80
	mov	DWORD PTR _pDevObj$[ebp], 0
; Line 82
	mov	ecx, DWORD PTR _DriverObject$[ebp]
	mov	DWORD PTR [ecx+56], OFFSET _DispatchCreateClose@8
; Line 83
	mov	edx, DWORD PTR _DriverObject$[ebp]
	mov	DWORD PTR [edx+64], OFFSET _DispatchCreateClose@8
; Line 84
	mov	eax, DWORD PTR _DriverObject$[ebp]
	mov	DWORD PTR [eax+112], OFFSET _DispatchIoctl@8
; Line 85
	mov	ecx, DWORD PTR _DriverObject$[ebp]
	mov	DWORD PTR [ecx+52], OFFSET _DriverUnload@4
; Line 87
	push	0
	push	OFFSET _DriverReinitialize@12
	mov	edx, DWORD PTR _DriverObject$[ebp]
	push	edx
	call	DWORD PTR __imp__IoRegisterDriverReinitialization@12
; Line 88
	mov	eax, DWORD PTR _RegistryString$[ebp]
	push	eax
	mov	ecx, DWORD PTR _DriverObject$[ebp]
	push	ecx
	call	_InitializeMiniFilter@8
	mov	DWORD PTR _st$[ebp], eax
; Line 89
	cmp	DWORD PTR _st$[ebp], 0
	jl	SHORT $LN3@DriverEntr
; Line 91
	lea	edx, DWORD PTR _pDevObj$[ebp]
	push	edx
	push	0
	push	0
	push	34					; 00000022H
	lea	eax, DWORD PTR _uniDevName$[ebp]
	push	eax
	push	0
	mov	ecx, DWORD PTR _DriverObject$[ebp]
	push	ecx
	call	DWORD PTR __imp__IoCreateDevice@28
	mov	DWORD PTR _st$[ebp], eax
; Line 92
	cmp	DWORD PTR _st$[ebp], 0
	jge	SHORT $LN2@DriverEntr
	mov	eax, DWORD PTR _st$[ebp]
	jmp	SHORT $LN4@DriverEntr
$LN2@DriverEntr:
; Line 93
	lea	edx, DWORD PTR _uniDevName$[ebp]
	push	edx
	lea	eax, DWORD PTR _uniLinkName$[ebp]
	push	eax
	call	DWORD PTR __imp__IoCreateSymbolicLink@8
	mov	DWORD PTR _st$[ebp], eax
; Line 94
	cmp	DWORD PTR _st$[ebp], 0
	jge	SHORT $LN3@DriverEntr
	mov	ecx, DWORD PTR _pDevObj$[ebp]
	push	ecx
	call	DWORD PTR __imp__IoDeleteDevice@4
$LN3@DriverEntr:
; Line 96
	mov	eax, DWORD PTR _st$[ebp]
$LN4@DriverEntr:
; Line 97
	mov	esp, ebp
	pop	ebp
	ret	8
_DriverEntry@8 ENDP
_TEXT	ENDS
END
