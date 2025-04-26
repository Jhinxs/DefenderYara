
rule Trojan_Win32_Emotet_ADB_MTB{
	meta:
		description = "Trojan:Win32/Emotet.ADB!MTB,SIGNATURE_TYPE_PEHSTR_EXT,02 00 02 00 02 00 00 "
		
	strings :
		$a_03_0 = {33 c0 83 c4 ?? ab 33 d2 6a ?? ab 59 68 ?? ?? ?? ?? 68 ?? ?? ?? ?? ab } //1
		$a_03_1 = {6b 45 fc 14 68 ?? ?? ?? ?? 51 89 45 fc 6b 45 fc ?? 89 45 fc 8b 45 fc f7 f1 89 45 fc 81 75 fc ?? ?? ?? ?? 8b 45 fc 8b 45 f4 8b 45 f8 e8 ?? ?? ?? ?? 83 c4 ?? 53 ff 75 ?? 56 ff d0 5f } //1
	condition:
		((#a_03_0  & 1)*1+(#a_03_1  & 1)*1) >=2
 
}