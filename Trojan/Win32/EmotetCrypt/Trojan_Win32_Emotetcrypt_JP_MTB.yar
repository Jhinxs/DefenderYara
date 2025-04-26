
rule Trojan_Win32_Emotetcrypt_JP_MTB{
	meta:
		description = "Trojan:Win32/Emotetcrypt.JP!MTB,SIGNATURE_TYPE_PEHSTR_EXT,0f 00 0f 00 06 00 00 "
		
	strings :
		$a_00_0 = {41 6c 70 68 61 42 6c 65 6e 64 } //10 AlphaBlend
		$a_01_1 = {46 78 79 76 6f 64 61 6e 79 77 65 6b } //1 Fxyvodanywek
		$a_01_2 = {43 71 6f 68 79 7a 69 64 69 6d 69 70 } //1 Cqohyzidimip
		$a_01_3 = {4e 7a 79 68 65 6e 75 7a 69 6d 65 63 79 } //1 Nzyhenuzimecy
		$a_01_4 = {51 6d 79 72 61 6d 6f 77 75 6b } //1 Qmyramowuk
		$a_01_5 = {4d 6e 75 77 61 64 69 66 65 6a } //1 Mnuwadifej
	condition:
		((#a_00_0  & 1)*10+(#a_01_1  & 1)*1+(#a_01_2  & 1)*1+(#a_01_3  & 1)*1+(#a_01_4  & 1)*1+(#a_01_5  & 1)*1) >=15
 
}