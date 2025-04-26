
rule Ransom_Win32_Spade_DA_MTB{
	meta:
		description = "Ransom:Win32/Spade.DA!MTB,SIGNATURE_TYPE_PEHSTR_EXT,04 00 04 00 04 00 00 "
		
	strings :
		$a_81_0 = {53 70 61 64 65 52 61 6e 73 6f 6d } //1 SpadeRansom
		$a_81_1 = {2e 43 61 74 65 72 70 69 6c 6c 61 72 } //1 .Caterpillar
		$a_81_2 = {52 61 6e 73 6f 6d 46 69 6c 65 40 74 75 74 61 6e 6f 74 61 2e 63 6f 6d } //1 RansomFile@tutanota.com
		$a_81_3 = {73 6f 20 69 66 20 79 6f 75 20 77 61 6e 74 20 79 6f 75 72 20 66 69 6c 65 73 20 64 6f 6e 74 20 62 65 20 73 68 79 20 66 65 65 6c 20 66 72 65 65 20 74 6f 20 63 6f 6e 74 61 63 74 20 75 73 20 61 6e 64 20 64 6f 20 61 6e 20 61 67 72 65 65 6d 65 6e 74 20 6f 6e 20 70 72 69 63 65 } //1 so if you want your files dont be shy feel free to contact us and do an agreement on price
	condition:
		((#a_81_0  & 1)*1+(#a_81_1  & 1)*1+(#a_81_2  & 1)*1+(#a_81_3  & 1)*1) >=4
 
}