`include "PACKAGE.types.colData.sv"
`include "PACKAGE.constants.colData.sv"

module VSSCells ( inout    logic  VDD_IO,
                  inout    logic  VDD_LARASIC,
                  inout    logic  VDD_CORE
                );

// TOP VSS INSTANTIATIONS (LEFT TO RIGHT)
	PVSS2A VSSTOPINST1 ();
	PVSS2AC VSSTOPINST2 ();
	PVSS2AC VSSTOPINST3 ();
	PVSS2A VSSTOPINST4 ();
	PVSS2A VSSTOPINST5 ();
	PVSS2A VSSTOPINST6 ();
	PVSS2A VSSTOPINST7 ();
	PVSS2A VSSTOPINST8 ();
	PVSS2A VSSTOPINST9 ();
	PVSS2A VSSTOPINST10 ();
	PVSS2A VSSTOPINST11 ();

// LEFT VSS (TOP TO BOTTOM)
	PVSS2A VSSLEFTINST1 ();
	PVSS2A VSSLEFTINST2 ();
	PVSS2A VSSLEFTINST3 ();
	PVSS2A VSSLEFTINST4 ();
	PVSS2A VSSLEFTINST5 ();
	PVSS2A VSSLEFTINST6 ();
	PVSS2AC VSSLEFTINST7 ();
	PVSS2A VSSLEFTINST8 ();
	PVSS2A VSSLEFTINST9 ();
	PVSS2A VSSLEFTINST10 ();
	PVSS2A VSSLEFTINST11 ();
	PVSS2A VSSLEFTINST12 ();
	PVSS2A VSSLEFTINST13 ();
	PVSS2A VSSLEFTINST14 ();
	PVSS2A VSSLEFTINST15 ();

// BOTTOM VSS (LEFT TO RIGHT)
	PVSS2AC VSSBOTTOMINST1 ();
	PVSS2AC VSSBOTTOMINST2 ();
	PVSS2A VSSBOTTOMINST3 ();
	PVSS2A VSSBOTTOMINST4 ();
	PVSS2A VSSBOTTOMINST5 ();
	PVSS2A VSSBOTTOMINST6 ();
	PVSS2A VSSBOTTOMINST7 ();
	PVSS2A VSSBOTTOMINST8 ();
	PVSS2A VSSBOTTOMINST9 ();
	PVSS2AC VSSBOTTOMINST10 ();
	PVSS2AC VSSBOTTOMINST11 ();

// RIGHT VSS (TOP TO BOTTOM)
	PVSS2AC VSSRIGHTINST1 ();
	PVSS2AC VSSRIGHTINST2 ();
	PVSS2A VSSRIGHTINST3 ();
	PVSS2A VSSRIGHTINST4 ();
	PVSS2A VSSRIGHTINST5 ();
	PVSS2A VSSRIGHTINST6 ();
	PVSS2A VSSRIGHTINST7 ();
	PVSS2A VSSRIGHTINST8 ();
endmodule
