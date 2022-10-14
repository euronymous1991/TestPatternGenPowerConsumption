library verilog;
use verilog.vl_types.all;
entity Counter is
    generic(
        size            : integer := 8
    );
    port(
        gate            : in     vl_logic;
        clk             : in     vl_logic;
        clear           : in     vl_logic;
        Q               : out    vl_logic_vector;
        OW              : out    vl_logic
    );
    attribute mti_svvh_generic_type : integer;
    attribute mti_svvh_generic_type of size : constant is 1;
end Counter;
