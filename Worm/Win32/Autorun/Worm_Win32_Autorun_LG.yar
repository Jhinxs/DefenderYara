
rule Worm_Win32_Autorun_LG{
	meta:
		description = "Worm:Win32/Autorun.LG,SIGNATURE_TYPE_PEHSTR_EXT,02 00 02 00 02 00 00 "
		
	strings :
		$a_03_0 = {83 e8 02 0f 84 ?? ?? 00 00 48 0f 85 ?? ?? 00 00 8b 8d ?? ?? ff ff 8b 84 8d ?? ?? ff ff e8 } //1
		$a_00_1 = {5b 41 75 74 6f 52 75 6e 5d 00 53 68 65 6c 6c 45 78 65 63 75 74 65 } //1 䅛瑵副湵]桓汥䕬數畣整
	condition:
		((#a_03_0  & 1)*1+(#a_00_1  & 1)*1) >=2
 
}