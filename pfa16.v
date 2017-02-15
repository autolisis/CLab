module pfa16(x[15:0], y[15:0], cin, s[15:0], cout);
	input [15:0]x,y;
	output [15:0]s;
	input cin;
	output cout;

	wire [15:0]p,g,a;

	wire [15:0] s1 , s12 , s21 , s22 , s31 , s32 , s41 , s42;

	assign p = (x^y);
	assign g = (x&y);
	assign a = (g|p);

	dotmod d11(g[0] , a[0] , cin , s1[0]);
	cirmod c11(g[2] , a[2] , g[1] , a[1] , s1[1] , s12[0]);
	cirmod c12(g[4] , a[4] , g[3] , a[3] , s1[2] , s12[1]);
	cirmod c13(g[6] , a[6] , g[5] , a[5] , s1[3] , s12[2]);
	cirmod c14(g[8] , a[8] , g[7] , a[7] , s1[4] , s12[3]);
	cirmod c15(g[10] , a[10] , g[9] , a[9] , s1[5] , s12[4]);
	cirmod c16(g[12] , a[12] , g[11] , a[11] , s1[6] , s12[5]);
	cirmod c17(g[14] , a[14] , g[13] , a[13] , s1[7] , s12[6]);
	//second level
	dotmod d21(g[1] , a[1] , s1[0] , s21[0]);
	dotmod d22(s1[1] , s12[0] , s1[0] , s21[1]);
	cirmod c21(g[5] , a[5] , s1[2] , s12[1] , s21[2] , s22[0]);
	cirmod c22(s1[3] , s12[2] , s1[2] , s12[1] , s21[3] , s22[1]); //till second level 4/8 circle mods
	cirmod c23(g[9] , a[9] , s1[4] , s12[3] , s21[4] , s22[2]);
	cirmod c24(s1[5] , s12[4] , s1[4] , s12[3] , s21[5] , s22[3]);
	cirmod c25(g[13] , a[13] , s1[6] , s12[5] , s21[6] , s22[4]);
	cirmod c26(s1[7] , s12[6] , s1[6] , s12[5] , s21[7] , s22[5]);  //till second level 8 mods
	//third level
	dotmod d31(g[3] , a[3] , s21[1] , s31[0]);
	dotmod d32(s1[2] , s12[1] , s21[1] , s31[1]);
	dotmod d33(s21[2] , s22[0] , s21[1] , s31[2]);
	dotmod d34(s21[3] , s22[1] , s21[1] , s31[3]); //for the 8 bit thing given
	cirmod c31(s21[4] , s22[2] , g[7] , a[7] , s31[4] , s32[0]);
	cirmod c32(s21[5] , s22[3] , g[7] , a[7] , s31[5] , s32[1]);
	cirmod c33(s21[6] , s22[4] , g[11] , a[11] , s31[6] , s32[2]);
	cirmod c34(s21[7] , s22[5] , g[11] , a[11] , s31[7] , s32[3]);
	//fourth level apparently...
	//for sure of form dotmod d4x( ,  , s31[3] , s41[x]);
	dotmod d41(s21[4] , s22[2] , s31[3] , s41[0]);
	dotmod d42(s21[5] , s22[3] , s31[3] , s41[1]);
	dotmod d43(s21[6] , s22[4] , s31[3] , s41[2]);
	dotmod d44(s21[7] , s22[5] , s31[3] , s41[3]);
	dotmod d45(s31[4] , s32[0] , s31[3] , s41[4]);
	dotmod d46(s31[5] , s32[1] , s31[3] , s41[5]);
	dotmod d47(s31[6] , s32[2] , s31[3] , s41[6]);
	dotmod d48(s31[7] , s32[3] , s31[3] , s41[7]);
	dotmod d49(g[15] , a[15] , s41[7] , cout);
	//last sum generation
	assign s[0] = cin ^ p[0];
	assign s[1] = p[1] ^ s1[0];
	assign s[2] = p[2] ^ s21[0];
	assign s[3] = p[3] ^ s21[1];
	assign s[4] = p[4] ^ s31[0];
	assign s[5] = p[5] ^ s31[1];
	assign s[6] = p[6] ^ s31[2];
	assign s[7] = p[7] ^ s31[3];
	assign s[8] = p[8] ^ s41[0];
	assign s[9] = p[9] ^ s41[1];
	assign s[10] = p[10] ^ s41[2];
	assign s[11] = p[11] ^ s41[3];
	assign s[12] = p[12] ^ s41[4];
	assign s[13] = p[13] ^ s41[5];
	assign s[14] = p[14] ^ s41[6];
	assign s[15] = p[15] ^ s41[7];

endmodule
