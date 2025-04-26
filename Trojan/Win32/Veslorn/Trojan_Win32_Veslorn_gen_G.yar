
rule Trojan_Win32_Veslorn_gen_G{
	meta:
		description = "Trojan:Win32/Veslorn.gen!G,SIGNATURE_TYPE_PEHSTR_EXT,09 00 09 00 03 00 00 "
		
	strings :
		$a_01_0 = {53 54 4f 50 41 54 54 41 43 4b } //2 STOPATTACK
		$a_01_1 = {51 72 61 6a 55 42 79 73 58 70 71 5d 57 62 41 63 55 52 71 61 57 63 4c } //4 QrajUBysXpq]WbAcURqaWcL
		$a_01_2 = {2f 40 6b 69 6e 76 70 3e } //3 /@kinvp>
	condition:
		((#a_01_0  & 1)*2+(#a_01_1  & 1)*4+(#a_01_2  & 1)*3) >=9
 
}