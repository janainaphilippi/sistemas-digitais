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
					signal Sel: std_logic;
	            signal Zero, Over, Car, Neg: std_logic;
		
		component SOMA_SUB  is
port (A, B: in std_logic_vector(7 downto 0);
		Sel : in std_logic; --ligar direto na chave SW16
		F   : out std_logic_vector(7 downto 0);
		Zero, Over, Car, Neg: out std_logic
     );
end component;
	
begin
	
	
	
	A <= "00000000";
	B <= entrada;
	Sel <= '1';
	Zero <= '0';
	Over <= '0';
	Car <= '0';
	Neg <= '0';
  
	
	H0: SOMA_SUB port map (A,B,Sel,F,Zero,Over,Car,Neg);
 
	saida <= F when entrada (7)= '1' 
	else
	entrada;
	
	 
      
end com2;
