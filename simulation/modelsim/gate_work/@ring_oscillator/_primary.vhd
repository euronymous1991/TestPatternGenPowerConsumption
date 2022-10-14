library verilog;
use verilog.vl_types.all;
entity Ring_oscillator is
    port(
        a_0_9           : out    vl_logic;
        devpor          : in     vl_logic;
        devclrn         : in     vl_logic;
        devoe           : in     vl_logic
    );
end Ring_oscillator;
