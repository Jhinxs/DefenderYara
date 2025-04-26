
rule Backdoor_Linux_Gafgyt_G_MTB{
	meta:
		description = "Backdoor:Linux/Gafgyt.G!MTB,SIGNATURE_TYPE_ELFHSTR_EXT,04 00 04 00 06 00 00 "
		
	strings :
		$a_00_0 = {6d 45 78 70 6c 6f 69 74 69 6e 67 } //1 mExploiting
		$a_00_1 = {6e 70 78 58 6f 75 64 69 66 46 65 45 67 47 61 41 43 53 63 73 } //1 npxXoudifFeEgGaACScs
		$a_00_2 = {6d 44 65 6d 6f 6e } //1 mDemon
		$a_00_3 = {2f 70 72 6f 63 2f 63 70 75 69 6e 66 6f } //1 /proc/cpuinfo
		$a_00_4 = {68 6c 4c 6a 7a 74 71 5a } //1 hlLjztqZ
		$a_00_5 = {2f 65 74 63 2f 78 69 6e 65 74 2e 64 } //1 /etc/xinet.d
	condition:
		((#a_00_0  & 1)*1+(#a_00_1  & 1)*1+(#a_00_2  & 1)*1+(#a_00_3  & 1)*1+(#a_00_4  & 1)*1+(#a_00_5  & 1)*1) >=4
 
}