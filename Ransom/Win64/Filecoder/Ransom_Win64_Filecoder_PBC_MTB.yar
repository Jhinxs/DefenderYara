
rule Ransom_Win64_Filecoder_PBC_MTB{
	meta:
		description = "Ransom:Win64/Filecoder.PBC!MTB,SIGNATURE_TYPE_PEHSTR_EXT,04 00 04 00 04 00 00 "
		
	strings :
		$a_01_0 = {59 4f 55 5f 48 41 56 45 5f 42 45 45 4e 5f 48 34 43 4b 33 44 } //1 YOU_HAVE_BEEN_H4CK3D
		$a_01_1 = {67 6f 74 20 68 61 63 6b 65 64 } //1 got hacked
		$a_01_2 = {67 65 74 20 79 6f 75 72 20 64 61 74 61 20 62 61 63 6b } //1 get your data back
		$a_03_3 = {48 8b 45 d8 0f b6 00 83 f0 2c 89 c2 48 8b 45 d8 88 10 48 83 ?? ?? 01 83 45 d4 01 } //1
	condition:
		((#a_01_0  & 1)*1+(#a_01_1  & 1)*1+(#a_01_2  & 1)*1+(#a_03_3  & 1)*1) >=4
 
}