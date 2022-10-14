library verilog;
use verilog.vl_types.all;
entity testpat is
    port(
        OW              : out    vl_logic;
        CLOCK_50        : in     vl_logic;
        START           : in     vl_logic;
        STOP            : in     vl_logic;
        Laikagfhf       : out    vl_logic_vector(31 downto 0);
        Laikas          : out    vl_logic_vector(31 downto 0)
    );
end testpat;
