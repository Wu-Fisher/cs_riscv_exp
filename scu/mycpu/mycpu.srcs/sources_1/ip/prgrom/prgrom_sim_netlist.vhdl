-- Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2018.3 (lin64) Build 2405991 Thu Dec  6 23:36:41 MST 2018
-- Date        : Thu Jun 30 16:46:15 2022
-- Host        : wufisher-TK running 64-bit Ubuntu 20.04.4 LTS
-- Command     : write_vhdl -force -mode funcsim
--               /home/wufisher/hub/cs_riscv_exp/cu/mycpu/mycpu.srcs/sources_1/ip/prgrom/prgrom_sim_netlist.vhdl
-- Design      : prgrom
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7a100tfgg484-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity prgrom_rom is
  port (
    spo : out STD_LOGIC_VECTOR ( 29 downto 0 );
    a : in STD_LOGIC_VECTOR ( 13 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of prgrom_rom : entity is "rom";
end prgrom_rom;

architecture STRUCTURE of prgrom_rom is
  signal \spo[0]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \spo[10]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \spo[11]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \spo[11]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \spo[12]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \spo[12]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \spo[13]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \spo[13]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \spo[13]_INST_0_i_3_n_0\ : STD_LOGIC;
  signal \spo[14]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \spo[14]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \spo[15]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \spo[15]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \spo[15]_INST_0_i_3_n_0\ : STD_LOGIC;
  signal \spo[15]_INST_0_i_4_n_0\ : STD_LOGIC;
  signal \spo[16]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \spo[16]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \spo[17]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \spo[17]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \spo[17]_INST_0_i_3_n_0\ : STD_LOGIC;
  signal \spo[18]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \spo[18]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \spo[19]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \spo[19]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \spo[19]_INST_0_i_3_n_0\ : STD_LOGIC;
  signal \spo[19]_INST_0_i_4_n_0\ : STD_LOGIC;
  signal \spo[20]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \spo[20]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \spo[20]_INST_0_i_3_n_0\ : STD_LOGIC;
  signal \spo[21]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \spo[21]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \spo[22]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \spo[22]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \spo[22]_INST_0_i_3_n_0\ : STD_LOGIC;
  signal \spo[23]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \spo[23]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \spo[24]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \spo[24]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \spo[25]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \spo[25]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \spo[25]_INST_0_i_3_n_0\ : STD_LOGIC;
  signal \spo[25]_INST_0_i_4_n_0\ : STD_LOGIC;
  signal \spo[25]_INST_0_i_5_n_0\ : STD_LOGIC;
  signal \spo[26]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \spo[26]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \spo[26]_INST_0_i_3_n_0\ : STD_LOGIC;
  signal \spo[27]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \spo[27]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \spo[28]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \spo[28]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \spo[29]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \spo[29]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \spo[29]_INST_0_i_3_n_0\ : STD_LOGIC;
  signal \spo[29]_INST_0_i_4_n_0\ : STD_LOGIC;
  signal \spo[2]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \spo[30]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \spo[30]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \spo[30]_INST_0_i_3_n_0\ : STD_LOGIC;
  signal \spo[30]_INST_0_i_4_n_0\ : STD_LOGIC;
  signal \spo[3]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \spo[3]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \spo[4]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \spo[4]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \spo[5]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \spo[5]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \spo[6]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \spo[6]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \spo[6]_INST_0_i_3_n_0\ : STD_LOGIC;
  signal \spo[7]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \spo[7]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \spo[8]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \spo[8]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \spo[9]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \spo[9]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \spo[9]_INST_0_i_3_n_0\ : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \spo[15]_INST_0_i_4\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \spo[25]_INST_0_i_1\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \spo[26]_INST_0_i_3\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \spo[28]_INST_0\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \spo[29]_INST_0_i_2\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \spo[2]_INST_0\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \spo[30]_INST_0_i_3\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \spo[30]_INST_0_i_4\ : label is "soft_lutpair1";
begin
\spo[0]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0002000200000002"
    )
        port map (
      I0 => \spo[30]_INST_0_i_3_n_0\,
      I1 => a(8),
      I2 => a(7),
      I3 => a(9),
      I4 => a(6),
      I5 => \spo[0]_INST_0_i_1_n_0\,
      O => spo(0)
    );
\spo[0]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000777F77FF"
    )
        port map (
      I0 => a(3),
      I1 => a(4),
      I2 => a(0),
      I3 => a(2),
      I4 => a(1),
      I5 => a(5),
      O => \spo[0]_INST_0_i_1_n_0\
    );
\spo[10]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0002000000000000"
    )
        port map (
      I0 => \spo[11]_INST_0_i_1_n_0\,
      I1 => a(5),
      I2 => a(9),
      I3 => a(10),
      I4 => \spo[25]_INST_0_i_2_n_0\,
      I5 => \spo[10]_INST_0_i_1_n_0\,
      O => spo(9)
    );
\spo[10]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"08100C120D101C11"
    )
        port map (
      I0 => a(0),
      I1 => a(2),
      I2 => a(4),
      I3 => a(6),
      I4 => a(3),
      I5 => a(1),
      O => \spo[10]_INST_0_i_1_n_0\
    );
\spo[11]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0002000000000000"
    )
        port map (
      I0 => \spo[11]_INST_0_i_1_n_0\,
      I1 => a(5),
      I2 => a(9),
      I3 => a(10),
      I4 => \spo[25]_INST_0_i_2_n_0\,
      I5 => \spo[11]_INST_0_i_2_n_0\,
      O => spo(10)
    );
\spo[11]_INST_0_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"01"
    )
        port map (
      I0 => a(13),
      I1 => a(12),
      I2 => a(11),
      O => \spo[11]_INST_0_i_1_n_0\
    );
\spo[11]_INST_0_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0005051003CDC7CE"
    )
        port map (
      I0 => a(0),
      I1 => a(2),
      I2 => a(6),
      I3 => a(3),
      I4 => a(1),
      I5 => a(4),
      O => \spo[11]_INST_0_i_2_n_0\
    );
\spo[12]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"C0A00000"
    )
        port map (
      I0 => \spo[12]_INST_0_i_1_n_0\,
      I1 => \spo[12]_INST_0_i_2_n_0\,
      I2 => \spo[30]_INST_0_i_3_n_0\,
      I3 => a(5),
      I4 => \spo[30]_INST_0_i_4_n_0\,
      O => spo(11)
    );
\spo[12]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0666255052111551"
    )
        port map (
      I0 => a(4),
      I1 => a(0),
      I2 => a(2),
      I3 => a(3),
      I4 => a(6),
      I5 => a(1),
      O => \spo[12]_INST_0_i_1_n_0\
    );
\spo[12]_INST_0_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"1401104010400140"
    )
        port map (
      I0 => a(6),
      I1 => a(3),
      I2 => a(2),
      I3 => a(1),
      I4 => a(4),
      I5 => a(0),
      O => \spo[12]_INST_0_i_2_n_0\
    );
\spo[13]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"A080A080A0A08080"
    )
        port map (
      I0 => \spo[25]_INST_0_i_1_n_0\,
      I1 => \spo[13]_INST_0_i_1_n_0\,
      I2 => \spo[25]_INST_0_i_2_n_0\,
      I3 => \spo[13]_INST_0_i_2_n_0\,
      I4 => \spo[13]_INST_0_i_3_n_0\,
      I5 => a(6),
      O => spo(12)
    );
\spo[13]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000001"
    )
        port map (
      I0 => a(2),
      I1 => a(3),
      I2 => a(0),
      I3 => a(1),
      I4 => a(5),
      I5 => a(4),
      O => \spo[13]_INST_0_i_1_n_0\
    );
\spo[13]_INST_0_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000122800004208"
    )
        port map (
      I0 => a(4),
      I1 => a(3),
      I2 => a(0),
      I3 => a(2),
      I4 => a(5),
      I5 => a(1),
      O => \spo[13]_INST_0_i_2_n_0\
    );
\spo[13]_INST_0_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7BD65BBD00910411"
    )
        port map (
      I0 => a(4),
      I1 => a(1),
      I2 => a(2),
      I3 => a(0),
      I4 => a(3),
      I5 => a(5),
      O => \spo[13]_INST_0_i_3_n_0\
    );
\spo[14]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"C0A00000"
    )
        port map (
      I0 => \spo[14]_INST_0_i_1_n_0\,
      I1 => \spo[14]_INST_0_i_2_n_0\,
      I2 => \spo[30]_INST_0_i_3_n_0\,
      I3 => a(3),
      I4 => \spo[30]_INST_0_i_4_n_0\,
      O => spo(13)
    );
\spo[14]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00480064480D4101"
    )
        port map (
      I0 => a(0),
      I1 => a(1),
      I2 => a(4),
      I3 => a(6),
      I4 => a(2),
      I5 => a(5),
      O => \spo[14]_INST_0_i_1_n_0\
    );
\spo[14]_INST_0_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0002057106850201"
    )
        port map (
      I0 => a(4),
      I1 => a(0),
      I2 => a(5),
      I3 => a(6),
      I4 => a(1),
      I5 => a(2),
      O => \spo[14]_INST_0_i_2_n_0\
    );
\spo[15]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"A888AA88A8888888"
    )
        port map (
      I0 => \spo[25]_INST_0_i_1_n_0\,
      I1 => \spo[15]_INST_0_i_1_n_0\,
      I2 => \spo[15]_INST_0_i_2_n_0\,
      I3 => \spo[25]_INST_0_i_2_n_0\,
      I4 => a(5),
      I5 => \spo[15]_INST_0_i_3_n_0\,
      O => spo(14)
    );
\spo[15]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0880008000800080"
    )
        port map (
      I0 => \spo[15]_INST_0_i_4_n_0\,
      I1 => \spo[25]_INST_0_i_2_n_0\,
      I2 => a(0),
      I3 => a(2),
      I4 => a(3),
      I5 => a(1),
      O => \spo[15]_INST_0_i_1_n_0\
    );
\spo[15]_INST_0_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"003E0003009700ED"
    )
        port map (
      I0 => a(3),
      I1 => a(0),
      I2 => a(4),
      I3 => a(6),
      I4 => a(2),
      I5 => a(1),
      O => \spo[15]_INST_0_i_2_n_0\
    );
\spo[15]_INST_0_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"36586052260B4063"
    )
        port map (
      I0 => a(3),
      I1 => a(4),
      I2 => a(0),
      I3 => a(2),
      I4 => a(6),
      I5 => a(1),
      O => \spo[15]_INST_0_i_3_n_0\
    );
\spo[15]_INST_0_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => a(4),
      I1 => a(6),
      O => \spo[15]_INST_0_i_4_n_0\
    );
\spo[16]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"CA000000"
    )
        port map (
      I0 => \spo[16]_INST_0_i_1_n_0\,
      I1 => \spo[16]_INST_0_i_2_n_0\,
      I2 => a(6),
      I3 => \spo[30]_INST_0_i_4_n_0\,
      I4 => \spo[30]_INST_0_i_3_n_0\,
      O => spo(15)
    );
\spo[16]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"42088C40019DC621"
    )
        port map (
      I0 => a(2),
      I1 => a(5),
      I2 => a(0),
      I3 => a(1),
      I4 => a(3),
      I5 => a(4),
      O => \spo[16]_INST_0_i_1_n_0\
    );
\spo[16]_INST_0_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000765E45CB"
    )
        port map (
      I0 => a(4),
      I1 => a(3),
      I2 => a(0),
      I3 => a(2),
      I4 => a(1),
      I5 => a(5),
      O => \spo[16]_INST_0_i_2_n_0\
    );
\spo[17]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"A8A88888AA888888"
    )
        port map (
      I0 => \spo[25]_INST_0_i_1_n_0\,
      I1 => \spo[17]_INST_0_i_1_n_0\,
      I2 => \spo[17]_INST_0_i_2_n_0\,
      I3 => \spo[17]_INST_0_i_3_n_0\,
      I4 => \spo[25]_INST_0_i_2_n_0\,
      I5 => a(2),
      O => spo(16)
    );
\spo[17]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000002000200020"
    )
        port map (
      I0 => a(4),
      I1 => a(5),
      I2 => \spo[25]_INST_0_i_2_n_0\,
      I3 => a(6),
      I4 => a(3),
      I5 => a(0),
      O => \spo[17]_INST_0_i_1_n_0\
    );
\spo[17]_INST_0_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000554357002000"
    )
        port map (
      I0 => a(5),
      I1 => a(6),
      I2 => a(0),
      I3 => a(1),
      I4 => a(4),
      I5 => a(3),
      O => \spo[17]_INST_0_i_2_n_0\
    );
\spo[17]_INST_0_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"020E9F000F0B0F41"
    )
        port map (
      I0 => a(3),
      I1 => a(1),
      I2 => a(5),
      I3 => a(4),
      I4 => a(6),
      I5 => a(0),
      O => \spo[17]_INST_0_i_3_n_0\
    );
\spo[18]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"CA000000"
    )
        port map (
      I0 => \spo[18]_INST_0_i_1_n_0\,
      I1 => \spo[18]_INST_0_i_2_n_0\,
      I2 => a(6),
      I3 => \spo[30]_INST_0_i_4_n_0\,
      I4 => \spo[30]_INST_0_i_3_n_0\,
      O => spo(17)
    );
\spo[18]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"799E5AB7084000C3"
    )
        port map (
      I0 => a(2),
      I1 => a(1),
      I2 => a(0),
      I3 => a(4),
      I4 => a(3),
      I5 => a(5),
      O => \spo[18]_INST_0_i_1_n_0\
    );
\spo[18]_INST_0_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00001C1800006455"
    )
        port map (
      I0 => a(0),
      I1 => a(3),
      I2 => a(4),
      I3 => a(1),
      I4 => a(5),
      I5 => a(2),
      O => \spo[18]_INST_0_i_2_n_0\
    );
\spo[19]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"A8A88888AA888888"
    )
        port map (
      I0 => \spo[25]_INST_0_i_1_n_0\,
      I1 => \spo[19]_INST_0_i_1_n_0\,
      I2 => \spo[19]_INST_0_i_2_n_0\,
      I3 => \spo[19]_INST_0_i_3_n_0\,
      I4 => \spo[25]_INST_0_i_2_n_0\,
      I5 => a(5),
      O => spo(18)
    );
\spo[19]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000080000000808"
    )
        port map (
      I0 => \spo[25]_INST_0_i_2_n_0\,
      I1 => \spo[19]_INST_0_i_4_n_0\,
      I2 => a(0),
      I3 => a(2),
      I4 => a(6),
      I5 => a(4),
      O => \spo[19]_INST_0_i_1_n_0\
    );
\spo[19]_INST_0_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000294A00000A42"
    )
        port map (
      I0 => a(1),
      I1 => a(2),
      I2 => a(3),
      I3 => a(4),
      I4 => a(6),
      I5 => a(0),
      O => \spo[19]_INST_0_i_2_n_0\
    );
\spo[19]_INST_0_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000898477D7FB4B"
    )
        port map (
      I0 => a(6),
      I1 => a(2),
      I2 => a(1),
      I3 => a(3),
      I4 => a(4),
      I5 => a(0),
      O => \spo[19]_INST_0_i_3_n_0\
    );
\spo[19]_INST_0_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => a(3),
      I1 => a(1),
      O => \spo[19]_INST_0_i_4_n_0\
    );
\spo[20]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"A0A0A0A0A0802000"
    )
        port map (
      I0 => \spo[25]_INST_0_i_1_n_0\,
      I1 => a(6),
      I2 => \spo[25]_INST_0_i_2_n_0\,
      I3 => \spo[20]_INST_0_i_1_n_0\,
      I4 => \spo[20]_INST_0_i_2_n_0\,
      I5 => \spo[20]_INST_0_i_3_n_0\,
      O => spo(19)
    );
\spo[20]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"351854DFDA71F255"
    )
        port map (
      I0 => a(5),
      I1 => a(2),
      I2 => a(4),
      I3 => a(1),
      I4 => a(0),
      I5 => a(3),
      O => \spo[20]_INST_0_i_1_n_0\
    );
\spo[20]_INST_0_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0004000014445000"
    )
        port map (
      I0 => a(5),
      I1 => a(3),
      I2 => a(2),
      I3 => a(1),
      I4 => a(0),
      I5 => a(4),
      O => \spo[20]_INST_0_i_2_n_0\
    );
\spo[20]_INST_0_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000050D0001"
    )
        port map (
      I0 => a(2),
      I1 => a(1),
      I2 => a(5),
      I3 => a(3),
      I4 => a(4),
      I5 => a(0),
      O => \spo[20]_INST_0_i_3_n_0\
    );
\spo[21]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"C0A00000"
    )
        port map (
      I0 => \spo[21]_INST_0_i_1_n_0\,
      I1 => \spo[21]_INST_0_i_2_n_0\,
      I2 => \spo[30]_INST_0_i_3_n_0\,
      I3 => a(5),
      I4 => \spo[30]_INST_0_i_4_n_0\,
      O => spo(20)
    );
\spo[21]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"108742C80001000F"
    )
        port map (
      I0 => a(2),
      I1 => a(3),
      I2 => a(0),
      I3 => a(4),
      I4 => a(1),
      I5 => a(6),
      O => \spo[21]_INST_0_i_1_n_0\
    );
\spo[21]_INST_0_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"002B00D400FD002A"
    )
        port map (
      I0 => a(2),
      I1 => a(0),
      I2 => a(4),
      I3 => a(6),
      I4 => a(3),
      I5 => a(1),
      O => \spo[21]_INST_0_i_2_n_0\
    );
\spo[22]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAAAAAA0802000"
    )
        port map (
      I0 => \spo[25]_INST_0_i_1_n_0\,
      I1 => a(1),
      I2 => \spo[25]_INST_0_i_2_n_0\,
      I3 => \spo[22]_INST_0_i_1_n_0\,
      I4 => \spo[22]_INST_0_i_2_n_0\,
      I5 => \spo[22]_INST_0_i_3_n_0\,
      O => spo(21)
    );
\spo[22]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"091507450EA50015"
    )
        port map (
      I0 => a(0),
      I1 => a(4),
      I2 => a(6),
      I3 => a(5),
      I4 => a(3),
      I5 => a(2),
      O => \spo[22]_INST_0_i_1_n_0\
    );
\spo[22]_INST_0_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"01080C0B50824CC8"
    )
        port map (
      I0 => a(3),
      I1 => a(2),
      I2 => a(6),
      I3 => a(4),
      I4 => a(0),
      I5 => a(5),
      O => \spo[22]_INST_0_i_2_n_0\
    );
\spo[22]_INST_0_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000010"
    )
        port map (
      I0 => a(5),
      I1 => a(6),
      I2 => a(4),
      I3 => a(0),
      I4 => a(8),
      I5 => a(7),
      O => \spo[22]_INST_0_i_3_n_0\
    );
\spo[23]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"C0A00000"
    )
        port map (
      I0 => \spo[23]_INST_0_i_1_n_0\,
      I1 => \spo[23]_INST_0_i_2_n_0\,
      I2 => \spo[30]_INST_0_i_3_n_0\,
      I3 => a(5),
      I4 => \spo[30]_INST_0_i_4_n_0\,
      O => spo(22)
    );
\spo[23]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"200240340859003D"
    )
        port map (
      I0 => a(1),
      I1 => a(3),
      I2 => a(2),
      I3 => a(4),
      I4 => a(6),
      I5 => a(0),
      O => \spo[23]_INST_0_i_1_n_0\
    );
\spo[23]_INST_0_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0001000000000200"
    )
        port map (
      I0 => a(4),
      I1 => a(6),
      I2 => a(1),
      I3 => a(0),
      I4 => a(3),
      I5 => a(2),
      O => \spo[23]_INST_0_i_2_n_0\
    );
\spo[24]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"CA000000"
    )
        port map (
      I0 => \spo[24]_INST_0_i_1_n_0\,
      I1 => \spo[24]_INST_0_i_2_n_0\,
      I2 => a(6),
      I3 => \spo[30]_INST_0_i_4_n_0\,
      I4 => \spo[30]_INST_0_i_3_n_0\,
      O => spo(23)
    );
\spo[24]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0411089B8AB40045"
    )
        port map (
      I0 => a(5),
      I1 => a(2),
      I2 => a(0),
      I3 => a(4),
      I4 => a(1),
      I5 => a(3),
      O => \spo[24]_INST_0_i_1_n_0\
    );
\spo[24]_INST_0_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00260000008D0008"
    )
        port map (
      I0 => a(2),
      I1 => a(3),
      I2 => a(0),
      I3 => a(5),
      I4 => a(1),
      I5 => a(4),
      O => \spo[24]_INST_0_i_2_n_0\
    );
\spo[25]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"A0A0A020A0A08000"
    )
        port map (
      I0 => \spo[25]_INST_0_i_1_n_0\,
      I1 => a(3),
      I2 => \spo[25]_INST_0_i_2_n_0\,
      I3 => \spo[25]_INST_0_i_3_n_0\,
      I4 => \spo[25]_INST_0_i_4_n_0\,
      I5 => \spo[25]_INST_0_i_5_n_0\,
      O => spo(24)
    );
\spo[25]_INST_0_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000001"
    )
        port map (
      I0 => a(10),
      I1 => a(9),
      I2 => a(11),
      I3 => a(12),
      I4 => a(13),
      O => \spo[25]_INST_0_i_1_n_0\
    );
\spo[25]_INST_0_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => a(7),
      I1 => a(8),
      O => \spo[25]_INST_0_i_2_n_0\
    );
\spo[25]_INST_0_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00400A2001110241"
    )
        port map (
      I0 => a(1),
      I1 => a(0),
      I2 => a(5),
      I3 => a(6),
      I4 => a(4),
      I5 => a(2),
      O => \spo[25]_INST_0_i_3_n_0\
    );
\spo[25]_INST_0_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000008000000000"
    )
        port map (
      I0 => a(0),
      I1 => a(1),
      I2 => a(5),
      I3 => a(6),
      I4 => a(2),
      I5 => a(4),
      O => \spo[25]_INST_0_i_4_n_0\
    );
\spo[25]_INST_0_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"044500910A000019"
    )
        port map (
      I0 => a(0),
      I1 => a(1),
      I2 => a(5),
      I3 => a(6),
      I4 => a(4),
      I5 => a(2),
      O => \spo[25]_INST_0_i_5_n_0\
    );
\spo[26]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AAAA2000"
    )
        port map (
      I0 => \spo[30]_INST_0_i_3_n_0\,
      I1 => a(6),
      I2 => \spo[30]_INST_0_i_4_n_0\,
      I3 => \spo[26]_INST_0_i_1_n_0\,
      I4 => \spo[26]_INST_0_i_2_n_0\,
      O => spo(25)
    );
\spo[26]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"10904120052788D7"
    )
        port map (
      I0 => a(3),
      I1 => a(2),
      I2 => a(5),
      I3 => a(1),
      I4 => a(4),
      I5 => a(0),
      O => \spo[26]_INST_0_i_1_n_0\
    );
\spo[26]_INST_0_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0600000000000000"
    )
        port map (
      I0 => a(0),
      I1 => a(3),
      I2 => a(2),
      I3 => \spo[26]_INST_0_i_3_n_0\,
      I4 => \spo[30]_INST_0_i_4_n_0\,
      I5 => a(6),
      O => \spo[26]_INST_0_i_2_n_0\
    );
\spo[26]_INST_0_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => a(4),
      I1 => a(5),
      O => \spo[26]_INST_0_i_3_n_0\
    );
\spo[27]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"CA000000"
    )
        port map (
      I0 => \spo[27]_INST_0_i_1_n_0\,
      I1 => \spo[27]_INST_0_i_2_n_0\,
      I2 => a(6),
      I3 => \spo[30]_INST_0_i_4_n_0\,
      I4 => \spo[30]_INST_0_i_3_n_0\,
      O => spo(26)
    );
\spo[27]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0400040104100101"
    )
        port map (
      I0 => a(0),
      I1 => a(4),
      I2 => a(5),
      I3 => a(3),
      I4 => a(1),
      I5 => a(2),
      O => \spo[27]_INST_0_i_1_n_0\
    );
\spo[27]_INST_0_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0005014000000000"
    )
        port map (
      I0 => a(5),
      I1 => a(1),
      I2 => a(2),
      I3 => a(0),
      I4 => a(3),
      I5 => a(4),
      O => \spo[27]_INST_0_i_2_n_0\
    );
\spo[28]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFE0"
    )
        port map (
      I0 => \spo[28]_INST_0_i_1_n_0\,
      I1 => \spo[28]_INST_0_i_2_n_0\,
      I2 => \spo[29]_INST_0_i_2_n_0\,
      I3 => \spo[29]_INST_0_i_3_n_0\,
      O => spo(27)
    );
\spo[28]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0030000000800000"
    )
        port map (
      I0 => a(1),
      I1 => a(2),
      I2 => a(3),
      I3 => a(0),
      I4 => a(4),
      I5 => a(6),
      O => \spo[28]_INST_0_i_1_n_0\
    );
\spo[28]_INST_0_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000800000003"
    )
        port map (
      I0 => a(6),
      I1 => a(4),
      I2 => a(1),
      I3 => a(3),
      I4 => a(2),
      I5 => a(0),
      O => \spo[28]_INST_0_i_2_n_0\
    );
\spo[29]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"F8"
    )
        port map (
      I0 => \spo[29]_INST_0_i_1_n_0\,
      I1 => \spo[29]_INST_0_i_2_n_0\,
      I2 => \spo[29]_INST_0_i_3_n_0\,
      O => spo(29)
    );
\spo[29]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"1210204000000011"
    )
        port map (
      I0 => a(2),
      I1 => a(0),
      I2 => a(6),
      I3 => a(1),
      I4 => a(3),
      I5 => a(4),
      O => \spo[29]_INST_0_i_1_n_0\
    );
\spo[29]_INST_0_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000002"
    )
        port map (
      I0 => \spo[30]_INST_0_i_3_n_0\,
      I1 => a(5),
      I2 => a(9),
      I3 => a(8),
      I4 => a(7),
      O => \spo[29]_INST_0_i_2_n_0\
    );
\spo[29]_INST_0_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000800000000"
    )
        port map (
      I0 => \spo[30]_INST_0_i_3_n_0\,
      I1 => \spo[29]_INST_0_i_4_n_0\,
      I2 => a(7),
      I3 => a(8),
      I4 => a(9),
      I5 => a(5),
      O => \spo[29]_INST_0_i_3_n_0\
    );
\spo[29]_INST_0_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000048200001804"
    )
        port map (
      I0 => a(0),
      I1 => a(1),
      I2 => a(3),
      I3 => a(2),
      I4 => a(6),
      I5 => a(4),
      O => \spo[29]_INST_0_i_4_n_0\
    );
\spo[2]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"F8"
    )
        port map (
      I0 => \spo[2]_INST_0_i_1_n_0\,
      I1 => \spo[29]_INST_0_i_2_n_0\,
      I2 => \spo[29]_INST_0_i_3_n_0\,
      O => spo(1)
    );
\spo[2]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"1410000140800001"
    )
        port map (
      I0 => a(0),
      I1 => a(2),
      I2 => a(3),
      I3 => a(1),
      I4 => a(4),
      I5 => a(6),
      O => \spo[2]_INST_0_i_1_n_0\
    );
\spo[30]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"C0A00000"
    )
        port map (
      I0 => \spo[30]_INST_0_i_1_n_0\,
      I1 => \spo[30]_INST_0_i_2_n_0\,
      I2 => \spo[30]_INST_0_i_3_n_0\,
      I3 => a(3),
      I4 => \spo[30]_INST_0_i_4_n_0\,
      O => spo(28)
    );
\spo[30]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000010A318820809"
    )
        port map (
      I0 => a(1),
      I1 => a(2),
      I2 => a(4),
      I3 => a(0),
      I4 => a(5),
      I5 => a(6),
      O => \spo[30]_INST_0_i_1_n_0\
    );
\spo[30]_INST_0_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0020030100502498"
    )
        port map (
      I0 => a(4),
      I1 => a(6),
      I2 => a(1),
      I3 => a(2),
      I4 => a(0),
      I5 => a(5),
      O => \spo[30]_INST_0_i_2_n_0\
    );
\spo[30]_INST_0_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0001"
    )
        port map (
      I0 => a(11),
      I1 => a(12),
      I2 => a(13),
      I3 => a(10),
      O => \spo[30]_INST_0_i_3_n_0\
    );
\spo[30]_INST_0_i_4\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"01"
    )
        port map (
      I0 => a(9),
      I1 => a(8),
      I2 => a(7),
      O => \spo[30]_INST_0_i_4_n_0\
    );
\spo[3]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"CA000000"
    )
        port map (
      I0 => \spo[3]_INST_0_i_1_n_0\,
      I1 => \spo[3]_INST_0_i_2_n_0\,
      I2 => a(6),
      I3 => \spo[30]_INST_0_i_4_n_0\,
      I4 => \spo[30]_INST_0_i_3_n_0\,
      O => spo(2)
    );
\spo[3]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0482180460000000"
    )
        port map (
      I0 => a(0),
      I1 => a(1),
      I2 => a(3),
      I3 => a(2),
      I4 => a(4),
      I5 => a(5),
      O => \spo[3]_INST_0_i_1_n_0\
    );
\spo[3]_INST_0_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000400089"
    )
        port map (
      I0 => a(3),
      I1 => a(4),
      I2 => a(1),
      I3 => a(5),
      I4 => a(2),
      I5 => a(0),
      O => \spo[3]_INST_0_i_2_n_0\
    );
\spo[4]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"C0A00000"
    )
        port map (
      I0 => \spo[4]_INST_0_i_1_n_0\,
      I1 => \spo[4]_INST_0_i_2_n_0\,
      I2 => \spo[30]_INST_0_i_3_n_0\,
      I3 => a(4),
      I4 => \spo[30]_INST_0_i_4_n_0\,
      O => spo(3)
    );
\spo[4]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"02062BFD0900EFEF"
    )
        port map (
      I0 => a(0),
      I1 => a(2),
      I2 => a(6),
      I3 => a(3),
      I4 => a(5),
      I5 => a(1),
      O => \spo[4]_INST_0_i_1_n_0\
    );
\spo[4]_INST_0_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000209099A429A9A"
    )
        port map (
      I0 => a(0),
      I1 => a(2),
      I2 => a(5),
      I3 => a(1),
      I4 => a(3),
      I5 => a(6),
      O => \spo[4]_INST_0_i_2_n_0\
    );
\spo[5]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"CA000000"
    )
        port map (
      I0 => \spo[5]_INST_0_i_1_n_0\,
      I1 => \spo[5]_INST_0_i_2_n_0\,
      I2 => a(6),
      I3 => \spo[30]_INST_0_i_4_n_0\,
      I4 => \spo[30]_INST_0_i_3_n_0\,
      O => spo(4)
    );
\spo[5]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EAAAFAAAFEEEEEEF"
    )
        port map (
      I0 => a(5),
      I1 => a(4),
      I2 => a(3),
      I3 => a(2),
      I4 => a(1),
      I5 => a(0),
      O => \spo[5]_INST_0_i_1_n_0\
    );
\spo[5]_INST_0_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"1140150414451445"
    )
        port map (
      I0 => a(5),
      I1 => a(3),
      I2 => a(2),
      I3 => a(4),
      I4 => a(1),
      I5 => a(0),
      O => \spo[5]_INST_0_i_2_n_0\
    );
\spo[6]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"A0A0A0A0A0802000"
    )
        port map (
      I0 => \spo[25]_INST_0_i_1_n_0\,
      I1 => a(5),
      I2 => \spo[25]_INST_0_i_2_n_0\,
      I3 => \spo[6]_INST_0_i_1_n_0\,
      I4 => \spo[6]_INST_0_i_2_n_0\,
      I5 => \spo[6]_INST_0_i_3_n_0\,
      O => spo(5)
    );
\spo[6]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"001880006F4FC850"
    )
        port map (
      I0 => a(2),
      I1 => a(3),
      I2 => a(6),
      I3 => a(1),
      I4 => a(4),
      I5 => a(0),
      O => \spo[6]_INST_0_i_1_n_0\
    );
\spo[6]_INST_0_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000401000002108"
    )
        port map (
      I0 => a(2),
      I1 => a(3),
      I2 => a(0),
      I3 => a(1),
      I4 => a(6),
      I5 => a(4),
      O => \spo[6]_INST_0_i_2_n_0\
    );
\spo[6]_INST_0_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000002000000000"
    )
        port map (
      I0 => a(1),
      I1 => a(0),
      I2 => a(2),
      I3 => a(3),
      I4 => a(6),
      I5 => a(4),
      O => \spo[6]_INST_0_i_3_n_0\
    );
\spo[7]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"C0A00000"
    )
        port map (
      I0 => \spo[7]_INST_0_i_1_n_0\,
      I1 => \spo[7]_INST_0_i_2_n_0\,
      I2 => \spo[30]_INST_0_i_3_n_0\,
      I3 => a(4),
      I4 => \spo[30]_INST_0_i_4_n_0\,
      O => spo(6)
    );
\spo[7]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0450464005009055"
    )
        port map (
      I0 => a(5),
      I1 => a(0),
      I2 => a(3),
      I3 => a(1),
      I4 => a(6),
      I5 => a(2),
      O => \spo[7]_INST_0_i_1_n_0\
    );
\spo[7]_INST_0_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000082410050B0F0"
    )
        port map (
      I0 => a(1),
      I1 => a(2),
      I2 => a(0),
      I3 => a(3),
      I4 => a(6),
      I5 => a(5),
      O => \spo[7]_INST_0_i_2_n_0\
    );
\spo[8]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"CA000000"
    )
        port map (
      I0 => \spo[8]_INST_0_i_1_n_0\,
      I1 => \spo[8]_INST_0_i_2_n_0\,
      I2 => a(6),
      I3 => \spo[30]_INST_0_i_4_n_0\,
      I4 => \spo[30]_INST_0_i_3_n_0\,
      O => spo(7)
    );
\spo[8]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0290094001221132"
    )
        port map (
      I0 => a(2),
      I1 => a(4),
      I2 => a(1),
      I3 => a(3),
      I4 => a(0),
      I5 => a(5),
      O => \spo[8]_INST_0_i_1_n_0\
    );
\spo[8]_INST_0_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0410115501010540"
    )
        port map (
      I0 => a(5),
      I1 => a(2),
      I2 => a(3),
      I3 => a(1),
      I4 => a(4),
      I5 => a(0),
      O => \spo[8]_INST_0_i_2_n_0\
    );
\spo[9]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAAAAA8800A000"
    )
        port map (
      I0 => \spo[25]_INST_0_i_1_n_0\,
      I1 => \spo[9]_INST_0_i_1_n_0\,
      I2 => \spo[9]_INST_0_i_2_n_0\,
      I3 => \spo[25]_INST_0_i_2_n_0\,
      I4 => a(2),
      I5 => \spo[9]_INST_0_i_3_n_0\,
      O => spo(8)
    );
\spo[9]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"001F9CBC00314270"
    )
        port map (
      I0 => a(1),
      I1 => a(4),
      I2 => a(3),
      I3 => a(5),
      I4 => a(6),
      I5 => a(0),
      O => \spo[9]_INST_0_i_1_n_0\
    );
\spo[9]_INST_0_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"014545446646C924"
    )
        port map (
      I0 => a(5),
      I1 => a(0),
      I2 => a(3),
      I3 => a(1),
      I4 => a(4),
      I5 => a(6),
      O => \spo[9]_INST_0_i_2_n_0\
    );
\spo[9]_INST_0_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000200000800"
    )
        port map (
      I0 => \spo[25]_INST_0_i_2_n_0\,
      I1 => a(0),
      I2 => a(5),
      I3 => a(6),
      I4 => a(1),
      I5 => a(4),
      O => \spo[9]_INST_0_i_3_n_0\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity prgrom_dist_mem_gen_v8_0_12_synth is
  port (
    spo : out STD_LOGIC_VECTOR ( 29 downto 0 );
    a : in STD_LOGIC_VECTOR ( 13 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of prgrom_dist_mem_gen_v8_0_12_synth : entity is "dist_mem_gen_v8_0_12_synth";
end prgrom_dist_mem_gen_v8_0_12_synth;

architecture STRUCTURE of prgrom_dist_mem_gen_v8_0_12_synth is
begin
\gen_rom.rom_inst\: entity work.prgrom_rom
     port map (
      a(13 downto 0) => a(13 downto 0),
      spo(29 downto 0) => spo(29 downto 0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity prgrom_dist_mem_gen_v8_0_12 is
  port (
    a : in STD_LOGIC_VECTOR ( 13 downto 0 );
    d : in STD_LOGIC_VECTOR ( 31 downto 0 );
    dpra : in STD_LOGIC_VECTOR ( 13 downto 0 );
    clk : in STD_LOGIC;
    we : in STD_LOGIC;
    i_ce : in STD_LOGIC;
    qspo_ce : in STD_LOGIC;
    qdpo_ce : in STD_LOGIC;
    qdpo_clk : in STD_LOGIC;
    qspo_rst : in STD_LOGIC;
    qdpo_rst : in STD_LOGIC;
    qspo_srst : in STD_LOGIC;
    qdpo_srst : in STD_LOGIC;
    spo : out STD_LOGIC_VECTOR ( 31 downto 0 );
    dpo : out STD_LOGIC_VECTOR ( 31 downto 0 );
    qspo : out STD_LOGIC_VECTOR ( 31 downto 0 );
    qdpo : out STD_LOGIC_VECTOR ( 31 downto 0 )
  );
  attribute C_ADDR_WIDTH : integer;
  attribute C_ADDR_WIDTH of prgrom_dist_mem_gen_v8_0_12 : entity is 14;
  attribute C_DEFAULT_DATA : string;
  attribute C_DEFAULT_DATA of prgrom_dist_mem_gen_v8_0_12 : entity is "0";
  attribute C_DEPTH : integer;
  attribute C_DEPTH of prgrom_dist_mem_gen_v8_0_12 : entity is 16384;
  attribute C_ELABORATION_DIR : string;
  attribute C_ELABORATION_DIR of prgrom_dist_mem_gen_v8_0_12 : entity is "./";
  attribute C_FAMILY : string;
  attribute C_FAMILY of prgrom_dist_mem_gen_v8_0_12 : entity is "artix7";
  attribute C_HAS_CLK : integer;
  attribute C_HAS_CLK of prgrom_dist_mem_gen_v8_0_12 : entity is 0;
  attribute C_HAS_D : integer;
  attribute C_HAS_D of prgrom_dist_mem_gen_v8_0_12 : entity is 0;
  attribute C_HAS_DPO : integer;
  attribute C_HAS_DPO of prgrom_dist_mem_gen_v8_0_12 : entity is 0;
  attribute C_HAS_DPRA : integer;
  attribute C_HAS_DPRA of prgrom_dist_mem_gen_v8_0_12 : entity is 0;
  attribute C_HAS_I_CE : integer;
  attribute C_HAS_I_CE of prgrom_dist_mem_gen_v8_0_12 : entity is 0;
  attribute C_HAS_QDPO : integer;
  attribute C_HAS_QDPO of prgrom_dist_mem_gen_v8_0_12 : entity is 0;
  attribute C_HAS_QDPO_CE : integer;
  attribute C_HAS_QDPO_CE of prgrom_dist_mem_gen_v8_0_12 : entity is 0;
  attribute C_HAS_QDPO_CLK : integer;
  attribute C_HAS_QDPO_CLK of prgrom_dist_mem_gen_v8_0_12 : entity is 0;
  attribute C_HAS_QDPO_RST : integer;
  attribute C_HAS_QDPO_RST of prgrom_dist_mem_gen_v8_0_12 : entity is 0;
  attribute C_HAS_QDPO_SRST : integer;
  attribute C_HAS_QDPO_SRST of prgrom_dist_mem_gen_v8_0_12 : entity is 0;
  attribute C_HAS_QSPO : integer;
  attribute C_HAS_QSPO of prgrom_dist_mem_gen_v8_0_12 : entity is 0;
  attribute C_HAS_QSPO_CE : integer;
  attribute C_HAS_QSPO_CE of prgrom_dist_mem_gen_v8_0_12 : entity is 0;
  attribute C_HAS_QSPO_RST : integer;
  attribute C_HAS_QSPO_RST of prgrom_dist_mem_gen_v8_0_12 : entity is 0;
  attribute C_HAS_QSPO_SRST : integer;
  attribute C_HAS_QSPO_SRST of prgrom_dist_mem_gen_v8_0_12 : entity is 0;
  attribute C_HAS_SPO : integer;
  attribute C_HAS_SPO of prgrom_dist_mem_gen_v8_0_12 : entity is 1;
  attribute C_HAS_WE : integer;
  attribute C_HAS_WE of prgrom_dist_mem_gen_v8_0_12 : entity is 0;
  attribute C_MEM_INIT_FILE : string;
  attribute C_MEM_INIT_FILE of prgrom_dist_mem_gen_v8_0_12 : entity is "prgrom.mif";
  attribute C_MEM_TYPE : integer;
  attribute C_MEM_TYPE of prgrom_dist_mem_gen_v8_0_12 : entity is 0;
  attribute C_PARSER_TYPE : integer;
  attribute C_PARSER_TYPE of prgrom_dist_mem_gen_v8_0_12 : entity is 1;
  attribute C_PIPELINE_STAGES : integer;
  attribute C_PIPELINE_STAGES of prgrom_dist_mem_gen_v8_0_12 : entity is 0;
  attribute C_QCE_JOINED : integer;
  attribute C_QCE_JOINED of prgrom_dist_mem_gen_v8_0_12 : entity is 0;
  attribute C_QUALIFY_WE : integer;
  attribute C_QUALIFY_WE of prgrom_dist_mem_gen_v8_0_12 : entity is 0;
  attribute C_READ_MIF : integer;
  attribute C_READ_MIF of prgrom_dist_mem_gen_v8_0_12 : entity is 1;
  attribute C_REG_A_D_INPUTS : integer;
  attribute C_REG_A_D_INPUTS of prgrom_dist_mem_gen_v8_0_12 : entity is 0;
  attribute C_REG_DPRA_INPUT : integer;
  attribute C_REG_DPRA_INPUT of prgrom_dist_mem_gen_v8_0_12 : entity is 0;
  attribute C_SYNC_ENABLE : integer;
  attribute C_SYNC_ENABLE of prgrom_dist_mem_gen_v8_0_12 : entity is 1;
  attribute C_WIDTH : integer;
  attribute C_WIDTH of prgrom_dist_mem_gen_v8_0_12 : entity is 32;
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of prgrom_dist_mem_gen_v8_0_12 : entity is "dist_mem_gen_v8_0_12";
end prgrom_dist_mem_gen_v8_0_12;

architecture STRUCTURE of prgrom_dist_mem_gen_v8_0_12 is
  signal \<const0>\ : STD_LOGIC;
  signal \^spo\ : STD_LOGIC_VECTOR ( 31 downto 1 );
begin
  dpo(31) <= \<const0>\;
  dpo(30) <= \<const0>\;
  dpo(29) <= \<const0>\;
  dpo(28) <= \<const0>\;
  dpo(27) <= \<const0>\;
  dpo(26) <= \<const0>\;
  dpo(25) <= \<const0>\;
  dpo(24) <= \<const0>\;
  dpo(23) <= \<const0>\;
  dpo(22) <= \<const0>\;
  dpo(21) <= \<const0>\;
  dpo(20) <= \<const0>\;
  dpo(19) <= \<const0>\;
  dpo(18) <= \<const0>\;
  dpo(17) <= \<const0>\;
  dpo(16) <= \<const0>\;
  dpo(15) <= \<const0>\;
  dpo(14) <= \<const0>\;
  dpo(13) <= \<const0>\;
  dpo(12) <= \<const0>\;
  dpo(11) <= \<const0>\;
  dpo(10) <= \<const0>\;
  dpo(9) <= \<const0>\;
  dpo(8) <= \<const0>\;
  dpo(7) <= \<const0>\;
  dpo(6) <= \<const0>\;
  dpo(5) <= \<const0>\;
  dpo(4) <= \<const0>\;
  dpo(3) <= \<const0>\;
  dpo(2) <= \<const0>\;
  dpo(1) <= \<const0>\;
  dpo(0) <= \<const0>\;
  qdpo(31) <= \<const0>\;
  qdpo(30) <= \<const0>\;
  qdpo(29) <= \<const0>\;
  qdpo(28) <= \<const0>\;
  qdpo(27) <= \<const0>\;
  qdpo(26) <= \<const0>\;
  qdpo(25) <= \<const0>\;
  qdpo(24) <= \<const0>\;
  qdpo(23) <= \<const0>\;
  qdpo(22) <= \<const0>\;
  qdpo(21) <= \<const0>\;
  qdpo(20) <= \<const0>\;
  qdpo(19) <= \<const0>\;
  qdpo(18) <= \<const0>\;
  qdpo(17) <= \<const0>\;
  qdpo(16) <= \<const0>\;
  qdpo(15) <= \<const0>\;
  qdpo(14) <= \<const0>\;
  qdpo(13) <= \<const0>\;
  qdpo(12) <= \<const0>\;
  qdpo(11) <= \<const0>\;
  qdpo(10) <= \<const0>\;
  qdpo(9) <= \<const0>\;
  qdpo(8) <= \<const0>\;
  qdpo(7) <= \<const0>\;
  qdpo(6) <= \<const0>\;
  qdpo(5) <= \<const0>\;
  qdpo(4) <= \<const0>\;
  qdpo(3) <= \<const0>\;
  qdpo(2) <= \<const0>\;
  qdpo(1) <= \<const0>\;
  qdpo(0) <= \<const0>\;
  qspo(31) <= \<const0>\;
  qspo(30) <= \<const0>\;
  qspo(29) <= \<const0>\;
  qspo(28) <= \<const0>\;
  qspo(27) <= \<const0>\;
  qspo(26) <= \<const0>\;
  qspo(25) <= \<const0>\;
  qspo(24) <= \<const0>\;
  qspo(23) <= \<const0>\;
  qspo(22) <= \<const0>\;
  qspo(21) <= \<const0>\;
  qspo(20) <= \<const0>\;
  qspo(19) <= \<const0>\;
  qspo(18) <= \<const0>\;
  qspo(17) <= \<const0>\;
  qspo(16) <= \<const0>\;
  qspo(15) <= \<const0>\;
  qspo(14) <= \<const0>\;
  qspo(13) <= \<const0>\;
  qspo(12) <= \<const0>\;
  qspo(11) <= \<const0>\;
  qspo(10) <= \<const0>\;
  qspo(9) <= \<const0>\;
  qspo(8) <= \<const0>\;
  qspo(7) <= \<const0>\;
  qspo(6) <= \<const0>\;
  qspo(5) <= \<const0>\;
  qspo(4) <= \<const0>\;
  qspo(3) <= \<const0>\;
  qspo(2) <= \<const0>\;
  qspo(1) <= \<const0>\;
  qspo(0) <= \<const0>\;
  spo(31 downto 30) <= \^spo\(31 downto 30);
  spo(29) <= \^spo\(31);
  spo(28 downto 1) <= \^spo\(28 downto 1);
  spo(0) <= \^spo\(1);
GND: unisim.vcomponents.GND
     port map (
      G => \<const0>\
    );
\synth_options.dist_mem_inst\: entity work.prgrom_dist_mem_gen_v8_0_12_synth
     port map (
      a(13 downto 0) => a(13 downto 0),
      spo(29 downto 28) => \^spo\(31 downto 30),
      spo(27 downto 0) => \^spo\(28 downto 1)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity prgrom is
  port (
    a : in STD_LOGIC_VECTOR ( 13 downto 0 );
    spo : out STD_LOGIC_VECTOR ( 31 downto 0 )
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of prgrom : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of prgrom : entity is "prgrom,dist_mem_gen_v8_0_12,{}";
  attribute downgradeipidentifiedwarnings : string;
  attribute downgradeipidentifiedwarnings of prgrom : entity is "yes";
  attribute x_core_info : string;
  attribute x_core_info of prgrom : entity is "dist_mem_gen_v8_0_12,Vivado 2018.3";
end prgrom;

architecture STRUCTURE of prgrom is
  signal NLW_U0_dpo_UNCONNECTED : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal NLW_U0_qdpo_UNCONNECTED : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal NLW_U0_qspo_UNCONNECTED : STD_LOGIC_VECTOR ( 31 downto 0 );
  attribute C_FAMILY : string;
  attribute C_FAMILY of U0 : label is "artix7";
  attribute C_HAS_D : integer;
  attribute C_HAS_D of U0 : label is 0;
  attribute C_HAS_DPO : integer;
  attribute C_HAS_DPO of U0 : label is 0;
  attribute C_HAS_DPRA : integer;
  attribute C_HAS_DPRA of U0 : label is 0;
  attribute C_HAS_I_CE : integer;
  attribute C_HAS_I_CE of U0 : label is 0;
  attribute C_HAS_QDPO : integer;
  attribute C_HAS_QDPO of U0 : label is 0;
  attribute C_HAS_QDPO_CE : integer;
  attribute C_HAS_QDPO_CE of U0 : label is 0;
  attribute C_HAS_QDPO_CLK : integer;
  attribute C_HAS_QDPO_CLK of U0 : label is 0;
  attribute C_HAS_QDPO_RST : integer;
  attribute C_HAS_QDPO_RST of U0 : label is 0;
  attribute C_HAS_QDPO_SRST : integer;
  attribute C_HAS_QDPO_SRST of U0 : label is 0;
  attribute C_HAS_WE : integer;
  attribute C_HAS_WE of U0 : label is 0;
  attribute C_MEM_TYPE : integer;
  attribute C_MEM_TYPE of U0 : label is 0;
  attribute C_PIPELINE_STAGES : integer;
  attribute C_PIPELINE_STAGES of U0 : label is 0;
  attribute C_QCE_JOINED : integer;
  attribute C_QCE_JOINED of U0 : label is 0;
  attribute C_QUALIFY_WE : integer;
  attribute C_QUALIFY_WE of U0 : label is 0;
  attribute C_REG_DPRA_INPUT : integer;
  attribute C_REG_DPRA_INPUT of U0 : label is 0;
  attribute c_addr_width : integer;
  attribute c_addr_width of U0 : label is 14;
  attribute c_default_data : string;
  attribute c_default_data of U0 : label is "0";
  attribute c_depth : integer;
  attribute c_depth of U0 : label is 16384;
  attribute c_elaboration_dir : string;
  attribute c_elaboration_dir of U0 : label is "./";
  attribute c_has_clk : integer;
  attribute c_has_clk of U0 : label is 0;
  attribute c_has_qspo : integer;
  attribute c_has_qspo of U0 : label is 0;
  attribute c_has_qspo_ce : integer;
  attribute c_has_qspo_ce of U0 : label is 0;
  attribute c_has_qspo_rst : integer;
  attribute c_has_qspo_rst of U0 : label is 0;
  attribute c_has_qspo_srst : integer;
  attribute c_has_qspo_srst of U0 : label is 0;
  attribute c_has_spo : integer;
  attribute c_has_spo of U0 : label is 1;
  attribute c_mem_init_file : string;
  attribute c_mem_init_file of U0 : label is "prgrom.mif";
  attribute c_parser_type : integer;
  attribute c_parser_type of U0 : label is 1;
  attribute c_read_mif : integer;
  attribute c_read_mif of U0 : label is 1;
  attribute c_reg_a_d_inputs : integer;
  attribute c_reg_a_d_inputs of U0 : label is 0;
  attribute c_sync_enable : integer;
  attribute c_sync_enable of U0 : label is 1;
  attribute c_width : integer;
  attribute c_width of U0 : label is 32;
begin
U0: entity work.prgrom_dist_mem_gen_v8_0_12
     port map (
      a(13 downto 0) => a(13 downto 0),
      clk => '0',
      d(31 downto 0) => B"00000000000000000000000000000000",
      dpo(31 downto 0) => NLW_U0_dpo_UNCONNECTED(31 downto 0),
      dpra(13 downto 0) => B"00000000000000",
      i_ce => '1',
      qdpo(31 downto 0) => NLW_U0_qdpo_UNCONNECTED(31 downto 0),
      qdpo_ce => '1',
      qdpo_clk => '0',
      qdpo_rst => '0',
      qdpo_srst => '0',
      qspo(31 downto 0) => NLW_U0_qspo_UNCONNECTED(31 downto 0),
      qspo_ce => '1',
      qspo_rst => '0',
      qspo_srst => '0',
      spo(31 downto 0) => spo(31 downto 0),
      we => '0'
    );
end STRUCTURE;
