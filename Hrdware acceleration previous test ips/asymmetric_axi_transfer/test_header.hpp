#include <assert.h>
#include <ap_axi_sdata.h>

typedef unsigned long long axi_T;
typedef float T;

// Matrix dimensions specifications
#define FEAT 4
#define CLASSES 12

#define IS_SIZE CLASSES*FEAT
#define OS_SIZE CLASSES

// AXI settings
#define AXI_DATA (sizeof(axi_T)*8)
#define AXI_U 4
#define AXI_TI 5
#define AXI_TD 5

// Data type ratio between data type and axi width
#define WIDTH_RATIO (sizeof(axi_T)/sizeof(T))

typedef ap_axiu<AXI_DATA,AXI_U,AXI_TI,AXI_TD> AXI_VAL;

// Matrix Multiply prototype
void test_shit(AXI_VAL in_stream[IS_SIZE], AXI_VAL out_stream[OS_SIZE], unsigned int my_index);
T rbf_kernel(T input1[FEAT], T input2[FEAT]);

// AXI stream push and pop
axi_T pop_stream(AXI_VAL const &e);
AXI_VAL push_stream(axi_T const &v, bool last);
