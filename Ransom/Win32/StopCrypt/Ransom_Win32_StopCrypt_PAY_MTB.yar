
rule Ransom_Win32_StopCrypt_PAY_MTB{
	meta:
		description = "Ransom:Win32/StopCrypt.PAY!MTB,SIGNATURE_TYPE_PEHSTR_EXT,06 00 06 00 05 00 00 "
		
	strings :
		$a_01_0 = {c3 81 00 47 86 c8 61 c3 } //1
		$a_03_1 = {c2 08 00 81 00 ?? 34 ef c6 c3 } //1
		$a_03_2 = {d3 e8 c7 05 ?? ?? ?? ?? ee 3d ea f4 03 85 ?? ?? ?? ?? 33 c3 81 3d ?? ?? ?? ?? b7 01 } //4
		$a_03_3 = {d3 eb c7 05 ?? ?? ?? ?? ee 3d ea f4 03 9d ?? ?? ?? ?? 33 da 81 3d ?? ?? ?? ?? b7 01 } //4
		$a_03_4 = {d3 e8 c7 05 ?? ?? ?? ?? ee 3d ea f4 03 45 [0-04] 33 c2 89 45 ?? 81 fe a3 01 } //4
	condition:
		((#a_01_0  & 1)*1+(#a_03_1  & 1)*1+(#a_03_2  & 1)*4+(#a_03_3  & 1)*4+(#a_03_4  & 1)*4) >=6
 
}