
rule Backdoor_Linux_RedXOR_A_MTB{
	meta:
		description = "Backdoor:Linux/RedXOR.A!MTB,SIGNATURE_TYPE_ELFHSTR_EXT,05 00 05 00 08 00 00 "
		
	strings :
		$a_00_0 = {8b 45 f4 48 98 48 03 45 d8 8b 55 f4 48 63 d2 48 03 55 d8 0f b6 0a 0f b6 55 f2 31 ca 88 10 0f b6 45 f3 00 45 f2 83 45 f4 01 8b 45 f4 3b 45 d4 7c cf } //1
		$a_00_1 = {2e 70 6f 31 6b 69 74 64 2d 75 70 64 61 74 65 2d 6b } //1 .po1kitd-update-k
		$a_00_2 = {2e 70 6f 31 6b 69 74 64 2e 74 68 75 6d 62 } //1 .po1kitd.thumb
		$a_00_3 = {2f 76 61 72 2f 74 6d 70 2f 2e 70 6f 31 6b 69 74 64 } //1 /var/tmp/.po1kitd
		$a_02_4 = {70 79 74 68 6f 6e 20 2d 63 20 [0-10] 70 74 79 3b 70 74 79 2e 73 70 61 77 6e 28 27 2f 62 69 6e 2f 62 61 73 68 } //1
		$a_00_5 = {2f 75 73 72 2f 73 79 6e 6f 2f 65 74 63 2f 72 63 2e 64 2f 53 39 39 25 73 2e 73 68 } //1 /usr/syno/etc/rc.d/S99%s.sh
		$a_00_6 = {50 4f 53 54 20 2f 79 65 73 74 65 72 2f 6c 6f 67 69 6e 2e 6a 73 70 } //1 POST /yester/login.jsp
		$a_00_7 = {67 65 74 5f 73 79 73 5f 69 6e 66 6f } //1 get_sys_info
	condition:
		((#a_00_0  & 1)*1+(#a_00_1  & 1)*1+(#a_00_2  & 1)*1+(#a_00_3  & 1)*1+(#a_02_4  & 1)*1+(#a_00_5  & 1)*1+(#a_00_6  & 1)*1+(#a_00_7  & 1)*1) >=5
 
}