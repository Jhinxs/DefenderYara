
rule Trojan_Win32_Ursnif_RW_MTB{
	meta:
		description = "Trojan:Win32/Ursnif.RW!MTB,SIGNATURE_TYPE_PEHSTR_EXT,06 00 06 00 04 00 00 "
		
	strings :
		$a_03_0 = {81 c2 e0 0e 00 01 89 15 ?? ?? ?? ?? a1 ?? ?? ?? ?? 03 45 ?? 8b 0d ?? ?? ?? ?? 89 88 ?? ?? ?? ?? e9 } //5
		$a_81_1 = {63 3a 5c 6c 65 61 64 5c 49 63 65 5c 50 72 65 73 73 5c 50 72 6f 74 65 63 74 5c 43 6c 61 73 73 5c 70 65 72 73 6f 6e 2e 70 64 62 } //1 c:\lead\Ice\Press\Protect\Class\person.pdb
		$a_03_2 = {80 eb 3d 8b 00 05 c0 20 0f 01 89 01 8b 0d ?? ?? ?? ?? a3 ?? ?? ?? ?? 0f b6 c3 } //5
		$a_81_3 = {63 3a 5c 47 72 65 77 5f 50 72 61 63 74 69 63 65 5c 31 33 37 5c 75 6e 74 69 6c 5c 50 6f 6f 72 5f 66 61 69 72 5c 56 6f 69 63 65 2d 52 6f 63 6b 5c 63 6c 61 73 73 2e 70 64 62 } //1 c:\Grew_Practice\137\until\Poor_fair\Voice-Rock\class.pdb
	condition:
		((#a_03_0  & 1)*5+(#a_81_1  & 1)*1+(#a_03_2  & 1)*5+(#a_81_3  & 1)*1) >=6
 
}