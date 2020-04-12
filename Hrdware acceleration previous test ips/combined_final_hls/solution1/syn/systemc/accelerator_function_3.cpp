#include "accelerator_function.h"
#include "AESL_pkg.h"

using namespace std;

namespace ap_rtl {

void accelerator_function::thread_hdltv_gen() {
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
        mHdltvinHandle << " , " <<  " \"kernel_in_stream_TDATA\" :  \"" << kernel_in_stream_TDATA.read() << "\" ";
        mHdltvinHandle << " , " <<  " \"kernel_in_stream_TVALID\" :  \"" << kernel_in_stream_TVALID.read() << "\" ";
        mHdltvoutHandle << mComma << "{"  <<  " \"kernel_in_stream_TREADY\" :  \"" << kernel_in_stream_TREADY.read() << "\" ";
        mHdltvinHandle << " , " <<  " \"kernel_in_stream_TKEEP\" :  \"" << kernel_in_stream_TKEEP.read() << "\" ";
        mHdltvinHandle << " , " <<  " \"kernel_in_stream_TSTRB\" :  \"" << kernel_in_stream_TSTRB.read() << "\" ";
        mHdltvinHandle << " , " <<  " \"kernel_in_stream_TUSER\" :  \"" << kernel_in_stream_TUSER.read() << "\" ";
        mHdltvinHandle << " , " <<  " \"kernel_in_stream_TLAST\" :  \"" << kernel_in_stream_TLAST.read() << "\" ";
        mHdltvinHandle << " , " <<  " \"kernel_in_stream_TID\" :  \"" << kernel_in_stream_TID.read() << "\" ";
        mHdltvinHandle << " , " <<  " \"kernel_in_stream_TDEST\" :  \"" << kernel_in_stream_TDEST.read() << "\" ";
        mHdltvinHandle << " , " <<  " \"kernel_index_stream_TDATA\" :  \"" << kernel_index_stream_TDATA.read() << "\" ";
        mHdltvinHandle << " , " <<  " \"kernel_index_stream_TVALID\" :  \"" << kernel_index_stream_TVALID.read() << "\" ";
        mHdltvoutHandle << " , " <<  " \"kernel_index_stream_TREADY\" :  \"" << kernel_index_stream_TREADY.read() << "\" ";
        mHdltvinHandle << " , " <<  " \"kernel_index_stream_TKEEP\" :  \"" << kernel_index_stream_TKEEP.read() << "\" ";
        mHdltvinHandle << " , " <<  " \"kernel_index_stream_TSTRB\" :  \"" << kernel_index_stream_TSTRB.read() << "\" ";
        mHdltvinHandle << " , " <<  " \"kernel_index_stream_TUSER\" :  \"" << kernel_index_stream_TUSER.read() << "\" ";
        mHdltvinHandle << " , " <<  " \"kernel_index_stream_TLAST\" :  \"" << kernel_index_stream_TLAST.read() << "\" ";
        mHdltvinHandle << " , " <<  " \"kernel_index_stream_TID\" :  \"" << kernel_index_stream_TID.read() << "\" ";
        mHdltvinHandle << " , " <<  " \"kernel_index_stream_TDEST\" :  \"" << kernel_index_stream_TDEST.read() << "\" ";
        mHdltvoutHandle << " , " <<  " \"kernel_out_stream_TDATA\" :  \"" << kernel_out_stream_TDATA.read() << "\" ";
        mHdltvoutHandle << " , " <<  " \"kernel_out_stream_TVALID\" :  \"" << kernel_out_stream_TVALID.read() << "\" ";
        mHdltvinHandle << " , " <<  " \"kernel_out_stream_TREADY\" :  \"" << kernel_out_stream_TREADY.read() << "\" ";
        mHdltvoutHandle << " , " <<  " \"kernel_out_stream_TKEEP\" :  \"" << kernel_out_stream_TKEEP.read() << "\" ";
        mHdltvoutHandle << " , " <<  " \"kernel_out_stream_TSTRB\" :  \"" << kernel_out_stream_TSTRB.read() << "\" ";
        mHdltvoutHandle << " , " <<  " \"kernel_out_stream_TUSER\" :  \"" << kernel_out_stream_TUSER.read() << "\" ";
        mHdltvoutHandle << " , " <<  " \"kernel_out_stream_TLAST\" :  \"" << kernel_out_stream_TLAST.read() << "\" ";
        mHdltvoutHandle << " , " <<  " \"kernel_out_stream_TID\" :  \"" << kernel_out_stream_TID.read() << "\" ";
        mHdltvoutHandle << " , " <<  " \"kernel_out_stream_TDEST\" :  \"" << kernel_out_stream_TDEST.read() << "\" ";
        mHdltvinHandle << " , " <<  " \"in_stream_predict_TDATA\" :  \"" << in_stream_predict_TDATA.read() << "\" ";
        mHdltvinHandle << " , " <<  " \"in_stream_predict_TVALID\" :  \"" << in_stream_predict_TVALID.read() << "\" ";
        mHdltvoutHandle << " , " <<  " \"in_stream_predict_TREADY\" :  \"" << in_stream_predict_TREADY.read() << "\" ";
        mHdltvinHandle << " , " <<  " \"in_stream_predict_TKEEP\" :  \"" << in_stream_predict_TKEEP.read() << "\" ";
        mHdltvinHandle << " , " <<  " \"in_stream_predict_TSTRB\" :  \"" << in_stream_predict_TSTRB.read() << "\" ";
        mHdltvinHandle << " , " <<  " \"in_stream_predict_TUSER\" :  \"" << in_stream_predict_TUSER.read() << "\" ";
        mHdltvinHandle << " , " <<  " \"in_stream_predict_TLAST\" :  \"" << in_stream_predict_TLAST.read() << "\" ";
        mHdltvinHandle << " , " <<  " \"in_stream_predict_TID\" :  \"" << in_stream_predict_TID.read() << "\" ";
        mHdltvinHandle << " , " <<  " \"in_stream_predict_TDEST\" :  \"" << in_stream_predict_TDEST.read() << "\" ";
        mHdltvinHandle << " , " <<  " \"supp_vec_stream_TDATA\" :  \"" << supp_vec_stream_TDATA.read() << "\" ";
        mHdltvinHandle << " , " <<  " \"supp_vec_stream_TVALID\" :  \"" << supp_vec_stream_TVALID.read() << "\" ";
        mHdltvoutHandle << " , " <<  " \"supp_vec_stream_TREADY\" :  \"" << supp_vec_stream_TREADY.read() << "\" ";
        mHdltvinHandle << " , " <<  " \"supp_vec_stream_TKEEP\" :  \"" << supp_vec_stream_TKEEP.read() << "\" ";
        mHdltvinHandle << " , " <<  " \"supp_vec_stream_TSTRB\" :  \"" << supp_vec_stream_TSTRB.read() << "\" ";
        mHdltvinHandle << " , " <<  " \"supp_vec_stream_TUSER\" :  \"" << supp_vec_stream_TUSER.read() << "\" ";
        mHdltvinHandle << " , " <<  " \"supp_vec_stream_TLAST\" :  \"" << supp_vec_stream_TLAST.read() << "\" ";
        mHdltvinHandle << " , " <<  " \"supp_vec_stream_TID\" :  \"" << supp_vec_stream_TID.read() << "\" ";
        mHdltvinHandle << " , " <<  " \"supp_vec_stream_TDEST\" :  \"" << supp_vec_stream_TDEST.read() << "\" ";
        mHdltvinHandle << " , " <<  " \"dual_coef_stream_TDATA\" :  \"" << dual_coef_stream_TDATA.read() << "\" ";
        mHdltvinHandle << " , " <<  " \"dual_coef_stream_TVALID\" :  \"" << dual_coef_stream_TVALID.read() << "\" ";
        mHdltvoutHandle << " , " <<  " \"dual_coef_stream_TREADY\" :  \"" << dual_coef_stream_TREADY.read() << "\" ";
        mHdltvinHandle << " , " <<  " \"dual_coef_stream_TKEEP\" :  \"" << dual_coef_stream_TKEEP.read() << "\" ";
        mHdltvinHandle << " , " <<  " \"dual_coef_stream_TSTRB\" :  \"" << dual_coef_stream_TSTRB.read() << "\" ";
        mHdltvinHandle << " , " <<  " \"dual_coef_stream_TUSER\" :  \"" << dual_coef_stream_TUSER.read() << "\" ";
        mHdltvinHandle << " , " <<  " \"dual_coef_stream_TLAST\" :  \"" << dual_coef_stream_TLAST.read() << "\" ";
        mHdltvinHandle << " , " <<  " \"dual_coef_stream_TID\" :  \"" << dual_coef_stream_TID.read() << "\" ";
        mHdltvinHandle << " , " <<  " \"dual_coef_stream_TDEST\" :  \"" << dual_coef_stream_TDEST.read() << "\" ";
        mHdltvoutHandle << " , " <<  " \"out_stream_predict_TDATA\" :  \"" << out_stream_predict_TDATA.read() << "\" ";
        mHdltvoutHandle << " , " <<  " \"out_stream_predict_TVALID\" :  \"" << out_stream_predict_TVALID.read() << "\" ";
        mHdltvinHandle << " , " <<  " \"out_stream_predict_TREADY\" :  \"" << out_stream_predict_TREADY.read() << "\" ";
        mHdltvoutHandle << " , " <<  " \"out_stream_predict_TKEEP\" :  \"" << out_stream_predict_TKEEP.read() << "\" ";
        mHdltvoutHandle << " , " <<  " \"out_stream_predict_TSTRB\" :  \"" << out_stream_predict_TSTRB.read() << "\" ";
        mHdltvoutHandle << " , " <<  " \"out_stream_predict_TUSER\" :  \"" << out_stream_predict_TUSER.read() << "\" ";
        mHdltvoutHandle << " , " <<  " \"out_stream_predict_TLAST\" :  \"" << out_stream_predict_TLAST.read() << "\" ";
        mHdltvoutHandle << " , " <<  " \"out_stream_predict_TID\" :  \"" << out_stream_predict_TID.read() << "\" ";
        mHdltvoutHandle << " , " <<  " \"out_stream_predict_TDEST\" :  \"" << out_stream_predict_TDEST.read() << "\" ";
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

