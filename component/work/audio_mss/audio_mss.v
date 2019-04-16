//////////////////////////////////////////////////////////////////////
// Created by SmartDesign Tue Apr 16 13:01:22 2019
// Version: v11.9 11.9.0.4
//////////////////////////////////////////////////////////////////////

`timescale 1ns / 100ps

// audio_mss
module audio_mss(
    // Inputs
    F2M_GPI_1,
    MSS_RESET_N,
    UART_0_RXD,
    UART_1_RXD,
    VAREF1,
    // Outputs
    M2F_GPO_2,
    M2F_GPO_3,
    M2F_GPO_4,
    M2F_GPO_5,
    M2F_GPO_6,
    SDD_1,
    UART_0_TXD,
    UART_1_TXD,
    // Inouts
    I2C_0_SCL,
    I2C_0_SDA,
    I2C_1_SCL,
    I2C_1_SDA
);

//--------------------------------------------------------------------
// Input
//--------------------------------------------------------------------
input  F2M_GPI_1;
input  MSS_RESET_N;
input  UART_0_RXD;
input  UART_1_RXD;
input  VAREF1;
//--------------------------------------------------------------------
// Output
//--------------------------------------------------------------------
output M2F_GPO_2;
output M2F_GPO_3;
output M2F_GPO_4;
output M2F_GPO_5;
output M2F_GPO_6;
output SDD_1;
output UART_0_TXD;
output UART_1_TXD;
//--------------------------------------------------------------------
// Inout
//--------------------------------------------------------------------
inout  I2C_0_SCL;
inout  I2C_0_SDA;
inout  I2C_1_SCL;
inout  I2C_1_SDA;
//--------------------------------------------------------------------
// Nets
//--------------------------------------------------------------------
wire          F2M_GPI_1;
wire          I2C_0_SCL;
wire          I2C_0_SDA;
wire          I2C_1_SCL;
wire          I2C_1_SDA;
wire          MSS_ACE_0_SDD1_D;
wire          MSS_ACE_0_VAREF1_Y;
wire          MSS_ADLIB_INST_EMCCLK;
wire          MSS_ADLIB_INST_FCLK;
wire          MSS_ADLIB_INST_MACCLK;
wire          MSS_ADLIB_INST_MACCLKCCC;
wire          MSS_ADLIB_INST_PLLLOCK;
wire          MSS_ADLIB_INST_SYNCCLKFDBK;
wire          MSS_I2C_0_SCL_E;
wire          MSS_I2C_0_SCL_Y;
wire          MSS_I2C_0_SDA_E;
wire          MSS_I2C_0_SDA_Y;
wire          MSS_I2C_1_SCL_E;
wire          MSS_I2C_1_SCL_Y;
wire          MSS_I2C_1_SDA_E;
wire          MSS_I2C_1_SDA_Y;
wire          MSS_RESET_0_MSS_RESET_N_Y;
wire          MSS_RESET_N;
wire          MSS_UART_0_RXD_Y;
wire          MSS_UART_0_TXD_D;
wire          MSS_UART_1_RXD_Y;
wire          MSS_UART_1_TXD_D;
wire          MSSINT_GPI_1_Y;
wire   [2:2]  MSSINT_GPO_2_A;
wire   [3:3]  MSSINT_GPO_3_A;
wire   [4:4]  MSSINT_GPO_4_A;
wire   [5:5]  MSSINT_GPO_5_A;
wire   [6:6]  MSSINT_GPO_6_A;
wire          net_71;
wire          net_72;
wire          net_73;
wire          net_74;
wire          net_75;
wire          SDD_1_net_0;
wire          UART_0_RXD;
wire          UART_0_TXD_net_0;
wire          UART_1_RXD;
wire          UART_1_TXD_net_0;
wire          VAREF1;
wire          net_75_net_0;
wire          net_74_net_0;
wire          net_73_net_0;
wire          net_72_net_0;
wire          net_71_net_0;
wire          UART_0_TXD_net_1;
wire          UART_1_TXD_net_1;
wire          SDD_1_net_1;
wire   [31:0] GPI_net_0;
wire   [31:0] GPO_net_0;
//--------------------------------------------------------------------
// TiedOff Nets
//--------------------------------------------------------------------
wire          GND_net;
wire          VCC_net;
wire   [1:0]  DMAREADY_const_net_0;
wire   [1:0]  MACF2MRXD_const_net_0;
wire   [1:0]  MACRXD_const_net_0;
wire   [15:0] EMCRDB_const_net_0;
wire   [31:0] MSSPRDATA_const_net_0;
wire   [31:0] FABPADDR_const_net_0;
wire   [31:0] FABPWDATA_const_net_0;
//--------------------------------------------------------------------
// Constant assignments
//--------------------------------------------------------------------
assign GND_net               = 1'b0;
assign VCC_net               = 1'b1;
assign DMAREADY_const_net_0  = 2'h0;
assign MACF2MRXD_const_net_0 = 2'h0;
assign MACRXD_const_net_0    = 2'h0;
assign EMCRDB_const_net_0    = 16'h0000;
assign MSSPRDATA_const_net_0 = 32'h00000000;
assign FABPADDR_const_net_0  = 32'h00000000;
assign FABPWDATA_const_net_0 = 32'h00000000;
//--------------------------------------------------------------------
// Top level output port assignments
//--------------------------------------------------------------------
assign net_75_net_0     = net_75;
assign M2F_GPO_6        = net_75_net_0;
assign net_74_net_0     = net_74;
assign M2F_GPO_5        = net_74_net_0;
assign net_73_net_0     = net_73;
assign M2F_GPO_4        = net_73_net_0;
assign net_72_net_0     = net_72;
assign M2F_GPO_3        = net_72_net_0;
assign net_71_net_0     = net_71;
assign M2F_GPO_2        = net_71_net_0;
assign UART_0_TXD_net_1 = UART_0_TXD_net_0;
assign UART_0_TXD       = UART_0_TXD_net_1;
assign UART_1_TXD_net_1 = UART_1_TXD_net_0;
assign UART_1_TXD       = UART_1_TXD_net_1;
assign SDD_1_net_1      = SDD_1_net_0;
assign SDD_1            = SDD_1_net_1;
//--------------------------------------------------------------------
// Slices assignments
//--------------------------------------------------------------------
assign MSSINT_GPO_2_A[2] = GPO_net_0[2:2];
assign MSSINT_GPO_3_A[3] = GPO_net_0[3:3];
assign MSSINT_GPO_4_A[4] = GPO_net_0[4:4];
assign MSSINT_GPO_5_A[5] = GPO_net_0[5:5];
assign MSSINT_GPO_6_A[6] = GPO_net_0[6:6];
//--------------------------------------------------------------------
// Concatenation assignments
//--------------------------------------------------------------------
assign GPI_net_0 = { 30'h00000000 , MSSINT_GPI_1_Y , 1'b0 };
//--------------------------------------------------------------------
// Component instances
//--------------------------------------------------------------------
//--------OUTBUF_A
OUTBUF_A MSS_ACE_0_SDD1(
        // Inputs
        .D   ( MSS_ACE_0_SDD1_D ),
        // Outputs
        .PAD ( SDD_1_net_0 ) 
        );

//--------INBUF_A
INBUF_A MSS_ACE_0_VAREF1(
        // Inputs
        .PAD ( VAREF1 ),
        // Outputs
        .Y   ( MSS_ACE_0_VAREF1_Y ) 
        );

//--------MSS_APB
MSS_APB #( 
        .ACT_CONFIG ( 2048 ),
        .ACT_DIE    ( "IP4X3M1" ),
        .ACT_FCLK   ( 100000000 ),
        .ACT_PKG    ( "fg484" ) )
MSS_ADLIB_INST(
        // Inputs
        .MSSPRDATA      ( MSSPRDATA_const_net_0 ), // tied to 32'h00000000 from definition
        .MSSPREADY      ( VCC_net ), // tied to 1'b1 from definition
        .MSSPSLVERR     ( GND_net ), // tied to 1'b0 from definition
        .FABPADDR       ( FABPADDR_const_net_0 ), // tied to 32'h00000000 from definition
        .FABPWDATA      ( FABPWDATA_const_net_0 ), // tied to 32'h00000000 from definition
        .FABPWRITE      ( GND_net ), // tied to 1'b0 from definition
        .FABPSEL        ( GND_net ), // tied to 1'b0 from definition
        .FABPENABLE     ( GND_net ), // tied to 1'b0 from definition
        .SYNCCLKFDBK    ( MSS_ADLIB_INST_SYNCCLKFDBK ),
        .CALIBIN        ( GND_net ), // tied to 1'b0 from definition
        .FABINT         ( GND_net ), // tied to 1'b0 from definition
        .F2MRESETn      ( VCC_net ), // tied to 1'b1 from definition
        .DMAREADY       ( DMAREADY_const_net_0 ), // tied to 2'h0 from definition
        .RXEV           ( GND_net ), // tied to 1'b0 from definition
        .VRON           ( GND_net ), // tied to 1'b0 from definition
        .GPI            ( GPI_net_0 ),
        .UART0CTSn      ( GND_net ), // tied to 1'b0 from definition
        .UART0DSRn      ( GND_net ), // tied to 1'b0 from definition
        .UART0RIn       ( GND_net ), // tied to 1'b0 from definition
        .UART0DCDn      ( GND_net ), // tied to 1'b0 from definition
        .UART1CTSn      ( GND_net ), // tied to 1'b0 from definition
        .UART1DSRn      ( GND_net ), // tied to 1'b0 from definition
        .UART1RIn       ( GND_net ), // tied to 1'b0 from definition
        .UART1DCDn      ( GND_net ), // tied to 1'b0 from definition
        .I2C0SMBUSNI    ( GND_net ), // tied to 1'b0 from definition
        .I2C0SMBALERTNI ( GND_net ), // tied to 1'b0 from definition
        .I2C0BCLK       ( GND_net ), // tied to 1'b0 from definition
        .I2C1SMBUSNI    ( GND_net ), // tied to 1'b0 from definition
        .I2C1SMBALERTNI ( GND_net ), // tied to 1'b0 from definition
        .I2C1BCLK       ( GND_net ), // tied to 1'b0 from definition
        .MACF2MRXD      ( MACF2MRXD_const_net_0 ), // tied to 2'h0 from definition
        .MACF2MCRSDV    ( GND_net ), // tied to 1'b0 from definition
        .MACF2MRXER     ( GND_net ), // tied to 1'b0 from definition
        .MACF2MMDI      ( GND_net ), // tied to 1'b0 from definition
        .FABSDD0D       ( GND_net ), // tied to 1'b0 from definition
        .FABSDD1D       ( GND_net ), // tied to 1'b0 from definition
        .FABSDD2D       ( GND_net ), // tied to 1'b0 from definition
        .FABSDD0CLK     ( GND_net ), // tied to 1'b0 from definition
        .FABSDD1CLK     ( GND_net ), // tied to 1'b0 from definition
        .FABSDD2CLK     ( GND_net ), // tied to 1'b0 from definition
        .FABACETRIG     ( GND_net ), // tied to 1'b0 from definition
        .LVTTL0EN       ( GND_net ), // tied to 1'b0 from definition
        .LVTTL1EN       ( GND_net ), // tied to 1'b0 from definition
        .LVTTL2EN       ( GND_net ), // tied to 1'b0 from definition
        .LVTTL3EN       ( GND_net ), // tied to 1'b0 from definition
        .LVTTL4EN       ( GND_net ), // tied to 1'b0 from definition
        .LVTTL5EN       ( GND_net ), // tied to 1'b0 from definition
        .LVTTL6EN       ( GND_net ), // tied to 1'b0 from definition
        .LVTTL7EN       ( GND_net ), // tied to 1'b0 from definition
        .LVTTL8EN       ( GND_net ), // tied to 1'b0 from definition
        .LVTTL9EN       ( GND_net ), // tied to 1'b0 from definition
        .LVTTL10EN      ( GND_net ), // tied to 1'b0 from definition
        .LVTTL11EN      ( GND_net ), // tied to 1'b0 from definition
        .FCLK           ( MSS_ADLIB_INST_FCLK ),
        .MACCLKCCC      ( MSS_ADLIB_INST_MACCLKCCC ),
        .RCOSC          ( GND_net ), // tied to 1'b0 from definition
        .MACCLK         ( MSS_ADLIB_INST_MACCLK ),
        .PLLLOCK        ( MSS_ADLIB_INST_PLLLOCK ),
        .MSSRESETn      ( MSS_RESET_0_MSS_RESET_N_Y ),
        .SPI0DI         ( GND_net ), // tied to 1'b0 from definition
        .SPI0CLKI       ( GND_net ), // tied to 1'b0 from definition
        .SPI0SSI        ( GND_net ), // tied to 1'b0 from definition
        .UART0RXD       ( MSS_UART_0_RXD_Y ),
        .I2C0SDAI       ( MSS_I2C_0_SDA_Y ),
        .I2C0SCLI       ( MSS_I2C_0_SCL_Y ),
        .SPI1DI         ( GND_net ), // tied to 1'b0 from definition
        .SPI1CLKI       ( GND_net ), // tied to 1'b0 from definition
        .SPI1SSI        ( GND_net ), // tied to 1'b0 from definition
        .UART1RXD       ( MSS_UART_1_RXD_Y ),
        .I2C1SDAI       ( MSS_I2C_1_SDA_Y ),
        .I2C1SCLI       ( MSS_I2C_1_SCL_Y ),
        .MACRXD         ( MACRXD_const_net_0 ), // tied to 2'h0 from definition
        .MACCRSDV       ( GND_net ), // tied to 1'b0 from definition
        .MACRXER        ( GND_net ), // tied to 1'b0 from definition
        .MACMDI         ( GND_net ), // tied to 1'b0 from definition
        .EMCCLKRTN      ( MSS_ADLIB_INST_EMCCLK ),
        .EMCRDB         ( EMCRDB_const_net_0 ), // tied to 16'h0000 from definition
        .ADC0           ( GND_net ), // tied to 1'b0 from definition
        .ADC1           ( GND_net ), // tied to 1'b0 from definition
        .ADC2           ( GND_net ), // tied to 1'b0 from definition
        .ADC3           ( GND_net ), // tied to 1'b0 from definition
        .ADC4           ( GND_net ), // tied to 1'b0 from definition
        .ADC5           ( GND_net ), // tied to 1'b0 from definition
        .ADC6           ( GND_net ), // tied to 1'b0 from definition
        .ADC7           ( GND_net ), // tied to 1'b0 from definition
        .ADC8           ( GND_net ), // tied to 1'b0 from definition
        .ADC9           ( GND_net ), // tied to 1'b0 from definition
        .ADC10          ( GND_net ), // tied to 1'b0 from definition
        .ADC11          ( GND_net ), // tied to 1'b0 from definition
        .ABPS0          ( GND_net ), // tied to 1'b0 from definition
        .ABPS1          ( GND_net ), // tied to 1'b0 from definition
        .ABPS2          ( GND_net ), // tied to 1'b0 from definition
        .ABPS3          ( GND_net ), // tied to 1'b0 from definition
        .ABPS4          ( GND_net ), // tied to 1'b0 from definition
        .ABPS5          ( GND_net ), // tied to 1'b0 from definition
        .ABPS6          ( GND_net ), // tied to 1'b0 from definition
        .ABPS7          ( GND_net ), // tied to 1'b0 from definition
        .ABPS8          ( GND_net ), // tied to 1'b0 from definition
        .ABPS9          ( GND_net ), // tied to 1'b0 from definition
        .ABPS10         ( GND_net ), // tied to 1'b0 from definition
        .ABPS11         ( GND_net ), // tied to 1'b0 from definition
        .TM0            ( GND_net ), // tied to 1'b0 from definition
        .TM1            ( GND_net ), // tied to 1'b0 from definition
        .TM2            ( GND_net ), // tied to 1'b0 from definition
        .TM3            ( GND_net ), // tied to 1'b0 from definition
        .TM4            ( GND_net ), // tied to 1'b0 from definition
        .TM5            ( GND_net ), // tied to 1'b0 from definition
        .CM0            ( GND_net ), // tied to 1'b0 from definition
        .CM1            ( GND_net ), // tied to 1'b0 from definition
        .CM2            ( GND_net ), // tied to 1'b0 from definition
        .CM3            ( GND_net ), // tied to 1'b0 from definition
        .CM4            ( GND_net ), // tied to 1'b0 from definition
        .CM5            ( GND_net ), // tied to 1'b0 from definition
        .GNDTM0         ( GND_net ), // tied to 1'b0 from definition
        .GNDTM1         ( GND_net ), // tied to 1'b0 from definition
        .GNDTM2         ( GND_net ), // tied to 1'b0 from definition
        .VAREF0         ( GND_net ), // tied to 1'b0 from definition
        .VAREF1         ( MSS_ACE_0_VAREF1_Y ),
        .VAREF2         ( GND_net ), // tied to 1'b0 from definition
        .GNDVAREF       ( GND_net ), // tied to 1'b0 from definition
        .PUn            ( GND_net ), // tied to 1'b0 from definition
        // Outputs
        .MSSPADDR       (  ),
        .MSSPWDATA      (  ),
        .MSSPWRITE      (  ),
        .MSSPSEL        (  ),
        .MSSPENABLE     (  ),
        .FABPRDATA      (  ),
        .FABPREADY      (  ),
        .FABPSLVERR     (  ),
        .CALIBOUT       (  ),
        .MSSINT         (  ),
        .WDINT          (  ),
        .M2FRESETn      (  ),
        .DEEPSLEEP      (  ),
        .SLEEP          (  ),
        .TXEV           (  ),
        .GPO            ( GPO_net_0 ),
        .UART0RTSn      (  ),
        .UART0DTRn      (  ),
        .UART1RTSn      (  ),
        .UART1DTRn      (  ),
        .I2C0SMBUSNO    (  ),
        .I2C0SMBALERTNO (  ),
        .I2C1SMBUSNO    (  ),
        .I2C1SMBALERTNO (  ),
        .MACM2FTXD      (  ),
        .MACM2FTXEN     (  ),
        .MACM2FMDO      (  ),
        .MACM2FMDEN     (  ),
        .MACM2FMDC      (  ),
        .ACEFLAGS       (  ),
        .CMP0           (  ),
        .CMP1           (  ),
        .CMP2           (  ),
        .CMP3           (  ),
        .CMP4           (  ),
        .CMP5           (  ),
        .CMP6           (  ),
        .CMP7           (  ),
        .CMP8           (  ),
        .CMP9           (  ),
        .CMP10          (  ),
        .CMP11          (  ),
        .LVTTL0         (  ),
        .LVTTL1         (  ),
        .LVTTL2         (  ),
        .LVTTL3         (  ),
        .LVTTL4         (  ),
        .LVTTL5         (  ),
        .LVTTL6         (  ),
        .LVTTL7         (  ),
        .LVTTL8         (  ),
        .LVTTL9         (  ),
        .LVTTL10        (  ),
        .LVTTL11        (  ),
        .PUFABn         (  ),
        .VCC15GOOD      (  ),
        .VCC33GOOD      (  ),
        .GPOE           (  ),
        .SPI0DO         (  ),
        .SPI0DOE        (  ),
        .SPI0CLKO       (  ),
        .SPI0MODE       (  ),
        .SPI0SSO        (  ),
        .UART0TXD       ( MSS_UART_0_TXD_D ),
        .I2C0SDAO       ( MSS_I2C_0_SDA_E ),
        .I2C0SCLO       ( MSS_I2C_0_SCL_E ),
        .SPI1DO         (  ),
        .SPI1DOE        (  ),
        .SPI1CLKO       (  ),
        .SPI1MODE       (  ),
        .SPI1SSO        (  ),
        .UART1TXD       ( MSS_UART_1_TXD_D ),
        .I2C1SDAO       ( MSS_I2C_1_SDA_E ),
        .I2C1SCLO       ( MSS_I2C_1_SCL_E ),
        .MACTXD         (  ),
        .MACTXEN        (  ),
        .MACMDO         (  ),
        .MACMDEN        (  ),
        .MACMDC         (  ),
        .EMCCLK         ( MSS_ADLIB_INST_EMCCLK ),
        .EMCAB          (  ),
        .EMCWDB         (  ),
        .EMCRWn         (  ),
        .EMCCS0n        (  ),
        .EMCCS1n        (  ),
        .EMCOEN0n       (  ),
        .EMCOEN1n       (  ),
        .EMCBYTEN       (  ),
        .EMCDBOE        (  ),
        .SDD0           (  ),
        .SDD1           ( MSS_ACE_0_SDD1_D ),
        .SDD2           (  ),
        .VAREFOUT       (  ) 
        );

//--------audio_mss_tmp_MSS_CCC_0_MSS_CCC   -   Actel:SmartFusionMSS:MSS_CCC:2.0.106
audio_mss_tmp_MSS_CCC_0_MSS_CCC MSS_CCC_0(
        // Inputs
        .CLKA           ( GND_net ), // tied to 1'b0 from definition
        .CLKA_PAD       ( GND_net ), // tied to 1'b0 from definition
        .CLKA_PADP      ( GND_net ), // tied to 1'b0 from definition
        .CLKA_PADN      ( GND_net ), // tied to 1'b0 from definition
        .CLKB           ( GND_net ), // tied to 1'b0 from definition
        .CLKB_PAD       ( GND_net ), // tied to 1'b0 from definition
        .CLKB_PADP      ( GND_net ), // tied to 1'b0 from definition
        .CLKB_PADN      ( GND_net ), // tied to 1'b0 from definition
        .CLKC           ( GND_net ), // tied to 1'b0 from definition
        .CLKC_PAD       ( GND_net ), // tied to 1'b0 from definition
        .CLKC_PADP      ( GND_net ), // tied to 1'b0 from definition
        .CLKC_PADN      ( GND_net ), // tied to 1'b0 from definition
        .MAINXIN        ( GND_net ), // tied to 1'b0 from definition
        .LPXIN          ( GND_net ), // tied to 1'b0 from definition
        .MAC_CLK        ( GND_net ), // tied to 1'b0 from definition
        // Outputs
        .GLA            (  ),
        .GLB            (  ),
        .GLC            (  ),
        .FAB_CLK        ( MSS_ADLIB_INST_SYNCCLKFDBK ),
        .YB             (  ),
        .YC             (  ),
        .FAB_LOCK       (  ),
        .RCOSC_CLKOUT   (  ),
        .MAINXIN_CLKOUT (  ),
        .LPXIN_CLKOUT   (  ),
        .GLA0           ( MSS_ADLIB_INST_FCLK ),
        .MSS_LOCK       ( MSS_ADLIB_INST_PLLLOCK ),
        .MAC_CLK_CCC    ( MSS_ADLIB_INST_MACCLKCCC ),
        .MAC_CLK_IO     ( MSS_ADLIB_INST_MACCLK ) 
        );

//--------BIBUF_OPEND_MSS
BIBUF_OPEND_MSS #( 
        .ACT_CONFIG ( 0 ),
        .ACT_PIN    ( "U21" ) )
MSS_I2C_0_SCL(
        // Inputs
        .E   ( MSS_I2C_0_SCL_E ),
        // Outputs
        .Y   ( MSS_I2C_0_SCL_Y ),
        // Inouts
        .PAD ( I2C_0_SCL ) 
        );

//--------BIBUF_OPEND_MSS
BIBUF_OPEND_MSS #( 
        .ACT_CONFIG ( 0 ),
        .ACT_PIN    ( "V21" ) )
MSS_I2C_0_SDA(
        // Inputs
        .E   ( MSS_I2C_0_SDA_E ),
        // Outputs
        .Y   ( MSS_I2C_0_SDA_Y ),
        // Inouts
        .PAD ( I2C_0_SDA ) 
        );

//--------BIBUF_OPEND_MSS
BIBUF_OPEND_MSS #( 
        .ACT_CONFIG ( 0 ),
        .ACT_PIN    ( "U20" ) )
MSS_I2C_1_SCL(
        // Inputs
        .E   ( MSS_I2C_1_SCL_E ),
        // Outputs
        .Y   ( MSS_I2C_1_SCL_Y ),
        // Inouts
        .PAD ( I2C_1_SCL ) 
        );

//--------BIBUF_OPEND_MSS
BIBUF_OPEND_MSS #( 
        .ACT_CONFIG ( 0 ),
        .ACT_PIN    ( "V22" ) )
MSS_I2C_1_SDA(
        // Inputs
        .E   ( MSS_I2C_1_SDA_E ),
        // Outputs
        .Y   ( MSS_I2C_1_SDA_Y ),
        // Inouts
        .PAD ( I2C_1_SDA ) 
        );

//--------INBUF_MSS
INBUF_MSS #( 
        .ACT_CONFIG ( 0 ),
        .ACT_PIN    ( "R1" ) )
MSS_RESET_0_MSS_RESET_N(
        // Inputs
        .PAD ( MSS_RESET_N ),
        // Outputs
        .Y   ( MSS_RESET_0_MSS_RESET_N_Y ) 
        );

//--------INBUF_MSS
INBUF_MSS #( 
        .ACT_CONFIG ( 0 ),
        .ACT_PIN    ( "U18" ) )
MSS_UART_0_RXD(
        // Inputs
        .PAD ( UART_0_RXD ),
        // Outputs
        .Y   ( MSS_UART_0_RXD_Y ) 
        );

//--------OUTBUF_MSS
OUTBUF_MSS #( 
        .ACT_CONFIG ( 0 ),
        .ACT_PIN    ( "Y22" ) )
MSS_UART_0_TXD(
        // Inputs
        .D   ( MSS_UART_0_TXD_D ),
        // Outputs
        .PAD ( UART_0_TXD_net_0 ) 
        );

//--------INBUF_MSS
INBUF_MSS #( 
        .ACT_CONFIG ( 0 ),
        .ACT_PIN    ( "W22" ) )
MSS_UART_1_RXD(
        // Inputs
        .PAD ( UART_1_RXD ),
        // Outputs
        .Y   ( MSS_UART_1_RXD_Y ) 
        );

//--------OUTBUF_MSS
OUTBUF_MSS #( 
        .ACT_CONFIG ( 0 ),
        .ACT_PIN    ( "V20" ) )
MSS_UART_1_TXD(
        // Inputs
        .D   ( MSS_UART_1_TXD_D ),
        // Outputs
        .PAD ( UART_1_TXD_net_0 ) 
        );

//--------MSSINT
MSSINT MSSINT_GPI_1(
        // Inputs
        .A ( F2M_GPI_1 ),
        // Outputs
        .Y ( MSSINT_GPI_1_Y ) 
        );

//--------MSSINT
MSSINT MSSINT_GPO_2(
        // Inputs
        .A ( MSSINT_GPO_2_A ),
        // Outputs
        .Y ( net_71 ) 
        );

//--------MSSINT
MSSINT MSSINT_GPO_3(
        // Inputs
        .A ( MSSINT_GPO_3_A ),
        // Outputs
        .Y ( net_72 ) 
        );

//--------MSSINT
MSSINT MSSINT_GPO_4(
        // Inputs
        .A ( MSSINT_GPO_4_A ),
        // Outputs
        .Y ( net_73 ) 
        );

//--------MSSINT
MSSINT MSSINT_GPO_5(
        // Inputs
        .A ( MSSINT_GPO_5_A ),
        // Outputs
        .Y ( net_74 ) 
        );

//--------MSSINT
MSSINT MSSINT_GPO_6(
        // Inputs
        .A ( MSSINT_GPO_6_A ),
        // Outputs
        .Y ( net_75 ) 
        );


endmodule
