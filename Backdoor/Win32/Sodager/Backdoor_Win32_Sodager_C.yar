
rule Backdoor_Win32_Sodager_C{
	meta:
		description = "Backdoor:Win32/Sodager.C,SIGNATURE_TYPE_PEHSTR_EXT,04 00 04 00 04 00 00 "
		
	strings :
		$a_01_0 = {75 5f 72 6f 74 61 73 5f 73 71 75 69 64 } //2 u_rotas_squid
		$a_01_1 = {53 63 4c 64 42 63 4c 75 50 49 31 58 50 36 47 57 38 61 58 42 47 72 4c 53 4b 73 7a 63 54 37 54 58 53 63 4c 53 4a 4d 62 5a 53 63 7a 70 52 73 50 71 4e 35 54 66 52 63 48 6c 54 74 44 53 47 74 4c 6f 53 63 4c 6b 54 35 50 62 53 64 44 66 52 73 76 53 49 4d 76 71 50 4e 39 6b 50 4e 47 57 4b 73 4c 71 54 36 62 6b 50 74 43 59 38 32 7a 73 38 34 35 72 54 36 7a 33 52 73 76 63 51 4d 54 4c 53 63 6d 57 42 73 47 } //1 ScLdBcLuPI1XP6GW8aXBGrLSKszcT7TXScLSJMbZSczpRsPqN5TfRcHlTtDSGtLoScLkT5PbSdDfRsvSIMvqPN9kPNGWKsLqT6bkPtCY82zs845rT6z3RsvcQMTLScmWBsG
		$a_01_2 = {49 4b 76 36 48 4b 44 4b 4e 72 31 49 4a 72 58 50 4e 72 31 38 47 4c 39 44 49 4b 76 37 4e 6d } //1 IKv6HKDKNr1IJrXPNr18GL9DIKv7Nm
		$a_01_3 = {4e 34 54 62 53 63 35 47 53 63 7a 75 55 4b 62 6b 54 36 4c 6f 52 63 4c 71 42 64 39 62 50 6d } //1 N4TbSc5GSczuUKbkT6LoRcLqBd9bPm
	condition:
		((#a_01_0  & 1)*2+(#a_01_1  & 1)*1+(#a_01_2  & 1)*1+(#a_01_3  & 1)*1) >=4
 
}