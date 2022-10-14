library verilog;
use verilog.vl_types.all;
entity system_reset is
    port(
        inst23          : in     vl_logic;
        system_reset1   : out    vl_logic;
        enable_tdc1     : out    vl_logic;
        Clock           : in     vl_logic;
        devpor          : in     vl_logic;
        devclrn         : in     vl_logic;
        devoe           : in     vl_logic
    );
end system_reset;
