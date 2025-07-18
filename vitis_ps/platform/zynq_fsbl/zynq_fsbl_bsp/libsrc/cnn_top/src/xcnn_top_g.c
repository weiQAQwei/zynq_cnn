#include "xcnn_top.h"

XCnn_top_Config XCnn_top_ConfigTable[] __attribute__ ((section (".drvcfg_sec"))) = {

	{
		"xlnx,cnn-top-1.0", /* compatible */
		0x40000000 /* reg */
	},
	 {
		 NULL
	}
};