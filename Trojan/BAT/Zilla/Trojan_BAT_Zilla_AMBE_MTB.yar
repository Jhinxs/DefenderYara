
rule Trojan_BAT_Zilla_AMBE_MTB{
	meta:
		description = "Trojan:BAT/Zilla.AMBE!MTB,SIGNATURE_TYPE_PEHSTR_EXT,06 00 06 00 04 00 00 "
		
	strings :
		$a_03_0 = {0a 13 0a 12 0a fe ?? ?? 00 00 01 6f ?? 00 00 0a 72 ?? 00 00 70 28 ?? 00 00 0a 13 07 09 11 07 28 ?? 00 00 0a 13 08 09 11 07 28 ?? 00 00 0a 13 09 11 06 08 11 08 6f ?? 00 00 0a 00 11 09 28 ?? 00 00 0a 26 00 de 0d } //2
		$a_03_1 = {0a 0d 07 28 ?? 00 00 0a 13 04 11 04 2c 1f 00 73 ?? 00 00 0a 13 05 11 05 6f ?? 00 00 0a 07 6f ?? 00 00 0a 00 11 05 6f ?? 00 00 0a 26 00 00 } //2
		$a_80_2 = {44 6f 77 6e 6c 6f 61 64 46 69 6c 65 } //DownloadFile  1
		$a_80_3 = {69 6d 67 2e 67 75 69 6c 64 65 64 63 64 6e 2e 63 6f 6d 2f 43 6f 6e 74 65 6e 74 4d 65 64 69 61 47 65 6e 65 72 69 63 46 69 6c 65 73 } //img.guildedcdn.com/ContentMediaGenericFiles  1
	condition:
		((#a_03_0  & 1)*2+(#a_03_1  & 1)*2+(#a_80_2  & 1)*1+(#a_80_3  & 1)*1) >=6
 
}