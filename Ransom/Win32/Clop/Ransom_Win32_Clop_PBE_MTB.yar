
rule Ransom_Win32_Clop_PBE_MTB{
	meta:
		description = "Ransom:Win32/Clop.PBE!MTB,SIGNATURE_TYPE_PEHSTR_EXT,08 00 08 00 04 00 00 "
		
	strings :
		$a_01_0 = {52 00 45 00 41 00 44 00 4d 00 45 00 5f 00 52 00 45 00 41 00 44 00 4d 00 45 00 2e 00 74 00 78 00 74 00 } //1 README_README.txt
		$a_01_1 = {2d 2d 42 45 47 49 4e 20 50 55 42 4c 49 43 20 4b 45 59 2d 2d } //2 --BEGIN PUBLIC KEY--
		$a_01_2 = {72 00 75 00 6e 00 72 00 75 00 6e 00 } //1 runrun
		$a_03_3 = {33 ca 0b 0d ?? ?? ?? ?? 89 0d ?? ?? ?? ?? 0f be 05 ?? ?? ?? ?? 0f bf 4d f0 03 c1 0f bf 55 f8 03 c2 0f bf 55 f0 8b 0d ?? ?? ?? ?? d3 fa 33 c2 0f be 0d ?? ?? ?? ?? 23 c8 88 0d } //4
	condition:
		((#a_01_0  & 1)*1+(#a_01_1  & 1)*2+(#a_01_2  & 1)*1+(#a_03_3  & 1)*4) >=8
 
}