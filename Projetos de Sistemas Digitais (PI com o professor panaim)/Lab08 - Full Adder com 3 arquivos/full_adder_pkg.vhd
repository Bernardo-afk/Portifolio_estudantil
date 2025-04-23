library ieee;
use ieee.std_logic_1164.all;

-- Package que declara o componente do full adder
package full_adder_pkg is
    component full_adder is
        port (
            a   : in  std_logic;
            b   : in  std_logic;
            cin : in  std_logic;
            sum : out std_logic;
            cout: out std_logic
        );
    end component;
end full_adder_pkg;

package body full_adder_pkg is
    -- Corpo do package (não há definições adicionais nesse exemplo)
end full_adder_pkg;

------------------------------------------------------------
-- Implementação do full adder
library ieee;
use ieee.std_logic_1164.all;

entity full_adder is
    port(
        a   : in  std_logic;
        b   : in  std_logic;
        cin : in  std_logic;
        sum : out std_logic;
        cout: out std_logic
    );
end full_adder;

architecture rtl of full_adder is
begin
    sum  <= a xor b xor cin;
    cout <= (a and b) or (a and cin) or (b and cin);
end rtl;
