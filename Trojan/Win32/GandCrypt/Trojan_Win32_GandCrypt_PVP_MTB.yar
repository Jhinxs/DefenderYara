
rule Trojan_Win32_GandCrypt_PVP_MTB{
	meta:
		description = "Trojan:Win32/GandCrypt.PVP!MTB,SIGNATURE_TYPE_PEHSTR_EXT,03 00 03 00 04 00 00 "
		
	strings :
		$a_02_0 = {69 c0 fd 43 03 00 8d 8d ?? ?? ff ff 51 05 c3 9e 26 00 68 ?? ?? ?? ?? a3 90 09 05 00 a1 } //2
		$a_02_1 = {46 3b f3 7c 90 09 08 00 e8 ?? ff ff ff 30 04 } //1
		$a_02_2 = {69 c0 fd 43 03 00 05 c3 9e 26 00 a3 ?? ?? ?? ?? c1 e8 10 25 ff 7f 00 00 c3 90 09 05 00 a1 } //2
		$a_02_3 = {6a 00 ff 15 90 09 08 00 e8 ?? ff ff ff 30 04 } //1
	condition:
		((#a_02_0  & 1)*2+(#a_02_1  & 1)*1+(#a_02_2  & 1)*2+(#a_02_3  & 1)*1) >=3
 
}