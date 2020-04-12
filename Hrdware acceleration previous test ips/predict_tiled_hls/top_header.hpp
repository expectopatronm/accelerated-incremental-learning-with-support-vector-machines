#include <assert.h>
#include <ap_axi_sdata.h>

typedef unsigned long long axi_T;
typedef float T;

// Matrix dimensions specifications
#define FEAT 784
#define INPUT_SAMPLES 100
#define INPUT_SVCF 10

#define IS_SIZE (INPUT_SAMPLES*FEAT)
#define SV_SIZE (INPUT_SVCF*FEAT)
#define DC_SIZE (INPUT_SVCF)
#define OS_SIZE (2500)

// AXI settings
#define AXI_DATA (sizeof(axi_T)*4)
#define AXI_U 4
#define AXI_TI 5
#define AXI_TD 5

// Data type ratio between data type and axi width
#define WIDTH_RATIO (sizeof(axi_T)/sizeof(T))

typedef ap_axiu<AXI_DATA,AXI_U,AXI_TI,AXI_TD> AXI_VAL;

// Matrix Multiply prototype
void predict_tiled(AXI_VAL *predict_in_stream, AXI_VAL *supp_vec_stream, AXI_VAL *dual_coef_stream, AXI_VAL *predict_out_stream, unsigned int *length_x, unsigned int *length_dc);
T rbf_kernel(T input1[FEAT], T input2[FEAT]);

// AXI stream push and pop
axi_T pop_stream(AXI_VAL const &e);
AXI_VAL push_stream(axi_T const &v, bool last);
