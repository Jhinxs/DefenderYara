
rule Trojan_BAT_QuasarRat_NEAM_MTB{
	meta:
		description = "Trojan:BAT/QuasarRat.NEAM!MTB,SIGNATURE_TYPE_PEHSTR_EXT,0a 00 0a 00 04 00 00 "
		
	strings :
		$a_01_0 = {65 61 61 65 38 62 38 62 2d 61 35 36 65 2d 34 66 37 37 2d 38 35 64 61 2d 30 32 62 37 62 30 30 61 61 35 36 61 } //5 eaae8b8b-a56e-4f77-85da-02b7b00aa56a
		$a_01_1 = {4c 00 6f 00 67 00 69 00 63 00 47 00 61 00 6d 00 65 00 73 00 2e 00 50 00 72 00 6f 00 70 00 65 00 72 00 74 00 69 00 65 00 73 00 2e 00 52 00 65 00 73 00 6f 00 75 00 72 00 63 00 65 00 73 00 } //2 LogicGames.Properties.Resources
		$a_01_2 = {53 6f 75 6e 64 50 6c 61 79 65 72 } //2 SoundPlayer
		$a_01_3 = {24 24 6d 65 74 68 6f 64 30 78 36 30 30 30 33 31 37 2d 31 } //1 $$method0x6000317-1
	condition:
		((#a_01_0  & 1)*5+(#a_01_1  & 1)*2+(#a_01_2  & 1)*2+(#a_01_3  & 1)*1) >=10
 
}