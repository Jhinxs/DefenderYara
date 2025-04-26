
rule Ransom_Win32_Phobos_MK_MSR{
	meta:
		description = "Ransom:Win32/Phobos.MK!MSR,SIGNATURE_TYPE_PEHSTR_EXT,04 00 04 00 02 00 00 "
		
	strings :
		$a_03_0 = {0f b7 88 28 92 41 00 66 89 88 ?? ?? ?? ?? 83 c0 02 66 3b ce 74 05 83 ea 01 75 e5 } //2
		$a_03_1 = {0f b6 0e 33 c8 81 e1 ?? ?? ?? ?? c1 e8 08 33 44 8c 04 83 ea 01 83 c6 01 85 d2 75 e4 } //2
	condition:
		((#a_03_0  & 1)*2+(#a_03_1  & 1)*2) >=4
 
}