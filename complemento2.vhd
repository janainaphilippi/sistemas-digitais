library  ieee; 
use  ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;

		entity complemento2 is 
				port (entrada: in std_logic_vector(7 downto 0); 
                  saida: out std_logic_vector(7 downto 0) 
						 ); 
		end complemento2; 


architecture com2 of complemento2 is
					signal A,B,F: std_logic_vector (7 downto 0);
					signal Zero, Over, Car, Neg: std_logic;
		         signal FlagSB: std_logic_vector(3 downto 0);
					
component SUBT 
		port (A, B: in std_logic_vector(7 downto 0);
				F   : out std_logic_vector(7 downto 0);
				FlagSB: out std_logic_vector
     );
end component;

	
begin
	
	
	
	A <= "00000000";
	B <= entrada;															
	FlagSB(3) <= '0';
	FlagSB(2) <= '0';
	FlagSB(1) <= '0';
	FlagSB(0) <= '0';
  
	
	H0: SUBT port map (A,B,F,FlagSB);
 
	saida <= F when entrada(7)= '1' 
	else
	entrada;
	
	 
      
end com2;
