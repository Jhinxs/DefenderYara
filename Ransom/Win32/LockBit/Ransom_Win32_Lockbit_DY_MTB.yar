
rule Ransom_Win32_Lockbit_DY_MTB{
	meta:
		description = "Ransom:Win32/Lockbit.DY!MTB,SIGNATURE_TYPE_PEHSTR_EXT,01 00 01 00 01 00 00 "
		
	strings :
		$a_03_0 = {8a 44 1d f8 30 04 3e 8d 45 f8 50 43 e8 ?? ?? ?? ?? 59 3b d8 72 } //1
	condition:
		((#a_03_0  & 1)*1) >=1
 
}