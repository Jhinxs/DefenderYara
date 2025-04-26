
rule Trojan_BAT_AgentTesla_SPAF_MTB{
	meta:
		description = "Trojan:BAT/AgentTesla.SPAF!MTB,SIGNATURE_TYPE_PEHSTR_EXT,08 00 08 00 08 00 00 "
		
	strings :
		$a_01_0 = {4b 69 65 6d 54 72 61 54 61 70 54 69 6e } //1 KiemTraTapTin
		$a_01_1 = {44 65 6d 53 6f 4c 75 6f 6e 67 54 61 70 54 69 6e } //1 DemSoLuongTapTin
		$a_01_2 = {43 68 65 63 6b 67 61 6d 65 41 6c 6c } //1 CheckgameAll
		$a_01_3 = {52 75 6e 47 61 6d 65 42 61 6b } //1 RunGameBak
		$a_01_4 = {54 00 75 00 79 00 43 00 68 00 6f 00 6e 00 50 00 69 00 63 00 } //1 TuyChonPic
		$a_01_5 = {54 00 68 00 75 00 4c 00 61 00 69 00 50 00 69 00 63 00 } //1 ThuLaiPic
		$a_01_6 = {54 00 68 00 75 00 4e 00 68 00 6f 00 50 00 69 00 63 00 } //1 ThuNhoPic
		$a_01_7 = {44 00 61 00 6e 00 67 00 4e 00 68 00 61 00 70 00 50 00 69 00 63 00 } //1 DangNhapPic
	condition:
		((#a_01_0  & 1)*1+(#a_01_1  & 1)*1+(#a_01_2  & 1)*1+(#a_01_3  & 1)*1+(#a_01_4  & 1)*1+(#a_01_5  & 1)*1+(#a_01_6  & 1)*1+(#a_01_7  & 1)*1) >=8
 
}