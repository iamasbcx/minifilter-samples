; Listing generated by Microsoft (R) Optimizing Compiler Version 15.00.30729.207 

include listing.inc

INCLUDELIB LIBCMT
INCLUDELIB OLDNAMES

_DATA	SEGMENT
COMM	MyName:QWORD
$SG22029 DB	'\', 00H, 'D', 00H, 'o', 00H, 's', 00H, 'D', 00H, 'e', 00H
	DB	'v', 00H, 'i', 00H, 'c', 00H, 'e', 00H, 's', 00H, '\', 00H, 'T'
	DB	00H, 'e', 00H, 's', 00H, 't', 00H, 'M', 00H, 'i', 00H, 'n', 00H
	DB	'i', 00H, 'F', 00H, 'i', 00H, 'l', 00H, 't', 00H, 'e', 00H, 'r'
	DB	00H, 00H, 00H
	ORG $+2
$SG22030 DB	'\', 00H, 'D', 00H, 'o', 00H, 's', 00H, 'D', 00H, 'e', 00H
	DB	'v', 00H, 'i', 00H, 'c', 00H, 'e', 00H, 's', 00H, '\', 00H, 'T'
	DB	00H, 'e', 00H, 's', 00H, 't', 00H, 'M', 00H, 'i', 00H, 'n', 00H
	DB	'i', 00H, 'F', 00H, 'i', 00H, 'l', 00H, 't', 00H, 'e', 00H, 'r'
	DB	00H, 00H, 00H
	ORG $+2
$SG22074 DB	'f', 00H, 'u', 00H, 'c', 00H, 'k', 00H, 'e', 00H, 'r', 00H
	DB	'.', 00H, 't', 00H, 'x', 00H, 't', 00H, 00H, 00H
	ORG $+2
$SG22084 DB	'\', 00H, 'D', 00H, 'e', 00H, 'v', 00H, 'i', 00H, 'c', 00H
	DB	'e', 00H, '\', 00H, 'T', 00H, 'e', 00H, 's', 00H, 't', 00H, 'M'
	DB	00H, 'i', 00H, 'n', 00H, 'i', 00H, 'F', 00H, 'i', 00H, 'l', 00H
	DB	't', 00H, 'e', 00H, 'r', 00H, 00H, 00H
	ORG $+2
$SG22085 DB	'\', 00H, 'D', 00H, 'e', 00H, 'v', 00H, 'i', 00H, 'c', 00H
	DB	'e', 00H, '\', 00H, 'T', 00H, 'e', 00H, 's', 00H, 't', 00H, 'M'
	DB	00H, 'i', 00H, 'n', 00H, 'i', 00H, 'F', 00H, 'i', 00H, 'l', 00H
	DB	't', 00H, 'e', 00H, 'r', 00H, 00H, 00H
	ORG $+2
$SG22087 DB	'\', 00H, 'D', 00H, 'o', 00H, 's', 00H, 'D', 00H, 'e', 00H
	DB	'v', 00H, 'i', 00H, 'c', 00H, 'e', 00H, 's', 00H, '\', 00H, 'T'
	DB	00H, 'e', 00H, 's', 00H, 't', 00H, 'M', 00H, 'i', 00H, 'n', 00H
	DB	'i', 00H, 'F', 00H, 'i', 00H, 'l', 00H, 't', 00H, 'e', 00H, 'r'
	DB	00H, 00H, 00H
	ORG $+2
$SG22088 DB	'\', 00H, 'D', 00H, 'o', 00H, 's', 00H, 'D', 00H, 'e', 00H
	DB	'v', 00H, 'i', 00H, 'c', 00H, 'e', 00H, 's', 00H, '\', 00H, 'T'
	DB	00H, 'e', 00H, 's', 00H, 't', 00H, 'M', 00H, 'i', 00H, 'n', 00H
	DB	'i', 00H, 'F', 00H, 'i', 00H, 'l', 00H, 't', 00H, 'e', 00H, 'r'
	DB	00H, 00H, 00H
_DATA	ENDS
PUBLIC	DriverUnload
EXTRN	__imp_IoDeleteDevice:PROC
EXTRN	__imp_IoDeleteSymbolicLink:PROC
EXTRN	__imp_ExFreePoolWithTag:PROC
pdata	SEGMENT
$pdata$DriverUnload DD imagerel $LN4
	DD	imagerel $LN4+97
	DD	imagerel $unwind$DriverUnload
pdata	ENDS
xdata	SEGMENT
$unwind$DriverUnload DD 010901H
	DD	06209H
; Function compile flags: /Odtp
xdata	ENDS
_TEXT	SEGMENT
strLink$ = 32
DriverObject$ = 64
DriverUnload PROC
; File d:\projects\testminifilter\driver\driver.c
; Line 13
$LN4:
	mov	QWORD PTR [rsp+8], rcx
	sub	rsp, 56					; 00000038H
; Line 14
	mov	eax, 52					; 00000034H
	mov	WORD PTR strLink$[rsp], ax
	mov	eax, 54					; 00000036H
	mov	WORD PTR strLink$[rsp+2], ax
	lea	rax, OFFSET FLAT:$SG22030
	mov	QWORD PTR strLink$[rsp+8], rax
; Line 15
	cmp	QWORD PTR MyName, 0
	je	SHORT $LN1@DriverUnlo
	xor	edx, edx
	mov	rcx, QWORD PTR MyName
	call	QWORD PTR __imp_ExFreePoolWithTag
$LN1@DriverUnlo:
; Line 16
	lea	rcx, QWORD PTR strLink$[rsp]
	call	QWORD PTR __imp_IoDeleteSymbolicLink
; Line 17
	mov	rcx, QWORD PTR DriverObject$[rsp]
	mov	rcx, QWORD PTR [rcx+8]
	call	QWORD PTR __imp_IoDeleteDevice
; Line 18
	add	rsp, 56					; 00000038H
	ret	0
DriverUnload ENDP
_TEXT	ENDS
PUBLIC	DispatchCreateClose
EXTRN	__imp_IofCompleteRequest:PROC
pdata	SEGMENT
$pdata$DispatchCreateClose DD imagerel $LN3
	DD	imagerel $LN3+59
	DD	imagerel $unwind$DispatchCreateClose
pdata	ENDS
xdata	SEGMENT
$unwind$DispatchCreateClose DD 010e01H
	DD	0420eH
; Function compile flags: /Odtp
xdata	ENDS
_TEXT	SEGMENT
DeviceObject$ = 48
pIrp$ = 56
DispatchCreateClose PROC
; Line 21
$LN3:
	mov	QWORD PTR [rsp+16], rdx
	mov	QWORD PTR [rsp+8], rcx
	sub	rsp, 40					; 00000028H
; Line 22
	mov	rax, QWORD PTR pIrp$[rsp]
	mov	DWORD PTR [rax+48], 0
; Line 23
	mov	rax, QWORD PTR pIrp$[rsp]
	mov	QWORD PTR [rax+56], 0
; Line 24
	xor	edx, edx
	mov	rcx, QWORD PTR pIrp$[rsp]
	call	QWORD PTR __imp_IofCompleteRequest
; Line 25
	xor	eax, eax
; Line 26
	add	rsp, 40					; 00000028H
	ret	0
DispatchCreateClose ENDP
_TEXT	ENDS
PUBLIC	IoGetCurrentIrpStackLocation
PUBLIC	DispatchIoctl
EXTRN	__C_specific_handler:PROC
EXTRN	memcpy:PROC
EXTRN	memset:PROC
EXTRN	ProtectedFile:BYTE
EXTRN	__imp_ExAllocatePool:PROC
pdata	SEGMENT
$pdata$DispatchIoctl DD imagerel $LN14
	DD	imagerel $LN14+329
	DD	imagerel $unwind$DispatchIoctl
pdata	ENDS
pdata	SEGMENT
$pdata$DispatchIoctl$filt$0 DD imagerel DispatchIoctl$filt$0
	DD	imagerel DispatchIoctl$filt$0+20
	DD	imagerel $unwind$DispatchIoctl$filt$0
pdata	ENDS
xdata	SEGMENT
$unwind$DispatchIoctl DD 010e09H
	DD	0a20eH
	DD	imagerel __C_specific_handler
	DD	01H
	DD	imagerel $LN14+124
	DD	imagerel $LN14+252
	DD	imagerel DispatchIoctl$filt$0
	DD	imagerel $LN14+252
$unwind$DispatchIoctl$filt$0 DD 020601H
	DD	050023206H
; Function compile flags: /Odtp
xdata	ENDS
_TEXT	SEGMENT
st$ = 32
InputBuffer$ = 40
irpsp$ = 48
OutputBuffer$ = 56
OutputSize$ = 64
InputSize$ = 68
uIoControlCode$ = 72
tv71 = 76
DeviceObject$ = 96
pIrp$ = 104
DispatchIoctl PROC
; Line 29
$LN14:
	mov	QWORD PTR [rsp+16], rdx
	mov	QWORD PTR [rsp+8], rcx
	sub	rsp, 88					; 00000058H
; Line 30
	mov	DWORD PTR st$[rsp], -1073741808		; ffffffffc0000010H
; Line 31
	mov	rcx, QWORD PTR pIrp$[rsp]
	call	IoGetCurrentIrpStackLocation
	mov	QWORD PTR irpsp$[rsp], rax
; Line 32
	mov	rax, QWORD PTR irpsp$[rsp]
	mov	eax, DWORD PTR [rax+24]
	mov	DWORD PTR uIoControlCode$[rsp], eax
; Line 33
	mov	rax, QWORD PTR pIrp$[rsp]
	mov	rax, QWORD PTR [rax+24]
	mov	QWORD PTR InputBuffer$[rsp], rax
; Line 34
	mov	rax, QWORD PTR pIrp$[rsp]
	mov	rax, QWORD PTR [rax+112]
	mov	QWORD PTR OutputBuffer$[rsp], rax
; Line 35
	mov	rax, QWORD PTR irpsp$[rsp]
	mov	eax, DWORD PTR [rax+16]
	mov	DWORD PTR InputSize$[rsp], eax
; Line 36
	mov	rax, QWORD PTR irpsp$[rsp]
	mov	eax, DWORD PTR [rax+8]
	mov	DWORD PTR OutputSize$[rsp], eax
; Line 38
	mov	eax, DWORD PTR uIoControlCode$[rsp]
	mov	DWORD PTR tv71[rsp], eax
	cmp	DWORD PTR tv71[rsp], 2236420		; 00222004H
	je	SHORT $LN4@DispatchIo
	jmp	$LN5@DispatchIo
$LN4@DispatchIo:
; Line 44
	xor	edx, edx
	mov	rcx, QWORD PTR MyName
	call	QWORD PTR __imp_ExFreePoolWithTag
; Line 45
	mov	eax, DWORD PTR InputSize$[rsp]
	add	eax, 2
	mov	edx, eax
	xor	ecx, ecx
	call	QWORD PTR __imp_ExAllocatePool
	mov	QWORD PTR MyName, rax
; Line 46
	mov	rax, QWORD PTR MyName
	mov	QWORD PTR ProtectedFile+8, rax
; Line 47
	movzx	eax, WORD PTR InputSize$[rsp]
	mov	WORD PTR ProtectedFile, ax
; Line 48
	movzx	eax, WORD PTR InputSize$[rsp]
	add	eax, 2
	mov	WORD PTR ProtectedFile+2, ax
; Line 49
	mov	eax, DWORD PTR InputSize$[rsp]
	add	eax, 2
	mov	r8d, eax
	xor	edx, edx
	mov	rcx, QWORD PTR ProtectedFile+8
	call	memset
; Line 50
	mov	r8d, DWORD PTR InputSize$[rsp]
	mov	rdx, QWORD PTR InputBuffer$[rsp]
	mov	rcx, QWORD PTR ProtectedFile+8
	call	memcpy
; Line 51
	jmp	SHORT $LN13@DispatchIo
$LN11@DispatchIo:
$LN13@DispatchIo:
; Line 56
	mov	DWORD PTR st$[rsp], 0
$LN5@DispatchIo:
; Line 60
	cmp	DWORD PTR st$[rsp], 0
	jne	SHORT $LN2@DispatchIo
; Line 61
	mov	ecx, DWORD PTR OutputSize$[rsp]
	mov	rax, QWORD PTR pIrp$[rsp]
	mov	QWORD PTR [rax+56], rcx
; Line 62
	jmp	SHORT $LN1@DispatchIo
$LN2@DispatchIo:
; Line 63
	mov	rax, QWORD PTR pIrp$[rsp]
	mov	QWORD PTR [rax+56], 0
$LN1@DispatchIo:
; Line 64
	mov	rcx, QWORD PTR pIrp$[rsp]
	mov	eax, DWORD PTR st$[rsp]
	mov	DWORD PTR [rcx+48], eax
; Line 65
	xor	edx, edx
	mov	rcx, QWORD PTR pIrp$[rsp]
	call	QWORD PTR __imp_IofCompleteRequest
; Line 66
	mov	eax, DWORD PTR st$[rsp]
$LN9@DispatchIo:
; Line 67
	add	rsp, 88					; 00000058H
	ret	0
DispatchIoctl ENDP
; Function compile flags: /Odtp
_TEXT	ENDS
text$x	SEGMENT
st$ = 32
InputBuffer$ = 40
irpsp$ = 48
OutputBuffer$ = 56
OutputSize$ = 64
InputSize$ = 68
uIoControlCode$ = 72
tv71 = 76
DeviceObject$ = 96
pIrp$ = 104
DispatchIoctl$filt$0 PROC
	push	rbp
	sub	rsp, 32					; 00000020H
	mov	rbp, rdx
$LN10@DispatchIo@2:
; Line 52
	mov	eax, 1
$LN12@DispatchIo@2:
	add	rsp, 32					; 00000020H
	pop	rbp
	ret	0
DispatchIoctl$filt$0 ENDP
; Function compile flags: /Odtp
text$x	ENDS
;	COMDAT IoGetCurrentIrpStackLocation
_TEXT	SEGMENT
Irp$ = 8
IoGetCurrentIrpStackLocation PROC			; COMDAT
; File c:\winddk\7600.16385.1\inc\ddk\wdm.h
; Line 23316
	mov	QWORD PTR [rsp+8], rcx
; Line 23318
	mov	rax, QWORD PTR Irp$[rsp]
	mov	rax, QWORD PTR [rax+184]
; Line 23319
	ret	0
IoGetCurrentIrpStackLocation ENDP
_TEXT	ENDS
PUBLIC	DriverReinitialize
EXTRN	__imp_RtlInitUnicodeString:PROC
pdata	SEGMENT
$pdata$DriverReinitialize DD imagerel $LN3
	DD	imagerel $LN3+64
	DD	imagerel $unwind$DriverReinitialize
pdata	ENDS
xdata	SEGMENT
$unwind$DriverReinitialize DD 011301H
	DD	04213H
; Function compile flags: /Odtp
xdata	ENDS
_TEXT	SEGMENT
DriverObject$ = 48
Context$ = 56
Count$ = 64
DriverReinitialize PROC
; File d:\projects\testminifilter\driver\driver.c
; Line 70
$LN3:
	mov	DWORD PTR [rsp+24], r8d
	mov	QWORD PTR [rsp+16], rdx
	mov	QWORD PTR [rsp+8], rcx
	sub	rsp, 40					; 00000028H
; Line 71
	lea	rdx, OFFSET FLAT:$SG22074
	lea	rcx, OFFSET FLAT:ProtectedFile
	call	QWORD PTR __imp_RtlInitUnicodeString
; Line 72
	mov	edx, 20
	xor	ecx, ecx
	call	QWORD PTR __imp_ExAllocatePool
	mov	QWORD PTR MyName, rax
; Line 73
	add	rsp, 40					; 00000028H
	ret	0
DriverReinitialize ENDP
_TEXT	ENDS
PUBLIC	DriverEntry
EXTRN	__imp_IoCreateSymbolicLink:PROC
EXTRN	__imp_IoCreateDevice:PROC
EXTRN	InitializeMiniFilter:PROC
EXTRN	__imp_IoRegisterDriverReinitialization:PROC
pdata	SEGMENT
$pdata$DriverEntry DD imagerel $LN6
	DD	imagerel $LN6+347
	DD	imagerel $unwind$DriverEntry
pdata	ENDS
xdata	SEGMENT
$unwind$DriverEntry DD 010e01H
	DD	0e20eH
; Function compile flags: /Odtp
xdata	ENDS
_TEXT	SEGMENT
pDevObj$ = 64
st$ = 72
uniLinkName$ = 80
uniDevName$ = 96
DriverObject$ = 128
RegistryString$ = 136
DriverEntry PROC
; Line 76
$LN6:
	mov	QWORD PTR [rsp+16], rdx
	mov	QWORD PTR [rsp+8], rcx
	sub	rsp, 120				; 00000078H
; Line 77
	mov	DWORD PTR st$[rsp], 0
; Line 78
	mov	eax, 44					; 0000002cH
	mov	WORD PTR uniDevName$[rsp], ax
	mov	eax, 46					; 0000002eH
	mov	WORD PTR uniDevName$[rsp+2], ax
	lea	rax, OFFSET FLAT:$SG22085
	mov	QWORD PTR uniDevName$[rsp+8], rax
; Line 79
	mov	eax, 52					; 00000034H
	mov	WORD PTR uniLinkName$[rsp], ax
	mov	eax, 54					; 00000036H
	mov	WORD PTR uniLinkName$[rsp+2], ax
	lea	rax, OFFSET FLAT:$SG22088
	mov	QWORD PTR uniLinkName$[rsp+8], rax
; Line 80
	mov	QWORD PTR pDevObj$[rsp], 0
; Line 82
	mov	rcx, QWORD PTR DriverObject$[rsp]
	lea	rax, OFFSET FLAT:DispatchCreateClose
	mov	QWORD PTR [rcx+112], rax
; Line 83
	mov	rcx, QWORD PTR DriverObject$[rsp]
	lea	rax, OFFSET FLAT:DispatchCreateClose
	mov	QWORD PTR [rcx+128], rax
; Line 84
	mov	rcx, QWORD PTR DriverObject$[rsp]
	lea	rax, OFFSET FLAT:DispatchIoctl
	mov	QWORD PTR [rcx+224], rax
; Line 85
	mov	rcx, QWORD PTR DriverObject$[rsp]
	lea	rax, OFFSET FLAT:DriverUnload
	mov	QWORD PTR [rcx+104], rax
; Line 87
	xor	r8d, r8d
	lea	rdx, OFFSET FLAT:DriverReinitialize
	mov	rcx, QWORD PTR DriverObject$[rsp]
	call	QWORD PTR __imp_IoRegisterDriverReinitialization
; Line 88
	mov	rdx, QWORD PTR RegistryString$[rsp]
	mov	rcx, QWORD PTR DriverObject$[rsp]
	call	InitializeMiniFilter
	mov	DWORD PTR st$[rsp], eax
; Line 89
	cmp	DWORD PTR st$[rsp], 0
	jl	SHORT $LN3@DriverEntr
; Line 91
	lea	rax, QWORD PTR pDevObj$[rsp]
	mov	QWORD PTR [rsp+48], rax
	mov	BYTE PTR [rsp+40], 0
	mov	DWORD PTR [rsp+32], 0
	mov	r9d, 34					; 00000022H
	lea	r8, QWORD PTR uniDevName$[rsp]
	xor	edx, edx
	mov	rcx, QWORD PTR DriverObject$[rsp]
	call	QWORD PTR __imp_IoCreateDevice
	mov	DWORD PTR st$[rsp], eax
; Line 92
	cmp	DWORD PTR st$[rsp], 0
	jge	SHORT $LN2@DriverEntr
	mov	eax, DWORD PTR st$[rsp]
	jmp	SHORT $LN4@DriverEntr
$LN2@DriverEntr:
; Line 93
	lea	rdx, QWORD PTR uniDevName$[rsp]
	lea	rcx, QWORD PTR uniLinkName$[rsp]
	call	QWORD PTR __imp_IoCreateSymbolicLink
	mov	DWORD PTR st$[rsp], eax
; Line 94
	cmp	DWORD PTR st$[rsp], 0
	jge	SHORT $LN1@DriverEntr
	mov	rcx, QWORD PTR pDevObj$[rsp]
	call	QWORD PTR __imp_IoDeleteDevice
$LN1@DriverEntr:
$LN3@DriverEntr:
; Line 96
	mov	eax, DWORD PTR st$[rsp]
$LN4@DriverEntr:
; Line 97
	add	rsp, 120				; 00000078H
	ret	0
DriverEntry ENDP
_TEXT	ENDS
END
