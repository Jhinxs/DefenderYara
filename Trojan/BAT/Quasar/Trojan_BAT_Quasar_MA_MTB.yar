
rule Trojan_BAT_Quasar_MA_MTB{
	meta:
		description = "Trojan:BAT/Quasar.MA!MTB,SIGNATURE_TYPE_PEHSTR_EXT,19 00 19 00 05 00 00 "
		
	strings :
		$a_01_0 = {53 69 6e 65 6d 61 4f 74 6f 6d 61 73 79 6f 6e 56 69 7a 65 2e 65 78 65 } //10 SinemaOtomasyonVize.exe
		$a_01_1 = {51 00 7a 00 70 00 63 00 58 00 46 00 64 00 70 00 62 00 6d 00 52 00 76 00 64 00 33 00 4e 00 63 00 58 00 45 00 31 00 70 00 59 00 33 00 4a 00 76 00 63 00 32 00 } //10 QzpcXFdpbmRvd3NcXE1pY3Jvc2
		$a_01_2 = {43 61 73 70 6f 6c } //2 Caspol
		$a_01_3 = {44 6f 6e 75 73 } //2 Donus
		$a_01_4 = {44 6f 77 6e 6c 6f 61 64 44 61 74 61 } //1 DownloadData
	condition:
		((#a_01_0  & 1)*10+(#a_01_1  & 1)*10+(#a_01_2  & 1)*2+(#a_01_3  & 1)*2+(#a_01_4  & 1)*1) >=25
 
}