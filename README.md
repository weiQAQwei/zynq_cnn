本仓库中的代码是为了复现论文 FPGA-accelerated mode decomposition for multimode fiber-based communication 中的硬件部分
hls_cnn:通过HLS工具用c++代码生成IP核（利用PL模块的并行优势，负责卷积和最大化池部分），以供在vivado中进行连接。
vitis_ps:在vivado生成的平台上编写ps端代码（裸机），负责内存管理，输入，输出和全连接层。
使用方法：下载文件夹，在vitis中选择其为工作区。
软件版本：vitis2025.1 vivado2025.1
平台：zynq7020（xc7z020clg400-2）
快速验证：将vitis_ps/hello_world/BOOT.bin复制到sd卡中，将zynq7020设置为sd卡启动。
