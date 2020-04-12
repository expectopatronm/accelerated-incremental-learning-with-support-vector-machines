#include <assert.h>
#include <ap_axi_sdata.h>
#include <ap_fixed.h>

typedef unsigned long long axi_T;
typedef float T;

// Matrix dimensions specifications
#define FEAT 784
#define SAMPLES 1

#define IS_SIZE (SAMPLES*FEAT)
#define OS_SIZE (SAMPLES)

// AXI settings
#define AXI_DATA (sizeof(axi_T)*4)
#define AXI_U 4
#define AXI_TI 5
#define AXI_TD 5

typedef ap_axiu<AXI_DATA,AXI_U,AXI_TI,AXI_TD> AXI_VAL;

// Matrix Multiply prototype
void kernel_matrix(AXI_VAL *in_stream, AXI_VAL *out_stream, unsigned int *my_index, unsigned int *length_x);
T rbf_kernel(T input1[FEAT], T input2[FEAT]);

// AXI stream push and pop
axi_T pop_stream(AXI_VAL const &e);
AXI_VAL push_stream(axi_T const &v, bool last);
