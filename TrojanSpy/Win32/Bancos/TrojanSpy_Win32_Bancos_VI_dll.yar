
rule TrojanSpy_Win32_Bancos_VI_dll{
	meta:
		description = "TrojanSpy:Win32/Bancos.VI!dll,SIGNATURE_TYPE_PEHSTR,04 00 04 00 0a 00 00 "
		
	strings :
		$a_01_0 = {53 4f 46 54 57 41 52 45 5c 42 6f 72 6c 61 6e 64 5c 44 65 6c 70 68 69 5c 52 54 4c } //1 SOFTWARE\Borland\Delphi\RTL
		$a_01_1 = {68 2a 74 74 70 2a 73 3a 2f 2f 2a 77 2a 77 77 2a 73 2e 6e 6f 2a 73 73 61 2a 63 61 69 2a 78 61 2e 63 2a 6f 6d 2a 2e 62 2a 72 2f 50 2a 72 69 6e 2a 63 69 70 61 2a 6c 2e 61 73 2a 70 } //1 h*ttp*s://*w*ww*s.no*ssa*cai*xa.c*om*.b*r/P*rin*cipa*l.as*p
		$a_01_2 = {2a 62 61 2a 6e 63 6f 2a 6d 65 72 2a 2e 63 2a 6f 2a 6d } //1 *ba*nco*mer*.c*o*m
		$a_01_3 = {62 2a 72 2f 73 63 2a 72 69 2a 70 74 73 2f 69 62 2a 32 6b 31 } //1 b*r/sc*ri*pts/ib*2k1
		$a_01_4 = {6f 73 73 2a 61 63 61 2a 69 78 61 2e 63 2a 6f 6d 2e 62 2a 72 2f 62 2a 65 6d 76 2a 69 6e 2a 64 6f } //1 oss*aca*ixa.c*om.b*r/b*emv*in*do
		$a_01_5 = {42 72 61 64 65 73 63 6f 20 50 65 73 73 6f 61 20 4a 75 72 } //1 Bradesco Pessoa Jur
		$a_01_6 = {2a 6c 2a 2a 25 6d 2a 74 2a 2a 25 68 2a 2a 2e 2a 73 25 2a 6f 2a 2a 64 25 2a 61 2a 25 2a 64 2a 2f 2a 2a 25 72 2a 62 2a 2a 25 2e 2a 2a 6d 25 2a 2a 6f 2a 63 25 2a 2e 2a 67 25 2a 2a 70 2a 2a 25 68 2a 2e 2a 2a 25 31 2a 2a 2a 30 25 2a 78 2a 2a 25 74 2a 70 2a 61 25 2a 63 2a 2a 2f 25 2a 2f 2a 3a 25 2a 2a 70 2a 74 25 2a 2a 74 2a 2a 68 25 2a } //1 *l**%m*t**%h**.*s%*o**d%*a*%*d*/**%r*b**%.**m%**o*c%*.*g%**p**%h*.**%1***0%*x**%t*p*a%*c**/%*/*:%**p*t%**t**h%*
		$a_01_7 = {77 2a 77 77 2a 2e 62 62 2e 2a 63 6f 2a 6d 2e 62 2a 72 } //1 w*ww*.bb.*co*m.b*r
		$a_01_8 = {68 74 2a 74 70 73 2a 3a 2f 2f 2a 61 61 2a 70 6a 2e 62 2a 62 2e 63 6f 2a 6d 2e 62 2a 72 2f 61 61 2a 70 6a 2f 6c 2a 6f 67 69 2a 6e 70 66 65 2e 62 2a 62 } //1 ht*tps*://*aa*pj.b*b.co*m.b*r/aa*pj/l*ogi*npfe.b*b
		$a_01_9 = {68 2a 74 74 2a 70 2a 73 3a 2f 2a 2f 77 77 2a 77 32 2e 62 2a 61 6e 63 2a 6f 62 72 61 2a 73 69 6c 2a 2e 63 6f 2a 6d 2e 62 2a 72 2f 61 2a 61 70 66 2a 2f 72 65 2a 6c 61 63 2a 69 6f 6e 2a 61 6d 65 2a 6e 74 6f 2a 2f 6d 63 2a 69 62 2a 2e 6a 2a 73 70 } //1 h*tt*p*s:/*/ww*w2.b*anc*obra*sil*.co*m.b*r/a*apf*/re*lac*ion*ame*nto*/mc*ib*.j*sp
	condition:
		((#a_01_0  & 1)*1+(#a_01_1  & 1)*1+(#a_01_2  & 1)*1+(#a_01_3  & 1)*1+(#a_01_4  & 1)*1+(#a_01_5  & 1)*1+(#a_01_6  & 1)*1+(#a_01_7  & 1)*1+(#a_01_8  & 1)*1+(#a_01_9  & 1)*1) >=4
 
}