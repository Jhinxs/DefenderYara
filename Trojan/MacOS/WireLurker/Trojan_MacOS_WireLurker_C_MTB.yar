
rule Trojan_MacOS_WireLurker_C_MTB{
	meta:
		description = "Trojan:MacOS/WireLurker.C!MTB,SIGNATURE_TYPE_MACHOHSTR_EXT,04 00 04 00 04 00 00 "
		
	strings :
		$a_00_0 = {2f 74 6d 70 2f 74 2e 6c 6f 63 6b } //1 /tmp/t.lock
		$a_00_1 = {4d 61 69 6c 53 65 72 76 69 63 65 41 67 65 6e 74 48 65 6c 70 65 72 2e 70 6c 69 73 74 } //1 MailServiceAgentHelper.plist
		$a_00_2 = {2f 75 73 72 2f 73 68 61 72 65 2f 74 6f 6b 65 6e 69 7a 65 72 2f 6a 61 } //1 /usr/share/tokenizer/ja
		$a_00_3 = {2f 75 73 72 2f 62 69 6e 2f 73 74 74 79 35 2e 31 31 2e 70 6c } //1 /usr/bin/stty5.11.pl
	condition:
		((#a_00_0  & 1)*1+(#a_00_1  & 1)*1+(#a_00_2  & 1)*1+(#a_00_3  & 1)*1) >=4
 
}