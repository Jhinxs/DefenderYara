
rule Ransom_Win32_BabukLockr_PB_MTB{
	meta:
		description = "Ransom:Win32/BabukLockr.PB!MTB,SIGNATURE_TYPE_PEHSTR_EXT,05 00 05 00 03 00 00 "
		
	strings :
		$a_03_0 = {fe c0 32 c1 2c 5a c0 c8 02 02 c1 f6 d8 32 c1 c0 c0 02 02 c1 88 84 ?? ?? ?? ?? ?? 41 81 f9 05 50 00 00 72 } //3
		$a_01_1 = {74 68 71 6a 71 32 69 37 6f 6d 7a 63 78 65 35 7a 31 79 69 6d } //1 thqjq2i7omzcxe5z1yim
		$a_01_2 = {57 00 49 00 4f 00 53 00 4f 00 53 00 4f 00 53 00 4f 00 57 00 } //1 WIOSOSOSOW
	condition:
		((#a_03_0  & 1)*3+(#a_01_1  & 1)*1+(#a_01_2  & 1)*1) >=5
 
}