
rule PWS_Win32_Ldpinch_CQ{
	meta:
		description = "PWS:Win32/Ldpinch.CQ,SIGNATURE_TYPE_PEHSTR,0b 00 0b 00 05 00 00 "
		
	strings :
		$a_01_0 = {c7 03 f4 00 00 00 33 c0 89 43 04 } //10
		$a_01_1 = {67 4a 6e 5f 33 34 32 38 37 35 36 38 5f 54 37 44 44 } //1 gJn_34287568_T7DD
		$a_01_2 = {61 74 75 61 6e 64 6f 2e 70 68 70 } //1 atuando.php
		$a_01_3 = {43 3a 5c 73 79 73 74 65 61 6d 5c 6a 61 76 61 75 70 64 61 74 65 } //1 C:\systeam\javaupdate
		$a_01_4 = {2e 74 6f 2f 2f 63 64 6d 6f 64 2e 68 74 6d 6c } //1 .to//cdmod.html
	condition:
		((#a_01_0  & 1)*10+(#a_01_1  & 1)*1+(#a_01_2  & 1)*1+(#a_01_3  & 1)*1+(#a_01_4  & 1)*1) >=11
 
}