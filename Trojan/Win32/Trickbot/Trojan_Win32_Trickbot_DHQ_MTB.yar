
rule Trojan_Win32_Trickbot_DHQ_MTB{
	meta:
		description = "Trojan:Win32/Trickbot.DHQ!MTB,SIGNATURE_TYPE_PEHSTR_EXT,01 00 01 00 02 00 00 "
		
	strings :
		$a_02_0 = {0f b6 cb 03 c1 99 b9 ?? ?? ?? ?? f7 f9 8b 85 ?? ?? ?? ?? 40 89 85 90 1b 01 0f b6 94 15 ?? ?? ?? ?? 30 50 ff } //1
		$a_81_1 = {49 5a 78 52 69 50 38 6f 30 66 6c 6b 50 51 65 73 76 71 58 32 6a 69 6f 4f 64 38 43 52 32 56 } //1 IZxRiP8o0flkPQesvqX2jioOd8CR2V
	condition:
		((#a_02_0  & 1)*1+(#a_81_1  & 1)*1) >=1
 
}