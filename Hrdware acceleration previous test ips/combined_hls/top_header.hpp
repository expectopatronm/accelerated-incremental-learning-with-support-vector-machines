#include <assert.h>
#include <ap_axi_sdata.h>
#include <ap_fixed.h>

typedef unsigned long long axi_T;
typedef float T;

// Matrix dimensions specifications
#define FEAT 784
#define INPUT_BUFFER_SIZE 100
#define OUTPUT_BUFFER_SIZE 2500
#define INPUT_SVCF_BUFFER_SIZE 10

#define OS_SIZE (OUTPUT_BUFFER_SIZE)

// AXI settings
#define AXI_DATA (sizeof(axi_T)*4)
#define AXI_U 4
#define AXI_TI 5
#define AXI_TD 5

typedef ap_axiu<AXI_DATA,AXI_U,AXI_TI,AXI_TD> AXI_VAL;

void hardware_accelerator(unsigned int *function_flag, unsigned int *length_x, unsigned int *tile_count, unsigned int *dual_coeff_length, unsigned int *remainder,
		AXI_VAL *in_stream, AXI_VAL *kernel_index_stream, AXI_VAL *supp_vec_stream, AXI_VAL *dual_coef_stream, AXI_VAL *out_stream);
T rbf_kernel(T input1[FEAT], T input2[FEAT]);
// AXI stream push and pop
axi_T pop_stream(AXI_VAL const &e);
AXI_VAL push_stream(axi_T const &v, bool last);
