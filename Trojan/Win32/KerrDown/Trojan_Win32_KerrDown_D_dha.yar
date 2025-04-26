
rule Trojan_Win32_KerrDown_D_dha{
	meta:
		description = "Trojan:Win32/KerrDown.D!dha,SIGNATURE_TYPE_PEHSTR_EXT,03 00 03 00 06 00 00 "
		
	strings :
		$a_01_0 = {75 00 70 00 64 00 61 00 74 00 65 00 2e 00 6d 00 73 00 6f 00 66 00 66 00 69 00 63 00 65 00 2d 00 74 00 65 00 6d 00 70 00 6c 00 61 00 74 00 65 00 73 00 2e 00 69 00 6e 00 66 00 6f 00 } //3 update.msoffice-templates.info
		$a_01_1 = {7a 00 1f 00 8f 00 3f 00 21 00 7c 00 28 00 5a 00 } //1
		$a_01_2 = {00 53 61 66 65 6d 6f 6e 00 } //1
		$a_03_3 = {6d 73 76 63 c7 [0-03] 72 74 2e 64 66 c7 [0-03] 6c 6c c6 } //2
		$a_03_4 = {ff c5 dc 62 c7 85 ?? ?? ff ff ed 2b a2 cb } //1
		$a_03_5 = {52 29 fa 17 c7 [0-06] 1b 74 ee 47 } //1
	condition:
		((#a_01_0  & 1)*3+(#a_01_1  & 1)*1+(#a_01_2  & 1)*1+(#a_03_3  & 1)*2+(#a_03_4  & 1)*1+(#a_03_5  & 1)*1) >=3
 
}