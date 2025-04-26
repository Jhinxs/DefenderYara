
rule TrojanSpy_Win32_Stelega_MR_MTB{
	meta:
		description = "TrojanSpy:Win32/Stelega.MR!MTB,SIGNATURE_TYPE_PEHSTR_EXT,07 00 07 00 0b 00 00 "
		
	strings :
		$a_02_0 = {b1 ea f6 d8 b2 5e c0 c8 03 2a c8 b0 02 80 f1 60 2a d1 b1 13 32 d3 80 ea 5b 32 d3 2a c2 2a c3 32 c3 2a c8 32 cb 2a cb fe c9 80 f1 5f 80 c1 19 32 cb d0 c1 f6 d9 80 f1 7b f6 d1 2a cb 32 cb 80 e9 4f c0 c1 03 80 c1 12 88 8b ?? ?? ?? ?? 43 81 fb ?? ?? ?? ?? 72 90 09 06 00 8a 83 } //7
		$a_00_1 = {63 6f 6e 74 61 63 74 2e 64 6c 6c } //1 contact.dll
		$a_00_2 = {57 65 6c 63 6f 6d 65 20 74 6f 20 61 30 20 63 6f 6e 74 61 63 74 20 4d 61 6e 61 67 65 72 } //1 Welcome to a0 contact Manager
		$a_00_3 = {75 72 6c 6d 6f 6e 2e 64 6c 6c } //1 urlmon.dll
		$a_00_4 = {45 64 69 74 61 20 43 6f 6e 74 61 63 74 } //1 Edita Contact
		$a_00_5 = {45 2d 6d 61 69 6c 20 61 64 } //1 E-mail ad
		$a_00_6 = {57 49 4e 49 4e 45 54 2e 64 6c 6c } //1 WININET.dll
		$a_00_7 = {52 45 53 55 54 49 4c 53 2e 64 6c 6c } //1 RESUTILS.dll
		$a_00_8 = {6c 6f 61 64 70 65 72 66 2e 64 6c 6c } //1 loadperf.dll
		$a_00_9 = {4e 6f 20 6d 61 74 63 68 20 66 6f 75 6e 64 21 } //1 No match found!
		$a_00_10 = {45 64 69 74 69 6e 67 20 27 25 73 27 } //1 Editing '%s'
	condition:
		((#a_02_0  & 1)*7+(#a_00_1  & 1)*1+(#a_00_2  & 1)*1+(#a_00_3  & 1)*1+(#a_00_4  & 1)*1+(#a_00_5  & 1)*1+(#a_00_6  & 1)*1+(#a_00_7  & 1)*1+(#a_00_8  & 1)*1+(#a_00_9  & 1)*1+(#a_00_10  & 1)*1) >=7
 
}