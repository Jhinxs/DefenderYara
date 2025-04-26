
rule Backdoor_Linux_EvilGnome_gen_A{
	meta:
		description = "Backdoor:Linux/EvilGnome.gen!A!!EvilGnome.gen!A,SIGNATURE_TYPE_ARHSTR_EXT,04 00 04 00 04 00 00 "
		
	strings :
		$a_81_0 = {53 68 6f 6f 74 65 72 53 6f 75 6e 64 } //1 ShooterSound
		$a_81_1 = {53 68 6f 6f 74 65 72 49 6d 61 67 65 } //1 ShooterImage
		$a_81_2 = {53 68 6f 6f 74 65 72 46 69 6c 65 } //1 ShooterFile
		$a_81_3 = {67 6e 6f 6d 65 2d 73 68 65 6c 6c 2d 65 78 74 } //1 gnome-shell-ext
	condition:
		((#a_81_0  & 1)*1+(#a_81_1  & 1)*1+(#a_81_2  & 1)*1+(#a_81_3  & 1)*1) >=4
 
}