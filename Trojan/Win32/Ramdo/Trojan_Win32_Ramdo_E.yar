
rule Trojan_Win32_Ramdo_E{
	meta:
		description = "Trojan:Win32/Ramdo.E,SIGNATURE_TYPE_PEHSTR_EXT,04 00 04 00 05 00 00 "
		
	strings :
		$a_03_0 = {6a 03 6a 00 e8 ?? ?? ?? ?? 89 45 fc ff 75 10 ff 75 0c ff 75 08 ff 55 fc } //1
		$a_01_1 = {68 3e dd ef 6c 6a 03 6a 00 e8 } //1
		$a_01_2 = {68 27 a8 02 84 6a 03 6a 00 e8 } //1
		$a_01_3 = {89 85 78 ff ff ff 83 bd 78 ff ff ff 00 0f 84 b8 02 00 00 8d 45 84 50 68 00 10 00 00 } //1
		$a_03_4 = {89 85 bc fb ff ff 83 bd bc fb ff ff 00 76 0f c7 85 dc fd ff ff 01 00 00 00 e9 ?? ?? 00 00 eb ?? c7 85 b8 fb ff ff 08 02 00 00 83 bd d8 fd ff ff 00 74 } //1
	condition:
		((#a_03_0  & 1)*1+(#a_01_1  & 1)*1+(#a_01_2  & 1)*1+(#a_01_3  & 1)*1+(#a_03_4  & 1)*1) >=4
 
}