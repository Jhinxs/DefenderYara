
rule Trojan_BAT_TelegramRat_AUU_MTB{
	meta:
		description = "Trojan:BAT/TelegramRat.AUU!MTB,SIGNATURE_TYPE_PEHSTR_EXT,03 00 03 00 02 00 00 "
		
	strings :
		$a_03_0 = {13 09 11 09 8e 2c 0f 11 09 28 ?? ?? ?? 2b 6f ?? ?? ?? 0a 17 58 0c 07 6f ?? ?? ?? 0a 11 09 28 ?? ?? ?? 06 26 7e 27 00 00 04 28 ?? ?? ?? 0a } //2
		$a_01_1 = {47 00 65 00 74 00 20 00 61 00 6c 00 6c 00 20 00 63 00 6f 00 6d 00 6d 00 61 00 6e 00 64 00 73 00 20 00 6c 00 69 00 73 00 74 00 20 00 73 00 6f 00 72 00 74 00 65 00 64 00 20 00 62 00 79 00 20 00 61 00 6c 00 70 00 68 00 61 00 62 00 65 00 74 00 } //1 Get all commands list sorted by alphabet
	condition:
		((#a_03_0  & 1)*2+(#a_01_1  & 1)*1) >=3
 
}