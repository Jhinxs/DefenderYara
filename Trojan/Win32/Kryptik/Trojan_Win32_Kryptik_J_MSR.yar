
rule Trojan_Win32_Kryptik_J_MSR{
	meta:
		description = "Trojan:Win32/Kryptik.J!MSR,SIGNATURE_TYPE_PEHSTR_EXT,06 00 06 00 06 00 00 "
		
	strings :
		$a_80_0 = {65 6c 66 20 65 78 65 } //elf exe  1
		$a_81_1 = {68 65 6f 38 4d 6f 76 69 6e 67 67 72 65 61 74 6a 69 6d 69 64 73 74 33 77 68 61 6c 65 73 } //1 heo8Movinggreatjimidst3whales
		$a_81_2 = {6c 69 76 69 6e 67 66 72 6f 6d 2e 64 73 74 61 72 73 } //1 livingfrom.dstars
		$a_81_3 = {46 6f 72 6d 77 65 72 65 33 74 68 65 79 2e 72 65 2e 51 } //1 Formwere3they.re.Q
		$a_81_4 = {53 47 69 76 65 6d 6f 76 69 6e 67 44 46 6f 72 2e 6f 76 65 72 68 61 74 68 73 70 69 72 69 74 } //1 SGivemovingDFor.overhathspirit
		$a_81_5 = {6b 69 6e 64 31 6e 44 62 65 68 6f 6c 64 6d 6f 76 65 64 66 69 72 73 74 5a 5a 6d 6f 76 65 74 68 } //1 kind1nDbeholdmovedfirstZZmoveth
	condition:
		((#a_80_0  & 1)*1+(#a_81_1  & 1)*1+(#a_81_2  & 1)*1+(#a_81_3  & 1)*1+(#a_81_4  & 1)*1+(#a_81_5  & 1)*1) >=6
 
}