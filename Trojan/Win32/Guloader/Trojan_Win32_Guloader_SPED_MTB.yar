
rule Trojan_Win32_Guloader_SPED_MTB{
	meta:
		description = "Trojan:Win32/Guloader.SPED!MTB,SIGNATURE_TYPE_PEHSTR_EXT,06 00 06 00 06 00 00 "
		
	strings :
		$a_01_0 = {56 73 65 6e 74 6c 69 67 68 65 64 73 6b 72 69 74 65 72 69 65 74 73 5c 73 70 72 72 65 6e 5c 67 6f 67 6f 70 69 67 65 6e } //1 Vsentlighedskriteriets\sprren\gogopigen
		$a_01_1 = {55 6e 69 6b 5c 73 6d 65 72 74 65 6e 64 65 73 5c 70 61 72 6c 6f 72 6d 61 69 64 2e 66 69 6c } //1 Unik\smertendes\parlormaid.fil
		$a_01_2 = {66 61 72 6d 79 5c 73 74 61 6d 68 65 72 72 65 72 73 5c 73 6b 6f 62 72 73 74 65 72 2e 64 65 61 } //1 farmy\stamherrers\skobrster.dea
		$a_01_3 = {45 6c 65 76 61 74 65 64 5c 62 65 76 69 6c 6c 69 6e 67 73 6d 73 73 69 67 74 } //1 Elevated\bevillingsmssigt
		$a_01_4 = {6e 6f 6e 63 6f 6d 62 69 6e 69 6e 67 2e 62 65 73 } //1 noncombining.bes
		$a_01_5 = {73 70 65 72 6d 61 74 6f 7a 6f 69 63 2e 69 6e 69 } //1 spermatozoic.ini
	condition:
		((#a_01_0  & 1)*1+(#a_01_1  & 1)*1+(#a_01_2  & 1)*1+(#a_01_3  & 1)*1+(#a_01_4  & 1)*1+(#a_01_5  & 1)*1) >=6
 
}