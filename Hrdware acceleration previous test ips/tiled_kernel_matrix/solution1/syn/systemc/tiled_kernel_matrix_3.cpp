#include "tiled_kernel_matrix.h"
#include "AESL_pkg.h"

using namespace std;

namespace ap_rtl {

void tiled_kernel_matrix::thread_hdltv_gen() {
    const char* dump_tv = std::getenv("AP_WRITE_TV");
    if (!(dump_tv && string(dump_tv) == "on")) return;

    wait();

    mHdltvinHandle << "[ " << endl;
    mHdltvoutHandle << "[ " << endl;
    int ap_cycleNo = 0;
    while (1) {
        wait();
        const char* mComma = ap_cycleNo == 0 ? " " : ", " ;
        mHdltvinHandle << mComma << "{"  <<  " \"ap_rst_n\" :  \"" << ap_rst_n.read() << "\" ";
        mHdltvinHandle << " , " <<  " \"kernel_index_stream_TDATA\" :  \"" << kernel_index_stream_TDATA.read() << "\" ";
        mHdltvinHandle << " , " <<  " \"kernel_index_stream_TVALID\" :  \"" << kernel_index_stream_TVALID.read() << "\" ";
        mHdltvoutHandle << mComma << "{"  <<  " \"kernel_index_stream_TREADY\" :  \"" << kernel_index_stream_TREADY.read() << "\" ";
        mHdltvinHandle << " , " <<  " \"kernel_index_stream_TKEEP\" :  \"" << kernel_index_stream_TKEEP.read() << "\" ";
        mHdltvinHandle << " , " <<  " \"kernel_index_stream_TSTRB\" :  \"" << kernel_index_stream_TSTRB.read() << "\" ";
        mHdltvinHandle << " , " <<  " \"kernel_index_stream_TUSER\" :  \"" << kernel_index_stream_TUSER.read() << "\" ";
        mHdltvinHandle << " , " <<  " \"kernel_index_stream_TLAST\" :  \"" << kernel_index_stream_TLAST.read() << "\" ";
        mHdltvinHandle << " , " <<  " \"kernel_index_stream_TID\" :  \"" << kernel_index_stream_TID.read() << "\" ";
        mHdltvinHandle << " , " <<  " \"kernel_index_stream_TDEST\" :  \"" << kernel_index_stream_TDEST.read() << "\" ";
        mHdltvinHandle << " , " <<  " \"kernel_in_stream_TDATA\" :  \"" << kernel_in_stream_TDATA.read() << "\" ";
        mHdltvinHandle << " , " <<  " \"kernel_in_stream_TVALID\" :  \"" << kernel_in_stream_TVALID.read() << "\" ";
        mHdltvoutHandle << " , " <<  " \"kernel_in_stream_TREADY\" :  \"" << kernel_in_stream_TREADY.read() << "\" ";
        mHdltvinHandle << " , " <<  " \"kernel_in_stream_TKEEP\" :  \"" << kernel_in_stream_TKEEP.read() << "\" ";
        mHdltvinHandle << " , " <<  " \"kernel_in_stream_TSTRB\" :  \"" << kernel_in_stream_TSTRB.read() << "\" ";
        mHdltvinHandle << " , " <<  " \"kernel_in_stream_TUSER\" :  \"" << kernel_in_stream_TUSER.read() << "\" ";
        mHdltvinHandle << " , " <<  " \"kernel_in_stream_TLAST\" :  \"" << kernel_in_stream_TLAST.read() << "\" ";
        mHdltvinHandle << " , " <<  " \"kernel_in_stream_TID\" :  \"" << kernel_in_stream_TID.read() << "\" ";
        mHdltvinHandle << " , " <<  " \"kernel_in_stream_TDEST\" :  \"" << kernel_in_stream_TDEST.read() << "\" ";
        mHdltvoutHandle << " , " <<  " \"kernel_out_stream_TDATA\" :  \"" << kernel_out_stream_TDATA.read() << "\" ";
        mHdltvoutHandle << " , " <<  " \"kernel_out_stream_TVALID\" :  \"" << kernel_out_stream_TVALID.read() << "\" ";
        mHdltvinHandle << " , " <<  " \"kernel_out_stream_TREADY\" :  \"" << kernel_out_stream_TREADY.read() << "\" ";
        mHdltvoutHandle << " , " <<  " \"kernel_out_stream_TKEEP\" :  \"" << kernel_out_stream_TKEEP.read() << "\" ";
        mHdltvoutHandle << " , " <<  " \"kernel_out_stream_TSTRB\" :  \"" << kernel_out_stream_TSTRB.read() << "\" ";
        mHdltvoutHandle << " , " <<  " \"kernel_out_stream_TUSER\" :  \"" << kernel_out_stream_TUSER.read() << "\" ";
        mHdltvoutHandle << " , " <<  " \"kernel_out_stream_TLAST\" :  \"" << kernel_out_stream_TLAST.read() << "\" ";
        mHdltvoutHandle << " , " <<  " \"kernel_out_stream_TID\" :  \"" << kernel_out_stream_TID.read() << "\" ";
        mHdltvoutHandle << " , " <<  " \"kernel_out_stream_TDEST\" :  \"" << kernel_out_stream_TDEST.read() << "\" ";
        mHdltvinHandle << " , " <<  " \"s_axi_CONTROL_BUS_AWVALID\" :  \"" << s_axi_CONTROL_BUS_AWVALID.read() << "\" ";
        mHdltvoutHandle << " , " <<  " \"s_axi_CONTROL_BUS_AWREADY\" :  \"" << s_axi_CONTROL_BUS_AWREADY.read() << "\" ";
        mHdltvinHandle << " , " <<  " \"s_axi_CONTROL_BUS_AWADDR\" :  \"" << s_axi_CONTROL_BUS_AWADDR.read() << "\" ";
        mHdltvinHandle << " , " <<  " \"s_axi_CONTROL_BUS_WVALID\" :  \"" << s_axi_CONTROL_BUS_WVALID.read() << "\" ";
        mHdltvoutHandle << " , " <<  " \"s_axi_CONTROL_BUS_WREADY\" :  \"" << s_axi_CONTROL_BUS_WREADY.read() << "\" ";
        mHdltvinHandle << " , " <<  " \"s_axi_CONTROL_BUS_WDATA\" :  \"" << s_axi_CONTROL_BUS_WDATA.read() << "\" ";
        mHdltvinHandle << " , " <<  " \"s_axi_CONTROL_BUS_WSTRB\" :  \"" << s_axi_CONTROL_BUS_WSTRB.read() << "\" ";
        mHdltvinHandle << " , " <<  " \"s_axi_CONTROL_BUS_ARVALID\" :  \"" << s_axi_CONTROL_BUS_ARVALID.read() << "\" ";
        mHdltvoutHandle << " , " <<  " \"s_axi_CONTROL_BUS_ARREADY\" :  \"" << s_axi_CONTROL_BUS_ARREADY.read() << "\" ";
        mHdltvinHandle << " , " <<  " \"s_axi_CONTROL_BUS_ARADDR\" :  \"" << s_axi_CONTROL_BUS_ARADDR.read() << "\" ";
        mHdltvoutHandle << " , " <<  " \"s_axi_CONTROL_BUS_RVALID\" :  \"" << s_axi_CONTROL_BUS_RVALID.read() << "\" ";
        mHdltvinHandle << " , " <<  " \"s_axi_CONTROL_BUS_RREADY\" :  \"" << s_axi_CONTROL_BUS_RREADY.read() << "\" ";
        mHdltvoutHandle << " , " <<  " \"s_axi_CONTROL_BUS_RDATA\" :  \"" << s_axi_CONTROL_BUS_RDATA.read() << "\" ";
        mHdltvoutHandle << " , " <<  " \"s_axi_CONTROL_BUS_RRESP\" :  \"" << s_axi_CONTROL_BUS_RRESP.read() << "\" ";
        mHdltvoutHandle << " , " <<  " \"s_axi_CONTROL_BUS_BVALID\" :  \"" << s_axi_CONTROL_BUS_BVALID.read() << "\" ";
        mHdltvinHandle << " , " <<  " \"s_axi_CONTROL_BUS_BREADY\" :  \"" << s_axi_CONTROL_BUS_BREADY.read() << "\" ";
        mHdltvoutHandle << " , " <<  " \"s_axi_CONTROL_BUS_BRESP\" :  \"" << s_axi_CONTROL_BUS_BRESP.read() << "\" ";
        mHdltvoutHandle << " , " <<  " \"interrupt\" :  \"" << interrupt.read() << "\" ";
        mHdltvinHandle << "}" << std::endl;
        mHdltvoutHandle << "}" << std::endl;
        ap_cycleNo++;
    }
}

}

