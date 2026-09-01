module tt_um_WaiMingLee888_nanov_1tile (clk,
    ena,
    rst_n,
    VPWR,
    VGND,
    ui_in,
    uio_in,
    uio_oe,
    uio_out,
    uo_out);
 input clk;
 input ena;
 input rst_n;
 inout VPWR;
 inout VGND;
 input [7:0] ui_in;
 input [7:0] uio_in;
 output [7:0] uio_oe;
 output [7:0] uio_out;
 output [7:0] uo_out;

 wire _0000_;
 wire _0001_;
 wire _0002_;
 wire _0003_;
 wire _0004_;
 wire _0005_;
 wire _0006_;
 wire _0007_;
 wire _0008_;
 wire _0009_;
 wire _0010_;
 wire _0011_;
 wire _0012_;
 wire _0013_;
 wire _0014_;
 wire _0015_;
 wire _0016_;
 wire _0017_;
 wire _0018_;
 wire _0019_;
 wire _0020_;
 wire _0021_;
 wire _0022_;
 wire _0023_;
 wire _0024_;
 wire _0025_;
 wire _0026_;
 wire _0027_;
 wire _0028_;
 wire _0029_;
 wire _0030_;
 wire _0031_;
 wire _0032_;
 wire _0033_;
 wire _0034_;
 wire _0035_;
 wire _0036_;
 wire _0037_;
 wire _0038_;
 wire _0039_;
 wire _0040_;
 wire _0041_;
 wire _0042_;
 wire _0043_;
 wire _0044_;
 wire _0045_;
 wire _0046_;
 wire _0047_;
 wire _0048_;
 wire _0049_;
 wire _0050_;
 wire _0051_;
 wire _0052_;
 wire _0053_;
 wire _0054_;
 wire _0055_;
 wire _0056_;
 wire _0057_;
 wire _0058_;
 wire _0059_;
 wire _0060_;
 wire _0061_;
 wire _0062_;
 wire _0063_;
 wire _0064_;
 wire _0065_;
 wire _0066_;
 wire _0067_;
 wire _0068_;
 wire _0069_;
 wire _0070_;
 wire _0071_;
 wire _0072_;
 wire _0073_;
 wire _0074_;
 wire _0075_;
 wire _0076_;
 wire _0077_;
 wire _0078_;
 wire _0079_;
 wire _0080_;
 wire _0081_;
 wire _0082_;
 wire _0083_;
 wire _0084_;
 wire _0085_;
 wire _0086_;
 wire _0087_;
 wire _0088_;
 wire _0089_;
 wire _0090_;
 wire _0091_;
 wire _0092_;
 wire _0093_;
 wire _0094_;
 wire _0095_;
 wire _0096_;
 wire _0097_;
 wire _0098_;
 wire _0099_;
 wire _0100_;
 wire _0101_;
 wire _0102_;
 wire _0103_;
 wire _0104_;
 wire _0105_;
 wire _0106_;
 wire _0107_;
 wire _0108_;
 wire _0109_;
 wire _0110_;
 wire _0111_;
 wire _0112_;
 wire _0113_;
 wire _0114_;
 wire _0115_;
 wire _0116_;
 wire _0117_;
 wire _0118_;
 wire _0119_;
 wire _0120_;
 wire _0121_;
 wire _0122_;
 wire _0123_;
 wire _0124_;
 wire _0125_;
 wire _0126_;
 wire _0127_;
 wire _0128_;
 wire _0129_;
 wire _0130_;
 wire _0131_;
 wire _0132_;
 wire _0133_;
 wire _0134_;
 wire _0135_;
 wire _0136_;
 wire _0137_;
 wire _0138_;
 wire _0139_;
 wire _0140_;
 wire _0141_;
 wire _0142_;
 wire _0143_;
 wire _0144_;
 wire _0145_;
 wire _0146_;
 wire _0147_;
 wire _0148_;
 wire _0149_;
 wire _0150_;
 wire _0151_;
 wire _0152_;
 wire _0153_;
 wire _0154_;
 wire _0155_;
 wire _0156_;
 wire _0157_;
 wire _0158_;
 wire _0159_;
 wire _0160_;
 wire _0161_;
 wire _0162_;
 wire _0163_;
 wire _0164_;
 wire _0165_;
 wire _0166_;
 wire _0167_;
 wire _0168_;
 wire _0169_;
 wire _0170_;
 wire _0171_;
 wire _0172_;
 wire _0173_;
 wire _0174_;
 wire _0175_;
 wire _0176_;
 wire _0177_;
 wire _0178_;
 wire _0179_;
 wire _0180_;
 wire _0181_;
 wire _0182_;
 wire _0183_;
 wire _0184_;
 wire _0185_;
 wire _0186_;
 wire _0187_;
 wire _0188_;
 wire _0189_;
 wire _0190_;
 wire _0191_;
 wire _0192_;
 wire _0193_;
 wire _0194_;
 wire _0195_;
 wire _0196_;
 wire _0197_;
 wire _0198_;
 wire _0199_;
 wire _0200_;
 wire _0201_;
 wire _0202_;
 wire _0203_;
 wire _0204_;
 wire _0205_;
 wire _0206_;
 wire _0207_;
 wire _0208_;
 wire _0209_;
 wire _0210_;
 wire _0211_;
 wire _0212_;
 wire _0213_;
 wire _0214_;
 wire _0215_;
 wire _0216_;
 wire _0217_;
 wire _0218_;
 wire _0219_;
 wire _0220_;
 wire _0221_;
 wire _0222_;
 wire _0223_;
 wire _0224_;
 wire _0225_;
 wire _0226_;
 wire _0227_;
 wire _0228_;
 wire _0229_;
 wire _0230_;
 wire _0231_;
 wire _0232_;
 wire _0233_;
 wire _0234_;
 wire _0235_;
 wire _0236_;
 wire _0237_;
 wire _0238_;
 wire _0239_;
 wire _0240_;
 wire _0241_;
 wire _0242_;
 wire _0243_;
 wire _0244_;
 wire _0245_;
 wire _0246_;
 wire _0247_;
 wire _0248_;
 wire _0249_;
 wire _0250_;
 wire _0251_;
 wire _0252_;
 wire _0253_;
 wire _0254_;
 wire _0255_;
 wire _0256_;
 wire _0257_;
 wire _0258_;
 wire _0259_;
 wire _0260_;
 wire _0261_;
 wire _0262_;
 wire _0263_;
 wire _0264_;
 wire _0265_;
 wire _0266_;
 wire _0267_;
 wire _0268_;
 wire _0269_;
 wire _0270_;
 wire _0271_;
 wire _0272_;
 wire _0273_;
 wire _0274_;
 wire _0275_;
 wire _0276_;
 wire _0277_;
 wire _0278_;
 wire _0279_;
 wire _0280_;
 wire _0281_;
 wire _0282_;
 wire _0283_;
 wire _0284_;
 wire _0285_;
 wire _0286_;
 wire _0287_;
 wire _0288_;
 wire _0289_;
 wire _0290_;
 wire _0291_;
 wire _0292_;
 wire _0293_;
 wire _0294_;
 wire _0295_;
 wire _0296_;
 wire _0297_;
 wire _0298_;
 wire _0299_;
 wire _0300_;
 wire _0301_;
 wire _0302_;
 wire _0303_;
 wire _0304_;
 wire _0305_;
 wire _0306_;
 wire _0307_;
 wire _0308_;
 wire _0309_;
 wire _0310_;
 wire _0311_;
 wire _0312_;
 wire _0313_;
 wire _0314_;
 wire _0315_;
 wire _0316_;
 wire _0317_;
 wire _0318_;
 wire _0319_;
 wire _0320_;
 wire _0321_;
 wire _0322_;
 wire _0323_;
 wire _0324_;
 wire _0325_;
 wire _0326_;
 wire _0327_;
 wire _0328_;
 wire _0329_;
 wire _0330_;
 wire _0331_;
 wire _0332_;
 wire _0333_;
 wire _0334_;
 wire _0335_;
 wire _0336_;
 wire _0337_;
 wire _0338_;
 wire _0339_;
 wire _0340_;
 wire _0341_;
 wire _0342_;
 wire _0343_;
 wire _0344_;
 wire _0345_;
 wire _0346_;
 wire _0347_;
 wire _0348_;
 wire _0349_;
 wire _0350_;
 wire _0351_;
 wire _0352_;
 wire _0353_;
 wire _0354_;
 wire _0355_;
 wire _0356_;
 wire _0357_;
 wire _0358_;
 wire _0359_;
 wire _0360_;
 wire _0361_;
 wire _0362_;
 wire _0363_;
 wire _0364_;
 wire _0365_;
 wire _0366_;
 wire _0367_;
 wire _0368_;
 wire _0369_;
 wire _0370_;
 wire _0371_;
 wire _0372_;
 wire _0373_;
 wire _0374_;
 wire _0375_;
 wire _0376_;
 wire _0377_;
 wire _0378_;
 wire _0379_;
 wire _0380_;
 wire _0381_;
 wire _0382_;
 wire _0383_;
 wire _0384_;
 wire _0385_;
 wire _0386_;
 wire _0387_;
 wire _0388_;
 wire _0389_;
 wire _0390_;
 wire _0391_;
 wire _0392_;
 wire _0393_;
 wire _0394_;
 wire _0395_;
 wire _0396_;
 wire _0397_;
 wire _0398_;
 wire _0399_;
 wire _0400_;
 wire _0401_;
 wire _0402_;
 wire _0403_;
 wire _0404_;
 wire _0405_;
 wire _0406_;
 wire _0407_;
 wire _0408_;
 wire _0409_;
 wire _0410_;
 wire _0411_;
 wire _0412_;
 wire _0413_;
 wire _0414_;
 wire _0415_;
 wire _0416_;
 wire _0417_;
 wire _0418_;
 wire _0419_;
 wire _0420_;
 wire _0421_;
 wire _0422_;
 wire _0423_;
 wire _0424_;
 wire _0425_;
 wire _0426_;
 wire _0427_;
 wire _0428_;
 wire _0429_;
 wire _0430_;
 wire _0431_;
 wire _0432_;
 wire _0433_;
 wire _0434_;
 wire _0435_;
 wire _0436_;
 wire _0437_;
 wire _0438_;
 wire _0439_;
 wire _0440_;
 wire _0441_;
 wire _0442_;
 wire _0443_;
 wire _0444_;
 wire _0445_;
 wire _0446_;
 wire _0447_;
 wire _0448_;
 wire _0449_;
 wire _0450_;
 wire _0451_;
 wire _0452_;
 wire _0453_;
 wire _0454_;
 wire _0455_;
 wire _0456_;
 wire _0457_;
 wire _0458_;
 wire _0459_;
 wire _0460_;
 wire _0461_;
 wire _0462_;
 wire _0463_;
 wire _0464_;
 wire _0465_;
 wire _0466_;
 wire _0467_;
 wire _0468_;
 wire _0469_;
 wire _0470_;
 wire _0471_;
 wire _0472_;
 wire _0473_;
 wire _0474_;
 wire _0475_;
 wire _0476_;
 wire _0477_;
 wire _0478_;
 wire _0479_;
 wire _0480_;
 wire _0481_;
 wire _0482_;
 wire _0483_;
 wire _0484_;
 wire _0485_;
 wire _0486_;
 wire _0487_;
 wire _0488_;
 wire _0489_;
 wire _0490_;
 wire _0491_;
 wire _0492_;
 wire _0493_;
 wire _0494_;
 wire _0495_;
 wire _0496_;
 wire _0497_;
 wire _0498_;
 wire _0499_;
 wire _0500_;
 wire _0501_;
 wire _0502_;
 wire _0503_;
 wire _0504_;
 wire _0505_;
 wire _0506_;
 wire _0507_;
 wire _0508_;
 wire _0509_;
 wire _0510_;
 wire _0511_;
 wire _0512_;
 wire _0513_;
 wire _0514_;
 wire _0515_;
 wire _0516_;
 wire _0517_;
 wire _0518_;
 wire _0519_;
 wire _0520_;
 wire _0521_;
 wire _0522_;
 wire _0523_;
 wire _0524_;
 wire _0525_;
 wire _0526_;
 wire _0527_;
 wire _0528_;
 wire _0529_;
 wire _0530_;
 wire _0531_;
 wire _0532_;
 wire _0533_;
 wire _0534_;
 wire _0535_;
 wire _0536_;
 wire _0537_;
 wire _0538_;
 wire _0539_;
 wire _0540_;
 wire _0541_;
 wire _0542_;
 wire _0543_;
 wire _0544_;
 wire _0545_;
 wire _0546_;
 wire _0547_;
 wire _0548_;
 wire _0549_;
 wire _0550_;
 wire _0551_;
 wire _0552_;
 wire _0553_;
 wire _0554_;
 wire _0555_;
 wire _0556_;
 wire _0557_;
 wire _0558_;
 wire _0559_;
 wire _0560_;
 wire _0561_;
 wire _0562_;
 wire _0563_;
 wire _0564_;
 wire _0565_;
 wire _0566_;
 wire _0567_;
 wire _0568_;
 wire _0569_;
 wire _0570_;
 wire _0571_;
 wire _0572_;
 wire _0573_;
 wire _0574_;
 wire _0575_;
 wire _0576_;
 wire _0577_;
 wire _0578_;
 wire _0579_;
 wire _0580_;
 wire _0581_;
 wire _0582_;
 wire _0583_;
 wire _0584_;
 wire _0585_;
 wire _0586_;
 wire _0587_;
 wire _0588_;
 wire _0589_;
 wire _0590_;
 wire _0591_;
 wire _0592_;
 wire _0593_;
 wire _0594_;
 wire _0595_;
 wire _0596_;
 wire _0597_;
 wire _0598_;
 wire _0599_;
 wire _0600_;
 wire _0601_;
 wire _0602_;
 wire _0603_;
 wire _0604_;
 wire _0605_;
 wire _0606_;
 wire _0607_;
 wire _0608_;
 wire _0609_;
 wire _0610_;
 wire _0611_;
 wire _0612_;
 wire _0613_;
 wire _0614_;
 wire _0615_;
 wire _0616_;
 wire _0617_;
 wire _0618_;
 wire _0619_;
 wire _0620_;
 wire _0621_;
 wire _0622_;
 wire _0623_;
 wire _0624_;
 wire _0625_;
 wire _0626_;
 wire _0627_;
 wire _0628_;
 wire _0629_;
 wire _0630_;
 wire _0631_;
 wire _0632_;
 wire _0633_;
 wire _0634_;
 wire _0635_;
 wire _0636_;
 wire _0637_;
 wire _0638_;
 wire _0639_;
 wire _0640_;
 wire _0641_;
 wire _0642_;
 wire _0643_;
 wire _0644_;
 wire _0645_;
 wire _0646_;
 wire _0647_;
 wire _0648_;
 wire _0649_;
 wire _0650_;
 wire _0651_;
 wire _0652_;
 wire _0653_;
 wire _0654_;
 wire _0655_;
 wire _0656_;
 wire _0657_;
 wire _0658_;
 wire _0659_;
 wire _0660_;
 wire _0661_;
 wire _0662_;
 wire _0663_;
 wire _0664_;
 wire _0665_;
 wire _0666_;
 wire _0667_;
 wire _0668_;
 wire _0669_;
 wire _0670_;
 wire _0671_;
 wire _0672_;
 wire _0673_;
 wire _0674_;
 wire _0675_;
 wire _0676_;
 wire _0677_;
 wire _0678_;
 wire _0679_;
 wire _0680_;
 wire _0681_;
 wire _0682_;
 wire _0683_;
 wire _0684_;
 wire _0685_;
 wire _0686_;
 wire _0687_;
 wire _0688_;
 wire _0689_;
 wire _0690_;
 wire _0691_;
 wire _0692_;
 wire _0693_;
 wire _0694_;
 wire _0695_;
 wire _0696_;
 wire _0697_;
 wire _0698_;
 wire _0699_;
 wire _0700_;
 wire _0701_;
 wire _0702_;
 wire _0703_;
 wire _0704_;
 wire _0705_;
 wire _0706_;
 wire _0707_;
 wire _0708_;
 wire _0709_;
 wire _0710_;
 wire _0711_;
 wire _0712_;
 wire _0713_;
 wire _0714_;
 wire _0715_;
 wire _0716_;
 wire _0717_;
 wire _0718_;
 wire _0719_;
 wire _0720_;
 wire _0721_;
 wire _0722_;
 wire _0723_;
 wire _0724_;
 wire _0725_;
 wire _0726_;
 wire _0727_;
 wire _0728_;
 wire _0729_;
 wire _0730_;
 wire _0731_;
 wire _0732_;
 wire _0733_;
 wire _0734_;
 wire _0735_;
 wire _0736_;
 wire _0737_;
 wire _0738_;
 wire _0739_;
 wire _0740_;
 wire _0741_;
 wire _0742_;
 wire _0743_;
 wire _0744_;
 wire _0745_;
 wire _0746_;
 wire _0747_;
 wire _0748_;
 wire _0749_;
 wire _0750_;
 wire _0751_;
 wire _0752_;
 wire _0753_;
 wire _0754_;
 wire _0755_;
 wire _0756_;
 wire _0757_;
 wire _0758_;
 wire _0759_;
 wire _0760_;
 wire _0761_;
 wire _0762_;
 wire _0763_;
 wire _0764_;
 wire _0765_;
 wire _0766_;
 wire _0767_;
 wire _0768_;
 wire _0769_;
 wire _0770_;
 wire _0771_;
 wire _0772_;
 wire _0773_;
 wire _0774_;
 wire _0775_;
 wire _0776_;
 wire _0777_;
 wire _0778_;
 wire _0779_;
 wire _0780_;
 wire _0781_;
 wire _0782_;
 wire _0783_;
 wire _0784_;
 wire _0785_;
 wire _0786_;
 wire _0787_;
 wire _0788_;
 wire _0789_;
 wire _0790_;
 wire _0791_;
 wire _0792_;
 wire _0793_;
 wire _0794_;
 wire _0795_;
 wire _0796_;
 wire _0797_;
 wire _0798_;
 wire _0799_;
 wire _0800_;
 wire _0801_;
 wire _0802_;
 wire _0803_;
 wire _0804_;
 wire _0805_;
 wire _0806_;
 wire _0807_;
 wire _0808_;
 wire _0809_;
 wire _0810_;
 wire _0811_;
 wire _0812_;
 wire _0813_;
 wire _0814_;
 wire _0815_;
 wire _0816_;
 wire _0817_;
 wire _0818_;
 wire _0819_;
 wire _0820_;
 wire _0821_;
 wire _0822_;
 wire _0823_;
 wire _0824_;
 wire _0825_;
 wire _0826_;
 wire _0827_;
 wire _0828_;
 wire _0829_;
 wire _0830_;
 wire _0831_;
 wire _0832_;
 wire _0833_;
 wire _0834_;
 wire _0835_;
 wire _0836_;
 wire _0837_;
 wire _0838_;
 wire _0839_;
 wire _0840_;
 wire _0841_;
 wire _0842_;
 wire _0843_;
 wire _0844_;
 wire _0845_;
 wire _0846_;
 wire _0847_;
 wire _0848_;
 wire _0849_;
 wire _0850_;
 wire _0851_;
 wire _0852_;
 wire _0853_;
 wire _0854_;
 wire _0855_;
 wire _0856_;
 wire _0857_;
 wire _0858_;
 wire _0859_;
 wire _0860_;
 wire _0861_;
 wire _0862_;
 wire _0863_;
 wire _0864_;
 wire _0865_;
 wire _0866_;
 wire _0867_;
 wire _0868_;
 wire _0869_;
 wire _0870_;
 wire _0871_;
 wire _0872_;
 wire _0873_;
 wire _0874_;
 wire _0875_;
 wire _0876_;
 wire _0877_;
 wire _0878_;
 wire _0879_;
 wire _0880_;
 wire _0881_;
 wire _0882_;
 wire _0883_;
 wire _0884_;
 wire _0885_;
 wire _0886_;
 wire _0887_;
 wire _0888_;
 wire _0889_;
 wire _0890_;
 wire _0891_;
 wire _0892_;
 wire _0893_;
 wire _0894_;
 wire _0895_;
 wire _0896_;
 wire _0897_;
 wire _0898_;
 wire _0899_;
 wire _0900_;
 wire _0901_;
 wire _0902_;
 wire _0903_;
 wire _0904_;
 wire _0905_;
 wire _0906_;
 wire _0907_;
 wire _0908_;
 wire _0909_;
 wire _0910_;
 wire _0911_;
 wire _0912_;
 wire _0913_;
 wire _0914_;
 wire _0915_;
 wire _0916_;
 wire _0917_;
 wire _0918_;
 wire _0919_;
 wire _0920_;
 wire _0921_;
 wire _0922_;
 wire _0923_;
 wire _0924_;
 wire _0925_;
 wire _0926_;
 wire _0927_;
 wire _0928_;
 wire _0929_;
 wire _0930_;
 wire _0931_;
 wire _0932_;
 wire _0933_;
 wire _0934_;
 wire _0935_;
 wire _0936_;
 wire _0937_;
 wire _0938_;
 wire _0939_;
 wire _0940_;
 wire _0941_;
 wire _0942_;
 wire _0943_;
 wire _0944_;
 wire _0945_;
 wire _0946_;
 wire _0947_;
 wire _0948_;
 wire _0949_;
 wire _0950_;
 wire _0951_;
 wire _0952_;
 wire _0953_;
 wire _0954_;
 wire _0955_;
 wire _0956_;
 wire _0957_;
 wire _0958_;
 wire _0959_;
 wire _0960_;
 wire _0961_;
 wire _0962_;
 wire _0963_;
 wire _0964_;
 wire _0965_;
 wire _0966_;
 wire _0967_;
 wire _0968_;
 wire _0969_;
 wire _0970_;
 wire _0971_;
 wire _0972_;
 wire _0973_;
 wire _0974_;
 wire _0975_;
 wire _0976_;
 wire _0977_;
 wire _0978_;
 wire _0979_;
 wire _0980_;
 wire _0981_;
 wire _0982_;
 wire _0983_;
 wire _0984_;
 wire _0985_;
 wire _0986_;
 wire _0987_;
 wire _0988_;
 wire _0989_;
 wire _0990_;
 wire _0991_;
 wire _0992_;
 wire _0993_;
 wire _0994_;
 wire _0995_;
 wire _0996_;
 wire _0997_;
 wire _0998_;
 wire _0999_;
 wire _1000_;
 wire _1001_;
 wire _1002_;
 wire _1003_;
 wire _1004_;
 wire _1005_;
 wire _1006_;
 wire _1007_;
 wire _1008_;
 wire _1009_;
 wire _1010_;
 wire _1011_;
 wire _1012_;
 wire _1013_;
 wire _1014_;
 wire _1015_;
 wire _1016_;
 wire _1017_;
 wire _1018_;
 wire _1019_;
 wire _1020_;
 wire _1021_;
 wire _1022_;
 wire _1023_;
 wire _1024_;
 wire _1025_;
 wire _1026_;
 wire _1027_;
 wire _1028_;
 wire _1029_;
 wire _1030_;
 wire _1031_;
 wire _1032_;
 wire _1033_;
 wire _1034_;
 wire _1035_;
 wire _1036_;
 wire _1037_;
 wire _1038_;
 wire _1039_;
 wire _1040_;
 wire _1041_;
 wire _1042_;
 wire _1043_;
 wire _1044_;
 wire _1045_;
 wire _1046_;
 wire _1047_;
 wire _1048_;
 wire _1049_;
 wire _1050_;
 wire _1051_;
 wire _1052_;
 wire _1053_;
 wire _1054_;
 wire _1055_;
 wire _1056_;
 wire _1057_;
 wire _1058_;
 wire _1059_;
 wire _1060_;
 wire _1061_;
 wire _1062_;
 wire _1063_;
 wire _1064_;
 wire _1065_;
 wire _1066_;
 wire _1067_;
 wire _1068_;
 wire _1069_;
 wire _1070_;
 wire _1071_;
 wire _1072_;
 wire _1073_;
 wire _1074_;
 wire _1075_;
 wire _1076_;
 wire _1077_;
 wire _1078_;
 wire _1079_;
 wire _1080_;
 wire _1081_;
 wire _1082_;
 wire _1083_;
 wire _1084_;
 wire _1085_;
 wire _1086_;
 wire _1087_;
 wire _1088_;
 wire _1089_;
 wire _1090_;
 wire _1091_;
 wire _1092_;
 wire _1093_;
 wire _1094_;
 wire _1095_;
 wire _1096_;
 wire \nano.branch_taken ;
 wire \nano.core.b_imm[10] ;
 wire \nano.core.b_imm[11] ;
 wire \nano.core.b_imm[12] ;
 wire \nano.core.b_imm[1] ;
 wire \nano.core.b_imm[2] ;
 wire \nano.core.b_imm[3] ;
 wire \nano.core.b_imm[4] ;
 wire \nano.core.b_imm[5] ;
 wire \nano.core.b_imm[6] ;
 wire \nano.core.b_imm[7] ;
 wire \nano.core.b_imm[8] ;
 wire \nano.core.b_imm[9] ;
 wire \nano.core.counter[0] ;
 wire \nano.core.counter[1] ;
 wire \nano.core.counter[2] ;
 wire \nano.core.counter[3] ;
 wire \nano.core.counter[4] ;
 wire \nano.core.cy ;
 wire \nano.core.cycle[0] ;
 wire \nano.core.cycle[1] ;
 wire \nano.core.cycle[2] ;
 wire \nano.core.data_out[0] ;
 wire \nano.core.data_out[10] ;
 wire \nano.core.data_out[11] ;
 wire \nano.core.data_out[12] ;
 wire \nano.core.data_out[13] ;
 wire \nano.core.data_out[14] ;
 wire \nano.core.data_out[15] ;
 wire \nano.core.data_out[16] ;
 wire \nano.core.data_out[17] ;
 wire \nano.core.data_out[18] ;
 wire \nano.core.data_out[19] ;
 wire \nano.core.data_out[1] ;
 wire \nano.core.data_out[20] ;
 wire \nano.core.data_out[21] ;
 wire \nano.core.data_out[22] ;
 wire \nano.core.data_out[23] ;
 wire \nano.core.data_out[24] ;
 wire \nano.core.data_out[25] ;
 wire \nano.core.data_out[26] ;
 wire \nano.core.data_out[27] ;
 wire \nano.core.data_out[28] ;
 wire \nano.core.data_out[29] ;
 wire \nano.core.data_out[2] ;
 wire \nano.core.data_out[30] ;
 wire \nano.core.data_out[31] ;
 wire \nano.core.data_out[3] ;
 wire \nano.core.data_out[4] ;
 wire \nano.core.data_out[5] ;
 wire \nano.core.data_out[6] ;
 wire \nano.core.data_out[7] ;
 wire \nano.core.data_out[8] ;
 wire \nano.core.data_out[9] ;
 wire \nano.core.data_rs1 ;
 wire \nano.core.data_rs2 ;
 wire \nano.core.execute_enable ;
 wire \nano.core.ext_next_rs1[0] ;
 wire \nano.core.ext_next_rs1[1] ;
 wire \nano.core.ext_next_rs1[2] ;
 wire \nano.core.ext_next_rs1[3] ;
 wire \nano.core.ext_next_rs2[0] ;
 wire \nano.core.ext_next_rs2[1] ;
 wire \nano.core.ext_next_rs2[2] ;
 wire \nano.core.ext_next_rs2[3] ;
 wire \nano.core.i_imm[4] ;
 wire \nano.core.instr[12] ;
 wire \nano.core.instr[13] ;
 wire \nano.core.instr[14] ;
 wire \nano.core.instr[19] ;
 wire \nano.core.instr[2] ;
 wire \nano.core.instr[3] ;
 wire \nano.core.instr[4] ;
 wire \nano.core.instr[5] ;
 wire \nano.core.instr[6] ;
 wire \nano.core.is_equal_reg ;
 wire \nano.core.pc ;
 wire \nano.core.shift_amt_reg[0] ;
 wire \nano.core.shift_amt_reg[1] ;
 wire \nano.core.shift_amt_reg[2] ;
 wire \nano.core.shift_amt_reg[3] ;
 wire \nano.core.shift_amt_reg[4] ;
 wire \nano.decoded_instruction[6] ;
 wire \nano.decoded_instruction[7] ;
 wire \nano.load_value[1] ;
 wire \nano.load_value[2] ;
 wire \nano.load_value[3] ;
 wire \nano.load_value[4] ;
 wire \nano.load_value[5] ;
 wire \nano.load_value[6] ;
 wire \nano.load_value[7] ;
 wire \nano.pc[10] ;
 wire \nano.pc[11] ;
 wire \nano.pc[12] ;
 wire \nano.pc[13] ;
 wire \nano.pc[14] ;
 wire \nano.pc[15] ;
 wire \nano.pc[16] ;
 wire \nano.pc[17] ;
 wire \nano.pc[18] ;
 wire \nano.pc[19] ;
 wire \nano.pc[1] ;
 wire \nano.pc[20] ;
 wire \nano.pc[21] ;
 wire \nano.pc[2] ;
 wire \nano.pc[3] ;
 wire \nano.pc[4] ;
 wire \nano.pc[5] ;
 wire \nano.pc[6] ;
 wire \nano.pc[7] ;
 wire \nano.pc[8] ;
 wire \nano.pc[9] ;
 wire \nano.rs1_value[10] ;
 wire \nano.rs1_value[11] ;
 wire \nano.rs1_value[12] ;
 wire \nano.rs1_value[13] ;
 wire \nano.rs1_value[14] ;
 wire \nano.rs1_value[15] ;
 wire \nano.rs1_value[16] ;
 wire \nano.rs1_value[17] ;
 wire \nano.rs1_value[18] ;
 wire \nano.rs1_value[19] ;
 wire \nano.rs1_value[20] ;
 wire \nano.rs1_value[21] ;
 wire \nano.rs1_value[22] ;
 wire \nano.rs1_value[23] ;
 wire \nano.rs1_value[24] ;
 wire \nano.rs1_value[25] ;
 wire \nano.rs1_value[26] ;
 wire \nano.rs1_value[27] ;
 wire \nano.rs1_value[28] ;
 wire \nano.rs1_value[29] ;
 wire \nano.rs1_value[30] ;
 wire \nano.rs1_value[31] ;
 wire \nano.rs1_value[8] ;
 wire \nano.rs1_value[9] ;
 wire \nano.rs2_raw_value[10] ;
 wire \nano.rs2_raw_value[11] ;
 wire \nano.rs2_raw_value[12] ;
 wire \nano.rs2_raw_value[13] ;
 wire \nano.rs2_raw_value[14] ;
 wire \nano.rs2_raw_value[15] ;
 wire \nano.rs2_raw_value[16] ;
 wire \nano.rs2_raw_value[17] ;
 wire \nano.rs2_raw_value[18] ;
 wire \nano.rs2_raw_value[19] ;
 wire \nano.rs2_raw_value[1] ;
 wire \nano.rs2_raw_value[20] ;
 wire \nano.rs2_raw_value[21] ;
 wire \nano.rs2_raw_value[22] ;
 wire \nano.rs2_raw_value[23] ;
 wire \nano.rs2_raw_value[24] ;
 wire \nano.rs2_raw_value[25] ;
 wire \nano.rs2_raw_value[26] ;
 wire \nano.rs2_raw_value[27] ;
 wire \nano.rs2_raw_value[28] ;
 wire \nano.rs2_raw_value[29] ;
 wire \nano.rs2_raw_value[2] ;
 wire \nano.rs2_raw_value[30] ;
 wire \nano.rs2_raw_value[31] ;
 wire \nano.rs2_raw_value[3] ;
 wire \nano.rs2_raw_value[4] ;
 wire \nano.rs2_raw_value[5] ;
 wire \nano.rs2_raw_value[6] ;
 wire \nano.rs2_raw_value[7] ;
 wire \nano.rs2_raw_value[8] ;
 wire \nano.rs2_raw_value[9] ;
 wire \nano.spi_engine.bit_count[0] ;
 wire \nano.spi_engine.bit_count[1] ;
 wire \nano.spi_engine.bit_count[2] ;
 wire \nano.spi_engine.bit_count[3] ;
 wire \nano.spi_engine.bit_count[4] ;
 wire \nano.spi_engine.spi_out ;
 wire \nano.spi_engine.spi_select ;
 wire \nano.spi_engine.state[1] ;
 wire \nano.spi_engine.state[2] ;
 wire \nano.staging.normalize_result ;
 wire \nano.staging.normalize_sources ;
 wire \nano.state[0] ;
 wire \nano.state[10] ;
 wire \nano.state[11] ;
 wire \nano.state[12] ;
 wire \nano.state[1] ;
 wire \nano.state[2] ;
 wire \nano.state[4] ;
 wire \nano.state[5] ;
 wire \nano.state[7] ;
 wire \nano.state[8] ;
 wire \nano.state[9] ;
 wire clknet_0_clk;
 wire clknet_4_0_0_clk;
 wire clknet_4_1_0_clk;
 wire clknet_4_2_0_clk;
 wire clknet_4_3_0_clk;
 wire clknet_4_4_0_clk;
 wire clknet_4_5_0_clk;
 wire clknet_4_6_0_clk;
 wire clknet_4_7_0_clk;
 wire clknet_4_8_0_clk;
 wire clknet_4_9_0_clk;
 wire clknet_4_10_0_clk;
 wire clknet_4_11_0_clk;
 wire clknet_4_12_0_clk;
 wire clknet_4_13_0_clk;
 wire clknet_4_14_0_clk;
 wire clknet_4_15_0_clk;

 sky130_fd_sc_hd__diode_2 ANTENNA_1 (.DIODE(_0227_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__diode_2 ANTENNA_10 (.DIODE(uio_in[3]),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__diode_2 ANTENNA_11 (.DIODE(uio_in[3]),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__diode_2 ANTENNA_12 (.DIODE(_0112_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__diode_2 ANTENNA_13 (.DIODE(_0574_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__diode_2 ANTENNA_14 (.DIODE(_0436_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__diode_2 ANTENNA_15 (.DIODE(_0441_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__diode_2 ANTENNA_16 (.DIODE(_0490_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__diode_2 ANTENNA_17 (.DIODE(_0919_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__diode_2 ANTENNA_2 (.DIODE(_0437_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__diode_2 ANTENNA_3 (.DIODE(_0484_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__diode_2 ANTENNA_4 (.DIODE(_0829_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__diode_2 ANTENNA_5 (.DIODE(_0875_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__diode_2 ANTENNA_6 (.DIODE(_0958_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__diode_2 ANTENNA_7 (.DIODE(clk),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__diode_2 ANTENNA_8 (.DIODE(ui_in[1]),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__diode_2 ANTENNA_9 (.DIODE(uio_in[3]),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__fill_1 FILLER_0_113 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__fill_2 FILLER_0_141 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__decap_3 FILLER_0_160 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__decap_3 FILLER_0_169 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__fill_2 FILLER_0_194 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__fill_1 FILLER_0_197 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__decap_3 FILLER_0_249 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__fill_2 FILLER_0_278 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__fill_2 FILLER_0_289 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__decap_3 FILLER_0_3 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__decap_3 FILLER_0_305 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__fill_1 FILLER_0_334 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__fill_1 FILLER_0_57 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__decap_3 FILLER_0_6 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__fill_1 FILLER_0_85 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__fill_2 FILLER_0_9 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__decap_3 FILLER_10_109 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__fill_2 FILLER_10_138 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__decap_3 FILLER_10_141 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__fill_1 FILLER_10_144 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__fill_2 FILLER_10_183 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__fill_2 FILLER_10_197 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__fill_2 FILLER_10_250 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__fill_2 FILLER_10_26 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__fill_2 FILLER_10_295 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__fill_2 FILLER_10_3 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__decap_3 FILLER_10_305 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__fill_1 FILLER_10_317 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__fill_1 FILLER_10_46 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__fill_2 FILLER_10_64 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__fill_2 FILLER_10_85 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__decap_3 FILLER_10_96 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__fill_1 FILLER_10_99 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__fill_1 FILLER_11_113 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__fill_1 FILLER_11_164 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__fill_2 FILLER_11_169 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__decap_3 FILLER_11_188 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__fill_1 FILLER_11_20 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__fill_1 FILLER_11_249 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__fill_2 FILLER_11_267 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__fill_1 FILLER_11_279 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__fill_1 FILLER_11_323 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__fill_2 FILLER_11_333 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__fill_2 FILLER_11_79 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__decap_3 FILLER_12_118 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__fill_2 FILLER_12_130 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__fill_1 FILLER_12_144 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__fill_1 FILLER_12_162 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__fill_1 FILLER_12_177 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__decap_3 FILLER_12_193 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__fill_1 FILLER_12_203 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__fill_2 FILLER_12_250 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__fill_1 FILLER_12_256 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__fill_2 FILLER_12_29 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__decap_3 FILLER_12_3 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__decap_3 FILLER_12_304 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__fill_1 FILLER_12_307 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__fill_1 FILLER_12_309 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__fill_2 FILLER_12_40 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__fill_2 FILLER_12_72 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__fill_1 FILLER_12_83 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__fill_1 FILLER_13_150 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__fill_2 FILLER_13_199 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__fill_1 FILLER_13_223 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__fill_2 FILLER_13_225 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__fill_1 FILLER_13_239 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__decap_3 FILLER_13_252 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__fill_1 FILLER_13_255 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__decap_3 FILLER_13_277 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__fill_2 FILLER_13_281 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__decap_3 FILLER_13_31 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__decap_3 FILLER_13_332 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__fill_1 FILLER_14_130 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__decap_3 FILLER_14_165 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__fill_1 FILLER_14_186 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__fill_1 FILLER_14_207 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__decap_3 FILLER_14_25 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__fill_1 FILLER_14_251 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__decap_3 FILLER_14_3 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__fill_2 FILLER_14_333 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__fill_1 FILLER_14_6 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__fill_1 FILLER_14_85 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__fill_1 FILLER_15_111 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__fill_1 FILLER_15_113 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__fill_1 FILLER_15_185 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__fill_1 FILLER_15_208 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__fill_1 FILLER_15_223 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__fill_2 FILLER_15_242 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__fill_1 FILLER_15_258 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__decap_3 FILLER_15_277 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__fill_2 FILLER_15_29 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__decap_3 FILLER_15_306 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__decap_3 FILLER_15_332 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__decap_3 FILLER_15_57 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__decap_3 FILLER_15_67 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__decap_3 FILLER_16_223 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__fill_1 FILLER_16_226 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__decap_3 FILLER_16_240 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__decap_3 FILLER_16_253 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__decap_3 FILLER_16_295 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__fill_1 FILLER_16_298 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__fill_2 FILLER_16_3 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__decap_3 FILLER_16_309 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__fill_1 FILLER_16_334 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__decap_3 FILLER_16_57 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__decap_3 FILLER_17_108 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__fill_1 FILLER_17_111 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__decap_3 FILLER_17_150 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__fill_1 FILLER_17_169 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__fill_2 FILLER_17_201 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__fill_1 FILLER_17_263 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__fill_2 FILLER_17_286 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__decap_3 FILLER_17_305 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__fill_1 FILLER_17_308 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__decap_3 FILLER_17_53 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__decap_3 FILLER_17_70 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__fill_1 FILLER_17_73 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__fill_1 FILLER_18_114 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__fill_1 FILLER_18_132 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__decap_3 FILLER_18_141 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__fill_1 FILLER_18_144 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__decap_3 FILLER_18_163 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__fill_1 FILLER_18_166 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__fill_1 FILLER_18_207 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__fill_1 FILLER_18_220 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__fill_2 FILLER_18_253 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__decap_3 FILLER_18_264 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__fill_1 FILLER_18_267 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__fill_1 FILLER_18_334 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__fill_2 FILLER_18_52 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__fill_2 FILLER_18_85 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__fill_2 FILLER_19_110 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__fill_1 FILLER_19_113 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__fill_1 FILLER_19_128 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__decap_3 FILLER_19_155 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__fill_1 FILLER_19_158 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__fill_1 FILLER_19_167 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__fill_2 FILLER_19_222 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__fill_1 FILLER_19_225 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__fill_1 FILLER_19_233 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__fill_1 FILLER_19_255 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__decap_3 FILLER_19_27 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__fill_2 FILLER_19_281 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__fill_1 FILLER_19_3 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__decap_3 FILLER_19_331 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__fill_1 FILLER_19_334 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__fill_1 FILLER_19_48 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__fill_2 FILLER_19_71 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__fill_1 FILLER_1_113 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__decap_3 FILLER_1_14 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__fill_2 FILLER_1_186 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__decap_3 FILLER_1_220 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__fill_1 FILLER_1_223 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__fill_1 FILLER_1_225 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__fill_2 FILLER_1_248 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__decap_3 FILLER_1_259 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__fill_1 FILLER_1_262 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__decap_3 FILLER_1_281 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__fill_1 FILLER_1_3 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__fill_2 FILLER_1_32 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__decap_3 FILLER_1_323 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__decap_3 FILLER_1_331 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__fill_1 FILLER_1_334 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__decap_3 FILLER_1_57 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__decap_3 FILLER_20_108 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__fill_1 FILLER_20_111 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__decap_3 FILLER_20_137 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__fill_1 FILLER_20_156 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__fill_1 FILLER_20_173 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__fill_1 FILLER_20_195 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__fill_1 FILLER_20_197 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__fill_1 FILLER_20_222 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__fill_1 FILLER_20_253 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__decap_3 FILLER_20_287 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__fill_2 FILLER_20_298 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__fill_1 FILLER_20_309 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__fill_1 FILLER_20_36 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__fill_1 FILLER_20_83 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__decap_3 FILLER_21_139 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__fill_1 FILLER_21_142 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__decap_3 FILLER_21_158 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__decap_3 FILLER_21_176 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__decap_3 FILLER_21_196 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__fill_1 FILLER_21_25 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__decap_3 FILLER_21_3 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__decap_3 FILLER_21_57 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__fill_1 FILLER_21_6 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__fill_1 FILLER_21_77 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__fill_1 FILLER_22_116 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__fill_1 FILLER_22_141 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__fill_2 FILLER_22_170 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__fill_2 FILLER_22_177 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__fill_1 FILLER_22_197 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__fill_1 FILLER_22_207 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__fill_1 FILLER_22_245 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__decap_3 FILLER_22_29 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__fill_1 FILLER_22_290 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__fill_1 FILLER_22_309 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__fill_2 FILLER_22_41 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__fill_1 FILLER_22_83 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__fill_1 FILLER_22_85 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__fill_1 FILLER_23_102 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__fill_2 FILLER_23_113 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__decap_3 FILLER_23_132 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__fill_1 FILLER_23_135 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__fill_1 FILLER_23_162 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__decap_3 FILLER_23_192 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__fill_1 FILLER_23_195 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__fill_2 FILLER_23_222 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__decap_3 FILLER_23_238 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__decap_3 FILLER_23_258 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__fill_1 FILLER_23_261 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__fill_1 FILLER_23_279 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__fill_1 FILLER_23_3 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__decap_3 FILLER_23_318 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__fill_1 FILLER_23_321 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__decap_3 FILLER_23_331 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__fill_1 FILLER_23_334 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__fill_1 FILLER_23_47 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__decap_3 FILLER_23_57 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__fill_2 FILLER_24_114 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__decap_3 FILLER_24_141 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__fill_2 FILLER_24_153 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__decap_3 FILLER_24_160 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__fill_1 FILLER_24_169 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__fill_2 FILLER_24_207 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__decap_3 FILLER_24_25 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__decap_3 FILLER_24_3 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__fill_1 FILLER_24_32 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__fill_2 FILLER_24_333 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__fill_1 FILLER_24_6 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__fill_2 FILLER_24_64 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__fill_1 FILLER_25_111 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__fill_1 FILLER_25_113 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__fill_2 FILLER_25_146 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__decap_3 FILLER_25_165 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__fill_1 FILLER_25_223 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__fill_1 FILLER_25_23 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__fill_2 FILLER_25_281 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__fill_2 FILLER_25_333 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__decap_3 FILLER_25_75 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__fill_1 FILLER_25_78 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__decap_3 FILLER_25_91 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__fill_1 FILLER_26_130 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__fill_1 FILLER_26_141 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__decap_3 FILLER_26_151 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__fill_1 FILLER_26_195 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__fill_2 FILLER_26_197 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__fill_1 FILLER_26_227 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__fill_1 FILLER_26_251 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__fill_1 FILLER_26_29 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__decap_3 FILLER_26_3 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__fill_1 FILLER_26_317 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__fill_1 FILLER_26_6 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__decap_3 FILLER_26_72 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__fill_1 FILLER_26_75 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__decap_3 FILLER_26_92 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__decap_3 FILLER_27_108 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__fill_1 FILLER_27_111 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__fill_1 FILLER_27_113 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__fill_2 FILLER_27_169 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__fill_1 FILLER_27_225 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__fill_1 FILLER_27_242 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__fill_1 FILLER_27_57 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__fill_2 FILLER_27_98 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__fill_1 FILLER_28_111 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__fill_1 FILLER_28_141 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__fill_1 FILLER_28_159 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__decap_3 FILLER_28_230 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__fill_2 FILLER_28_250 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__decap_3 FILLER_28_253 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__fill_1 FILLER_28_273 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__fill_1 FILLER_28_292 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__decap_3 FILLER_28_3 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__fill_2 FILLER_28_82 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__decap_3 FILLER_28_85 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__fill_1 FILLER_29_111 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__fill_1 FILLER_29_113 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__decap_3 FILLER_29_120 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__fill_1 FILLER_29_150 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__fill_2 FILLER_29_182 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__fill_1 FILLER_29_20 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__fill_1 FILLER_29_334 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__fill_2 FILLER_29_94 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__decap_3 FILLER_2_118 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__fill_1 FILLER_2_121 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__fill_1 FILLER_2_13 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__fill_1 FILLER_2_141 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__fill_1 FILLER_2_195 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__fill_1 FILLER_2_214 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__fill_2 FILLER_2_232 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__fill_1 FILLER_2_258 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__decap_3 FILLER_2_268 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__fill_2 FILLER_2_306 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__decap_3 FILLER_2_326 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__fill_1 FILLER_2_329 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__decap_3 FILLER_2_34 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__fill_1 FILLER_2_47 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__fill_1 FILLER_30_185 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__fill_1 FILLER_30_215 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__fill_2 FILLER_30_26 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__fill_1 FILLER_30_85 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__fill_1 FILLER_31_111 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__fill_2 FILLER_31_155 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__fill_2 FILLER_31_166 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__fill_1 FILLER_31_178 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__decap_3 FILLER_31_241 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__decap_3 FILLER_31_261 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__decap_3 FILLER_31_298 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__fill_1 FILLER_31_57 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__fill_2 FILLER_31_88 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__fill_2 FILLER_32_171 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__fill_1 FILLER_32_18 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__fill_2 FILLER_32_181 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__fill_1 FILLER_32_192 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__decap_3 FILLER_32_261 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__fill_1 FILLER_32_264 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__fill_1 FILLER_32_277 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__fill_1 FILLER_32_3 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__fill_1 FILLER_32_38 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__fill_2 FILLER_32_65 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__fill_1 FILLER_33_111 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__fill_1 FILLER_33_113 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__fill_2 FILLER_33_141 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__fill_1 FILLER_33_152 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__fill_1 FILLER_33_162 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__fill_2 FILLER_33_169 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__fill_1 FILLER_33_196 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__fill_1 FILLER_33_214 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__fill_2 FILLER_33_225 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__fill_1 FILLER_33_258 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__decap_3 FILLER_33_276 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__fill_1 FILLER_33_279 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__fill_2 FILLER_33_281 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__decap_3 FILLER_33_332 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__fill_1 FILLER_33_46 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__fill_1 FILLER_33_57 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__fill_2 FILLER_34_138 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__fill_2 FILLER_34_141 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__fill_1 FILLER_34_160 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__fill_1 FILLER_34_178 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__fill_1 FILLER_34_214 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__decap_3 FILLER_34_249 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__decap_3 FILLER_34_253 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__fill_1 FILLER_34_256 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__fill_2 FILLER_34_26 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__fill_1 FILLER_34_282 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__fill_1 FILLER_34_3 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__fill_1 FILLER_34_94 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__fill_1 FILLER_35_111 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__fill_1 FILLER_35_203 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__decap_3 FILLER_35_221 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__fill_2 FILLER_35_233 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__fill_1 FILLER_35_252 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__fill_2 FILLER_35_278 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__fill_1 FILLER_35_29 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__fill_1 FILLER_35_3 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__fill_1 FILLER_35_334 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__fill_1 FILLER_35_66 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__fill_2 FILLER_36_116 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__fill_1 FILLER_36_188 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__fill_2 FILLER_36_197 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__decap_3 FILLER_36_216 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__fill_2 FILLER_36_228 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__fill_1 FILLER_36_58 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__fill_2 FILLER_36_85 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__fill_1 FILLER_37_167 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__decap_3 FILLER_37_169 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__decap_3 FILLER_37_188 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__fill_1 FILLER_37_199 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__decap_3 FILLER_37_242 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__fill_1 FILLER_37_91 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__fill_1 FILLER_38_126 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__fill_2 FILLER_38_149 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__fill_2 FILLER_38_222 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__fill_2 FILLER_38_225 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__fill_1 FILLER_38_253 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__fill_1 FILLER_38_281 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__fill_1 FILLER_38_29 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__fill_1 FILLER_38_298 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__decap_3 FILLER_38_309 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__fill_1 FILLER_38_312 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__fill_1 FILLER_38_78 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__fill_1 FILLER_38_85 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__fill_1 FILLER_3_122 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__decap_3 FILLER_3_140 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__fill_1 FILLER_3_158 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__fill_1 FILLER_3_169 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__decap_3 FILLER_3_184 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__fill_2 FILLER_3_196 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__decap_3 FILLER_3_290 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__fill_1 FILLER_3_293 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__decap_3 FILLER_3_3 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__decap_3 FILLER_3_311 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__decap_3 FILLER_3_331 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__fill_1 FILLER_3_334 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__fill_2 FILLER_3_36 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__fill_1 FILLER_3_57 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__fill_1 FILLER_3_6 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__fill_2 FILLER_3_72 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__decap_3 FILLER_3_91 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__decap_3 FILLER_4_137 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__decap_3 FILLER_4_150 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__fill_1 FILLER_4_153 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__fill_1 FILLER_4_195 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__fill_1 FILLER_4_251 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__fill_2 FILLER_4_253 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__decap_3 FILLER_4_305 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__fill_1 FILLER_4_314 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__decap_3 FILLER_4_332 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__fill_1 FILLER_4_55 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__fill_2 FILLER_4_73 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__fill_2 FILLER_4_8 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__fill_2 FILLER_5_113 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__decap_3 FILLER_5_140 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__fill_1 FILLER_5_143 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__fill_2 FILLER_5_153 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__decap_3 FILLER_5_164 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__fill_1 FILLER_5_167 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__decap_3 FILLER_5_169 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__fill_1 FILLER_5_172 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__fill_1 FILLER_5_186 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__decap_3 FILLER_5_213 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__decap_3 FILLER_5_232 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__fill_1 FILLER_5_235 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__fill_1 FILLER_5_244 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__decap_3 FILLER_5_26 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__decap_3 FILLER_5_262 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__fill_1 FILLER_5_265 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__fill_1 FILLER_5_286 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__fill_1 FILLER_5_29 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__decap_3 FILLER_5_312 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__fill_1 FILLER_5_315 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__decap_3 FILLER_5_332 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__fill_1 FILLER_5_57 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__decap_3 FILLER_5_84 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__fill_1 FILLER_5_87 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__fill_2 FILLER_6_111 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__decap_3 FILLER_6_158 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__fill_1 FILLER_6_161 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__fill_1 FILLER_6_195 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__fill_1 FILLER_6_205 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__fill_1 FILLER_6_230 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__decap_3 FILLER_6_25 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__fill_2 FILLER_6_250 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__fill_1 FILLER_6_253 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__decap_3 FILLER_6_267 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__fill_1 FILLER_6_307 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__fill_1 FILLER_6_309 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__fill_2 FILLER_6_46 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__fill_1 FILLER_7_111 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__decap_3 FILLER_7_156 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__decap_3 FILLER_7_169 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__decap_3 FILLER_7_195 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__fill_1 FILLER_7_215 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__fill_2 FILLER_7_225 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__decap_3 FILLER_7_233 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__fill_1 FILLER_7_236 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__fill_2 FILLER_7_265 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__decap_3 FILLER_7_276 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__fill_1 FILLER_7_279 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__fill_1 FILLER_7_293 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__decap_3 FILLER_7_3 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__decap_3 FILLER_7_312 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__fill_2 FILLER_7_333 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__decap_3 FILLER_7_57 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__decap_3 FILLER_7_69 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__fill_1 FILLER_7_72 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__decap_3 FILLER_7_99 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__decap_3 FILLER_8_155 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__decap_3 FILLER_8_166 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__fill_2 FILLER_8_187 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__decap_3 FILLER_8_204 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__fill_1 FILLER_8_207 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__fill_1 FILLER_8_22 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__decap_3 FILLER_8_241 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__fill_2 FILLER_8_253 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__fill_2 FILLER_8_270 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__decap_3 FILLER_8_29 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__fill_2 FILLER_8_3 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__decap_3 FILLER_8_304 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__fill_1 FILLER_8_307 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__fill_1 FILLER_8_317 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__fill_1 FILLER_8_32 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__fill_1 FILLER_8_67 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__fill_1 FILLER_8_85 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__fill_1 FILLER_9_160 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__fill_1 FILLER_9_169 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__fill_2 FILLER_9_232 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__decap_3 FILLER_9_267 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__fill_1 FILLER_9_270 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__decap_3 FILLER_9_296 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__decap_3 FILLER_9_308 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__fill_1 FILLER_9_311 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__decap_3 FILLER_9_53 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__decap_3 FILLER_9_57 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__decap_3 FILLER_9_86 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__fill_1 FILLER_9_89 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_0_Left_39 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_0_Right_0 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_10_Left_49 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_10_Right_10 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_11_Left_50 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_11_Right_11 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_12_Left_51 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_12_Right_12 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_13_Left_52 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_13_Right_13 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_14_Left_53 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_14_Right_14 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_15_Left_54 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_15_Right_15 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_16_Left_55 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_16_Right_16 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_17_Left_56 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_17_Right_17 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_18_Left_57 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_18_Right_18 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_19_Left_58 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_19_Right_19 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_1_Left_40 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_1_Right_1 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_20_Left_59 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_20_Right_20 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_21_Left_60 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_21_Right_21 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_22_Left_61 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_22_Right_22 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_23_Left_62 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_23_Right_23 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_24_Left_63 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_24_Right_24 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_25_Left_64 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_25_Right_25 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_26_Left_65 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_26_Right_26 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_27_Left_66 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_27_Right_27 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_28_Left_67 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_28_Right_28 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_29_Left_68 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_29_Right_29 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_2_Left_41 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_2_Right_2 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_30_Left_69 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_30_Right_30 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_31_Left_70 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_31_Right_31 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_32_Left_71 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_32_Right_32 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_33_Left_72 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_33_Right_33 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_34_Left_73 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_34_Right_34 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_35_Left_74 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_35_Right_35 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_36_Left_75 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_36_Right_36 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_37_Left_76 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_37_Right_37 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_38_Left_77 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_38_Right_38 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_3_Left_42 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_3_Right_3 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_4_Left_43 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_4_Right_4 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_5_Left_44 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_5_Right_5 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_6_Left_45 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_6_Right_6 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_7_Left_46 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_7_Right_7 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_8_Left_47 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_8_Right_8 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_9_Left_48 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_9_Right_9 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_0_78 (.VGND(VGND),
    .VPWR(VPWR));
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_0_79 (.VGND(VGND),
    .VPWR(VPWR));
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_0_80 (.VGND(VGND),
    .VPWR(VPWR));
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_0_81 (.VGND(VGND),
    .VPWR(VPWR));
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_0_82 (.VGND(VGND),
    .VPWR(VPWR));
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_0_83 (.VGND(VGND),
    .VPWR(VPWR));
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_0_84 (.VGND(VGND),
    .VPWR(VPWR));
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_0_85 (.VGND(VGND),
    .VPWR(VPWR));
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_0_86 (.VGND(VGND),
    .VPWR(VPWR));
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_0_87 (.VGND(VGND),
    .VPWR(VPWR));
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_0_88 (.VGND(VGND),
    .VPWR(VPWR));
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_10_138 (.VGND(VGND),
    .VPWR(VPWR));
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_10_139 (.VGND(VGND),
    .VPWR(VPWR));
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_10_140 (.VGND(VGND),
    .VPWR(VPWR));
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_10_141 (.VGND(VGND),
    .VPWR(VPWR));
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_10_142 (.VGND(VGND),
    .VPWR(VPWR));
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_10_143 (.VGND(VGND),
    .VPWR(VPWR));
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_11_144 (.VGND(VGND),
    .VPWR(VPWR));
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_11_145 (.VGND(VGND),
    .VPWR(VPWR));
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_11_146 (.VGND(VGND),
    .VPWR(VPWR));
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_11_147 (.VGND(VGND),
    .VPWR(VPWR));
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_11_148 (.VGND(VGND),
    .VPWR(VPWR));
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_12_149 (.VGND(VGND),
    .VPWR(VPWR));
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_12_150 (.VGND(VGND),
    .VPWR(VPWR));
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_12_151 (.VGND(VGND),
    .VPWR(VPWR));
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_12_152 (.VGND(VGND),
    .VPWR(VPWR));
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_12_153 (.VGND(VGND),
    .VPWR(VPWR));
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_12_154 (.VGND(VGND),
    .VPWR(VPWR));
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_13_155 (.VGND(VGND),
    .VPWR(VPWR));
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_13_156 (.VGND(VGND),
    .VPWR(VPWR));
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_13_157 (.VGND(VGND),
    .VPWR(VPWR));
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_13_158 (.VGND(VGND),
    .VPWR(VPWR));
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_13_159 (.VGND(VGND),
    .VPWR(VPWR));
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_14_160 (.VGND(VGND),
    .VPWR(VPWR));
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_14_161 (.VGND(VGND),
    .VPWR(VPWR));
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_14_162 (.VGND(VGND),
    .VPWR(VPWR));
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_14_163 (.VGND(VGND),
    .VPWR(VPWR));
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_14_164 (.VGND(VGND),
    .VPWR(VPWR));
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_14_165 (.VGND(VGND),
    .VPWR(VPWR));
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_15_166 (.VGND(VGND),
    .VPWR(VPWR));
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_15_167 (.VGND(VGND),
    .VPWR(VPWR));
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_15_168 (.VGND(VGND),
    .VPWR(VPWR));
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_15_169 (.VGND(VGND),
    .VPWR(VPWR));
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_15_170 (.VGND(VGND),
    .VPWR(VPWR));
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_16_171 (.VGND(VGND),
    .VPWR(VPWR));
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_16_172 (.VGND(VGND),
    .VPWR(VPWR));
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_16_173 (.VGND(VGND),
    .VPWR(VPWR));
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_16_174 (.VGND(VGND),
    .VPWR(VPWR));
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_16_175 (.VGND(VGND),
    .VPWR(VPWR));
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_16_176 (.VGND(VGND),
    .VPWR(VPWR));
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_17_177 (.VGND(VGND),
    .VPWR(VPWR));
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_17_178 (.VGND(VGND),
    .VPWR(VPWR));
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_17_179 (.VGND(VGND),
    .VPWR(VPWR));
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_17_180 (.VGND(VGND),
    .VPWR(VPWR));
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_17_181 (.VGND(VGND),
    .VPWR(VPWR));
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_18_182 (.VGND(VGND),
    .VPWR(VPWR));
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_18_183 (.VGND(VGND),
    .VPWR(VPWR));
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_18_184 (.VGND(VGND),
    .VPWR(VPWR));
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_18_185 (.VGND(VGND),
    .VPWR(VPWR));
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_18_186 (.VGND(VGND),
    .VPWR(VPWR));
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_18_187 (.VGND(VGND),
    .VPWR(VPWR));
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_19_188 (.VGND(VGND),
    .VPWR(VPWR));
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_19_189 (.VGND(VGND),
    .VPWR(VPWR));
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_19_190 (.VGND(VGND),
    .VPWR(VPWR));
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_19_191 (.VGND(VGND),
    .VPWR(VPWR));
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_19_192 (.VGND(VGND),
    .VPWR(VPWR));
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_1_89 (.VGND(VGND),
    .VPWR(VPWR));
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_1_90 (.VGND(VGND),
    .VPWR(VPWR));
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_1_91 (.VGND(VGND),
    .VPWR(VPWR));
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_1_92 (.VGND(VGND),
    .VPWR(VPWR));
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_1_93 (.VGND(VGND),
    .VPWR(VPWR));
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_20_193 (.VGND(VGND),
    .VPWR(VPWR));
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_20_194 (.VGND(VGND),
    .VPWR(VPWR));
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_20_195 (.VGND(VGND),
    .VPWR(VPWR));
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_20_196 (.VGND(VGND),
    .VPWR(VPWR));
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_20_197 (.VGND(VGND),
    .VPWR(VPWR));
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_20_198 (.VGND(VGND),
    .VPWR(VPWR));
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_21_199 (.VGND(VGND),
    .VPWR(VPWR));
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_21_200 (.VGND(VGND),
    .VPWR(VPWR));
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_21_201 (.VGND(VGND),
    .VPWR(VPWR));
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_21_202 (.VGND(VGND),
    .VPWR(VPWR));
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_21_203 (.VGND(VGND),
    .VPWR(VPWR));
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_22_204 (.VGND(VGND),
    .VPWR(VPWR));
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_22_205 (.VGND(VGND),
    .VPWR(VPWR));
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_22_206 (.VGND(VGND),
    .VPWR(VPWR));
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_22_207 (.VGND(VGND),
    .VPWR(VPWR));
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_22_208 (.VGND(VGND),
    .VPWR(VPWR));
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_22_209 (.VGND(VGND),
    .VPWR(VPWR));
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_23_210 (.VGND(VGND),
    .VPWR(VPWR));
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_23_211 (.VGND(VGND),
    .VPWR(VPWR));
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_23_212 (.VGND(VGND),
    .VPWR(VPWR));
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_23_213 (.VGND(VGND),
    .VPWR(VPWR));
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_23_214 (.VGND(VGND),
    .VPWR(VPWR));
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_24_215 (.VGND(VGND),
    .VPWR(VPWR));
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_24_216 (.VGND(VGND),
    .VPWR(VPWR));
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_24_217 (.VGND(VGND),
    .VPWR(VPWR));
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_24_218 (.VGND(VGND),
    .VPWR(VPWR));
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_24_219 (.VGND(VGND),
    .VPWR(VPWR));
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_24_220 (.VGND(VGND),
    .VPWR(VPWR));
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_25_221 (.VGND(VGND),
    .VPWR(VPWR));
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_25_222 (.VGND(VGND),
    .VPWR(VPWR));
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_25_223 (.VGND(VGND),
    .VPWR(VPWR));
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_25_224 (.VGND(VGND),
    .VPWR(VPWR));
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_25_225 (.VGND(VGND),
    .VPWR(VPWR));
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_26_226 (.VGND(VGND),
    .VPWR(VPWR));
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_26_227 (.VGND(VGND),
    .VPWR(VPWR));
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_26_228 (.VGND(VGND),
    .VPWR(VPWR));
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_26_229 (.VGND(VGND),
    .VPWR(VPWR));
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_26_230 (.VGND(VGND),
    .VPWR(VPWR));
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_26_231 (.VGND(VGND),
    .VPWR(VPWR));
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_27_232 (.VGND(VGND),
    .VPWR(VPWR));
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_27_233 (.VGND(VGND),
    .VPWR(VPWR));
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_27_234 (.VGND(VGND),
    .VPWR(VPWR));
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_27_235 (.VGND(VGND),
    .VPWR(VPWR));
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_27_236 (.VGND(VGND),
    .VPWR(VPWR));
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_28_237 (.VGND(VGND),
    .VPWR(VPWR));
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_28_238 (.VGND(VGND),
    .VPWR(VPWR));
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_28_239 (.VGND(VGND),
    .VPWR(VPWR));
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_28_240 (.VGND(VGND),
    .VPWR(VPWR));
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_28_241 (.VGND(VGND),
    .VPWR(VPWR));
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_28_242 (.VGND(VGND),
    .VPWR(VPWR));
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_29_243 (.VGND(VGND),
    .VPWR(VPWR));
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_29_244 (.VGND(VGND),
    .VPWR(VPWR));
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_29_245 (.VGND(VGND),
    .VPWR(VPWR));
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_29_246 (.VGND(VGND),
    .VPWR(VPWR));
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_29_247 (.VGND(VGND),
    .VPWR(VPWR));
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_2_94 (.VGND(VGND),
    .VPWR(VPWR));
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_2_95 (.VGND(VGND),
    .VPWR(VPWR));
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_2_96 (.VGND(VGND),
    .VPWR(VPWR));
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_2_97 (.VGND(VGND),
    .VPWR(VPWR));
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_2_98 (.VGND(VGND),
    .VPWR(VPWR));
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_2_99 (.VGND(VGND),
    .VPWR(VPWR));
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_30_248 (.VGND(VGND),
    .VPWR(VPWR));
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_30_249 (.VGND(VGND),
    .VPWR(VPWR));
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_30_250 (.VGND(VGND),
    .VPWR(VPWR));
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_30_251 (.VGND(VGND),
    .VPWR(VPWR));
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_30_252 (.VGND(VGND),
    .VPWR(VPWR));
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_30_253 (.VGND(VGND),
    .VPWR(VPWR));
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_31_254 (.VGND(VGND),
    .VPWR(VPWR));
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_31_255 (.VGND(VGND),
    .VPWR(VPWR));
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_31_256 (.VGND(VGND),
    .VPWR(VPWR));
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_31_257 (.VGND(VGND),
    .VPWR(VPWR));
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_31_258 (.VGND(VGND),
    .VPWR(VPWR));
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_32_259 (.VGND(VGND),
    .VPWR(VPWR));
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_32_260 (.VGND(VGND),
    .VPWR(VPWR));
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_32_261 (.VGND(VGND),
    .VPWR(VPWR));
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_32_262 (.VGND(VGND),
    .VPWR(VPWR));
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_32_263 (.VGND(VGND),
    .VPWR(VPWR));
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_32_264 (.VGND(VGND),
    .VPWR(VPWR));
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_33_265 (.VGND(VGND),
    .VPWR(VPWR));
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_33_266 (.VGND(VGND),
    .VPWR(VPWR));
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_33_267 (.VGND(VGND),
    .VPWR(VPWR));
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_33_268 (.VGND(VGND),
    .VPWR(VPWR));
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_33_269 (.VGND(VGND),
    .VPWR(VPWR));
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_34_270 (.VGND(VGND),
    .VPWR(VPWR));
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_34_271 (.VGND(VGND),
    .VPWR(VPWR));
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_34_272 (.VGND(VGND),
    .VPWR(VPWR));
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_34_273 (.VGND(VGND),
    .VPWR(VPWR));
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_34_274 (.VGND(VGND),
    .VPWR(VPWR));
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_34_275 (.VGND(VGND),
    .VPWR(VPWR));
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_35_276 (.VGND(VGND),
    .VPWR(VPWR));
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_35_277 (.VGND(VGND),
    .VPWR(VPWR));
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_35_278 (.VGND(VGND),
    .VPWR(VPWR));
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_35_279 (.VGND(VGND),
    .VPWR(VPWR));
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_35_280 (.VGND(VGND),
    .VPWR(VPWR));
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_36_281 (.VGND(VGND),
    .VPWR(VPWR));
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_36_282 (.VGND(VGND),
    .VPWR(VPWR));
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_36_283 (.VGND(VGND),
    .VPWR(VPWR));
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_36_284 (.VGND(VGND),
    .VPWR(VPWR));
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_36_285 (.VGND(VGND),
    .VPWR(VPWR));
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_36_286 (.VGND(VGND),
    .VPWR(VPWR));
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_37_287 (.VGND(VGND),
    .VPWR(VPWR));
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_37_288 (.VGND(VGND),
    .VPWR(VPWR));
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_37_289 (.VGND(VGND),
    .VPWR(VPWR));
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_37_290 (.VGND(VGND),
    .VPWR(VPWR));
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_37_291 (.VGND(VGND),
    .VPWR(VPWR));
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_38_292 (.VGND(VGND),
    .VPWR(VPWR));
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_38_293 (.VGND(VGND),
    .VPWR(VPWR));
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_38_294 (.VGND(VGND),
    .VPWR(VPWR));
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_38_295 (.VGND(VGND),
    .VPWR(VPWR));
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_38_296 (.VGND(VGND),
    .VPWR(VPWR));
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_38_297 (.VGND(VGND),
    .VPWR(VPWR));
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_38_298 (.VGND(VGND),
    .VPWR(VPWR));
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_38_299 (.VGND(VGND),
    .VPWR(VPWR));
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_38_300 (.VGND(VGND),
    .VPWR(VPWR));
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_38_301 (.VGND(VGND),
    .VPWR(VPWR));
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_38_302 (.VGND(VGND),
    .VPWR(VPWR));
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_3_100 (.VGND(VGND),
    .VPWR(VPWR));
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_3_101 (.VGND(VGND),
    .VPWR(VPWR));
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_3_102 (.VGND(VGND),
    .VPWR(VPWR));
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_3_103 (.VGND(VGND),
    .VPWR(VPWR));
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_3_104 (.VGND(VGND),
    .VPWR(VPWR));
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_4_105 (.VGND(VGND),
    .VPWR(VPWR));
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_4_106 (.VGND(VGND),
    .VPWR(VPWR));
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_4_107 (.VGND(VGND),
    .VPWR(VPWR));
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_4_108 (.VGND(VGND),
    .VPWR(VPWR));
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_4_109 (.VGND(VGND),
    .VPWR(VPWR));
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_4_110 (.VGND(VGND),
    .VPWR(VPWR));
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_5_111 (.VGND(VGND),
    .VPWR(VPWR));
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_5_112 (.VGND(VGND),
    .VPWR(VPWR));
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_5_113 (.VGND(VGND),
    .VPWR(VPWR));
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_5_114 (.VGND(VGND),
    .VPWR(VPWR));
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_5_115 (.VGND(VGND),
    .VPWR(VPWR));
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_6_116 (.VGND(VGND),
    .VPWR(VPWR));
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_6_117 (.VGND(VGND),
    .VPWR(VPWR));
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_6_118 (.VGND(VGND),
    .VPWR(VPWR));
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_6_119 (.VGND(VGND),
    .VPWR(VPWR));
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_6_120 (.VGND(VGND),
    .VPWR(VPWR));
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_6_121 (.VGND(VGND),
    .VPWR(VPWR));
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_7_122 (.VGND(VGND),
    .VPWR(VPWR));
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_7_123 (.VGND(VGND),
    .VPWR(VPWR));
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_7_124 (.VGND(VGND),
    .VPWR(VPWR));
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_7_125 (.VGND(VGND),
    .VPWR(VPWR));
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_7_126 (.VGND(VGND),
    .VPWR(VPWR));
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_8_127 (.VGND(VGND),
    .VPWR(VPWR));
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_8_128 (.VGND(VGND),
    .VPWR(VPWR));
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_8_129 (.VGND(VGND),
    .VPWR(VPWR));
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_8_130 (.VGND(VGND),
    .VPWR(VPWR));
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_8_131 (.VGND(VGND),
    .VPWR(VPWR));
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_8_132 (.VGND(VGND),
    .VPWR(VPWR));
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_9_133 (.VGND(VGND),
    .VPWR(VPWR));
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_9_134 (.VGND(VGND),
    .VPWR(VPWR));
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_9_135 (.VGND(VGND),
    .VPWR(VPWR));
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_9_136 (.VGND(VGND),
    .VPWR(VPWR));
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_9_137 (.VGND(VGND),
    .VPWR(VPWR));
 sky130_fd_sc_hd__mux2_1 _1097_ (.A0(\nano.core.data_out[13] ),
    .A1(\nano.core.data_out[15] ),
    .S(_0507_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0522_));
 sky130_fd_sc_hd__mux2_1 _1098_ (.A0(\nano.core.data_out[14] ),
    .A1(_0522_),
    .S(_0506_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0166_));
 sky130_fd_sc_hd__mux2_1 _1099_ (.A0(\nano.core.data_out[14] ),
    .A1(\nano.core.data_out[16] ),
    .S(_0507_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0523_));
 sky130_fd_sc_hd__mux2_1 _1100_ (.A0(\nano.core.data_out[15] ),
    .A1(_0523_),
    .S(_0506_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0167_));
 sky130_fd_sc_hd__mux2_1 _1101_ (.A0(\nano.core.data_out[15] ),
    .A1(\nano.core.data_out[17] ),
    .S(_0507_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0524_));
 sky130_fd_sc_hd__mux2_1 _1102_ (.A0(\nano.core.data_out[16] ),
    .A1(_0524_),
    .S(_0506_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0168_));
 sky130_fd_sc_hd__mux2_1 _1103_ (.A0(\nano.core.data_out[16] ),
    .A1(\nano.core.data_out[18] ),
    .S(_0507_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0525_));
 sky130_fd_sc_hd__mux2_1 _1104_ (.A0(\nano.core.data_out[17] ),
    .A1(_0525_),
    .S(_0506_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0169_));
 sky130_fd_sc_hd__mux2_1 _1105_ (.A0(\nano.core.data_out[17] ),
    .A1(\nano.core.data_out[19] ),
    .S(_0507_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0526_));
 sky130_fd_sc_hd__mux2_1 _1106_ (.A0(\nano.core.data_out[18] ),
    .A1(_0526_),
    .S(_0506_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0170_));
 sky130_fd_sc_hd__mux2_1 _1107_ (.A0(\nano.core.data_out[18] ),
    .A1(\nano.core.data_out[20] ),
    .S(_0507_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0527_));
 sky130_fd_sc_hd__mux2_1 _1108_ (.A0(\nano.core.data_out[19] ),
    .A1(_0527_),
    .S(_0506_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0171_));
 sky130_fd_sc_hd__mux2_1 _1109_ (.A0(\nano.core.data_out[19] ),
    .A1(\nano.core.data_out[21] ),
    .S(_0507_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0528_));
 sky130_fd_sc_hd__mux2_1 _1110_ (.A0(\nano.core.data_out[20] ),
    .A1(_0528_),
    .S(_0506_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0172_));
 sky130_fd_sc_hd__mux2_1 _1111_ (.A0(\nano.core.data_out[20] ),
    .A1(\nano.core.data_out[22] ),
    .S(_0507_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0529_));
 sky130_fd_sc_hd__mux2_1 _1112_ (.A0(\nano.core.data_out[21] ),
    .A1(_0529_),
    .S(_0506_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0173_));
 sky130_fd_sc_hd__mux2_1 _1113_ (.A0(\nano.core.data_out[21] ),
    .A1(\nano.core.data_out[23] ),
    .S(_0507_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0530_));
 sky130_fd_sc_hd__mux2_1 _1114_ (.A0(\nano.core.data_out[22] ),
    .A1(_0530_),
    .S(_0506_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0174_));
 sky130_fd_sc_hd__mux2_1 _1115_ (.A0(\nano.core.data_out[22] ),
    .A1(\nano.core.data_out[24] ),
    .S(_0507_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0531_));
 sky130_fd_sc_hd__mux2_1 _1116_ (.A0(\nano.core.data_out[23] ),
    .A1(_0531_),
    .S(_0506_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0175_));
 sky130_fd_sc_hd__mux2_1 _1117_ (.A0(\nano.core.data_out[23] ),
    .A1(\nano.core.data_out[25] ),
    .S(_0507_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0532_));
 sky130_fd_sc_hd__mux2_1 _1118_ (.A0(\nano.core.data_out[24] ),
    .A1(_0532_),
    .S(_0506_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0176_));
 sky130_fd_sc_hd__mux2_1 _1119_ (.A0(\nano.core.data_out[24] ),
    .A1(\nano.core.data_out[26] ),
    .S(_0507_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0533_));
 sky130_fd_sc_hd__mux2_1 _1120_ (.A0(\nano.core.data_out[25] ),
    .A1(_0533_),
    .S(_0506_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0177_));
 sky130_fd_sc_hd__mux2_1 _1121_ (.A0(\nano.core.data_out[25] ),
    .A1(\nano.core.data_out[27] ),
    .S(_0507_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0534_));
 sky130_fd_sc_hd__mux2_1 _1122_ (.A0(\nano.core.data_out[26] ),
    .A1(_0534_),
    .S(_0506_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0178_));
 sky130_fd_sc_hd__mux2_1 _1123_ (.A0(\nano.core.data_out[26] ),
    .A1(\nano.core.data_out[28] ),
    .S(_0507_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0535_));
 sky130_fd_sc_hd__mux2_1 _1124_ (.A0(\nano.core.data_out[27] ),
    .A1(_0535_),
    .S(_0506_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0179_));
 sky130_fd_sc_hd__mux2_1 _1125_ (.A0(\nano.core.data_out[27] ),
    .A1(\nano.core.data_out[29] ),
    .S(_0507_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0536_));
 sky130_fd_sc_hd__mux2_1 _1126_ (.A0(\nano.core.data_out[28] ),
    .A1(_0536_),
    .S(_0506_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0180_));
 sky130_fd_sc_hd__mux2_1 _1127_ (.A0(\nano.core.data_out[28] ),
    .A1(\nano.core.data_out[30] ),
    .S(_0507_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0537_));
 sky130_fd_sc_hd__mux2_1 _1128_ (.A0(\nano.core.data_out[29] ),
    .A1(_0537_),
    .S(_0506_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0181_));
 sky130_fd_sc_hd__mux2_1 _1129_ (.A0(\nano.core.data_out[29] ),
    .A1(\nano.core.data_out[31] ),
    .S(_0507_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0538_));
 sky130_fd_sc_hd__mux2_1 _1130_ (.A0(\nano.core.data_out[30] ),
    .A1(_0538_),
    .S(_0506_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0182_));
 sky130_fd_sc_hd__a21oi_2 _1131_ (.A1(_0601_),
    .A2(_0618_),
    .B1(_0900_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Y(_0539_));
 sky130_fd_sc_hd__and4bb_2 _1132_ (.A_N(\nano.core.cycle[2] ),
    .B_N(\nano.core.cycle[1] ),
    .C(\nano.core.cycle[0] ),
    .D(_0503_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0540_));
 sky130_fd_sc_hd__mux2_1 _1133_ (.A0(_0575_),
    .A1(_1086_),
    .S(_0540_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0541_));
 sky130_fd_sc_hd__o21a_2 _1134_ (.A1(_0572_),
    .A2(_1088_),
    .B1(_0539_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0542_));
 sky130_fd_sc_hd__o21ai_2 _1135_ (.A1(_1089_),
    .A2(_0541_),
    .B1(_0542_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Y(_0543_));
 sky130_fd_sc_hd__o21ai_2 _1136_ (.A1(_0197_),
    .A2(_0539_),
    .B1(_0543_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Y(_0544_));
 sky130_fd_sc_hd__a22oi_2 _1137_ (.A1(_0577_),
    .A2(_0505_),
    .B1(_0507_),
    .B2(_0544_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Y(_0545_));
 sky130_fd_sc_hd__mux2_1 _1138_ (.A0(\nano.core.data_out[31] ),
    .A1(_0545_),
    .S(_0506_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0183_));
 sky130_fd_sc_hd__o21a_2 _1139_ (.A1(\nano.core.counter[1] ),
    .A2(\nano.core.counter[0] ),
    .B1(\nano.core.counter[2] ),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0546_));
 sky130_fd_sc_hd__or2_2 _1140_ (.A(\nano.core.counter[4] ),
    .B(\nano.core.counter[3] ),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0547_));
 sky130_fd_sc_hd__or4_2 _1141_ (.A(_0564_),
    .B(_0602_),
    .C(_0546_),
    .D(_0547_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0548_));
 sky130_fd_sc_hd__mux2_1 _1142_ (.A0(\nano.core.shift_amt_reg[1] ),
    .A1(\nano.core.shift_amt_reg[0] ),
    .S(_0548_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0184_));
 sky130_fd_sc_hd__mux2_1 _1143_ (.A0(\nano.core.shift_amt_reg[2] ),
    .A1(\nano.core.shift_amt_reg[1] ),
    .S(_0548_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0185_));
 sky130_fd_sc_hd__mux2_1 _1144_ (.A0(\nano.core.shift_amt_reg[3] ),
    .A1(\nano.core.shift_amt_reg[2] ),
    .S(_0548_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0186_));
 sky130_fd_sc_hd__mux2_1 _1145_ (.A0(\nano.core.shift_amt_reg[4] ),
    .A1(\nano.core.shift_amt_reg[3] ),
    .S(_0548_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0187_));
 sky130_fd_sc_hd__nand2_2 _1146_ (.A(_0572_),
    .B(_0909_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Y(_0549_));
 sky130_fd_sc_hd__a21oi_2 _1147_ (.A1(\nano.core.data_rs2 ),
    .A2(_0910_),
    .B1(_0548_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Y(_0550_));
 sky130_fd_sc_hd__a22o_2 _1148_ (.A1(\nano.core.shift_amt_reg[4] ),
    .A2(_0548_),
    .B1(_0549_),
    .B2(_0550_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0188_));
 sky130_fd_sc_hd__nor2_2 _1149_ (.A(\nano.core.execute_enable ),
    .B(\nano.core.cy ),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Y(_0551_));
 sky130_fd_sc_hd__a21oi_2 _1150_ (.A1(\nano.core.execute_enable ),
    .A2(_1000_),
    .B1(_0551_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Y(_0189_));
 sky130_fd_sc_hd__a2111o_2 _1151_ (.A1(\nano.core.is_equal_reg ),
    .A2(_0564_),
    .B1(_0574_),
    .C1(_0610_),
    .D1(_0238_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0190_));
 sky130_fd_sc_hd__nand2_2 _1152_ (.A(_0563_),
    .B(\nano.spi_engine.spi_select ),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Y(_0552_));
 sky130_fd_sc_hd__o211a_2 _1153_ (.A1(_0563_),
    .A2(_0661_),
    .B1(_0552_),
    .C1(rst_n),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0191_));
 sky130_fd_sc_hd__a32o_2 _1154_ (.A1(_0579_),
    .A2(_0594_),
    .A3(_0663_),
    .B1(_0661_),
    .B2(\nano.spi_engine.bit_count[1] ),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0553_));
 sky130_fd_sc_hd__and2_2 _1155_ (.A(rst_n),
    .B(_0553_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0192_));
 sky130_fd_sc_hd__o211a_2 _1156_ (.A1(_0579_),
    .A2(_0656_),
    .B1(\nano.spi_engine.bit_count[1] ),
    .C1(\nano.spi_engine.bit_count[0] ),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0554_));
 sky130_fd_sc_hd__a21oi_2 _1157_ (.A1(_0579_),
    .A2(_0595_),
    .B1(_0574_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Y(_0555_));
 sky130_fd_sc_hd__o221a_2 _1158_ (.A1(_0579_),
    .A2(_0655_),
    .B1(_0554_),
    .B2(\nano.spi_engine.bit_count[2] ),
    .C1(_0555_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0193_));
 sky130_fd_sc_hd__o21a_2 _1159_ (.A1(\nano.spi_engine.state[2] ),
    .A2(_0597_),
    .B1(_0579_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0556_));
 sky130_fd_sc_hd__or2_2 _1160_ (.A(\nano.spi_engine.bit_count[3] ),
    .B(_0595_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0557_));
 sky130_fd_sc_hd__a32o_2 _1161_ (.A1(_0657_),
    .A2(_0556_),
    .A3(_0557_),
    .B1(_0661_),
    .B2(\nano.spi_engine.bit_count[3] ),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0558_));
 sky130_fd_sc_hd__and2_2 _1162_ (.A(rst_n),
    .B(_0558_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0194_));
 sky130_fd_sc_hd__a22oi_2 _1163_ (.A1(\nano.spi_engine.bit_count[4] ),
    .A2(_0661_),
    .B1(_0556_),
    .B2(_0658_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Y(_0559_));
 sky130_fd_sc_hd__a211oi_2 _1164_ (.A1(_0560_),
    .A2(_0657_),
    .B1(_0559_),
    .C1(_0574_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Y(_0195_));
 sky130_fd_sc_hd__inv_2 _1165_ (.A(\nano.spi_engine.bit_count[4] ),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Y(_0560_));
 sky130_fd_sc_hd__inv_2 _1166_ (.A(\nano.spi_engine.bit_count[3] ),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Y(_0561_));
 sky130_fd_sc_hd__inv_2 _1167_ (.A(\nano.spi_engine.bit_count[2] ),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Y(_0562_));
 sky130_fd_sc_hd__inv_2 _1168_ (.A(\nano.spi_engine.bit_count[0] ),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Y(_0563_));
 sky130_fd_sc_hd__inv_2 _1169_ (.A(\nano.core.execute_enable ),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Y(_0564_));
 sky130_fd_sc_hd__inv_2 _1170_ (.A(\nano.core.cycle[0] ),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Y(_0565_));
 sky130_fd_sc_hd__inv_2 _1171_ (.A(\nano.core.counter[4] ),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Y(_0566_));
 sky130_fd_sc_hd__inv_2 _1172_ (.A(\nano.core.ext_next_rs2[1] ),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Y(_0567_));
 sky130_fd_sc_hd__inv_2 _1173_ (.A(\nano.core.ext_next_rs2[0] ),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Y(_0568_));
 sky130_fd_sc_hd__inv_2 _1174_ (.A(\nano.core.instr[14] ),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Y(_0569_));
 sky130_fd_sc_hd__inv_2 _1175_ (.A(\nano.core.instr[12] ),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Y(_0570_));
 sky130_fd_sc_hd__inv_2 _1176_ (.A(\nano.core.instr[5] ),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Y(_0571_));
 sky130_fd_sc_hd__inv_2 _1177_ (.A(\nano.core.data_rs2 ),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Y(_0572_));
 sky130_fd_sc_hd__inv_2 _1178_ (.A(\nano.spi_engine.state[1] ),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Y(_0573_));
 sky130_fd_sc_hd__inv_2 _1179_ (.A(rst_n),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Y(_0574_));
 sky130_fd_sc_hd__inv_2 _1180_ (.A(\nano.core.data_rs1 ),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Y(_0575_));
 sky130_fd_sc_hd__inv_2 _1181_ (.A(\nano.core.data_out[28] ),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Y(_0576_));
 sky130_fd_sc_hd__inv_2 _1182_ (.A(\nano.core.data_out[30] ),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Y(_0577_));
 sky130_fd_sc_hd__inv_2 _1183_ (.A(\nano.staging.normalize_sources ),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Y(_0578_));
 sky130_fd_sc_hd__inv_2 _1184_ (.A(\nano.spi_engine.spi_select ),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Y(_0579_));
 sky130_fd_sc_hd__inv_2 _1185_ (.A(\nano.spi_engine.state[2] ),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Y(_0580_));
 sky130_fd_sc_hd__inv_2 _1186_ (.A(\nano.pc[2] ),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Y(_0581_));
 sky130_fd_sc_hd__nor2_2 _1187_ (.A(\nano.core.instr[3] ),
    .B(\nano.core.instr[2] ),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Y(_0582_));
 sky130_fd_sc_hd__nor4_2 _1188_ (.A(\nano.core.instr[6] ),
    .B(\nano.core.instr[4] ),
    .C(\nano.core.instr[3] ),
    .D(\nano.core.instr[2] ),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Y(_0583_));
 sky130_fd_sc_hd__or4_2 _1189_ (.A(\nano.core.instr[6] ),
    .B(\nano.core.instr[4] ),
    .C(\nano.core.instr[3] ),
    .D(\nano.core.instr[2] ),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0584_));
 sky130_fd_sc_hd__nor2_2 _1190_ (.A(_0571_),
    .B(_0584_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Y(_0585_));
 sky130_fd_sc_hd__nand2_2 _1191_ (.A(\nano.core.instr[5] ),
    .B(_0583_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Y(_0586_));
 sky130_fd_sc_hd__nor2_2 _1192_ (.A(\nano.state[5] ),
    .B(\nano.state[12] ),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Y(_0587_));
 sky130_fd_sc_hd__or2_2 _1193_ (.A(\nano.state[5] ),
    .B(\nano.state[12] ),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0588_));
 sky130_fd_sc_hd__nand2_2 _1194_ (.A(_0585_),
    .B(_0588_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Y(_0589_));
 sky130_fd_sc_hd__nor2_2 _1195_ (.A(\nano.core.instr[13] ),
    .B(_0589_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Y(_0590_));
 sky130_fd_sc_hd__or4_2 _1196_ (.A(_0561_),
    .B(\nano.core.instr[13] ),
    .C(\nano.core.instr[12] ),
    .D(_0589_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0591_));
 sky130_fd_sc_hd__a21oi_2 _1197_ (.A1(_0570_),
    .A2(_0590_),
    .B1(\nano.spi_engine.bit_count[3] ),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Y(_0592_));
 sky130_fd_sc_hd__and2_2 _1198_ (.A(\nano.spi_engine.bit_count[1] ),
    .B(\nano.spi_engine.bit_count[0] ),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0593_));
 sky130_fd_sc_hd__nand2_2 _1199_ (.A(\nano.spi_engine.bit_count[1] ),
    .B(\nano.spi_engine.bit_count[0] ),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Y(_0594_));
 sky130_fd_sc_hd__nor2_2 _1200_ (.A(_0562_),
    .B(_0594_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Y(_0595_));
 sky130_fd_sc_hd__xnor2_2 _1201_ (.A(\nano.spi_engine.bit_count[4] ),
    .B(_0590_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Y(_0596_));
 sky130_fd_sc_hd__or4bb_2 _1202_ (.A(_0596_),
    .B(_0592_),
    .C_N(_0591_),
    .D_N(_0595_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0597_));
 sky130_fd_sc_hd__nor2_2 _1203_ (.A(_0573_),
    .B(_0597_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Y(_0598_));
 sky130_fd_sc_hd__or2_2 _1204_ (.A(_0573_),
    .B(_0597_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0599_));
 sky130_fd_sc_hd__nor2_2 _1205_ (.A(_0574_),
    .B(_0599_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Y(_0600_));
 sky130_fd_sc_hd__and3_2 _1206_ (.A(rst_n),
    .B(\nano.state[7] ),
    .C(_0598_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0005_));
 sky130_fd_sc_hd__and3_2 _1207_ (.A(rst_n),
    .B(\nano.state[9] ),
    .C(_0598_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0004_));
 sky130_fd_sc_hd__nor3_2 _1208_ (.A(\nano.core.cycle[2] ),
    .B(\nano.core.cycle[1] ),
    .C(\nano.core.cycle[0] ),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Y(_0601_));
 sky130_fd_sc_hd__or3_2 _1209_ (.A(\nano.core.cycle[2] ),
    .B(\nano.core.cycle[1] ),
    .C(\nano.core.cycle[0] ),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0602_));
 sky130_fd_sc_hd__nor2_2 _1210_ (.A(_0584_),
    .B(_0602_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Y(_0603_));
 sky130_fd_sc_hd__inv_2 _1211_ (.A(_0603_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Y(_0604_));
 sky130_fd_sc_hd__and2_2 _1212_ (.A(\nano.core.counter[4] ),
    .B(\nano.core.counter[3] ),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0605_));
 sky130_fd_sc_hd__and2_2 _1213_ (.A(\nano.core.counter[1] ),
    .B(\nano.core.counter[0] ),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0606_));
 sky130_fd_sc_hd__and3_2 _1214_ (.A(\nano.core.execute_enable ),
    .B(\nano.core.counter[1] ),
    .C(\nano.core.counter[0] ),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0607_));
 sky130_fd_sc_hd__and2_2 _1215_ (.A(\nano.core.counter[2] ),
    .B(_0607_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0608_));
 sky130_fd_sc_hd__and3_2 _1216_ (.A(\nano.core.counter[2] ),
    .B(_0605_),
    .C(_0606_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0609_));
 sky130_fd_sc_hd__and3_2 _1217_ (.A(\nano.core.counter[2] ),
    .B(_0605_),
    .C(_0607_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0610_));
 sky130_fd_sc_hd__nand2_2 _1218_ (.A(\nano.core.execute_enable ),
    .B(_0609_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Y(_0611_));
 sky130_fd_sc_hd__nor2_2 _1219_ (.A(_0574_),
    .B(_0611_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Y(_0612_));
 sky130_fd_sc_hd__and3_2 _1220_ (.A(rst_n),
    .B(_0603_),
    .C(_0610_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0003_));
 sky130_fd_sc_hd__and2_2 _1221_ (.A(rst_n),
    .B(\nano.state[10] ),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0002_));
 sky130_fd_sc_hd__and3_2 _1222_ (.A(\nano.state[12] ),
    .B(_0586_),
    .C(_0600_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0001_));
 sky130_fd_sc_hd__and3_2 _1223_ (.A(rst_n),
    .B(\nano.state[11] ),
    .C(_0598_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0000_));
 sky130_fd_sc_hd__nand2_2 _1224_ (.A(\nano.core.cycle[1] ),
    .B(\nano.core.cycle[0] ),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Y(_0613_));
 sky130_fd_sc_hd__xor2_2 _1225_ (.A(\nano.core.cycle[2] ),
    .B(_0613_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0614_));
 sky130_fd_sc_hd__inv_2 _1226_ (.A(_0614_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Y(_0615_));
 sky130_fd_sc_hd__nor3_2 _1227_ (.A(\nano.core.ext_next_rs1[3] ),
    .B(\nano.core.ext_next_rs1[1] ),
    .C(\nano.core.ext_next_rs1[0] ),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Y(_0616_));
 sky130_fd_sc_hd__and3b_2 _1228_ (.A_N(\nano.core.instr[19] ),
    .B(\nano.core.ext_next_rs1[2] ),
    .C(_0616_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0617_));
 sky130_fd_sc_hd__nor2_2 _1229_ (.A(_0584_),
    .B(_0617_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Y(_0618_));
 sky130_fd_sc_hd__and3b_2 _1230_ (.A_N(\nano.core.instr[4] ),
    .B(\nano.core.instr[5] ),
    .C(\nano.core.instr[6] ),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0619_));
 sky130_fd_sc_hd__and2_2 _1231_ (.A(_0582_),
    .B(_0619_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0620_));
 sky130_fd_sc_hd__nand2_2 _1232_ (.A(_0582_),
    .B(_0619_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Y(_0621_));
 sky130_fd_sc_hd__o21a_2 _1233_ (.A1(_0618_),
    .A2(_0620_),
    .B1(_0614_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0622_));
 sky130_fd_sc_hd__and2b_2 _1234_ (.A_N(\nano.core.instr[6] ),
    .B(\nano.core.instr[4] ),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0623_));
 sky130_fd_sc_hd__or4_2 _1235_ (.A(\nano.core.cycle[0] ),
    .B(\nano.core.instr[13] ),
    .C(_0570_),
    .D(\nano.core.instr[2] ),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0624_));
 sky130_fd_sc_hd__inv_2 _1236_ (.A(_0624_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Y(_0625_));
 sky130_fd_sc_hd__nand2_2 _1237_ (.A(\nano.core.cycle[1] ),
    .B(_0565_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Y(_0626_));
 sky130_fd_sc_hd__a221o_2 _1238_ (.A1(\nano.core.instr[6] ),
    .A2(\nano.core.instr[5] ),
    .B1(_0623_),
    .B2(_0625_),
    .C1(\nano.core.cycle[1] ),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0627_));
 sky130_fd_sc_hd__o211a_2 _1239_ (.A1(_0614_),
    .A2(_0618_),
    .B1(_0626_),
    .C1(_0627_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0628_));
 sky130_fd_sc_hd__or2_2 _1240_ (.A(_0622_),
    .B(_0628_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0629_));
 sky130_fd_sc_hd__nand2_2 _1241_ (.A(_0604_),
    .B(_0629_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Y(_0630_));
 sky130_fd_sc_hd__nor2_2 _1242_ (.A(\nano.core.execute_enable ),
    .B(\nano.staging.normalize_sources ),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Y(_0631_));
 sky130_fd_sc_hd__a311oi_2 _1243_ (.A1(_0578_),
    .A2(_0609_),
    .A3(_0630_),
    .B1(_0631_),
    .C1(_0574_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Y(_0012_));
 sky130_fd_sc_hd__nand2_2 _1244_ (.A(_0583_),
    .B(_0617_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Y(_0632_));
 sky130_fd_sc_hd__o41a_2 _1245_ (.A1(_0576_),
    .A2(\nano.core.data_out[29] ),
    .A3(\nano.core.data_out[30] ),
    .A4(\nano.core.data_out[31] ),
    .B1(_0632_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0633_));
 sky130_fd_sc_hd__and2_2 _1246_ (.A(\nano.state[5] ),
    .B(_0633_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0634_));
 sky130_fd_sc_hd__a21o_2 _1247_ (.A1(\nano.state[12] ),
    .A2(_0599_),
    .B1(_0634_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0635_));
 sky130_fd_sc_hd__and2_2 _1248_ (.A(rst_n),
    .B(_0635_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0011_));
 sky130_fd_sc_hd__or2_2 _1249_ (.A(\nano.state[11] ),
    .B(\nano.state[4] ),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0636_));
 sky130_fd_sc_hd__o211a_2 _1250_ (.A1(\nano.state[4] ),
    .A2(_0599_),
    .B1(_0636_),
    .C1(rst_n),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0010_));
 sky130_fd_sc_hd__or2_2 _1251_ (.A(\nano.state[9] ),
    .B(\nano.state[2] ),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0637_));
 sky130_fd_sc_hd__o211a_2 _1252_ (.A1(\nano.state[2] ),
    .A2(_0599_),
    .B1(_0637_),
    .C1(rst_n),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0016_));
 sky130_fd_sc_hd__or2_2 _1253_ (.A(\nano.state[8] ),
    .B(\nano.state[1] ),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0638_));
 sky130_fd_sc_hd__o211a_2 _1254_ (.A1(\nano.state[1] ),
    .A2(_0599_),
    .B1(_0638_),
    .C1(rst_n),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0015_));
 sky130_fd_sc_hd__nor2_2 _1255_ (.A(\nano.state[7] ),
    .B(\nano.state[0] ),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Y(_0639_));
 sky130_fd_sc_hd__or2_2 _1256_ (.A(\nano.state[7] ),
    .B(\nano.state[0] ),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0640_));
 sky130_fd_sc_hd__o211a_2 _1257_ (.A1(\nano.state[0] ),
    .A2(_0599_),
    .B1(_0640_),
    .C1(rst_n),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0014_));
 sky130_fd_sc_hd__nand2b_2 _1258_ (.A_N(\nano.core.b_imm[2] ),
    .B(\nano.core.b_imm[1] ),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Y(_0641_));
 sky130_fd_sc_hd__mux2_1 _1259_ (.A0(\nano.core.b_imm[1] ),
    .A1(_0641_),
    .S(\nano.core.b_imm[11] ),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0642_));
 sky130_fd_sc_hd__or3b_2 _1260_ (.A(_0571_),
    .B(_0623_),
    .C_N(_0582_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0643_));
 sky130_fd_sc_hd__nand2_2 _1261_ (.A(\nano.core.instr[3] ),
    .B(\nano.core.instr[2] ),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Y(_0644_));
 sky130_fd_sc_hd__o41a_2 _1262_ (.A1(\nano.core.instr[6] ),
    .A2(\nano.core.instr[5] ),
    .A3(\nano.core.instr[4] ),
    .A4(_0644_),
    .B1(_0643_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0645_));
 sky130_fd_sc_hd__o21a_2 _1263_ (.A1(\nano.core.b_imm[3] ),
    .A2(_0642_),
    .B1(_0645_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0646_));
 sky130_fd_sc_hd__nor2_2 _1264_ (.A(_0603_),
    .B(_0629_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Y(_0647_));
 sky130_fd_sc_hd__and2b_2 _1265_ (.A_N(_0633_),
    .B(\nano.state[5] ),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0648_));
 sky130_fd_sc_hd__a21o_2 _1266_ (.A1(_0586_),
    .A2(_0648_),
    .B1(\nano.staging.normalize_result ),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0649_));
 sky130_fd_sc_hd__a32o_2 _1267_ (.A1(_0612_),
    .A2(_0646_),
    .A3(_0647_),
    .B1(_0649_),
    .B2(rst_n),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0013_));
 sky130_fd_sc_hd__and3b_2 _1268_ (.A_N(_0646_),
    .B(_0647_),
    .C(_0612_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0650_));
 sky130_fd_sc_hd__and2_2 _1269_ (.A(_0585_),
    .B(_0648_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0651_));
 sky130_fd_sc_hd__nand2_2 _1270_ (.A(_0585_),
    .B(_0648_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Y(_0652_));
 sky130_fd_sc_hd__a2111o_2 _1271_ (.A1(\nano.state[8] ),
    .A2(_0598_),
    .B1(_0650_),
    .C1(_0651_),
    .D1(_0574_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0653_));
 sky130_fd_sc_hd__a31o_2 _1272_ (.A1(\nano.state[12] ),
    .A2(_0585_),
    .A3(_0600_),
    .B1(_0653_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0009_));
 sky130_fd_sc_hd__or4_2 _1273_ (.A(\nano.state[1] ),
    .B(\nano.state[0] ),
    .C(\nano.state[4] ),
    .D(\nano.state[2] ),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0654_));
 sky130_fd_sc_hd__nor2_2 _1274_ (.A(_0634_),
    .B(_0654_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Y(_0655_));
 sky130_fd_sc_hd__inv_2 _1275_ (.A(_0655_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Y(_0656_));
 sky130_fd_sc_hd__nand2_2 _1276_ (.A(\nano.spi_engine.bit_count[3] ),
    .B(_0595_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Y(_0657_));
 sky130_fd_sc_hd__or2_2 _1277_ (.A(_0560_),
    .B(_0657_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0658_));
 sky130_fd_sc_hd__o2bb2a_2 _1278_ (.A1_N(_0658_),
    .A2_N(\nano.spi_engine.state[2] ),
    .B1(_0579_),
    .B2(_0655_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0659_));
 sky130_fd_sc_hd__nor2_2 _1279_ (.A(_0574_),
    .B(_0659_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Y(_0008_));
 sky130_fd_sc_hd__o2bb2a_2 _1280_ (.A1_N(\nano.spi_engine.state[1] ),
    .A2_N(_0597_),
    .B1(_0658_),
    .B2(_0580_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0660_));
 sky130_fd_sc_hd__nor2_2 _1281_ (.A(_0574_),
    .B(_0660_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Y(_0007_));
 sky130_fd_sc_hd__nor2_2 _1282_ (.A(_0579_),
    .B(_0656_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Y(_0661_));
 sky130_fd_sc_hd__or3_2 _1283_ (.A(_0574_),
    .B(_0598_),
    .C(_0661_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0006_));
 sky130_fd_sc_hd__nor2_2 _1284_ (.A(\nano.spi_engine.bit_count[1] ),
    .B(\nano.spi_engine.bit_count[0] ),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Y(_0662_));
 sky130_fd_sc_hd__or2_2 _1285_ (.A(\nano.spi_engine.bit_count[1] ),
    .B(\nano.spi_engine.bit_count[0] ),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0663_));
 sky130_fd_sc_hd__nor2_2 _1286_ (.A(\nano.spi_engine.bit_count[1] ),
    .B(_0563_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Y(_0664_));
 sky130_fd_sc_hd__or2_2 _1287_ (.A(\nano.spi_engine.bit_count[1] ),
    .B(_0563_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0665_));
 sky130_fd_sc_hd__and2_2 _1288_ (.A(\nano.spi_engine.bit_count[1] ),
    .B(_0563_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0666_));
 sky130_fd_sc_hd__nand2_2 _1289_ (.A(\nano.spi_engine.bit_count[1] ),
    .B(_0563_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Y(_0667_));
 sky130_fd_sc_hd__a22o_2 _1290_ (.A1(\nano.rs1_value[11] ),
    .A2(_0662_),
    .B1(_0664_),
    .B2(\nano.rs1_value[10] ),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0668_));
 sky130_fd_sc_hd__a221o_2 _1291_ (.A1(\nano.rs1_value[8] ),
    .A2(_0593_),
    .B1(_0666_),
    .B2(\nano.rs1_value[9] ),
    .C1(_0562_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0669_));
 sky130_fd_sc_hd__or3_2 _1292_ (.A(\nano.core.instr[13] ),
    .B(\nano.core.instr[12] ),
    .C(_0584_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0670_));
 sky130_fd_sc_hd__a221o_2 _1293_ (.A1(\nano.rs1_value[12] ),
    .A2(_0593_),
    .B1(_0666_),
    .B2(\nano.rs1_value[13] ),
    .C1(\nano.spi_engine.bit_count[2] ),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0671_));
 sky130_fd_sc_hd__a21o_2 _1294_ (.A1(\nano.rs1_value[14] ),
    .A2(_0664_),
    .B1(_0671_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0672_));
 sky130_fd_sc_hd__a21oi_2 _1295_ (.A1(\nano.rs1_value[15] ),
    .A2(_0662_),
    .B1(_0672_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Y(_0673_));
 sky130_fd_sc_hd__o21ai_2 _1296_ (.A1(_0668_),
    .A2(_0669_),
    .B1(_0670_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Y(_0674_));
 sky130_fd_sc_hd__or3b_2 _1297_ (.A(_0670_),
    .B(\nano.core.instr[14] ),
    .C_N(\nano.load_value[7] ),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0675_));
 sky130_fd_sc_hd__o211ai_2 _1298_ (.A1(_0673_),
    .A2(_0674_),
    .B1(_0675_),
    .C1(\nano.spi_engine.bit_count[3] ),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Y(_0676_));
 sky130_fd_sc_hd__nor2_2 _1299_ (.A(\nano.spi_engine.bit_count[3] ),
    .B(\nano.spi_engine.bit_count[2] ),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Y(_0677_));
 sky130_fd_sc_hd__a21bo_2 _1300_ (.A1(\nano.load_value[6] ),
    .A2(_0664_),
    .B1_N(_0677_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0678_));
 sky130_fd_sc_hd__a22o_2 _1301_ (.A1(\nano.load_value[4] ),
    .A2(_0593_),
    .B1(_0662_),
    .B2(\nano.load_value[7] ),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0679_));
 sky130_fd_sc_hd__a211o_2 _1302_ (.A1(\nano.load_value[5] ),
    .A2(_0666_),
    .B1(_0678_),
    .C1(_0679_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0680_));
 sky130_fd_sc_hd__nor2_2 _1303_ (.A(\nano.spi_engine.bit_count[3] ),
    .B(_0562_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Y(_0681_));
 sky130_fd_sc_hd__inv_2 _1304_ (.A(_0681_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Y(_0682_));
 sky130_fd_sc_hd__a22o_2 _1305_ (.A1(\nano.load_value[3] ),
    .A2(_0662_),
    .B1(_0664_),
    .B2(\nano.load_value[2] ),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0683_));
 sky130_fd_sc_hd__a221o_2 _1306_ (.A1(\nano.core.data_rs1 ),
    .A2(_0593_),
    .B1(_0666_),
    .B2(\nano.load_value[1] ),
    .C1(_0683_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0684_));
 sky130_fd_sc_hd__or2_2 _1307_ (.A(_0682_),
    .B(_0684_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0685_));
 sky130_fd_sc_hd__and4b_2 _1308_ (.A_N(\nano.core.instr[4] ),
    .B(\nano.core.instr[2] ),
    .C(\nano.core.instr[6] ),
    .D(\nano.core.instr[5] ),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0686_));
 sky130_fd_sc_hd__nand2_2 _1309_ (.A(\nano.core.instr[2] ),
    .B(_0619_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Y(_0687_));
 sky130_fd_sc_hd__nand2_2 _1310_ (.A(_0589_),
    .B(_0687_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Y(_0688_));
 sky130_fd_sc_hd__a22o_2 _1311_ (.A1(\nano.rs1_value[24] ),
    .A2(_0593_),
    .B1(_0666_),
    .B2(\nano.rs1_value[25] ),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0689_));
 sky130_fd_sc_hd__a221o_2 _1312_ (.A1(\nano.rs1_value[27] ),
    .A2(_0662_),
    .B1(_0664_),
    .B2(\nano.rs1_value[26] ),
    .C1(_0562_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0690_));
 sky130_fd_sc_hd__and2_2 _1313_ (.A(\nano.rs1_value[30] ),
    .B(_0664_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0691_));
 sky130_fd_sc_hd__a221o_2 _1314_ (.A1(\nano.rs1_value[31] ),
    .A2(_0662_),
    .B1(_0666_),
    .B2(\nano.rs1_value[29] ),
    .C1(\nano.spi_engine.bit_count[2] ),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0692_));
 sky130_fd_sc_hd__a211o_2 _1315_ (.A1(\nano.rs1_value[28] ),
    .A2(_0593_),
    .B1(_0691_),
    .C1(_0692_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0693_));
 sky130_fd_sc_hd__o211a_2 _1316_ (.A1(_0689_),
    .A2(_0690_),
    .B1(_0693_),
    .C1(\nano.spi_engine.bit_count[3] ),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0694_));
 sky130_fd_sc_hd__a22o_2 _1317_ (.A1(\nano.rs1_value[20] ),
    .A2(_0593_),
    .B1(_0662_),
    .B2(\nano.rs1_value[23] ),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0695_));
 sky130_fd_sc_hd__a221o_2 _1318_ (.A1(\nano.rs1_value[22] ),
    .A2(_0664_),
    .B1(_0666_),
    .B2(\nano.rs1_value[21] ),
    .C1(_0695_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0696_));
 sky130_fd_sc_hd__a22o_2 _1319_ (.A1(\nano.rs1_value[16] ),
    .A2(_0593_),
    .B1(_0662_),
    .B2(\nano.rs1_value[19] ),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0697_));
 sky130_fd_sc_hd__a221o_2 _1320_ (.A1(\nano.rs1_value[18] ),
    .A2(_0664_),
    .B1(_0666_),
    .B2(\nano.rs1_value[17] ),
    .C1(_0697_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0698_));
 sky130_fd_sc_hd__mux2_1 _1321_ (.A0(\nano.load_value[7] ),
    .A1(\nano.rs1_value[15] ),
    .S(\nano.core.instr[12] ),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0699_));
 sky130_fd_sc_hd__or2_2 _1322_ (.A(\nano.rs2_raw_value[22] ),
    .B(_0665_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0700_));
 sky130_fd_sc_hd__o22a_2 _1323_ (.A1(\nano.rs2_raw_value[23] ),
    .A2(_0663_),
    .B1(_0667_),
    .B2(\nano.rs2_raw_value[21] ),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0701_));
 sky130_fd_sc_hd__o22a_2 _1324_ (.A1(\nano.rs2_raw_value[19] ),
    .A2(_0663_),
    .B1(_0665_),
    .B2(\nano.rs2_raw_value[18] ),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0702_));
 sky130_fd_sc_hd__o221a_2 _1325_ (.A1(\nano.rs2_raw_value[16] ),
    .A2(_0594_),
    .B1(_0667_),
    .B2(\nano.rs2_raw_value[17] ),
    .C1(_0702_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0703_));
 sky130_fd_sc_hd__o22a_2 _1326_ (.A1(\nano.rs2_raw_value[27] ),
    .A2(_0663_),
    .B1(_0665_),
    .B2(\nano.rs2_raw_value[26] ),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0704_));
 sky130_fd_sc_hd__o21a_2 _1327_ (.A1(\nano.rs2_raw_value[20] ),
    .A2(_0594_),
    .B1(_0562_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0705_));
 sky130_fd_sc_hd__a31o_2 _1328_ (.A1(_0700_),
    .A2(_0701_),
    .A3(_0705_),
    .B1(\nano.spi_engine.bit_count[3] ),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0706_));
 sky130_fd_sc_hd__o22a_2 _1329_ (.A1(\nano.rs2_raw_value[31] ),
    .A2(_0663_),
    .B1(_0667_),
    .B2(\nano.rs2_raw_value[29] ),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0707_));
 sky130_fd_sc_hd__o221a_2 _1330_ (.A1(\nano.rs2_raw_value[28] ),
    .A2(_0594_),
    .B1(_0665_),
    .B2(\nano.rs2_raw_value[30] ),
    .C1(_0707_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0708_));
 sky130_fd_sc_hd__or3_2 _1331_ (.A(_0561_),
    .B(\nano.spi_engine.bit_count[2] ),
    .C(_0708_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0709_));
 sky130_fd_sc_hd__o221a_2 _1332_ (.A1(\nano.rs2_raw_value[24] ),
    .A2(_0594_),
    .B1(_0667_),
    .B2(\nano.rs2_raw_value[25] ),
    .C1(_0704_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0710_));
 sky130_fd_sc_hd__o211a_2 _1333_ (.A1(_0562_),
    .A2(_0710_),
    .B1(_0709_),
    .C1(_0706_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0711_));
 sky130_fd_sc_hd__and3_2 _1334_ (.A(\nano.spi_engine.bit_count[1] ),
    .B(\nano.spi_engine.bit_count[0] ),
    .C(\nano.rs2_raw_value[8] ),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0712_));
 sky130_fd_sc_hd__a22o_2 _1335_ (.A1(\nano.core.data_rs2 ),
    .A2(_0593_),
    .B1(_0664_),
    .B2(\nano.rs2_raw_value[2] ),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0713_));
 sky130_fd_sc_hd__a221o_2 _1336_ (.A1(\nano.rs2_raw_value[3] ),
    .A2(_0662_),
    .B1(_0666_),
    .B2(\nano.rs2_raw_value[1] ),
    .C1(_0682_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0714_));
 sky130_fd_sc_hd__or2_2 _1337_ (.A(_0713_),
    .B(_0714_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0715_));
 sky130_fd_sc_hd__a21oi_2 _1338_ (.A1(_0585_),
    .A2(_0588_),
    .B1(_0638_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Y(_0716_));
 sky130_fd_sc_hd__a31o_2 _1339_ (.A1(_0676_),
    .A2(_0680_),
    .A3(_0685_),
    .B1(\nano.spi_engine.bit_count[4] ),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0717_));
 sky130_fd_sc_hd__and4bb_2 _1340_ (.A_N(\nano.core.instr[14] ),
    .B_N(\nano.core.instr[13] ),
    .C(_0583_),
    .D(_0699_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0718_));
 sky130_fd_sc_hd__a22o_2 _1341_ (.A1(_0677_),
    .A2(_0696_),
    .B1(_0698_),
    .B2(_0681_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0719_));
 sky130_fd_sc_hd__o22a_2 _1342_ (.A1(\nano.core.instr[13] ),
    .A2(_0584_),
    .B1(_0694_),
    .B2(_0719_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0720_));
 sky130_fd_sc_hd__o311a_2 _1343_ (.A1(_0560_),
    .A2(_0718_),
    .A3(_0720_),
    .B1(_0589_),
    .C1(_0687_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0721_));
 sky130_fd_sc_hd__a221o_2 _1344_ (.A1(\nano.rs2_raw_value[12] ),
    .A2(_0593_),
    .B1(_0664_),
    .B2(\nano.rs2_raw_value[14] ),
    .C1(_0561_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0722_));
 sky130_fd_sc_hd__a221o_2 _1345_ (.A1(\nano.rs2_raw_value[15] ),
    .A2(_0662_),
    .B1(_0666_),
    .B2(\nano.rs2_raw_value[13] ),
    .C1(_0722_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0723_));
 sky130_fd_sc_hd__a21o_2 _1346_ (.A1(\nano.rs2_raw_value[6] ),
    .A2(_0664_),
    .B1(\nano.spi_engine.bit_count[3] ),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0724_));
 sky130_fd_sc_hd__a22o_2 _1347_ (.A1(\nano.rs2_raw_value[7] ),
    .A2(_0662_),
    .B1(_0666_),
    .B2(\nano.rs2_raw_value[5] ),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0725_));
 sky130_fd_sc_hd__a211o_2 _1348_ (.A1(\nano.rs2_raw_value[4] ),
    .A2(_0593_),
    .B1(_0724_),
    .C1(_0725_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0726_));
 sky130_fd_sc_hd__a21o_2 _1349_ (.A1(_0723_),
    .A2(_0726_),
    .B1(\nano.spi_engine.bit_count[2] ),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0727_));
 sky130_fd_sc_hd__a21o_2 _1350_ (.A1(\nano.rs2_raw_value[11] ),
    .A2(_0662_),
    .B1(_0562_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0728_));
 sky130_fd_sc_hd__a221o_2 _1351_ (.A1(\nano.rs2_raw_value[10] ),
    .A2(_0664_),
    .B1(_0666_),
    .B2(\nano.rs2_raw_value[9] ),
    .C1(_0712_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0729_));
 sky130_fd_sc_hd__or3_2 _1352_ (.A(_0561_),
    .B(_0728_),
    .C(_0729_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0730_));
 sky130_fd_sc_hd__a31o_2 _1353_ (.A1(_0715_),
    .A2(_0727_),
    .A3(_0730_),
    .B1(\nano.spi_engine.bit_count[4] ),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0731_));
 sky130_fd_sc_hd__a211o_2 _1354_ (.A1(_0681_),
    .A2(_0703_),
    .B1(_0711_),
    .C1(_0560_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0732_));
 sky130_fd_sc_hd__a32o_2 _1355_ (.A1(_0688_),
    .A2(_0731_),
    .A3(_0732_),
    .B1(_0717_),
    .B2(_0721_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0733_));
 sky130_fd_sc_hd__nor2_2 _1356_ (.A(\nano.spi_engine.state[2] ),
    .B(_0716_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Y(_0734_));
 sky130_fd_sc_hd__nor2_2 _1357_ (.A(_0588_),
    .B(_0640_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Y(_0735_));
 sky130_fd_sc_hd__nand2_2 _1358_ (.A(_0587_),
    .B(_0639_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Y(_0736_));
 sky130_fd_sc_hd__mux2_1 _1359_ (.A0(\nano.core.b_imm[2] ),
    .A1(\nano.core.ext_next_rs2[2] ),
    .S(_0637_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0737_));
 sky130_fd_sc_hd__mux2_1 _1360_ (.A0(_0737_),
    .A1(\nano.core.ext_next_rs1[2] ),
    .S(_0636_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0738_));
 sky130_fd_sc_hd__nor2_2 _1361_ (.A(_0587_),
    .B(_0640_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Y(_0739_));
 sky130_fd_sc_hd__a22o_2 _1362_ (.A1(\nano.pc[4] ),
    .A2(_0640_),
    .B1(_0739_),
    .B2(\nano.core.data_out[4] ),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0740_));
 sky130_fd_sc_hd__a21oi_2 _1363_ (.A1(_0735_),
    .A2(_0738_),
    .B1(_0740_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Y(_0741_));
 sky130_fd_sc_hd__mux4_2 _1364_ (.A0(\nano.core.data_out[6] ),
    .A1(\nano.core.data_out[7] ),
    .A2(\nano.pc[6] ),
    .A3(\nano.pc[7] ),
    .S0(_0563_),
    .S1(_0640_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0742_));
 sky130_fd_sc_hd__nor2_2 _1365_ (.A(_0735_),
    .B(_0742_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Y(_0743_));
 sky130_fd_sc_hd__mux2_1 _1366_ (.A0(\nano.core.b_imm[3] ),
    .A1(\nano.core.ext_next_rs2[3] ),
    .S(_0637_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0744_));
 sky130_fd_sc_hd__mux2_1 _1367_ (.A0(_0744_),
    .A1(\nano.core.ext_next_rs1[3] ),
    .S(_0636_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0745_));
 sky130_fd_sc_hd__a22o_2 _1368_ (.A1(\nano.pc[5] ),
    .A2(_0640_),
    .B1(_0739_),
    .B2(\nano.core.data_out[5] ),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0746_));
 sky130_fd_sc_hd__a21oi_2 _1369_ (.A1(_0735_),
    .A2(_0745_),
    .B1(_0746_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Y(_0747_));
 sky130_fd_sc_hd__o221a_2 _1370_ (.A1(\nano.spi_engine.bit_count[1] ),
    .A2(_0743_),
    .B1(_0747_),
    .B2(_0667_),
    .C1(_0562_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0748_));
 sky130_fd_sc_hd__o21ai_2 _1371_ (.A1(_0594_),
    .A2(_0741_),
    .B1(_0748_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Y(_0749_));
 sky130_fd_sc_hd__mux2_1 _1372_ (.A0(\nano.core.b_imm[1] ),
    .A1(\nano.core.ext_next_rs2[1] ),
    .S(_0637_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0750_));
 sky130_fd_sc_hd__mux2_1 _1373_ (.A0(_0750_),
    .A1(\nano.core.ext_next_rs1[1] ),
    .S(_0636_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0751_));
 sky130_fd_sc_hd__a22o_2 _1374_ (.A1(\nano.pc[3] ),
    .A2(_0640_),
    .B1(_0739_),
    .B2(\nano.core.data_out[3] ),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0752_));
 sky130_fd_sc_hd__a21o_2 _1375_ (.A1(_0735_),
    .A2(_0751_),
    .B1(_0752_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0753_));
 sky130_fd_sc_hd__mux4_2 _1376_ (.A0(\nano.pc[1] ),
    .A1(\nano.core.pc ),
    .A2(\nano.core.data_out[1] ),
    .A3(\nano.core.data_out[0] ),
    .S0(\nano.spi_engine.bit_count[0] ),
    .S1(_0639_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0754_));
 sky130_fd_sc_hd__mux2_1 _1377_ (.A0(\nano.core.b_imm[11] ),
    .A1(\nano.core.ext_next_rs2[0] ),
    .S(_0637_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0755_));
 sky130_fd_sc_hd__mux2_1 _1378_ (.A0(_0755_),
    .A1(\nano.core.ext_next_rs1[0] ),
    .S(_0636_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0756_));
 sky130_fd_sc_hd__a22o_2 _1379_ (.A1(\nano.pc[2] ),
    .A2(_0640_),
    .B1(_0739_),
    .B2(\nano.core.data_out[2] ),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0757_));
 sky130_fd_sc_hd__a21o_2 _1380_ (.A1(_0735_),
    .A2(_0756_),
    .B1(_0757_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0758_));
 sky130_fd_sc_hd__a221o_2 _1381_ (.A1(_0662_),
    .A2(_0753_),
    .B1(_0758_),
    .B2(_0664_),
    .C1(_0562_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0759_));
 sky130_fd_sc_hd__a31o_2 _1382_ (.A1(\nano.spi_engine.bit_count[1] ),
    .A2(_0736_),
    .A3(_0754_),
    .B1(_0759_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0760_));
 sky130_fd_sc_hd__o22a_2 _1383_ (.A1(\nano.pc[15] ),
    .A2(_0663_),
    .B1(_0665_),
    .B2(\nano.pc[14] ),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0761_));
 sky130_fd_sc_hd__o221a_2 _1384_ (.A1(\nano.pc[12] ),
    .A2(_0594_),
    .B1(_0667_),
    .B2(\nano.pc[13] ),
    .C1(_0562_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0762_));
 sky130_fd_sc_hd__o22a_2 _1385_ (.A1(\nano.pc[8] ),
    .A2(_0594_),
    .B1(_0665_),
    .B2(\nano.pc[10] ),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0763_));
 sky130_fd_sc_hd__o221a_2 _1386_ (.A1(\nano.pc[11] ),
    .A2(_0663_),
    .B1(_0667_),
    .B2(\nano.pc[9] ),
    .C1(_0763_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0764_));
 sky130_fd_sc_hd__a21o_2 _1387_ (.A1(\nano.spi_engine.bit_count[2] ),
    .A2(_0764_),
    .B1(_0639_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0765_));
 sky130_fd_sc_hd__a21oi_2 _1388_ (.A1(_0761_),
    .A2(_0762_),
    .B1(_0765_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Y(_0766_));
 sky130_fd_sc_hd__o22a_2 _1389_ (.A1(\nano.core.data_out[11] ),
    .A2(_0663_),
    .B1(_0665_),
    .B2(\nano.core.data_out[10] ),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0767_));
 sky130_fd_sc_hd__o221a_2 _1390_ (.A1(\nano.core.data_out[8] ),
    .A2(_0594_),
    .B1(_0667_),
    .B2(\nano.core.data_out[9] ),
    .C1(\nano.spi_engine.bit_count[2] ),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0768_));
 sky130_fd_sc_hd__o22a_2 _1391_ (.A1(\nano.core.data_out[12] ),
    .A2(_0594_),
    .B1(_0663_),
    .B2(\nano.core.data_out[15] ),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0769_));
 sky130_fd_sc_hd__o221a_2 _1392_ (.A1(\nano.core.data_out[14] ),
    .A2(_0665_),
    .B1(_0667_),
    .B2(\nano.core.data_out[13] ),
    .C1(_0769_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0770_));
 sky130_fd_sc_hd__a21bo_2 _1393_ (.A1(_0767_),
    .A2(_0768_),
    .B1_N(_0739_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0771_));
 sky130_fd_sc_hd__a21oi_2 _1394_ (.A1(_0562_),
    .A2(_0770_),
    .B1(_0771_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Y(_0772_));
 sky130_fd_sc_hd__o31ai_2 _1395_ (.A1(\nano.spi_engine.bit_count[3] ),
    .A2(_0766_),
    .A3(_0772_),
    .B1(\nano.spi_engine.bit_count[4] ),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Y(_0773_));
 sky130_fd_sc_hd__a31o_2 _1396_ (.A1(\nano.spi_engine.bit_count[3] ),
    .A2(_0749_),
    .A3(_0760_),
    .B1(_0773_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0774_));
 sky130_fd_sc_hd__mux2_1 _1397_ (.A0(\nano.core.data_out[21] ),
    .A1(\nano.pc[21] ),
    .S(_0640_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0775_));
 sky130_fd_sc_hd__mux2_1 _1398_ (.A0(\nano.core.data_out[17] ),
    .A1(\nano.pc[17] ),
    .S(_0640_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0776_));
 sky130_fd_sc_hd__mux2_1 _1399_ (.A0(\nano.core.data_out[20] ),
    .A1(\nano.pc[20] ),
    .S(_0640_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0777_));
 sky130_fd_sc_hd__mux2_1 _1400_ (.A0(\nano.core.data_out[16] ),
    .A1(\nano.pc[16] ),
    .S(_0640_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0778_));
 sky130_fd_sc_hd__mux4_2 _1401_ (.A0(_0775_),
    .A1(_0776_),
    .A2(_0777_),
    .A3(_0778_),
    .S0(\nano.spi_engine.bit_count[2] ),
    .S1(\nano.spi_engine.bit_count[0] ),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0779_));
 sky130_fd_sc_hd__or3b_2 _1402_ (.A(_0735_),
    .B(_0779_),
    .C_N(\nano.spi_engine.bit_count[1] ),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0780_));
 sky130_fd_sc_hd__mux4_2 _1403_ (.A0(\nano.core.data_out[18] ),
    .A1(\nano.core.data_out[19] ),
    .A2(\nano.pc[18] ),
    .A3(\nano.pc[19] ),
    .S0(_0563_),
    .S1(_0640_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0781_));
 sky130_fd_sc_hd__mux2_1 _1404_ (.A0(\nano.core.data_out[23] ),
    .A1(\nano.core.data_out[22] ),
    .S(\nano.spi_engine.bit_count[0] ),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0782_));
 sky130_fd_sc_hd__a21o_2 _1405_ (.A1(_0639_),
    .A2(_0782_),
    .B1(\nano.spi_engine.bit_count[2] ),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0783_));
 sky130_fd_sc_hd__o21a_2 _1406_ (.A1(_0562_),
    .A2(_0781_),
    .B1(_0783_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0784_));
 sky130_fd_sc_hd__o311a_2 _1407_ (.A1(\nano.spi_engine.bit_count[1] ),
    .A2(_0735_),
    .A3(_0784_),
    .B1(_0780_),
    .C1(\nano.spi_engine.bit_count[3] ),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0785_));
 sky130_fd_sc_hd__o211a_2 _1408_ (.A1(_0563_),
    .A2(_0716_),
    .B1(_0681_),
    .C1(\nano.spi_engine.bit_count[1] ),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0786_));
 sky130_fd_sc_hd__o311a_2 _1409_ (.A1(\nano.spi_engine.bit_count[4] ),
    .A2(_0785_),
    .A3(_0786_),
    .B1(\nano.spi_engine.state[2] ),
    .C1(_0774_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0787_));
 sky130_fd_sc_hd__a31o_2 _1410_ (.A1(\nano.spi_engine.state[1] ),
    .A2(_0733_),
    .A3(_0734_),
    .B1(_0787_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(\nano.spi_engine.spi_out ));
 sky130_fd_sc_hd__and2_2 _1411_ (.A(\nano.spi_engine.state[1] ),
    .B(_0716_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0788_));
 sky130_fd_sc_hd__nand2_2 _1412_ (.A(\nano.state[9] ),
    .B(_0788_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Y(_0789_));
 sky130_fd_sc_hd__and2_2 _1413_ (.A(_0631_),
    .B(_0789_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0790_));
 sky130_fd_sc_hd__nand2_2 _1414_ (.A(_0631_),
    .B(_0789_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Y(_0791_));
 sky130_fd_sc_hd__o41a_2 _1415_ (.A1(\nano.core.ext_next_rs2[3] ),
    .A2(\nano.core.ext_next_rs2[2] ),
    .A3(_0567_),
    .A4(_0568_),
    .B1(_0687_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0792_));
 sky130_fd_sc_hd__nor3_2 _1416_ (.A(\nano.core.ext_next_rs2[3] ),
    .B(\nano.core.ext_next_rs2[1] ),
    .C(\nano.core.ext_next_rs2[0] ),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Y(_0793_));
 sky130_fd_sc_hd__and3b_2 _1417_ (.A_N(_0793_),
    .B(_0792_),
    .C(\nano.staging.normalize_sources ),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0794_));
 sky130_fd_sc_hd__and2_2 _1418_ (.A(\nano.core.pc ),
    .B(_0686_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0795_));
 sky130_fd_sc_hd__and3_2 _1419_ (.A(\nano.core.pc ),
    .B(\nano.staging.normalize_sources ),
    .C(_0686_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0796_));
 sky130_fd_sc_hd__a221o_2 _1420_ (.A1(\nano.rs2_raw_value[1] ),
    .A2(_0578_),
    .B1(_0794_),
    .B2(\nano.rs2_raw_value[6] ),
    .C1(_0796_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0797_));
 sky130_fd_sc_hd__mux2_1 _1421_ (.A0(\nano.core.data_rs2 ),
    .A1(_0797_),
    .S(_0791_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0017_));
 sky130_fd_sc_hd__nand2_2 _1422_ (.A(\nano.staging.normalize_sources ),
    .B(_0686_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Y(_0798_));
 sky130_fd_sc_hd__and3_2 _1423_ (.A(\nano.pc[1] ),
    .B(\nano.staging.normalize_sources ),
    .C(_0686_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0799_));
 sky130_fd_sc_hd__a221o_2 _1424_ (.A1(\nano.rs2_raw_value[2] ),
    .A2(_0578_),
    .B1(_0794_),
    .B2(\nano.rs2_raw_value[5] ),
    .C1(_0799_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0800_));
 sky130_fd_sc_hd__mux2_1 _1425_ (.A0(\nano.rs2_raw_value[1] ),
    .A1(_0800_),
    .S(_0791_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0018_));
 sky130_fd_sc_hd__nor2_2 _1426_ (.A(\nano.pc[2] ),
    .B(_0798_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Y(_0801_));
 sky130_fd_sc_hd__a221o_2 _1427_ (.A1(\nano.rs2_raw_value[3] ),
    .A2(_0578_),
    .B1(_0794_),
    .B2(\nano.rs2_raw_value[4] ),
    .C1(_0801_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0802_));
 sky130_fd_sc_hd__mux2_1 _1428_ (.A0(\nano.rs2_raw_value[2] ),
    .A1(_0802_),
    .S(_0791_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0019_));
 sky130_fd_sc_hd__and3_2 _1429_ (.A(\nano.pc[2] ),
    .B(\nano.pc[3] ),
    .C(\nano.pc[4] ),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0803_));
 sky130_fd_sc_hd__a21oi_2 _1430_ (.A1(\nano.pc[2] ),
    .A2(\nano.pc[3] ),
    .B1(\nano.pc[4] ),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Y(_0804_));
 sky130_fd_sc_hd__or2_2 _1431_ (.A(_0803_),
    .B(_0804_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0805_));
 sky130_fd_sc_hd__nor2_2 _1432_ (.A(_0798_),
    .B(_0805_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Y(_0806_));
 sky130_fd_sc_hd__a221o_2 _1433_ (.A1(\nano.rs2_raw_value[5] ),
    .A2(_0578_),
    .B1(_0794_),
    .B2(\nano.rs2_raw_value[2] ),
    .C1(_0806_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0807_));
 sky130_fd_sc_hd__mux2_1 _1434_ (.A0(\nano.rs2_raw_value[4] ),
    .A1(_0807_),
    .S(_0791_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0020_));
 sky130_fd_sc_hd__and2_2 _1435_ (.A(\nano.pc[5] ),
    .B(_0803_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0808_));
 sky130_fd_sc_hd__nor2_2 _1436_ (.A(\nano.pc[5] ),
    .B(_0803_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Y(_0809_));
 sky130_fd_sc_hd__or2_2 _1437_ (.A(_0808_),
    .B(_0809_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0810_));
 sky130_fd_sc_hd__nor2_2 _1438_ (.A(_0798_),
    .B(_0810_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Y(_0811_));
 sky130_fd_sc_hd__a221o_2 _1439_ (.A1(\nano.rs2_raw_value[6] ),
    .A2(_0578_),
    .B1(_0794_),
    .B2(\nano.rs2_raw_value[1] ),
    .C1(_0811_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0812_));
 sky130_fd_sc_hd__mux2_1 _1440_ (.A0(\nano.rs2_raw_value[5] ),
    .A1(_0812_),
    .S(_0791_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0021_));
 sky130_fd_sc_hd__nand2_2 _1441_ (.A(\nano.pc[6] ),
    .B(_0808_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Y(_0813_));
 sky130_fd_sc_hd__or2_2 _1442_ (.A(\nano.pc[6] ),
    .B(_0808_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0814_));
 sky130_fd_sc_hd__nand2_2 _1443_ (.A(_0813_),
    .B(_0814_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Y(_0815_));
 sky130_fd_sc_hd__nor2_2 _1444_ (.A(_0798_),
    .B(_0815_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Y(_0816_));
 sky130_fd_sc_hd__a221o_2 _1445_ (.A1(\nano.rs2_raw_value[7] ),
    .A2(_0578_),
    .B1(_0794_),
    .B2(\nano.core.data_rs2 ),
    .C1(_0816_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0817_));
 sky130_fd_sc_hd__mux2_1 _1446_ (.A0(\nano.rs2_raw_value[6] ),
    .A1(_0817_),
    .S(_0791_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0022_));
 sky130_fd_sc_hd__xor2_2 _1447_ (.A(\nano.pc[7] ),
    .B(_0813_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0818_));
 sky130_fd_sc_hd__nor2_2 _1448_ (.A(_0798_),
    .B(_0818_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Y(_0819_));
 sky130_fd_sc_hd__a221o_2 _1449_ (.A1(_0578_),
    .A2(\nano.rs2_raw_value[8] ),
    .B1(_0794_),
    .B2(\nano.rs2_raw_value[31] ),
    .C1(_0819_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0820_));
 sky130_fd_sc_hd__mux2_1 _1450_ (.A0(\nano.rs2_raw_value[7] ),
    .A1(_0820_),
    .S(_0791_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0023_));
 sky130_fd_sc_hd__and4_2 _1451_ (.A(\nano.pc[6] ),
    .B(\nano.pc[7] ),
    .C(\nano.pc[8] ),
    .D(_0808_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0821_));
 sky130_fd_sc_hd__a31o_2 _1452_ (.A1(\nano.pc[6] ),
    .A2(\nano.pc[7] ),
    .A3(_0808_),
    .B1(\nano.pc[8] ),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0822_));
 sky130_fd_sc_hd__nand2b_2 _1453_ (.A_N(_0821_),
    .B(_0822_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Y(_0823_));
 sky130_fd_sc_hd__nor2_2 _1454_ (.A(_0798_),
    .B(_0823_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Y(_0824_));
 sky130_fd_sc_hd__a221o_2 _1455_ (.A1(_0578_),
    .A2(\nano.rs2_raw_value[9] ),
    .B1(\nano.rs2_raw_value[14] ),
    .B2(_0794_),
    .C1(_0790_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0825_));
 sky130_fd_sc_hd__o22a_2 _1456_ (.A1(\nano.rs2_raw_value[8] ),
    .A2(_0791_),
    .B1(_0824_),
    .B2(_0825_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0024_));
 sky130_fd_sc_hd__xnor2_2 _1457_ (.A(\nano.pc[9] ),
    .B(_0821_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Y(_0826_));
 sky130_fd_sc_hd__nor2_2 _1458_ (.A(_0798_),
    .B(_0826_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Y(_0827_));
 sky130_fd_sc_hd__a221o_2 _1459_ (.A1(_0578_),
    .A2(\nano.rs2_raw_value[10] ),
    .B1(\nano.rs2_raw_value[13] ),
    .B2(_0794_),
    .C1(_0790_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0828_));
 sky130_fd_sc_hd__o22a_2 _1460_ (.A1(\nano.rs2_raw_value[9] ),
    .A2(_0791_),
    .B1(_0827_),
    .B2(_0828_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0025_));
 sky130_fd_sc_hd__and3_2 _1461_ (.A(\nano.pc[9] ),
    .B(\nano.pc[10] ),
    .C(_0821_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0829_));
 sky130_fd_sc_hd__a21oi_2 _1462_ (.A1(\nano.pc[9] ),
    .A2(_0821_),
    .B1(\nano.pc[10] ),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Y(_0830_));
 sky130_fd_sc_hd__or2_2 _1463_ (.A(_0829_),
    .B(_0830_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0831_));
 sky130_fd_sc_hd__nor2_2 _1464_ (.A(_0798_),
    .B(_0831_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Y(_0832_));
 sky130_fd_sc_hd__a221o_2 _1465_ (.A1(_0578_),
    .A2(\nano.rs2_raw_value[11] ),
    .B1(\nano.rs2_raw_value[12] ),
    .B2(_0794_),
    .C1(_0790_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0833_));
 sky130_fd_sc_hd__o22a_2 _1466_ (.A1(\nano.rs2_raw_value[10] ),
    .A2(_0791_),
    .B1(_0832_),
    .B2(_0833_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0026_));
 sky130_fd_sc_hd__and2_2 _1467_ (.A(\nano.pc[11] ),
    .B(_0829_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0834_));
 sky130_fd_sc_hd__xnor2_2 _1468_ (.A(\nano.pc[12] ),
    .B(_0834_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Y(_0835_));
 sky130_fd_sc_hd__a211oi_2 _1469_ (.A1(_0686_),
    .A2(_0835_),
    .B1(_0792_),
    .C1(_0578_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Y(_0836_));
 sky130_fd_sc_hd__a221o_2 _1470_ (.A1(_0578_),
    .A2(\nano.rs2_raw_value[13] ),
    .B1(_0794_),
    .B2(\nano.rs2_raw_value[10] ),
    .C1(_0790_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0837_));
 sky130_fd_sc_hd__o22a_2 _1471_ (.A1(\nano.rs2_raw_value[12] ),
    .A2(_0791_),
    .B1(_0836_),
    .B2(_0837_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0027_));
 sky130_fd_sc_hd__and3_2 _1472_ (.A(\nano.pc[12] ),
    .B(\nano.pc[13] ),
    .C(_0834_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0838_));
 sky130_fd_sc_hd__a21oi_2 _1473_ (.A1(\nano.pc[12] ),
    .A2(_0834_),
    .B1(\nano.pc[13] ),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Y(_0839_));
 sky130_fd_sc_hd__or2_2 _1474_ (.A(_0838_),
    .B(_0839_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0840_));
 sky130_fd_sc_hd__nor2_2 _1475_ (.A(_0798_),
    .B(_0840_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Y(_0841_));
 sky130_fd_sc_hd__a221o_2 _1476_ (.A1(_0578_),
    .A2(\nano.rs2_raw_value[14] ),
    .B1(_0794_),
    .B2(\nano.rs2_raw_value[9] ),
    .C1(_0790_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0842_));
 sky130_fd_sc_hd__o22a_2 _1477_ (.A1(\nano.rs2_raw_value[13] ),
    .A2(_0791_),
    .B1(_0841_),
    .B2(_0842_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0028_));
 sky130_fd_sc_hd__and2_2 _1478_ (.A(\nano.pc[14] ),
    .B(_0838_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0843_));
 sky130_fd_sc_hd__nor2_2 _1479_ (.A(\nano.pc[14] ),
    .B(_0838_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Y(_0844_));
 sky130_fd_sc_hd__or2_2 _1480_ (.A(_0843_),
    .B(_0844_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0845_));
 sky130_fd_sc_hd__nor2_2 _1481_ (.A(_0798_),
    .B(_0845_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Y(_0846_));
 sky130_fd_sc_hd__a221o_2 _1482_ (.A1(_0578_),
    .A2(\nano.rs2_raw_value[15] ),
    .B1(\nano.rs2_raw_value[8] ),
    .B2(_0794_),
    .C1(_0790_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0847_));
 sky130_fd_sc_hd__o22a_2 _1483_ (.A1(\nano.rs2_raw_value[14] ),
    .A2(_0791_),
    .B1(_0846_),
    .B2(_0847_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0029_));
 sky130_fd_sc_hd__xnor2_2 _1484_ (.A(\nano.pc[15] ),
    .B(_0843_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Y(_0848_));
 sky130_fd_sc_hd__nor2_2 _1485_ (.A(_0798_),
    .B(_0848_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Y(_0849_));
 sky130_fd_sc_hd__a221o_2 _1486_ (.A1(_0578_),
    .A2(\nano.rs2_raw_value[16] ),
    .B1(_0794_),
    .B2(\nano.rs2_raw_value[7] ),
    .C1(_0790_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0850_));
 sky130_fd_sc_hd__o22a_2 _1487_ (.A1(\nano.rs2_raw_value[15] ),
    .A2(_0791_),
    .B1(_0849_),
    .B2(_0850_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0030_));
 sky130_fd_sc_hd__and3_2 _1488_ (.A(\nano.pc[15] ),
    .B(\nano.pc[16] ),
    .C(_0843_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0851_));
 sky130_fd_sc_hd__a21oi_2 _1489_ (.A1(\nano.pc[15] ),
    .A2(_0843_),
    .B1(\nano.pc[16] ),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Y(_0852_));
 sky130_fd_sc_hd__or2_2 _1490_ (.A(_0851_),
    .B(_0852_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0853_));
 sky130_fd_sc_hd__nor2_2 _1491_ (.A(_0798_),
    .B(_0853_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Y(_0854_));
 sky130_fd_sc_hd__a221o_2 _1492_ (.A1(_0578_),
    .A2(\nano.rs2_raw_value[17] ),
    .B1(\nano.rs2_raw_value[22] ),
    .B2(_0794_),
    .C1(_0790_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0855_));
 sky130_fd_sc_hd__o22a_2 _1493_ (.A1(\nano.rs2_raw_value[16] ),
    .A2(_0791_),
    .B1(_0854_),
    .B2(_0855_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0031_));
 sky130_fd_sc_hd__and2_2 _1494_ (.A(\nano.pc[17] ),
    .B(_0851_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0856_));
 sky130_fd_sc_hd__nor2_2 _1495_ (.A(\nano.pc[17] ),
    .B(_0851_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Y(_0857_));
 sky130_fd_sc_hd__or2_2 _1496_ (.A(_0856_),
    .B(_0857_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0858_));
 sky130_fd_sc_hd__nor2_2 _1497_ (.A(_0798_),
    .B(_0858_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Y(_0859_));
 sky130_fd_sc_hd__a221o_2 _1498_ (.A1(_0578_),
    .A2(\nano.rs2_raw_value[18] ),
    .B1(\nano.rs2_raw_value[21] ),
    .B2(_0794_),
    .C1(_0790_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0860_));
 sky130_fd_sc_hd__o22a_2 _1499_ (.A1(\nano.rs2_raw_value[17] ),
    .A2(_0791_),
    .B1(_0859_),
    .B2(_0860_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0032_));
 sky130_fd_sc_hd__xnor2_2 _1500_ (.A(\nano.pc[18] ),
    .B(_0856_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Y(_0861_));
 sky130_fd_sc_hd__nor2_2 _1501_ (.A(_0798_),
    .B(_0861_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Y(_0862_));
 sky130_fd_sc_hd__a221o_2 _1502_ (.A1(_0578_),
    .A2(\nano.rs2_raw_value[19] ),
    .B1(\nano.rs2_raw_value[20] ),
    .B2(_0794_),
    .C1(_0790_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0863_));
 sky130_fd_sc_hd__o22a_2 _1503_ (.A1(\nano.rs2_raw_value[18] ),
    .A2(_0791_),
    .B1(_0862_),
    .B2(_0863_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0033_));
 sky130_fd_sc_hd__and3_2 _1504_ (.A(\nano.pc[18] ),
    .B(\nano.pc[19] ),
    .C(_0856_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0864_));
 sky130_fd_sc_hd__and2_2 _1505_ (.A(\nano.pc[20] ),
    .B(_0864_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0865_));
 sky130_fd_sc_hd__nor2_2 _1506_ (.A(\nano.pc[20] ),
    .B(_0864_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Y(_0866_));
 sky130_fd_sc_hd__or2_2 _1507_ (.A(_0865_),
    .B(_0866_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0867_));
 sky130_fd_sc_hd__nor2_2 _1508_ (.A(_0798_),
    .B(_0867_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Y(_0868_));
 sky130_fd_sc_hd__a221o_2 _1509_ (.A1(_0578_),
    .A2(\nano.rs2_raw_value[21] ),
    .B1(_0794_),
    .B2(\nano.rs2_raw_value[18] ),
    .C1(_0790_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0869_));
 sky130_fd_sc_hd__o22a_2 _1510_ (.A1(\nano.rs2_raw_value[20] ),
    .A2(_0791_),
    .B1(_0868_),
    .B2(_0869_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0034_));
 sky130_fd_sc_hd__xnor2_2 _1511_ (.A(\nano.pc[21] ),
    .B(_0865_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Y(_0870_));
 sky130_fd_sc_hd__nor2_2 _1512_ (.A(_0798_),
    .B(_0870_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Y(_0871_));
 sky130_fd_sc_hd__a221o_2 _1513_ (.A1(_0578_),
    .A2(\nano.rs2_raw_value[22] ),
    .B1(_0794_),
    .B2(\nano.rs2_raw_value[17] ),
    .C1(_0790_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0872_));
 sky130_fd_sc_hd__o22a_2 _1514_ (.A1(\nano.rs2_raw_value[21] ),
    .A2(_0791_),
    .B1(_0871_),
    .B2(_0872_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0035_));
 sky130_fd_sc_hd__and4_2 _1515_ (.A(\nano.staging.normalize_sources ),
    .B(\nano.pc[21] ),
    .C(_0686_),
    .D(_0865_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0873_));
 sky130_fd_sc_hd__a221o_2 _1516_ (.A1(_0578_),
    .A2(\nano.rs2_raw_value[23] ),
    .B1(\nano.rs2_raw_value[16] ),
    .B2(_0794_),
    .C1(_0790_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0874_));
 sky130_fd_sc_hd__o22a_2 _1517_ (.A1(\nano.rs2_raw_value[22] ),
    .A2(_0791_),
    .B1(_0873_),
    .B2(_0874_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0036_));
 sky130_fd_sc_hd__and4_2 _1518_ (.A(\nano.core.ext_next_rs2[2] ),
    .B(\nano.staging.normalize_sources ),
    .C(_0687_),
    .D(_0793_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0875_));
 sky130_fd_sc_hd__a221o_2 _1519_ (.A1(_0578_),
    .A2(\nano.rs2_raw_value[29] ),
    .B1(_0794_),
    .B2(\nano.rs2_raw_value[26] ),
    .C1(_0875_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0876_));
 sky130_fd_sc_hd__mux2_1 _1520_ (.A0(\nano.rs2_raw_value[28] ),
    .A1(_0876_),
    .S(_0791_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0037_));
 sky130_fd_sc_hd__a221o_2 _1521_ (.A1(\nano.core.data_rs2 ),
    .A2(_0578_),
    .B1(\nano.rs2_raw_value[23] ),
    .B2(_0794_),
    .C1(_0790_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0877_));
 sky130_fd_sc_hd__o21a_2 _1522_ (.A1(\nano.rs2_raw_value[31] ),
    .A2(_0791_),
    .B1(_0877_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0038_));
 sky130_fd_sc_hd__a221o_2 _1523_ (.A1(_0578_),
    .A2(\nano.rs2_raw_value[24] ),
    .B1(\nano.rs2_raw_value[15] ),
    .B2(_0794_),
    .C1(_0790_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0878_));
 sky130_fd_sc_hd__o21a_2 _1524_ (.A1(\nano.rs2_raw_value[23] ),
    .A2(_0791_),
    .B1(_0878_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0039_));
 sky130_fd_sc_hd__a221o_2 _1525_ (.A1(_0578_),
    .A2(\nano.rs2_raw_value[25] ),
    .B1(\nano.rs2_raw_value[30] ),
    .B2(_0794_),
    .C1(_0790_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0879_));
 sky130_fd_sc_hd__o21a_2 _1526_ (.A1(\nano.rs2_raw_value[24] ),
    .A2(_0791_),
    .B1(_0879_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0040_));
 sky130_fd_sc_hd__a221o_2 _1527_ (.A1(_0578_),
    .A2(\nano.rs2_raw_value[26] ),
    .B1(\nano.rs2_raw_value[29] ),
    .B2(_0794_),
    .C1(_0790_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0880_));
 sky130_fd_sc_hd__o21a_2 _1528_ (.A1(\nano.rs2_raw_value[25] ),
    .A2(_0791_),
    .B1(_0880_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0041_));
 sky130_fd_sc_hd__a221o_2 _1529_ (.A1(_0578_),
    .A2(\nano.rs2_raw_value[27] ),
    .B1(\nano.rs2_raw_value[28] ),
    .B2(_0794_),
    .C1(_0790_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0881_));
 sky130_fd_sc_hd__o21a_2 _1530_ (.A1(\nano.rs2_raw_value[26] ),
    .A2(_0791_),
    .B1(_0881_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0042_));
 sky130_fd_sc_hd__a221o_2 _1531_ (.A1(_0578_),
    .A2(\nano.rs2_raw_value[30] ),
    .B1(_0794_),
    .B2(\nano.rs2_raw_value[25] ),
    .C1(_0790_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0882_));
 sky130_fd_sc_hd__o21a_2 _1532_ (.A1(\nano.rs2_raw_value[29] ),
    .A2(_0791_),
    .B1(_0882_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0043_));
 sky130_fd_sc_hd__mux2_1 _1533_ (.A0(uio_in[3]),
    .A1(\nano.rs2_raw_value[31] ),
    .S(_0789_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0883_));
 sky130_fd_sc_hd__a22o_2 _1534_ (.A1(\nano.rs2_raw_value[24] ),
    .A2(_0794_),
    .B1(_0883_),
    .B2(_0578_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0884_));
 sky130_fd_sc_hd__mux2_1 _1535_ (.A0(\nano.rs2_raw_value[30] ),
    .A1(_0884_),
    .S(_0791_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0044_));
 sky130_fd_sc_hd__nor2_2 _1536_ (.A(_0790_),
    .B(_0794_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Y(_0885_));
 sky130_fd_sc_hd__inv_2 _1537_ (.A(_0885_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Y(_0886_));
 sky130_fd_sc_hd__xnor2_2 _1538_ (.A(\nano.pc[2] ),
    .B(\nano.pc[3] ),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Y(_0887_));
 sky130_fd_sc_hd__a2bb2o_2 _1539_ (.A1_N(_0798_),
    .A2_N(_0887_),
    .B1(\nano.rs2_raw_value[4] ),
    .B2(_0578_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0888_));
 sky130_fd_sc_hd__mux2_1 _1540_ (.A0(\nano.rs2_raw_value[3] ),
    .A1(_0888_),
    .S(_0885_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0045_));
 sky130_fd_sc_hd__nor2_2 _1541_ (.A(\nano.pc[11] ),
    .B(_0829_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Y(_0889_));
 sky130_fd_sc_hd__or2_2 _1542_ (.A(_0834_),
    .B(_0889_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0890_));
 sky130_fd_sc_hd__a2bb2o_2 _1543_ (.A1_N(_0798_),
    .A2_N(_0890_),
    .B1(_0578_),
    .B2(\nano.rs2_raw_value[12] ),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0891_));
 sky130_fd_sc_hd__mux2_1 _1544_ (.A0(\nano.rs2_raw_value[11] ),
    .A1(_0891_),
    .S(_0885_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0046_));
 sky130_fd_sc_hd__a21oi_2 _1545_ (.A1(\nano.pc[18] ),
    .A2(_0856_),
    .B1(\nano.pc[19] ),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Y(_0892_));
 sky130_fd_sc_hd__or2_2 _1546_ (.A(_0864_),
    .B(_0892_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0893_));
 sky130_fd_sc_hd__a2bb2o_2 _1547_ (.A1_N(_0798_),
    .A2_N(_0893_),
    .B1(_0578_),
    .B2(\nano.rs2_raw_value[20] ),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0894_));
 sky130_fd_sc_hd__mux2_1 _1548_ (.A0(\nano.rs2_raw_value[19] ),
    .A1(_0894_),
    .S(_0885_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0047_));
 sky130_fd_sc_hd__a32o_2 _1549_ (.A1(_0578_),
    .A2(\nano.rs2_raw_value[28] ),
    .A3(_0791_),
    .B1(_0886_),
    .B2(\nano.rs2_raw_value[27] ),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0048_));
 sky130_fd_sc_hd__o21ai_2 _1550_ (.A1(\nano.state[12] ),
    .A2(\nano.state[11] ),
    .B1(_0788_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Y(_0895_));
 sky130_fd_sc_hd__and4_2 _1551_ (.A(\nano.core.execute_enable ),
    .B(_0584_),
    .C(_0645_),
    .D(_0687_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0896_));
 sky130_fd_sc_hd__and3b_2 _1552_ (.A_N(_0629_),
    .B(_0895_),
    .C(_0896_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0897_));
 sky130_fd_sc_hd__and3b_2 _1553_ (.A_N(\nano.core.instr[3] ),
    .B(\nano.core.instr[2] ),
    .C(_0623_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0898_));
 sky130_fd_sc_hd__nand3b_2 _1554_ (.A_N(\nano.core.instr[3] ),
    .B(\nano.core.instr[2] ),
    .C(_0623_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Y(_0899_));
 sky130_fd_sc_hd__a31o_2 _1555_ (.A1(\nano.core.cycle[0] ),
    .A2(_0582_),
    .A3(_0619_),
    .B1(_0686_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0900_));
 sky130_fd_sc_hd__a311oi_2 _1556_ (.A1(\nano.core.cycle[0] ),
    .A2(_0582_),
    .A3(_0619_),
    .B1(_0686_),
    .C1(_0583_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Y(_0901_));
 sky130_fd_sc_hd__a311o_2 _1557_ (.A1(\nano.core.cycle[0] ),
    .A2(_0582_),
    .A3(_0619_),
    .B1(_0686_),
    .C1(_0583_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0902_));
 sky130_fd_sc_hd__nor2_2 _1558_ (.A(_0898_),
    .B(_0902_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Y(_0903_));
 sky130_fd_sc_hd__mux2_1 _1559_ (.A0(\nano.core.instr[14] ),
    .A1(\nano.core.instr[13] ),
    .S(_0621_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0904_));
 sky130_fd_sc_hd__nand2_2 _1560_ (.A(_0903_),
    .B(_0904_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Y(_0905_));
 sky130_fd_sc_hd__and4_2 _1561_ (.A(\nano.core.instr[4] ),
    .B(_0609_),
    .C(_0903_),
    .D(_0904_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0906_));
 sky130_fd_sc_hd__a21oi_2 _1562_ (.A1(_0582_),
    .A2(_0619_),
    .B1(_0569_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Y(_0907_));
 sky130_fd_sc_hd__a21o_2 _1563_ (.A1(_0582_),
    .A2(_0619_),
    .B1(_0569_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0908_));
 sky130_fd_sc_hd__and3_2 _1564_ (.A(_0899_),
    .B(_0901_),
    .C(_0907_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0909_));
 sky130_fd_sc_hd__or3_2 _1565_ (.A(_0898_),
    .B(_0902_),
    .C(_0908_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0910_));
 sky130_fd_sc_hd__and3_2 _1566_ (.A(_0897_),
    .B(_0906_),
    .C(_0910_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0911_));
 sky130_fd_sc_hd__or2_2 _1567_ (.A(\nano.load_value[1] ),
    .B(_0911_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0912_));
 sky130_fd_sc_hd__nor2_2 _1568_ (.A(\nano.staging.normalize_sources ),
    .B(\nano.staging.normalize_result ),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Y(_0913_));
 sky130_fd_sc_hd__or2_2 _1569_ (.A(\nano.staging.normalize_sources ),
    .B(\nano.staging.normalize_result ),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0914_));
 sky130_fd_sc_hd__a22oi_2 _1570_ (.A1(\nano.staging.normalize_sources ),
    .A2(_0616_),
    .B1(_0648_),
    .B2(_0586_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Y(_0915_));
 sky130_fd_sc_hd__nand2_2 _1571_ (.A(\nano.core.ext_next_rs1[1] ),
    .B(\nano.core.ext_next_rs1[0] ),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Y(_0916_));
 sky130_fd_sc_hd__or4_2 _1572_ (.A(\nano.core.ext_next_rs1[3] ),
    .B(\nano.core.ext_next_rs1[2] ),
    .C(_0578_),
    .D(_0916_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0917_));
 sky130_fd_sc_hd__and2_2 _1573_ (.A(_0915_),
    .B(_0917_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0918_));
 sky130_fd_sc_hd__nand2_2 _1574_ (.A(_0915_),
    .B(_0917_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Y(_0919_));
 sky130_fd_sc_hd__and4b_2 _1575_ (.A_N(_0649_),
    .B(_0895_),
    .C(_0564_),
    .D(_0578_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0920_));
 sky130_fd_sc_hd__nor2_2 _1576_ (.A(_0919_),
    .B(_0920_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Y(_0921_));
 sky130_fd_sc_hd__and3_2 _1577_ (.A(\nano.core.instr[5] ),
    .B(_0899_),
    .C(_0901_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0922_));
 sky130_fd_sc_hd__or3_2 _1578_ (.A(_0571_),
    .B(_0898_),
    .C(_0902_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0923_));
 sky130_fd_sc_hd__a32o_2 _1579_ (.A1(\nano.core.b_imm[10] ),
    .A2(_0621_),
    .A3(_0922_),
    .B1(_0904_),
    .B2(_0903_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0924_));
 sky130_fd_sc_hd__nand2_2 _1580_ (.A(\nano.core.data_rs2 ),
    .B(_0922_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Y(_0925_));
 sky130_fd_sc_hd__inv_2 _1581_ (.A(_0925_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Y(_0926_));
 sky130_fd_sc_hd__and2b_2 _1582_ (.A_N(\nano.core.counter[3] ),
    .B(\nano.core.counter[2] ),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0927_));
 sky130_fd_sc_hd__nand2b_2 _1583_ (.A_N(\nano.core.counter[3] ),
    .B(\nano.core.counter[2] ),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Y(_0928_));
 sky130_fd_sc_hd__and2b_2 _1584_ (.A_N(\nano.core.counter[0] ),
    .B(\nano.core.counter[1] ),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0929_));
 sky130_fd_sc_hd__mux4_2 _1585_ (.A0(\nano.core.i_imm[4] ),
    .A1(\nano.core.b_imm[5] ),
    .A2(\nano.core.b_imm[6] ),
    .A3(\nano.core.b_imm[7] ),
    .S0(\nano.core.counter[0] ),
    .S1(\nano.core.counter[1] ),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0930_));
 sky130_fd_sc_hd__nand2_2 _1586_ (.A(_0927_),
    .B(_0930_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Y(_0931_));
 sky130_fd_sc_hd__and2_2 _1587_ (.A(\nano.core.counter[3] ),
    .B(\nano.core.counter[2] ),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0932_));
 sky130_fd_sc_hd__nand3b_2 _1588_ (.A_N(\nano.core.counter[1] ),
    .B(\nano.core.counter[0] ),
    .C(\nano.core.b_imm[9] ),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Y(_0933_));
 sky130_fd_sc_hd__or3b_2 _1589_ (.A(\nano.core.counter[1] ),
    .B(\nano.core.counter[0] ),
    .C_N(\nano.core.b_imm[8] ),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0934_));
 sky130_fd_sc_hd__nand3b_2 _1590_ (.A_N(\nano.core.counter[0] ),
    .B(\nano.core.b_imm[10] ),
    .C(\nano.core.counter[1] ),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Y(_0935_));
 sky130_fd_sc_hd__mux4_2 _1591_ (.A0(\nano.core.b_imm[8] ),
    .A1(\nano.core.b_imm[9] ),
    .A2(\nano.core.b_imm[10] ),
    .A3(\nano.core.b_imm[12] ),
    .S0(\nano.core.counter[0] ),
    .S1(\nano.core.counter[1] ),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0936_));
 sky130_fd_sc_hd__and2b_2 _1592_ (.A_N(\nano.core.counter[2] ),
    .B(\nano.core.counter[3] ),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0937_));
 sky130_fd_sc_hd__nand2b_2 _1593_ (.A_N(\nano.core.counter[2] ),
    .B(\nano.core.counter[3] ),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Y(_0938_));
 sky130_fd_sc_hd__a22oi_2 _1594_ (.A1(\nano.core.b_imm[12] ),
    .A2(_0932_),
    .B1(_0936_),
    .B2(_0937_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Y(_0939_));
 sky130_fd_sc_hd__nor2_2 _1595_ (.A(\nano.core.counter[3] ),
    .B(\nano.core.counter[2] ),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Y(_0940_));
 sky130_fd_sc_hd__or2_2 _1596_ (.A(\nano.core.counter[3] ),
    .B(\nano.core.counter[2] ),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0941_));
 sky130_fd_sc_hd__or3b_2 _1597_ (.A(\nano.core.counter[1] ),
    .B(\nano.core.counter[0] ),
    .C_N(\nano.core.ext_next_rs2[0] ),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0942_));
 sky130_fd_sc_hd__nand3b_2 _1598_ (.A_N(\nano.core.counter[0] ),
    .B(\nano.core.ext_next_rs2[2] ),
    .C(\nano.core.counter[1] ),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Y(_0943_));
 sky130_fd_sc_hd__nand3b_2 _1599_ (.A_N(\nano.core.counter[1] ),
    .B(\nano.core.counter[0] ),
    .C(\nano.core.ext_next_rs2[1] ),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Y(_0944_));
 sky130_fd_sc_hd__nand3_2 _1600_ (.A(\nano.core.counter[1] ),
    .B(\nano.core.counter[0] ),
    .C(\nano.core.ext_next_rs2[3] ),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Y(_0945_));
 sky130_fd_sc_hd__a41o_2 _1601_ (.A1(_0942_),
    .A2(_0943_),
    .A3(_0944_),
    .A4(_0945_),
    .B1(_0941_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0946_));
 sky130_fd_sc_hd__a31o_2 _1602_ (.A1(_0931_),
    .A2(_0939_),
    .A3(_0946_),
    .B1(\nano.core.counter[4] ),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0947_));
 sky130_fd_sc_hd__a311o_2 _1603_ (.A1(_0931_),
    .A2(_0939_),
    .A3(_0946_),
    .B1(_0585_),
    .C1(\nano.core.counter[4] ),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0948_));
 sky130_fd_sc_hd__nand2_2 _1604_ (.A(\nano.core.counter[4] ),
    .B(\nano.core.b_imm[12] ),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Y(_0949_));
 sky130_fd_sc_hd__mux4_2 _1605_ (.A0(\nano.core.b_imm[4] ),
    .A1(\nano.core.b_imm[5] ),
    .A2(\nano.core.b_imm[6] ),
    .A3(\nano.core.b_imm[7] ),
    .S0(\nano.core.counter[0] ),
    .S1(\nano.core.counter[1] ),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0950_));
 sky130_fd_sc_hd__nand2_2 _1606_ (.A(_0927_),
    .B(_0950_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Y(_0951_));
 sky130_fd_sc_hd__and3b_2 _1607_ (.A_N(\nano.core.counter[1] ),
    .B(\nano.core.counter[0] ),
    .C(\nano.core.b_imm[1] ),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0952_));
 sky130_fd_sc_hd__a221oi_2 _1608_ (.A1(\nano.core.b_imm[3] ),
    .A2(_0606_),
    .B1(_0929_),
    .B2(\nano.core.b_imm[2] ),
    .C1(_0952_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Y(_0953_));
 sky130_fd_sc_hd__mux4_2 _1609_ (.A0(\nano.core.b_imm[11] ),
    .A1(\nano.core.b_imm[1] ),
    .A2(\nano.core.b_imm[2] ),
    .A3(\nano.core.b_imm[3] ),
    .S0(\nano.core.counter[0] ),
    .S1(\nano.core.counter[1] ),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0954_));
 sky130_fd_sc_hd__nand2_2 _1610_ (.A(_0940_),
    .B(_0954_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Y(_0955_));
 sky130_fd_sc_hd__a311o_2 _1611_ (.A1(_0939_),
    .A2(_0951_),
    .A3(_0955_),
    .B1(_0586_),
    .C1(\nano.core.counter[4] ),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0956_));
 sky130_fd_sc_hd__a31o_2 _1612_ (.A1(_0948_),
    .A2(_0949_),
    .A3(_0956_),
    .B1(_0898_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0957_));
 sky130_fd_sc_hd__nand2_2 _1613_ (.A(_0930_),
    .B(_0937_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Y(_0958_));
 sky130_fd_sc_hd__a41o_2 _1614_ (.A1(_0942_),
    .A2(_0943_),
    .A3(_0944_),
    .A4(_0945_),
    .B1(_0928_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0959_));
 sky130_fd_sc_hd__mux4_2 _1615_ (.A0(\nano.core.ext_next_rs1[1] ),
    .A1(\nano.core.ext_next_rs1[2] ),
    .A2(\nano.core.ext_next_rs1[3] ),
    .A3(\nano.core.instr[19] ),
    .S0(\nano.core.counter[0] ),
    .S1(\nano.core.counter[1] ),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0960_));
 sky130_fd_sc_hd__a221o_2 _1616_ (.A1(_0932_),
    .A2(_0936_),
    .B1(_0940_),
    .B2(_0960_),
    .C1(_0566_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0961_));
 sky130_fd_sc_hd__and3b_2 _1617_ (.A_N(_0961_),
    .B(_0959_),
    .C(_0958_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0962_));
 sky130_fd_sc_hd__or2_2 _1618_ (.A(\nano.core.counter[4] ),
    .B(_0932_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0963_));
 sky130_fd_sc_hd__mux4_2 _1619_ (.A0(\nano.core.instr[12] ),
    .A1(\nano.core.instr[13] ),
    .A2(\nano.core.instr[14] ),
    .A3(\nano.core.ext_next_rs1[0] ),
    .S0(\nano.core.counter[0] ),
    .S1(\nano.core.counter[1] ),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0964_));
 sky130_fd_sc_hd__nand2_2 _1620_ (.A(_0932_),
    .B(_0964_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Y(_0965_));
 sky130_fd_sc_hd__a211o_2 _1621_ (.A1(_0566_),
    .A2(_0965_),
    .B1(_0962_),
    .C1(_0899_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0966_));
 sky130_fd_sc_hd__nand3_2 _1622_ (.A(\nano.core.counter[1] ),
    .B(\nano.core.counter[0] ),
    .C(\nano.core.b_imm[11] ),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Y(_0967_));
 sky130_fd_sc_hd__a41o_2 _1623_ (.A1(_0933_),
    .A2(_0934_),
    .A3(_0935_),
    .A4(_0967_),
    .B1(_0938_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0968_));
 sky130_fd_sc_hd__o211a_2 _1624_ (.A1(_0941_),
    .A2(_0953_),
    .B1(_0968_),
    .C1(_0951_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0969_));
 sky130_fd_sc_hd__nand2_2 _1625_ (.A(\nano.core.b_imm[12] ),
    .B(_0963_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Y(_0970_));
 sky130_fd_sc_hd__o211a_2 _1626_ (.A1(\nano.core.counter[4] ),
    .A2(_0969_),
    .B1(_0970_),
    .C1(_0620_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0971_));
 sky130_fd_sc_hd__a31oi_2 _1627_ (.A1(_0621_),
    .A2(_0957_),
    .A3(_0966_),
    .B1(_0971_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Y(_0972_));
 sky130_fd_sc_hd__nand3_2 _1628_ (.A(\nano.core.counter[1] ),
    .B(\nano.core.counter[0] ),
    .C(\nano.core.ext_next_rs2[0] ),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Y(_0973_));
 sky130_fd_sc_hd__a41o_2 _1629_ (.A1(_0933_),
    .A2(_0934_),
    .A3(_0935_),
    .A4(_0973_),
    .B1(_0938_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0974_));
 sky130_fd_sc_hd__and3_2 _1630_ (.A(\nano.core.counter[4] ),
    .B(_0940_),
    .C(_0960_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0975_));
 sky130_fd_sc_hd__a31o_2 _1631_ (.A1(_0931_),
    .A2(_0965_),
    .A3(_0974_),
    .B1(\nano.core.counter[4] ),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0976_));
 sky130_fd_sc_hd__a31o_2 _1632_ (.A1(_0943_),
    .A2(_0944_),
    .A3(_0945_),
    .B1(_0941_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0977_));
 sky130_fd_sc_hd__nand2_2 _1633_ (.A(\nano.core.instr[3] ),
    .B(_0686_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Y(_0978_));
 sky130_fd_sc_hd__o211a_2 _1634_ (.A1(_0940_),
    .A2(_0949_),
    .B1(\nano.core.instr[3] ),
    .C1(_0686_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0979_));
 sky130_fd_sc_hd__o21ai_2 _1635_ (.A1(\nano.core.counter[4] ),
    .A2(_0977_),
    .B1(_0979_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Y(_0980_));
 sky130_fd_sc_hd__or3b_2 _1636_ (.A(_0975_),
    .B(_0980_),
    .C_N(_0976_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0981_));
 sky130_fd_sc_hd__a31oi_2 _1637_ (.A1(_0947_),
    .A2(_0949_),
    .A3(_0978_),
    .B1(_0602_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Y(_0982_));
 sky130_fd_sc_hd__a41o_2 _1638_ (.A1(_0566_),
    .A2(_0602_),
    .A3(_0929_),
    .A4(_0940_),
    .B1(_0687_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0983_));
 sky130_fd_sc_hd__a21o_2 _1639_ (.A1(_0981_),
    .A2(_0982_),
    .B1(_0983_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0984_));
 sky130_fd_sc_hd__o211a_2 _1640_ (.A1(_0686_),
    .A2(_0972_),
    .B1(_0984_),
    .C1(_0923_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0985_));
 sky130_fd_sc_hd__or3_2 _1641_ (.A(_0924_),
    .B(_0926_),
    .C(_0985_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0986_));
 sky130_fd_sc_hd__o21ai_2 _1642_ (.A1(_0926_),
    .A2(_0985_),
    .B1(_0924_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Y(_0987_));
 sky130_fd_sc_hd__and2_2 _1643_ (.A(_0986_),
    .B(_0987_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0988_));
 sky130_fd_sc_hd__or2_2 _1644_ (.A(\nano.core.cycle[0] ),
    .B(\nano.core.instr[3] ),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0989_));
 sky130_fd_sc_hd__a21oi_2 _1645_ (.A1(_0900_),
    .A2(_0989_),
    .B1(_0898_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Y(_0990_));
 sky130_fd_sc_hd__mux2_1 _1646_ (.A0(\nano.core.pc ),
    .A1(\nano.core.data_rs1 ),
    .S(_0990_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0991_));
 sky130_fd_sc_hd__mux2_1 _1647_ (.A0(\nano.core.instr[13] ),
    .A1(\nano.core.instr[12] ),
    .S(_0621_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0992_));
 sky130_fd_sc_hd__nand2_2 _1648_ (.A(_0903_),
    .B(_0992_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Y(_0993_));
 sky130_fd_sc_hd__nand2b_2 _1649_ (.A_N(_0991_),
    .B(_0993_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Y(_0994_));
 sky130_fd_sc_hd__and4_2 _1650_ (.A(_0986_),
    .B(_0987_),
    .C(_0991_),
    .D(_0993_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0995_));
 sky130_fd_sc_hd__or4_2 _1651_ (.A(\nano.core.counter[4] ),
    .B(\nano.core.counter[1] ),
    .C(\nano.core.counter[0] ),
    .D(_0941_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0996_));
 sky130_fd_sc_hd__mux2_1 _1652_ (.A0(_0924_),
    .A1(\nano.core.cy ),
    .S(_0996_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0997_));
 sky130_fd_sc_hd__xor2_2 _1653_ (.A(_0991_),
    .B(_0997_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0998_));
 sky130_fd_sc_hd__nand2_2 _1654_ (.A(_0988_),
    .B(_0998_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Y(_0999_));
 sky130_fd_sc_hd__a32oi_2 _1655_ (.A1(_0986_),
    .A2(_0987_),
    .A3(_0998_),
    .B1(_0997_),
    .B2(_0991_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Y(_1000_));
 sky130_fd_sc_hd__o21a_2 _1656_ (.A1(_0988_),
    .A2(_0994_),
    .B1(_1000_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_1001_));
 sky130_fd_sc_hd__nor3b_2 _1657_ (.A(_0995_),
    .B(_1001_),
    .C_N(_0911_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Y(_1002_));
 sky130_fd_sc_hd__and4bb_2 _1658_ (.A_N(_0914_),
    .B_N(_1002_),
    .C(_0921_),
    .D(_0912_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_1003_));
 sky130_fd_sc_hd__mux2_1 _1659_ (.A0(\nano.core.ext_next_rs2[2] ),
    .A1(\nano.core.b_imm[2] ),
    .S(\nano.core.instr[5] ),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_1004_));
 sky130_fd_sc_hd__mux2_1 _1660_ (.A0(_1004_),
    .A1(\nano.core.data_out[2] ),
    .S(_0632_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_1005_));
 sky130_fd_sc_hd__and3_2 _1661_ (.A(_0578_),
    .B(_0919_),
    .C(_1005_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_1006_));
 sky130_fd_sc_hd__a221o_2 _1662_ (.A1(\nano.core.data_rs1 ),
    .A2(_0920_),
    .B1(_1006_),
    .B2(ui_in[0]),
    .C1(_1003_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_1007_));
 sky130_fd_sc_hd__a31o_2 _1663_ (.A1(\nano.load_value[6] ),
    .A2(_0914_),
    .A3(_0918_),
    .B1(_1007_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0049_));
 sky130_fd_sc_hd__mux2_1 _1664_ (.A0(\nano.load_value[2] ),
    .A1(\nano.load_value[5] ),
    .S(_0914_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_1008_));
 sky130_fd_sc_hd__and4_2 _1665_ (.A(_0578_),
    .B(ui_in[1]),
    .C(_0919_),
    .D(_1005_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_1009_));
 sky130_fd_sc_hd__a221o_2 _1666_ (.A1(\nano.load_value[1] ),
    .A2(_0920_),
    .B1(_0921_),
    .B2(_1008_),
    .C1(_1009_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0050_));
 sky130_fd_sc_hd__mux2_1 _1667_ (.A0(\nano.load_value[3] ),
    .A1(\nano.load_value[4] ),
    .S(_0914_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_1010_));
 sky130_fd_sc_hd__and4_2 _1668_ (.A(_0578_),
    .B(ui_in[2]),
    .C(_0919_),
    .D(_1005_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_1011_));
 sky130_fd_sc_hd__a221o_2 _1669_ (.A1(\nano.load_value[2] ),
    .A2(_0920_),
    .B1(_0921_),
    .B2(_1010_),
    .C1(_1011_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0051_));
 sky130_fd_sc_hd__mux2_1 _1670_ (.A0(\nano.load_value[2] ),
    .A1(\nano.load_value[5] ),
    .S(_0913_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_1012_));
 sky130_fd_sc_hd__and3b_2 _1671_ (.A_N(_0920_),
    .B(_1006_),
    .C(ui_in[4]),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_1013_));
 sky130_fd_sc_hd__a221o_2 _1672_ (.A1(\nano.load_value[4] ),
    .A2(_0920_),
    .B1(_0921_),
    .B2(_1012_),
    .C1(_1013_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0052_));
 sky130_fd_sc_hd__or2_2 _1673_ (.A(\nano.load_value[1] ),
    .B(_0913_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_1014_));
 sky130_fd_sc_hd__o211a_2 _1674_ (.A1(\nano.load_value[6] ),
    .A2(_0914_),
    .B1(_0921_),
    .C1(_1014_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_1015_));
 sky130_fd_sc_hd__a221o_2 _1675_ (.A1(\nano.load_value[5] ),
    .A2(_0920_),
    .B1(_1006_),
    .B2(ui_in[5]),
    .C1(_1015_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0053_));
 sky130_fd_sc_hd__nand2_2 _1676_ (.A(_0575_),
    .B(_0914_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Y(_1016_));
 sky130_fd_sc_hd__o211a_2 _1677_ (.A1(\nano.load_value[7] ),
    .A2(_0914_),
    .B1(_0921_),
    .C1(_1016_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_1017_));
 sky130_fd_sc_hd__a221o_2 _1678_ (.A1(\nano.load_value[6] ),
    .A2(_0920_),
    .B1(_1006_),
    .B2(ui_in[6]),
    .C1(_1017_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0054_));
 sky130_fd_sc_hd__or2_2 _1679_ (.A(\nano.rs1_value[31] ),
    .B(_0913_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_1018_));
 sky130_fd_sc_hd__o211a_2 _1680_ (.A1(\nano.rs1_value[8] ),
    .A2(_0914_),
    .B1(_0921_),
    .C1(_1018_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_1019_));
 sky130_fd_sc_hd__a221o_2 _1681_ (.A1(\nano.load_value[7] ),
    .A2(_0920_),
    .B1(_1006_),
    .B2(ui_in[7]),
    .C1(_1019_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0055_));
 sky130_fd_sc_hd__mux2_1 _1682_ (.A0(\nano.rs1_value[10] ),
    .A1(\nano.rs1_value[13] ),
    .S(_0913_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_1020_));
 sky130_fd_sc_hd__a21bo_2 _1683_ (.A1(_0915_),
    .A2(_1020_),
    .B1_N(_0917_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_1021_));
 sky130_fd_sc_hd__mux2_1 _1684_ (.A0(_1021_),
    .A1(\nano.rs1_value[12] ),
    .S(_0920_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0056_));
 sky130_fd_sc_hd__mux2_1 _1685_ (.A0(\nano.rs1_value[26] ),
    .A1(\nano.rs1_value[29] ),
    .S(_0913_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_1022_));
 sky130_fd_sc_hd__and3_2 _1686_ (.A(\nano.core.ext_next_rs1[2] ),
    .B(\nano.staging.normalize_sources ),
    .C(_0616_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_1023_));
 sky130_fd_sc_hd__a221o_2 _1687_ (.A1(\nano.rs1_value[28] ),
    .A2(_0920_),
    .B1(_0921_),
    .B2(_1022_),
    .C1(_1023_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0057_));
 sky130_fd_sc_hd__nand2_2 _1688_ (.A(\nano.core.i_imm[4] ),
    .B(_0910_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Y(_1024_));
 sky130_fd_sc_hd__o21a_2 _1689_ (.A1(\nano.core.i_imm[4] ),
    .A2(_0910_),
    .B1(_0923_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_1025_));
 sky130_fd_sc_hd__a22o_2 _1690_ (.A1(\nano.core.shift_amt_reg[4] ),
    .A2(_0922_),
    .B1(_1024_),
    .B2(_1025_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_1026_));
 sky130_fd_sc_hd__nand2_2 _1691_ (.A(\nano.core.ext_next_rs2[2] ),
    .B(_0910_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Y(_1027_));
 sky130_fd_sc_hd__o21a_2 _1692_ (.A1(\nano.core.ext_next_rs2[2] ),
    .A2(_0910_),
    .B1(_0923_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_1028_));
 sky130_fd_sc_hd__a22o_2 _1693_ (.A1(\nano.core.shift_amt_reg[2] ),
    .A2(_0922_),
    .B1(_1027_),
    .B2(_1028_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_1029_));
 sky130_fd_sc_hd__and4_2 _1694_ (.A(\nano.core.instr[5] ),
    .B(\nano.core.shift_amt_reg[0] ),
    .C(_0899_),
    .D(_0901_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_1030_));
 sky130_fd_sc_hd__a31o_2 _1695_ (.A1(_0899_),
    .A2(_0901_),
    .A3(_0907_),
    .B1(_0568_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_1031_));
 sky130_fd_sc_hd__or4_2 _1696_ (.A(\nano.core.ext_next_rs2[0] ),
    .B(_0898_),
    .C(_0902_),
    .D(_0908_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_1032_));
 sky130_fd_sc_hd__a31o_2 _1697_ (.A1(_0923_),
    .A2(_1031_),
    .A3(_1032_),
    .B1(_1030_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_1033_));
 sky130_fd_sc_hd__and4_2 _1698_ (.A(\nano.core.instr[5] ),
    .B(\nano.core.shift_amt_reg[1] ),
    .C(_0899_),
    .D(_0901_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_1034_));
 sky130_fd_sc_hd__a31o_2 _1699_ (.A1(_0899_),
    .A2(_0901_),
    .A3(_0907_),
    .B1(_0567_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_1035_));
 sky130_fd_sc_hd__or4_2 _1700_ (.A(\nano.core.ext_next_rs2[1] ),
    .B(_0898_),
    .C(_0902_),
    .D(_0908_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_1036_));
 sky130_fd_sc_hd__a31oi_2 _1701_ (.A1(_0923_),
    .A2(_1035_),
    .A3(_1036_),
    .B1(_1034_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Y(_1037_));
 sky130_fd_sc_hd__a31o_2 _1702_ (.A1(_0923_),
    .A2(_1035_),
    .A3(_1036_),
    .B1(_1034_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_1038_));
 sky130_fd_sc_hd__mux2_1 _1703_ (.A0(\nano.core.data_out[12] ),
    .A1(\nano.core.data_out[13] ),
    .S(_1033_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_1039_));
 sky130_fd_sc_hd__mux2_1 _1704_ (.A0(\nano.core.data_out[14] ),
    .A1(\nano.core.data_out[15] ),
    .S(_1033_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_1040_));
 sky130_fd_sc_hd__a21bo_2 _1705_ (.A1(_1037_),
    .A2(_1039_),
    .B1_N(_1029_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_1041_));
 sky130_fd_sc_hd__a21oi_2 _1706_ (.A1(_1038_),
    .A2(_1040_),
    .B1(_1041_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Y(_1042_));
 sky130_fd_sc_hd__nand2_2 _1707_ (.A(\nano.core.ext_next_rs2[3] ),
    .B(_0910_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Y(_1043_));
 sky130_fd_sc_hd__o21a_2 _1708_ (.A1(\nano.core.ext_next_rs2[3] ),
    .A2(_0910_),
    .B1(_0923_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_1044_));
 sky130_fd_sc_hd__a22o_2 _1709_ (.A1(\nano.core.shift_amt_reg[3] ),
    .A2(_0922_),
    .B1(_1043_),
    .B2(_1044_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_1045_));
 sky130_fd_sc_hd__mux2_1 _1710_ (.A0(\nano.core.data_out[8] ),
    .A1(\nano.core.data_out[9] ),
    .S(_1033_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_1046_));
 sky130_fd_sc_hd__mux2_1 _1711_ (.A0(\nano.core.data_out[10] ),
    .A1(\nano.core.data_out[11] ),
    .S(_1033_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_1047_));
 sky130_fd_sc_hd__mux2_1 _1712_ (.A0(_1046_),
    .A1(_1047_),
    .S(_1038_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_1048_));
 sky130_fd_sc_hd__o21ai_2 _1713_ (.A1(_1029_),
    .A2(_1048_),
    .B1(_1045_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Y(_1049_));
 sky130_fd_sc_hd__mux2_1 _1714_ (.A0(\nano.core.data_out[4] ),
    .A1(\nano.core.data_out[5] ),
    .S(_1033_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_1050_));
 sky130_fd_sc_hd__nand2_2 _1715_ (.A(_1037_),
    .B(_1050_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Y(_1051_));
 sky130_fd_sc_hd__mux2_1 _1716_ (.A0(\nano.core.data_out[6] ),
    .A1(\nano.core.data_out[7] ),
    .S(_1033_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_1052_));
 sky130_fd_sc_hd__nand2_2 _1717_ (.A(_1038_),
    .B(_1052_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Y(_1053_));
 sky130_fd_sc_hd__mux2_1 _1718_ (.A0(\nano.core.data_out[2] ),
    .A1(\nano.core.data_out[3] ),
    .S(_1033_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_1054_));
 sky130_fd_sc_hd__mux2_1 _1719_ (.A0(\nano.core.data_out[0] ),
    .A1(\nano.core.data_out[1] ),
    .S(_1033_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_1055_));
 sky130_fd_sc_hd__mux2_1 _1720_ (.A0(_1054_),
    .A1(_1055_),
    .S(_1037_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_1056_));
 sky130_fd_sc_hd__nor2_2 _1721_ (.A(_1029_),
    .B(_1056_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Y(_1057_));
 sky130_fd_sc_hd__a31o_2 _1722_ (.A1(_1029_),
    .A2(_1051_),
    .A3(_1053_),
    .B1(_1045_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_1058_));
 sky130_fd_sc_hd__o22a_2 _1723_ (.A1(_1042_),
    .A2(_1049_),
    .B1(_1057_),
    .B2(_1058_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_1059_));
 sky130_fd_sc_hd__nor2_2 _1724_ (.A(_1026_),
    .B(_1059_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Y(_1060_));
 sky130_fd_sc_hd__and2_2 _1725_ (.A(\nano.core.counter[0] ),
    .B(_0910_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_1061_));
 sky130_fd_sc_hd__or2_2 _1726_ (.A(\nano.core.counter[0] ),
    .B(_0910_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_1062_));
 sky130_fd_sc_hd__o221a_2 _1727_ (.A1(\nano.core.counter[1] ),
    .A2(_1038_),
    .B1(_1061_),
    .B2(_1033_),
    .C1(_1062_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_1063_));
 sky130_fd_sc_hd__a221o_2 _1728_ (.A1(\nano.core.counter[2] ),
    .A2(_1029_),
    .B1(_1038_),
    .B2(\nano.core.counter[1] ),
    .C1(_1063_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_1064_));
 sky130_fd_sc_hd__o221a_2 _1729_ (.A1(\nano.core.counter[2] ),
    .A2(_1029_),
    .B1(_1045_),
    .B2(\nano.core.counter[3] ),
    .C1(_1064_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_1065_));
 sky130_fd_sc_hd__a22o_2 _1730_ (.A1(\nano.core.counter[4] ),
    .A2(_1026_),
    .B1(_1045_),
    .B2(\nano.core.counter[3] ),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_1066_));
 sky130_fd_sc_hd__o22a_2 _1731_ (.A1(\nano.core.counter[4] ),
    .A2(_1026_),
    .B1(_1065_),
    .B2(_1066_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_1067_));
 sky130_fd_sc_hd__mux2_1 _1732_ (.A0(\nano.core.data_out[24] ),
    .A1(\nano.core.data_out[25] ),
    .S(_1033_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_1068_));
 sky130_fd_sc_hd__mux2_1 _1733_ (.A0(\nano.core.data_out[26] ),
    .A1(\nano.core.data_out[27] ),
    .S(_1033_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_1069_));
 sky130_fd_sc_hd__mux2_1 _1734_ (.A0(_1068_),
    .A1(_1069_),
    .S(_1038_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_1070_));
 sky130_fd_sc_hd__mux2_1 _1735_ (.A0(\nano.core.data_out[28] ),
    .A1(\nano.core.data_out[29] ),
    .S(_1033_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_1071_));
 sky130_fd_sc_hd__and2_2 _1736_ (.A(_1037_),
    .B(_1071_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_1072_));
 sky130_fd_sc_hd__mux2_1 _1737_ (.A0(\nano.core.data_out[30] ),
    .A1(\nano.core.data_out[31] ),
    .S(_1033_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_1073_));
 sky130_fd_sc_hd__a21bo_2 _1738_ (.A1(_1038_),
    .A2(_1073_),
    .B1_N(_1029_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_1074_));
 sky130_fd_sc_hd__o22a_2 _1739_ (.A1(_1029_),
    .A2(_1070_),
    .B1(_1072_),
    .B2(_1074_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_1075_));
 sky130_fd_sc_hd__mux2_1 _1740_ (.A0(\nano.core.data_out[20] ),
    .A1(\nano.core.data_out[21] ),
    .S(_1033_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_1076_));
 sky130_fd_sc_hd__and2_2 _1741_ (.A(_1037_),
    .B(_1076_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_1077_));
 sky130_fd_sc_hd__mux2_1 _1742_ (.A0(\nano.core.data_out[22] ),
    .A1(\nano.core.data_out[23] ),
    .S(_1033_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_1078_));
 sky130_fd_sc_hd__a21bo_2 _1743_ (.A1(_1038_),
    .A2(_1078_),
    .B1_N(_1029_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_1079_));
 sky130_fd_sc_hd__mux2_1 _1744_ (.A0(\nano.core.data_out[16] ),
    .A1(\nano.core.data_out[17] ),
    .S(_1033_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_1080_));
 sky130_fd_sc_hd__mux2_1 _1745_ (.A0(\nano.core.data_out[18] ),
    .A1(\nano.core.data_out[19] ),
    .S(_1033_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_1081_));
 sky130_fd_sc_hd__mux2_1 _1746_ (.A0(_1080_),
    .A1(_1081_),
    .S(_1038_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_1082_));
 sky130_fd_sc_hd__o22a_2 _1747_ (.A1(_1077_),
    .A2(_1079_),
    .B1(_1082_),
    .B2(_1029_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_1083_));
 sky130_fd_sc_hd__mux2_1 _1748_ (.A0(_1083_),
    .A1(_1075_),
    .S(_1045_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_1084_));
 sky130_fd_sc_hd__a211o_2 _1749_ (.A1(_1026_),
    .A2(_1084_),
    .B1(_1067_),
    .C1(_1060_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_1085_));
 sky130_fd_sc_hd__nand2_2 _1750_ (.A(\nano.core.b_imm[10] ),
    .B(\nano.core.data_out[31] ),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Y(_1086_));
 sky130_fd_sc_hd__a21oi_2 _1751_ (.A1(_1067_),
    .A2(_1086_),
    .B1(_0910_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Y(_1087_));
 sky130_fd_sc_hd__nor2_2 _1752_ (.A(_0904_),
    .B(_0993_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Y(_1088_));
 sky130_fd_sc_hd__inv_2 _1753_ (.A(_1088_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Y(_1089_));
 sky130_fd_sc_hd__a31o_2 _1754_ (.A1(\nano.core.data_out[0] ),
    .A2(_0910_),
    .A3(_1067_),
    .B1(_1089_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_1090_));
 sky130_fd_sc_hd__a21oi_2 _1755_ (.A1(_1085_),
    .A2(_1087_),
    .B1(_1090_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Y(_1091_));
 sky130_fd_sc_hd__o2111a_2 _1756_ (.A1(_0988_),
    .A2(_0998_),
    .B1(_0993_),
    .C1(_0905_),
    .D1(_0910_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_1092_));
 sky130_fd_sc_hd__o21a_2 _1757_ (.A1(_0926_),
    .A2(_0985_),
    .B1(_0991_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_1093_));
 sky130_fd_sc_hd__nand2b_2 _1758_ (.A_N(_0904_),
    .B(_1093_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Y(_1094_));
 sky130_fd_sc_hd__or3_2 _1759_ (.A(_0926_),
    .B(_0985_),
    .C(_0991_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_1095_));
 sky130_fd_sc_hd__and4_2 _1760_ (.A(_0570_),
    .B(_0909_),
    .C(_1094_),
    .D(_1095_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_1096_));
 sky130_fd_sc_hd__a41o_2 _1761_ (.A1(\nano.core.instr[13] ),
    .A2(\nano.core.instr[12] ),
    .A3(_0909_),
    .A4(_1093_),
    .B1(_1096_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0196_));
 sky130_fd_sc_hd__a21o_2 _1762_ (.A1(_0999_),
    .A2(_1092_),
    .B1(_0196_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0197_));
 sky130_fd_sc_hd__a2bb2o_2 _1763_ (.A1_N(_0197_),
    .A2_N(_1088_),
    .B1(_0583_),
    .B2(_0571_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0198_));
 sky130_fd_sc_hd__o21ai_2 _1764_ (.A1(_1091_),
    .A2(_0198_),
    .B1(_0897_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Y(_0199_));
 sky130_fd_sc_hd__o21a_2 _1765_ (.A1(\nano.core.data_rs1 ),
    .A2(_0897_),
    .B1(_0913_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0200_));
 sky130_fd_sc_hd__a22o_2 _1766_ (.A1(\nano.rs1_value[23] ),
    .A2(_0914_),
    .B1(_0199_),
    .B2(_0200_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0201_));
 sky130_fd_sc_hd__a22o_2 _1767_ (.A1(\nano.rs1_value[31] ),
    .A2(_0920_),
    .B1(_0921_),
    .B2(_0201_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0058_));
 sky130_fd_sc_hd__mux2_1 _1768_ (.A0(\nano.rs1_value[9] ),
    .A1(\nano.rs1_value[14] ),
    .S(_0914_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0202_));
 sky130_fd_sc_hd__a22o_2 _1769_ (.A1(\nano.rs1_value[8] ),
    .A2(_0920_),
    .B1(_0921_),
    .B2(_0202_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0059_));
 sky130_fd_sc_hd__mux2_1 _1770_ (.A0(\nano.rs1_value[10] ),
    .A1(\nano.rs1_value[13] ),
    .S(_0914_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0203_));
 sky130_fd_sc_hd__a22o_2 _1771_ (.A1(\nano.rs1_value[9] ),
    .A2(_0920_),
    .B1(_0921_),
    .B2(_0203_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0060_));
 sky130_fd_sc_hd__mux2_1 _1772_ (.A0(\nano.rs1_value[11] ),
    .A1(\nano.rs1_value[12] ),
    .S(_0914_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0204_));
 sky130_fd_sc_hd__a22o_2 _1773_ (.A1(\nano.rs1_value[10] ),
    .A2(_0920_),
    .B1(_0921_),
    .B2(_0204_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0061_));
 sky130_fd_sc_hd__mux2_1 _1774_ (.A0(\nano.rs1_value[9] ),
    .A1(\nano.rs1_value[14] ),
    .S(_0913_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0205_));
 sky130_fd_sc_hd__a22o_2 _1775_ (.A1(\nano.rs1_value[13] ),
    .A2(_0920_),
    .B1(_0921_),
    .B2(_0205_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0062_));
 sky130_fd_sc_hd__mux2_1 _1776_ (.A0(\nano.rs1_value[15] ),
    .A1(\nano.rs1_value[8] ),
    .S(_0914_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0206_));
 sky130_fd_sc_hd__a22o_2 _1777_ (.A1(\nano.rs1_value[14] ),
    .A2(_0920_),
    .B1(_0921_),
    .B2(_0206_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0063_));
 sky130_fd_sc_hd__mux2_1 _1778_ (.A0(\nano.rs1_value[16] ),
    .A1(\nano.load_value[7] ),
    .S(_0914_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0207_));
 sky130_fd_sc_hd__a22o_2 _1779_ (.A1(\nano.rs1_value[15] ),
    .A2(_0920_),
    .B1(_0921_),
    .B2(_0207_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0064_));
 sky130_fd_sc_hd__mux2_1 _1780_ (.A0(\nano.rs1_value[17] ),
    .A1(\nano.rs1_value[22] ),
    .S(_0914_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0208_));
 sky130_fd_sc_hd__a22o_2 _1781_ (.A1(\nano.rs1_value[16] ),
    .A2(_0920_),
    .B1(_0921_),
    .B2(_0208_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0065_));
 sky130_fd_sc_hd__mux2_1 _1782_ (.A0(\nano.rs1_value[18] ),
    .A1(\nano.rs1_value[21] ),
    .S(_0914_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0209_));
 sky130_fd_sc_hd__a22o_2 _1783_ (.A1(\nano.rs1_value[17] ),
    .A2(_0920_),
    .B1(_0921_),
    .B2(_0209_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0066_));
 sky130_fd_sc_hd__mux2_1 _1784_ (.A0(\nano.rs1_value[19] ),
    .A1(\nano.rs1_value[20] ),
    .S(_0914_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0210_));
 sky130_fd_sc_hd__a22o_2 _1785_ (.A1(\nano.rs1_value[18] ),
    .A2(_0920_),
    .B1(_0921_),
    .B2(_0210_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0067_));
 sky130_fd_sc_hd__mux2_1 _1786_ (.A0(\nano.rs1_value[18] ),
    .A1(\nano.rs1_value[21] ),
    .S(_0913_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0211_));
 sky130_fd_sc_hd__a22o_2 _1787_ (.A1(\nano.rs1_value[20] ),
    .A2(_0920_),
    .B1(_0921_),
    .B2(_0211_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0068_));
 sky130_fd_sc_hd__mux2_1 _1788_ (.A0(\nano.rs1_value[17] ),
    .A1(\nano.rs1_value[22] ),
    .S(_0913_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0212_));
 sky130_fd_sc_hd__a22o_2 _1789_ (.A1(\nano.rs1_value[21] ),
    .A2(_0920_),
    .B1(_0921_),
    .B2(_0212_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0069_));
 sky130_fd_sc_hd__mux2_1 _1790_ (.A0(\nano.rs1_value[16] ),
    .A1(\nano.rs1_value[23] ),
    .S(_0913_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0213_));
 sky130_fd_sc_hd__a22o_2 _1791_ (.A1(\nano.rs1_value[22] ),
    .A2(_0920_),
    .B1(_0921_),
    .B2(_0213_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0070_));
 sky130_fd_sc_hd__mux2_1 _1792_ (.A0(\nano.rs1_value[15] ),
    .A1(\nano.rs1_value[24] ),
    .S(_0913_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0214_));
 sky130_fd_sc_hd__a22o_2 _1793_ (.A1(\nano.rs1_value[23] ),
    .A2(_0920_),
    .B1(_0921_),
    .B2(_0214_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0071_));
 sky130_fd_sc_hd__mux2_1 _1794_ (.A0(\nano.rs1_value[25] ),
    .A1(\nano.rs1_value[30] ),
    .S(_0914_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0215_));
 sky130_fd_sc_hd__a22o_2 _1795_ (.A1(\nano.rs1_value[24] ),
    .A2(_0920_),
    .B1(_0921_),
    .B2(_0215_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0072_));
 sky130_fd_sc_hd__mux2_1 _1796_ (.A0(\nano.rs1_value[26] ),
    .A1(\nano.rs1_value[29] ),
    .S(_0914_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0216_));
 sky130_fd_sc_hd__a22o_2 _1797_ (.A1(\nano.rs1_value[25] ),
    .A2(_0920_),
    .B1(_0921_),
    .B2(_0216_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0073_));
 sky130_fd_sc_hd__mux2_1 _1798_ (.A0(\nano.rs1_value[27] ),
    .A1(\nano.rs1_value[28] ),
    .S(_0914_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0217_));
 sky130_fd_sc_hd__a22o_2 _1799_ (.A1(\nano.rs1_value[26] ),
    .A2(_0920_),
    .B1(_0921_),
    .B2(_0217_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0074_));
 sky130_fd_sc_hd__mux2_1 _1800_ (.A0(\nano.rs1_value[25] ),
    .A1(\nano.rs1_value[30] ),
    .S(_0913_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0218_));
 sky130_fd_sc_hd__a22o_2 _1801_ (.A1(\nano.rs1_value[29] ),
    .A2(_0920_),
    .B1(_0921_),
    .B2(_0218_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0075_));
 sky130_fd_sc_hd__mux2_1 _1802_ (.A0(uio_in[3]),
    .A1(\nano.rs1_value[31] ),
    .S(_0895_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0219_));
 sky130_fd_sc_hd__mux2_1 _1803_ (.A0(\nano.rs1_value[24] ),
    .A1(_0219_),
    .S(_0913_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0220_));
 sky130_fd_sc_hd__a22o_2 _1804_ (.A1(\nano.rs1_value[30] ),
    .A2(_0920_),
    .B1(_0921_),
    .B2(_0220_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0076_));
 sky130_fd_sc_hd__a21o_2 _1805_ (.A1(_0914_),
    .A2(_0918_),
    .B1(_0920_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0221_));
 sky130_fd_sc_hd__inv_2 _1806_ (.A(_0221_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Y(_0222_));
 sky130_fd_sc_hd__a221o_2 _1807_ (.A1(\nano.load_value[4] ),
    .A2(_0918_),
    .B1(_1006_),
    .B2(ui_in[3]),
    .C1(_0221_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0223_));
 sky130_fd_sc_hd__o21a_2 _1808_ (.A1(\nano.load_value[3] ),
    .A2(_0222_),
    .B1(_0223_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0077_));
 sky130_fd_sc_hd__a32o_2 _1809_ (.A1(\nano.rs1_value[12] ),
    .A2(_0913_),
    .A3(_0921_),
    .B1(_0221_),
    .B2(\nano.rs1_value[11] ),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0078_));
 sky130_fd_sc_hd__a32o_2 _1810_ (.A1(\nano.rs1_value[20] ),
    .A2(_0913_),
    .A3(_0921_),
    .B1(_0221_),
    .B2(\nano.rs1_value[19] ),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0079_));
 sky130_fd_sc_hd__a32o_2 _1811_ (.A1(\nano.rs1_value[28] ),
    .A2(_0913_),
    .A3(_0921_),
    .B1(_0221_),
    .B2(\nano.rs1_value[27] ),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0080_));
 sky130_fd_sc_hd__a21oi_2 _1812_ (.A1(_0571_),
    .A2(_0898_),
    .B1(_0900_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Y(_0224_));
 sky130_fd_sc_hd__or4_2 _1813_ (.A(_0564_),
    .B(\nano.core.cycle[2] ),
    .C(\nano.core.cycle[1] ),
    .D(_0605_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0225_));
 sky130_fd_sc_hd__a311o_2 _1814_ (.A1(\nano.core.counter[4] ),
    .A2(\nano.core.counter[2] ),
    .A3(\nano.core.counter[1] ),
    .B1(_0224_),
    .C1(_0225_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0226_));
 sky130_fd_sc_hd__a21oi_2 _1815_ (.A1(\nano.core.counter[3] ),
    .A2(\nano.core.counter[1] ),
    .B1(_0963_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Y(_0227_));
 sky130_fd_sc_hd__or3_2 _1816_ (.A(_0564_),
    .B(\nano.core.cycle[2] ),
    .C(_0227_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0228_));
 sky130_fd_sc_hd__or3_2 _1817_ (.A(_0626_),
    .B(_0687_),
    .C(_0228_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0229_));
 sky130_fd_sc_hd__mux2_1 _1818_ (.A0(\nano.pc[1] ),
    .A1(\nano.pc[2] ),
    .S(_0229_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0230_));
 sky130_fd_sc_hd__mux2_1 _1819_ (.A0(\nano.pc[3] ),
    .A1(_0230_),
    .S(_0226_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0231_));
 sky130_fd_sc_hd__and2_2 _1820_ (.A(_0609_),
    .B(_0647_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0232_));
 sky130_fd_sc_hd__nand2_2 _1821_ (.A(_0609_),
    .B(_0647_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Y(_0233_));
 sky130_fd_sc_hd__or2_2 _1822_ (.A(_0231_),
    .B(_0232_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0234_));
 sky130_fd_sc_hd__nor2_2 _1823_ (.A(_0687_),
    .B(_0996_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Y(_0235_));
 sky130_fd_sc_hd__o221a_2 _1824_ (.A1(_0988_),
    .A2(_0994_),
    .B1(_0995_),
    .B2(_1000_),
    .C1(\nano.core.instr[14] ),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0236_));
 sky130_fd_sc_hd__xnor2_2 _1825_ (.A(\nano.core.data_rs2 ),
    .B(\nano.core.data_rs1 ),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Y(_0237_));
 sky130_fd_sc_hd__and2_2 _1826_ (.A(\nano.core.is_equal_reg ),
    .B(_0237_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0238_));
 sky130_fd_sc_hd__and3_2 _1827_ (.A(\nano.core.is_equal_reg ),
    .B(_0569_),
    .C(_0237_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0239_));
 sky130_fd_sc_hd__o21ai_2 _1828_ (.A1(_0236_),
    .A2(_0239_),
    .B1(\nano.core.instr[12] ),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Y(_0240_));
 sky130_fd_sc_hd__o311a_2 _1829_ (.A1(\nano.core.instr[12] ),
    .A2(_0236_),
    .A3(_0239_),
    .B1(_0609_),
    .C1(_0620_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0241_));
 sky130_fd_sc_hd__a21o_2 _1830_ (.A1(_0240_),
    .A2(_0241_),
    .B1(_0235_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0242_));
 sky130_fd_sc_hd__a21o_2 _1831_ (.A1(_0601_),
    .A2(_0242_),
    .B1(\nano.branch_taken ),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0243_));
 sky130_fd_sc_hd__nor2_2 _1832_ (.A(\nano.pc[1] ),
    .B(_0687_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Y(_0244_));
 sky130_fd_sc_hd__a221oi_2 _1833_ (.A1(\nano.pc[2] ),
    .A2(_0687_),
    .B1(_0243_),
    .B2(_0620_),
    .C1(_0244_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Y(_0245_));
 sky130_fd_sc_hd__a31o_2 _1834_ (.A1(\nano.core.data_out[1] ),
    .A2(_0620_),
    .A3(_0243_),
    .B1(_0233_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0246_));
 sky130_fd_sc_hd__o211a_2 _1835_ (.A1(_0245_),
    .A2(_0246_),
    .B1(\nano.core.execute_enable ),
    .C1(_0234_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0247_));
 sky130_fd_sc_hd__a21oi_2 _1836_ (.A1(\nano.state[12] ),
    .A2(_0598_),
    .B1(_0648_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Y(_0248_));
 sky130_fd_sc_hd__inv_2 _1837_ (.A(_0248_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Y(_0249_));
 sky130_fd_sc_hd__nor2_2 _1838_ (.A(\nano.core.execute_enable ),
    .B(_0588_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Y(_0250_));
 sky130_fd_sc_hd__nand2_2 _1839_ (.A(_0564_),
    .B(_0587_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Y(_0251_));
 sky130_fd_sc_hd__a221o_2 _1840_ (.A1(_0635_),
    .A2(_0231_),
    .B1(_0249_),
    .B2(_0581_),
    .C1(_0250_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0252_));
 sky130_fd_sc_hd__o221a_2 _1841_ (.A1(_0231_),
    .A2(_0251_),
    .B1(_0252_),
    .B2(_0247_),
    .C1(rst_n),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0081_));
 sky130_fd_sc_hd__mux2_1 _1842_ (.A0(_0887_),
    .A1(_0581_),
    .S(_0686_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0253_));
 sky130_fd_sc_hd__a21oi_2 _1843_ (.A1(_0620_),
    .A2(_0243_),
    .B1(_0253_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Y(_0254_));
 sky130_fd_sc_hd__a31o_2 _1844_ (.A1(\nano.core.data_out[2] ),
    .A2(_0620_),
    .A3(_0243_),
    .B1(_0233_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0255_));
 sky130_fd_sc_hd__mux2_1 _1845_ (.A0(\nano.pc[2] ),
    .A1(\nano.pc[3] ),
    .S(_0229_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0256_));
 sky130_fd_sc_hd__mux2_1 _1846_ (.A0(\nano.pc[4] ),
    .A1(_0256_),
    .S(_0226_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0257_));
 sky130_fd_sc_hd__o221a_2 _1847_ (.A1(_0254_),
    .A2(_0255_),
    .B1(_0257_),
    .B2(_0232_),
    .C1(\nano.core.execute_enable ),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0258_));
 sky130_fd_sc_hd__nor2_2 _1848_ (.A(_0887_),
    .B(_0248_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Y(_0259_));
 sky130_fd_sc_hd__a211o_2 _1849_ (.A1(_0635_),
    .A2(_0257_),
    .B1(_0259_),
    .C1(_0250_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0260_));
 sky130_fd_sc_hd__o221a_2 _1850_ (.A1(_0251_),
    .A2(_0257_),
    .B1(_0258_),
    .B2(_0260_),
    .C1(rst_n),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0082_));
 sky130_fd_sc_hd__nor2_2 _1851_ (.A(\nano.pc[3] ),
    .B(_0687_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Y(_0261_));
 sky130_fd_sc_hd__a221oi_2 _1852_ (.A1(_0687_),
    .A2(_0805_),
    .B1(_0243_),
    .B2(_0620_),
    .C1(_0261_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Y(_0262_));
 sky130_fd_sc_hd__a31o_2 _1853_ (.A1(\nano.core.data_out[3] ),
    .A2(_0620_),
    .A3(_0243_),
    .B1(_0233_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0263_));
 sky130_fd_sc_hd__mux2_1 _1854_ (.A0(\nano.pc[3] ),
    .A1(\nano.pc[4] ),
    .S(_0229_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0264_));
 sky130_fd_sc_hd__mux2_1 _1855_ (.A0(\nano.pc[5] ),
    .A1(_0264_),
    .S(_0226_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0265_));
 sky130_fd_sc_hd__o221a_2 _1856_ (.A1(_0262_),
    .A2(_0263_),
    .B1(_0265_),
    .B2(_0232_),
    .C1(\nano.core.execute_enable ),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0266_));
 sky130_fd_sc_hd__nor2_2 _1857_ (.A(_0805_),
    .B(_0248_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Y(_0267_));
 sky130_fd_sc_hd__a211o_2 _1858_ (.A1(_0635_),
    .A2(_0265_),
    .B1(_0267_),
    .C1(_0250_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0268_));
 sky130_fd_sc_hd__o221a_2 _1859_ (.A1(_0251_),
    .A2(_0265_),
    .B1(_0266_),
    .B2(_0268_),
    .C1(rst_n),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0083_));
 sky130_fd_sc_hd__nor2_2 _1860_ (.A(\nano.pc[4] ),
    .B(_0687_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Y(_0269_));
 sky130_fd_sc_hd__a221oi_2 _1861_ (.A1(_0687_),
    .A2(_0810_),
    .B1(_0243_),
    .B2(_0620_),
    .C1(_0269_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Y(_0270_));
 sky130_fd_sc_hd__a31o_2 _1862_ (.A1(\nano.core.data_out[4] ),
    .A2(_0620_),
    .A3(_0243_),
    .B1(_0233_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0271_));
 sky130_fd_sc_hd__mux2_1 _1863_ (.A0(\nano.pc[4] ),
    .A1(\nano.pc[5] ),
    .S(_0229_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0272_));
 sky130_fd_sc_hd__mux2_1 _1864_ (.A0(\nano.pc[6] ),
    .A1(_0272_),
    .S(_0226_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0273_));
 sky130_fd_sc_hd__o221a_2 _1865_ (.A1(_0270_),
    .A2(_0271_),
    .B1(_0273_),
    .B2(_0232_),
    .C1(\nano.core.execute_enable ),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0274_));
 sky130_fd_sc_hd__nor2_2 _1866_ (.A(_0810_),
    .B(_0248_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Y(_0275_));
 sky130_fd_sc_hd__a211o_2 _1867_ (.A1(_0635_),
    .A2(_0273_),
    .B1(_0275_),
    .C1(_0250_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0276_));
 sky130_fd_sc_hd__o221a_2 _1868_ (.A1(_0251_),
    .A2(_0273_),
    .B1(_0274_),
    .B2(_0276_),
    .C1(rst_n),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0084_));
 sky130_fd_sc_hd__mux2_1 _1869_ (.A0(\nano.pc[5] ),
    .A1(\nano.pc[6] ),
    .S(_0229_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0277_));
 sky130_fd_sc_hd__mux2_1 _1870_ (.A0(\nano.pc[7] ),
    .A1(_0277_),
    .S(_0226_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0278_));
 sky130_fd_sc_hd__or2_2 _1871_ (.A(_0232_),
    .B(_0278_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0279_));
 sky130_fd_sc_hd__nor2_2 _1872_ (.A(\nano.pc[5] ),
    .B(_0687_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Y(_0280_));
 sky130_fd_sc_hd__a221oi_2 _1873_ (.A1(_0687_),
    .A2(_0815_),
    .B1(_0243_),
    .B2(_0620_),
    .C1(_0280_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Y(_0281_));
 sky130_fd_sc_hd__a31o_2 _1874_ (.A1(\nano.core.data_out[5] ),
    .A2(_0620_),
    .A3(_0243_),
    .B1(_0233_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0282_));
 sky130_fd_sc_hd__o211a_2 _1875_ (.A1(_0281_),
    .A2(_0282_),
    .B1(\nano.core.execute_enable ),
    .C1(_0279_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0283_));
 sky130_fd_sc_hd__nor2_2 _1876_ (.A(_0815_),
    .B(_0248_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Y(_0284_));
 sky130_fd_sc_hd__a211o_2 _1877_ (.A1(_0635_),
    .A2(_0278_),
    .B1(_0284_),
    .C1(_0250_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0285_));
 sky130_fd_sc_hd__o221a_2 _1878_ (.A1(_0251_),
    .A2(_0278_),
    .B1(_0283_),
    .B2(_0285_),
    .C1(rst_n),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0085_));
 sky130_fd_sc_hd__nor2_2 _1879_ (.A(\nano.pc[6] ),
    .B(_0687_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Y(_0286_));
 sky130_fd_sc_hd__a221oi_2 _1880_ (.A1(_0687_),
    .A2(_0818_),
    .B1(_0243_),
    .B2(_0620_),
    .C1(_0286_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Y(_0287_));
 sky130_fd_sc_hd__a31o_2 _1881_ (.A1(\nano.core.data_out[6] ),
    .A2(_0620_),
    .A3(_0243_),
    .B1(_0233_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0288_));
 sky130_fd_sc_hd__mux2_1 _1882_ (.A0(\nano.pc[6] ),
    .A1(\nano.pc[7] ),
    .S(_0229_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0289_));
 sky130_fd_sc_hd__mux2_1 _1883_ (.A0(\nano.pc[8] ),
    .A1(_0289_),
    .S(_0226_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0290_));
 sky130_fd_sc_hd__o221a_2 _1884_ (.A1(_0287_),
    .A2(_0288_),
    .B1(_0290_),
    .B2(_0232_),
    .C1(\nano.core.execute_enable ),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0291_));
 sky130_fd_sc_hd__nor2_2 _1885_ (.A(_0818_),
    .B(_0248_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Y(_0292_));
 sky130_fd_sc_hd__a211o_2 _1886_ (.A1(_0635_),
    .A2(_0290_),
    .B1(_0292_),
    .C1(_0250_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0293_));
 sky130_fd_sc_hd__o221a_2 _1887_ (.A1(_0251_),
    .A2(_0290_),
    .B1(_0291_),
    .B2(_0293_),
    .C1(rst_n),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0086_));
 sky130_fd_sc_hd__nor2_2 _1888_ (.A(\nano.pc[7] ),
    .B(_0687_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Y(_0294_));
 sky130_fd_sc_hd__a221oi_2 _1889_ (.A1(_0687_),
    .A2(_0823_),
    .B1(_0243_),
    .B2(_0620_),
    .C1(_0294_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Y(_0295_));
 sky130_fd_sc_hd__a31o_2 _1890_ (.A1(\nano.core.data_out[7] ),
    .A2(_0620_),
    .A3(_0243_),
    .B1(_0233_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0296_));
 sky130_fd_sc_hd__mux2_1 _1891_ (.A0(\nano.pc[7] ),
    .A1(\nano.pc[8] ),
    .S(_0229_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0297_));
 sky130_fd_sc_hd__mux2_1 _1892_ (.A0(\nano.pc[9] ),
    .A1(_0297_),
    .S(_0226_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0298_));
 sky130_fd_sc_hd__o221a_2 _1893_ (.A1(_0295_),
    .A2(_0296_),
    .B1(_0298_),
    .B2(_0232_),
    .C1(\nano.core.execute_enable ),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0299_));
 sky130_fd_sc_hd__nor2_2 _1894_ (.A(_0823_),
    .B(_0248_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Y(_0300_));
 sky130_fd_sc_hd__a211o_2 _1895_ (.A1(_0635_),
    .A2(_0298_),
    .B1(_0300_),
    .C1(_0250_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0301_));
 sky130_fd_sc_hd__o221a_2 _1896_ (.A1(_0251_),
    .A2(_0298_),
    .B1(_0299_),
    .B2(_0301_),
    .C1(rst_n),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0087_));
 sky130_fd_sc_hd__nor2_2 _1897_ (.A(\nano.pc[8] ),
    .B(_0687_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Y(_0302_));
 sky130_fd_sc_hd__a221oi_2 _1898_ (.A1(_0687_),
    .A2(_0826_),
    .B1(_0243_),
    .B2(_0620_),
    .C1(_0302_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Y(_0303_));
 sky130_fd_sc_hd__a31o_2 _1899_ (.A1(\nano.core.data_out[8] ),
    .A2(_0620_),
    .A3(_0243_),
    .B1(_0233_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0304_));
 sky130_fd_sc_hd__mux2_1 _1900_ (.A0(\nano.pc[8] ),
    .A1(\nano.pc[9] ),
    .S(_0229_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0305_));
 sky130_fd_sc_hd__mux2_1 _1901_ (.A0(\nano.pc[10] ),
    .A1(_0305_),
    .S(_0226_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0306_));
 sky130_fd_sc_hd__o221a_2 _1902_ (.A1(_0303_),
    .A2(_0304_),
    .B1(_0306_),
    .B2(_0232_),
    .C1(\nano.core.execute_enable ),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0307_));
 sky130_fd_sc_hd__nor2_2 _1903_ (.A(_0826_),
    .B(_0248_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Y(_0308_));
 sky130_fd_sc_hd__a211o_2 _1904_ (.A1(_0635_),
    .A2(_0306_),
    .B1(_0308_),
    .C1(_0250_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0309_));
 sky130_fd_sc_hd__o221a_2 _1905_ (.A1(_0251_),
    .A2(_0306_),
    .B1(_0307_),
    .B2(_0309_),
    .C1(rst_n),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0088_));
 sky130_fd_sc_hd__nor2_2 _1906_ (.A(\nano.pc[9] ),
    .B(_0687_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Y(_0310_));
 sky130_fd_sc_hd__a221oi_2 _1907_ (.A1(_0687_),
    .A2(_0831_),
    .B1(_0243_),
    .B2(_0620_),
    .C1(_0310_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Y(_0311_));
 sky130_fd_sc_hd__a31o_2 _1908_ (.A1(\nano.core.data_out[9] ),
    .A2(_0620_),
    .A3(_0243_),
    .B1(_0233_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0312_));
 sky130_fd_sc_hd__mux2_1 _1909_ (.A0(\nano.pc[9] ),
    .A1(\nano.pc[10] ),
    .S(_0229_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0313_));
 sky130_fd_sc_hd__mux2_1 _1910_ (.A0(\nano.pc[11] ),
    .A1(_0313_),
    .S(_0226_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0314_));
 sky130_fd_sc_hd__o221a_2 _1911_ (.A1(_0311_),
    .A2(_0312_),
    .B1(_0314_),
    .B2(_0232_),
    .C1(\nano.core.execute_enable ),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0315_));
 sky130_fd_sc_hd__nor2_2 _1912_ (.A(_0831_),
    .B(_0248_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Y(_0316_));
 sky130_fd_sc_hd__a211o_2 _1913_ (.A1(_0635_),
    .A2(_0314_),
    .B1(_0316_),
    .C1(_0250_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0317_));
 sky130_fd_sc_hd__o221a_2 _1914_ (.A1(_0251_),
    .A2(_0314_),
    .B1(_0315_),
    .B2(_0317_),
    .C1(rst_n),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0089_));
 sky130_fd_sc_hd__nor2_2 _1915_ (.A(\nano.pc[10] ),
    .B(_0687_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Y(_0318_));
 sky130_fd_sc_hd__a221oi_2 _1916_ (.A1(_0687_),
    .A2(_0890_),
    .B1(_0243_),
    .B2(_0620_),
    .C1(_0318_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Y(_0319_));
 sky130_fd_sc_hd__a31o_2 _1917_ (.A1(\nano.core.data_out[10] ),
    .A2(_0620_),
    .A3(_0243_),
    .B1(_0233_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0320_));
 sky130_fd_sc_hd__mux2_1 _1918_ (.A0(\nano.pc[10] ),
    .A1(\nano.pc[11] ),
    .S(_0229_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0321_));
 sky130_fd_sc_hd__mux2_1 _1919_ (.A0(\nano.pc[12] ),
    .A1(_0321_),
    .S(_0226_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0322_));
 sky130_fd_sc_hd__o221a_2 _1920_ (.A1(_0319_),
    .A2(_0320_),
    .B1(_0322_),
    .B2(_0232_),
    .C1(\nano.core.execute_enable ),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0323_));
 sky130_fd_sc_hd__nor2_2 _1921_ (.A(_0890_),
    .B(_0248_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Y(_0324_));
 sky130_fd_sc_hd__a211o_2 _1922_ (.A1(_0635_),
    .A2(_0322_),
    .B1(_0324_),
    .C1(_0250_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0325_));
 sky130_fd_sc_hd__o221a_2 _1923_ (.A1(_0251_),
    .A2(_0322_),
    .B1(_0323_),
    .B2(_0325_),
    .C1(rst_n),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0090_));
 sky130_fd_sc_hd__nor2_2 _1924_ (.A(\nano.pc[11] ),
    .B(_0687_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Y(_0326_));
 sky130_fd_sc_hd__a221oi_2 _1925_ (.A1(_0687_),
    .A2(_0835_),
    .B1(_0243_),
    .B2(_0620_),
    .C1(_0326_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Y(_0327_));
 sky130_fd_sc_hd__a31o_2 _1926_ (.A1(\nano.core.data_out[11] ),
    .A2(_0620_),
    .A3(_0243_),
    .B1(_0233_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0328_));
 sky130_fd_sc_hd__mux2_1 _1927_ (.A0(\nano.pc[11] ),
    .A1(\nano.pc[12] ),
    .S(_0229_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0329_));
 sky130_fd_sc_hd__mux2_1 _1928_ (.A0(\nano.pc[13] ),
    .A1(_0329_),
    .S(_0226_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0330_));
 sky130_fd_sc_hd__o221a_2 _1929_ (.A1(_0327_),
    .A2(_0328_),
    .B1(_0330_),
    .B2(_0232_),
    .C1(\nano.core.execute_enable ),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0331_));
 sky130_fd_sc_hd__nor2_2 _1930_ (.A(_0835_),
    .B(_0248_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Y(_0332_));
 sky130_fd_sc_hd__a211o_2 _1931_ (.A1(_0635_),
    .A2(_0330_),
    .B1(_0332_),
    .C1(_0250_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0333_));
 sky130_fd_sc_hd__o221a_2 _1932_ (.A1(_0251_),
    .A2(_0330_),
    .B1(_0331_),
    .B2(_0333_),
    .C1(rst_n),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0091_));
 sky130_fd_sc_hd__nor2_2 _1933_ (.A(\nano.pc[12] ),
    .B(_0687_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Y(_0334_));
 sky130_fd_sc_hd__a221oi_2 _1934_ (.A1(_0687_),
    .A2(_0840_),
    .B1(_0243_),
    .B2(_0620_),
    .C1(_0334_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Y(_0335_));
 sky130_fd_sc_hd__a31o_2 _1935_ (.A1(\nano.core.data_out[12] ),
    .A2(_0620_),
    .A3(_0243_),
    .B1(_0233_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0336_));
 sky130_fd_sc_hd__mux2_1 _1936_ (.A0(\nano.pc[12] ),
    .A1(\nano.pc[13] ),
    .S(_0229_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0337_));
 sky130_fd_sc_hd__mux2_1 _1937_ (.A0(\nano.pc[14] ),
    .A1(_0337_),
    .S(_0226_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0338_));
 sky130_fd_sc_hd__o221a_2 _1938_ (.A1(_0335_),
    .A2(_0336_),
    .B1(_0338_),
    .B2(_0232_),
    .C1(\nano.core.execute_enable ),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0339_));
 sky130_fd_sc_hd__nor2_2 _1939_ (.A(_0840_),
    .B(_0248_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Y(_0340_));
 sky130_fd_sc_hd__a211o_2 _1940_ (.A1(_0635_),
    .A2(_0338_),
    .B1(_0340_),
    .C1(_0250_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0341_));
 sky130_fd_sc_hd__o221a_2 _1941_ (.A1(_0251_),
    .A2(_0338_),
    .B1(_0339_),
    .B2(_0341_),
    .C1(rst_n),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0092_));
 sky130_fd_sc_hd__nor2_2 _1942_ (.A(\nano.pc[13] ),
    .B(_0687_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Y(_0342_));
 sky130_fd_sc_hd__a221oi_2 _1943_ (.A1(_0687_),
    .A2(_0845_),
    .B1(_0243_),
    .B2(_0620_),
    .C1(_0342_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Y(_0343_));
 sky130_fd_sc_hd__a31o_2 _1944_ (.A1(\nano.core.data_out[13] ),
    .A2(_0620_),
    .A3(_0243_),
    .B1(_0233_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0344_));
 sky130_fd_sc_hd__mux2_1 _1945_ (.A0(\nano.pc[13] ),
    .A1(\nano.pc[14] ),
    .S(_0229_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0345_));
 sky130_fd_sc_hd__mux2_1 _1946_ (.A0(\nano.pc[15] ),
    .A1(_0345_),
    .S(_0226_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0346_));
 sky130_fd_sc_hd__o221a_2 _1947_ (.A1(_0343_),
    .A2(_0344_),
    .B1(_0346_),
    .B2(_0232_),
    .C1(\nano.core.execute_enable ),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0347_));
 sky130_fd_sc_hd__nor2_2 _1948_ (.A(_0845_),
    .B(_0248_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Y(_0348_));
 sky130_fd_sc_hd__a211o_2 _1949_ (.A1(_0635_),
    .A2(_0346_),
    .B1(_0348_),
    .C1(_0250_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0349_));
 sky130_fd_sc_hd__o221a_2 _1950_ (.A1(_0251_),
    .A2(_0346_),
    .B1(_0347_),
    .B2(_0349_),
    .C1(rst_n),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0093_));
 sky130_fd_sc_hd__nor2_2 _1951_ (.A(\nano.pc[14] ),
    .B(_0687_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Y(_0350_));
 sky130_fd_sc_hd__a221oi_2 _1952_ (.A1(_0687_),
    .A2(_0848_),
    .B1(_0243_),
    .B2(_0620_),
    .C1(_0350_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Y(_0351_));
 sky130_fd_sc_hd__a31o_2 _1953_ (.A1(\nano.core.data_out[14] ),
    .A2(_0620_),
    .A3(_0243_),
    .B1(_0233_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0352_));
 sky130_fd_sc_hd__mux2_1 _1954_ (.A0(\nano.pc[14] ),
    .A1(\nano.pc[15] ),
    .S(_0229_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0353_));
 sky130_fd_sc_hd__mux2_1 _1955_ (.A0(\nano.pc[16] ),
    .A1(_0353_),
    .S(_0226_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0354_));
 sky130_fd_sc_hd__o221a_2 _1956_ (.A1(_0351_),
    .A2(_0352_),
    .B1(_0354_),
    .B2(_0232_),
    .C1(\nano.core.execute_enable ),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0355_));
 sky130_fd_sc_hd__nor2_2 _1957_ (.A(_0848_),
    .B(_0248_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Y(_0356_));
 sky130_fd_sc_hd__a211o_2 _1958_ (.A1(_0635_),
    .A2(_0354_),
    .B1(_0356_),
    .C1(_0250_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0357_));
 sky130_fd_sc_hd__o221a_2 _1959_ (.A1(_0251_),
    .A2(_0354_),
    .B1(_0355_),
    .B2(_0357_),
    .C1(rst_n),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0094_));
 sky130_fd_sc_hd__nor2_2 _1960_ (.A(\nano.pc[15] ),
    .B(_0687_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Y(_0358_));
 sky130_fd_sc_hd__a221oi_2 _1961_ (.A1(_0687_),
    .A2(_0853_),
    .B1(_0243_),
    .B2(_0620_),
    .C1(_0358_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Y(_0359_));
 sky130_fd_sc_hd__a31o_2 _1962_ (.A1(\nano.core.data_out[15] ),
    .A2(_0620_),
    .A3(_0243_),
    .B1(_0233_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0360_));
 sky130_fd_sc_hd__mux2_1 _1963_ (.A0(\nano.pc[15] ),
    .A1(\nano.pc[16] ),
    .S(_0229_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0361_));
 sky130_fd_sc_hd__mux2_1 _1964_ (.A0(\nano.pc[17] ),
    .A1(_0361_),
    .S(_0226_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0362_));
 sky130_fd_sc_hd__o221a_2 _1965_ (.A1(_0359_),
    .A2(_0360_),
    .B1(_0362_),
    .B2(_0232_),
    .C1(\nano.core.execute_enable ),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0363_));
 sky130_fd_sc_hd__nor2_2 _1966_ (.A(_0853_),
    .B(_0248_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Y(_0364_));
 sky130_fd_sc_hd__a211o_2 _1967_ (.A1(_0635_),
    .A2(_0362_),
    .B1(_0364_),
    .C1(_0250_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0365_));
 sky130_fd_sc_hd__o221a_2 _1968_ (.A1(_0251_),
    .A2(_0362_),
    .B1(_0363_),
    .B2(_0365_),
    .C1(rst_n),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0095_));
 sky130_fd_sc_hd__nor2_2 _1969_ (.A(\nano.pc[16] ),
    .B(_0687_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Y(_0366_));
 sky130_fd_sc_hd__a221oi_2 _1970_ (.A1(_0687_),
    .A2(_0858_),
    .B1(_0243_),
    .B2(_0620_),
    .C1(_0366_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Y(_0367_));
 sky130_fd_sc_hd__a31o_2 _1971_ (.A1(\nano.core.data_out[16] ),
    .A2(_0620_),
    .A3(_0243_),
    .B1(_0233_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0368_));
 sky130_fd_sc_hd__mux2_1 _1972_ (.A0(\nano.pc[16] ),
    .A1(\nano.pc[17] ),
    .S(_0229_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0369_));
 sky130_fd_sc_hd__mux2_1 _1973_ (.A0(\nano.pc[18] ),
    .A1(_0369_),
    .S(_0226_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0370_));
 sky130_fd_sc_hd__o221a_2 _1974_ (.A1(_0367_),
    .A2(_0368_),
    .B1(_0370_),
    .B2(_0232_),
    .C1(\nano.core.execute_enable ),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0371_));
 sky130_fd_sc_hd__nor2_2 _1975_ (.A(_0858_),
    .B(_0248_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Y(_0372_));
 sky130_fd_sc_hd__a211o_2 _1976_ (.A1(_0635_),
    .A2(_0370_),
    .B1(_0372_),
    .C1(_0250_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0373_));
 sky130_fd_sc_hd__o221a_2 _1977_ (.A1(_0251_),
    .A2(_0370_),
    .B1(_0371_),
    .B2(_0373_),
    .C1(rst_n),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0096_));
 sky130_fd_sc_hd__nor2_2 _1978_ (.A(\nano.pc[17] ),
    .B(_0687_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Y(_0374_));
 sky130_fd_sc_hd__a221oi_2 _1979_ (.A1(_0687_),
    .A2(_0861_),
    .B1(_0243_),
    .B2(_0620_),
    .C1(_0374_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Y(_0375_));
 sky130_fd_sc_hd__a31o_2 _1980_ (.A1(\nano.core.data_out[17] ),
    .A2(_0620_),
    .A3(_0243_),
    .B1(_0233_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0376_));
 sky130_fd_sc_hd__mux2_1 _1981_ (.A0(\nano.pc[17] ),
    .A1(\nano.pc[18] ),
    .S(_0229_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0377_));
 sky130_fd_sc_hd__mux2_1 _1982_ (.A0(\nano.pc[19] ),
    .A1(_0377_),
    .S(_0226_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0378_));
 sky130_fd_sc_hd__o221a_2 _1983_ (.A1(_0375_),
    .A2(_0376_),
    .B1(_0378_),
    .B2(_0232_),
    .C1(\nano.core.execute_enable ),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0379_));
 sky130_fd_sc_hd__nor2_2 _1984_ (.A(_0861_),
    .B(_0248_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Y(_0380_));
 sky130_fd_sc_hd__a211o_2 _1985_ (.A1(_0635_),
    .A2(_0378_),
    .B1(_0380_),
    .C1(_0250_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0381_));
 sky130_fd_sc_hd__o221a_2 _1986_ (.A1(_0251_),
    .A2(_0378_),
    .B1(_0379_),
    .B2(_0381_),
    .C1(rst_n),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0097_));
 sky130_fd_sc_hd__nor2_2 _1987_ (.A(\nano.pc[18] ),
    .B(_0687_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Y(_0382_));
 sky130_fd_sc_hd__a221oi_2 _1988_ (.A1(_0687_),
    .A2(_0893_),
    .B1(_0243_),
    .B2(_0620_),
    .C1(_0382_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Y(_0383_));
 sky130_fd_sc_hd__a31o_2 _1989_ (.A1(\nano.core.data_out[18] ),
    .A2(_0620_),
    .A3(_0243_),
    .B1(_0233_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0384_));
 sky130_fd_sc_hd__mux2_1 _1990_ (.A0(\nano.pc[18] ),
    .A1(\nano.pc[19] ),
    .S(_0229_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0385_));
 sky130_fd_sc_hd__mux2_1 _1991_ (.A0(\nano.pc[20] ),
    .A1(_0385_),
    .S(_0226_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0386_));
 sky130_fd_sc_hd__o221a_2 _1992_ (.A1(_0383_),
    .A2(_0384_),
    .B1(_0386_),
    .B2(_0232_),
    .C1(\nano.core.execute_enable ),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0387_));
 sky130_fd_sc_hd__nor2_2 _1993_ (.A(_0893_),
    .B(_0248_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Y(_0388_));
 sky130_fd_sc_hd__a211o_2 _1994_ (.A1(_0635_),
    .A2(_0386_),
    .B1(_0388_),
    .C1(_0250_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0389_));
 sky130_fd_sc_hd__o221a_2 _1995_ (.A1(_0251_),
    .A2(_0386_),
    .B1(_0387_),
    .B2(_0389_),
    .C1(rst_n),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0098_));
 sky130_fd_sc_hd__nor2_2 _1996_ (.A(\nano.pc[19] ),
    .B(_0687_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Y(_0390_));
 sky130_fd_sc_hd__a221oi_2 _1997_ (.A1(_0687_),
    .A2(_0867_),
    .B1(_0243_),
    .B2(_0620_),
    .C1(_0390_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Y(_0391_));
 sky130_fd_sc_hd__a31o_2 _1998_ (.A1(\nano.core.data_out[19] ),
    .A2(_0620_),
    .A3(_0243_),
    .B1(_0233_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0392_));
 sky130_fd_sc_hd__mux2_1 _1999_ (.A0(\nano.pc[19] ),
    .A1(\nano.pc[20] ),
    .S(_0229_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0393_));
 sky130_fd_sc_hd__mux2_1 _2000_ (.A0(\nano.pc[21] ),
    .A1(_0393_),
    .S(_0226_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0394_));
 sky130_fd_sc_hd__o221a_2 _2001_ (.A1(_0391_),
    .A2(_0392_),
    .B1(_0394_),
    .B2(_0232_),
    .C1(\nano.core.execute_enable ),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0395_));
 sky130_fd_sc_hd__nor2_2 _2002_ (.A(_0867_),
    .B(_0248_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Y(_0396_));
 sky130_fd_sc_hd__a211o_2 _2003_ (.A1(_0635_),
    .A2(_0394_),
    .B1(_0396_),
    .C1(_0250_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0397_));
 sky130_fd_sc_hd__o221a_2 _2004_ (.A1(_0251_),
    .A2(_0394_),
    .B1(_0395_),
    .B2(_0397_),
    .C1(rst_n),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0099_));
 sky130_fd_sc_hd__mux2_1 _2005_ (.A0(\nano.pc[20] ),
    .A1(\nano.pc[21] ),
    .S(_0229_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0398_));
 sky130_fd_sc_hd__mux2_1 _2006_ (.A0(\nano.core.pc ),
    .A1(_0398_),
    .S(_0226_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0399_));
 sky130_fd_sc_hd__or2_2 _2007_ (.A(_0232_),
    .B(_0399_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0400_));
 sky130_fd_sc_hd__nor2_2 _2008_ (.A(\nano.pc[20] ),
    .B(_0687_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Y(_0401_));
 sky130_fd_sc_hd__a221oi_2 _2009_ (.A1(_0687_),
    .A2(_0870_),
    .B1(_0243_),
    .B2(_0620_),
    .C1(_0401_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Y(_0402_));
 sky130_fd_sc_hd__a31o_2 _2010_ (.A1(\nano.core.data_out[20] ),
    .A2(_0620_),
    .A3(_0243_),
    .B1(_0233_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0403_));
 sky130_fd_sc_hd__o211a_2 _2011_ (.A1(_0402_),
    .A2(_0403_),
    .B1(\nano.core.execute_enable ),
    .C1(_0400_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0404_));
 sky130_fd_sc_hd__nor2_2 _2012_ (.A(_0870_),
    .B(_0248_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Y(_0405_));
 sky130_fd_sc_hd__a211o_2 _2013_ (.A1(_0635_),
    .A2(_0399_),
    .B1(_0405_),
    .C1(_0250_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0406_));
 sky130_fd_sc_hd__o221a_2 _2014_ (.A1(_0251_),
    .A2(_0399_),
    .B1(_0404_),
    .B2(_0406_),
    .C1(rst_n),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0100_));
 sky130_fd_sc_hd__a2111oi_2 _2015_ (.A1(_0620_),
    .A2(_0243_),
    .B1(_0686_),
    .C1(_0564_),
    .D1(_0233_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Y(_0407_));
 sky130_fd_sc_hd__nor2_2 _2016_ (.A(_0249_),
    .B(_0407_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Y(_0408_));
 sky130_fd_sc_hd__mux2_1 _2017_ (.A0(\nano.core.data_out[31] ),
    .A1(\nano.core.pc ),
    .S(_0229_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0409_));
 sky130_fd_sc_hd__mux2_1 _2018_ (.A0(\nano.pc[1] ),
    .A1(_0409_),
    .S(_0226_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0410_));
 sky130_fd_sc_hd__a211o_2 _2019_ (.A1(\nano.core.execute_enable ),
    .A2(_0233_),
    .B1(_0250_),
    .C1(_0635_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0411_));
 sky130_fd_sc_hd__and3_2 _2020_ (.A(\nano.core.execute_enable ),
    .B(\nano.core.data_out[31] ),
    .C(_0686_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0412_));
 sky130_fd_sc_hd__a22o_2 _2021_ (.A1(_0410_),
    .A2(_0411_),
    .B1(_0412_),
    .B2(_0232_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0413_));
 sky130_fd_sc_hd__or3_2 _2022_ (.A(_0249_),
    .B(_0407_),
    .C(_0413_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0414_));
 sky130_fd_sc_hd__o211a_2 _2023_ (.A1(\nano.core.pc ),
    .A2(_0408_),
    .B1(_0414_),
    .C1(rst_n),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0101_));
 sky130_fd_sc_hd__a31o_2 _2024_ (.A1(\nano.core.data_out[0] ),
    .A2(_0620_),
    .A3(_0243_),
    .B1(_0233_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0415_));
 sky130_fd_sc_hd__mux2_1 _2025_ (.A0(\nano.core.pc ),
    .A1(\nano.pc[1] ),
    .S(_0229_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0416_));
 sky130_fd_sc_hd__mux2_1 _2026_ (.A0(\nano.pc[2] ),
    .A1(_0416_),
    .S(_0226_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0417_));
 sky130_fd_sc_hd__o221a_2 _2027_ (.A1(_0795_),
    .A2(_0415_),
    .B1(_0417_),
    .B2(_0232_),
    .C1(\nano.core.execute_enable ),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0418_));
 sky130_fd_sc_hd__o21a_2 _2028_ (.A1(_0635_),
    .A2(_0250_),
    .B1(_0417_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0419_));
 sky130_fd_sc_hd__or3_2 _2029_ (.A(_0249_),
    .B(_0407_),
    .C(_0419_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0420_));
 sky130_fd_sc_hd__o221a_2 _2030_ (.A1(\nano.pc[1] ),
    .A2(_0408_),
    .B1(_0418_),
    .B2(_0420_),
    .C1(rst_n),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0102_));
 sky130_fd_sc_hd__or2_2 _2031_ (.A(uo_out[0]),
    .B(_0651_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0421_));
 sky130_fd_sc_hd__o211a_2 _2032_ (.A1(\nano.core.data_rs2 ),
    .A2(_0652_),
    .B1(_0421_),
    .C1(rst_n),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0103_));
 sky130_fd_sc_hd__or2_2 _2033_ (.A(uo_out[1]),
    .B(_0651_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0422_));
 sky130_fd_sc_hd__o211a_2 _2034_ (.A1(\nano.rs2_raw_value[1] ),
    .A2(_0652_),
    .B1(_0422_),
    .C1(rst_n),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0104_));
 sky130_fd_sc_hd__or2_2 _2035_ (.A(uo_out[2]),
    .B(_0651_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0423_));
 sky130_fd_sc_hd__o211a_2 _2036_ (.A1(\nano.rs2_raw_value[2] ),
    .A2(_0652_),
    .B1(_0423_),
    .C1(rst_n),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0105_));
 sky130_fd_sc_hd__or2_2 _2037_ (.A(uo_out[3]),
    .B(_0651_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0424_));
 sky130_fd_sc_hd__o211a_2 _2038_ (.A1(\nano.rs2_raw_value[3] ),
    .A2(_0652_),
    .B1(_0424_),
    .C1(rst_n),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0106_));
 sky130_fd_sc_hd__or2_2 _2039_ (.A(uo_out[4]),
    .B(_0651_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0425_));
 sky130_fd_sc_hd__o211a_2 _2040_ (.A1(\nano.rs2_raw_value[4] ),
    .A2(_0652_),
    .B1(_0425_),
    .C1(rst_n),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0107_));
 sky130_fd_sc_hd__or2_2 _2041_ (.A(uo_out[5]),
    .B(_0651_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0426_));
 sky130_fd_sc_hd__o211a_2 _2042_ (.A1(\nano.rs2_raw_value[5] ),
    .A2(_0652_),
    .B1(_0426_),
    .C1(rst_n),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0108_));
 sky130_fd_sc_hd__or2_2 _2043_ (.A(uo_out[6]),
    .B(_0651_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0427_));
 sky130_fd_sc_hd__o211a_2 _2044_ (.A1(\nano.rs2_raw_value[6] ),
    .A2(_0652_),
    .B1(_0427_),
    .C1(rst_n),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0109_));
 sky130_fd_sc_hd__or2_2 _2045_ (.A(uo_out[7]),
    .B(_0651_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0428_));
 sky130_fd_sc_hd__o211a_2 _2046_ (.A1(\nano.rs2_raw_value[7] ),
    .A2(_0652_),
    .B1(_0428_),
    .C1(rst_n),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0110_));
 sky130_fd_sc_hd__nand2b_2 _2047_ (.A_N(_0788_),
    .B(\nano.state[7] ),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Y(_0429_));
 sky130_fd_sc_hd__o21a_2 _2048_ (.A1(\nano.state[7] ),
    .A2(\nano.state[10] ),
    .B1(_0429_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0430_));
 sky130_fd_sc_hd__o21ai_2 _2049_ (.A1(\nano.state[7] ),
    .A2(\nano.state[10] ),
    .B1(_0429_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Y(_0431_));
 sky130_fd_sc_hd__mux2_1 _2050_ (.A0(\nano.decoded_instruction[6] ),
    .A1(\nano.core.b_imm[11] ),
    .S(\nano.state[10] ),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0432_));
 sky130_fd_sc_hd__mux2_1 _2051_ (.A0(\nano.decoded_instruction[7] ),
    .A1(_0432_),
    .S(_0430_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0433_));
 sky130_fd_sc_hd__or2_2 _2052_ (.A(_0574_),
    .B(_0433_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0111_));
 sky130_fd_sc_hd__mux2_1 _2053_ (.A0(\nano.core.instr[2] ),
    .A1(\nano.core.instr[6] ),
    .S(\nano.state[10] ),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0434_));
 sky130_fd_sc_hd__mux2_1 _2054_ (.A0(\nano.decoded_instruction[6] ),
    .A1(_0434_),
    .S(_0430_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0435_));
 sky130_fd_sc_hd__or2_2 _2055_ (.A(_0574_),
    .B(_0435_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0112_));
 sky130_fd_sc_hd__mux2_1 _2056_ (.A0(\nano.core.instr[3] ),
    .A1(\nano.core.instr[5] ),
    .S(\nano.state[10] ),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0436_));
 sky130_fd_sc_hd__or2_2 _2057_ (.A(_0431_),
    .B(_0436_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0437_));
 sky130_fd_sc_hd__o211a_2 _2058_ (.A1(\nano.core.instr[2] ),
    .A2(_0430_),
    .B1(_0437_),
    .C1(rst_n),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0113_));
 sky130_fd_sc_hd__or2_2 _2059_ (.A(\nano.core.instr[4] ),
    .B(_0431_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0438_));
 sky130_fd_sc_hd__o211a_2 _2060_ (.A1(\nano.core.instr[3] ),
    .A2(_0430_),
    .B1(_0438_),
    .C1(rst_n),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0114_));
 sky130_fd_sc_hd__mux2_1 _2061_ (.A0(\nano.core.instr[5] ),
    .A1(\nano.core.instr[3] ),
    .S(\nano.state[10] ),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0439_));
 sky130_fd_sc_hd__mux2_1 _2062_ (.A0(\nano.core.instr[4] ),
    .A1(_0439_),
    .S(_0430_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0440_));
 sky130_fd_sc_hd__or2_2 _2063_ (.A(_0574_),
    .B(_0440_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0115_));
 sky130_fd_sc_hd__mux2_1 _2064_ (.A0(\nano.core.instr[6] ),
    .A1(\nano.core.instr[2] ),
    .S(\nano.state[10] ),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0441_));
 sky130_fd_sc_hd__or2_2 _2065_ (.A(_0431_),
    .B(_0441_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0442_));
 sky130_fd_sc_hd__o211a_2 _2066_ (.A1(\nano.core.instr[5] ),
    .A2(_0430_),
    .B1(_0442_),
    .C1(rst_n),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0116_));
 sky130_fd_sc_hd__mux2_1 _2067_ (.A0(\nano.core.b_imm[11] ),
    .A1(\nano.decoded_instruction[6] ),
    .S(\nano.state[10] ),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0443_));
 sky130_fd_sc_hd__or2_2 _2068_ (.A(_0431_),
    .B(_0443_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0444_));
 sky130_fd_sc_hd__o211a_2 _2069_ (.A1(\nano.core.instr[6] ),
    .A2(_0430_),
    .B1(_0444_),
    .C1(rst_n),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0117_));
 sky130_fd_sc_hd__mux2_1 _2070_ (.A0(\nano.core.b_imm[1] ),
    .A1(\nano.decoded_instruction[7] ),
    .S(\nano.state[10] ),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0445_));
 sky130_fd_sc_hd__or2_2 _2071_ (.A(_0431_),
    .B(_0445_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0446_));
 sky130_fd_sc_hd__o211a_2 _2072_ (.A1(\nano.core.b_imm[11] ),
    .A2(_0430_),
    .B1(_0446_),
    .C1(rst_n),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0118_));
 sky130_fd_sc_hd__mux2_1 _2073_ (.A0(\nano.core.b_imm[2] ),
    .A1(\nano.core.ext_next_rs1[0] ),
    .S(\nano.state[10] ),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0447_));
 sky130_fd_sc_hd__or2_2 _2074_ (.A(_0431_),
    .B(_0447_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0448_));
 sky130_fd_sc_hd__o211a_2 _2075_ (.A1(\nano.core.b_imm[1] ),
    .A2(_0430_),
    .B1(_0448_),
    .C1(rst_n),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0119_));
 sky130_fd_sc_hd__mux2_1 _2076_ (.A0(\nano.core.b_imm[3] ),
    .A1(\nano.core.instr[14] ),
    .S(\nano.state[10] ),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0449_));
 sky130_fd_sc_hd__or2_2 _2077_ (.A(_0431_),
    .B(_0449_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0450_));
 sky130_fd_sc_hd__o211a_2 _2078_ (.A1(\nano.core.b_imm[2] ),
    .A2(_0430_),
    .B1(_0450_),
    .C1(rst_n),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0120_));
 sky130_fd_sc_hd__mux2_1 _2079_ (.A0(\nano.core.b_imm[4] ),
    .A1(\nano.core.instr[13] ),
    .S(\nano.state[10] ),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0451_));
 sky130_fd_sc_hd__or2_2 _2080_ (.A(_0431_),
    .B(_0451_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0452_));
 sky130_fd_sc_hd__o211a_2 _2081_ (.A1(\nano.core.b_imm[3] ),
    .A2(_0430_),
    .B1(_0452_),
    .C1(rst_n),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0121_));
 sky130_fd_sc_hd__nand2_2 _2082_ (.A(_0570_),
    .B(_0430_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Y(_0453_));
 sky130_fd_sc_hd__o211a_2 _2083_ (.A1(\nano.core.b_imm[4] ),
    .A2(_0430_),
    .B1(_0453_),
    .C1(rst_n),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0122_));
 sky130_fd_sc_hd__mux2_1 _2084_ (.A0(\nano.core.instr[13] ),
    .A1(\nano.core.b_imm[4] ),
    .S(\nano.state[10] ),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0454_));
 sky130_fd_sc_hd__or2_2 _2085_ (.A(_0431_),
    .B(_0454_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0455_));
 sky130_fd_sc_hd__o211a_2 _2086_ (.A1(\nano.core.instr[12] ),
    .A2(_0430_),
    .B1(_0455_),
    .C1(rst_n),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0123_));
 sky130_fd_sc_hd__mux2_1 _2087_ (.A0(\nano.core.instr[14] ),
    .A1(\nano.core.b_imm[3] ),
    .S(\nano.state[10] ),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0456_));
 sky130_fd_sc_hd__or2_2 _2088_ (.A(_0431_),
    .B(_0456_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0457_));
 sky130_fd_sc_hd__o211a_2 _2089_ (.A1(\nano.core.instr[13] ),
    .A2(_0430_),
    .B1(_0457_),
    .C1(rst_n),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0124_));
 sky130_fd_sc_hd__mux2_1 _2090_ (.A0(\nano.core.ext_next_rs1[0] ),
    .A1(\nano.core.b_imm[2] ),
    .S(\nano.state[10] ),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0458_));
 sky130_fd_sc_hd__or2_2 _2091_ (.A(_0431_),
    .B(_0458_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0459_));
 sky130_fd_sc_hd__o211a_2 _2092_ (.A1(\nano.core.instr[14] ),
    .A2(_0430_),
    .B1(_0459_),
    .C1(rst_n),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0125_));
 sky130_fd_sc_hd__mux2_1 _2093_ (.A0(\nano.core.ext_next_rs1[1] ),
    .A1(\nano.core.b_imm[1] ),
    .S(\nano.state[10] ),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0460_));
 sky130_fd_sc_hd__or2_2 _2094_ (.A(_0431_),
    .B(_0460_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0461_));
 sky130_fd_sc_hd__o211a_2 _2095_ (.A1(\nano.core.ext_next_rs1[0] ),
    .A2(_0430_),
    .B1(_0461_),
    .C1(rst_n),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0126_));
 sky130_fd_sc_hd__mux2_1 _2096_ (.A0(\nano.core.ext_next_rs1[2] ),
    .A1(\nano.core.ext_next_rs2[3] ),
    .S(\nano.state[10] ),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0462_));
 sky130_fd_sc_hd__or2_2 _2097_ (.A(_0431_),
    .B(_0462_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0463_));
 sky130_fd_sc_hd__o211a_2 _2098_ (.A1(\nano.core.ext_next_rs1[1] ),
    .A2(_0430_),
    .B1(_0463_),
    .C1(rst_n),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0127_));
 sky130_fd_sc_hd__mux2_1 _2099_ (.A0(\nano.core.ext_next_rs1[3] ),
    .A1(\nano.core.ext_next_rs2[2] ),
    .S(\nano.state[10] ),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0464_));
 sky130_fd_sc_hd__or2_2 _2100_ (.A(_0431_),
    .B(_0464_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0465_));
 sky130_fd_sc_hd__o211a_2 _2101_ (.A1(\nano.core.ext_next_rs1[2] ),
    .A2(_0430_),
    .B1(_0465_),
    .C1(rst_n),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0128_));
 sky130_fd_sc_hd__mux2_1 _2102_ (.A0(\nano.core.instr[19] ),
    .A1(\nano.core.ext_next_rs2[1] ),
    .S(\nano.state[10] ),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0466_));
 sky130_fd_sc_hd__or2_2 _2103_ (.A(_0431_),
    .B(_0466_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0467_));
 sky130_fd_sc_hd__o211a_2 _2104_ (.A1(\nano.core.ext_next_rs1[3] ),
    .A2(_0430_),
    .B1(_0467_),
    .C1(rst_n),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0129_));
 sky130_fd_sc_hd__nand2_2 _2105_ (.A(_0568_),
    .B(_0430_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Y(_0468_));
 sky130_fd_sc_hd__o211a_2 _2106_ (.A1(\nano.core.instr[19] ),
    .A2(_0430_),
    .B1(_0468_),
    .C1(rst_n),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0130_));
 sky130_fd_sc_hd__mux2_1 _2107_ (.A0(\nano.core.ext_next_rs2[1] ),
    .A1(\nano.core.instr[19] ),
    .S(\nano.state[10] ),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0469_));
 sky130_fd_sc_hd__or2_2 _2108_ (.A(_0431_),
    .B(_0469_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0470_));
 sky130_fd_sc_hd__o211a_2 _2109_ (.A1(\nano.core.ext_next_rs2[0] ),
    .A2(_0430_),
    .B1(_0470_),
    .C1(rst_n),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0131_));
 sky130_fd_sc_hd__mux2_1 _2110_ (.A0(\nano.core.ext_next_rs2[2] ),
    .A1(\nano.core.ext_next_rs1[3] ),
    .S(\nano.state[10] ),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0471_));
 sky130_fd_sc_hd__or2_2 _2111_ (.A(_0431_),
    .B(_0471_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0472_));
 sky130_fd_sc_hd__o211a_2 _2112_ (.A1(\nano.core.ext_next_rs2[1] ),
    .A2(_0430_),
    .B1(_0472_),
    .C1(rst_n),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0132_));
 sky130_fd_sc_hd__mux2_1 _2113_ (.A0(\nano.core.ext_next_rs2[3] ),
    .A1(\nano.core.ext_next_rs1[2] ),
    .S(\nano.state[10] ),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0473_));
 sky130_fd_sc_hd__or2_2 _2114_ (.A(_0431_),
    .B(_0473_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0474_));
 sky130_fd_sc_hd__o211a_2 _2115_ (.A1(\nano.core.ext_next_rs2[2] ),
    .A2(_0430_),
    .B1(_0474_),
    .C1(rst_n),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0133_));
 sky130_fd_sc_hd__mux2_1 _2116_ (.A0(\nano.core.i_imm[4] ),
    .A1(\nano.core.ext_next_rs1[1] ),
    .S(\nano.state[10] ),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0475_));
 sky130_fd_sc_hd__or2_2 _2117_ (.A(_0431_),
    .B(_0475_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0476_));
 sky130_fd_sc_hd__o211a_2 _2118_ (.A1(\nano.core.ext_next_rs2[3] ),
    .A2(_0430_),
    .B1(_0476_),
    .C1(rst_n),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0134_));
 sky130_fd_sc_hd__mux2_1 _2119_ (.A0(\nano.core.b_imm[5] ),
    .A1(\nano.core.b_imm[12] ),
    .S(\nano.state[10] ),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0477_));
 sky130_fd_sc_hd__or2_2 _2120_ (.A(_0431_),
    .B(_0477_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0478_));
 sky130_fd_sc_hd__o211a_2 _2121_ (.A1(\nano.core.i_imm[4] ),
    .A2(_0430_),
    .B1(_0478_),
    .C1(rst_n),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0135_));
 sky130_fd_sc_hd__mux2_1 _2122_ (.A0(\nano.core.b_imm[6] ),
    .A1(\nano.core.b_imm[10] ),
    .S(\nano.state[10] ),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0479_));
 sky130_fd_sc_hd__or2_2 _2123_ (.A(_0431_),
    .B(_0479_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0480_));
 sky130_fd_sc_hd__o211a_2 _2124_ (.A1(\nano.core.b_imm[5] ),
    .A2(_0430_),
    .B1(_0480_),
    .C1(rst_n),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0136_));
 sky130_fd_sc_hd__mux2_1 _2125_ (.A0(\nano.core.b_imm[7] ),
    .A1(\nano.core.b_imm[9] ),
    .S(\nano.state[10] ),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0481_));
 sky130_fd_sc_hd__or2_2 _2126_ (.A(_0431_),
    .B(_0481_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0482_));
 sky130_fd_sc_hd__o211a_2 _2127_ (.A1(\nano.core.b_imm[6] ),
    .A2(_0430_),
    .B1(_0482_),
    .C1(rst_n),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0137_));
 sky130_fd_sc_hd__or2_2 _2128_ (.A(\nano.core.b_imm[8] ),
    .B(_0431_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0483_));
 sky130_fd_sc_hd__o211a_2 _2129_ (.A1(\nano.core.b_imm[7] ),
    .A2(_0430_),
    .B1(_0483_),
    .C1(rst_n),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0138_));
 sky130_fd_sc_hd__mux2_1 _2130_ (.A0(\nano.core.b_imm[9] ),
    .A1(\nano.core.b_imm[7] ),
    .S(\nano.state[10] ),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0484_));
 sky130_fd_sc_hd__or2_2 _2131_ (.A(_0431_),
    .B(_0484_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0485_));
 sky130_fd_sc_hd__o211a_2 _2132_ (.A1(\nano.core.b_imm[8] ),
    .A2(_0430_),
    .B1(_0485_),
    .C1(rst_n),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0139_));
 sky130_fd_sc_hd__mux2_1 _2133_ (.A0(\nano.core.b_imm[10] ),
    .A1(\nano.core.b_imm[6] ),
    .S(\nano.state[10] ),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0486_));
 sky130_fd_sc_hd__or2_2 _2134_ (.A(_0431_),
    .B(_0486_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0487_));
 sky130_fd_sc_hd__o211a_2 _2135_ (.A1(\nano.core.b_imm[9] ),
    .A2(_0430_),
    .B1(_0487_),
    .C1(rst_n),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0140_));
 sky130_fd_sc_hd__mux2_1 _2136_ (.A0(\nano.core.b_imm[12] ),
    .A1(\nano.core.b_imm[5] ),
    .S(\nano.state[10] ),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0488_));
 sky130_fd_sc_hd__or2_2 _2137_ (.A(_0431_),
    .B(_0488_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0489_));
 sky130_fd_sc_hd__o211a_2 _2138_ (.A1(\nano.core.b_imm[10] ),
    .A2(_0430_),
    .B1(_0489_),
    .C1(rst_n),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0141_));
 sky130_fd_sc_hd__mux2_1 _2139_ (.A0(uio_in[3]),
    .A1(\nano.core.i_imm[4] ),
    .S(\nano.state[10] ),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0490_));
 sky130_fd_sc_hd__or2_2 _2140_ (.A(_0431_),
    .B(_0490_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0491_));
 sky130_fd_sc_hd__o211a_2 _2141_ (.A1(\nano.core.b_imm[12] ),
    .A2(_0430_),
    .B1(_0491_),
    .C1(rst_n),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0142_));
 sky130_fd_sc_hd__a21oi_2 _2142_ (.A1(_0564_),
    .A2(\nano.staging.normalize_sources ),
    .B1(_0574_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Y(_0492_));
 sky130_fd_sc_hd__a21boi_2 _2143_ (.A1(\nano.core.execute_enable ),
    .A2(\nano.core.counter[0] ),
    .B1_N(_0492_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Y(_0493_));
 sky130_fd_sc_hd__o21a_2 _2144_ (.A1(\nano.core.execute_enable ),
    .A2(\nano.core.counter[0] ),
    .B1(_0493_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0143_));
 sky130_fd_sc_hd__a21o_2 _2145_ (.A1(\nano.core.execute_enable ),
    .A2(\nano.core.counter[0] ),
    .B1(\nano.core.counter[1] ),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0494_));
 sky130_fd_sc_hd__and3b_2 _2146_ (.A_N(_0607_),
    .B(_0492_),
    .C(_0494_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0144_));
 sky130_fd_sc_hd__o21ai_2 _2147_ (.A1(\nano.core.counter[2] ),
    .A2(_0607_),
    .B1(_0492_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Y(_0495_));
 sky130_fd_sc_hd__nor2_2 _2148_ (.A(_0608_),
    .B(_0495_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Y(_0145_));
 sky130_fd_sc_hd__nand2_2 _2149_ (.A(_0607_),
    .B(_0932_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Y(_0496_));
 sky130_fd_sc_hd__o211a_2 _2150_ (.A1(\nano.core.counter[3] ),
    .A2(_0608_),
    .B1(_0492_),
    .C1(_0496_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0146_));
 sky130_fd_sc_hd__nand2_2 _2151_ (.A(_0566_),
    .B(_0496_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Y(_0497_));
 sky130_fd_sc_hd__a21oi_2 _2152_ (.A1(_0564_),
    .A2(\nano.staging.normalize_sources ),
    .B1(_0610_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Y(_0498_));
 sky130_fd_sc_hd__and3_2 _2153_ (.A(_0611_),
    .B(_0492_),
    .C(_0497_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0147_));
 sky130_fd_sc_hd__a31o_2 _2154_ (.A1(_0604_),
    .A2(_0610_),
    .A3(_0629_),
    .B1(\nano.core.cycle[0] ),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0499_));
 sky130_fd_sc_hd__o211a_2 _2155_ (.A1(_0565_),
    .A2(_0498_),
    .B1(_0499_),
    .C1(rst_n),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0148_));
 sky130_fd_sc_hd__or2_2 _2156_ (.A(\nano.core.cycle[1] ),
    .B(\nano.core.cycle[0] ),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0500_));
 sky130_fd_sc_hd__and3_2 _2157_ (.A(_0612_),
    .B(_0613_),
    .C(_0500_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0501_));
 sky130_fd_sc_hd__a32o_2 _2158_ (.A1(\nano.core.cycle[1] ),
    .A2(_0611_),
    .A3(_0492_),
    .B1(_0501_),
    .B2(_0629_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0149_));
 sky130_fd_sc_hd__and3_2 _2159_ (.A(\nano.core.cycle[2] ),
    .B(_0611_),
    .C(_0492_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0502_));
 sky130_fd_sc_hd__a31o_2 _2160_ (.A1(_0612_),
    .A2(_0615_),
    .A3(_0628_),
    .B1(_0502_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0150_));
 sky130_fd_sc_hd__o211a_2 _2161_ (.A1(\nano.core.execute_enable ),
    .A2(\nano.branch_taken ),
    .B1(_0243_),
    .C1(_0492_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0151_));
 sky130_fd_sc_hd__xnor2_2 _2162_ (.A(_0910_),
    .B(_1067_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Y(_0503_));
 sky130_fd_sc_hd__o21a_2 _2163_ (.A1(_0601_),
    .A2(_0503_),
    .B1(_1088_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0504_));
 sky130_fd_sc_hd__a22o_2 _2164_ (.A1(\nano.core.cycle[1] ),
    .A2(_0620_),
    .B1(_0686_),
    .B2(_0602_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0505_));
 sky130_fd_sc_hd__o31a_2 _2165_ (.A1(_0902_),
    .A2(_0504_),
    .A3(_0505_),
    .B1(\nano.core.execute_enable ),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0506_));
 sky130_fd_sc_hd__nand2_2 _2166_ (.A(\nano.core.execute_enable ),
    .B(_0505_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Y(_0507_));
 sky130_fd_sc_hd__mux2_1 _2167_ (.A0(\nano.core.data_out[31] ),
    .A1(\nano.core.data_out[1] ),
    .S(_0507_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0508_));
 sky130_fd_sc_hd__mux2_1 _2168_ (.A0(\nano.core.data_out[0] ),
    .A1(_0508_),
    .S(_0506_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0152_));
 sky130_fd_sc_hd__mux2_1 _2169_ (.A0(\nano.core.data_out[0] ),
    .A1(\nano.core.data_out[2] ),
    .S(_0507_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0509_));
 sky130_fd_sc_hd__mux2_1 _2170_ (.A0(\nano.core.data_out[1] ),
    .A1(_0509_),
    .S(_0506_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0153_));
 sky130_fd_sc_hd__mux2_1 _2171_ (.A0(\nano.core.data_out[1] ),
    .A1(\nano.core.data_out[3] ),
    .S(_0507_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0510_));
 sky130_fd_sc_hd__mux2_1 _2172_ (.A0(\nano.core.data_out[2] ),
    .A1(_0510_),
    .S(_0506_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0154_));
 sky130_fd_sc_hd__mux2_1 _2173_ (.A0(\nano.core.data_out[2] ),
    .A1(\nano.core.data_out[4] ),
    .S(_0507_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0511_));
 sky130_fd_sc_hd__mux2_1 _2174_ (.A0(\nano.core.data_out[3] ),
    .A1(_0511_),
    .S(_0506_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0155_));
 sky130_fd_sc_hd__mux2_1 _2175_ (.A0(\nano.core.data_out[3] ),
    .A1(\nano.core.data_out[5] ),
    .S(_0507_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0512_));
 sky130_fd_sc_hd__mux2_1 _2176_ (.A0(\nano.core.data_out[4] ),
    .A1(_0512_),
    .S(_0506_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0156_));
 sky130_fd_sc_hd__mux2_1 _2177_ (.A0(\nano.core.data_out[4] ),
    .A1(\nano.core.data_out[6] ),
    .S(_0507_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0513_));
 sky130_fd_sc_hd__mux2_1 _2178_ (.A0(\nano.core.data_out[5] ),
    .A1(_0513_),
    .S(_0506_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0157_));
 sky130_fd_sc_hd__mux2_1 _2179_ (.A0(\nano.core.data_out[5] ),
    .A1(\nano.core.data_out[7] ),
    .S(_0507_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0514_));
 sky130_fd_sc_hd__mux2_1 _2180_ (.A0(\nano.core.data_out[6] ),
    .A1(_0514_),
    .S(_0506_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0158_));
 sky130_fd_sc_hd__mux2_1 _2181_ (.A0(\nano.core.data_out[6] ),
    .A1(\nano.core.data_out[8] ),
    .S(_0507_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0515_));
 sky130_fd_sc_hd__mux2_1 _2182_ (.A0(\nano.core.data_out[7] ),
    .A1(_0515_),
    .S(_0506_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0159_));
 sky130_fd_sc_hd__mux2_1 _2183_ (.A0(\nano.core.data_out[7] ),
    .A1(\nano.core.data_out[9] ),
    .S(_0507_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0516_));
 sky130_fd_sc_hd__mux2_1 _2184_ (.A0(\nano.core.data_out[8] ),
    .A1(_0516_),
    .S(_0506_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0160_));
 sky130_fd_sc_hd__mux2_1 _2185_ (.A0(\nano.core.data_out[8] ),
    .A1(\nano.core.data_out[10] ),
    .S(_0507_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0517_));
 sky130_fd_sc_hd__mux2_1 _2186_ (.A0(\nano.core.data_out[9] ),
    .A1(_0517_),
    .S(_0506_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0161_));
 sky130_fd_sc_hd__mux2_1 _2187_ (.A0(\nano.core.data_out[9] ),
    .A1(\nano.core.data_out[11] ),
    .S(_0507_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0518_));
 sky130_fd_sc_hd__mux2_1 _2188_ (.A0(\nano.core.data_out[10] ),
    .A1(_0518_),
    .S(_0506_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0162_));
 sky130_fd_sc_hd__mux2_1 _2189_ (.A0(\nano.core.data_out[10] ),
    .A1(\nano.core.data_out[12] ),
    .S(_0507_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0519_));
 sky130_fd_sc_hd__mux2_1 _2190_ (.A0(\nano.core.data_out[11] ),
    .A1(_0519_),
    .S(_0506_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0163_));
 sky130_fd_sc_hd__mux2_1 _2191_ (.A0(\nano.core.data_out[11] ),
    .A1(\nano.core.data_out[13] ),
    .S(_0507_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0520_));
 sky130_fd_sc_hd__mux2_1 _2192_ (.A0(\nano.core.data_out[12] ),
    .A1(_0520_),
    .S(_0506_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0164_));
 sky130_fd_sc_hd__mux2_1 _2193_ (.A0(\nano.core.data_out[12] ),
    .A1(\nano.core.data_out[14] ),
    .S(_0507_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0521_));
 sky130_fd_sc_hd__mux2_1 _2194_ (.A0(\nano.core.data_out[13] ),
    .A1(_0521_),
    .S(_0506_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0165_));
 sky130_fd_sc_hd__dfxtp_2 _2195_ (.CLK(clknet_4_6_0_clk),
    .D(_0017_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Q(\nano.core.data_rs2 ));
 sky130_fd_sc_hd__dfxtp_2 _2196_ (.CLK(clknet_4_7_0_clk),
    .D(_0018_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Q(\nano.rs2_raw_value[1] ));
 sky130_fd_sc_hd__dfxtp_2 _2197_ (.CLK(clknet_4_7_0_clk),
    .D(_0019_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Q(\nano.rs2_raw_value[2] ));
 sky130_fd_sc_hd__dfxtp_2 _2198_ (.CLK(clknet_4_7_0_clk),
    .D(_0020_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Q(\nano.rs2_raw_value[4] ));
 sky130_fd_sc_hd__dfxtp_2 _2199_ (.CLK(clknet_4_6_0_clk),
    .D(_0021_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Q(\nano.rs2_raw_value[5] ));
 sky130_fd_sc_hd__dfxtp_2 _2200_ (.CLK(clknet_4_7_0_clk),
    .D(_0022_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Q(\nano.rs2_raw_value[6] ));
 sky130_fd_sc_hd__dfxtp_2 _2201_ (.CLK(clknet_4_7_0_clk),
    .D(_0023_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Q(\nano.rs2_raw_value[7] ));
 sky130_fd_sc_hd__dfxtp_2 _2202_ (.CLK(clknet_4_4_0_clk),
    .D(_0024_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Q(\nano.rs2_raw_value[8] ));
 sky130_fd_sc_hd__dfxtp_2 _2203_ (.CLK(clknet_4_4_0_clk),
    .D(_0025_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Q(\nano.rs2_raw_value[9] ));
 sky130_fd_sc_hd__dfxtp_2 _2204_ (.CLK(clknet_4_4_0_clk),
    .D(_0026_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Q(\nano.rs2_raw_value[10] ));
 sky130_fd_sc_hd__dfxtp_2 _2205_ (.CLK(clknet_4_5_0_clk),
    .D(_0027_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Q(\nano.rs2_raw_value[12] ));
 sky130_fd_sc_hd__dfxtp_2 _2206_ (.CLK(clknet_4_4_0_clk),
    .D(_0028_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Q(\nano.rs2_raw_value[13] ));
 sky130_fd_sc_hd__dfxtp_2 _2207_ (.CLK(clknet_4_4_0_clk),
    .D(_0029_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Q(\nano.rs2_raw_value[14] ));
 sky130_fd_sc_hd__dfxtp_2 _2208_ (.CLK(clknet_4_5_0_clk),
    .D(_0030_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Q(\nano.rs2_raw_value[15] ));
 sky130_fd_sc_hd__dfxtp_2 _2209_ (.CLK(clknet_4_5_0_clk),
    .D(_0031_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Q(\nano.rs2_raw_value[16] ));
 sky130_fd_sc_hd__dfxtp_2 _2210_ (.CLK(clknet_4_5_0_clk),
    .D(_0032_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Q(\nano.rs2_raw_value[17] ));
 sky130_fd_sc_hd__dfxtp_2 _2211_ (.CLK(clknet_4_5_0_clk),
    .D(_0033_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Q(\nano.rs2_raw_value[18] ));
 sky130_fd_sc_hd__dfxtp_2 _2212_ (.CLK(clknet_4_4_0_clk),
    .D(_0034_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Q(\nano.rs2_raw_value[20] ));
 sky130_fd_sc_hd__dfxtp_2 _2213_ (.CLK(clknet_4_4_0_clk),
    .D(_0035_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Q(\nano.rs2_raw_value[21] ));
 sky130_fd_sc_hd__dfxtp_2 _2214_ (.CLK(clknet_4_7_0_clk),
    .D(_0036_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Q(\nano.rs2_raw_value[22] ));
 sky130_fd_sc_hd__dfxtp_2 _2215_ (.CLK(clknet_4_5_0_clk),
    .D(_0037_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Q(\nano.rs2_raw_value[28] ));
 sky130_fd_sc_hd__dfxtp_2 _2216_ (.CLK(clknet_4_5_0_clk),
    .D(_0038_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Q(\nano.rs2_raw_value[31] ));
 sky130_fd_sc_hd__dfxtp_2 _2217_ (.CLK(clknet_4_5_0_clk),
    .D(_0039_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Q(\nano.rs2_raw_value[23] ));
 sky130_fd_sc_hd__dfxtp_2 _2218_ (.CLK(clknet_4_5_0_clk),
    .D(_0040_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Q(\nano.rs2_raw_value[24] ));
 sky130_fd_sc_hd__dfxtp_2 _2219_ (.CLK(clknet_4_5_0_clk),
    .D(_0041_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Q(\nano.rs2_raw_value[25] ));
 sky130_fd_sc_hd__dfxtp_2 _2220_ (.CLK(clknet_4_5_0_clk),
    .D(_0042_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Q(\nano.rs2_raw_value[26] ));
 sky130_fd_sc_hd__dfxtp_2 _2221_ (.CLK(clknet_4_5_0_clk),
    .D(_0043_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Q(\nano.rs2_raw_value[29] ));
 sky130_fd_sc_hd__dfxtp_2 _2222_ (.CLK(clknet_4_5_0_clk),
    .D(_0044_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Q(\nano.rs2_raw_value[30] ));
 sky130_fd_sc_hd__dfxtp_2 _2223_ (.CLK(clknet_4_7_0_clk),
    .D(_0045_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Q(\nano.rs2_raw_value[3] ));
 sky130_fd_sc_hd__dfxtp_2 _2224_ (.CLK(clknet_4_5_0_clk),
    .D(_0046_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Q(\nano.rs2_raw_value[11] ));
 sky130_fd_sc_hd__dfxtp_2 _2225_ (.CLK(clknet_4_5_0_clk),
    .D(_0047_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Q(\nano.rs2_raw_value[19] ));
 sky130_fd_sc_hd__dfxtp_2 _2226_ (.CLK(clknet_4_5_0_clk),
    .D(_0048_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Q(\nano.rs2_raw_value[27] ));
 sky130_fd_sc_hd__dfxtp_2 _2227_ (.CLK(clknet_4_15_0_clk),
    .D(_0049_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Q(\nano.core.data_rs1 ));
 sky130_fd_sc_hd__dfxtp_2 _2228_ (.CLK(clknet_4_15_0_clk),
    .D(_0050_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Q(\nano.load_value[1] ));
 sky130_fd_sc_hd__dfxtp_2 _2229_ (.CLK(clknet_4_15_0_clk),
    .D(_0051_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Q(\nano.load_value[2] ));
 sky130_fd_sc_hd__dfxtp_2 _2230_ (.CLK(clknet_4_15_0_clk),
    .D(_0052_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Q(\nano.load_value[4] ));
 sky130_fd_sc_hd__dfxtp_2 _2231_ (.CLK(clknet_4_15_0_clk),
    .D(_0053_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Q(\nano.load_value[5] ));
 sky130_fd_sc_hd__dfxtp_2 _2232_ (.CLK(clknet_4_13_0_clk),
    .D(_0054_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Q(\nano.load_value[6] ));
 sky130_fd_sc_hd__dfxtp_2 _2233_ (.CLK(clknet_4_15_0_clk),
    .D(_0055_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Q(\nano.load_value[7] ));
 sky130_fd_sc_hd__dfxtp_2 _2234_ (.CLK(clknet_4_15_0_clk),
    .D(_0056_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Q(\nano.rs1_value[12] ));
 sky130_fd_sc_hd__dfxtp_2 _2235_ (.CLK(clknet_4_15_0_clk),
    .D(_0057_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Q(\nano.rs1_value[28] ));
 sky130_fd_sc_hd__dfxtp_2 _2236_ (.CLK(clknet_4_13_0_clk),
    .D(_0058_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Q(\nano.rs1_value[31] ));
 sky130_fd_sc_hd__dfxtp_2 _2237_ (.CLK(clknet_4_15_0_clk),
    .D(_0059_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Q(\nano.rs1_value[8] ));
 sky130_fd_sc_hd__dfxtp_2 _2238_ (.CLK(clknet_4_15_0_clk),
    .D(_0060_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Q(\nano.rs1_value[9] ));
 sky130_fd_sc_hd__dfxtp_2 _2239_ (.CLK(clknet_4_15_0_clk),
    .D(_0061_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Q(\nano.rs1_value[10] ));
 sky130_fd_sc_hd__dfxtp_2 _2240_ (.CLK(clknet_4_15_0_clk),
    .D(_0062_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Q(\nano.rs1_value[13] ));
 sky130_fd_sc_hd__dfxtp_2 _2241_ (.CLK(clknet_4_15_0_clk),
    .D(_0063_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Q(\nano.rs1_value[14] ));
 sky130_fd_sc_hd__dfxtp_2 _2242_ (.CLK(clknet_4_15_0_clk),
    .D(_0064_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Q(\nano.rs1_value[15] ));
 sky130_fd_sc_hd__dfxtp_2 _2243_ (.CLK(clknet_4_13_0_clk),
    .D(_0065_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Q(\nano.rs1_value[16] ));
 sky130_fd_sc_hd__dfxtp_2 _2244_ (.CLK(clknet_4_13_0_clk),
    .D(_0066_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Q(\nano.rs1_value[17] ));
 sky130_fd_sc_hd__dfxtp_2 _2245_ (.CLK(clknet_4_13_0_clk),
    .D(_0067_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Q(\nano.rs1_value[18] ));
 sky130_fd_sc_hd__dfxtp_2 _2246_ (.CLK(clknet_4_13_0_clk),
    .D(_0068_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Q(\nano.rs1_value[20] ));
 sky130_fd_sc_hd__dfxtp_2 _2247_ (.CLK(clknet_4_13_0_clk),
    .D(_0069_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Q(\nano.rs1_value[21] ));
 sky130_fd_sc_hd__dfxtp_2 _2248_ (.CLK(clknet_4_13_0_clk),
    .D(_0070_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Q(\nano.rs1_value[22] ));
 sky130_fd_sc_hd__dfxtp_2 _2249_ (.CLK(clknet_4_13_0_clk),
    .D(_0071_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Q(\nano.rs1_value[23] ));
 sky130_fd_sc_hd__dfxtp_2 _2250_ (.CLK(clknet_4_15_0_clk),
    .D(_0072_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Q(\nano.rs1_value[24] ));
 sky130_fd_sc_hd__dfxtp_2 _2251_ (.CLK(clknet_4_15_0_clk),
    .D(_0073_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Q(\nano.rs1_value[25] ));
 sky130_fd_sc_hd__dfxtp_2 _2252_ (.CLK(clknet_4_15_0_clk),
    .D(_0074_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Q(\nano.rs1_value[26] ));
 sky130_fd_sc_hd__dfxtp_2 _2253_ (.CLK(clknet_4_14_0_clk),
    .D(_0075_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Q(\nano.rs1_value[29] ));
 sky130_fd_sc_hd__dfxtp_2 _2254_ (.CLK(clknet_4_14_0_clk),
    .D(_0076_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Q(\nano.rs1_value[30] ));
 sky130_fd_sc_hd__dfxtp_2 _2255_ (.CLK(clknet_4_15_0_clk),
    .D(_0077_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Q(\nano.load_value[3] ));
 sky130_fd_sc_hd__dfxtp_2 _2256_ (.CLK(clknet_4_15_0_clk),
    .D(_0078_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Q(\nano.rs1_value[11] ));
 sky130_fd_sc_hd__dfxtp_2 _2257_ (.CLK(clknet_4_13_0_clk),
    .D(_0079_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Q(\nano.rs1_value[19] ));
 sky130_fd_sc_hd__dfxtp_2 _2258_ (.CLK(clknet_4_14_0_clk),
    .D(_0080_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Q(\nano.rs1_value[27] ));
 sky130_fd_sc_hd__dfxtp_2 _2259_ (.CLK(clknet_4_3_0_clk),
    .D(_0081_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Q(\nano.pc[2] ));
 sky130_fd_sc_hd__dfxtp_2 _2260_ (.CLK(clknet_4_3_0_clk),
    .D(_0082_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Q(\nano.pc[3] ));
 sky130_fd_sc_hd__dfxtp_2 _2261_ (.CLK(clknet_4_6_0_clk),
    .D(_0083_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Q(\nano.pc[4] ));
 sky130_fd_sc_hd__dfxtp_2 _2262_ (.CLK(clknet_4_6_0_clk),
    .D(_0084_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Q(\nano.pc[5] ));
 sky130_fd_sc_hd__dfxtp_2 _2263_ (.CLK(clknet_4_6_0_clk),
    .D(_0085_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Q(\nano.pc[6] ));
 sky130_fd_sc_hd__dfxtp_2 _2264_ (.CLK(clknet_4_4_0_clk),
    .D(_0086_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Q(\nano.pc[7] ));
 sky130_fd_sc_hd__dfxtp_2 _2265_ (.CLK(clknet_4_4_0_clk),
    .D(_0087_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Q(\nano.pc[8] ));
 sky130_fd_sc_hd__dfxtp_2 _2266_ (.CLK(clknet_4_4_0_clk),
    .D(_0088_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Q(\nano.pc[9] ));
 sky130_fd_sc_hd__dfxtp_2 _2267_ (.CLK(clknet_4_4_0_clk),
    .D(_0089_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Q(\nano.pc[10] ));
 sky130_fd_sc_hd__dfxtp_2 _2268_ (.CLK(clknet_4_4_0_clk),
    .D(_0090_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Q(\nano.pc[11] ));
 sky130_fd_sc_hd__dfxtp_2 _2269_ (.CLK(clknet_4_1_0_clk),
    .D(_0091_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Q(\nano.pc[12] ));
 sky130_fd_sc_hd__dfxtp_2 _2270_ (.CLK(clknet_4_1_0_clk),
    .D(_0092_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Q(\nano.pc[13] ));
 sky130_fd_sc_hd__dfxtp_2 _2271_ (.CLK(clknet_4_1_0_clk),
    .D(_0093_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Q(\nano.pc[14] ));
 sky130_fd_sc_hd__dfxtp_2 _2272_ (.CLK(clknet_4_1_0_clk),
    .D(_0094_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Q(\nano.pc[15] ));
 sky130_fd_sc_hd__dfxtp_2 _2273_ (.CLK(clknet_4_1_0_clk),
    .D(_0095_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Q(\nano.pc[16] ));
 sky130_fd_sc_hd__dfxtp_2 _2274_ (.CLK(clknet_4_1_0_clk),
    .D(_0096_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Q(\nano.pc[17] ));
 sky130_fd_sc_hd__dfxtp_2 _2275_ (.CLK(clknet_4_1_0_clk),
    .D(_0097_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Q(\nano.pc[18] ));
 sky130_fd_sc_hd__dfxtp_2 _2276_ (.CLK(clknet_4_1_0_clk),
    .D(_0098_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Q(\nano.pc[19] ));
 sky130_fd_sc_hd__dfxtp_2 _2277_ (.CLK(clknet_4_1_0_clk),
    .D(_0099_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Q(\nano.pc[20] ));
 sky130_fd_sc_hd__dfxtp_2 _2278_ (.CLK(clknet_4_3_0_clk),
    .D(_0100_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Q(\nano.pc[21] ));
 sky130_fd_sc_hd__dfxtp_2 _2279_ (.CLK(clknet_4_3_0_clk),
    .D(_0101_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Q(\nano.core.pc ));
 sky130_fd_sc_hd__dfxtp_2 _2280_ (.CLK(clknet_4_3_0_clk),
    .D(_0102_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Q(\nano.pc[1] ));
 sky130_fd_sc_hd__dfxtp_2 _2281_ (.CLK(clknet_4_13_0_clk),
    .D(_0103_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Q(uo_out[0]));
 sky130_fd_sc_hd__dfxtp_2 _2282_ (.CLK(clknet_4_13_0_clk),
    .D(_0104_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Q(uo_out[1]));
 sky130_fd_sc_hd__dfxtp_2 _2283_ (.CLK(clknet_4_13_0_clk),
    .D(_0105_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Q(uo_out[2]));
 sky130_fd_sc_hd__dfxtp_2 _2284_ (.CLK(clknet_4_13_0_clk),
    .D(_0106_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Q(uo_out[3]));
 sky130_fd_sc_hd__dfxtp_2 _2285_ (.CLK(clknet_4_7_0_clk),
    .D(_0107_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Q(uo_out[4]));
 sky130_fd_sc_hd__dfxtp_2 _2286_ (.CLK(clknet_4_7_0_clk),
    .D(_0108_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Q(uo_out[5]));
 sky130_fd_sc_hd__dfxtp_2 _2287_ (.CLK(clknet_4_7_0_clk),
    .D(_0109_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Q(uo_out[6]));
 sky130_fd_sc_hd__dfxtp_2 _2288_ (.CLK(clknet_4_7_0_clk),
    .D(_0110_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Q(uo_out[7]));
 sky130_fd_sc_hd__dfxtp_2 _2289_ (.CLK(clknet_4_11_0_clk),
    .D(_0111_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Q(\nano.decoded_instruction[7] ));
 sky130_fd_sc_hd__dfxtp_2 _2290_ (.CLK(clknet_4_11_0_clk),
    .D(_0112_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Q(\nano.decoded_instruction[6] ));
 sky130_fd_sc_hd__dfxtp_2 _2291_ (.CLK(clknet_4_10_0_clk),
    .D(_0113_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Q(\nano.core.instr[2] ));
 sky130_fd_sc_hd__dfxtp_2 _2292_ (.CLK(clknet_4_10_0_clk),
    .D(_0114_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Q(\nano.core.instr[3] ));
 sky130_fd_sc_hd__dfxtp_2 _2293_ (.CLK(clknet_4_11_0_clk),
    .D(_0115_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Q(\nano.core.instr[4] ));
 sky130_fd_sc_hd__dfxtp_2 _2294_ (.CLK(clknet_4_10_0_clk),
    .D(_0116_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Q(\nano.core.instr[5] ));
 sky130_fd_sc_hd__dfxtp_2 _2295_ (.CLK(clknet_4_11_0_clk),
    .D(_0117_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Q(\nano.core.instr[6] ));
 sky130_fd_sc_hd__dfxtp_2 _2296_ (.CLK(clknet_4_11_0_clk),
    .D(_0118_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Q(\nano.core.b_imm[11] ));
 sky130_fd_sc_hd__dfxtp_2 _2297_ (.CLK(clknet_4_14_0_clk),
    .D(_0119_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Q(\nano.core.b_imm[1] ));
 sky130_fd_sc_hd__dfxtp_2 _2298_ (.CLK(clknet_4_14_0_clk),
    .D(_0120_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Q(\nano.core.b_imm[2] ));
 sky130_fd_sc_hd__dfxtp_2 _2299_ (.CLK(clknet_4_11_0_clk),
    .D(_0121_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Q(\nano.core.b_imm[3] ));
 sky130_fd_sc_hd__dfxtp_2 _2300_ (.CLK(clknet_4_11_0_clk),
    .D(_0122_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Q(\nano.core.b_imm[4] ));
 sky130_fd_sc_hd__dfxtp_2 _2301_ (.CLK(clknet_4_11_0_clk),
    .D(_0123_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Q(\nano.core.instr[12] ));
 sky130_fd_sc_hd__dfxtp_2 _2302_ (.CLK(clknet_4_14_0_clk),
    .D(_0124_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Q(\nano.core.instr[13] ));
 sky130_fd_sc_hd__dfxtp_2 _2303_ (.CLK(clknet_4_14_0_clk),
    .D(_0125_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Q(\nano.core.instr[14] ));
 sky130_fd_sc_hd__dfxtp_2 _2304_ (.CLK(clknet_4_14_0_clk),
    .D(_0126_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Q(\nano.core.ext_next_rs1[0] ));
 sky130_fd_sc_hd__dfxtp_2 _2305_ (.CLK(clknet_4_14_0_clk),
    .D(_0127_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Q(\nano.core.ext_next_rs1[1] ));
 sky130_fd_sc_hd__dfxtp_2 _2306_ (.CLK(clknet_4_14_0_clk),
    .D(_0128_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Q(\nano.core.ext_next_rs1[2] ));
 sky130_fd_sc_hd__dfxtp_2 _2307_ (.CLK(clknet_4_11_0_clk),
    .D(_0129_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Q(\nano.core.ext_next_rs1[3] ));
 sky130_fd_sc_hd__dfxtp_2 _2308_ (.CLK(clknet_4_11_0_clk),
    .D(_0130_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Q(\nano.core.instr[19] ));
 sky130_fd_sc_hd__dfxtp_2 _2309_ (.CLK(clknet_4_11_0_clk),
    .D(_0131_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Q(\nano.core.ext_next_rs2[0] ));
 sky130_fd_sc_hd__dfxtp_2 _2310_ (.CLK(clknet_4_11_0_clk),
    .D(_0132_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Q(\nano.core.ext_next_rs2[1] ));
 sky130_fd_sc_hd__dfxtp_2 _2311_ (.CLK(clknet_4_14_0_clk),
    .D(_0133_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Q(\nano.core.ext_next_rs2[2] ));
 sky130_fd_sc_hd__dfxtp_2 _2312_ (.CLK(clknet_4_10_0_clk),
    .D(_0134_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Q(\nano.core.ext_next_rs2[3] ));
 sky130_fd_sc_hd__dfxtp_2 _2313_ (.CLK(clknet_4_10_0_clk),
    .D(_0135_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Q(\nano.core.i_imm[4] ));
 sky130_fd_sc_hd__dfxtp_2 _2314_ (.CLK(clknet_4_10_0_clk),
    .D(_0136_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Q(\nano.core.b_imm[5] ));
 sky130_fd_sc_hd__dfxtp_2 _2315_ (.CLK(clknet_4_10_0_clk),
    .D(_0137_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Q(\nano.core.b_imm[6] ));
 sky130_fd_sc_hd__dfxtp_2 _2316_ (.CLK(clknet_4_10_0_clk),
    .D(_0138_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Q(\nano.core.b_imm[7] ));
 sky130_fd_sc_hd__dfxtp_2 _2317_ (.CLK(clknet_4_8_0_clk),
    .D(_0139_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Q(\nano.core.b_imm[8] ));
 sky130_fd_sc_hd__dfxtp_2 _2318_ (.CLK(clknet_4_10_0_clk),
    .D(_0140_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Q(\nano.core.b_imm[9] ));
 sky130_fd_sc_hd__dfxtp_2 _2319_ (.CLK(clknet_4_10_0_clk),
    .D(_0141_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Q(\nano.core.b_imm[10] ));
 sky130_fd_sc_hd__dfxtp_2 _2320_ (.CLK(clknet_4_10_0_clk),
    .D(_0142_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Q(\nano.core.b_imm[12] ));
 sky130_fd_sc_hd__dfxtp_2 _2321_ (.CLK(clknet_4_8_0_clk),
    .D(_0143_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Q(\nano.core.counter[0] ));
 sky130_fd_sc_hd__dfxtp_2 _2322_ (.CLK(clknet_4_9_0_clk),
    .D(_0144_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Q(\nano.core.counter[1] ));
 sky130_fd_sc_hd__dfxtp_2 _2323_ (.CLK(clknet_4_8_0_clk),
    .D(_0145_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Q(\nano.core.counter[2] ));
 sky130_fd_sc_hd__dfxtp_2 _2324_ (.CLK(clknet_4_8_0_clk),
    .D(_0146_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Q(\nano.core.counter[3] ));
 sky130_fd_sc_hd__dfxtp_2 _2325_ (.CLK(clknet_4_8_0_clk),
    .D(_0147_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Q(\nano.core.counter[4] ));
 sky130_fd_sc_hd__dfxtp_2 _2326_ (.CLK(clknet_4_9_0_clk),
    .D(_0148_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Q(\nano.core.cycle[0] ));
 sky130_fd_sc_hd__dfxtp_2 _2327_ (.CLK(clknet_4_9_0_clk),
    .D(_0149_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Q(\nano.core.cycle[1] ));
 sky130_fd_sc_hd__dfxtp_2 _2328_ (.CLK(clknet_4_3_0_clk),
    .D(_0150_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Q(\nano.core.cycle[2] ));
 sky130_fd_sc_hd__dfxtp_2 _2329_ (.CLK(clknet_4_9_0_clk),
    .D(_0151_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Q(\nano.branch_taken ));
 sky130_fd_sc_hd__dfxtp_2 _2330_ (.CLK(clknet_4_2_0_clk),
    .D(_0152_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Q(\nano.core.data_out[0] ));
 sky130_fd_sc_hd__dfxtp_2 _2331_ (.CLK(clknet_4_2_0_clk),
    .D(_0153_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Q(\nano.core.data_out[1] ));
 sky130_fd_sc_hd__dfxtp_2 _2332_ (.CLK(clknet_4_3_0_clk),
    .D(_0154_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Q(\nano.core.data_out[2] ));
 sky130_fd_sc_hd__dfxtp_2 _2333_ (.CLK(clknet_4_3_0_clk),
    .D(_0155_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Q(\nano.core.data_out[3] ));
 sky130_fd_sc_hd__dfxtp_2 _2334_ (.CLK(clknet_4_2_0_clk),
    .D(_0156_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Q(\nano.core.data_out[4] ));
 sky130_fd_sc_hd__dfxtp_2 _2335_ (.CLK(clknet_4_0_0_clk),
    .D(_0157_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Q(\nano.core.data_out[5] ));
 sky130_fd_sc_hd__dfxtp_2 _2336_ (.CLK(clknet_4_0_0_clk),
    .D(_0158_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Q(\nano.core.data_out[6] ));
 sky130_fd_sc_hd__dfxtp_2 _2337_ (.CLK(clknet_4_1_0_clk),
    .D(_0159_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Q(\nano.core.data_out[7] ));
 sky130_fd_sc_hd__dfxtp_2 _2338_ (.CLK(clknet_4_1_0_clk),
    .D(_0160_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Q(\nano.core.data_out[8] ));
 sky130_fd_sc_hd__dfxtp_2 _2339_ (.CLK(clknet_4_0_0_clk),
    .D(_0161_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Q(\nano.core.data_out[9] ));
 sky130_fd_sc_hd__dfxtp_2 _2340_ (.CLK(clknet_4_0_0_clk),
    .D(_0162_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Q(\nano.core.data_out[10] ));
 sky130_fd_sc_hd__dfxtp_2 _2341_ (.CLK(clknet_4_0_0_clk),
    .D(_0163_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Q(\nano.core.data_out[11] ));
 sky130_fd_sc_hd__dfxtp_2 _2342_ (.CLK(clknet_4_0_0_clk),
    .D(_0164_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Q(\nano.core.data_out[12] ));
 sky130_fd_sc_hd__dfxtp_2 _2343_ (.CLK(clknet_4_0_0_clk),
    .D(_0165_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Q(\nano.core.data_out[13] ));
 sky130_fd_sc_hd__dfxtp_2 _2344_ (.CLK(clknet_4_0_0_clk),
    .D(_0166_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Q(\nano.core.data_out[14] ));
 sky130_fd_sc_hd__dfxtp_2 _2345_ (.CLK(clknet_4_0_0_clk),
    .D(_0167_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Q(\nano.core.data_out[15] ));
 sky130_fd_sc_hd__dfxtp_2 _2346_ (.CLK(clknet_4_0_0_clk),
    .D(_0168_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Q(\nano.core.data_out[16] ));
 sky130_fd_sc_hd__dfxtp_2 _2347_ (.CLK(clknet_4_0_0_clk),
    .D(_0169_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Q(\nano.core.data_out[17] ));
 sky130_fd_sc_hd__dfxtp_2 _2348_ (.CLK(clknet_4_0_0_clk),
    .D(_0170_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Q(\nano.core.data_out[18] ));
 sky130_fd_sc_hd__dfxtp_2 _2349_ (.CLK(clknet_4_0_0_clk),
    .D(_0171_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Q(\nano.core.data_out[19] ));
 sky130_fd_sc_hd__dfxtp_2 _2350_ (.CLK(clknet_4_0_0_clk),
    .D(_0172_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Q(\nano.core.data_out[20] ));
 sky130_fd_sc_hd__dfxtp_2 _2351_ (.CLK(clknet_4_0_0_clk),
    .D(_0173_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Q(\nano.core.data_out[21] ));
 sky130_fd_sc_hd__dfxtp_2 _2352_ (.CLK(clknet_4_2_0_clk),
    .D(_0174_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Q(\nano.core.data_out[22] ));
 sky130_fd_sc_hd__dfxtp_2 _2353_ (.CLK(clknet_4_2_0_clk),
    .D(_0175_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Q(\nano.core.data_out[23] ));
 sky130_fd_sc_hd__dfxtp_2 _2354_ (.CLK(clknet_4_2_0_clk),
    .D(_0176_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Q(\nano.core.data_out[24] ));
 sky130_fd_sc_hd__dfxtp_2 _2355_ (.CLK(clknet_4_2_0_clk),
    .D(_0177_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Q(\nano.core.data_out[25] ));
 sky130_fd_sc_hd__dfxtp_2 _2356_ (.CLK(clknet_4_2_0_clk),
    .D(_0178_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Q(\nano.core.data_out[26] ));
 sky130_fd_sc_hd__dfxtp_2 _2357_ (.CLK(clknet_4_8_0_clk),
    .D(_0179_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Q(\nano.core.data_out[27] ));
 sky130_fd_sc_hd__dfxtp_2 _2358_ (.CLK(clknet_4_8_0_clk),
    .D(_0180_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Q(\nano.core.data_out[28] ));
 sky130_fd_sc_hd__dfxtp_2 _2359_ (.CLK(clknet_4_8_0_clk),
    .D(_0181_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Q(\nano.core.data_out[29] ));
 sky130_fd_sc_hd__dfxtp_2 _2360_ (.CLK(clknet_4_2_0_clk),
    .D(_0182_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Q(\nano.core.data_out[30] ));
 sky130_fd_sc_hd__dfxtp_2 _2361_ (.CLK(clknet_4_2_0_clk),
    .D(_0183_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Q(\nano.core.data_out[31] ));
 sky130_fd_sc_hd__dfxtp_2 _2362_ (.CLK(clknet_4_8_0_clk),
    .D(_0184_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Q(\nano.core.shift_amt_reg[0] ));
 sky130_fd_sc_hd__dfxtp_2 _2363_ (.CLK(clknet_4_8_0_clk),
    .D(_0185_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Q(\nano.core.shift_amt_reg[1] ));
 sky130_fd_sc_hd__dfxtp_2 _2364_ (.CLK(clknet_4_8_0_clk),
    .D(_0186_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Q(\nano.core.shift_amt_reg[2] ));
 sky130_fd_sc_hd__dfxtp_2 _2365_ (.CLK(clknet_4_8_0_clk),
    .D(_0187_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Q(\nano.core.shift_amt_reg[3] ));
 sky130_fd_sc_hd__dfxtp_2 _2366_ (.CLK(clknet_4_9_0_clk),
    .D(_0188_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Q(\nano.core.shift_amt_reg[4] ));
 sky130_fd_sc_hd__dfxtp_2 _2367_ (.CLK(clknet_4_9_0_clk),
    .D(_0189_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Q(\nano.core.cy ));
 sky130_fd_sc_hd__dfxtp_2 _2368_ (.CLK(clknet_4_9_0_clk),
    .D(_0190_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Q(\nano.core.is_equal_reg ));
 sky130_fd_sc_hd__dfxtp_2 _2369_ (.CLK(clknet_4_6_0_clk),
    .D(_0191_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Q(\nano.spi_engine.bit_count[0] ));
 sky130_fd_sc_hd__dfxtp_2 _2370_ (.CLK(clknet_4_6_0_clk),
    .D(_0192_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Q(\nano.spi_engine.bit_count[1] ));
 sky130_fd_sc_hd__dfxtp_2 _2371_ (.CLK(clknet_4_6_0_clk),
    .D(_0193_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Q(\nano.spi_engine.bit_count[2] ));
 sky130_fd_sc_hd__dfxtp_2 _2372_ (.CLK(clknet_4_13_0_clk),
    .D(_0194_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Q(\nano.spi_engine.bit_count[3] ));
 sky130_fd_sc_hd__dfxtp_2 _2373_ (.CLK(clknet_4_13_0_clk),
    .D(_0195_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Q(\nano.spi_engine.bit_count[4] ));
 sky130_fd_sc_hd__dfxtp_2 _2374_ (.CLK(clknet_4_12_0_clk),
    .D(_0009_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Q(\nano.state[0] ));
 sky130_fd_sc_hd__dfxtp_2 _2375_ (.CLK(clknet_4_12_0_clk),
    .D(_0013_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Q(\nano.state[1] ));
 sky130_fd_sc_hd__dfxtp_2 _2376_ (.CLK(clknet_4_12_0_clk),
    .D(_0000_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Q(\nano.state[2] ));
 sky130_fd_sc_hd__dfxtp_2 _2377_ (.CLK(clknet_4_12_0_clk),
    .D(_0001_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Q(\nano.staging.normalize_result ));
 sky130_fd_sc_hd__dfxtp_2 _2378_ (.CLK(clknet_4_14_0_clk),
    .D(_0002_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Q(\nano.state[4] ));
 sky130_fd_sc_hd__dfxtp_2 _2379_ (.CLK(clknet_4_9_0_clk),
    .D(_0003_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Q(\nano.state[5] ));
 sky130_fd_sc_hd__dfxtp_2 _2380_ (.CLK(clknet_4_14_0_clk),
    .D(_0004_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Q(\nano.staging.normalize_sources ));
 sky130_fd_sc_hd__dfxtp_2 _2381_ (.CLK(clknet_4_12_0_clk),
    .D(_0014_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Q(\nano.state[7] ));
 sky130_fd_sc_hd__dfxtp_2 _2382_ (.CLK(clknet_4_12_0_clk),
    .D(_0015_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Q(\nano.state[8] ));
 sky130_fd_sc_hd__dfxtp_2 _2383_ (.CLK(clknet_4_14_0_clk),
    .D(_0016_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Q(\nano.state[9] ));
 sky130_fd_sc_hd__dfxtp_2 _2384_ (.CLK(clknet_4_14_0_clk),
    .D(_0005_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Q(\nano.state[10] ));
 sky130_fd_sc_hd__dfxtp_2 _2385_ (.CLK(clknet_4_12_0_clk),
    .D(_0010_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Q(\nano.state[11] ));
 sky130_fd_sc_hd__dfxtp_2 _2386_ (.CLK(clknet_4_12_0_clk),
    .D(_0011_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Q(\nano.state[12] ));
 sky130_fd_sc_hd__dfxtp_2 _2387_ (.CLK(clknet_4_12_0_clk),
    .D(_0012_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Q(\nano.core.execute_enable ));
 sky130_fd_sc_hd__dfxtp_2 _2388_ (.CLK(clknet_4_6_0_clk),
    .D(_0006_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Q(\nano.spi_engine.spi_select ));
 sky130_fd_sc_hd__dfxtp_2 _2389_ (.CLK(clknet_4_12_0_clk),
    .D(_0007_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Q(\nano.spi_engine.state[1] ));
 sky130_fd_sc_hd__dfxtp_2 _2390_ (.CLK(clknet_4_12_0_clk),
    .D(_0008_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Q(\nano.spi_engine.state[2] ));
 sky130_fd_sc_hd__conb_1 _2391_ (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .HI(uio_out[7]));
 sky130_fd_sc_hd__conb_1 _2392_ (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .LO(uio_oe[3]));
 sky130_fd_sc_hd__conb_1 _2393_ (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .LO(uio_oe[4]));
 sky130_fd_sc_hd__conb_1 _2394_ (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .LO(uio_oe[5]));
 sky130_fd_sc_hd__conb_1 _2395_ (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .LO(uio_oe[6]));
 sky130_fd_sc_hd__conb_1 _2396_ (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .LO(uio_out[3]));
 sky130_fd_sc_hd__conb_1 _2397_ (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .LO(uio_out[4]));
 sky130_fd_sc_hd__conb_1 _2398_ (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .LO(uio_out[5]));
 sky130_fd_sc_hd__conb_1 _2399_ (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .LO(uio_out[6]));
 sky130_fd_sc_hd__buf_2 _2400_ (.A(rst_n),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(uio_oe[0]));
 sky130_fd_sc_hd__buf_2 _2401_ (.A(rst_n),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(uio_oe[1]));
 sky130_fd_sc_hd__buf_2 _2402_ (.A(rst_n),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(uio_oe[2]));
 sky130_fd_sc_hd__buf_2 _2403_ (.A(rst_n),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(uio_oe[7]));
 sky130_fd_sc_hd__buf_2 _2404_ (.A(\nano.spi_engine.spi_out ),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(uio_out[0]));
 sky130_fd_sc_hd__buf_2 _2405_ (.A(\nano.spi_engine.spi_select ),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(uio_out[1]));
 sky130_fd_sc_hd__buf_2 _2406_ (.A(clknet_4_7_0_clk),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(uio_out[2]));
 sky130_fd_sc_hd__clkbuf_2 clkbuf_0_clk (.A(clk),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(clknet_0_clk));
 sky130_fd_sc_hd__clkbuf_2 clkbuf_4_0_0_clk (.A(clknet_0_clk),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(clknet_4_0_0_clk));
 sky130_fd_sc_hd__clkbuf_2 clkbuf_4_10_0_clk (.A(clknet_0_clk),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(clknet_4_10_0_clk));
 sky130_fd_sc_hd__clkbuf_2 clkbuf_4_11_0_clk (.A(clknet_0_clk),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(clknet_4_11_0_clk));
 sky130_fd_sc_hd__clkbuf_2 clkbuf_4_12_0_clk (.A(clknet_0_clk),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(clknet_4_12_0_clk));
 sky130_fd_sc_hd__clkbuf_2 clkbuf_4_13_0_clk (.A(clknet_0_clk),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(clknet_4_13_0_clk));
 sky130_fd_sc_hd__clkbuf_2 clkbuf_4_14_0_clk (.A(clknet_0_clk),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(clknet_4_14_0_clk));
 sky130_fd_sc_hd__clkbuf_2 clkbuf_4_15_0_clk (.A(clknet_0_clk),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(clknet_4_15_0_clk));
 sky130_fd_sc_hd__clkbuf_2 clkbuf_4_1_0_clk (.A(clknet_0_clk),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(clknet_4_1_0_clk));
 sky130_fd_sc_hd__clkbuf_2 clkbuf_4_2_0_clk (.A(clknet_0_clk),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(clknet_4_2_0_clk));
 sky130_fd_sc_hd__clkbuf_2 clkbuf_4_3_0_clk (.A(clknet_0_clk),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(clknet_4_3_0_clk));
 sky130_fd_sc_hd__clkbuf_2 clkbuf_4_4_0_clk (.A(clknet_0_clk),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(clknet_4_4_0_clk));
 sky130_fd_sc_hd__clkbuf_2 clkbuf_4_5_0_clk (.A(clknet_0_clk),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(clknet_4_5_0_clk));
 sky130_fd_sc_hd__clkbuf_2 clkbuf_4_6_0_clk (.A(clknet_0_clk),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(clknet_4_6_0_clk));
 sky130_fd_sc_hd__clkbuf_2 clkbuf_4_7_0_clk (.A(clknet_0_clk),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(clknet_4_7_0_clk));
 sky130_fd_sc_hd__clkbuf_2 clkbuf_4_8_0_clk (.A(clknet_0_clk),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(clknet_4_8_0_clk));
 sky130_fd_sc_hd__clkbuf_2 clkbuf_4_9_0_clk (.A(clknet_0_clk),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(clknet_4_9_0_clk));
endmodule
