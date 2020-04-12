#include <assert.h>
#include <ap_axi_sdata.h>

typedef unsigned long long axi_T;
typedef float T;

// Matrix dimensions specifications
#define FEAT 784
#define CLASSES 10
#define VALUES 1

#define IS_SIZE (VALUES*FEAT)
#define SV_SIZE (CLASSES*FEAT)
#define DC_SIZE (CLASSES)
#define OS_SIZE (VALUES)

// AXI settings
#define AXI_DATA (sizeof(axi_T)*4)
#define AXI_U 4
#define AXI_TI 5
#define AXI_TD 5

// Data type ratio between data type and axi width
#define WIDTH_RATIO (sizeof(axi_T)/sizeof(T))

typedef ap_axiu<AXI_DATA,AXI_U,AXI_TI,AXI_TD> AXI_VAL;

// Matrix Multiply prototype
void predict(AXI_VAL *in_stream, AXI_VAL *supp_vec_stream, AXI_VAL *dual_coef_stream, AXI_VAL *out_stream, unsigned int *length_x, unsigned int *length_dc);
T rbf_kernel(T input1[FEAT], T input2[FEAT]);

// AXI stream push and pop
axi_T pop_stream(AXI_VAL const &e);
AXI_VAL push_stream(axi_T const &v, bool last);
