
rule Trojan_PowerShell_Emopocre_A{
	meta:
		description = "Trojan:PowerShell/Emopocre.A,SIGNATURE_TYPE_CMDHSTR_EXT,01 00 01 00 02 00 00 "
		
	strings :
		$a_00_0 = {53 00 48 00 65 00 4c 00 6c 00 69 00 44 00 5b 00 31 00 5d 00 2b 00 24 00 53 00 48 00 45 00 4c 00 6c 00 69 00 64 00 5b 00 31 00 33 00 5d 00 2b 00 27 00 78 00 27 00 29 00 28 00 20 00 28 00 20 00 4e 00 65 00 77 00 2d 00 4f 00 62 00 4a 00 45 00 63 00 54 00 20 00 6d 00 61 00 4e 00 61 00 47 00 45 00 6d 00 65 00 6e 00 74 00 2e 00 61 00 55 00 74 00 4f 00 6d 00 41 00 74 00 49 00 6f 00 4e 00 2e 00 50 00 53 00 63 00 52 00 45 00 44 00 45 00 6e 00 54 00 49 00 61 00 4c 00 20 00 27 00 } //1 SHeLliD[1]+$SHELlid[13]+'x')( ( New-ObJEcT maNaGEment.aUtOmAtIoN.PScREDEnTIaL '
		$a_00_1 = {25 00 43 00 5e 00 6f 00 6d 00 5e 00 53 00 5e 00 70 00 45 00 63 00 25 00 20 00 2f 00 56 00 20 00 2f 00 63 00 20 00 73 00 65 00 74 00 20 00 25 00 } //1 %C^om^S^pEc% /V /c set %
	condition:
		((#a_00_0  & 1)*1+(#a_00_1  & 1)*1) >=1
 
}