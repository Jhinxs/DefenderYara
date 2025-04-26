
rule Worm_Win32_Gamarue_AR_MTB{
	meta:
		description = "Worm:Win32/Gamarue.AR!MTB,SIGNATURE_TYPE_PEHSTR_EXT,03 00 03 00 03 00 00 "
		
	strings :
		$a_02_0 = {c7 45 bc 9a 00 00 00 c7 45 ?? ?? 00 00 00 c7 45 ?? ?? 00 00 00 c7 45 ?? ?? 00 00 00 c7 45 ?? ?? 00 00 00 c7 45 ?? ?? 00 00 00 c7 45 ?? ?? 00 00 00 c7 45 ?? ?? 00 00 00 c7 45 ?? ?? 00 00 00 8b 0d ?? ?? ?? ?? 83 c1 ?? 89 4d ?? c7 45 ?? ?? 00 00 00 c7 45 ?? ?? 00 00 00 c7 45 ?? ?? 00 00 00 6a ?? 68 00 00 40 00 8d 95 ?? ?? ?? ?? 52 e8 } //1
		$a_00_1 = {53 68 65 6c 6c 45 78 65 63 5c 6f 75 74 5c 72 65 6c 65 61 73 65 5c 6e 6f 75 62 6d 6e 7a 61 2e 70 64 62 } //1 ShellExec\out\release\noubmnza.pdb
		$a_01_2 = {49 6e 64 65 78 65 72 56 6f 6c 75 6d 65 47 75 69 64 } //1 IndexerVolumeGuid
	condition:
		((#a_02_0  & 1)*1+(#a_00_1  & 1)*1+(#a_01_2  & 1)*1) >=3
 
}