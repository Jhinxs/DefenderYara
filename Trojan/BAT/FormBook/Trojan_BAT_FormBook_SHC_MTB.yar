
rule Trojan_BAT_FormBook_SHC_MTB{
	meta:
		description = "Trojan:BAT/FormBook.SHC!MTB,SIGNATURE_TYPE_PEHSTR_EXT,04 00 04 00 03 00 00 "
		
	strings :
		$a_03_0 = {17 8d 17 00 00 01 25 16 07 a2 25 0c 14 14 17 8d ?? ?? ?? 01 25 16 17 9c 25 0d 28 ?? ?? ?? 0a 09 16 91 2d 02 2b 09 08 16 9a 28 ?? ?? ?? 0a 0b 28 ?? ?? ?? 0a 28 ?? ?? ?? 06 26 07 28 ?? ?? ?? 0a } //2
		$a_01_1 = {53 00 74 00 6f 00 6e 00 6b 00 73 00 52 00 6f 00 75 00 6e 00 64 00 2e 00 47 00 61 00 6d 00 65 00 45 00 6e 00 64 00 53 00 74 00 61 00 74 00 73 00 } //1 StonksRound.GameEndStats
		$a_01_2 = {4b 00 4c 00 41 00 58 00 44 00 20 00 44 00 53 00 48 00 53 00 41 00 44 00 4a 00 55 00 46 00 41 00 48 00 47 00 59 00 46 00 20 00 58 00 55 00 59 00 46 00 47 00 } //1 KLAXD DSHSADJUFAHGYF XUYFG
	condition:
		((#a_03_0  & 1)*2+(#a_01_1  & 1)*1+(#a_01_2  & 1)*1) >=4
 
}