
rule TrojanSpy_Win32_Banker_AGY{
	meta:
		description = "TrojanSpy:Win32/Banker.AGY,SIGNATURE_TYPE_PEHSTR_EXT,0b 00 0b 00 0b 00 00 "
		
	strings :
		$a_01_0 = {43 68 61 6d 61 64 61 6e 61 49 6e 74 65 72 6e 65 74 32 } //1 ChamadanaInternet2
		$a_01_1 = {42 61 72 72 61 64 6f 45 78 70 6c 6f 72 65 72 32 } //1 BarradoExplorer2
		$a_01_2 = {43 6f 6e 66 69 67 75 72 61 65 73 64 65 42 6c 6f 71 75 65 61 64 6f 72 64 65 50 6f 70 75 70 73 32 } //1 ConfiguraesdeBloqueadordePopups2
		$a_01_3 = {53 6f 62 72 65 6f 49 6e 74 65 72 6e 65 74 45 78 70 6c 6f 72 65 72 32 } //1 SobreoInternetExplorer2
		$a_01_4 = {52 65 6c 61 74 72 69 6f 64 65 50 72 69 76 61 63 69 64 61 64 65 } //1 RelatriodePrivacidade
		$a_01_5 = {64 65 20 53 65 67 75 72 61 6e } //1 de Seguran
		$a_00_6 = {65 73 20 64 61 20 69 6e 74 65 72 6e 65 74 2e 2e 2e } //1 es da internet...
		$a_00_7 = {65 64 74 73 65 6e 68 61 } //1 edtsenha
		$a_00_8 = {62 6c 6f 63 6b 69 6e 70 75 74 } //1 blockinput
		$a_00_9 = {67 65 74 65 78 65 } //1 getexe
		$a_00_10 = {6d 6f 75 73 65 68 6f 6f 6b } //1 mousehook
	condition:
		((#a_01_0  & 1)*1+(#a_01_1  & 1)*1+(#a_01_2  & 1)*1+(#a_01_3  & 1)*1+(#a_01_4  & 1)*1+(#a_01_5  & 1)*1+(#a_00_6  & 1)*1+(#a_00_7  & 1)*1+(#a_00_8  & 1)*1+(#a_00_9  & 1)*1+(#a_00_10  & 1)*1) >=11
 
}