
rule Backdoor_Linux_Dakkatoni_az_MTB{
	meta:
		description = "Backdoor:Linux/Dakkatoni.az!MTB,SIGNATURE_TYPE_ELFHSTR_EXT,05 00 05 00 06 00 00 "
		
	strings :
		$a_00_0 = {2f 6d 65 74 74 6c 65 2f 6d 65 74 74 6c 65 2f 73 72 63 2f 6d 61 69 6e 2e 63 } //1 /mettle/mettle/src/main.c
		$a_00_1 = {70 72 6f 63 65 73 73 5f 6b 69 6c 6c 5f 62 79 5f 70 69 64 } //1 process_kill_by_pid
		$a_00_2 = {66 74 70 40 65 78 61 6d 70 6c 65 2e 63 6f 6d } //1 ftp@example.com
		$a_00_3 = {2d 2d 70 65 72 73 69 73 74 20 5b 6e 6f 6e 65 7c 69 6e 73 74 61 6c 6c 7c 75 6e 69 6e 73 74 61 6c 6c 5d 20 6d 61 6e 61 67 65 20 70 65 72 73 69 73 74 65 6e 63 65 } //1 --persist [none|install|uninstall] manage persistence
		$a_02_4 = {2d 2d 62 61 63 6b 67 72 6f 75 6e 64 [0-05] 73 74 61 72 74 20 61 73 20 61 20 62 61 63 6b 67 72 6f 75 6e 64 20 73 65 72 76 69 63 65 } //1
		$a_00_5 = {6d 65 74 74 6c 65 73 70 6c 6f 69 74 } //1 mettlesploit
	condition:
		((#a_00_0  & 1)*1+(#a_00_1  & 1)*1+(#a_00_2  & 1)*1+(#a_00_3  & 1)*1+(#a_02_4  & 1)*1+(#a_00_5  & 1)*1) >=5
 
}