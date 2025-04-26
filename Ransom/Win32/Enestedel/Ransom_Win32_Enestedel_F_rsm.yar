
rule Ransom_Win32_Enestedel_F_rsm{
	meta:
		description = "Ransom:Win32/Enestedel.F!rsm,SIGNATURE_TYPE_PEHSTR_EXT,32 00 32 00 03 00 00 "
		
	strings :
		$a_03_0 = {10 67 99 f7 fd 89 90 09 07 00 10 67 0f bf 2d 90 09 0c 00 0f bf 05 } //30
		$a_03_1 = {10 67 0f bf 2d 90 09 05 00 0f bf 05 } //10
		$a_03_2 = {10 67 0f be 05 90 09 05 00 0f be 15 } //10
	condition:
		((#a_03_0  & 1)*30+(#a_03_1  & 1)*10+(#a_03_2  & 1)*10) >=50
 
}