MEMORY {
   PROGROM (RX) : ORIGIN = 0x00000, LENGTH = 0x20000  /*  64kB ROM */
   DATARAM (RW) : ORIGIN = 0x20000, LENGTH = 0x20000  /* 128kB RAM */   
}

SECTIONS {

    .text : {
        . = ALIGN(4);
	obj/boot.o (.text)
        *(.text*)
    } > PROGROM

    .data : {
	. = ALIGN(4);
        *(.data*)          
        *(.sdata*)
        *(.rodata*) 
        *(.srodata*)
        *(.bss*)
        *(.sbss*)
	
        *(COMMON)
        *(.eh_frame)  
        *(.eh_frame_hdr)
        *(.init_array*)         
        *(.gcc_except_table*)  
    } > DATARAM
}

