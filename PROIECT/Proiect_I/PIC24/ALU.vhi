
-- VHDL Instantiation Created from source file ALU.vhd -- 19:11:32 12/05/2025
--
-- Notes: 
-- 1) This instantiation template has been automatically generated using types
-- std_logic and std_logic_vector for the ports of the instantiated module
-- 2) To use this template to instantiate this entity, cut-and-paste and then edit

	COMPONENT ALU
	PORT(
		RdData1 : IN std_logic_vector(15 downto 0);
		RdData2 : IN std_logic_vector(15 downto 0);
		ALUOP : IN std_logic_vector(2 downto 0);
		Clk : IN std_logic;
		CE_N : IN std_logic;
		CE_Z : IN std_logic;
		CE_C : IN std_logic;
		CE_OV : IN std_logic;          
		Y : OUT std_logic_vector(15 downto 0);
		Nflag : OUT std_logic;
		Zflag : OUT std_logic;
		Cflag : OUT std_logic;
		OVflag : OUT std_logic
		);
	END COMPONENT;

	Inst_ALU: ALU PORT MAP(
		RdData1 => ,
		RdData2 => ,
		ALUOP => ,
		Clk => ,
		CE_N => ,
		CE_Z => ,
		CE_C => ,
		CE_OV => ,
		Y => ,
		Nflag => ,
		Zflag => ,
		Cflag => ,
		OVflag => 
	);


