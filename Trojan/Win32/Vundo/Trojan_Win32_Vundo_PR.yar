
rule Trojan_Win32_Vundo_PR{
	meta:
		description = "Trojan:Win32/Vundo.PR,SIGNATURE_TYPE_PEHSTR_EXT,05 00 05 00 07 00 00 "
		
	strings :
		$a_00_0 = {d3 c0 28 06 46 } //1
		$a_00_1 = {73 6f 66 74 77 61 72 65 5c 6d 69 63 72 6f 73 6f 66 74 5c 77 69 6e 64 6f 77 73 5c 63 75 72 72 65 6e 74 76 65 72 73 69 6f 6e 5c 72 75 6e } //1 software\microsoft\windows\currentversion\run
		$a_01_2 = {54 46 61 6b 65 52 65 66 65 72 72 65 72 } //1 TFakeReferrer
		$a_01_3 = {54 72 65 6e 64 4d 69 63 72 6f 00 } //1
		$a_01_4 = {2e 00 67 00 6f 00 6f 00 67 00 6c 00 65 00 61 00 64 00 73 00 65 00 72 00 76 00 69 00 63 00 65 00 73 00 2e 00 } //1 .googleadservices.
		$a_01_5 = {65 00 6e 00 74 00 65 00 72 00 70 00 72 00 69 00 73 00 65 00 5f 00 77 00 65 00 62 00 5f 00 73 00 74 00 6f 00 72 00 65 00 } //1 enterprise_web_store
		$a_01_6 = {d3 c0 28 07 47 e2 f9 } //1
	condition:
		((#a_00_0  & 1)*1+(#a_00_1  & 1)*1+(#a_01_2  & 1)*1+(#a_01_3  & 1)*1+(#a_01_4  & 1)*1+(#a_01_5  & 1)*1+(#a_01_6  & 1)*1) >=5
 
}