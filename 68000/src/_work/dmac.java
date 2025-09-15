HD63450.java- ソースコード - XEiJ - STUDIO KAMADAinto English
HD63450.java
     1: //========================================================================================
     2: //  HD63450.java
     3: //    en:DMA controller
     4: //    ja:DMAコントローラ
     5: //  Copyright (C) 2003-2022 Makoto Kamada
     6: //
     7: //  This file is part of the XEiJ (X68000 Emulator in Java).
     8: //  You can use, modify and redistribute the XEiJ if the conditions are met.
     9: //  Read the XEiJ License for more details.
    10: //  https://stdkmd.net/xeij/
    11: //========================================================================================
    12: 
    13: package xeij;
    14: 
    15: import java.lang.*;  //Boolean,Character,Class,Comparable,Double,Exception,Float,IllegalArgumentException,Integer,Long,Math,Number,Object,Runnable,SecurityException,String,StringBuilder,System
    16: 
    17: public class HD63450 {
    18: 
    19:   //フラグ
    20:   //                                          3210
    21:   public static final int DMA_DEBUG_TRACE = 0b0000;  //トレースするチャンネルをセット
    22: 
    23:   public static final boolean DMA_ALERT_HIMEM = true;  //MAR,DAR,BARにハイメモリのアドレスが書き込まれた報告する
    24: 
    25:   //レジスタ
    26:   //  DMA_CERはread-only、その他はread/write
    27:   //  DMA_DCR,DMA_SCR,DMA_MTC,DMA_MAR,DMA_DAR,DMA_MFC,DMA_DFCに動作中(dmaACT[i]!=0)に書き込むとDMA_TIMING_ERRORになる
    28: 
    29:   //Channel Status Register (R/W)
    30:   public static final int DMA_CSR = 0x00;
    31:   public static final int DMA_COC = 0b10000000;  //Channel Operation Complete。1=チャンネル動作完了
    32:   public static final int DMA_BLC = 0b01000000;  //BLock transfer Complete。1=ブロック転送完了
    33:   public static final int DMA_NDT = 0b00100000;  //Normal Device Termination。1=正常終了
    34:   public static final int DMA_ERR = 0b00010000;  //ERRor。1=エラーあり
    35:   public static final int DMA_ACT = 0b00001000;  //channel ACTive。1=チャンネル動作中
    36:   public static final int DMA_DIT = 0b00000100;  //! 非対応。~DONE Input Transition。1=~DONE入力があった
    37:   public static final int DMA_PCT = 0b00000010;  //~PCL Transition。1=~PCLの立下りがあった
    38:   public static final int DMA_PCS = 0b00000001;  //~PCL Status。~PCLの状態
    39: 
    40:   //Channel Error Register (R)
    41:   public static final int DMA_CER = 0x01;
    42:   public static final int DMA_ERROR_CODE           = 0b00011111;  //エラーコード
    43:   public static final int DMA_NO_ERROR             = 0b00000000;  //  エラーなし
    44:   public static final int DMA_CONFIGURATION_ERROR  = 0b00000001;  //  コンフィギュレーションエラー
    45:   public static final int DMA_TIMING_ERROR         = 0b00000010;  //  動作タイミングエラー
    46:   public static final int DMA_MEMORY_ADDRESS_ERROR = 0b00000101;  //  アドレスエラー(メモリアドレス)
    47:   public static final int DMA_DEVICE_ADDRESS_ERROR = 0b00000110;  //  アドレスエラー(デバイスアドレス)
    48:   public static final int DMA_BASE_ADDRESS_ERROR   = 0b00000111;  //  アドレスエラー(ベースアドレス)
    49:   public static final int DMA_MEMORY_BUS_ERROR     = 0b00001001;  //  バスエラー(メモリアドレス)
    50:   public static final int DMA_DEVICE_BUS_ERROR     = 0b00001010;  //  バスエラー(デバイスアドレス)
    51:   public static final int DMA_BASE_BUS_ERROR       = 0b00001011;  //  バスエラー(ベースアドレス)
    52:   public static final int DMA_MEMORY_COUNT_ERROR   = 0b00001101;  //  カウントエラー(メモリカウンタ)
    53:   public static final int DMA_BASE_COUNT_ERROR     = 0b00001111;  //  カウントエラー(ベースカウンタ)
    54:   public static final int DMA_EXTERNAL_ABORT       = 0b00010000;  //! 非対応。外部強制停止
    55:   public static final int DMA_SOFTWARE_ABORT       = 0b00010001;  //  ソフトウェア強制停止
    56: 
    57:   //Device Control Register (R/W)
    58:   public static final int DMA_DCR = 0x04;
    59:   public static final int DMA_XRM                    = 0b11000000;  //eXternal Request Mode
    60:   public static final int DMA_BURST_TRANSFER         = 0b00000000;  //  バースト転送モード
    61:   public static final int DMA_NO_HOLD_CYCLE_STEAL    = 0b10000000;  //  ホールドなしサイクルスチールモード
    62:   public static final int DMA_HOLD_CYCLE_STEAL       = 0b11000000;  //! 非対応。ホールドありサイクルスチールモード。ホールドなしサイクルスチールモードと同じ
    63:   public static final int DMA_DTYP                   = 0b00110000;  //Device TYPe
    64:   public static final int DMA_HD68000_COMPATIBLE     = 0b00000000;  //  HD68000コンパチブル(デュアルアドレスモード)
    65:   public static final int DMA_HD6800_COMPATIBLE      = 0b00010000;  //! 非対応。HD6800コンパチブル(デュアルアドレスモード)
    66:   public static final int DMA_ACK_DEVICE             = 0b00100000;  //! 非対応。~ACK付きデバイス(シングルアドレスモード)
    67:   public static final int DMA_ACK_READY_DEVICE       = 0b00110000;  //! 非対応。~ACK,~READY付きデバイス(シングルアドレスモード)
    68:   public static final int DMA_DPS                    = 0b00001000;  //Device Port Size
    69:   public static final int DMA_PORT_8_BIT             = 0b00000000;  //  8ビットポート
    70:   public static final int DMA_PORT_16_BIT            = 0b00001000;  //  16ビットポート
    71:   public static final int DMA_PCL                    = 0b00000011;  //Peripheral Control Line
    72:   public static final int DMA_STATUS_INPUT           = 0b00000000;  //  STATUS入力
    73:   public static final int DMA_STATUS_INPUT_INTERRUPT = 0b00000001;  //! 非対応。割り込みありSTATUS入力
    74:   public static final int DMA_EIGHTH_START_PULSE     = 0b00000010;  //! 非対応。1/8スタートパルス
    75:   public static final int DMA_ABORT_INPUT            = 0b00000011;  //! 非対応。ABORT入力
    76: 
    77:   //Operation Control Register (R/W)
    78:   public static final int DMA_OCR = 0x05;
    79:   public static final int DMA_DIR                 = 0b10000000;  //DIRection
    80:   public static final int DMA_MEMORY_TO_DEVICE    = 0b00000000;  //  メモリ→デバイス。DMA_MAR→DMA_DAR
    81:   public static final int DMA_DEVICE_TO_MEMORY    = 0b10000000;  //  デバイス→メモリ。DMA_DAR→DMA_MAR
    82:   public static final int DMA_BTD                 = 0b01000000;  //! 非対応。multi Block Transfer with ~DONE mode
    83:   public static final int DMA_SIZE                = 0b00110000;  //operand SIZE
    84:   public static final int DMA_BYTE_SIZE           = 0b00000000;  //  8ビット
    85:   public static final int DMA_WORD_SIZE           = 0b00010000;  //  16ビット
    86:   public static final int DMA_LONG_WORD_SIZE      = 0b00100000;  //  32ビット
    87:   public static final int DMA_UNPACKED_8_BIT      = 0b00110000;  //  パックなし8ビット
    88:   public static final int DMA_CHAIN               = 0b00001100;  //CHAINing operation
    89:   public static final int DMA_NO_CHAINING         = 0b00000000;  //  チェインなし
    90:   public static final int DMA_ARRAY_CHAINING      = 0b00001000;  //  アレイチェイン
    91:   public static final int DMA_LINK_ARRAY_CHAINING = 0b00001100;  //  リンクアレイチェイン
    92:   public static final int DMA_REQG                = 0b00000011;  //DMA REQuest Generation method
    93:   public static final int DMA_AUTO_REQUEST        = 0b00000000;  //  オートリクエスト限定速度。転送中にバスを開放する
    94:   public static final int DMA_AUTO_REQUEST_MAX    = 0b00000001;  //  オートリクエスト最大速度。転送中にバスを開放しない
    95:   public static final int DMA_EXTERNAL_REQUEST    = 0b00000010;  //  外部転送要求
    96:   public static final int DMA_DUAL_REQUEST        = 0b00000011;  //  最初はオートリクエスト、2番目から外部転送要求
    97: 
    98:   //Sequence Control Register (R/W)
    99:   public static final int DMA_SCR = 0x06;
   100:   public static final int DMA_MAC =        0b00001100;  //Memory Address register Count
   101:   public static final int DMA_STATIC_MAR = 0b00000000;  //  DMA_MAR固定
   102:   public static final int DMA_INC_MAR    = 0b00000100;  //  DMA_MAR++
   103:   public static final int DMA_DEC_MAR    = 0b00001000;  //  DMA_MAR--
   104:   public static final int DMA_DAC =        0b00000011;  //Device Address register Count
   105:   public static final int DMA_STATIC_DAR = 0b00000000;  //  DMA_DAR固定
   106:   public static final int DMA_INC_DAR    = 0b00000001;  //  DMA_DAR++
   107:   public static final int DMA_DEC_DAR    = 0b00000010;  //  DMA_DAR--
   108: 
   109:   //Channel Control Register (R/W)
   110:   public static final int DMA_CCR = 0x07;
   111:   public static final int DMA_STR = 0b10000000;  //STaRt operation。1=動作開始
   112:   public static final int DMA_CNT = 0b01000000;  //CoNTinue operation。1=コンティニューあり
   113:   public static final int DMA_HLT = 0b00100000;  //Halt operation。1=動作一時停止
   114:   public static final int DMA_SAB = 0b00010000;  //Software ABort。1=動作中止
   115:   public static final int DMA_ITE = 0b00001000;  //InTerrupt Enable。1=割り込み許可
   116: 
   117:   //Transfer Counter, Address Register
   118:   public static final int DMA_MTC = 0x0a;  //Memory Transfer Counter (R/W)
   119:   public static final int DMA_MAR = 0x0c;  //Memory Address Register (R/W)
   120:   public static final int DMA_DAR = 0x14;  //Device Address Register (R/W)
   121:   public static final int DMA_BTC = 0x1a;  //Base Transfer Counter (R/W)
   122:   public static final int DMA_BAR = 0x1c;  //Base Address Register (R/W)
   123: 
   124:   //Interrupt Vector
   125:   public static final int DMA_NIV = 0x25;  //Normal Interrupt Vector (R/W)
   126:   public static final int DMA_EIV = 0x27;  //Error Interrupt Vector (R/W)
   127: 
   128:   //Function Codes
   129:   public static final int DMA_MFC = 0x29;  //Memory Function Codes (R/W)
   130:   public static final int DMA_FC2 = 0b00000100;  //Function Code 2
   131:   public static final int DMA_FC1 = 0b00000010;  //! 非対応。Function Code 1
   132:   public static final int DMA_FC0 = 0b00000001;  //! 非対応。Function Code 0
   133: 
   134:   //Channel Priority Register (R/W)
   135:   public static final int DMA_CPR = 0x2d;
   136:   public static final int DMA_CP = 0b00000011;  //! 未対応。Channel Priority。0=高,1,2,3=低
   137: 
   138:   //Function Codes
   139:   public static final int DMA_DFC = 0x31;  //Device Function Codes (R/W)
   140:   public static final int DMA_BFC = 0x39;  //Base Function Codes (R/W)
   141: 
   142:   //General Control Register (R/W)
   143:   public static final int DMA_GCR = 0xff;
   144:   public static final int DMA_BT = 0b00001100;  //Burst Time。0=16clk,1=32clk,2=64clk,3=128clk
   145:   public static final int DMA_BR = 0b00000011;  //Bandwidth Ratio。0=1/2,1=1/4,2=1/8,3=1/16
   146: 
   147:   //レジスタ
   148:   //  すべてゼロ拡張
   149:   public static final int[] dmaPCS = new int[4];         //DMA_CSR bit0
   150:   public static final int[] dmaPCT = new int[4];         //        bit1
   151:   public static final int[] dmaDIT = new int[4];         //        bit2
   152:   public static final int[] dmaACT = new int[4];         //        bit3
   153:   public static final int[] dmaERR = new int[4];         //        bit4
   154:   public static final int[] dmaNDT = new int[4];         //        bit5
   155:   public static final int[] dmaBLC = new int[4];         //        bit6
   156:   public static final int[] dmaCOC = new int[4];         //        bit7
   157:   public static final int[] dmaErrorCode = new int[4];   //DMA_CER bit0-4
   158:   public static final int[] dmaPCL = new int[4];         //DMA_DCR bit0-1
   159:   public static final int[] dmaDPS = new int[4];         //        bit3
   160:   public static final int[] dmaDTYP = new int[4];        //        bit4-5
   161:   public static final int[] dmaXRM = new int[4];         //        bit6-7
   162:   public static final int[] dmaREQG = new int[4];        //DMA_OCR bit0-1
   163:   public static final int[] dmaCHAIN = new int[4];       //        bit2-3
   164:   public static final int[] dmaSIZE = new int[4];        //        bit4-5
   165:   public static final int[] dmaBTD = new int[4];         //        bit6
   166:   public static final int[] dmaDIR = new int[4];         //        bit7
   167:   public static final int[] dmaDAC = new int[4];         //DMA_SCR bit0-1
   168:   public static final int[] dmaDACValue = new int[4];    //           dmaDAC==DMA_INC_DAR?1:dmaDAC==DMA_DEC_DAR?-1:0
   169:   public static final int[] dmaMAC = new int[4];         //        bit2-3
   170:   public static final int[] dmaMACValue = new int[4];    //           dmaMAC==DMA_INC_MAR?1:dmaMAC==DMA_DEC_MAR?-1:0
   171:   public static final int[] dmaITE = new int[4];         //DMA_CCR bit3
   172:   public static final int[] dmaSAB = new int[4];         //        bit4
   173:   public static final int[] dmaHLT = new int[4];         //        bit5
   174:   public static final int[] dmaCNT = new int[4];         //        bit6
   175:   public static final int[] dmaSTR = new int[4];         //        bit7
   176:   public static final int[] dmaMTC = new int[4];         //DMA_MTC bit0-15
   177:   public static final int[] dmaMAR = new int[4];         //DMA_MAR bit0-31
   178:   public static final int[] dmaDAR = new int[4];         //DMA_DAR bit0-31
   179:   public static final int[] dmaBTC = new int[4];         //DMA_BTC bit0-15
   180:   public static final int[] dmaBAR = new int[4];         //DMA_BAR bit0-31
   181:   public static final int[] dmaNIV = new int[4];         //DMA_NIV bit0-7
   182:   public static final int[] dmaEIV = new int[4];         //DMA_EIV bit0-7
   183:   public static final int[] dmaMFC = new int[4];         //DMA_MFC bit2
   184:   public static final MemoryMappedDevice[][] dmaMFCMap = new MemoryMappedDevice[4][];  //  DataBreakPoint.DBP_ON?dmaMFC[i]==0?udm:sdm:dmaMFC[i]==0?um:sm
   185:   public static final int[] dmaCP = new int[4];          //DMA_CPR bit0-1
   186:   public static final int[] dmaDFC = new int[4];         //DMA_DFC bit2
   187:   public static final MemoryMappedDevice[][] dmaDFCMap = new MemoryMappedDevice[4][];  //  DataBreakPoint.DBP_ON?dmaDFC[i]==0?udm:sdm:dmaDFC[i]==0?um:sm
   188:   public static final int[] dmaBFC = new int[4];         //DMA_BFC bit2
   189:   public static final MemoryMappedDevice[][] dmaBFCMap = new MemoryMappedDevice[4][];  //  DataBreakPoint.DBP_ON?dmaBFC[i]==0?udm:sdm:dmaBFC[i]==0?um:sm
   190:   public static int dmaBR;                               //DMA_GCR bit0-1。0=1/2,1=1/4,2=1/8,3=1/16
   191:   public static int dmaBT;                               //        bit2-3。0=16clk,1=32clk,2=64clk,3=128clk
   192:   public static long dmaBurstInterval;  //バースト間隔。XEiJ.dmaCycleUnit<<4+(dmaBT>>2)
   193:   public static long dmaBurstSpan;  //バースト期間。dmaBurstInterval>>1+(dmaBR&3)
   194:   public static long dmaBurstStart;  //バースト開始時刻
   195:   public static long dmaBurstEnd;  //バースト終了時刻
   196:   public static long[] dmaRequestTime = new long[4];  //動作開始時刻。オートリクエスト最大速度のとき次の予約を入れる時刻
   197: 
   198:   //割り込み
   199:   public static final int[] dmaInnerRequest = new int[8];  //割り込み要求カウンタ
   200:   public static final int[] dmaInnerAcknowleged = new int[8];  //割り込み受付カウンタ
   201: 
   202:   //クロック
   203:   public static final long[] dmaInnerClock = new long[4];  //転送要求時刻(XEiJ.TMR_FREQ単位)
   204: 
   205:   //アクセスサイクル数
   206:   public static int dmaReadCycles;  //1ワードリードの所要サイクル数
   207:   public static int dmaWriteCycles;  //1ワードライトの所要サイクル数
   208: 
   209:   public static final TickerQueue.Ticker[] dmaTickerArray = new TickerQueue.Ticker[] {
   210:     new TickerQueue.Ticker () {
   211:       @Override protected void tick () {
   212:         dmaTransfer (0);
   213:       }
   214:     },
   215:     new TickerQueue.Ticker () {
   216:       @Override protected void tick () {
   217:         dmaTransfer (1);
   218:       }
   219:     },
   220:     new TickerQueue.Ticker () {
   221:       @Override protected void tick () {
   222:         dmaTransfer (2);
   223:       }
   224:     },
   225:     new TickerQueue.Ticker () {
   226:       @Override protected void tick () {
   227:         dmaTransfer (3);
   228:       }
   229:     },
   230:   };
   231: 
   232:   //dmaInit ()
   233:   //  DMAコントローラを初期化する
   234:   public static void dmaInit () {
   235:     //レジスタ
   236:     //dmaPCS = new int[4];
   237:     //dmaPCT = new int[4];
   238:     //dmaDIT = new int[4];
   239:     //dmaACT = new int[4];
   240:     //dmaERR = new int[4];
   241:     //dmaNDT = new int[4];
   242:     //dmaBLC = new int[4];
   243:     //dmaCOC = new int[4];
   244:     //dmaErrorCode = new int[4];
   245:     //dmaPCL = new int[4];
   246:     //dmaDPS = new int[4];
   247:     //dmaDTYP = new int[4];
   248:     //dmaXRM = new int[4];
   249:     //dmaREQG = new int[4];
   250:     //dmaCHAIN = new int[4];
   251:     //dmaSIZE = new int[4];
   252:     //dmaBTD = new int[4];
   253:     //dmaDIR = new int[4];
   254:     //dmaDAC = new int[4];
   255:     //dmaDACValue = new int[4];
   256:     //dmaMAC = new int[4];
   257:     //dmaMACValue = new int[4];
   258:     //dmaITE = new int[4];
   259:     //dmaSAB = new int[4];
   260:     //dmaHLT = new int[4];
   261:     //dmaCNT = new int[4];
   262:     //dmaSTR = new int[4];
   263:     //dmaMTC = new int[4];
   264:     //dmaMAR = new int[4];
   265:     //dmaDAR = new int[4];
   266:     //dmaBTC = new int[4];
   267:     //dmaBAR = new int[4];
   268:     //dmaNIV = new int[4];
   269:     //dmaEIV = new int[4];
   270:     //dmaMFC = new int[4];
   271:     //dmaMFCMap = new MMD[4];
   272:     //dmaCP = new int[4];
   273:     //dmaDFC = new int[4];
   274:     //dmaDFCMap = new MMD[4];
   275:     //dmaBFC = new int[4];
   276:     //dmaBFCMap = new MMD[4];
   277:     //dmaRequestTime = new long[4];
   278:     //dmaPCSはresetでは操作しない
   279:     dmaPCS[0] = 0;  //外部垂直同期信号。スーパーインポーズしていなければ0
   280:     dmaPCS[1] = 0;  //プルアップされている。常に0
   281:     dmaPCS[2] = 1;  //拡張スロットの~EXPCL。何もなければ1
   282:     dmaPCS[3] = 0;  //ADPCMの~ADPCMREQ。PCL[3]とREQ[3]は直結
   283:     //割り込み
   284:     //dmaInnerRequest = new int[8];
   285:     //dmaInnerAcknowleged = new int[8];
   286:     //クロック
   287:     //dmaInnerClock = new long[4];
   288:     dmaReset ();
   289:   }  //dmaInit()
   290: 
   291:   //リセット
   292:   public static void dmaReset () {
   293:     //レジスタ
   294:     for (int i = 0; i < 4; i++) {
   295:       //dmaPCSはresetでは操作しない
   296:       dmaPCT[i] = 0;
   297:       dmaDIT[i] = 0;
   298:       dmaACT[i] = 0;
   299:       dmaERR[i] = 0;
   300:       dmaNDT[i] = 0;
   301:       dmaBLC[i] = 0;
   302:       dmaCOC[i] = 0;
   303:       dmaErrorCode[i] = 0;
   304:       dmaPCL[i] = 0;
   305:       dmaDPS[i] = 0;
   306:       dmaDTYP[i] = 0;
   307:       dmaXRM[i] = 0;
   308:       dmaREQG[i] = 0;
   309:       dmaCHAIN[i] = 0;
   310:       dmaSIZE[i] = 0;
   311:       dmaBTD[i] = 0;
   312:       dmaDIR[i] = 0;
   313:       dmaDAC[i] = 0;
   314:       dmaDACValue[i] = 0;
   315:       dmaMAC[i] = 0;
   316:       dmaMACValue[i] = 0;
   317:       dmaITE[i] = 0;
   318:       dmaSAB[i] = 0;
   319:       dmaHLT[i] = 0;
   320:       dmaCNT[i] = 0;
   321:       dmaSTR[i] = 0;
   322:       dmaMTC[i] = 0;
   323:       dmaMAR[i] = 0;
   324:       dmaDAR[i] = 0;
   325:       dmaBTC[i] = 0;
   326:       dmaBAR[i] = 0;
   327:       dmaNIV[i] = 0x0f;  //割り込みベクタの初期値は未初期化割り込みを示す0x0f
   328:       dmaEIV[i] = 0x0f;
   329:       dmaMFC[i] = 0;
   330:       if (DataBreakPoint.DBP_ON) {
   331:         dmaMFCMap[i] = DataBreakPoint.dbpUserMap;
   332:       } else {
   333:         dmaMFCMap[i] = XEiJ.busUserMap;
   334:       }
   335:       dmaCP[i] = 0;
   336:       dmaDFC[i] = 0;
   337:       if (DataBreakPoint.DBP_ON) {
   338:         dmaDFCMap[i] = DataBreakPoint.dbpUserMap;
   339:       } else {
   340:         dmaDFCMap[i] = XEiJ.busUserMap;
   341:       }
   342:       dmaBFC[i] = 0;
   343:       if (DataBreakPoint.DBP_ON) {
   344:         dmaBFCMap[i] = DataBreakPoint.dbpUserMap;
   345:       } else {
   346:         dmaBFCMap[i] = XEiJ.busUserMap;
   347:       }
   348:       dmaRequestTime[i] = XEiJ.FAR_FUTURE;
   349:     }
   350:     dmaBR = 0;
   351:     dmaBT = 0;
   352:     dmaBurstInterval = XEiJ.dmaCycleUnit << 4 + (dmaBT >> 2);
   353:     dmaBurstSpan = dmaBurstInterval >> 1 + (dmaBR & 3);
   354:     dmaBurstStart = XEiJ.FAR_FUTURE;
   355:     dmaBurstEnd = 0L;
   356:     //割り込み
   357:     for (int i = 0; i < 8; i++) {
   358:       dmaInnerRequest[i] = 0;
   359:       dmaInnerAcknowleged[i] = 0;
   360:     }
   361:     //クロック
   362:     for (int i = 0; i < 4; i++) {
   363:       dmaInnerClock[i] = XEiJ.FAR_FUTURE;
   364:       TickerQueue.tkqRemove (dmaTickerArray[i]);
   365:     }
   366:     //アクセスサイクル数
   367:     dmaReadCycles = (XEiJ.currentModel.isPRO () ? 5 :
   368:                      XEiJ.currentModel.isCompact () ? 3 : 4);  //PROは5、Compactは3、その他は4
   369:     dmaWriteCycles = XEiJ.currentModel.isPRO () ? 5 : 4;  //PROは5、その他は4
   370:   }  //dmaReset()
   371: 
   372:   //割り込み受付
   373:   //  コアが割り込み要求を受け付けたときに呼び出す
   374:   //  割り込みベクタ番号を返す
   375:   //  割り込み要求を取り下げる場合は0を返す
   376:   //  オートベクタを使用するデバイスはオートベクタの番号を返すこと
   377:   public static int dmaAcknowledge () {
   378:     for (int i = 0; i < 8; i++) {  //! 未対応。本来はチャンネルプライオリティに従うべき
   379:       int request = dmaInnerRequest[i];
   380:       if (dmaInnerAcknowleged[i] != request) {
   381:         dmaInnerAcknowleged[i] = request;
   382:         return (i & 1) == 0 ? dmaNIV[i >> 1] : dmaEIV[i >> 1];
   383:       }
   384:     }
   385:     return 0;
   386:   }  //dmaAcknowledge()
   387: 
   388:   //割り込み終了
   389:   //  コアが割り込み処理を終了したときに呼び出す
   390:   //  まだ処理されていない割り込みが残っていたら再度割り込み要求を出す
   391:   public static void dmaDone () {
   392:     for (int i = 0; i < 8; i++) {  //! 未対応。本来はチャンネルプライオリティに従うべき
   393:       if (dmaInnerRequest[i] != dmaInnerAcknowleged[i]) {
   394:         XEiJ.mpuIRR |= XEiJ.MPU_DMA_INTERRUPT_MASK;
   395:         return;
   396:       }
   397:     }
   398:   }  //dmaDone()
   399: 
   400:   //dmaStart (i)
   401:   //  DMA転送開始
   402:   public static void dmaStart (int i) {
   403:     if (DMA_DEBUG_TRACE != 0 && (DMA_DEBUG_TRACE & 1 << i) != 0) {
   404:       System.out.printf ("%d %08x dmaStart(%d)\n", XEiJ.mpuClockTime, XEiJ.regPC0, i);
   405:       System.out.printf ("CSR=0x%02x,CER=0x%02x,DCR=0x%02x,OCR=0x%02x,SCR=0x%02x,CCR=0x%02x,MTC=0x%04x,MAR=0x%08x,DAR=0x%08x,BTC=0x%04x,BAR=0x%08x\n",
   406:                          dmaCOC[i] | dmaBLC[i] | dmaNDT[i] | dmaERR[i] | dmaACT[i] | dmaDIT[i] | dmaPCT[i] | dmaPCS[i],  //CSR
   407:                          dmaErrorCode[i],  //CER
   408:                          dmaXRM[i] | dmaDTYP[i] | dmaDPS[i] | dmaPCL[i],  //DCR
   409:                          dmaDIR[i] | dmaBTD[i] | dmaSIZE[i] | dmaCHAIN[i] | dmaREQG[i],  //OCR
   410:                          dmaMAC[i] | dmaDAC[i],  //SCR
   411:                          dmaSTR[i] | dmaCNT[i] | dmaHLT[i] | dmaSAB[i] | dmaITE[i],  //CCR
   412:                          dmaMTC[i], dmaMAR[i], dmaDAR[i], dmaBTC[i], dmaBAR[i]);
   413:     }
   414:     if ((dmaCOC[i] | dmaBLC[i] | dmaNDT[i] | dmaERR[i] | dmaACT[i]) != 0) {  //DMA_CSRがクリアされていない状態でSTRをセットしようとした
   415:       dmaErrorExit (i, DMA_TIMING_ERROR);
   416:       return;
   417:     }
   418:     if (((dmaDTYP[i] == DMA_HD68000_COMPATIBLE || dmaDTYP[i] == DMA_HD6800_COMPATIBLE) &&  //デュアルアドレスモードで
   419:          dmaDPS[i] == DMA_PORT_16_BIT && dmaSIZE[i] == DMA_BYTE_SIZE &&  //DMA_DPSが16ビットでSIZEが8ビットで
   420:          (dmaREQG[i] == DMA_EXTERNAL_REQUEST || dmaREQG[i] == DMA_DUAL_REQUEST)) ||  //外部転送要求のとき、または
   421:         dmaXRM[i] == 0b01000000 || dmaMAC[i] == 0b00001100 || dmaDAC[i] == 0b00000011 || dmaCHAIN[i] == 0b00000100 ||  //不正な値が指定されたとき
   422:         (dmaSIZE[i] == 0b00000011 && !((dmaDTYP[i] == DMA_HD68000_COMPATIBLE || dmaDTYP[i] == DMA_HD6800_COMPATIBLE) && dmaDPS[i] == DMA_PORT_8_BIT))) {
   423:       dmaErrorExit (i, DMA_CONFIGURATION_ERROR);
   424:       return;
   425:     }
   426:     //strには書き込まない
   427:     //チャンネル動作開始
   428:     dmaRequestTime[i] = XEiJ.mpuClockTime;
   429:     dmaACT[i] = DMA_ACT;
   430:     if (dmaCHAIN[i] == DMA_ARRAY_CHAINING) {  //アレイチェインモードのとき
   431:       if (dmaBTC[i] == 0) {  //カウントエラー
   432:         dmaErrorExit (i, DMA_BASE_COUNT_ERROR);
   433:         return;
   434:       }
   435:       if ((dmaBAR[i] & 1) != 0) {  //アドレスエラー
   436:         dmaErrorExit (i, DMA_BASE_ADDRESS_ERROR);
   437:         return;
   438:       }
   439:       try {
   440:         XEiJ.busCycleUnit = XEiJ.dmaCycleUnit;
   441:         MemoryMappedDevice[] mm = dmaBFCMap[i];
   442:         int a = dmaBAR[i];
   443:         dmaMAR[i] = mm[a >>> XEiJ.BUS_PAGE_BITS].mmdRws (a) << 16 | mm[a + 2 >>> XEiJ.BUS_PAGE_BITS].mmdRwz (a + 2);
   444:         dmaMTC[i] = mm[a + 4 >>> XEiJ.BUS_PAGE_BITS].mmdRwz (a + 4);
   445:         dmaBAR[i] += 6;
   446:         XEiJ.mpuClockTime += XEiJ.dmaCycleUnit * dmaReadCycles * 3;
   447:         XEiJ.busCycleUnit = XEiJ.mpuCycleUnit;
   448:       } catch (M68kException e) {  //バスエラー
   449:         XEiJ.busCycleUnit = XEiJ.mpuCycleUnit;
   450:         dmaErrorExit (i, DMA_BASE_BUS_ERROR);
   451:         return;
   452:       }
   453:       dmaBTC[i]--;
   454:     } else if (dmaCHAIN[i] == DMA_LINK_ARRAY_CHAINING) {  //リンクアレイチェインモードのとき
   455:       if ((dmaBAR[i] & 1) != 0) {  //アドレスエラー
   456:         dmaErrorExit (i, DMA_BASE_ADDRESS_ERROR);
   457:         return;
   458:       }
   459:       try {
   460:         XEiJ.busCycleUnit = XEiJ.dmaCycleUnit;
   461:         MemoryMappedDevice[] mm = dmaBFCMap[i];
   462:         int a = dmaBAR[i];
   463:         dmaMAR[i] = mm[a >>> XEiJ.BUS_PAGE_BITS].mmdRws (a) << 16 | mm[a + 2 >>> XEiJ.BUS_PAGE_BITS].mmdRwz (a + 2);
   464:         dmaMTC[i] = mm[a + 4 >>> XEiJ.BUS_PAGE_BITS].mmdRwz (a + 4);
   465:         dmaBAR[i] = mm[a + 6 >>> XEiJ.BUS_PAGE_BITS].mmdRws (a + 6) << 16 | mm[a + 8 >>> XEiJ.BUS_PAGE_BITS].mmdRwz (a + 8);
   466:         XEiJ.mpuClockTime += XEiJ.dmaCycleUnit * dmaReadCycles * 5;
   467:         XEiJ.busCycleUnit = XEiJ.mpuCycleUnit;
   468:       } catch (M68kException e) {  //バスエラー
   469:         XEiJ.busCycleUnit = XEiJ.mpuCycleUnit;
   470:         dmaErrorExit (i, DMA_BASE_BUS_ERROR);
   471:         return;
   472:       }
   473:     }
   474:     if (dmaMTC[i] == 0) {  //カウントエラー
   475:       dmaErrorExit (i, DMA_MEMORY_COUNT_ERROR);
   476:       return;
   477:     }
   478:     if ((dmaSIZE[i] == DMA_WORD_SIZE || dmaSIZE[i] == DMA_LONG_WORD_SIZE) && (dmaMAR[i] & 1) != 0) {  //アドレスエラー
   479:       dmaErrorExit (i, DMA_MEMORY_ADDRESS_ERROR);
   480:       return;
   481:     }
   482:     if ((dmaSIZE[i] == DMA_WORD_SIZE || dmaSIZE[i] == DMA_LONG_WORD_SIZE) && dmaDPS[i] == DMA_PORT_16_BIT && (dmaDAR[i] & 1) != 0) {  //アドレスエラー
   483:       dmaErrorExit (i, DMA_DEVICE_ADDRESS_ERROR);
   484:       return;
   485:     }
   486:     if (dmaREQG[i] == DMA_AUTO_REQUEST) {  //オートリクエスト限定速度
   487:       dmaBurstStart = XEiJ.mpuClockTime;  //今回のバースト開始時刻
   488:       dmaBurstEnd = dmaBurstStart + dmaBurstSpan;  //今回のバースト終了時刻
   489:       dmaTransfer (i);  //最初のデータを転送する
   490:     } else if (dmaREQG[i] != DMA_EXTERNAL_REQUEST ||  //オートリクエスト最大速度または最初はオートリクエスト、2番目から外部転送要求
   491:                dmaPCT[i] != 0) {  //外部転送要求で既に要求がある
   492:       dmaTransfer (i);  //最初のデータを転送する
   493:     }
   494:   }  //dmaStart(int)
   495: 
   496:   //dmaContinue (i)
   497:   //  転送継続
   498:   public static void dmaContinue (int i) {
   499:     if (DMA_DEBUG_TRACE != 0 && (DMA_DEBUG_TRACE & 1 << i) != 0) {
   500:       System.out.printf ("%d %08x dmaContinue(%d)\n", XEiJ.mpuClockTime, XEiJ.regPC0, i);
   501:     }
   502:     if (dmaREQG[i] == DMA_AUTO_REQUEST) {  //オートリクエスト限定速度
   503:       if (XEiJ.mpuClockTime < dmaBurstEnd) {  //バースト継続
   504:         //現在時刻に次の予約を入れる
   505:         //dmaInnerClock[i] = XEiJ.mpuClockTime;
   506:         //動作開始時刻に次の予約を入れる
   507:         dmaInnerClock[i] = dmaRequestTime[i];
   508:         TickerQueue.tkqAdd (dmaTickerArray[i], dmaInnerClock[i]);
   509:       } else {  //バースト終了
   510:         dmaBurstStart += dmaBurstInterval;  //次回のバースト開始時刻
   511:         if (dmaBurstStart < XEiJ.mpuClockTime) {
   512:           dmaBurstStart = XEiJ.mpuClockTime + dmaBurstInterval;  //間に合っていないとき1周だけ延期する
   513:         }
   514:         dmaBurstEnd = dmaBurstStart + dmaBurstSpan;  //次回のバースト終了時刻
   515:         //次回のバースト開始時刻に次の予約を入れる
   516:         dmaInnerClock[i] = dmaBurstStart;
   517:         TickerQueue.tkqAdd (dmaTickerArray[i], dmaInnerClock[i]);
   518:       }
   519:     } else if (dmaREQG[i] == DMA_AUTO_REQUEST_MAX) {  //オートリクエスト最大速度
   520:       //現在時刻に次の予約を入れる
   521:       //dmaInnerClock[i] = XEiJ.mpuClockTime;
   522:       //動作開始時刻に次の予約を入れる
   523:       dmaInnerClock[i] = dmaRequestTime[i];
   524:       TickerQueue.tkqAdd (dmaTickerArray[i], dmaInnerClock[i]);
   525:     }
   526:   }  //dmaContinue(int)
   527: 
   528:   //dmaHalt (i,hlt)
   529:   //  停止と再開
   530:   public static void dmaHalt (int i, int hlt) {
   531:     if (DMA_DEBUG_TRACE != 0 && (DMA_DEBUG_TRACE & 1 << i) != 0) {
   532:       System.out.printf ("%d %08x dmaHalt(%d,%d)\n", XEiJ.mpuClockTime, XEiJ.regPC0, i, hlt);
   533:     }
   534:     if ((~dmaHLT[i] & hlt) != 0) {  //動作→停止
   535:       if (dmaACT[i] == 0) {  //動作中でないときHLTをセットしようとした
   536:         dmaErrorExit (i, DMA_TIMING_ERROR);
   537:         return;
   538:       }
   539:       dmaHLT[i] = DMA_HLT;
   540:       dmaRequestTime[i] = XEiJ.FAR_FUTURE;
   541:       if (dmaInnerClock[i] != XEiJ.FAR_FUTURE) {
   542:         dmaInnerClock[i] = XEiJ.FAR_FUTURE;
   543:         TickerQueue.tkqRemove (dmaTickerArray[i]);
   544:       }
   545:     } else if ((dmaHLT[i] & ~hlt) != 0) {  //停止→動作
   546:       dmaHLT[i] = 0;
   547:       if (dmaACT[i] == 0) {
   548:         return;
   549:       }
   550:       dmaRequestTime[i] = XEiJ.mpuClockTime;
   551:       if (dmaREQG[i] == DMA_AUTO_REQUEST) {  //オートリクエスト限定速度
   552:         dmaBurstStart = XEiJ.mpuClockTime;
   553:         dmaBurstEnd = dmaBurstStart + dmaBurstSpan;
   554:       }
   555:       dmaContinue (i);
   556:     }
   557:   }
   558: 
   559:   //dmaComplete (i)
   560:   //  転送終了
   561:   //  dmaCOC,dmaBLC,dmaNDTは個別に設定すること
   562:   public static void dmaComplete (int i) {
   563:     if (DMA_DEBUG_TRACE != 0 && (DMA_DEBUG_TRACE & 1 << i) != 0) {
   564:       System.out.printf ("%d %08x dmaComplete(%d)\n", XEiJ.mpuClockTime, XEiJ.regPC0, i);
   565:     }
   566:     dmaRequestTime[i] = XEiJ.FAR_FUTURE;
   567:     dmaERR[i] = 0;
   568:     dmaACT[i] = 0;
   569:     dmaSTR[i] = 0;
   570:     dmaCNT[i] = 0;
   571:     dmaSAB[i] = 0;
   572:     dmaErrorCode[i] = 0;
   573:     if (dmaITE[i] != 0) {  //インタラプトイネーブル
   574:       dmaInnerRequest[i << 1]++;
   575:       XEiJ.mpuIRR |= XEiJ.MPU_DMA_INTERRUPT_MASK;
   576:     }
   577:     if (dmaInnerClock[i] != XEiJ.FAR_FUTURE) {
   578:       dmaInnerClock[i] = XEiJ.FAR_FUTURE;
   579:       TickerQueue.tkqRemove (dmaTickerArray[i]);
   580:     }
   581:   }  //dmaComplete(int)
   582: 
   583:   //dmaErrorExit (i, code)
   584:   //  エラー終了
   585:   //  dmaCOC,dmaBLC,dmaNDTは操作しない
   586:   public static void dmaErrorExit (int i, int code) {
   587:     if (DMA_DEBUG_TRACE != 0 && (DMA_DEBUG_TRACE & 1 << i) != 0) {
   588:       System.out.printf ("%d %08x dmaErrorExit(%d,%d)\n", XEiJ.mpuClockTime, XEiJ.regPC0, i, code);
   589:     }
   590:     dmaRequestTime[i] = XEiJ.FAR_FUTURE;
   591:     dmaERR[i] = DMA_ERR;
   592:     dmaACT[i] = 0;
   593:     dmaSTR[i] = 0;
   594:     dmaCNT[i] = 0;
   595:     dmaHLT[i] = 0;
   596:     dmaSAB[i] = 0;
   597:     dmaErrorCode[i] = code;
   598:     if (dmaITE[i] != 0) {  //インタラプトイネーブル
   599:       dmaInnerRequest[i << 1 | 1]++;
   600:       XEiJ.mpuIRR |= XEiJ.MPU_DMA_INTERRUPT_MASK;
   601:     }
   602:     if (dmaInnerClock[i] != XEiJ.FAR_FUTURE) {
   603:       dmaInnerClock[i] = XEiJ.FAR_FUTURE;
   604:       TickerQueue.tkqRemove (dmaTickerArray[i]);
   605:     }
   606:   }  //dmaErrorExit(int,int)
   607: 
   608:   //dmaFallPCL (i) {
   609:   //  外部転送要求
   610:   //  X68000ではREQ3とPCL3が直結されているので同時に変化する
   611:   public static void dmaFallPCL (int i) {
   612:     if (DMA_DEBUG_TRACE != 0 && (DMA_DEBUG_TRACE & 1 << i) != 0) {
   613:       System.out.printf ("%d %08x dmaFallPCL(%d)\n", XEiJ.mpuClockTime, XEiJ.regPC0, i);
   614:     }
   615:     dmaPCS[i] = 0;
   616:     dmaPCT[i] = DMA_PCT;
   617:     if (dmaACT[i] != 0 &&  //動作中
   618:         (dmaREQG[i] & (DMA_EXTERNAL_REQUEST & DMA_DUAL_REQUEST)) != 0) {  //外部転送要求または最初はオートリクエスト、2番目から外部転送要求
   619:       //現在時刻から1clk後に次の予約を入れる
   620:       //  0clk後だとADPCMの再生に失敗する場合がある
   621:       dmaInnerClock[i] = XEiJ.mpuClockTime + XEiJ.dmaCycleUnit * 1;
   622:       TickerQueue.tkqAdd (dmaTickerArray[i], dmaInnerClock[i]);
   623:     }
   624:   }  //dmaFallPCL(int)
   625: 
   626:   //dmaRisePCL (i)
   627:   //  外部転送要求解除
   628:   public static void dmaRisePCL (int i) {
   629:     if (DMA_DEBUG_TRACE != 0 && (DMA_DEBUG_TRACE & 1 << i) != 0) {
   630:       System.out.printf ("%d %08x dmaRisePCL(%d)\n", XEiJ.mpuClockTime, XEiJ.regPC0, i);
   631:     }
   632:     dmaPCS[i] = DMA_PCS;
   633:     dmaPCT[i] = 0;
   634:     dmaInnerClock[i] = XEiJ.FAR_FUTURE;
   635:     TickerQueue.tkqRemove (dmaTickerArray[i]);
   636:   }  //dmaRisePCL(int)
   637: 
   638:   //dmaTransfer (i)
   639:   //  1データ転送する
   640:   @SuppressWarnings ("fallthrough") public static void dmaTransfer (int i) {
   641:     if (DMA_DEBUG_TRACE != 0 && (DMA_DEBUG_TRACE & 1 << i) != 0) {
   642:       System.out.printf ("%d %08x dmaTransfer(%d,0x%08x,0x%08x,%d)\n", XEiJ.mpuClockTime, XEiJ.regPC0, i,
   643:                          dmaDIR[i] == DMA_MEMORY_TO_DEVICE ? dmaMAR[i] : dmaDAR[i],
   644:                          dmaDIR[i] == DMA_MEMORY_TO_DEVICE ? dmaDAR[i] : dmaMAR[i],
   645:                          dmaSIZE[i] == DMA_BYTE_SIZE || dmaSIZE[i] == DMA_UNPACKED_8_BIT ? 1 : dmaSIZE[i] == DMA_WORD_SIZE ? 2 : 4);
   646:     }
   647:     if (dmaHLT[i] != 0) {  //一時停止中
   648:       return;  //何もしない
   649:     }
   650:   transfer:
   651:     {
   652:       int code = 0;
   653:       try {
   654:         XEiJ.busCycleUnit = XEiJ.dmaCycleUnit;
   655:         switch (dmaSIZE[i]) {
   656:         case DMA_BYTE_SIZE:  //オペランドサイズ8ビット、パックあり
   657:           //  オートリクエストで、2バイト以上あり、1バイト目と2バイト目のアドレスの奇遇が異なり、偶数境界を跨がないとき、
   658:           //  2バイト分の転送を1ワードにまとめて行う
   659:           if ((dmaREQG[i] == DMA_AUTO_REQUEST || dmaREQG[i] == DMA_AUTO_REQUEST_MAX) &&  //オートリクエストで
   660:               dmaMTC[i] >= 2) {  //2バイト以上
   661:             boolean mpk = (dmaMAR[i] & 1) == 0 ? dmaMACValue[i] > 0 : dmaMACValue[i] < 0;  //true=メモリをパックできる
   662:             boolean dpk = dmaDPS[i] == DMA_PORT_16_BIT && ((dmaDAR[i] & 1) == 0 ? dmaDACValue[i] > 0 : dmaDACValue[i] < 0);  //true=デバイスをパックできる
   663:             if (mpk || dpk) {  //メモリとデバイスの少なくともどちらか一方をパックできる
   664:               if (dmaDIR[i] == DMA_MEMORY_TO_DEVICE) {  //メモリ→デバイス
   665:                 int data1;  //1バイト目
   666:                 int data2;  //2バイト目
   667:                 //メモリからリード
   668:                 code = DMA_MEMORY_BUS_ERROR;
   669:                 MemoryMappedDevice[] mm = dmaMFCMap[i];
   670:                 if (mpk) {  //パックする
   671:                   if (dmaMACValue[i] > 0) {  //インクリメントでパックする
   672:                     int a = dmaMAR[i];
   673:                     int t = mm[a >>> XEiJ.BUS_PAGE_BITS].mmdRwz (a);
   674:                     data1 = t >> 8;
   675:                     data2 = t & 255;
   676:                     dmaMAR[i] += 2;
   677:                     //XEiJ.mpuClockTime += XEiJ.dmaCycleUnit * dmaReadCycles;
   678:                   } else {  //デクリメントでパックする
   679:                     int a = dmaMAR[i] - 1;
   680:                     int t = mm[a >>> XEiJ.BUS_PAGE_BITS].mmdRwz (a);
   681:                     data1 = t & 255;
   682:                     data2 = t >> 8;
   683:                     dmaMAR[i] -= 2;
   684:                     //XEiJ.mpuClockTime += XEiJ.dmaCycleUnit * dmaReadCycles;
   685:                   }
   686:                   XEiJ.mpuClockTime += XEiJ.dmaCycleUnit * dmaReadCycles;
   687:                 } else {  //パックしない
   688:                   int a = dmaMAR[i];
   689:                   data1 = mm[a >>> XEiJ.BUS_PAGE_BITS].mmdRbz (a);
   690:                   a = dmaMAR[i] += dmaMACValue[i];
   691:                   data2 = mm[a >>> XEiJ.BUS_PAGE_BITS].mmdRbz (a);
   692:                   dmaMAR[i] += dmaMACValue[i];
   693:                   XEiJ.mpuClockTime += XEiJ.dmaCycleUnit * dmaReadCycles * 2;
   694:                 }
   695:                 //デバイスへライト
   696:                 code = DMA_DEVICE_BUS_ERROR;
   697:                 mm = dmaDFCMap[i];
   698:                 if (dpk) {  //パックする
   699:                   if (dmaDACValue[i] > 0) {  //インクリメントでパックする
   700:                     int a = dmaDAR[i];
   701:                     mm[a >>> XEiJ.BUS_PAGE_BITS].mmdWw (a, data1 << 8 | data2);
   702:                     dmaDAR[i] += 2;
   703:                     //XEiJ.mpuClockTime += XEiJ.dmaCycleUnit * dmaWriteCycles;
   704:                   } else {  //デクリメントでパックする
   705:                     int a = dmaDAR[i] - 1;
   706:                     mm[a >>> XEiJ.BUS_PAGE_BITS].mmdWw (a, data2 << 8 | data1);
   707:                     dmaDAR[i] -= 2;
   708:                     //XEiJ.mpuClockTime += XEiJ.dmaCycleUnit * dmaWriteCycles;
   709:                   }
   710:                   XEiJ.mpuClockTime += XEiJ.dmaCycleUnit * dmaWriteCycles;
   711:                 } else {  //パックしない
   712:                   if (dmaDPS[i] == DMA_PORT_8_BIT) {  //ポートサイズ8ビット
   713:                     int a = dmaDAR[i];
   714:                     mm[a >>> XEiJ.BUS_PAGE_BITS].mmdWb (a, data1);
   715:                     a = dmaDAR[i] += dmaDACValue[i] << 1;  //ポートサイズが8ビットでもDMA_DARは16ビットずつ変化する
   716:                     mm[a >>> XEiJ.BUS_PAGE_BITS].mmdWb (a, data2);
   717:                     dmaDAR[i] += dmaDACValue[i] << 1;  //ポートサイズが8ビットでもDMA_DARは16ビットずつ変化する
   718:                     //XEiJ.mpuClockTime += XEiJ.dmaCycleUnit * dmaWriteCycles * 2;
   719:                   } else {  //ポートサイズ16ビット
   720:                     int a = dmaDAR[i];
   721:                     mm[a >>> XEiJ.BUS_PAGE_BITS].mmdWb (a, data1);
   722:                     a = dmaDAR[i] += dmaDACValue[i];
   723:                     mm[a >>> XEiJ.BUS_PAGE_BITS].mmdWb (a, data2);
   724:                     dmaDAR[i] += dmaDACValue[i];
   725:                     //XEiJ.mpuClockTime += XEiJ.dmaCycleUnit * dmaWriteCycles * 2;
   726:                   }
   727:                   XEiJ.mpuClockTime += XEiJ.dmaCycleUnit * dmaWriteCycles * 2;
   728:                 }
   729:               } else {  //デバイス→メモリ
   730:                 int data1;  //1バイト目
   731:                 int data2;  //2バイト目
   732:                 //デバイスからリード
   733:                 code = DMA_DEVICE_BUS_ERROR;
   734:                 MemoryMappedDevice[] mm = dmaDFCMap[i];
   735:                 if (dpk) {  //パックする
   736:                   if (dmaDACValue[i] > 0) {  //インクリメントでパックする
   737:                     int a = dmaDAR[i];
   738:                     int t = mm[a >>> XEiJ.BUS_PAGE_BITS].mmdRwz (a);
   739:                     data1 = t >> 8;
   740:                     data2 = t & 255;
   741:                     dmaDAR[i] += 2;
   742:                     //XEiJ.mpuClockTime += XEiJ.dmaCycleUnit * dmaReadCycles;
   743:                   } else {  //デクリメントでパックする
   744:                     int a = dmaDAR[i] - 1;
   745:                     int t = mm[a >>> XEiJ.BUS_PAGE_BITS].mmdRwz (a);
   746:                     data1 = t & 255;
   747:                     data2 = t >> 8;
   748:                     dmaDAR[i] -= 2;
   749:                     //XEiJ.mpuClockTime += XEiJ.dmaCycleUnit * dmaReadCycles;
   750:                   }
   751:                   XEiJ.mpuClockTime += XEiJ.dmaCycleUnit * dmaReadCycles;
   752:                 } else {  //パックしない
   753:                   if (dmaDPS[i] == DMA_PORT_8_BIT) {  //ポートサイズ8ビット
   754:                     int a = dmaDAR[i];
   755:                     data1 = mm[a >>> XEiJ.BUS_PAGE_BITS].mmdRbz (a);
   756:                     a = dmaDAR[i] += dmaDACValue[i] << 1;  //ポートサイズが8ビットでもDMA_DARは16ビットずつ変化する
   757:                     data2 = mm[a >>> XEiJ.BUS_PAGE_BITS].mmdRbz (a);
   758:                     dmaDAR[i] += dmaDACValue[i] << 1;  //ポートサイズが8ビットでもDMA_DARは16ビットずつ変化する
   759:                     //XEiJ.mpuClockTime += XEiJ.dmaCycleUnit * dmaReadCycles * 2;
   760:                   } else {  //ポートサイズ16ビット
   761:                     int a = dmaDAR[i];
   762:                     data1 = mm[a >>> XEiJ.BUS_PAGE_BITS].mmdRbz (a);
   763:                     a = dmaDAR[i] += dmaDACValue[i];
   764:                     data2 = mm[a >>> XEiJ.BUS_PAGE_BITS].mmdRbz (a);
   765:                     dmaDAR[i] += dmaDACValue[i];
   766:                     //XEiJ.mpuClockTime += XEiJ.dmaCycleUnit * dmaReadCycles * 2;
   767:                   }
   768:                   XEiJ.mpuClockTime += XEiJ.dmaCycleUnit * dmaReadCycles * 2;
   769:                 }
   770:                 //メモリへライト
   771:                 code = DMA_MEMORY_BUS_ERROR;
   772:                 mm = dmaMFCMap[i];
   773:                 if (mpk) {  //パックする
   774:                   if (dmaMACValue[i] > 0) {  //インクリメントでパックする
   775:                     int a = dmaMAR[i];
   776:                     mm[a >>> XEiJ.BUS_PAGE_BITS].mmdWw (a, data1 << 8 | data2);
   777:                     dmaMAR[i] += 2;
   778:                     //XEiJ.mpuClockTime += XEiJ.dmaCycleUnit * dmaWriteCycles;
   779:                   } else {  //デクリメントでパックする
   780:                     int a = dmaMAR[i] - 1;
   781:                     mm[a >>> XEiJ.BUS_PAGE_BITS].mmdWw (a, data2 << 8 | data1);
   782:                     dmaMAR[i] -= 2;
   783:                     //XEiJ.mpuClockTime += XEiJ.dmaCycleUnit * dmaWriteCycles;
   784:                   }
   785:                   XEiJ.mpuClockTime += XEiJ.dmaCycleUnit * dmaWriteCycles;
   786:                 } else {  //パックしない
   787:                   int a = dmaMAR[i];
   788:                   mm[a >>> XEiJ.BUS_PAGE_BITS].mmdWb (a, data1);
   789:                   a = dmaMAR[i] += dmaMACValue[i];
   790:                   mm[a >>> XEiJ.BUS_PAGE_BITS].mmdWb (a, data2);
   791:                   dmaMAR[i] += dmaMACValue[i];
   792:                   XEiJ.mpuClockTime += XEiJ.dmaCycleUnit * dmaWriteCycles * 2;
   793:                 }
   794:               }
   795:               //パックできた
   796:               dmaMTC[i]--;  //1バイト余分に転送した
   797:               break;
   798:             }  //if mpk||dpk
   799:           }  //if dmaMTC[i]>=2
   800:           //パックできない
   801:           //fallthrough
   802:         case DMA_UNPACKED_8_BIT:  //オペランドサイズ8ビット、パックなし
   803:           if (dmaDIR[i] == DMA_MEMORY_TO_DEVICE) {  //メモリ→デバイス
   804:             int data;
   805:             //メモリからリード
   806:             code = DMA_MEMORY_BUS_ERROR;
   807:             MemoryMappedDevice[] mm = dmaMFCMap[i];
   808:             int a = dmaMAR[i];
   809:             data = mm[a >>> XEiJ.BUS_PAGE_BITS].mmdRbz (a);
   810:             dmaMAR[i] += dmaMACValue[i];
   811:             XEiJ.mpuClockTime += XEiJ.dmaCycleUnit * dmaReadCycles;
   812:             //デバイスへライト
   813:             code = DMA_DEVICE_BUS_ERROR;
   814:             mm = dmaDFCMap[i];
   815:             a = dmaDAR[i];
   816:             mm[a >>> XEiJ.BUS_PAGE_BITS].mmdWb (a, data);
   817:             if (dmaDPS[i] == DMA_PORT_8_BIT) {  //ポートサイズ8ビット
   818:               dmaDAR[i] += dmaDACValue[i] << 1;  //ポートサイズが8ビットでもDMA_DARは16ビットずつ変化する
   819:             } else {  //ポートサイズ16ビット
   820:               dmaDAR[i] += dmaDACValue[i];
   821:             }
   822:             XEiJ.mpuClockTime += XEiJ.dmaCycleUnit * dmaWriteCycles;
   823:           } else {  //デバイス→メモリ
   824:             int data;
   825:             //デバイスからリード
   826:             code = DMA_DEVICE_BUS_ERROR;
   827:             MemoryMappedDevice[] mm = dmaDFCMap[i];
   828:             int a = dmaDAR[i];
   829:             data = mm[a >>> XEiJ.BUS_PAGE_BITS].mmdRbz (a);
   830:             if (dmaDPS[i] == DMA_PORT_8_BIT) {  //ポートサイズ8ビット
   831:               dmaDAR[i] += dmaDACValue[i] << 1;  //ポートサイズが8ビットでもDMA_DARは16ビットずつ変化する
   832:             } else {  //ポートサイズ16ビット
   833:               dmaDAR[i] += dmaDACValue[i];
   834:             }
   835:             XEiJ.mpuClockTime += XEiJ.dmaCycleUnit * dmaReadCycles;
   836:             //メモリへライト
   837:             code = DMA_MEMORY_BUS_ERROR;
   838:             mm = dmaMFCMap[i];
   839:             a = dmaMAR[i];
   840:             mm[a >>> XEiJ.BUS_PAGE_BITS].mmdWb (a, data);
   841:             dmaMAR[i] += dmaMACValue[i];
   842:             XEiJ.mpuClockTime += XEiJ.dmaCycleUnit * dmaWriteCycles;
   843:           }
   844:           break;
   845:         case DMA_WORD_SIZE:  //オペランドサイズ16ビット
   846:           if (dmaDIR[i] == DMA_MEMORY_TO_DEVICE) {  //メモリ→デバイス
   847:             int data;
   848:             //メモリからリード
   849:             code = DMA_MEMORY_BUS_ERROR;
   850:             MemoryMappedDevice[] mm = dmaMFCMap[i];
   851:             int a = dmaMAR[i];
   852:             data = mm[a >>> XEiJ.BUS_PAGE_BITS].mmdRwz (a);
   853:             dmaMAR[i] += dmaMACValue[i] << 1;
   854:             XEiJ.mpuClockTime += XEiJ.dmaCycleUnit * dmaReadCycles;
   855:             //デバイスへライト
   856:             code = DMA_DEVICE_BUS_ERROR;
   857:             mm = dmaDFCMap[i];
   858:             if (dmaDPS[i] == DMA_PORT_8_BIT) {  //ポートサイズ8ビット
   859:               a = dmaDAR[i];
   860:               mm[a >>> XEiJ.BUS_PAGE_BITS].mmdWb (a, data >> 8);
   861:               a = dmaDAR[i] += dmaDACValue[i] << 1;  //ポートサイズが8ビットでもDMA_DARは16ビットずつ変化する
   862:               mm[a >>> XEiJ.BUS_PAGE_BITS].mmdWb (a, data);
   863:               dmaDAR[i] += dmaDACValue[i] << 1;  //ポートサイズが8ビットでもDMA_DARは16ビットずつ変化する
   864:               XEiJ.mpuClockTime += XEiJ.dmaCycleUnit * dmaWriteCycles * 2;
   865:             } else {  //ポートサイズ16ビット
   866:               a = dmaDAR[i];
   867:               mm[a >>> XEiJ.BUS_PAGE_BITS].mmdWw (a, data);
   868:               dmaDAR[i] += dmaDACValue[i] << 1;
   869:               XEiJ.mpuClockTime += XEiJ.dmaCycleUnit * dmaWriteCycles;
   870:             }
   871:           } else {  //デバイス→メモリ
   872:             int data;
   873:             //デバイスからリード
   874:             code = DMA_DEVICE_BUS_ERROR;
   875:             MemoryMappedDevice[] mm = dmaDFCMap[i];
   876:             if (dmaDPS[i] == DMA_PORT_8_BIT) {  //ポートサイズ8ビット
   877:               int a = dmaDAR[i];
   878:               data = mm[a >>> XEiJ.BUS_PAGE_BITS].mmdRbz (a) << 8;
   879:               a = dmaDAR[i] += dmaDACValue[i] << 1;  //ポートサイズが8ビットでもDMA_DARは16ビットずつ変化する
   880:               data |= mm[a >>> XEiJ.BUS_PAGE_BITS].mmdRbz (a);
   881:               dmaDAR[i] += dmaDACValue[i] << 1;  //ポートサイズが8ビットでもDMA_DARは16ビットずつ変化する
   882:               XEiJ.mpuClockTime += XEiJ.dmaCycleUnit * dmaReadCycles * 2;
   883:             } else {  //ポートサイズ16ビット
   884:               int a = dmaDAR[i];
   885:               data = mm[a >>> XEiJ.BUS_PAGE_BITS].mmdRwz (a);;
   886:               dmaDAR[i] += dmaDACValue[i] << 1;
   887:               XEiJ.mpuClockTime += XEiJ.dmaCycleUnit * dmaReadCycles;
   888:             }
   889:             //メモリへライト
   890:             code = DMA_MEMORY_BUS_ERROR;
   891:             mm = dmaMFCMap[i];
   892:             int a = dmaMAR[i];
   893:             mm[a >>> XEiJ.BUS_PAGE_BITS].mmdWw (a, data);
   894:             dmaMAR[i] += dmaMACValue[i] << 1;
   895:             XEiJ.mpuClockTime += XEiJ.dmaCycleUnit * dmaWriteCycles;
   896:           }
   897:           break;
   898:         case DMA_LONG_WORD_SIZE:  //オペランドサイズ32ビット
   899:           if (dmaDIR[i] == DMA_MEMORY_TO_DEVICE) {  //メモリ→デバイス
   900:             int data;
   901:             //メモリからリード
   902:             code = DMA_MEMORY_BUS_ERROR;
   903:             MemoryMappedDevice[] mm = dmaMFCMap[i];
   904:             int a = dmaMAR[i];
   905:             data = mm[a >>> XEiJ.BUS_PAGE_BITS].mmdRwz (a) << 16;  //オペランドサイズが32ビットでも16ビットずつアクセスする
   906:             a = dmaMAR[i] += dmaMACValue[i] << 1;
   907:             data |= mm[a >>> XEiJ.BUS_PAGE_BITS].mmdRwz (a);
   908:             dmaMAR[i] += dmaMACValue[i] << 1;
   909:             XEiJ.mpuClockTime += XEiJ.dmaCycleUnit * dmaReadCycles * 2;
   910:             //デバイスへライト
   911:             code = DMA_DEVICE_BUS_ERROR;
   912:             mm = dmaDFCMap[i];
   913:             if (dmaDPS[i] == DMA_PORT_8_BIT) {  //ポートサイズ8ビット
   914:               a = dmaDAR[i];
   915:               mm[a >>> XEiJ.BUS_PAGE_BITS].mmdWb (a, data >> 24);
   916:               a = dmaDAR[i] += dmaDACValue[i] << 1;  //ポートサイズが8ビットでもDMA_DARは16ビットずつ変化する
   917:               mm[a >>> XEiJ.BUS_PAGE_BITS].mmdWb (a, data >> 16);
   918:               a = dmaDAR[i] += dmaDACValue[i] << 1;  //ポートサイズが8ビットでもDMA_DARは16ビットずつ変化する
   919:               mm[a >>> XEiJ.BUS_PAGE_BITS].mmdWb (a, data >> 8);
   920:               a = dmaDAR[i] += dmaDACValue[i] << 1;  //ポートサイズが8ビットでもDMA_DARは16ビットずつ変化する
   921:               mm[a >>> XEiJ.BUS_PAGE_BITS].mmdWb (a, data);
   922:               dmaDAR[i] += dmaDACValue[i] << 1;  //ポートサイズが8ビットでもDMA_DARは16ビットずつ変化する
   923:               XEiJ.mpuClockTime += XEiJ.dmaCycleUnit * dmaWriteCycles * 4;
   924:             } else {  //ポートサイズ16ビット
   925:               a = dmaDAR[i];
   926:               mm[a >>> XEiJ.BUS_PAGE_BITS].mmdWw (a, data >> 16);
   927:               a = dmaDAR[i] += dmaDACValue[i] << 1;
   928:               mm[a >>> XEiJ.BUS_PAGE_BITS].mmdWw (a, data);
   929:               dmaDAR[i] += dmaDACValue[i] << 1;
   930:               XEiJ.mpuClockTime += XEiJ.dmaCycleUnit * dmaWriteCycles * 2;
   931:             }
   932:           } else {  //デバイス→メモリ
   933:             int data;
   934:             //デバイスからリード
   935:             code = DMA_DEVICE_BUS_ERROR;
   936:             MemoryMappedDevice[] mm = dmaDFCMap[i];
   937:             if (dmaDPS[i] == DMA_PORT_8_BIT) {  //ポートサイズ8ビット
   938:               int a = dmaDAR[i];
   939:               data = mm[a >>> XEiJ.BUS_PAGE_BITS].mmdRbz (a) << 24;
   940:               a = dmaDAR[i] += dmaDACValue[i] << 1;  //ポートサイズが8ビットでもDMA_DARは16ビットずつ変化する
   941:               data |= mm[a >>> XEiJ.BUS_PAGE_BITS].mmdRbz (a) << 16;
   942:               a = dmaDAR[i] += dmaDACValue[i] << 1;  //ポートサイズが8ビットでもDMA_DARは16ビットずつ変化する
   943:               data |= mm[a >>> XEiJ.BUS_PAGE_BITS].mmdRbz (a) << 8;
   944:               a = dmaDAR[i] += dmaDACValue[i] << 1;  //ポートサイズが8ビットでもDMA_DARは16ビットずつ変化する
   945:               data |= mm[a >>> XEiJ.BUS_PAGE_BITS].mmdRbz (a);
   946:               dmaDAR[i] += dmaDACValue[i] << 1;  //ポートサイズが8ビットでもDMA_DARは16ビットずつ変化する
   947:               XEiJ.mpuClockTime += XEiJ.dmaCycleUnit * dmaReadCycles * 4;
   948:             } else {  //ポートサイズ16ビット
   949:               int a = dmaDAR[i];
   950:               data = mm[a >>> XEiJ.BUS_PAGE_BITS].mmdRwz (a) << 16;
   951:               a = dmaDAR[i] += dmaDACValue[i] << 1;
   952:               data |= mm[a >>> XEiJ.BUS_PAGE_BITS].mmdRwz (a);
   953:               dmaDAR[i] += dmaDACValue[i] << 1;
   954:               XEiJ.mpuClockTime += XEiJ.dmaCycleUnit * dmaReadCycles * 2;
   955:             }
   956:             //メモリへライト
   957:             code = DMA_MEMORY_BUS_ERROR;
   958:             mm = dmaMFCMap[i];
   959:             int a = dmaMAR[i];
   960:             mm[a >>> XEiJ.BUS_PAGE_BITS].mmdWw (a, data >> 16);  //オペランドサイズが32ビットでも16ビットずつアクセスする
   961:             a = dmaMAR[i] += dmaMACValue[i] << 1;
   962:             mm[a >>> XEiJ.BUS_PAGE_BITS].mmdWw (a, data);
   963:             dmaMAR[i] += dmaMACValue[i] << 1;
   964:             XEiJ.mpuClockTime += XEiJ.dmaCycleUnit * dmaWriteCycles * 2;
   965:           }
   966:           break;
   967:         }  //switch dmaSIZE[i]
   968:         XEiJ.busCycleUnit = XEiJ.mpuCycleUnit;
   969:       } catch (M68kException e) {
   970:         XEiJ.busCycleUnit = XEiJ.mpuCycleUnit;
   971:         dmaErrorExit (i, code);
   972:         break transfer;
   973:       }
   974:       dmaMTC[i]--;
   975:       if (dmaMTC[i] != 0) {  //継続
   976:         dmaContinue (i);
   977:       } else if (dmaCHAIN[i] == DMA_ARRAY_CHAINING) {  //アレイチェーンモードのとき
   978:         if (dmaBTC[i] != 0) {  //継続
   979:           //アドレスエラーのチェックは不要
   980:           try {
   981:             XEiJ.busCycleUnit = XEiJ.dmaCycleUnit;
   982:             MemoryMappedDevice[] mm = dmaBFCMap[i];
   983:             int a = dmaBAR[i];
   984:             dmaMAR[i] = mm[a >>> XEiJ.BUS_PAGE_BITS].mmdRws (a) << 16 | mm[a + 2 >>> XEiJ.BUS_PAGE_BITS].mmdRwz (a + 2);
   985:             dmaMTC[i] = mm[a + 4 >>> XEiJ.BUS_PAGE_BITS].mmdRwz (a + 4);
   986:             dmaBAR[i] += 6;
   987:             XEiJ.mpuClockTime += XEiJ.dmaCycleUnit * dmaReadCycles * 3;
   988:             XEiJ.busCycleUnit = XEiJ.mpuCycleUnit;
   989:           } catch (M68kException e) {  //バスエラー
   990:             XEiJ.busCycleUnit = XEiJ.mpuCycleUnit;
   991:             dmaErrorExit (i, DMA_BASE_BUS_ERROR);
   992:             break transfer;
   993:           }
   994:           dmaBTC[i]--;
   995:           if (dmaMTC[i] == 0) {  //カウントエラー
   996:             dmaErrorExit (i, DMA_MEMORY_COUNT_ERROR);
   997:             break transfer;
   998:           }
   999:           if ((dmaSIZE[i] == DMA_WORD_SIZE || dmaSIZE[i] == DMA_LONG_WORD_SIZE) && (dmaMAR[i] & 1) != 0) {  //アドレスエラー
  1000:             dmaErrorExit (i, DMA_MEMORY_ADDRESS_ERROR);
  1001:             break transfer;
  1002:           }
  1003:           dmaContinue (i);
  1004:         } else {  //終了
  1005:           dmaCOC[i] = DMA_COC;
  1006:           dmaBLC[i] = DMA_BLC;
  1007:           dmaNDT[i] = 0;
  1008:           dmaComplete (i);
  1009:         }
  1010:       } else if (dmaCHAIN[i] == DMA_LINK_ARRAY_CHAINING) {  //リンクアレイチェーンモードのとき
  1011:         if (dmaBAR[i] != 0) {  //継続
  1012:           if ((dmaBAR[i] & 1) != 0) {  //アドレスエラー
  1013:             dmaErrorExit (i, DMA_BASE_ADDRESS_ERROR);
  1014:             break transfer;
  1015:           }
  1016:           try {
  1017:             XEiJ.busCycleUnit = XEiJ.dmaCycleUnit;
  1018:             MemoryMappedDevice[] mm = dmaBFCMap[i];
  1019:             int a = dmaBAR[i];
  1020:             dmaMAR[i] = mm[a >>> XEiJ.BUS_PAGE_BITS].mmdRws (a) << 16 | mm[a + 2 >>> XEiJ.BUS_PAGE_BITS].mmdRwz (a + 2);
  1021:             dmaMTC[i] = mm[a + 4 >>> XEiJ.BUS_PAGE_BITS].mmdRwz (a + 4);
  1022:             dmaBAR[i] = mm[a + 6 >>> XEiJ.BUS_PAGE_BITS].mmdRws (a + 6) << 16 | mm[a + 8 >>> XEiJ.BUS_PAGE_BITS].mmdRwz (a + 8);
  1023:             XEiJ.mpuClockTime += XEiJ.dmaCycleUnit * dmaReadCycles * 5;
  1024:             XEiJ.busCycleUnit = XEiJ.mpuCycleUnit;
  1025:           } catch (M68kException e) {  //バスエラー
  1026:             XEiJ.busCycleUnit = XEiJ.mpuCycleUnit;
  1027:             dmaErrorExit (i, DMA_BASE_BUS_ERROR);
  1028:             break transfer;
  1029:           }
  1030:           if (dmaMTC[i] == 0) {  //カウントエラー
  1031:             dmaErrorExit (i, DMA_MEMORY_COUNT_ERROR);
  1032:             break transfer;
  1033:           }
  1034:           if ((dmaSIZE[i] == DMA_WORD_SIZE || dmaSIZE[i] == DMA_LONG_WORD_SIZE) && (dmaMAR[i] & 1) != 0) {  //アドレスエラー
  1035:             dmaErrorExit (i, DMA_MEMORY_ADDRESS_ERROR);
  1036:             break transfer;
  1037:           }
  1038:           dmaContinue (i);
  1039:         } else {  //終了
  1040:           dmaCOC[i] = DMA_COC;
  1041:           dmaBLC[i] = DMA_BLC;
  1042:           dmaNDT[i] = 0;
  1043:           dmaComplete (i);
  1044:         }
  1045:       } else if (dmaCNT[i] != 0) {  //コンティニューモードのとき
  1046:         dmaBLC[i] = DMA_BLC;
  1047:         dmaCNT[i] = 0;
  1048:         if (dmaITE[i] != 0) {  //インタラプトイネーブル
  1049:           dmaInnerRequest[i << 1]++;
  1050:           XEiJ.mpuIRR |= XEiJ.MPU_DMA_INTERRUPT_MASK;
  1051:         }
  1052:         dmaMTC[i] = dmaBTC[i];
  1053:         dmaMAR[i] = dmaBAR[i];
  1054:         if (dmaMTC[i] == 0) {  //カウントエラー
  1055:           dmaErrorExit (i, DMA_MEMORY_COUNT_ERROR);
  1056:           break transfer;
  1057:         }
  1058:         if ((dmaSIZE[i] == DMA_WORD_SIZE || dmaSIZE[i] == DMA_LONG_WORD_SIZE) && (dmaMAR[i] & 1) != 0) {  //アドレスエラー
  1059:           dmaErrorExit (i, DMA_MEMORY_ADDRESS_ERROR);
  1060:           break transfer;
  1061:         }
  1062:         dmaContinue (i);
  1063:       } else {  //終了
  1064:         dmaCOC[i] = DMA_COC;
  1065:         dmaBLC[i] = 0;
  1066:         dmaNDT[i] = 0;
  1067:         dmaComplete (i);
  1068:       }
  1069:     }  //transfer
  1070:   }  //dmaTransfer
  1071: 
  1072: }  //class HD63450
  1073: 
  1074: 
  1075: 
STUDIO KAMADA
Copyright © 1999-2023 Makoto Kamada

