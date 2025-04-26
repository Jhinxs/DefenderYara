
rule Trojan_BAT_CryptInject_C_MTB{
	meta:
		description = "Trojan:BAT/CryptInject.C!MTB,SIGNATURE_TYPE_PEHSTR_EXT,08 00 08 00 08 00 00 "
		
	strings :
		$a_01_0 = {57 5f b6 1f 09 0f 00 00 00 fa 01 33 00 16 00 00 01 00 00 00 } //1
		$a_01_1 = {6b 72 6e 6c 73 73 2e 6b 72 6e 6c 5f 6d 6f 6e 61 63 6f 2e 72 65 73 6f 75 72 63 65 73 } //1 krnlss.krnl_monaco.resources
		$a_01_2 = {6b 00 72 00 6e 00 6c 00 73 00 73 00 2e 00 65 00 78 00 65 00 2e 00 63 00 6f 00 6e 00 66 00 69 00 67 00 } //1 krnlss.exe.config
		$a_01_3 = {42 00 75 00 6e 00 69 00 66 00 75 00 5f 00 55 00 49 00 5f 00 76 00 31 00 2e 00 35 00 2e 00 33 00 2e 00 64 00 6c 00 6c 00 } //1 Bunifu_UI_v1.5.3.dll
		$a_01_4 = {69 6e 6a 65 63 74 6f 72 2e 64 6c 6c } //1 injector.dll
		$a_01_5 = {70 00 61 00 73 00 74 00 65 00 62 00 69 00 6e 00 2e 00 63 00 6f 00 6d 00 2f 00 72 00 61 00 77 00 2f 00 72 00 54 00 33 00 55 00 43 00 51 00 52 00 73 00 } //1 pastebin.com/raw/rT3UCQRs
		$a_01_6 = {6b 72 6e 6c 73 73 2e 47 61 6d 65 73 2e 72 65 73 6f 75 72 63 65 } //1 krnlss.Games.resource
		$a_01_7 = {57 61 69 74 4e 61 6d 65 64 50 69 70 65 } //1 WaitNamedPipe
	condition:
		((#a_01_0  & 1)*1+(#a_01_1  & 1)*1+(#a_01_2  & 1)*1+(#a_01_3  & 1)*1+(#a_01_4  & 1)*1+(#a_01_5  & 1)*1+(#a_01_6  & 1)*1+(#a_01_7  & 1)*1) >=8
 
}