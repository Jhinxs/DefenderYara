
rule SoftwareBundler_Win32_ICLoader_SE_MTB{
	meta:
		description = "SoftwareBundler:Win32/ICLoader.SE!MTB,SIGNATURE_TYPE_PEHSTR_EXT,01 00 01 00 02 00 00 "
		
	strings :
		$a_02_0 = {88 14 08 a1 ?? ?? ?? ?? 83 f8 ?? 76 ?? 8b 0d ?? ?? ?? ?? 8b 56 ?? 8b 3d ?? ?? ?? ?? 8a 1c 08 8a 14 3a 32 da 88 1c 08 } //1
		$a_02_1 = {33 c9 8b 35 ?? ?? ?? ?? 8b 54 24 ?? 8a 14 0a 8a 1c 06 32 da 41 88 1c 06 40 3d ?? ?? ?? ?? 7c } //1
	condition:
		((#a_02_0  & 1)*1+(#a_02_1  & 1)*1) >=1
 
}