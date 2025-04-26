
rule Trojan_Win32_Startpage_WO{
	meta:
		description = "Trojan:Win32/Startpage.WO,SIGNATURE_TYPE_PEHSTR_EXT,06 00 05 00 06 00 00 "
		
	strings :
		$a_01_0 = {59 7a 44 6f 63 6b 43 6c 61 73 73 } //1 YzDockClass
		$a_01_1 = {5c 4d 61 63 4a 69 65 2e 6b 65 79 } //1 \MacJie.key
		$a_01_2 = {6e 64 66 68 69 7e 2e 74 6d 70 } //1 ndfhi~.tmp
		$a_01_3 = {6e 64 66 68 69 2e 62 61 74 } //1 ndfhi.bat
		$a_03_4 = {63 6d 63 67 2e 64 6c 6c 90 09 02 00 5c } //1
		$a_01_5 = {c9 cf cd f8 b3 e5 c0 cb 09 74 79 70 65 2e 61 70 70 09 } //1
	condition:
		((#a_01_0  & 1)*1+(#a_01_1  & 1)*1+(#a_01_2  & 1)*1+(#a_01_3  & 1)*1+(#a_03_4  & 1)*1+(#a_01_5  & 1)*1) >=5
 
}