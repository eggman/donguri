module donguri {
	input	cpu_en;
	input	cpu_restart;
	input	fiq;
	input	irq;
	input	ram_abort;
	input	ram_rdata<32>;
	input	rom_abort;
	input	rom_data<32>;

	output	ram_addr<26>;
	output	ram_cen;
	output	ram_flag<4>;
	output	ram_wdata<32>;
	output	ram_wen;
	output	rom_addr<32>;
	output	rom_en;

	reg_wr	r0<32>,r1<32>,r2<32>,r3<32>,r4<32>,r5<32>,r6<32>,r7<32>,r8<32>,r9<32>,r10<32>,r11<32>,r12<32>,r13<32>,r14<32>,r15<32>;
	
	reg	opc<32>;

	sel	Rn<32>, Rd<32>;

	any {
		opc<15:12>==0x0: Rd = r0;
		opc<15:12>==0x1: Rd = r1;
		opc<15:12>==0x2: Rd = r2;
		opc<15:12>==0x3: Rd = r3;
		opc<15:12>==0x4: Rd = r4;
		opc<15:12>==0x5: Rd = r5;
		opc<15:12>==0x6: Rd = r6;
		opc<15:12>==0x7: Rd = r7;
		opc<15:12>==0x8: Rd = r8;
		opc<15:12>==0x9: Rd = r9;
		opc<15:12>==0xa: Rd = r10;
		opc<15:12>==0xb: Rd = r11;
		opc<15:12>==0xc: Rd = r12;
		opc<15:12>==0xd: Rd = r13;
		opc<15:12>==0xe: Rd = r14;
		opc<15:12>==0xf: Rd = r15;
	}

	any {
		opc<19:16>==0x0: Rn = r0;
		opc<19:16>==0x1: Rn = r1;
		opc<19:16>==0x2: Rn = r2;
		opc<19:16>==0x3: Rn = r3;
		opc<19:16>==0x4: Rn = r4;
		opc<19:16>==0x5: Rn = r5;
		opc<19:16>==0x6: Rn = r6;
		opc<19:16>==0x7: Rn = r7;
		opc<19:16>==0x8: Rn = r8;
		opc<19:16>==0x9: Rn = r9;
		opc<19:16>==0xa: Rn = r10;
		opc<19:16>==0xb: Rn = r11;
		opc<19:16>==0xc: Rn = r12;
		opc<19:16>==0xd: Rn = r13;
		opc<19:16>==0xe: Rn = r14;
		opc<19:16>==0xf: Rn = r15;
	}



	
}