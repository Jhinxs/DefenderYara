
rule Ransom_MSIL_SolidBit_N_MTB{
	meta:
		description = "Ransom:MSIL/SolidBit.N!MTB,SIGNATURE_TYPE_PEHSTR_EXT,02 00 02 00 02 00 00 "
		
	strings :
		$a_03_0 = {04 02 07 6f ?? ?? ?? 0a 7e ?? ?? ?? 04 07 7e ?? ?? ?? 04 8e 69 5d 91 61 28 ?? ?? ?? 06 28 ?? ?? ?? 06 26 07 17 58 0b 07 02 6f ?? ?? ?? 0a } //1
		$a_01_1 = {24 30 66 66 61 39 33 62 39 2d 36 62 63 62 2d 34 34 34 36 2d 62 32 39 38 2d 66 36 31 39 38 36 62 37 38 34 36 32 } //1 $0ffa93b9-6bcb-4446-b298-f61986b78462
	condition:
		((#a_03_0  & 1)*1+(#a_01_1  & 1)*1) >=2
 
}