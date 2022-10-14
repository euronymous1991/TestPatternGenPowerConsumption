library verilog;
use verilog.vl_types.all;
entity Ring_oscillator is
    generic(
        size            : integer := 300;
        number_of_oscillators: integer := 1
    );
    port(
        enable          : in     vl_logic;
        RO_out          : out    vl_logic
    );
    attribute mti_svvh_generic_type : integer;
    attribute mti_svvh_generic_type of size : constant is 1;
    attribute mti_svvh_generic_type of number_of_oscillators : constant is 1;
end Ring_oscillator;
