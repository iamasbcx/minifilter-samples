; Listing generated by Microsoft (R) Optimizing Compiler Version 15.00.30729.207 

	TITLE	D:\Projects\TestMiniFilter\driver\MiniFilter.c
	.686P
	.XMM
	include listing.inc
	.model	flat

INCLUDELIB LIBCMT
INCLUDELIB OLDNAMES

PUBLIC	_hFilter
_DATA	SEGMENT
COMM	_ProtectedFile:QWORD
_DATA	ENDS
_BSS	SEGMENT
_hFilter DD	01H DUP (?)
_BSS	ENDS
_DATA	SEGMENT
$SG32364 DB	'%', 00H, 'w', 00H, 's', 00H, '\', 00H, 'I', 00H, 'n', 00H
	DB	's', 00H, 't', 00H, 'a', 00H, 'n', 00H, 'c', 00H, 'e', 00H, 's'
	DB	00H, 00H, 00H
$SG32367 DB	'%', 00H, 'w', 00H, 's', 00H, ' ', 00H, 'I', 00H, 'n', 00H
	DB	's', 00H, 't', 00H, 'a', 00H, 'n', 00H, 'c', 00H, 'e', 00H, 00H
	DB	00H
	ORG $+2
$SG32370 DB	'D', 00H, 'e', 00H, 'f', 00H, 'a', 00H, 'u', 00H, 'l', 00H
	DB	't', 00H, 'I', 00H, 'n', 00H, 's', 00H, 't', 00H, 'a', 00H, 'n'
	DB	00H, 'c', 00H, 'e', 00H, 00H, 00H
$SG32374 DB	'%', 00H, 'w', 00H, 's', 00H, '\', 00H, 'I', 00H, 'n', 00H
	DB	's', 00H, 't', 00H, 'a', 00H, 'n', 00H, 'c', 00H, 'e', 00H, 's'
	DB	00H, '%', 00H, 'w', 00H, 's', 00H, ' ', 00H, 'I', 00H, 'n', 00H
	DB	's', 00H, 't', 00H, 'a', 00H, 'n', 00H, 'c', 00H, 'e', 00H, 00H
	DB	00H
$SG32379 DB	'A', 00H, 'l', 00H, 't', 00H, 'i', 00H, 't', 00H, 'u', 00H
	DB	'd', 00H, 'e', 00H, 00H, 00H
	ORG $+2
$SG32383 DB	'F', 00H, 'l', 00H, 'a', 00H, 'g', 00H, 's', 00H, 00H, 00H
$SG32396 DB	'3', 00H, '2', 00H, '1', 00H, '2', 00H, '2', 00H, '9', 00H
	DB	00H, 00H
_DATA	ENDS
PUBLIC	_SpyFindSubString@8
EXTRN	__wcsnicmp:PROC
EXTRN	__imp__RtlEqualUnicodeString@12:PROC
; Function compile flags: /Odtp
_TEXT	SEGMENT
_Index$ = -4						; size = 4
_String$ = 8						; size = 4
_SubString$ = 12					; size = 4
_SpyFindSubString@8 PROC
; File d:\projects\testminifilter\driver\minifilter.c
; Line 8
	push	ebp
	mov	ebp, esp
	push	ecx
; Line 10
	push	1
	mov	eax, DWORD PTR _SubString$[ebp]
	push	eax
	mov	ecx, DWORD PTR _String$[ebp]
	push	ecx
	call	DWORD PTR __imp__RtlEqualUnicodeString@12
	movzx	edx, al
	test	edx, edx
	je	SHORT $LN5@SpyFindSub
	mov	al, 1
	jmp	SHORT $LN6@SpyFindSub
$LN5@SpyFindSub:
; Line 11
	mov	DWORD PTR _Index$[ebp], 0
	jmp	SHORT $LN4@SpyFindSub
$LN3@SpyFindSub:
	mov	eax, DWORD PTR _Index$[ebp]
	add	eax, 1
	mov	DWORD PTR _Index$[ebp], eax
$LN4@SpyFindSub:
	mov	ecx, DWORD PTR _SubString$[ebp]
	movzx	edx, WORD PTR [ecx]
	shr	edx, 1
	add	edx, DWORD PTR _Index$[ebp]
	mov	eax, DWORD PTR _String$[ebp]
	movzx	ecx, WORD PTR [eax]
	shr	ecx, 1
	cmp	edx, ecx
	ja	SHORT $LN2@SpyFindSub
; Line 13
	mov	edx, DWORD PTR _SubString$[ebp]
	movzx	eax, WORD PTR [edx]
	shr	eax, 1
	push	eax
	mov	ecx, DWORD PTR _SubString$[ebp]
	mov	edx, DWORD PTR [ecx+4]
	push	edx
	mov	eax, DWORD PTR _String$[ebp]
	mov	ecx, DWORD PTR [eax+4]
	mov	edx, DWORD PTR _Index$[ebp]
	lea	eax, DWORD PTR [ecx+edx*2]
	push	eax
	call	__wcsnicmp
	add	esp, 12					; 0000000cH
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
	mov	esp, ebp
	pop	ebp
	ret	8
_SpyFindSubString@8 ENDP
_TEXT	ENDS
PUBLIC	_TpMFlt_SetInformationPreCall@12
EXTRN	_FltReleaseFileNameInformation@4:PROC
EXTRN	_FltParseFileNameInformation@4:PROC
EXTRN	_FltGetFileNameInformation@12:PROC
; Function compile flags: /Odtp
_TEXT	SEGMENT
_st$ = -8						; size = 4
_NameInfo$ = -4						; size = 4
_FilterCallbackData$ = 8				; size = 4
_FilterRelatedObjects$ = 12				; size = 4
_CompletionContext$ = 16				; size = 4
_TpMFlt_SetInformationPreCall@12 PROC
; Line 19
	push	ebp
	mov	ebp, esp
	sub	esp, 8
; Line 21
	lea	eax, DWORD PTR _NameInfo$[ebp]
	push	eax
	push	257					; 00000101H
	mov	ecx, DWORD PTR _FilterCallbackData$[ebp]
	push	ecx
	call	_FltGetFileNameInformation@12
	mov	DWORD PTR _st$[ebp], eax
; Line 22
	cmp	DWORD PTR _st$[ebp], 0
	jl	SHORT $LN4@TpMFlt_Set
	mov	edx, DWORD PTR _FilterCallbackData$[ebp]
	mov	eax, DWORD PTR [edx+8]
	movzx	ecx, BYTE PTR [eax+4]
	cmp	ecx, 6
	jne	SHORT $LN4@TpMFlt_Set
; Line 24
	mov	edx, DWORD PTR _NameInfo$[ebp]
	push	edx
	call	_FltParseFileNameInformation@4
	mov	DWORD PTR _st$[ebp], eax
; Line 25
	cmp	DWORD PTR _st$[ebp], 0
	jl	SHORT $LN4@TpMFlt_Set
; Line 27
	push	OFFSET _ProtectedFile
	mov	eax, DWORD PTR _NameInfo$[ebp]
	add	eax, 8
	push	eax
	call	_SpyFindSubString@8
	movzx	ecx, al
	test	ecx, ecx
	je	SHORT $LN4@TpMFlt_Set
; Line 29
	mov	edx, DWORD PTR _NameInfo$[ebp]
	push	edx
	call	_FltReleaseFileNameInformation@4
; Line 30
	mov	eax, 3
	jmp	SHORT $LN5@TpMFlt_Set
$LN4@TpMFlt_Set:
; Line 34
	cmp	DWORD PTR _st$[ebp], 0
	jl	SHORT $LN1@TpMFlt_Set
	mov	eax, DWORD PTR _NameInfo$[ebp]
	push	eax
	call	_FltReleaseFileNameInformation@4
$LN1@TpMFlt_Set:
; Line 35
	mov	eax, 1
$LN5@TpMFlt_Set:
; Line 36
	mov	esp, ebp
	pop	ebp
	ret	12					; 0000000cH
_TpMFlt_SetInformationPreCall@12 ENDP
_TEXT	ENDS
PUBLIC	_PrepMiniFilter@8
EXTRN	__imp__RtlWriteRegistryValue@24:PROC
EXTRN	_wcslen:PROC
EXTRN	__imp__RtlCreateRegistryKey@8:PROC
EXTRN	_swprintf:PROC
EXTRN	_memset:PROC
EXTRN	__imp__MmIsAddressValid@4:PROC
EXTRN	_wcsrchr:PROC
EXTRN	_memset:PROC
; Function compile flags: /Odtp
_TEXT	SEGMENT
_dwData$32382 = -1052					; size = 4
_Data$ = -1048						; size = 520
_TempStr$ = -528					; size = 520
_st$ = -8						; size = 4
_wPtr$ = -4						; size = 4
_RegistryString$ = 8					; size = 4
_Altitude$ = 12						; size = 4
_PrepMiniFilter@8 PROC
; Line 39
	push	ebp
	mov	ebp, esp
	sub	esp, 1052				; 0000041cH
; Line 40
	mov	DWORD PTR _st$[ebp], -1073741823	; c0000001H
; Line 41
	xor	eax, eax
	mov	WORD PTR _TempStr$[ebp], ax
	push	518					; 00000206H
	push	0
	lea	ecx, DWORD PTR _TempStr$[ebp+2]
	push	ecx
	call	_memset
	add	esp, 12					; 0000000cH
	xor	edx, edx
	mov	WORD PTR _Data$[ebp], dx
	push	518					; 00000206H
	push	0
	lea	eax, DWORD PTR _Data$[ebp+2]
	push	eax
	call	_memset
	add	esp, 12					; 0000000cH
; Line 42
	push	92					; 0000005cH
	mov	ecx, DWORD PTR _RegistryString$[ebp]
	mov	edx, DWORD PTR [ecx+4]
	push	edx
	call	_wcsrchr
	add	esp, 8
	mov	DWORD PTR _wPtr$[ebp], eax
; Line 43
	mov	eax, DWORD PTR _wPtr$[ebp]
	push	eax
	call	DWORD PTR __imp__MmIsAddressValid@4
	movzx	ecx, al
	test	ecx, ecx
	jne	SHORT $LN5@PrepMiniFi
	mov	eax, -1073741811			; c000000dH
	jmp	$LN6@PrepMiniFi
$LN5@PrepMiniFi:
; Line 44
	push	520					; 00000208H
	push	0
	lea	edx, DWORD PTR _TempStr$[ebp]
	push	edx
	call	_memset
	add	esp, 12					; 0000000cH
; Line 45
	mov	eax, DWORD PTR _wPtr$[ebp]
	push	eax
	push	OFFSET $SG32364
	lea	ecx, DWORD PTR _TempStr$[ebp]
	push	ecx
	call	_swprintf
	add	esp, 12					; 0000000cH
; Line 47
	lea	edx, DWORD PTR _TempStr$[ebp]
	push	edx
	push	1
	call	DWORD PTR __imp__RtlCreateRegistryKey@8
	mov	DWORD PTR _st$[ebp], eax
; Line 48
	cmp	DWORD PTR _st$[ebp], 0
	jl	$LN4@PrepMiniFi
; Line 50
	mov	eax, DWORD PTR _wPtr$[ebp]
	add	eax, 2
	push	eax
	push	OFFSET $SG32367
	lea	ecx, DWORD PTR _Data$[ebp]
	push	ecx
	call	_swprintf
	add	esp, 12					; 0000000cH
; Line 52
	lea	edx, DWORD PTR _Data$[ebp]
	push	edx
	call	_wcslen
	add	esp, 4
	lea	eax, DWORD PTR [eax+eax+2]
	push	eax
	lea	ecx, DWORD PTR _Data$[ebp]
	push	ecx
	push	1
	push	OFFSET $SG32370
	lea	edx, DWORD PTR _TempStr$[ebp]
	push	edx
	push	1
	call	DWORD PTR __imp__RtlWriteRegistryValue@24
	mov	DWORD PTR _st$[ebp], eax
; Line 53
	cmp	DWORD PTR _st$[ebp], 0
	jl	$LN4@PrepMiniFi
; Line 55
	push	520					; 00000208H
	push	0
	lea	eax, DWORD PTR _TempStr$[ebp]
	push	eax
	call	_memset
	add	esp, 12					; 0000000cH
; Line 56
	mov	ecx, DWORD PTR _wPtr$[ebp]
	push	ecx
	mov	edx, DWORD PTR _wPtr$[ebp]
	push	edx
	push	OFFSET $SG32374
	lea	eax, DWORD PTR _TempStr$[ebp]
	push	eax
	call	_swprintf
	add	esp, 16					; 00000010H
; Line 58
	lea	ecx, DWORD PTR _TempStr$[ebp]
	push	ecx
	push	1
	call	DWORD PTR __imp__RtlCreateRegistryKey@8
	mov	DWORD PTR _st$[ebp], eax
; Line 59
	cmp	DWORD PTR _st$[ebp], 0
	jl	SHORT $LN4@PrepMiniFi
; Line 61
	mov	edx, DWORD PTR _Altitude$[ebp]
	push	edx
	call	_wcslen
	add	esp, 4
	lea	eax, DWORD PTR [eax+eax+2]
	push	eax
	mov	ecx, DWORD PTR _Altitude$[ebp]
	push	ecx
	push	1
	push	OFFSET $SG32379
	lea	edx, DWORD PTR _TempStr$[ebp]
	push	edx
	push	1
	call	DWORD PTR __imp__RtlWriteRegistryValue@24
	mov	DWORD PTR _st$[ebp], eax
; Line 62
	cmp	DWORD PTR _st$[ebp], 0
	jl	SHORT $LN4@PrepMiniFi
; Line 64
	mov	DWORD PTR _dwData$32382[ebp], 0
; Line 65
	push	4
	lea	eax, DWORD PTR _dwData$32382[ebp]
	push	eax
	push	4
	push	OFFSET $SG32383
	lea	ecx, DWORD PTR _TempStr$[ebp]
	push	ecx
	push	1
	call	DWORD PTR __imp__RtlWriteRegistryValue@24
	mov	DWORD PTR _st$[ebp], eax
$LN4@PrepMiniFi:
; Line 70
	mov	eax, DWORD PTR _st$[ebp]
$LN6@PrepMiniFi:
; Line 71
	mov	esp, ebp
	pop	ebp
	ret	8
_PrepMiniFilter@8 ENDP
_TEXT	ENDS
PUBLIC	_FinalizeMiniFilterCallback@4
EXTRN	_FltUnregisterFilter@4:PROC
; Function compile flags: /Odtp
_TEXT	SEGMENT
_Flags$ = 8						; size = 4
_FinalizeMiniFilterCallback@4 PROC
; Line 74
	push	ebp
	mov	ebp, esp
; Line 75
	mov	eax, DWORD PTR _hFilter
	push	eax
	call	_FltUnregisterFilter@4
; Line 76
	mov	DWORD PTR _Flags$[ebp], 1
; Line 77
	xor	eax, eax
; Line 78
	pop	ebp
	ret	4
_FinalizeMiniFilterCallback@4 ENDP
_TEXT	ENDS
PUBLIC	_InitializeMiniFilter@8
EXTRN	_FltStartFiltering@4:PROC
EXTRN	_FltRegisterFilter@12:PROC
; Function compile flags: /Odtp
_TEXT	SEGMENT
_FltOpReg$32400 = -100					; size = 40
_FltReg$32399 = -60					; size = 56
_st$ = -4						; size = 4
_DriverObject$ = 8					; size = 4
_RegistryPath$ = 12					; size = 4
_InitializeMiniFilter@8 PROC
; Line 81
	push	ebp
	mov	ebp, esp
	sub	esp, 100				; 00000064H
; Line 82
	push	OFFSET $SG32396
	mov	eax, DWORD PTR _RegistryPath$[ebp]
	push	eax
	call	_PrepMiniFilter@8
	mov	DWORD PTR _st$[ebp], eax
; Line 83
	cmp	DWORD PTR _st$[ebp], 0
	jl	SHORT $LN2@Initialize
; Line 87
	push	56					; 00000038H
	push	0
	lea	ecx, DWORD PTR _FltReg$32399[ebp]
	push	ecx
	call	_memset
	add	esp, 12					; 0000000cH
; Line 88
	mov	edx, 56					; 00000038H
	mov	WORD PTR _FltReg$32399[ebp], dx
; Line 89
	mov	eax, 514				; 00000202H
	mov	WORD PTR _FltReg$32399[ebp+2], ax
; Line 90
	mov	DWORD PTR _FltReg$32399[ebp+16], OFFSET _FinalizeMiniFilterCallback@4
; Line 91
	lea	ecx, DWORD PTR _FltOpReg$32400[ebp]
	mov	DWORD PTR _FltReg$32399[ebp+12], ecx
; Line 92
	push	40					; 00000028H
	push	0
	lea	edx, DWORD PTR _FltOpReg$32400[ebp]
	push	edx
	call	_memset
	add	esp, 12					; 0000000cH
; Line 93
	mov	BYTE PTR _FltOpReg$32400[ebp], 6
; Line 94
	mov	DWORD PTR _FltOpReg$32400[ebp+4], 1
; Line 95
	mov	DWORD PTR _FltOpReg$32400[ebp+8], OFFSET _TpMFlt_SetInformationPreCall@12
; Line 96
	mov	BYTE PTR _FltOpReg$32400[ebp+20], 128	; 00000080H
; Line 97
	push	OFFSET _hFilter
	lea	eax, DWORD PTR _FltReg$32399[ebp]
	push	eax
	mov	ecx, DWORD PTR _DriverObject$[ebp]
	push	ecx
	call	_FltRegisterFilter@12
	mov	DWORD PTR _st$[ebp], eax
; Line 98
	cmp	DWORD PTR _st$[ebp], 0
	jl	SHORT $LN2@Initialize
; Line 100
	mov	edx, DWORD PTR _hFilter
	push	edx
	call	_FltStartFiltering@4
	mov	DWORD PTR _st$[ebp], eax
$LN2@Initialize:
; Line 103
	mov	eax, DWORD PTR _st$[ebp]
; Line 104
	mov	esp, ebp
	pop	ebp
	ret	8
_InitializeMiniFilter@8 ENDP
_TEXT	ENDS
END