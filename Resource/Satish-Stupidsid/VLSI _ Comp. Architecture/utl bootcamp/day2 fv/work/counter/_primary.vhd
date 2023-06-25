library verilog;
use verilog.vl_types.all;
entity counter is
    port(
        clk             : in     vl_logic;
        reset           : in     vl_logic;
        q               : out    vl_logic_vector(2 downto 0)
    );
end counter;
