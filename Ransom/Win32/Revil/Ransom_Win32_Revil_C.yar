
rule Ransom_Win32_Revil_C{
	meta:
		description = "Ransom:Win32/Revil.C,SIGNATURE_TYPE_PEHSTR_EXT,01 00 01 00 01 00 00 "
		
	strings :
		$a_03_0 = {8b 7d 08 81 f7 ?? ?? ?? ?? 8b 59 28 6a 2b 58 89 45 fc 0f b7 33 66 85 f6 74 2d 8b d0 8d 46 bf 8d 5b 02 66 83 f8 19 77 03 83 ce 20 69 d2 0f 01 00 00 0f b7 c6 0f b7 33 03 d0 66 85 f6 75 de 89 55 fc 8b 55 f8 8b 45 fc 3b c7 74 0f 8b 09 3b ca 75 b8 } //1
	condition:
		((#a_03_0  & 1)*1) >=1
 
}