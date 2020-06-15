Binary file densenet201.weights matches
Binary file vgg-16.weights matches
Makefile:12:ARCH= -gencode arch=compute_30,code=sm_30 \
Makefile:13:      -gencode arch=compute_35,code=sm_35 \
Makefile:14:      -gencode arch=compute_50,code=[sm_50,compute_50] \
Makefile:15:      -gencode arch=compute_52,code=[sm_52,compute_52]
Makefile:16:#      -gencode arch=compute_20,code=[sm_20,sm_21] \ This one is deprecated?
Makefile:19:# ARCH= -gencode arch=compute_52,code=compute_52
Makefile:33:OPTS=-Ofast
Makefile:34:LDFLAGS= -lm -pthread 
Makefile:35:COMMON= -Iinclude/ -Isrc/
Makefile:36:CFLAGS=-Wall -Wno-unused-result -Wno-unknown-pragmas -Wfatal-errors -fPIC
Makefile:39:CFLAGS+= -fopenmp
Makefile:43:OPTS=-O0 -g
Makefile:49:COMMON+= -DOPENCV
Makefile:50:CFLAGS+= -DOPENCV
Makefile:51:LDFLAGS+= `pkg-config --libs opencv` -lstdc++
Makefile:52:COMMON+= `pkg-config --cflags opencv` 
Makefile:56:COMMON+= -DCPU
Makefile:57:CFLAGS+= -DCPU
Makefile:61:COMMON+= -DGPU -I/usr/local/cuda/include/
Makefile:62:CFLAGS+= -DGPU
Makefile:63:LDFLAGS+= -L/usr/local/cuda/lib64 -lcuda -lcudart -lcublas -lcurand
Makefile:67:COMMON+= -DCUDNN 
Makefile:68:CFLAGS+= -DCUDNN
Makefile:69:LDFLAGS+= -lcudnn
Makefile:73:COMMON+= -DTHREAD
Makefile:74:CFLAGS+= -DTHREAD
Makefile:78:COMMON+= -DSTREAM
Makefile:79:CFLAGS+= -DSTREAM
Makefile:83:COMMON+= -DSERIAL
Makefile:84:CFLAGS+= -DSERIAL
Makefile:88:COMMON+= -DPRIORITY
Makefile:89:CFLAGS+= -DPRIORITY
Makefile:96:EXECOBJA=captcha.o lsd.o super.o art.o tag.o cifar.o go.o rnn.o segmenter.o regressor.o classifier.o coco.o yolo.o detector.o nightmare.o instance-segmenter.o darknet.o
Makefile:98:LDFLAGS+= -lstdc++ 
Makefile:111:	$(CC) $(COMMON) $(CFLAGS) $^ -o $@ $(LDFLAGS) $(ALIB)
Makefile:117:	$(CC) $(CFLAGS) -shared $^ -o $@ $(LDFLAGS)
Makefile:120:	$(CPP) $(COMMON) $(CFLAGS) -c $< -o $@
Makefile:123:	$(CC) $(COMMON) $(CFLAGS) -c $< -o $@
Makefile:126:	$(NVCC) $(ARCH) $(COMMON) --compiler-options "$(CFLAGS)" -c $< -o $@
Makefile:129:	mkdir -p obj
Makefile:131:	mkdir -p backup
Makefile:133:	mkdir -p results
Makefile:138:	rm -rf $(OBJS) $(SLIB) $(ALIB) $(EXEC) $(EXECOBJ) $(OBJDIR)/*
Binary file darknet matches
cfg/resnext50.cfg:70:from=-4
cfg/resnext50.cfg:99:from=-4
cfg/resnext50.cfg:128:from=-4
cfg/resnext50.cfg:157:from=-4
cfg/resnext50.cfg:186:from=-4
cfg/resnext50.cfg:215:from=-4
cfg/resnext50.cfg:244:from=-4
cfg/resnext50.cfg:275:from=-4
cfg/resnext50.cfg:304:from=-4
cfg/resnext50.cfg:333:from=-4
cfg/resnext50.cfg:362:from=-4
cfg/resnext50.cfg:391:from=-4
cfg/resnext50.cfg:420:from=-4
cfg/resnext50.cfg:450:from=-4
cfg/resnext50.cfg:479:from=-4
cfg/resnext50.cfg:508:from=-4
cfg/yolov3-tiny.cfg:143:layers = -4
cfg/yolov3-tiny.cfg:157:layers = -1, 8
cfg/yolov2-voc.cfg:209:layers=-9
cfg/yolov2-voc.cfg:223:layers=-1,-4
cfg/resnet18.cfg:63:from=-3
cfg/resnet18.cfg:84:from=-3
cfg/resnet18.cfg:105:from=-3
cfg/resnet18.cfg:126:from=-3
cfg/resnet18.cfg:148:from=-3
cfg/resnet18.cfg:169:from=-3
cfg/resnet18.cfg:191:from=-3
cfg/resnet18.cfg:212:from=-3
cfg/resnext152-32x4d.cfg:69:from=-4
cfg/resnext152-32x4d.cfg:99:from=-4
cfg/resnext152-32x4d.cfg:129:from=-4
cfg/resnext152-32x4d.cfg:160:from=-4
cfg/resnext152-32x4d.cfg:191:from=-4
cfg/resnext152-32x4d.cfg:221:from=-4
cfg/resnext152-32x4d.cfg:251:from=-4
cfg/resnext152-32x4d.cfg:281:from=-4
cfg/resnext152-32x4d.cfg:311:from=-4
cfg/resnext152-32x4d.cfg:341:from=-4
cfg/resnext152-32x4d.cfg:371:from=-4
cfg/resnext152-32x4d.cfg:402:from=-4
cfg/resnext152-32x4d.cfg:433:from=-4
cfg/resnext152-32x4d.cfg:463:from=-4
cfg/resnext152-32x4d.cfg:493:from=-4
cfg/resnext152-32x4d.cfg:523:from=-4
cfg/resnext152-32x4d.cfg:553:from=-4
cfg/resnext152-32x4d.cfg:583:from=-4
cfg/resnext152-32x4d.cfg:613:from=-4
cfg/resnext152-32x4d.cfg:643:from=-4
cfg/resnext152-32x4d.cfg:673:from=-4
cfg/resnext152-32x4d.cfg:703:from=-4
cfg/resnext152-32x4d.cfg:733:from=-4
cfg/resnext152-32x4d.cfg:763:from=-4
cfg/resnext152-32x4d.cfg:793:from=-4
cfg/resnext152-32x4d.cfg:823:from=-4
cfg/resnext152-32x4d.cfg:853:from=-4
cfg/resnext152-32x4d.cfg:883:from=-4
cfg/resnext152-32x4d.cfg:913:from=-4
cfg/resnext152-32x4d.cfg:943:from=-4
cfg/resnext152-32x4d.cfg:973:from=-4
cfg/resnext152-32x4d.cfg:1003:from=-4
cfg/resnext152-32x4d.cfg:1033:from=-4
cfg/resnext152-32x4d.cfg:1063:from=-4
cfg/resnext152-32x4d.cfg:1093:from=-4
cfg/resnext152-32x4d.cfg:1123:from=-4
cfg/resnext152-32x4d.cfg:1153:from=-4
cfg/resnext152-32x4d.cfg:1183:from=-4
cfg/resnext152-32x4d.cfg:1213:from=-4
cfg/resnext152-32x4d.cfg:1243:from=-4
cfg/resnext152-32x4d.cfg:1273:from=-4
cfg/resnext152-32x4d.cfg:1303:from=-4
cfg/resnext152-32x4d.cfg:1333:from=-4
cfg/resnext152-32x4d.cfg:1363:from=-4
cfg/resnext152-32x4d.cfg:1393:from=-4
cfg/resnext152-32x4d.cfg:1423:from=-4
cfg/resnext152-32x4d.cfg:1453:from=-4
cfg/resnext152-32x4d.cfg:1484:from=-4
cfg/resnext152-32x4d.cfg:1515:from=-4
cfg/resnext152-32x4d.cfg:1545:from=-4
cfg/resnet50.cfg:68:from=-4
cfg/resnet50.cfg:96:from=-4
cfg/resnet50.cfg:124:from=-4
cfg/resnet50.cfg:152:from=-4
cfg/resnet50.cfg:180:from=-4
cfg/resnet50.cfg:208:from=-4
cfg/resnet50.cfg:236:from=-4
cfg/resnet50.cfg:266:from=-4
cfg/resnet50.cfg:294:from=-4
cfg/resnet50.cfg:322:from=-4
cfg/resnet50.cfg:350:from=-4
cfg/resnet50.cfg:378:from=-4
cfg/resnet50.cfg:406:from=-4
cfg/resnet50.cfg:435:from=-4
cfg/resnet50.cfg:463:from=-4
cfg/resnet50.cfg:491:from=-4
cfg/yolov2.cfg:209:layers=-9
cfg/yolov2.cfg:223:layers=-1,-4
cfg/darknet53_448.cfg:2:# Training - start training with darknet53.weights
cfg/darknet53_448.cfg:59:from=-3
cfg/darknet53_448.cfg:89:from=-3
cfg/darknet53_448.cfg:109:from=-3
cfg/darknet53_448.cfg:139:from=-3
cfg/darknet53_448.cfg:159:from=-3
cfg/darknet53_448.cfg:179:from=-3
cfg/darknet53_448.cfg:199:from=-3
cfg/darknet53_448.cfg:220:from=-3
cfg/darknet53_448.cfg:240:from=-3
cfg/darknet53_448.cfg:260:from=-3
cfg/darknet53_448.cfg:280:from=-3
cfg/darknet53_448.cfg:310:from=-3
cfg/darknet53_448.cfg:331:from=-3
cfg/darknet53_448.cfg:352:from=-3
cfg/darknet53_448.cfg:373:from=-3
cfg/darknet53_448.cfg:393:from=-3
cfg/darknet53_448.cfg:414:from=-3
cfg/darknet53_448.cfg:435:from=-3
cfg/darknet53_448.cfg:455:from=-3
cfg/darknet53_448.cfg:485:from=-3
cfg/darknet53_448.cfg:505:from=-3
cfg/darknet53_448.cfg:525:from=-3
cfg/darknet53_448.cfg:545:from=-3
cfg/densenet201.cfg:58:layers=-1,-3
cfg/densenet201.cfg:77:layers=-1,-3
cfg/densenet201.cfg:96:layers=-1,-3
cfg/densenet201.cfg:115:layers=-1,-3
cfg/densenet201.cfg:134:layers=-1,-3
cfg/densenet201.cfg:153:layers=-1,-3
cfg/densenet201.cfg:184:layers=-1,-3
cfg/densenet201.cfg:203:layers=-1,-3
cfg/densenet201.cfg:222:layers=-1,-3
cfg/densenet201.cfg:241:layers=-1,-3
cfg/densenet201.cfg:260:layers=-1,-3
cfg/densenet201.cfg:279:layers=-1,-3
cfg/densenet201.cfg:298:layers=-1,-3
cfg/densenet201.cfg:317:layers=-1,-3
cfg/densenet201.cfg:336:layers=-1,-3
cfg/densenet201.cfg:355:layers=-1,-3
cfg/densenet201.cfg:374:layers=-1,-3
cfg/densenet201.cfg:393:layers=-1,-3
cfg/densenet201.cfg:424:layers=-1,-3
cfg/densenet201.cfg:443:layers=-1,-3
cfg/densenet201.cfg:462:layers=-1,-3
cfg/densenet201.cfg:481:layers=-1,-3
cfg/densenet201.cfg:500:layers=-1,-3
cfg/densenet201.cfg:519:layers=-1,-3
cfg/densenet201.cfg:538:layers=-1,-3
cfg/densenet201.cfg:557:layers=-1,-3
cfg/densenet201.cfg:576:layers=-1,-3
cfg/densenet201.cfg:595:layers=-1,-3
cfg/densenet201.cfg:614:layers=-1,-3
cfg/densenet201.cfg:633:layers=-1,-3
cfg/densenet201.cfg:652:layers=-1,-3
cfg/densenet201.cfg:671:layers=-1,-3
cfg/densenet201.cfg:690:layers=-1,-3
cfg/densenet201.cfg:709:layers=-1,-3
cfg/densenet201.cfg:728:layers=-1,-3
cfg/densenet201.cfg:747:layers=-1,-3
cfg/densenet201.cfg:766:layers=-1,-3
cfg/densenet201.cfg:785:layers=-1,-3
cfg/densenet201.cfg:804:layers=-1,-3
cfg/densenet201.cfg:823:layers=-1,-3
cfg/densenet201.cfg:842:layers=-1,-3
cfg/densenet201.cfg:861:layers=-1,-3
cfg/densenet201.cfg:880:layers=-1,-3
cfg/densenet201.cfg:899:layers=-1,-3
cfg/densenet201.cfg:918:layers=-1,-3
cfg/densenet201.cfg:937:layers=-1,-3
cfg/densenet201.cfg:956:layers=-1,-3
cfg/densenet201.cfg:975:layers=-1,-3
cfg/densenet201.cfg:994:layers=-1,-3
cfg/densenet201.cfg:1013:layers=-1,-3
cfg/densenet201.cfg:1032:layers=-1,-3
cfg/densenet201.cfg:1051:layers=-1,-3
cfg/densenet201.cfg:1070:layers=-1,-3
cfg/densenet201.cfg:1089:layers=-1,-3
cfg/densenet201.cfg:1108:layers=-1,-3
cfg/densenet201.cfg:1127:layers=-1,-3
cfg/densenet201.cfg:1146:layers=-1,-3
cfg/densenet201.cfg:1165:layers=-1,-3
cfg/densenet201.cfg:1184:layers=-1,-3
cfg/densenet201.cfg:1203:layers=-1,-3
cfg/densenet201.cfg:1222:layers=-1,-3
cfg/densenet201.cfg:1241:layers=-1,-3
cfg/densenet201.cfg:1260:layers=-1,-3
cfg/densenet201.cfg:1279:layers=-1,-3
cfg/densenet201.cfg:1298:layers=-1,-3
cfg/densenet201.cfg:1317:layers=-1,-3
cfg/densenet201.cfg:1348:layers=-1,-3
cfg/densenet201.cfg:1367:layers=-1,-3
cfg/densenet201.cfg:1386:layers=-1,-3
cfg/densenet201.cfg:1405:layers=-1,-3
cfg/densenet201.cfg:1424:layers=-1,-3
cfg/densenet201.cfg:1443:layers=-1,-3
cfg/densenet201.cfg:1462:layers=-1,-3
cfg/densenet201.cfg:1481:layers=-1,-3
cfg/densenet201.cfg:1500:layers=-1,-3
cfg/densenet201.cfg:1519:layers=-1,-3
cfg/densenet201.cfg:1538:layers=-1,-3
cfg/densenet201.cfg:1557:layers=-1,-3
cfg/densenet201.cfg:1576:layers=-1,-3
cfg/densenet201.cfg:1595:layers=-1,-3
cfg/densenet201.cfg:1614:layers=-1,-3
cfg/densenet201.cfg:1633:layers=-1,-3
cfg/densenet201.cfg:1652:layers=-1,-3
cfg/densenet201.cfg:1671:layers=-1,-3
cfg/densenet201.cfg:1690:layers=-1,-3
cfg/densenet201.cfg:1709:layers=-1,-3
cfg/densenet201.cfg:1728:layers=-1,-3
cfg/densenet201.cfg:1747:layers=-1,-3
cfg/densenet201.cfg:1766:layers=-1,-3
cfg/densenet201.cfg:1785:layers=-1,-3
cfg/densenet201.cfg:1804:layers=-1,-3
cfg/densenet201.cfg:1823:layers=-1,-3
cfg/densenet201.cfg:1842:layers=-1,-3
cfg/densenet201.cfg:1861:layers=-1,-3
cfg/densenet201.cfg:1880:layers=-1,-3
cfg/densenet201.cfg:1899:layers=-1,-3
cfg/densenet201.cfg:1918:layers=-1,-3
cfg/densenet201.cfg:1937:layers=-1,-3
cfg/yolov3-voc.cfg:62:from=-3
cfg/yolov3-voc.cfg:92:from=-3
cfg/yolov3-voc.cfg:112:from=-3
cfg/yolov3-voc.cfg:142:from=-3
cfg/yolov3-voc.cfg:162:from=-3
cfg/yolov3-voc.cfg:182:from=-3
cfg/yolov3-voc.cfg:202:from=-3
cfg/yolov3-voc.cfg:223:from=-3
cfg/yolov3-voc.cfg:243:from=-3
cfg/yolov3-voc.cfg:263:from=-3
cfg/yolov3-voc.cfg:283:from=-3
cfg/yolov3-voc.cfg:313:from=-3
cfg/yolov3-voc.cfg:334:from=-3
cfg/yolov3-voc.cfg:355:from=-3
cfg/yolov3-voc.cfg:376:from=-3
cfg/yolov3-voc.cfg:396:from=-3
cfg/yolov3-voc.cfg:417:from=-3
cfg/yolov3-voc.cfg:438:from=-3
cfg/yolov3-voc.cfg:458:from=-3
cfg/yolov3-voc.cfg:488:from=-3
cfg/yolov3-voc.cfg:508:from=-3
cfg/yolov3-voc.cfg:528:from=-3
cfg/yolov3-voc.cfg:548:from=-3
cfg/yolov3-voc.cfg:619:layers = -4
cfg/yolov3-voc.cfg:633:layers = -1, 61
cfg/yolov3-voc.cfg:703:layers = -4
cfg/yolov3-voc.cfg:717:layers = -1, 36
cfg/resnext101-32x4d.cfg:70:from=-4
cfg/resnext101-32x4d.cfg:100:from=-4
cfg/resnext101-32x4d.cfg:130:from=-4
cfg/resnext101-32x4d.cfg:161:from=-4
cfg/resnext101-32x4d.cfg:192:from=-4
cfg/resnext101-32x4d.cfg:222:from=-4
cfg/resnext101-32x4d.cfg:252:from=-4
cfg/resnext101-32x4d.cfg:283:from=-4
cfg/resnext101-32x4d.cfg:314:from=-4
cfg/resnext101-32x4d.cfg:344:from=-4
cfg/resnext101-32x4d.cfg:374:from=-4
cfg/resnext101-32x4d.cfg:404:from=-4
cfg/resnext101-32x4d.cfg:434:from=-4
cfg/resnext101-32x4d.cfg:464:from=-4
cfg/resnext101-32x4d.cfg:494:from=-4
cfg/resnext101-32x4d.cfg:524:from=-4
cfg/resnext101-32x4d.cfg:554:from=-4
cfg/resnext101-32x4d.cfg:584:from=-4
cfg/resnext101-32x4d.cfg:614:from=-4
cfg/resnext101-32x4d.cfg:644:from=-4
cfg/resnext101-32x4d.cfg:674:from=-4
cfg/resnext101-32x4d.cfg:704:from=-4
cfg/resnext101-32x4d.cfg:734:from=-4
cfg/resnext101-32x4d.cfg:764:from=-4
cfg/resnext101-32x4d.cfg:794:from=-4
cfg/resnext101-32x4d.cfg:824:from=-4
cfg/resnext101-32x4d.cfg:854:from=-4
cfg/resnext101-32x4d.cfg:884:from=-4
cfg/resnext101-32x4d.cfg:914:from=-4
cfg/resnext101-32x4d.cfg:944:from=-4
cfg/resnext101-32x4d.cfg:975:from=-4
cfg/resnext101-32x4d.cfg:1006:from=-4
cfg/resnext101-32x4d.cfg:1036:from=-4
cfg/resnet101.cfg:69:from=-4
cfg/resnet101.cfg:97:from=-4
cfg/resnet101.cfg:125:from=-4
cfg/resnet101.cfg:153:from=-4
cfg/resnet101.cfg:181:from=-4
cfg/resnet101.cfg:209:from=-4
cfg/resnet101.cfg:237:from=-4
cfg/resnet101.cfg:267:from=-4
cfg/resnet101.cfg:295:from=-4
cfg/resnet101.cfg:323:from=-4
cfg/resnet101.cfg:351:from=-4
cfg/resnet101.cfg:379:from=-4
cfg/resnet101.cfg:407:from=-4
cfg/resnet101.cfg:435:from=-4
cfg/resnet101.cfg:463:from=-4
cfg/resnet101.cfg:491:from=-4
cfg/resnet101.cfg:519:from=-4
cfg/resnet101.cfg:547:from=-4
cfg/resnet101.cfg:575:from=-4
cfg/resnet101.cfg:603:from=-4
cfg/resnet101.cfg:631:from=-4
cfg/resnet101.cfg:659:from=-4
cfg/resnet101.cfg:687:from=-4
cfg/resnet101.cfg:715:from=-4
cfg/resnet101.cfg:743:from=-4
cfg/resnet101.cfg:771:from=-4
cfg/resnet101.cfg:799:from=-4
cfg/resnet101.cfg:827:from=-4
cfg/resnet101.cfg:855:from=-4
cfg/resnet101.cfg:883:from=-4
cfg/resnet101.cfg:912:from=-4
cfg/resnet101.cfg:940:from=-4
cfg/resnet101.cfg:968:from=-4
cfg/resnet34.cfg:62:from=-3
cfg/resnet34.cfg:83:from=-3
cfg/resnet34.cfg:104:from=-3
cfg/resnet34.cfg:125:from=-3
cfg/resnet34.cfg:146:from=-3
cfg/resnet34.cfg:167:from=-3
cfg/resnet34.cfg:188:from=-3
cfg/resnet34.cfg:209:from=-3
cfg/resnet34.cfg:230:from=-3
cfg/resnet34.cfg:251:from=-3
cfg/resnet34.cfg:272:from=-3
cfg/resnet34.cfg:293:from=-3
cfg/resnet34.cfg:314:from=-3
cfg/resnet34.cfg:335:from=-3
cfg/resnet34.cfg:356:from=-3
cfg/resnet34.cfg:377:from=-3
cfg/yolov2-tiny-voc.cfg:21:steps=-1,100,20000,30000
cfg/yolov3.cfg:60:from=-3
cfg/yolov3.cfg:90:from=-3
cfg/yolov3.cfg:110:from=-3
cfg/yolov3.cfg:140:from=-3
cfg/yolov3.cfg:160:from=-3
cfg/yolov3.cfg:180:from=-3
cfg/yolov3.cfg:200:from=-3
cfg/yolov3.cfg:221:from=-3
cfg/yolov3.cfg:241:from=-3
cfg/yolov3.cfg:261:from=-3
cfg/yolov3.cfg:281:from=-3
cfg/yolov3.cfg:311:from=-3
cfg/yolov3.cfg:332:from=-3
cfg/yolov3.cfg:353:from=-3
cfg/yolov3.cfg:374:from=-3
cfg/yolov3.cfg:394:from=-3
cfg/yolov3.cfg:415:from=-3
cfg/yolov3.cfg:436:from=-3
cfg/yolov3.cfg:456:from=-3
cfg/yolov3.cfg:486:from=-3
cfg/yolov3.cfg:506:from=-3
cfg/yolov3.cfg:526:from=-3
cfg/yolov3.cfg:546:from=-3
cfg/yolov3.cfg:619:layers = -4
cfg/yolov3.cfg:633:layers = -1, 61
cfg/yolov3.cfg:706:layers = -4
cfg/yolov3.cfg:720:layers = -1, 36
cfg/resnet152.cfg:66:from=-4
cfg/resnet152.cfg:94:from=-4
cfg/resnet152.cfg:122:from=-4
cfg/resnet152.cfg:150:from=-4
cfg/resnet152.cfg:178:from=-4
cfg/resnet152.cfg:206:from=-4
cfg/resnet152.cfg:234:from=-4
cfg/resnet152.cfg:262:from=-4
cfg/resnet152.cfg:290:from=-4
cfg/resnet152.cfg:318:from=-4
cfg/resnet152.cfg:346:from=-4
cfg/resnet152.cfg:376:from=-4
cfg/resnet152.cfg:404:from=-4
cfg/resnet152.cfg:432:from=-4
cfg/resnet152.cfg:460:from=-4
cfg/resnet152.cfg:488:from=-4
cfg/resnet152.cfg:516:from=-4
cfg/resnet152.cfg:544:from=-4
cfg/resnet152.cfg:572:from=-4
cfg/resnet152.cfg:600:from=-4
cfg/resnet152.cfg:628:from=-4
cfg/resnet152.cfg:656:from=-4
cfg/resnet152.cfg:684:from=-4
cfg/resnet152.cfg:712:from=-4
cfg/resnet152.cfg:740:from=-4
cfg/resnet152.cfg:768:from=-4
cfg/resnet152.cfg:796:from=-4
cfg/resnet152.cfg:824:from=-4
cfg/resnet152.cfg:852:from=-4
cfg/resnet152.cfg:880:from=-4
cfg/resnet152.cfg:908:from=-4
cfg/resnet152.cfg:936:from=-4
cfg/resnet152.cfg:964:from=-4
cfg/resnet152.cfg:992:from=-4
cfg/resnet152.cfg:1020:from=-4
cfg/resnet152.cfg:1048:from=-4
cfg/resnet152.cfg:1076:from=-4
cfg/resnet152.cfg:1104:from=-4
cfg/resnet152.cfg:1132:from=-4
cfg/resnet152.cfg:1160:from=-4
cfg/resnet152.cfg:1188:from=-4
cfg/resnet152.cfg:1216:from=-4
cfg/resnet152.cfg:1244:from=-4
cfg/resnet152.cfg:1272:from=-4
cfg/resnet152.cfg:1300:from=-4
cfg/resnet152.cfg:1328:from=-4
cfg/resnet152.cfg:1356:from=-4
cfg/resnet152.cfg:1385:from=-4
cfg/resnet152.cfg:1413:from=-4
cfg/resnet152.cfg:1441:from=-4
cfg/yolov3-openimages.cfg:60:from=-3
cfg/yolov3-openimages.cfg:90:from=-3
cfg/yolov3-openimages.cfg:110:from=-3
cfg/yolov3-openimages.cfg:140:from=-3
cfg/yolov3-openimages.cfg:160:from=-3
cfg/yolov3-openimages.cfg:180:from=-3
cfg/yolov3-openimages.cfg:200:from=-3
cfg/yolov3-openimages.cfg:221:from=-3
cfg/yolov3-openimages.cfg:241:from=-3
cfg/yolov3-openimages.cfg:261:from=-3
cfg/yolov3-openimages.cfg:281:from=-3
cfg/yolov3-openimages.cfg:311:from=-3
cfg/yolov3-openimages.cfg:332:from=-3
cfg/yolov3-openimages.cfg:353:from=-3
cfg/yolov3-openimages.cfg:374:from=-3
cfg/yolov3-openimages.cfg:394:from=-3
cfg/yolov3-openimages.cfg:415:from=-3
cfg/yolov3-openimages.cfg:436:from=-3
cfg/yolov3-openimages.cfg:456:from=-3
cfg/yolov3-openimages.cfg:486:from=-3
cfg/yolov3-openimages.cfg:506:from=-3
cfg/yolov3-openimages.cfg:526:from=-3
cfg/yolov3-openimages.cfg:546:from=-3
cfg/yolov3-openimages.cfg:619:layers = -4
cfg/yolov3-openimages.cfg:633:layers = -1, 61
cfg/yolov3-openimages.cfg:706:layers = -4
cfg/yolov3-openimages.cfg:720:layers = -1, 36
cfg/darknet53.cfg:66:from=-3
cfg/darknet53.cfg:96:from=-3
cfg/darknet53.cfg:116:from=-3
cfg/darknet53.cfg:146:from=-3
cfg/darknet53.cfg:166:from=-3
cfg/darknet53.cfg:186:from=-3
cfg/darknet53.cfg:206:from=-3
cfg/darknet53.cfg:227:from=-3
cfg/darknet53.cfg:247:from=-3
cfg/darknet53.cfg:267:from=-3
cfg/darknet53.cfg:287:from=-3
cfg/darknet53.cfg:317:from=-3
cfg/darknet53.cfg:338:from=-3
cfg/darknet53.cfg:359:from=-3
cfg/darknet53.cfg:380:from=-3
cfg/darknet53.cfg:400:from=-3
cfg/darknet53.cfg:421:from=-3
cfg/darknet53.cfg:442:from=-3
cfg/darknet53.cfg:462:from=-3
cfg/darknet53.cfg:492:from=-3
cfg/darknet53.cfg:512:from=-3
cfg/darknet53.cfg:532:from=-3
cfg/darknet53.cfg:552:from=-3
cfg/yolov3-spp.cfg:60:from=-3
cfg/yolov3-spp.cfg:90:from=-3
cfg/yolov3-spp.cfg:110:from=-3
cfg/yolov3-spp.cfg:140:from=-3
cfg/yolov3-spp.cfg:160:from=-3
cfg/yolov3-spp.cfg:180:from=-3
cfg/yolov3-spp.cfg:200:from=-3
cfg/yolov3-spp.cfg:221:from=-3
cfg/yolov3-spp.cfg:241:from=-3
cfg/yolov3-spp.cfg:261:from=-3
cfg/yolov3-spp.cfg:281:from=-3
cfg/yolov3-spp.cfg:311:from=-3
cfg/yolov3-spp.cfg:332:from=-3
cfg/yolov3-spp.cfg:353:from=-3
cfg/yolov3-spp.cfg:374:from=-3
cfg/yolov3-spp.cfg:394:from=-3
cfg/yolov3-spp.cfg:415:from=-3
cfg/yolov3-spp.cfg:436:from=-3
cfg/yolov3-spp.cfg:456:from=-3
cfg/yolov3-spp.cfg:486:from=-3
cfg/yolov3-spp.cfg:506:from=-3
cfg/yolov3-spp.cfg:526:from=-3
cfg/yolov3-spp.cfg:546:from=-3
cfg/yolov3-spp.cfg:581:layers=-2
cfg/yolov3-spp.cfg:588:layers=-4
cfg/yolov3-spp.cfg:595:layers=-1,-3,-5,-6
cfg/yolov3-spp.cfg:652:layers = -4
cfg/yolov3-spp.cfg:666:layers = -1, 61
cfg/yolov3-spp.cfg:739:layers = -4
cfg/yolov3-spp.cfg:753:layers = -1, 36
LICENSE.gen:6:UNINTERRUPTED OR ERROR-FREE OR ANY THEORY OF LIABILITY, WHETHER IN CONTRACT,
Binary file libdarknet.a matches
.git/packed-refs:1:# pack-refs with: peeled fully-peeled sorted 
Binary file .git/index matches
Binary file .git/objects/24/03f573b607f10c42791abfd349c0bf79d02675 matches
Binary file .git/objects/1e/83cde053843b43bbbf79cc67f9bf52527ec885 matches
Binary file .git/objects/1e/10e0aca0c22c6e06a046be10c46a0d8b1816e8 matches
Binary file .git/objects/1e/dd437a0f0399b365e3f523739c737823046243 matches
Binary file .git/objects/cd/99e95bf5661ca51455f487a4abdb66adc78392 matches
Binary file .git/objects/cd/6584a8f3f6ff5db51f95155c48fa258a91b01c matches
Binary file .git/objects/cd/b849ff9065d7c47df62df5a27e896dcf933f1a matches
Binary file .git/objects/ba/529b566ed35e9e8c98e07a0efff45e3ebbb967 matches
Binary file .git/objects/ba/39e8ff75af92abb50a5836b77c649b47e1a23d matches
Binary file .git/objects/ba/749d7397ce8d33495a113e69f635a8dc104b9e matches
Binary file .git/objects/6c/56c9e7baf55849921180211cec60d68ca9d75f matches
Binary file .git/objects/6c/baaf414a3612472cf9f51e6c0b5424ec992f77 matches
Binary file .git/objects/6c/496aa54362cdd15fcf94d7ec0932186c744ea3 matches
Binary file .git/objects/6c/2baf632028ff5e9bc1cb4edd0c0147cdebec67 matches
Binary file .git/objects/6c/7477b8026c661f467505939418dd1d177bf8fc matches
Binary file .git/objects/23/9888896cefadf6c203ba00a3698fc5f2362b3a matches
Binary file .git/objects/23/436541a1e8c519205aed36a66a78a04907f7c7 matches
Binary file .git/objects/5d/484795e8e9bf1388deba0245782159247f6430 matches
Binary file .git/objects/5d/728a54f095f8504b3e80deb59983871b29ad90 matches
Binary file .git/objects/pack/pack-55db833049f4a23fc61a4e550ddfa09759851bad.idx matches
Binary file .git/objects/pack/pack-55db833049f4a23fc61a4e550ddfa09759851bad.pack matches
Binary file .git/objects/2a/273d251d7bdaec8d2cf30b4aa6a27c888b8451 matches
Binary file .git/objects/78/af88df2329f8bc9fd7086b732c97308cfe3190 matches
Binary file .git/objects/e9/d89db12817fc9c9666cc99176fe24d4ed62e75 matches
Binary file .git/objects/e9/7a9d5b08e7c2672513ad3c684a6a7e2bff05c7 matches
Binary file .git/objects/e9/081c587f7dbf3fb25181b6c277eea29281d0d1 matches
Binary file .git/objects/e9/126587d158be3bae4c355b18b4ec200d8f9146 matches
Binary file .git/objects/e9/f656185ca346b5956666c3f1a372faa028b7d1 matches
Binary file .git/objects/4c/2aaed760f56020b6bc591d71363af86c9ec0e7 matches
Binary file .git/objects/4c/58cdc301a036848caab6281ce8251b437f2dab matches
Binary file .git/objects/8b/57dc37b33fa8cccb5ad9919ca1c399ed2fda9c matches
Binary file .git/objects/8b/e02c28ac8f8f7deffb6aab91125a84d4fe961a matches
Binary file .git/objects/3f/1a09d54ceaf1f5dc176d226b0e08bdd77b8992 matches
Binary file .git/objects/3f/1408dedf41bafdaf40321a8251c7691e67a902 matches
Binary file .git/objects/3f/6df39e26f58fa5301d1b9ec84cb1751e522f9b matches
Binary file .git/objects/37/f0f718bdeb69e964f9004ed13a746043759606 matches
Binary file .git/objects/37/ffddff8ec77d73e58d17e25bc35d9fea6686a7 matches
Binary file .git/objects/1b/289a1623a281a44addbec643d94d69955018e3 matches
Binary file .git/objects/1b/79171710f78fb2499e5b9bd94726cb1ce0b26e matches
Binary file .git/objects/56/68179413a0dae32b644a7bd965e13ed21ff992 matches
Binary file .git/objects/56/cecdf4e87a9f2096f1c03fbf47bc1f486e5f1d matches
Binary file .git/objects/56/d1a17d73ac22a254545e40d58e966458a530fb matches
Binary file .git/objects/fd/253e6fce775520cd8a3ba2aa48757b39216f79 matches
Binary file .git/objects/fd/0bf0a82237f912cb05f6a02247dae492e6dbb2 matches
Binary file .git/objects/95/3c3f4e2d94281ea31ae3cb68af24dbf901ea5f matches
Binary file .git/objects/95/3de1dafc0ec1744746a41173484800d86ac9ec matches
Binary file .git/objects/95/4a6782c085b6d34017ce7137371ce3e0224dff matches
Binary file .git/objects/3d/6ec750f89942c6bb485e2e9405158b9887651c matches
Binary file .git/objects/9f/c333691cd8ed13a7c4a58544291ce01a0445fa matches
Binary file .git/objects/af/de94e9c1aeec2d6cce6f3cc297f8623bb4e24e matches
Binary file .git/objects/5f/8f615eae9fedda58d7b8e9e26cb8538bc897d4 matches
Binary file .git/objects/5f/0ef55fb8e7dcb6c31f58f46bcdd029c7cc6823 matches
Binary file .git/objects/5f/6538fcf92907122040c2160e15ac434e35ee7d matches
Binary file .git/objects/5f/47c2afd94bd475617422d00ef36946b4c44abc matches
Binary file .git/objects/5f/b79afb1e98855d5294201b5efbd4fdcf25d697 matches
Binary file .git/objects/ca/04718b91121c190183e7fd90033914f5182282 matches
Binary file .git/objects/ca/4112f55ceeedfd84347db8f970ef709a231dad matches
Binary file .git/objects/19/4d95ac6f11b2771bcb7f8234cbb11441f9f4e6 matches
Binary file .git/objects/27/aa485ec5d6a920dedbaf168c84004afeca191a matches
Binary file .git/objects/27/ba55afde26383e25183ff570d842ad8c7f2dc6 matches
Binary file .git/objects/3c/7baddcb1ea8e37889f28d2217a41a930b5efbc matches
Binary file .git/objects/3c/b730a77cc41a4932a7b187c47adec07fb0dd95 matches
Binary file .git/objects/4b/151861a93921d0522330db0245735b3f3c50c5 matches
Binary file .git/objects/4b/f3211df2a373dc2bd96b422d84af2df1ec628e matches
Binary file .git/objects/4b/7c3f9a8cafd023fa9836a56ac6b92e785f8273 matches
Binary file .git/objects/4b/6d0396f459423af2d7ae21ecbb0f2dddd45364 matches
Binary file .git/objects/4b/9935f7cf21bb264849e1c9f84cb4cd50fdccde matches
Binary file .git/objects/34/82a914937ea10b5613431dfdf454b723d0fc54 matches
Binary file .git/objects/34/5b0e84149118b437124bdde351f39ef867bb10 matches
Binary file .git/objects/34/b22a2bcb7687ef20a42aa40a42d2e2c4c69f6e matches
Binary file .git/objects/34/2d036723006fe273ba30b5cd8c3948571d0763 matches
Binary file .git/objects/34/162c1506e10b453bdc739a706ac4a63ea938c1 matches
Binary file .git/objects/34/67be40eaf83c6bc43859df8d1e300ab690afbe matches
Binary file .git/objects/1a/4b55d35cb5eb5eb232f0928491daf929bf2d0f matches
Binary file .git/objects/ee/3f1348d0f82509a891b172458e8d1a1a0126e6 matches
Binary file .git/objects/ee/bc897c8fe93674b74627f466db2f6b2a5d7595 matches
Binary file .git/objects/ee/2caa5dafda8d47e31657e8eef19c8e99a204b6 matches
Binary file .git/objects/ee/611e7c7442ce3a897ba5a75e80c64635008f60 matches
Binary file .git/objects/ee/bc977390e4b804f7704bf2dbf438c07641f90c matches
Binary file .git/objects/40/90f5fa8b2f4c62abc77ee90d241f6d610f22c2 matches
Binary file .git/objects/f4/f4884dfe2c6c9f4cc6ff0a204f14c5d47f4171 matches
Binary file .git/objects/2d/eb38bdb35c3ad727cb1061cc495c2dd4cb86d1 matches
Binary file .git/objects/2d/95d5a0907e6c595a61112029a4d582bd79c974 matches
Binary file .git/objects/8d/23a977b79146a001e608e8206000ed52dea626 matches
Binary file .git/objects/f0/5192c58bc6145fc5296288e9a6b8f6fe02d4f1 matches
Binary file .git/objects/d4/497b8086f1b65029db56a3e027f8f6c8a9e19a matches
Binary file .git/objects/d4/5894b6421a6287ed3fb6912d77e86c46ee525c matches
Binary file .git/objects/d4/a64cfd45802369ef21d587841a1f58ea22537a matches
Binary file .git/objects/d4/ae4957c10233ece557918bdfd83f306f8a7420 matches
Binary file .git/objects/6f/ab8908805362660299253bd1f6240fd0144592 matches
Binary file .git/objects/26/dd2d71bc899f8a277ff86ac0f94fb0965c859b matches
Binary file .git/objects/26/3ea8f14dd9b24e0dac471a626b28364eb9d9cc matches
Binary file .git/objects/20/a96690520db539971c61f2a83296a5cb1c5f9a matches
Binary file .git/objects/20/4754bf56ca880196118a4d3717226e866e92d1 matches
Binary file .git/objects/20/6d2b85b6b27d46f595118ac7426776637da22a matches
Binary file .git/objects/30/a638a0415010b257c7bc43eecf2d497bcc12a6 matches
Binary file .git/objects/30/63433a9d6cc8840d32f0bb01c48d4d1db0508f matches
Binary file .git/objects/30/33a0a0c2102a6a4b366537b167210aae1e9bc7 matches
Binary file .git/objects/e0/3f816e576639192ac363946b4d755e4de8e4f6 matches
Binary file .git/objects/44/3333e47bcc01b40f915c49d8126c6e54547af8 matches
Binary file .git/objects/44/28ac9e0b163b2218e985fe45964673dcc3b9d0 matches
Binary file .git/objects/44/c34bf92dc6dbd5940394d45603f1ab77379e0d matches
Binary file .git/objects/bb/62f9a1a4d13692d3938fe46b2e15cbfbd5a872 matches
Binary file .git/objects/7e/a23822b65662c58f6788a448f74869bb3a272f matches
Binary file .git/objects/7e/9648e5c3c9ddc28dc728328da086b510bcfb82 matches
Binary file .git/objects/7e/e1b018c7c523084a162de9ad281cc6b394b960 matches
Binary file .git/objects/6a/edd414b6a8fe9cea0e6a47e178de6ae754ce6e matches
Binary file .git/objects/a8/dcfeb409bca91cd5c69e86f64306b33857f863 matches
Binary file .git/objects/a8/b1c45cdbf1ebf31863f929f30656c43f86f1c0 matches
Binary file .git/objects/a8/333d463ba0da41486489171a16f21a2381df7f matches
Binary file .git/objects/10/7b2f47f02328d4a6a26891e66a0c269ed59318 matches
Binary file .git/objects/10/1113a556d3cabd0a6dba15c14503bc85994d51 matches
Binary file .git/objects/d2/2b983b59223e829036cfad8e2a424a3326ec61 matches
Binary file .git/objects/d2/b3679442cfc0488e0016928f7af9f12843bcea matches
Binary file .git/objects/d2/5f4b0ebe78556c2f53c55632ec5117ec8f968b matches
Binary file .git/objects/d2/35af601ca4711c71dd60932adef595d832c1e1 matches
Binary file .git/objects/66/6ba3251736349e7912f362b736e39da8b601ed matches
Binary file .git/objects/66/e5ed782bad0b5d1d127f65de3d6fc0a605b07b matches
Binary file .git/objects/66/180393fd99437a55caea616080a6ded5e05e02 matches
Binary file .git/objects/66/9dbe11bab46916239aa7c8820c780dd2c5ace6 matches
Binary file .git/objects/66/de5b28be73264a41fd7b589c46bef405ebc106 matches
Binary file .git/objects/66/9ff13d9f87f8b6e92a8eb8f0aa587961323911 matches
Binary file .git/objects/73/674b067b83eeaa542efebcbe5800caeb94d8e0 matches
Binary file .git/objects/73/e8a722b2790fb735b2d9af3f9a8123a9bff92c matches
Binary file .git/objects/73/43d3bde137ea1a5679c874968bbb66e9c00414 matches
Binary file .git/objects/84/91011ec8d121b8813ba955da0b6e3669abb804 matches
Binary file .git/objects/84/08c2580f54091739f9262604b58e6e2e87cd5a matches
Binary file .git/objects/53/4d0961c4b94b25668a2804e8bfd9a5a4bc4f0d matches
Binary file .git/objects/53/6fd9bb6df8686f0319cdc51b2ce49ba70e1a80 matches
Binary file .git/objects/53/908c78a1cc6bca449c7435ae8e9d5b7661d778 matches
Binary file .git/objects/7c/c635ae44a45ef361dfb50213bb1cc6309ca6e8 matches
Binary file .git/objects/7c/e6e807a762498b0f32fdaa83d2497ed3ef1ff0 matches
Binary file .git/objects/ed/e107034385aba203d51957f023ada05daa3fb0 matches
Binary file .git/objects/ed/737a543ed35d47b27334b5c3a4f9e4786a3f9c matches
Binary file .git/objects/ed/2b845243c7119e09d902faec56fa4feec737a6 matches
Binary file .git/objects/51/55589e7b0a5f292e6a8c24cf6837cffd9b8cc2 matches
Binary file .git/objects/71/24445575a9cf60cf5a6f83c57a0d52d5576d48 matches
Binary file .git/objects/b9/a78da56db637ab3b1eecce8550f4400d0d72eb matches
Binary file .git/objects/b9/b44d92666173413c1ebb9bed4af486fc4501ab matches
Binary file .git/objects/b9/9a08818f3c3df21b88ee466867ed37eef46251 matches
Binary file .git/objects/b9/3c02718002a8c6ec94422d2ec8a85d47c3153c matches
Binary file .git/objects/80/8c16913514b1472d385872ad63780209a8cd33 matches
Binary file .git/objects/80/1ec991ce79abc74b6bb5af42f5f55e646d3678 matches
Binary file .git/objects/80/8a6ea584352df37fe148fcfedcbcb3bb63f71d matches
Binary file .git/objects/e6/5d3b714a61777b83008600114a0eff9d95e971 matches
Binary file .git/objects/e6/8889d0b00d489b6ee210eee55a5d6d2e9208ee matches
Binary file .git/objects/82/a05762649f870adb2a679d1a3862481e568ca0 matches
Binary file .git/objects/82/595d0181fe355a7c346620329fdedb7ad17a17 matches
Binary file .git/objects/82/93b270d2ee786800602c424f8b5a0ab2ccf82a matches
Binary file .git/objects/93/39594934c9bb2ddc09ab3d186286a74f4af417 matches
Binary file .git/objects/93/a0c8aa48f887afd0cf9df6eba9a6cc209f6b19 matches
Binary file .git/objects/93/38c62f3e739597f7d6bb40b88cf12283a3ed0d matches
Binary file .git/objects/93/ebe5f6725c5248ed5a14460f3c245e7b5bf760 matches
Binary file .git/objects/c6/8d31e4a8b4dc1533139870d2a879b7186a514b matches
Binary file .git/objects/c6/8215e6b4c154b752612fc473a8abed92c2afd5 matches
Binary file .git/objects/c6/a78766667d6432e40b8c56e50274b733134b3b matches
Binary file .git/objects/f3/06b6a05cc65d7e9f64d3417af3e57388276e65 matches
Binary file .git/objects/f3/f380118bef4c471b242c4738e0d1ea7ab4ae55 matches
Binary file .git/objects/f3/5a8e9945012ee2e9066223ab9950ee4f4f41c2 matches
Binary file .git/objects/79/76184f312871a127e9237cc2e3dee6066eb1f3 matches
Binary file .git/objects/79/59b4b12728c189a7880f6fe008171fab44cfdc matches
Binary file .git/objects/04/41898a3cdcb9da871ac08cc17c69ff0fd729e9 matches
Binary file .git/objects/13/99162d16f6270a82f47142b794a5f891dc70ff matches
Binary file .git/objects/13/541e3334eb22e86a4bf91a5382fdc43a8ad5bd matches
Binary file .git/objects/2c/6cd44a027a7db76a73bbb81be4802c8369e6f3 matches
Binary file .git/objects/2c/d7bafd5efb1f72ad7283295099510228e52f67 matches
Binary file .git/objects/2c/28cef4898e3fc29643b30446078630cf633673 matches
Binary file .git/objects/a9/d2293294d42f14f89c162d6ba25fbf1f49d84f matches
Binary file .git/objects/a9/b66ee2faa0577728e0906da9a3828306095127 matches
Binary file .git/objects/a9/bec87bd2e41f58c4ece1ef5aaf15501a8bcf80 matches
Binary file .git/objects/8c/78354fa3e3834f801bb7069e57e1ae6c9eee36 matches
Binary file .git/objects/8c/442c45cbbeea3717f0ba25130ce9dca5081d1a matches
Binary file .git/objects/8c/a4c93a471efff19eba3cf9991adc890df67281 matches
Binary file .git/objects/3a/a735cd025f3caa1aee0a9c36119fc037c3903b matches
Binary file .git/objects/3a/b71e7361211f3eb8fe6f1ffca66c08201302b0 matches
Binary file .git/objects/3a/b78e9f561d8d580e4a8c9d0800b22b40b81976 matches
Binary file .git/objects/41/4a2e3f33c1296b51319d031f982d6d0a0e1ddd matches
Binary file .git/objects/41/eac9d5316c332800cd62b368122fff42677623 matches
Binary file .git/objects/3e/90a6806f6075f78011d5f694aad818eb454f8e matches
Binary file .git/objects/3e/fd9622075dace53b5c2e918d146804af87db8c matches
Binary file .git/objects/3e/3e8e63260ed3505b9127026039a4ac2dec0624 matches
Binary file .git/objects/fb/82d8046f49c45d169d3931cd379a2c590683eb matches
Binary file .git/objects/fb/49366f989c7188382967dd8049ccff7664cc2b matches
Binary file .git/objects/fb/b12269842a1e19c11cff61e494e803ae28bfc2 matches
Binary file .git/objects/32/06caa7f22c3c6d6fc75075223e66fdece83a1f matches
Binary file .git/objects/32/4416603b000d1e8ca97fe14c81f2d62f9f013b matches
Binary file .git/objects/5b/8ee886d4afeeb590be1af8826c9e76db9a9734 matches
Binary file .git/objects/5b/bb9d6ae6793ef626b0494acc2d84cebd31e362 matches
Binary file .git/objects/5b/6c4b501d6416e56613d5300c3dd3e132834e1e matches
Binary file .git/objects/be/6db9a6be38979ed45db6aac59d9c7ce5e17d83 matches
Binary file .git/objects/be/c2028d587fceb64ad79d7c765db27709f56d31 matches
Binary file .git/objects/be/42f007d8ae13186565d8a1fba3b0d0970e75de matches
Binary file .git/objects/be/b90adc773db77889aee44f05fc817799d43a60 matches
Binary file .git/objects/39/1a157b789b5ec225b97e8e250eb130f0c81cf4 matches
Binary file .git/objects/39/14067999a23020592f88da339400add11365e1 matches
Binary file .git/objects/39/2dcb9d6160fb76b19319c8817702bfdd2299a4 matches
Binary file .git/objects/39/ff432f55677e31551269ccf0dcdd205be407d2 matches
Binary file .git/objects/00/08dc3335b8c6158715f4d8113addecace368bf matches
Binary file .git/objects/00/2b6ccadddd8417640b0860be8ba5d6df12920b matches
Binary file .git/objects/7f/78a7d537ebba1ff04ff3c3e77868e0ad9430df matches
Binary file .git/objects/7f/51df1a378920495e4e76b3ad916dfea472d50c matches
Binary file .git/objects/67/5fd000a5f8c2124bd07dcda8d740cb1e84ffc9 matches
Binary file .git/objects/67/6ba85454572ccab7a21cbcd32ca2bb412cd91e matches
Binary file .git/objects/67/42411d1bdaeede117c87db7e1c67f7777fbf42 matches
Binary file .git/objects/fa/af138efaa7c1091c742e46b754fb7402ee9289 matches
Binary file .git/objects/d9/1da2aa9505ea57570d34eae873be544e873263 matches
Binary file .git/objects/d9/02297afb5b9e7d6230dc5d581bdc8bc0dfa639 matches
Binary file .git/objects/0d/e582d095a0d6a092501c313ba387abb74e5875 matches
Binary file .git/objects/0d/dfa0fedb18ae31b374c859d1ce12d132161c6c matches
Binary file .git/objects/0d/847b2e2224a93dbc9f66bfb0c6dc263bd7edb7 matches
Binary file .git/objects/5c/bbcf67bd5b03b4d13a2a0e592ecf38bf98b3c4 matches
Binary file .git/objects/5c/ce8591247bb5a0321bfa22d57fecc94f7d56a7 matches
Binary file .git/objects/5c/d2bfa78525401282c7e6696b03917d92b228ed matches
Binary file .git/objects/cf/f91365192b472e8af57a7e5e8f35d5fe2ca758 matches
Binary file .git/objects/ec/dacf7b851d900670c7dc148883876179016b5e matches
Binary file .git/objects/ec/7cafa17647d037587f101bb4681c7dc29ab4fd matches
Binary file .git/objects/ec/bc31dc24bf1e7f62fab4eb349753af1a40e436 matches
Binary file .git/objects/31/d5580a5591990b72c3087e3b0cd411f9d915df matches
Binary file .git/objects/31/b53f1e1002504786cfdf5dfb131df5e77403c6 matches
Binary file .git/objects/31/97216c86678cea30578229d1d4359e25fdf00e matches
Binary file .git/objects/b0/920817a815c650c28ca3b547bad5e3d8e77fd3 matches
Binary file .git/objects/b0/311a01deac4180f8f7b4e142e040365b7b352c matches
Binary file .git/objects/b0/c5b4e26eb7da356f1613b67d5640a563ca014c matches
Binary file .git/objects/c9/3ba54e5017dbd2c3ccf1ced9f3cd1fe275849b matches
Binary file .git/objects/c9/6769afc00f1128b62882f256d984193bc673fe matches
Binary file .git/objects/91/ae388418fde473e2cceda6b3d208b9ae367da9 matches
Binary file .git/objects/91/2ab8eb57314ecfcb875bc2f9f73ed0bb6ff06e matches
Binary file .git/objects/91/25de8d1e3db5f809ff6f6cfcad824aa07370e2 matches
Binary file .git/objects/0b/4ea3ea5a5b058a19c876634bb6aa4d540d2110 matches
Binary file .git/objects/0b/6b2e7f723bc79deaae7aa88d2c28b6717207a6 matches
Binary file .git/objects/ea/ddf555207e375cdcfc0ed4738443aae6b569ba matches
Binary file .git/objects/ea/32bf177b32217c05f454da44b529397a5f1c74 matches
Binary file .git/objects/ea/4a193f2541bbce4caf644030ff0c9e5a193500 matches
Binary file .git/objects/ea/28d000cec2b26e5fc441bba444c909713c1c77 matches
Binary file .git/objects/ea/90daf5d5594f2c60a1d321c1bdc28eb6ff3de3 matches
Binary file .git/objects/ea/9c7be12c767437b80f978a3b1031c661392dac matches
Binary file .git/objects/4f/c582c50b421878675bfb9951b1c7cd12c1cf76 matches
Binary file .git/objects/4f/667a009e880298e080d6ff66c2eb610b3111da matches
Binary file .git/objects/4f/f980d5bdee55a67717e01cf6da6d1e1d303294 matches
Binary file .git/objects/81/3e11b6d63cbe6cff7fbb371d68cd67a4fe3007 matches
Binary file .git/objects/81/de802ea3d1ece6431704ff4ae485391e9a5952 matches
Binary file .git/objects/81/f67bd7eb9f8946f7da7cb35c419c37d1de3b3f matches
Binary file .git/objects/81/2d268173f5316b5ab2ee067d031c514ffcce22 matches
Binary file .git/objects/c8/c81e48748accb90345373ee6d476000e8fd4c2 matches
Binary file .git/objects/c8/dd11b9f89cc7c5432454bc2a41f321cfb4824f matches
Binary file .git/objects/c8/343415440dab50873586e8fcebec580cc2dec3 matches
Binary file .git/objects/a5/7e9613d235256387b29e7af1510dd6434b07ff matches
Binary file .git/objects/a5/1c19d67fb9124f2ca2d9ccfec31e459f79cabc matches
Binary file .git/objects/a5/6e39445af572542334addafa482b63eecce76c matches
Binary file .git/objects/a5/e4668842c80ee4168d3f985a2dc6ab42014367 matches
Binary file .git/objects/a5/d71e9ecb4bd375d04f5f4249f59655d5f17f01 matches
Binary file .git/objects/a5/7c72031d81bd693e70a1192560e1d01414a20a matches
Binary file .git/objects/a5/e65f0a727ccd49fb94ef6b3421cfa56daabb62 matches
Binary file .git/objects/9d/2f391c113fc6278cef413fd47a47d6f74a3514 matches
Binary file .git/objects/9d/cab2fea7f26de00a93c1393cb1acc1134ef903 matches
Binary file .git/objects/9d/7767c29bf7459ee1c62545a8cb1fb52a30aa73 matches
Binary file .git/objects/5e/8a1dd8dfa46b4dab362dd3d414c5ae5ac58278 matches
Binary file .git/objects/45/cb92be8caf9078fb5c91e3060c951fedb262fb matches
Binary file .git/objects/45/73c26cd8a02680c4b98e83b5d2655aa912df9b matches
Binary file .git/objects/68/c07b300b6bcb92bd0cfe321435b3d4519090a6 matches
Binary file .git/objects/68/3664ee350768b175217d2b398b14b7b8c29ca1 matches
Binary file .git/objects/68/54411988a5c7fbda3158387f88676b6a409b39 matches
Binary file .git/objects/4a/e080eda610370aacbe2cc6f21effb72d092274 matches
Binary file .git/objects/6e/e38b015242773a57b2e63ee95cdb3477ba1a9a matches
Binary file .git/objects/6e/ac79a651f821d033aa7105b99aa56ca383d274 matches
Binary file .git/objects/22/eb67176b7382d6d9fb086065cd37bf3ae2f04c matches
Binary file .git/objects/08/ee92300884521e7c2aa94dce2a00b96f2f619e matches
Binary file .git/objects/08/b874377f9a5d86db7b5864d05dfdf6d294f2ca matches
Binary file .git/objects/08/5e531c45eee4a2a3ea8a1685af7ddb7e2485a9 matches
Binary file .git/objects/08/3a109c538c4d19e574116dad0e09d2ee16e852 matches
Binary file .git/objects/dc/ce5a158ecae6db08c0e76e95c7e26f83ce6e8c matches
Binary file .git/objects/dc/77e4e502a7d17e7ec1a30bb4c2281ce4d7cf73 matches
Binary file .git/objects/dc/22d000e2410fba460b162272cee926af2970c6 matches
Binary file .git/objects/96/6210a0034d0b208b0685adeceb4a742d5d650a matches
Binary file .git/objects/96/f134411122e60e668b77de74929358fa7a558e matches
Binary file .git/objects/96/6c97f049a4f56efaa1cedc0c378ff4139b009d matches
Binary file .git/objects/96/767b5967a085cd166d4da5976bce2187847f7d matches
Binary file .git/objects/c7/92d3800d41365edf23f32074b8023def2863bc matches
Binary file .git/objects/76/73494523dd480d8fd546bcb73e33407cec8023 matches
Binary file .git/objects/76/15a6e729fc16954d642bba68f3451067e80a40 matches
Binary file .git/objects/50/58ef886e3e4a0a896b569011a4bbb5838862c3 matches
Binary file .git/objects/50/46279802a5203dd21fb4862ae03112adb453f7 matches
Binary file .git/objects/50/ed0f8b87bcc2542ccd934138e14b009f84b9b4 matches
Binary file .git/objects/9a/301020bff44c3455b5e752a9d357f0a5ab1fc9 matches
Binary file .git/objects/9a/ed19765f1d14cdc7a400ae573ffebb94e1a02f matches
Binary file .git/objects/9a/71e7d492124107ae32d319db49ccf759dd37ce matches
Binary file .git/objects/25/8a2ef945382f4e9b441cfaea3f14b22ea944ac matches
Binary file .git/objects/25/ac410d63b3530a6a848ebef7e85801187dad9c matches
Binary file .git/objects/6d/20eee336ea8a9ccb044788c96e66017ef1801d matches
Binary file .git/objects/f8/a4e8c07183760224edf2dd8e621ed2e2ecdeb9 matches
Binary file .git/objects/f8/bc69e735c6da56252db53b5a22f23c2a675f05 matches
Binary file .git/objects/38/3aba8844092c58f649a998f182ee5a647dedc8 matches
Binary file .git/objects/38/81f52d1a44920dea4aa1941dcedd479276226f matches
Binary file .git/objects/cb/932f56fed9e5226ffc8a86d2d29f26be664ebf matches
Binary file .git/objects/cb/e453fcb66d7da46e4f0d1aaf5de71f0d277e98 matches
Binary file .git/objects/cb/02f92029a879fc165592e681d7bf7e44251479 matches
Binary file .git/objects/cb/230dd3980fd7e7a6c3d8f5bc1b230c85b343fd matches
Binary file .git/objects/97/b0cb74b623523530435ecccc3f50731b898755 matches
Binary file .git/objects/97/5d62b9467791d261b94e30ceb0bc8b583ffa58 matches
Binary file .git/objects/97/94b3b0c2ffc25f84ea6aeff77cfae3e0829217 matches
Binary file .git/objects/97/e4ce7e441ccd5cfab37eede0d18bf17a438d97 matches
Binary file .git/objects/f9/d91f590698d5ec305ef125b1dc30942e648edd matches
Binary file .git/objects/f9/fcf621a7899d87418980eda8a0a593f634b95c matches
Binary file .git/objects/f9/dda8f43255717abb605b026ce0efdd5ad08aef matches
Binary file .git/objects/f9/4c2167f217f074b3053f3fe2af0db10c98f763 matches
Binary file .git/objects/db/df1a39f5d54733aad87bc3a415dfc6e7688a8a matches
Binary file .git/objects/1c/53cfb8eb9ec42cf7c41d63ec6705f66ca262d8 matches
Binary file .git/objects/1c/99b47d15ddbc4d46ff36be20be129ad65f43df matches
Binary file .git/objects/1c/5b59fee2363b5b725303fa25c19be22d6e352b matches
Binary file .git/objects/1c/06a9ba86e55a58780289d5b9b9889a63a15d2a matches
Binary file .git/objects/1f/58677e0e247c21b1156109162a145df23c35cc matches
Binary file .git/objects/1f/589c35e97e0805d74caaa64ac344deaba3366b matches
Binary file .git/objects/1f/a2db7d7b990064c057304ad3ef13d0d418a284 matches
Binary file .git/objects/1f/9a7ad848298d3dffd1ea3d75366292db7ddf8e matches
Binary file .git/objects/a2/4800590ae7aca04dbce18d3d6639b8ddc28680 matches
Binary file .git/objects/a2/744d2ead3dcc6647de8dbb91989133452b0295 matches
Binary file .git/objects/a2/7e0bc37409e1796cc5519bedfa506d970ac75e matches
Binary file .git/objects/d5/b7057173ea0ac115e8b632bec25a1a644a00f4 matches
Binary file .git/objects/d5/e5794ccede341205924ee6ac3b5aa9d67b71c6 matches
Binary file .git/objects/d5/5ecc26a033650248cbee4ed2fe41629eb1b06c matches
Binary file .git/objects/d5/9cdeeccf48b13e3c7c0a4f420d856840863958 matches
Binary file .git/objects/d5/7ae946eaddfab7b2c49961a9d05d4bc71b7d65 matches
Binary file .git/objects/65/416939866282e2dab794b1f6792e0728724061 matches
Binary file .git/objects/fe/06e9c05bbd3fb45216a6f2df3f7cc11b28f90a matches
Binary file .git/objects/fe/0e251531409505581529d490b1692cd77c5582 matches
Binary file .git/objects/fe/1368adf308f7438d87a69a29a2891a93a55b06 matches
Binary file .git/objects/f2/05168af660d0635f6e0b4bf87fd93c8579f02e matches
Binary file .git/objects/f2/8511ebd58ff32ae13bc2307ac2c45edce51d7a matches
Binary file .git/objects/f2/b2715585d59b46bf0c4ed3bbc7afaf0687dd88 matches
Binary file .git/objects/64/bd36b51d8e823f212be7c316f90cef0146b866 matches
Binary file .git/objects/64/80e149c8d85dc1e5cbf5b9342210ce6a1dce4b matches
Binary file .git/objects/64/35b8e67af276598d199f47c385b765c7f7f642 matches
Binary file .git/objects/4d/d75b8650469b9ec1d9d45d83d03ffd66a9bb81 matches
Binary file .git/objects/4d/43c3dcc3610e2e79a020a07ee2be6fc2107a83 matches
Binary file .git/objects/4d/749896d659b8d7abf88eb4396ea5a64f80e705 matches
Binary file .git/objects/05/f78b8789267ad3bb1cc4d955f9253d96408ccd matches
Binary file .git/objects/05/064a5435313566018cf308ce534f6478a42495 matches
Binary file .git/objects/75/f53a5a0dcfe09fecafd1a952149e98798c9c10 matches
Binary file .git/objects/c1/a3f3655b1c8dfc1cc696a9ed4a7470706d0435 matches
Binary file .git/objects/c1/61f7af846b15cecdb001ac9ab6cc1e4e7648eb matches
Binary file .git/objects/c1/a592481d6d49fce545b014a9ac8fd5f44781e0 matches
Binary file .git/objects/eb/81682deabacb1feefbe7ef62fc2e6dffb03e02 matches
Binary file .git/objects/eb/60200ca137a1f0655b8844ea8222a276e06384 matches
Binary file .git/objects/eb/9c8ab3ab71baf16cebe06042fd8cec78b8cad3 matches
Binary file .git/objects/36/14411dd6b6c1d65be7f15d1e613a37f3ef0ea0 matches
Binary file .git/objects/9c/494ad485c5ad1df3b5c8118c7d411b31f31a5d matches
Binary file .git/objects/9c/8f6d5a3e1c9399f892315bc315ce95df85cfc9 matches
Binary file .git/objects/29/400d2947c254678979280524402d628b6703e4 matches
Binary file .git/objects/29/e826f54d73d8730213da4bfde91d064cc2d766 matches
Binary file .git/objects/d7/62c78895507df056dbd6cc0e67d85f1980c785 matches
Binary file .git/objects/d7/a81dac47a6a17199e11020f8662e7a80c2914e matches
Binary file .git/objects/9b/bdc289c71d14b0a412ca6d34516098e90b256c matches
Binary file .git/objects/9b/a47ced9ce40c2ccc704a7413203173a66b4ac2 matches
Binary file .git/objects/9b/de138b4bbe19f5d4e5abb1571cfe0d37738e6b matches
Binary file .git/objects/9b/3486bc20711a472645c3380686a42df79cd52f matches
Binary file .git/objects/03/0b2a9b9b529624259c7ad2280d7a4309a1a3ea matches
Binary file .git/objects/03/31898163d36c190eab844ca746e2a0b0dc9fae matches
Binary file .git/objects/a1/1c5cfa255adb8fae12989f4b16a143bed69a42 matches
Binary file .git/objects/a1/53039acb80c136602e54911a12c0230e075cb5 matches
Binary file .git/objects/86/3e66d98fc1277b8c341266d77082882611991f matches
Binary file .git/objects/b6/9ddf475f512a4e908cb280e16fdd8ad358321c matches
Binary file .git/objects/18/3ec8f3f81f2e90209b8da3057f46c18b35f4b1 matches
Binary file .git/objects/18/3dff85567954434c896b437704d92a2d308912 matches
Binary file .git/objects/18/fcb452437267342d5a8922dfd94ac678ad75ed matches
Binary file .git/objects/98/43a0610f651eff0706b76d316e6e748d5620a2 matches
Binary file .git/objects/98/350276e9bec2f5508a4450ad76bd0a3a85f0cf matches
Binary file .git/objects/98/093c2be37802e0afd6590479e05011aeffd74d matches
Binary file .git/objects/da/a2fbf96013acc19ca733555af5e228630c85ee matches
Binary file .git/objects/6b/eee18abaf90e8b40139bc8ab0c9aeeb362136d matches
Binary file .git/objects/6b/ac32f9f0f13ba765201013082f04c6200a1fa2 matches
Binary file .git/objects/6b/644b4fdb2663d0ca8df43fdce6904bdf0d5f76 matches
Binary file .git/objects/6b/5fc71b049e63ec78fd1c03f92915610b16dc60 matches
Binary file .git/objects/6b/9a9e9dff77c0974b6dd5147d14052c8ecbc4ea matches
Binary file .git/objects/6b/709b292f248fd45cd55734dc0c908b19c733c5 matches
Binary file .git/objects/ef/afec3467959db29063452d0183ebe8661ad197 matches
Binary file .git/objects/ef/cf132feb01e99c9cfa3ded9d0709d567081620 matches
Binary file .git/objects/ef/f330aa1f7e7370d86f53ca4fe42b41cdbb9399 matches
Binary file .git/objects/8f/6b26e69c30a1995c2a033e84d564eabec15c61 matches
Binary file .git/objects/d8/76576cc75ae28a84bc2711c265bd2169a09252 matches
Binary file .git/objects/d8/337ce0446a771169f3fa917355de364d0734ab matches
Binary file .git/objects/d8/01cb35fae475fdaea8d2ada9aacc80d54d9ab2 matches
Binary file .git/objects/33/cc8a7ef752b4ffb3780e29ef53ac854d11f9d1 matches
Binary file .git/objects/33/ff337f20994e8b97c8d4316843c24f162621c9 matches
Binary file .git/objects/8a/8256668a7097e685eddedb9fc63ca287144a83 matches
Binary file .git/objects/8e/3c8696e652abf3a5132b620eb99af32091b1ad matches
Binary file .git/objects/42/2bb5e398704c4bfa116ad60549d80b7fe08f30 matches
Binary file .git/objects/90/5a9e12609a2149b5eb3d6f94c7be6ea5bf9aeb matches
Binary file .git/objects/2e/360aa8b06135af04618e922da7e75d00dc967d matches
Binary file .git/objects/2e/fb8c3086329cf5858784826593f02196e5cd52 matches
Binary file .git/objects/bf/c5fadb44ddabc924fbd1b401db472ea7299b82 matches
Binary file .git/objects/62/0ceddb5cc9703f87202560cd0405d9d4a5b91d matches
Binary file .git/objects/62/1941411673e14b658477b6ca734f16be83dfed matches
Binary file .git/objects/62/c9d23ce0d6a1d3e880c841424581b7cde4ebcd matches
Binary file .git/objects/62/204f3b0b9a6cb240046481a3c43f1b5c63bd75 matches
Binary file .git/objects/62/8f608039226dce279e827938a1a565db9e6c1b matches
Binary file .git/objects/d0/420a458e1a4fd7d82b6f090738cce7154181ac matches
Binary file .git/objects/d0/3dad2540cf4deb84b82877bf7d225b9010be07 matches
Binary file .git/objects/2b/2dd82320c4d32178429b10ff4a0ab374d84701 matches
Binary file .git/objects/f7/3148393c2813eb574b2cdef61d8681f006cc63 matches
Binary file .git/objects/49/7d596e21b2c63376cd5a8cb221c6f8d0d42759 matches
Binary file .git/objects/16/8da55966edfcaa2104834bdb6acb8f579a6512 matches
Binary file .git/objects/16/7bcd567ef3c5af99228dc7f113853ea650b5b2 matches
Binary file .git/objects/16/5454a89e946dd03a50538b1a38839baa2666b6 matches
Binary file .git/objects/16/8e014682f5277dfe88b3d6aa57e60f859c08df matches
Binary file .git/objects/16/9575d5cd6a1cb91b9abffd5f1d5dd8747a88a0 matches
Binary file .git/objects/16/ae8686ac154020e135242b1f155988099436f0 matches
Binary file .git/objects/1d/69429a3e5f92a3faf297c52079171886fba12b matches
Binary file .git/objects/3b/ded0185b94aa2414ad74d09d76fe64314f6c14 matches
Binary file .git/objects/3b/92cd5ef4705089248cb450806e173c6b60f822 matches
Binary file .git/objects/3b/5550fc39f510122ad3ad41811f3d92483ef23a matches
Binary file .git/objects/3b/40901bf66de13f5911e728e52449faf41b48c3 matches
Binary file .git/objects/de/7b101de6796d7df5fba4bec84ee89b63691400 matches
Binary file .git/objects/de/80a859ef1519a006a1f193bf8bd24c7a670902 matches
Binary file .git/objects/de/73f6e06ec352b9a9a38b02bb3239b188912fce matches
Binary file .git/objects/de/ba34ccb5b03f56f75057b920d776e081b5c1f9 matches
Binary file .git/objects/88/412afde3bae17934b8b418ba89dc26beb798a1 matches
Binary file .git/objects/88/14b2199c60577977ab0524fa6171de6bc34f55 matches
Binary file .git/objects/f5/cf4eee22704ddf9f7712661f52d8a51565540e matches
Binary file .git/objects/f5/4c201f30d944beb9fc1b7f8141bb0d54ce7143 matches
Binary file .git/objects/72/b53ce03ef6235c804fff40c9525d82f2dadbb2 matches
Binary file .git/objects/72/1d057868c6340e2268e9ed9a7d321d383285b0 matches
Binary file .git/objects/72/b7133c5fb0a564f498da8aed2cf6cfac09a167 matches
Binary file .git/objects/7b/dc2a1eaef34b7d044877de42821394ac5b7c28 matches
Binary file .git/objects/7b/3d133516add6c95a99c6648e15fca81b3941aa matches
Binary file .git/objects/7b/bec4e08b7a802d3aa629409d99a7071dbed7c3 matches
Binary file .git/objects/7b/0622abb06aa64c67cf58df8a9f15cd7a19810d matches
Binary file .git/objects/d3/097c6d25a43847a512f769a16f2245080bea22 matches
Binary file .git/objects/d3/c50b7862b96c30cbc75358b84dfa32a0de5a1e matches
Binary file .git/objects/d3/1e88c7a5433728f8054314184a043153674ae5 matches
Binary file .git/objects/d3/7109046778263c92dfd0dcc131ec9002beb7ce matches
Binary file .git/objects/dd/7cb393109ff5ca3ab1fcbd954f6d24330b8f20 matches
Binary file .git/objects/dd/713dbddda6189874746ee43f3f9c6f75925d51 matches
Binary file .git/objects/dd/b08b485482348560133727b59c2b2efa58fce4 matches
Binary file .git/objects/dd/b7f0c81d65e60d7c151994d5b313398fa91423 matches
Binary file .git/objects/b7/594d45301d6ef500e845d3134757f2351191dd matches
Binary file .git/objects/b7/9ef0e13049228064997d7cce8ef1b4469e603b matches
Binary file .git/objects/94/aca0fe7db91d940f36233a119b932f4dcef2d7 matches
Binary file .git/objects/94/3e4285d5db4e7ee3e8ce8d810550d3f19b6466 matches
Binary file .git/objects/b1/d914d79d77a78340f01497184f1e257e9c5bac matches
Binary file .git/objects/85/b33eadd89f7c809557eccec2d8205c9d3d7243 matches
Binary file .git/objects/85/6f925b0f1f794eb5346f660a82a32d28ddb4f1 matches
Binary file .git/objects/28/39537b7a191fe39e05a2a2e7aaddc591ebdda9 matches
Binary file .git/objects/28/1a30b51cae48e49873405ffee9ff39ef78a755 matches
Binary file .git/objects/28/1393c62164650fe2aa377a08059e7323e3044e matches
Binary file .git/objects/48/59694481ca005f936c2ea09087b037c224d082 matches
Binary file .git/objects/48/9eb33bababa851c47d722b0d2438765dce2d56 matches
Binary file .git/objects/0e/733576f7d4accfd3feed8a2a80f2377871d9da matches
Binary file .git/objects/c3/a4db52a397f0ee42c992c09793fe9604e0a776 matches
Binary file .git/objects/92/ececf215029132eab09d4d7f185f4ec31823d6 matches
Binary file .git/objects/92/95e0c6fbde5423ed7a1c9035ee7f12f0091229 matches
Binary file .git/objects/11/70afa44ed5f79ba2049c3f775de275aa8504fd matches
Binary file .git/objects/06/c3251a48f950a8749484a83fbbdfce66972892 matches
Binary file .git/objects/54/e8752b1af0a621a863cf388fa8de0fd002a5fd matches
Binary file .git/objects/61/3bf79dee0450fc831e724c2d0feb1818addb3c matches
Binary file .git/objects/61/c710c82eb6172e24e32d5e04840168d91825ff matches
Binary file .git/objects/61/c046a6081047790b151b00d64c615e9a4aab6b matches
Binary file .git/objects/61/9956a686af45214a2ccb7c7bb1d5cf1b66ea0a matches
Binary file .git/objects/57/275b4d9347771e63cfdbbd9f276b7910e5bc6e matches
Binary file .git/objects/57/625e986550daec84636ed172e418e9d3ba5067 matches
Binary file .git/objects/d1/c75e7a12b14a4f1800489e1159ee240d86029f matches
Binary file .git/objects/d1/176eaa3d27b89a015cbc66a345b40029db6dd3 matches
Binary file .git/objects/e7/3b7dc1d1b70522cdd4569fa834ad46c0bc7e9c matches
Binary file .git/objects/e7/37dcaaf45a45604dcb728eda951ab2f0be1420 matches
Binary file .git/objects/e7/a3422bd30e71d798924fa7407ef1333b69e2b0 matches
Binary file .git/objects/e7/adf1040b2c58220bc24c70d95cab8c767fbb8d matches
Binary file .git/objects/ce/6fe481e05457d44edc7c637d4099798cc61e6d matches
Binary file .git/objects/e3/c0e400d4e2d9ffbafd5494154ab67675b614a2 matches
Binary file .git/objects/89/9f5485ef7c9ab674d7bf39253e1ddcfffbe47b matches
Binary file .git/objects/89/a304891b5925b16401cbd38ef7072aba515367 matches
Binary file .git/objects/14/07836f12ba51bdb151cb6e80a35555d8578d92 matches
Binary file .git/objects/70/d826c22be7eb81539baeb3630a8fcdbe5e3fef matches
Binary file .git/objects/70/c92d3a253ea7cbb6aebc0ade7ef5c9805a85cf matches
Binary file .git/objects/70/66d5be297df952a04b9fb8745ebbad9536b277 matches
Binary file .git/objects/aa/38c75d967ddd211a727eb8f04727f682fa0463 matches
Binary file .git/objects/aa/fc1126b7677d40479dc1fea339d24da239d603 matches
Binary file .git/objects/aa/cb05e426422fe3de5da0b2f19c52d0ad5cc755 matches
Binary file .git/objects/aa/de981a480893928a9bf5d944d30258034d1a72 matches
Binary file .git/objects/aa/44c50ba562affdc34787490d952b5f1499370b matches
Binary file .git/objects/aa/63b6244e05b3d3cea658fa4116772d272d03c2 matches
Binary file .git/objects/aa/0811c0ca887edae85439eb0f6deafb711c4713 matches
Binary file .git/objects/69/7aac37dfd646567d3f1934001016ae8a906b81 matches
Binary file .git/objects/b8/40ba71a108401c924b4abf5325c7f9e6ec393f matches
Binary file .git/objects/ab/01f6d1a6a2075caf81a1d5cb59af161c84aa6f matches
Binary file .git/objects/5a/2834ec925787085f75f5bea8f326b70d309d6f matches
Binary file .git/objects/12/6ab721c5185be18ba558bdd3bcb921bcd738d1 matches
Binary file .git/objects/12/1975fa013171369474d89c7e50a1136423c887 matches
Binary file .git/objects/d6/c4b47d4f275c254643992db2ab330d2de7e060 matches
Binary file .git/objects/d6/0092d48632b180fba5ccc32418bacba4f6ebd4 matches
Binary file .git/objects/d6/5f08c5c0590422570cec24008941679fef6921 matches
Binary file .git/objects/d6/47a85c22a6c7d10fe7f960ac4d92eaea004259 matches
Binary file .git/objects/0c/ca1237dcc8ecefbbaafe66bd9b06751de00282 matches
Binary file .git/objects/0c/77acd0a17ae3a5e5546c7ba4ecef81e7add29d matches
Binary file .git/objects/0c/f09e5859aeb6a4235453acc37e5101957f5918 matches
Binary file .git/objects/b5/3daa56e59c8e364c34f8d6313ba73667984ed3 matches
Binary file .git/objects/b5/d6744ba94173491149c53ee1985d7b904ae567 matches
Binary file .git/objects/b5/8bef6322b522c61067b92e7313989e713598d2 matches
Binary file .git/objects/83/eab5d3eae21c0415867fd878dda485f764d41e matches
Binary file .git/objects/83/91f30bec5b26c9e46702f3bd82cdc271809584 matches
Binary file .git/objects/83/82b33bb2732effc803e6e2e29d5465fb5cc229 matches
Binary file .git/objects/83/e389420cbcbbac7d8ef4a708c3db2d40e1e5b6 matches
Binary file .git/objects/83/a667155fa52219ef4f36d93e0fff422cd927d6 matches
Binary file .git/objects/09/5353f633b946eaaba95dd1b1d6f12f2c3778c5 matches
Binary file .git/objects/09/344ef0465530dbd4f64175a0e4e72191e5a2ee matches
Binary file .git/objects/09/a3beb8c13d33ea2b29e719df4e58b2717520a4 matches
Binary file .git/objects/63/035d6b0f4e419ec3c06b941ffc81e2716c1f1e matches
Binary file .git/objects/99/3240f67fd065121ad0ce99e4098c1a6626525a matches
Binary file .git/objects/99/fa0eb1af8d6ea0419f3d4cb7c5eb83dc62f769 matches
Binary file .git/objects/99/e3e091967bbe0cf62bf2edf927de7dd652c87f matches
Binary file .git/objects/01/bde17f6164f718f9fb7106515203c84a4362bb matches
Binary file .git/objects/01/3b6089aa02908e1e8e49f0677fd63f94864baa matches
Binary file .git/objects/01/62c41c22ce5e045699bc405ceb88f919fb84a6 matches
Binary file .git/objects/2f/b8c1bdc5f54a5d17d99f0dbc05ab0d4229b5b3 matches
Binary file .git/objects/c4/f4c36a54c598a21455d4333ccd4701624ded88 matches
Binary file .git/objects/c4/4564ca8c6f619fd9c5cbd6d739898605895481 matches
Binary file .git/objects/c4/5e8fd091e1846fc7bf3e39f7081373502d3b94 matches
Binary file .git/objects/47/f9e8413209a25fe177b459e3c0c4d1ca1409fe matches
Binary file .git/objects/47/b394d3176c2e5d6cd9e73d3d69b04390bfba2b matches
Binary file .git/objects/55/5179a68fdc8a5368a82e2f2236a1f9805d0226 matches
Binary file .git/objects/55/0004f2045cb65224b93bdb2108c12c06ba5d54 matches
Binary file .git/objects/55/ee1994385cb565041e2135f36b3c4990d9e559 matches
Binary file .git/objects/a6/539290b0e116a1c6e511b53924740a2edb4c66 matches
Binary file .git/objects/a6/117cade4a0b259ce4a04efddcb54b16869edb3 matches
Binary file .git/objects/a6/3fa94d0543b2738d1f4e74ca671d76010b02e9 matches
Binary file .git/objects/a6/2a94ad21897bdb18cc25088b10e460d36d3133 matches
Binary file .git/objects/a6/7012a84b2b577775e4df4cf4e05098e94eef89 matches
Binary file .git/objects/a6/dd1be19ae8d9c4256d01fb1adff538c8c1de09 matches
Binary file .git/objects/a6/1b94c79f640c65b6a81c1456cbd5234363a00c matches
Binary file .git/objects/bc/00fd048e978a2ff0c403d83766db792f674424 matches
Binary file .git/objects/bc/feb30e0b414f132b9dcb6a46f9678ff2885ba0 matches
Binary file .git/objects/bc/5c80beab8235cf270ef13da453de08c8fad806 matches
Binary file .git/objects/0a/3a8d29559f94642d0b0c24a8696f7605aea79e matches
Binary file .git/objects/0a/48ccd04b27b3363b507e2b77b12e9bc868a8ec matches
Binary file .git/objects/15/9bfad688afd8b4842b03cb144b4fe263cc7370 matches
Binary file .git/objects/15/f216720d996bd4f1c4247c933229d29abfce0b matches
Binary file .git/objects/15/4cd73d8741dbe562f518167d1d10be025c5282 matches
Binary file .git/objects/15/c734e76a29b0b3ef9dc3f5f15d9ef6d540b0ee matches
Binary file .git/objects/cc/cd554d160fe0b6dd5293f3c08b2d03bd7df29f matches
Binary file .git/objects/cc/59860edb6c1e520b4b67d6f5c56dba8dbdf206 matches
Binary file .git/objects/87/e335aa5f6437a2fb943c8f4bbeb5ce1d9af261 matches
Binary file .git/objects/87/cc5264ae333149d02fd1ad70c04219bd0c1293 matches
Binary file .git/objects/58/703314fe1cc0e4ed618dcbc141bd2af8acfb3f matches
Binary file .git/objects/58/2f5692a728f1aeb09dfb63434c0f303e20b7c8 matches
Binary file .git/objects/21/f352fcfc15c77fb0e67b60c6e9529c28cab251 matches
Binary file .git/objects/21/776e7ac22b65541a404249dabb6be77df88e85 matches
Binary file .git/objects/ac/f3b9c254dd60d89fe1ef2179c7a0b104907ee0 matches
Binary file .git/objects/ac/f128e8a446fc91ade774b06ddf55466e9e3456 matches
Binary file .git/objects/46/ab46c1c174959ae89c2558ed19fd2ffafa0180 matches
Binary file .git/objects/46/00527843b4b9a822613254f2db076404eef061 matches
Binary file .git/objects/46/4d272530890731b4a4a6a573254176e7ab0c7c matches
Binary file .git/objects/46/803111760279638e0600e56b48cbb6997b8be9 matches
Binary file .git/objects/52/7d4dc50f5073594c12bbf8eda56283ecd7f299 matches
Binary file .git/objects/52/f730d7a473cd88deefdcbba1751e0d02460e07 matches
Binary file .git/objects/74/ef0ae1a7a117151937e1ca0fd28ec6a360916e matches
Binary file .git/objects/a4/0f0fddbb61602343e7807a952f17e76676402a matches
Binary file .git/objects/a4/aae1e1c5e49740028111a076a35c739e326015 matches
Binary file .git/objects/a4/00905f2b69b54123213cf4fc74d7a6a086ea27 matches
Binary file .git/objects/a4/f341ac462e43e526ecda31636066a25bc18009 matches
Binary file .git/objects/a4/e47ef3840c62678ab1ff402837662bae7d55c8 matches
Binary file .git/objects/a7/be01f8e2aacdc91e17278abdcd0f1387d0080d matches
Binary file .git/objects/07/8787ee0f63911bbd96cd35055311b616cfd3a7 matches
Binary file .git/objects/ff/ddee23e880ffb16d29fe7c2e7bf8a9a9d1c6f5 matches
Binary file .git/objects/e2/3bd4752cfecfb0acac232f3111635d4b515b9d matches
Binary file .git/objects/e2/fe9d514cf70638074e157e731028a8be3b4958 matches
Binary file .git/objects/4e/d6e3ba18fde8d8dd9d52954f6e2249c2aa29d8 matches
Binary file .git/objects/9e/f76206c8ebb50b7af5dbe8baeacb620b9d7d9e matches
Binary file .git/objects/9e/561441003eba6bc2d3eaa8502c6f9970932d7c matches
Binary file .git/objects/b4/70c15ba6c93e3e244dcc5d7871607f6b69871d matches
Binary file .git/objects/b4/fea2c0f2c9510cd85abafe25c8ab6d5118e97d matches
Binary file .git/objects/b4/698e761b87263743e2059d72e061e25111b4da matches
Binary file .git/objects/60/04451c78014eceb5a70801d4f6de319e9d3d7f matches
Binary file .git/objects/7d/60bd455772f27b35ea67e3da6823704b872d8f matches
Binary file .git/objects/7d/723177ff412b37ad408eb426ec5c48fbf84b91 matches
Binary file .git/objects/7d/4e6b5e66c0e54cd86c39136c56cde0673742a3 matches
.git/logs/refs/remotes/origin/master:2:fa12027805ad5d26d94ae68760eebc075ef99d07 ded454a1210ae99c9ac7531891028b88894ccdf2 kimdy003 <kyl123451@naver.com> 1589273449 +0900	pull: fast-forward
.git/logs/refs/remotes/origin/master:3:ded454a1210ae99c9ac7531891028b88894ccdf2 7bdc2a1eaef34b7d044877de42821394ac5b7c28 kimdy003 <kyl123451@naver.com> 1589273843 +0900	pull: fast-forward
.git/logs/refs/remotes/origin/master:6:eb9c8ab3ab71baf16cebe06042fd8cec78b8cad3 1c5b59fee2363b5b725303fa25c19be22d6e352b kimdy003 <kyl123451@naver.com> 1589809606 +0900	pull: fast-forward
.git/logs/refs/remotes/origin/master:8:8b57dc37b33fa8cccb5ad9919ca1c399ed2fda9c aacb05e426422fe3de5da0b2f19c52d0ad5cc755 kimdy003 <kyl123451@naver.com> 1589810605 +0900	pull: fast-forward
.git/logs/refs/remotes/origin/master:13:8d935c315930fe4672a811cad36dd900d6e84020 2fb8c1bdc5f54a5d17d99f0dbc05ab0d4229b5b3 kimdy003 <kyl123451@naver.com> 1590595317 +0900	pull: fast-forward
.git/logs/refs/remotes/origin/master:15:c56a929f7d7e5df6fde5fac23096f8fa37dea431 9b02c822332ace0ae55f35dfc4c0f3004c3fd6c1 kimdy003 <kyl123451@naver.com> 1590597149 +0900	pull: fast-forward
.git/logs/refs/remotes/origin/master:18:f93f0e652fd15e95c8837a4935dfa175d4fa63c0 856f925b0f1f794eb5346f660a82a32d28ddb4f1 kimdy003 <kyl123451@naver.com> 1590598794 +0900	pull: fast-forward
.git/logs/refs/remotes/origin/master:20:f28511ebd58ff32ae13bc2307ac2c45edce51d7a 6480e149c8d85dc1e5cbf5b9342210ce6a1dce4b kimdy003 <kyl123451@naver.com> 1590599932 +0900	pull: fast-forward
.git/logs/refs/remotes/origin/master:22:b58bef6322b522c61067b92e7313989e713598d2 d25f4b0ebe78556c2f53c55632ec5117ec8f968b kimdy003 <kyl123451@naver.com> 1590600410 +0900	pull: fast-forward
.git/logs/refs/remotes/origin/master:24:e1d72865d3e958c02b3f43e19ef3c3a29dbde109 4c02afb9a30601248b58dfb141b6aa46156b0e9c kimdy003 <kyl123451@naver.com> 1590602079 +0900	pull: fast-forward
.git/logs/refs/remotes/origin/master:25:4c02afb9a30601248b58dfb141b6aa46156b0e9c 60f12a16694601870941e6c4568bbbabf762feca kimdy003 <kyl123451@naver.com> 1590602263 +0900	pull: fast-forward
.git/logs/refs/remotes/origin/master:27:9bb7152c7a7284cc4f13186ad29747521ee2be87 89a304891b5925b16401cbd38ef7072aba515367 kimdy003 <kyl123451@naver.com> 1590603028 +0900	pull: fast-forward
.git/logs/refs/remotes/origin/master:28:89a304891b5925b16401cbd38ef7072aba515367 669dbe11bab46916239aa7c8820c780dd2c5ace6 kimdy003 <kyl123451@naver.com> 1590603405 +0900	pull: fast-forward
.git/logs/refs/remotes/origin/master:30:3f583d2aa59e3a218ceeb394dbfd01e224a7bacf 70c92d3a253ea7cbb6aebc0ade7ef5c9805a85cf kimdy003 <kyl123451@naver.com> 1590644068 +0900	pull: fast-forward
.git/logs/refs/remotes/origin/master:32:e22d8fa099b7e2094d8fc462c67a022fedaa87fa d3bb56d55050cad3ed31c83d9729024ae9d95cf4 kimdy003 <kyl123451@naver.com> 1590662047 +0900	pull: fast-forward
.git/logs/refs/remotes/origin/master:34:4573c26cd8a02680c4b98e83b5d2655aa912df9b b8ff962d650fe2f9715fe5d4f692989d54df0662 kimdy003 <kyl123451@naver.com> 1590665825 +0900	pull: fast-forward
.git/logs/refs/remotes/origin/master:36:52f730d7a473cd88deefdcbba1751e0d02460e07 a4a074af7863ae1d2a8b1f617bf1db09b8f40f83 kimdy003 <kyl123451@naver.com> 1590674812 +0900	pull: fast-forward
.git/logs/refs/remotes/origin/master:39:24cf9b2552085b677055190e2634df05fc8bc4fa 6203fbc85ddd9fefb6b1ffbac8f789e920adfebe kimdy003 <kyl123451@naver.com> 1590937191 +0900	pull: fast-forward
.git/logs/refs/remotes/origin/master:41:3b6e081979029ca971a6f2482c27fb6ce7b35665 b01d220fcd68d5bd4971b49dfdf30ecf192c077f kimdy003 <kyl123451@naver.com> 1590937763 +0900	pull: fast-forward
.git/logs/refs/remotes/origin/master:43:621941411673e14b658477b6ca734f16be83dfed 3b40901bf66de13f5911e728e52449faf41b48c3 kimdy003 <kyl123451@naver.com> 1590940232 +0900	pull: fast-forward
.git/logs/refs/remotes/origin/master:45:b2ba2d8f11c10be018209b109d5d7b4f0cb3e347 ddd6a4b6411ed0e66484a5fc7188106e162055e0 kimdy003 <kyl123451@naver.com> 1590943549 +0900	pull: fast-forward
.git/logs/refs/remotes/origin/master:46:ddd6a4b6411ed0e66484a5fc7188106e162055e0 8c78354fa3e3834f801bb7069e57e1ae6c9eee36 kimdy003 <kyl123451@naver.com> 1590943764 +0900	pull: fast-forward
.git/logs/refs/remotes/origin/master:48:627748cb32f11138f9acca63448860be34230da5 5f0ef55fb8e7dcb6c31f58f46bcdd029c7cc6823 kimdy003 <kyl123451@naver.com> 1590945249 +0900	pull: fast-forward
.git/logs/refs/remotes/origin/master:50:8c1d89bc7f9571eb3435432011f6f1364f4421ae 80c1e1b169b597201b5af9cb2f77485ed3758e03 kimdy003 <kyl123451@naver.com> 1590946882 +0900	pull: fast-forward
.git/logs/refs/remotes/origin/master:53:3a5b532cd0602b9ee1370ac536db0718c8b1c40b 808c16913514b1472d385872ad63780209a8cd33 kimdy003 <kyl123451@naver.com> 1591078861 +0900	pull: fast-forward
.git/logs/refs/remotes/origin/master:55:12c4377e43111f8787cd268bf457803362853b50 fef04b73b9f31f7c39a553703d440224c90b59d8 kimdy003 <kyl123451@naver.com> 1591079875 +0900	pull: fast-forward
.git/logs/refs/remotes/origin/master:57:ea28d000cec2b26e5fc441bba444c909713c1c77 7066d5be297df952a04b9fb8745ebbad9536b277 kimdy003 <kyl123451@naver.com> 1591082731 +0900	pull: fast-forward
.git/logs/refs/remotes/origin/master:59:1120889ea206bcc3864eb8741727519a32fab5a7 6aedd414b6a8fe9cea0e6a47e178de6ae754ce6e kimdy003 <kyl123451@naver.com> 1591085384 +0900	pull: fast-forward
.git/logs/refs/remotes/origin/master:61:ed2b845243c7119e09d902faec56fa4feec737a6 e4ca590280b8d0ac776d66295f981e162a4d993b kimdy003 <kyl123451@naver.com> 1591087889 +0900	pull: fast-forward
.git/logs/refs/remotes/origin/master:63:e6d013453e2b74c925cba0f24d970691adab7303 8bb10694b06edb39a88a7c8580b0d50cf7a5da1a kimdy003 <kyl123451@naver.com> 1591088643 +0900	pull: fast-forward
.git/logs/refs/remotes/origin/master:65:7c6736514391ccff33ede6c186c928f022ebc45b 9d9450533a9de6c9e9fb3069f88da2eceaa0f5a1 kimdy003 <kyl123451@naver.com> 1591678416 +0900	pull: fast-forward
.git/logs/refs/remotes/origin/master:66:9d9450533a9de6c9e9fb3069f88da2eceaa0f5a1 fdd91fe4aeba3d5b53e3d65c647a8be116a9614e kimdy003 <kyl123451@naver.com> 1591678597 +0900	pull: fast-forward
.git/logs/refs/remotes/origin/master:68:84591086688a7d918af4d9b3fccb3ebb5ecda03d 50ed0f8b87bcc2542ccd934138e14b009f84b9b4 kimdy003 <kyl123451@naver.com> 1591679027 +0900	pull: fast-forward
.git/logs/refs/remotes/origin/master:70:3033a0a0c2102a6a4b366537b167210aae1e9bc7 2020e437013d2e85bd816ba013f00e7d50d35a49 kimdy003 <kyl123451@naver.com> 1591679911 +0900	pull: fast-forward
.git/logs/refs/remotes/origin/master:72:45fb2ffcf97da7c8971f5d6269d5c8987288ec45 96767b5967a085cd166d4da5976bce2187847f7d kimdy003 <kyl123451@naver.com> 1591680638 +0900	pull: fast-forward
.git/logs/refs/remotes/origin/master:74:fd035ffac15dde51effedc070ac0454ade3001ce 882282201c368f0946647dbcfa7f179481960d95 kimdy003 <kyl123451@naver.com> 1591682244 +0900	pull: fast-forward
.git/logs/refs/remotes/origin/master:77:9c8f6d5a3e1c9399f892315bc315ce95df85cfc9 676ba85454572ccab7a21cbcd32ca2bb412cd91e kimdy003 <kyl123451@naver.com> 1591686281 +0900	pull: fast-forward
.git/logs/refs/remotes/origin/master:80:ad3020cfccc5af51ad4237cbecf27f3dbdb638be a8333d463ba0da41486489171a16f21a2381df7f kimdy003 <kyl123451@naver.com> 1591690685 +0900	pull: fast-forward
.git/logs/refs/remotes/origin/master:81:a8333d463ba0da41486489171a16f21a2381df7f 4b9935f7cf21bb264849e1c9f84cb4cd50fdccde kimdy003 <kyl123451@naver.com> 1591867679 +0900	pull: fast-forward
.git/logs/refs/remotes/origin/master:84:e3300f76953166d7a014e49584ad357ab2a05238 d7fa03a4cc86d6fbf0c503818a0d622726193a98 kimdy003 <kyl123451@naver.com> 1591875143 +0900	pull: fast-forward
.git/logs/refs/remotes/origin/master:86:4e781fb7bcc0bab7b639ba5270a6fa368f9d8b63 75acf36232f51ff6b8bf1ec739c4d6596a0e8bf9 kimdy003 <kyl123451@naver.com> 1591878936 +0900	pull: fast-forward
.git/logs/refs/remotes/origin/master:89:d930db1bb335a7753a495ee57e61763fd09249dd adb60e9092af0b6600f523e3c966adf8fd5f1e36 kimdy003 <kyl123451@naver.com> 1591888256 +0900	pull: fast-forward
.git/logs/refs/remotes/origin/master:92:3c7baddcb1ea8e37889f28d2217a41a930b5efbc dba64236318d02fd9bd112eb9af8c4aebf4f18ff kimdy003 <kyl123451@naver.com> 1591951100 +0900	pull: fast-forward
.git/logs/refs/remotes/origin/master:94:1ac16d48f29bf67d2a6218a6b6a4158a308bbffc 6ee38b015242773a57b2e63ee95cdb3477ba1a9a kimdy003 <kyl123451@naver.com> 1591952609 +0900	pull: fast-forward
.git/logs/refs/heads/master:3:fa12027805ad5d26d94ae68760eebc075ef99d07 ded454a1210ae99c9ac7531891028b88894ccdf2 kimdy003 <kyl123451@naver.com> 1589273449 +0900	pull: Fast-forward
.git/logs/refs/heads/master:4:ded454a1210ae99c9ac7531891028b88894ccdf2 7bdc2a1eaef34b7d044877de42821394ac5b7c28 kimdy003 <kyl123451@naver.com> 1589273843 +0900	pull: Fast-forward
.git/logs/refs/heads/master:9:8b57dc37b33fa8cccb5ad9919ca1c399ed2fda9c aacb05e426422fe3de5da0b2f19c52d0ad5cc755 kimdy003 <kyl123451@naver.com> 1589810605 +0900	pull: Fast-forward
.git/logs/refs/heads/master:14:8d935c315930fe4672a811cad36dd900d6e84020 2fb8c1bdc5f54a5d17d99f0dbc05ab0d4229b5b3 kimdy003 <kyl123451@naver.com> 1590595317 +0900	pull: Fast-forward
.git/logs/refs/heads/master:16:c56a929f7d7e5df6fde5fac23096f8fa37dea431 9b02c822332ace0ae55f35dfc4c0f3004c3fd6c1 kimdy003 <kyl123451@naver.com> 1590597149 +0900	pull: Fast-forward
.git/logs/refs/heads/master:19:f93f0e652fd15e95c8837a4935dfa175d4fa63c0 856f925b0f1f794eb5346f660a82a32d28ddb4f1 kimdy003 <kyl123451@naver.com> 1590598794 +0900	pull: Fast-forward
.git/logs/refs/heads/master:21:f28511ebd58ff32ae13bc2307ac2c45edce51d7a 6480e149c8d85dc1e5cbf5b9342210ce6a1dce4b kimdy003 <kyl123451@naver.com> 1590599932 +0900	pull: Fast-forward
.git/logs/refs/heads/master:23:b58bef6322b522c61067b92e7313989e713598d2 d25f4b0ebe78556c2f53c55632ec5117ec8f968b kimdy003 <kyl123451@naver.com> 1590600410 +0900	pull: Fast-forward
.git/logs/refs/heads/master:25:e1d72865d3e958c02b3f43e19ef3c3a29dbde109 4c02afb9a30601248b58dfb141b6aa46156b0e9c kimdy003 <kyl123451@naver.com> 1590602079 +0900	pull: Fast-forward
.git/logs/refs/heads/master:26:4c02afb9a30601248b58dfb141b6aa46156b0e9c 60f12a16694601870941e6c4568bbbabf762feca kimdy003 <kyl123451@naver.com> 1590602263 +0900	pull: Fast-forward
.git/logs/refs/heads/master:28:9bb7152c7a7284cc4f13186ad29747521ee2be87 89a304891b5925b16401cbd38ef7072aba515367 kimdy003 <kyl123451@naver.com> 1590603028 +0900	pull: Fast-forward
.git/logs/refs/heads/master:29:89a304891b5925b16401cbd38ef7072aba515367 669dbe11bab46916239aa7c8820c780dd2c5ace6 kimdy003 <kyl123451@naver.com> 1590603405 +0900	pull: Fast-forward
.git/logs/refs/heads/master:31:3f583d2aa59e3a218ceeb394dbfd01e224a7bacf 70c92d3a253ea7cbb6aebc0ade7ef5c9805a85cf kimdy003 <kyl123451@naver.com> 1590644068 +0900	pull: Fast-forward
.git/logs/refs/heads/master:33:e22d8fa099b7e2094d8fc462c67a022fedaa87fa d3bb56d55050cad3ed31c83d9729024ae9d95cf4 kimdy003 <kyl123451@naver.com> 1590662047 +0900	pull: Fast-forward
.git/logs/refs/heads/master:35:4573c26cd8a02680c4b98e83b5d2655aa912df9b b8ff962d650fe2f9715fe5d4f692989d54df0662 kimdy003 <kyl123451@naver.com> 1590665825 +0900	pull: Fast-forward
.git/logs/refs/heads/master:37:52f730d7a473cd88deefdcbba1751e0d02460e07 a4a074af7863ae1d2a8b1f617bf1db09b8f40f83 kimdy003 <kyl123451@naver.com> 1590674812 +0900	pull: Fast-forward
.git/logs/refs/heads/master:41:3b6e081979029ca971a6f2482c27fb6ce7b35665 b01d220fcd68d5bd4971b49dfdf30ecf192c077f kimdy003 <kyl123451@naver.com> 1590937763 +0900	pull: Fast-forward
.git/logs/refs/heads/master:43:621941411673e14b658477b6ca734f16be83dfed 3b40901bf66de13f5911e728e52449faf41b48c3 kimdy003 <kyl123451@naver.com> 1590940233 +0900	pull: Fast-forward
.git/logs/refs/heads/master:45:b2ba2d8f11c10be018209b109d5d7b4f0cb3e347 ddd6a4b6411ed0e66484a5fc7188106e162055e0 kimdy003 <kyl123451@naver.com> 1590943549 +0900	pull: Fast-forward
.git/logs/refs/heads/master:46:ddd6a4b6411ed0e66484a5fc7188106e162055e0 8c78354fa3e3834f801bb7069e57e1ae6c9eee36 kimdy003 <kyl123451@naver.com> 1590943764 +0900	pull: Fast-forward
.git/logs/refs/heads/master:48:627748cb32f11138f9acca63448860be34230da5 5f0ef55fb8e7dcb6c31f58f46bcdd029c7cc6823 kimdy003 <kyl123451@naver.com> 1590945249 +0900	pull: Fast-forward
.git/logs/refs/heads/master:50:8c1d89bc7f9571eb3435432011f6f1364f4421ae 80c1e1b169b597201b5af9cb2f77485ed3758e03 kimdy003 <kyl123451@naver.com> 1590946882 +0900	pull: Fast-forward
.git/logs/refs/heads/master:53:3a5b532cd0602b9ee1370ac536db0718c8b1c40b 808c16913514b1472d385872ad63780209a8cd33 kimdy003 <kyl123451@naver.com> 1591078861 +0900	pull: Fast-forward
.git/logs/refs/heads/master:55:12c4377e43111f8787cd268bf457803362853b50 fef04b73b9f31f7c39a553703d440224c90b59d8 kimdy003 <kyl123451@naver.com> 1591079875 +0900	pull: Fast-forward
.git/logs/refs/heads/master:57:ea28d000cec2b26e5fc441bba444c909713c1c77 7066d5be297df952a04b9fb8745ebbad9536b277 kimdy003 <kyl123451@naver.com> 1591082731 +0900	pull: Fast-forward
.git/logs/refs/heads/master:59:1120889ea206bcc3864eb8741727519a32fab5a7 6aedd414b6a8fe9cea0e6a47e178de6ae754ce6e kimdy003 <kyl123451@naver.com> 1591085384 +0900	pull: Fast-forward
.git/logs/refs/heads/master:61:ed2b845243c7119e09d902faec56fa4feec737a6 e4ca590280b8d0ac776d66295f981e162a4d993b kimdy003 <kyl123451@naver.com> 1591087889 +0900	pull: Fast-forward
.git/logs/refs/heads/master:63:e6d013453e2b74c925cba0f24d970691adab7303 8bb10694b06edb39a88a7c8580b0d50cf7a5da1a kimdy003 <kyl123451@naver.com> 1591088643 +0900	pull: Fast-forward
.git/logs/refs/heads/master:65:7c6736514391ccff33ede6c186c928f022ebc45b 9d9450533a9de6c9e9fb3069f88da2eceaa0f5a1 kimdy003 <kyl123451@naver.com> 1591678417 +0900	pull: Fast-forward
.git/logs/refs/heads/master:66:9d9450533a9de6c9e9fb3069f88da2eceaa0f5a1 fdd91fe4aeba3d5b53e3d65c647a8be116a9614e kimdy003 <kyl123451@naver.com> 1591678597 +0900	pull: Fast-forward
.git/logs/refs/heads/master:68:84591086688a7d918af4d9b3fccb3ebb5ecda03d 50ed0f8b87bcc2542ccd934138e14b009f84b9b4 kimdy003 <kyl123451@naver.com> 1591679027 +0900	pull: Fast-forward
.git/logs/refs/heads/master:70:3033a0a0c2102a6a4b366537b167210aae1e9bc7 2020e437013d2e85bd816ba013f00e7d50d35a49 kimdy003 <kyl123451@naver.com> 1591679911 +0900	pull: Fast-forward
.git/logs/refs/heads/master:72:45fb2ffcf97da7c8971f5d6269d5c8987288ec45 96767b5967a085cd166d4da5976bce2187847f7d kimdy003 <kyl123451@naver.com> 1591680638 +0900	pull: Fast-forward
.git/logs/refs/heads/master:74:fd035ffac15dde51effedc070ac0454ade3001ce 882282201c368f0946647dbcfa7f179481960d95 kimdy003 <kyl123451@naver.com> 1591682244 +0900	pull: Fast-forward
.git/logs/refs/heads/master:77:9c8f6d5a3e1c9399f892315bc315ce95df85cfc9 676ba85454572ccab7a21cbcd32ca2bb412cd91e kimdy003 <kyl123451@naver.com> 1591686281 +0900	pull: Fast-forward
.git/logs/refs/heads/master:80:ad3020cfccc5af51ad4237cbecf27f3dbdb638be a8333d463ba0da41486489171a16f21a2381df7f kimdy003 <kyl123451@naver.com> 1591690685 +0900	pull: Fast-forward
.git/logs/refs/heads/master:84:e3300f76953166d7a014e49584ad357ab2a05238 d7fa03a4cc86d6fbf0c503818a0d622726193a98 kimdy003 <kyl123451@naver.com> 1591875143 +0900	pull: Fast-forward
.git/logs/refs/heads/master:86:4e781fb7bcc0bab7b639ba5270a6fa368f9d8b63 75acf36232f51ff6b8bf1ec739c4d6596a0e8bf9 kimdy003 <kyl123451@naver.com> 1591878936 +0900	pull: Fast-forward
.git/logs/refs/heads/master:89:d930db1bb335a7753a495ee57e61763fd09249dd adb60e9092af0b6600f523e3c966adf8fd5f1e36 kimdy003 <kyl123451@naver.com> 1591888256 +0900	pull: Fast-forward
.git/logs/refs/heads/master:92:3c7baddcb1ea8e37889f28d2217a41a930b5efbc dba64236318d02fd9bd112eb9af8c4aebf4f18ff kimdy003 <kyl123451@naver.com> 1591951100 +0900	pull: Fast-forward
.git/logs/refs/heads/master:94:1ac16d48f29bf67d2a6218a6b6a4158a308bbffc 6ee38b015242773a57b2e63ee95cdb3477ba1a9a kimdy003 <kyl123451@naver.com> 1591952609 +0900	pull: Fast-forward
.git/logs/HEAD:3:fa12027805ad5d26d94ae68760eebc075ef99d07 ded454a1210ae99c9ac7531891028b88894ccdf2 kimdy003 <kyl123451@naver.com> 1589273449 +0900	pull: Fast-forward
.git/logs/HEAD:4:ded454a1210ae99c9ac7531891028b88894ccdf2 7bdc2a1eaef34b7d044877de42821394ac5b7c28 kimdy003 <kyl123451@naver.com> 1589273843 +0900	pull: Fast-forward
.git/logs/HEAD:9:8b57dc37b33fa8cccb5ad9919ca1c399ed2fda9c aacb05e426422fe3de5da0b2f19c52d0ad5cc755 kimdy003 <kyl123451@naver.com> 1589810605 +0900	pull: Fast-forward
.git/logs/HEAD:14:8d935c315930fe4672a811cad36dd900d6e84020 2fb8c1bdc5f54a5d17d99f0dbc05ab0d4229b5b3 kimdy003 <kyl123451@naver.com> 1590595317 +0900	pull: Fast-forward
.git/logs/HEAD:16:c56a929f7d7e5df6fde5fac23096f8fa37dea431 9b02c822332ace0ae55f35dfc4c0f3004c3fd6c1 kimdy003 <kyl123451@naver.com> 1590597149 +0900	pull: Fast-forward
.git/logs/HEAD:19:f93f0e652fd15e95c8837a4935dfa175d4fa63c0 856f925b0f1f794eb5346f660a82a32d28ddb4f1 kimdy003 <kyl123451@naver.com> 1590598794 +0900	pull: Fast-forward
.git/logs/HEAD:21:f28511ebd58ff32ae13bc2307ac2c45edce51d7a 6480e149c8d85dc1e5cbf5b9342210ce6a1dce4b kimdy003 <kyl123451@naver.com> 1590599932 +0900	pull: Fast-forward
.git/logs/HEAD:23:b58bef6322b522c61067b92e7313989e713598d2 d25f4b0ebe78556c2f53c55632ec5117ec8f968b kimdy003 <kyl123451@naver.com> 1590600410 +0900	pull: Fast-forward
.git/logs/HEAD:25:e1d72865d3e958c02b3f43e19ef3c3a29dbde109 4c02afb9a30601248b58dfb141b6aa46156b0e9c kimdy003 <kyl123451@naver.com> 1590602079 +0900	pull: Fast-forward
.git/logs/HEAD:26:4c02afb9a30601248b58dfb141b6aa46156b0e9c 60f12a16694601870941e6c4568bbbabf762feca kimdy003 <kyl123451@naver.com> 1590602263 +0900	pull: Fast-forward
.git/logs/HEAD:28:9bb7152c7a7284cc4f13186ad29747521ee2be87 89a304891b5925b16401cbd38ef7072aba515367 kimdy003 <kyl123451@naver.com> 1590603028 +0900	pull: Fast-forward
.git/logs/HEAD:29:89a304891b5925b16401cbd38ef7072aba515367 669dbe11bab46916239aa7c8820c780dd2c5ace6 kimdy003 <kyl123451@naver.com> 1590603405 +0900	pull: Fast-forward
.git/logs/HEAD:31:3f583d2aa59e3a218ceeb394dbfd01e224a7bacf 70c92d3a253ea7cbb6aebc0ade7ef5c9805a85cf kimdy003 <kyl123451@naver.com> 1590644068 +0900	pull: Fast-forward
.git/logs/HEAD:33:e22d8fa099b7e2094d8fc462c67a022fedaa87fa d3bb56d55050cad3ed31c83d9729024ae9d95cf4 kimdy003 <kyl123451@naver.com> 1590662047 +0900	pull: Fast-forward
.git/logs/HEAD:35:4573c26cd8a02680c4b98e83b5d2655aa912df9b b8ff962d650fe2f9715fe5d4f692989d54df0662 kimdy003 <kyl123451@naver.com> 1590665825 +0900	pull: Fast-forward
.git/logs/HEAD:37:52f730d7a473cd88deefdcbba1751e0d02460e07 a4a074af7863ae1d2a8b1f617bf1db09b8f40f83 kimdy003 <kyl123451@naver.com> 1590674812 +0900	pull: Fast-forward
.git/logs/HEAD:41:3b6e081979029ca971a6f2482c27fb6ce7b35665 b01d220fcd68d5bd4971b49dfdf30ecf192c077f kimdy003 <kyl123451@naver.com> 1590937763 +0900	pull: Fast-forward
.git/logs/HEAD:43:621941411673e14b658477b6ca734f16be83dfed 3b40901bf66de13f5911e728e52449faf41b48c3 kimdy003 <kyl123451@naver.com> 1590940233 +0900	pull: Fast-forward
.git/logs/HEAD:45:b2ba2d8f11c10be018209b109d5d7b4f0cb3e347 ddd6a4b6411ed0e66484a5fc7188106e162055e0 kimdy003 <kyl123451@naver.com> 1590943549 +0900	pull: Fast-forward
.git/logs/HEAD:46:ddd6a4b6411ed0e66484a5fc7188106e162055e0 8c78354fa3e3834f801bb7069e57e1ae6c9eee36 kimdy003 <kyl123451@naver.com> 1590943764 +0900	pull: Fast-forward
.git/logs/HEAD:48:627748cb32f11138f9acca63448860be34230da5 5f0ef55fb8e7dcb6c31f58f46bcdd029c7cc6823 kimdy003 <kyl123451@naver.com> 1590945249 +0900	pull: Fast-forward
.git/logs/HEAD:50:8c1d89bc7f9571eb3435432011f6f1364f4421ae 80c1e1b169b597201b5af9cb2f77485ed3758e03 kimdy003 <kyl123451@naver.com> 1590946882 +0900	pull: Fast-forward
.git/logs/HEAD:53:3a5b532cd0602b9ee1370ac536db0718c8b1c40b 808c16913514b1472d385872ad63780209a8cd33 kimdy003 <kyl123451@naver.com> 1591078861 +0900	pull: Fast-forward
.git/logs/HEAD:55:12c4377e43111f8787cd268bf457803362853b50 fef04b73b9f31f7c39a553703d440224c90b59d8 kimdy003 <kyl123451@naver.com> 1591079875 +0900	pull: Fast-forward
.git/logs/HEAD:57:ea28d000cec2b26e5fc441bba444c909713c1c77 7066d5be297df952a04b9fb8745ebbad9536b277 kimdy003 <kyl123451@naver.com> 1591082731 +0900	pull: Fast-forward
.git/logs/HEAD:59:1120889ea206bcc3864eb8741727519a32fab5a7 6aedd414b6a8fe9cea0e6a47e178de6ae754ce6e kimdy003 <kyl123451@naver.com> 1591085384 +0900	pull: Fast-forward
.git/logs/HEAD:61:ed2b845243c7119e09d902faec56fa4feec737a6 e4ca590280b8d0ac776d66295f981e162a4d993b kimdy003 <kyl123451@naver.com> 1591087889 +0900	pull: Fast-forward
.git/logs/HEAD:63:e6d013453e2b74c925cba0f24d970691adab7303 8bb10694b06edb39a88a7c8580b0d50cf7a5da1a kimdy003 <kyl123451@naver.com> 1591088643 +0900	pull: Fast-forward
.git/logs/HEAD:65:7c6736514391ccff33ede6c186c928f022ebc45b 9d9450533a9de6c9e9fb3069f88da2eceaa0f5a1 kimdy003 <kyl123451@naver.com> 1591678417 +0900	pull: Fast-forward
.git/logs/HEAD:66:9d9450533a9de6c9e9fb3069f88da2eceaa0f5a1 fdd91fe4aeba3d5b53e3d65c647a8be116a9614e kimdy003 <kyl123451@naver.com> 1591678597 +0900	pull: Fast-forward
.git/logs/HEAD:68:84591086688a7d918af4d9b3fccb3ebb5ecda03d 50ed0f8b87bcc2542ccd934138e14b009f84b9b4 kimdy003 <kyl123451@naver.com> 1591679027 +0900	pull: Fast-forward
.git/logs/HEAD:70:3033a0a0c2102a6a4b366537b167210aae1e9bc7 2020e437013d2e85bd816ba013f00e7d50d35a49 kimdy003 <kyl123451@naver.com> 1591679911 +0900	pull: Fast-forward
.git/logs/HEAD:72:45fb2ffcf97da7c8971f5d6269d5c8987288ec45 96767b5967a085cd166d4da5976bce2187847f7d kimdy003 <kyl123451@naver.com> 1591680638 +0900	pull: Fast-forward
.git/logs/HEAD:74:fd035ffac15dde51effedc070ac0454ade3001ce 882282201c368f0946647dbcfa7f179481960d95 kimdy003 <kyl123451@naver.com> 1591682244 +0900	pull: Fast-forward
.git/logs/HEAD:77:9c8f6d5a3e1c9399f892315bc315ce95df85cfc9 676ba85454572ccab7a21cbcd32ca2bb412cd91e kimdy003 <kyl123451@naver.com> 1591686281 +0900	pull: Fast-forward
.git/logs/HEAD:83:ad3020cfccc5af51ad4237cbecf27f3dbdb638be a8333d463ba0da41486489171a16f21a2381df7f kimdy003 <kyl123451@naver.com> 1591690685 +0900	pull: Fast-forward
.git/logs/HEAD:87:e3300f76953166d7a014e49584ad357ab2a05238 d7fa03a4cc86d6fbf0c503818a0d622726193a98 kimdy003 <kyl123451@naver.com> 1591875143 +0900	pull: Fast-forward
.git/logs/HEAD:89:4e781fb7bcc0bab7b639ba5270a6fa368f9d8b63 75acf36232f51ff6b8bf1ec739c4d6596a0e8bf9 kimdy003 <kyl123451@naver.com> 1591878936 +0900	pull: Fast-forward
.git/logs/HEAD:92:d930db1bb335a7753a495ee57e61763fd09249dd adb60e9092af0b6600f523e3c966adf8fd5f1e36 kimdy003 <kyl123451@naver.com> 1591888256 +0900	pull: Fast-forward
.git/logs/HEAD:95:3c7baddcb1ea8e37889f28d2217a41a930b5efbc dba64236318d02fd9bd112eb9af8c4aebf4f18ff kimdy003 <kyl123451@naver.com> 1591951100 +0900	pull: Fast-forward
.git/logs/HEAD:97:1ac16d48f29bf67d2a6218a6b6a4158a308bbffc 6ee38b015242773a57b2e63ee95cdb3477ba1a9a kimdy003 <kyl123451@naver.com> 1591952609 +0900	pull: Fast-forward
.git/info/exclude:1:# git ls-files --others --exclude-from=.git/info/exclude
.git/hooks/applypatch-msg.sample:4:# applypatch from an e-mail message.
.git/hooks/applypatch-msg.sample:6:# The hook should exit with non-zero status after issuing an
.git/hooks/applypatch-msg.sample:10:# To enable this hook, rename this file to "applypatch-msg".
.git/hooks/applypatch-msg.sample:12:. git-sh-setup
.git/hooks/applypatch-msg.sample:13:commitmsg="$(git rev-parse --git-path hooks/commit-msg)"
.git/hooks/applypatch-msg.sample:14:test -x "$commitmsg" && exec "$commitmsg" ${1+"$@"}
.git/hooks/update.sample:4:# Called by "git receive-pack" with arguments: refname sha1-old sha1-new
.git/hooks/update.sample:9:# ------
.git/hooks/update.sample:27:# --- Command line
.git/hooks/update.sample:32:# --- Safety check
.git/hooks/update.sample:33:if [ -z "$GIT_DIR" ]; then
.git/hooks/update.sample:40:if [ -z "$refname" -o -z "$oldrev" -o -z "$newrev" ]; then
.git/hooks/update.sample:45:# --- Config
.git/hooks/update.sample:46:allowunannotated=$(git config --bool hooks.allowunannotated)
.git/hooks/update.sample:47:allowdeletebranch=$(git config --bool hooks.allowdeletebranch)
.git/hooks/update.sample:48:denycreatebranch=$(git config --bool hooks.denycreatebranch)
.git/hooks/update.sample:49:allowdeletetag=$(git config --bool hooks.allowdeletetag)
.git/hooks/update.sample:50:allowmodifytag=$(git config --bool hooks.allowmodifytag)
.git/hooks/update.sample:53:projectdesc=$(sed -e '1q' "$GIT_DIR/description")
.git/hooks/update.sample:61:# --- Check types
.git/hooks/update.sample:67:	newrev_type=$(git cat-file -t $newrev)
.git/hooks/update.sample:72:		# un-annotated tag
.git/hooks/update.sample:75:			echo "*** The un-annotated tag, $short_refname, is not allowed in this repository" >&2
.git/hooks/update.sample:76:			echo "*** Use 'git tag [ -a | -s ]' for tags you want to propagate." >&2
.git/hooks/update.sample:89:		if [ "$allowmodifytag" != "true" ] && git rev-parse $refname > /dev/null 2>&1
.git/hooks/update.sample:98:		if [ "$oldrev" = "$zero" -a "$denycreatebranch" = "true" ]; then
.git/hooks/update.sample:127:# --- Finished
.git/hooks/prepare-commit-msg.sample:7:# message file.  If the hook fails with a non-zero status,
.git/hooks/prepare-commit-msg.sample:10:# To enable this hook, rename this file to "prepare-commit-msg".
.git/hooks/prepare-commit-msg.sample:15:# The second includes the output of "git diff --name-status -r"
.git/hooks/prepare-commit-msg.sample:17:# commented because it doesn't cope with --amend or with squashed
.git/hooks/prepare-commit-msg.sample:20:# The third example adds a Signed-off-by line to the message, that can
.git/hooks/prepare-commit-msg.sample:27:/usr/bin/perl -i.bak -ne 'print unless(m/^. Please enter the commit message/..m/^#$/)' "$COMMIT_MSG_FILE"
.git/hooks/prepare-commit-msg.sample:31:#    /usr/bin/perl -i.bak -pe '
.git/hooks/prepare-commit-msg.sample:32:#       print "\n" . `git diff --cached --name-status -r`
.git/hooks/prepare-commit-msg.sample:37:# SOB=$(git var GIT_COMMITTER_IDENT | sed -n 's/^\(.*>\).*$/Signed-off-by: \1/p')
.git/hooks/prepare-commit-msg.sample:38:# git interpret-trailers --in-place --trailer "$SOB" "$COMMIT_MSG_FILE"
.git/hooks/prepare-commit-msg.sample:39:# if test -z "$COMMIT_SOURCE"
.git/hooks/prepare-commit-msg.sample:41:#   /usr/bin/perl -i.bak -pe 'print "\n" if !$first_line++' "$COMMIT_MSG_FILE"
.git/hooks/commit-msg.sample:5:# that has the commit message.  The hook should exit with non-zero
.git/hooks/commit-msg.sample:9:# To enable this hook, rename this file to "commit-msg".
.git/hooks/commit-msg.sample:11:# Uncomment the below to add a Signed-off-by line to the message.
.git/hooks/commit-msg.sample:12:# Doing this in a hook is a bad idea in general, but the prepare-commit-msg
.git/hooks/commit-msg.sample:15:# SOB=$(git var GIT_AUTHOR_IDENT | sed -n 's/^\(.*>\).*$/Signed-off-by: \1/p')
.git/hooks/commit-msg.sample:16:# grep -qs "^$SOB" "$1" || echo "$SOB" >> "$1"
.git/hooks/commit-msg.sample:18:# This example catches duplicate Signed-off-by lines.
.git/hooks/commit-msg.sample:20:test "" = "$(grep '^Signed-off-by: ' "$1" |
.git/hooks/commit-msg.sample:21:	 sort | uniq -c | sed -e '/^[ 	]*1[ 	]/d')" || {
.git/hooks/commit-msg.sample:22:	echo >&2 Duplicate Signed-off-by lines.
.git/hooks/pre-rebase.sample:5:# The "pre-rebase" hook is run just before "git rebase" starts doing
.git/hooks/pre-rebase.sample:7:# non-zero status.
.git/hooks/pre-rebase.sample:11:# $1 -- the upstream the series was forked from.
.git/hooks/pre-rebase.sample:12:# $2 -- the branch being rebased (or empty when rebasing the current branch).
.git/hooks/pre-rebase.sample:24:	topic=`git symbolic-ref HEAD` ||
.git/hooks/pre-rebase.sample:40:git show-ref -q "$topic" || {
.git/hooks/pre-rebase.sample:46:not_in_master=`git rev-list --pretty=oneline ^master "$topic"`
.git/hooks/pre-rebase.sample:47:if test -z "$not_in_master"
.git/hooks/pre-rebase.sample:54:only_next_1=`git rev-list ^master "^$topic" ${publish} | sort`
.git/hooks/pre-rebase.sample:55:only_next_2=`git rev-list ^master           ${publish} | sort`
.git/hooks/pre-rebase.sample:58:	not_in_topic=`git rev-list "^$topic" master`
.git/hooks/pre-rebase.sample:59:	if test -z "$not_in_topic"
.git/hooks/pre-rebase.sample:67:	not_in_next=`git rev-list --pretty=oneline ^${publish} "$topic"`
.git/hooks/pre-rebase.sample:68:	/usr/bin/perl -e '
.git/hooks/pre-rebase.sample:72:			/^([0-9a-f]+) /;
.git/hooks/pre-rebase.sample:76:				/^([0-9a-f]+) (.*)$/;
.git/hooks/pre-rebase.sample:79:			if (!exists $not_in_next{$elem->[0]}) {
.git/hooks/pre-rebase.sample:84:				print STDERR " $elem->[1]\n";
.git/hooks/pre-rebase.sample:125:    build on top of it -- other people may already want to
.git/hooks/pre-rebase.sample:133:		   o---o---o---o---o---o---o---o---o---o "next"
.git/hooks/pre-rebase.sample:135:		 /   a---a---b A     /           /
.git/hooks/pre-rebase.sample:137:	       /   /   c---c---c---c B         /
.git/hooks/pre-rebase.sample:139:	     /   /   /   b---b C     \       /
.git/hooks/pre-rebase.sample:141:    ---o---o---o---o---o---o---o---o---o---o---o "master"
.git/hooks/pre-rebase.sample:158:	git rev-list ^master ^topic next
.git/hooks/pre-rebase.sample:159:	git rev-list ^master        next
.git/hooks/pre-rebase.sample:165:	git rev-list master..topic
.git/hooks/fsmonitor-watchman.sample:16:# To enable this hook, rename this file to "query-watchman" and set
.git/hooks/fsmonitor-watchman.sample:17:# 'git config core.fsmonitor .git/hooks/query-watchman'
.git/hooks/fsmonitor-watchman.sample:27:	die "Unsupported query-fsmonitor hook version '$version'.\n" .
.git/hooks/fsmonitor-watchman.sample:46:	my $pid = open2(\*CHLD_OUT, \*CHLD_IN, 'watchman -j --no-pretty')
.git/hooks/fsmonitor-watchman.sample:90:	my $o = $json_pkg->new->utf8->decode($response);
.git/hooks/fsmonitor-watchman.sample:92:	if ($retry > 0 and $o->{error} and $o->{error} =~ m/unable to resolve root .* directory (.*) is not watched/) {
.git/hooks/fsmonitor-watchman.sample:94:		$retry--;
.git/hooks/fsmonitor-watchman.sample:108:	die "Watchman: $o->{error}.\n" .
.git/hooks/fsmonitor-watchman.sample:109:	    "Falling back to scanning...\n" if $o->{error};
.git/hooks/fsmonitor-watchman.sample:113:	print @{$o->{files}};
.git/hooks/post-update.sample:6:# To enable this hook, rename this file to "post-update".
.git/hooks/post-update.sample:8:exec git update-server-info
.git/hooks/pre-push.sample:5:# pushed.  If this script exits with a non-zero status nothing will be pushed.
.git/hooks/pre-push.sample:9:# $1 -- Name of the remote to which the push is being done
.git/hooks/pre-push.sample:10:# $2 -- URL to which the push is being done
.git/hooks/pre-push.sample:44:		commit=`git rev-list -n 1 --grep '^WIP' "$range"`
.git/hooks/pre-push.sample:45:		if [ -n "$commit" ]
.git/hooks/pre-commit.sample:5:# exit with non-zero status after issuing an appropriate message if
.git/hooks/pre-commit.sample:8:# To enable this hook, rename this file to "pre-commit".
.git/hooks/pre-commit.sample:10:if git rev-parse --verify HEAD >/dev/null 2>&1
.git/hooks/pre-commit.sample:18:# If you want to allow non-ASCII filenames set this variable to true.
.git/hooks/pre-commit.sample:19:allownonascii=$(git config --bool hooks.allownonascii)
.git/hooks/pre-commit.sample:24:# Cross platform projects tend to avoid non-ASCII filenames; prevent
.git/hooks/pre-commit.sample:31:	test $(git diff --cached --name-only --diff-filter=A -z $against |
.git/hooks/pre-commit.sample:32:	  LC_ALL=C tr -d '[ -~]\0' | wc -c) != 0
.git/hooks/pre-commit.sample:35:Error: Attempt to add a non-ASCII file name.
.git/hooks/pre-commit.sample:49:exec git diff-index --check --cached $against --
.git/hooks/pre-receive.sample:7:# To enable this hook, rename this file to "pre-receive".
.git/hooks/pre-receive.sample:9:if test -n "$GIT_PUSH_OPTION_COUNT"
.git/hooks/pre-receive.sample:12:	while test "$i" -lt "$GIT_PUSH_OPTION_COUNT"
.git/hooks/pre-receive.sample:17:			echo "echo from the pre-receive-hook: ${value#*=}" >&2
.git/hooks/pre-applypatch.sample:4:# by applypatch from an e-mail message.
.git/hooks/pre-applypatch.sample:6:# The hook should exit with non-zero status after issuing an
.git/hooks/pre-applypatch.sample:9:# To enable this hook, rename this file to "pre-applypatch".
.git/hooks/pre-applypatch.sample:11:. git-sh-setup
.git/hooks/pre-applypatch.sample:12:precommit="$(git rev-parse --git-path hooks/pre-commit)"
.git/hooks/pre-applypatch.sample:13:test -x "$precommit" && exec "$precommit" ${1+"$@"}
python/proverbot.py:9:    for c in s[:-1]:
python/proverbot.py:13:    c = s[-1]
python/proverbot.py:22:        if len(tac) and tac[-1] == '.':
python/proverbot.py:32:    tacs = sorted(tacs, key=lambda x: -x[1])
python/darknet.py:10:        r = r - probs[i]
python/darknet.py:13:    return len(probs)-1
python/darknet.py:122:    res = sorted(res, key=lambda x: -x[1])
python/darknet.py:140:    res = sorted(res, key=lambda x: -x[1])
python/darknet.py:151:    net = load_net("cfg/tiny-yolo.cfg", "tiny-yolo.weights", 0)
stream.txt:3:--------[6] end time : 0.715719 ---------
stream.txt:6:--------[7] end time : 0.736336 ---------
stream.txt:9:--------[4] end time : 0.737184 ---------
stream.txt:12:--------[5] end time : 0.742976 ---------
stream.txt:15:--------[3] end time : 0.745111 ---------
stream.txt:18:--------[8] end time : 0.746218 ---------
stream.txt:21:--------[0] end time : 0.790644 ---------
stream.txt:24:--------[2] end time : 0.792388 ---------
stream.txt:27:--------[1] end time : 0.793655 ---------
stream.txt:39:--------[8] end time : 0.711489 ---------
stream.txt:41:--------[3] end time : 0.735856 ---------
stream.txt:43:--------[6] end time : 0.735969 ---------
stream.txt:45:--------[5] end time : 0.736370 ---------
stream.txt:47:--------[4] end time : 0.739433 ---------
stream.txt:49:--------[7] end time : 0.739518 ---------
stream.txt:51:--------[1] end time : 0.786634 ---------
stream.txt:53:--------[2] end time : 0.786748 ---------
stream.txt:55:--------[0] end time : 0.787903 ---------
stream.txt:62:------------------------------------------------------------------
stream.txt:65:--------[1] end time : 0.736240 ---------
stream.txt:67:--------[0] end time : 0.758529 ---------
stream.txt:69:--------[2] end time : 0.791773 ---------
stream.txt:71:--------[3] end time : 0.798818 ---------
stream.txt:73:--------[4] end time : 0.803444 ---------
stream.txt:75:--------[5] end time : 0.833640 ---------
stream.txt:77:--------[7] end time : 0.837771 ---------
stream.txt:79:--------[6] end time : 0.838667 ---------
stream.txt:81:--------[8] end time : 0.839172 ---------
stream.txt:92:--------[0] end time : 0.760532 ---------
stream.txt:94:--------[1] end time : 0.766715 ---------
stream.txt:96:--------[2] end time : 0.803135 ---------
stream.txt:98:--------[4] end time : 0.804873 ---------
stream.txt:100:--------[3] end time : 0.809167 ---------
stream.txt:102:--------[6] end time : 0.850321 ---------
stream.txt:104:--------[7] end time : 0.851302 ---------
stream.txt:106:--------[8] end time : 0.852300 ---------
stream.txt:108:--------[5] end time : 0.853120 ---------
stream.txt:116:--------[4] end time : 1.114660 ---------
stream.txt:118:--------[5] end time : 1.120679 ---------
stream.txt:120:--------[3] end time : 1.121409 ---------
stream.txt:122:--------[9] end time : 1.196786 ---------
stream.txt:124:--------[6] end time : 1.199828 ---------
stream.txt:126:--------[8] end time : 1.200913 ---------
stream.txt:128:--------[7] end time : 1.203897 ---------
stream.txt:130:--------[0] end time : 1.219403 ---------
stream.txt:132:--------[1] end time : 1.221704 ---------
stream.txt:134:--------[2] end time : 1.224667 ---------
Binary file alexnet.weights matches
include/darknet.h:26:#define SECRET_NUM -1234
src/utils.c:69:        map[n-1] = atoi(str);
src/utils.c:80:        size_t num = end-start;
src/utils.c:89:    for(i = 0; i < n-1; ++i){
src/utils.c:90:        size_t j = i + rand()/(RAND_MAX / (n-i)+1);
src/utils.c:99:    int *inds = calloc(max-min, sizeof(int));
src/utils.c:104:    for(i = min; i < max-1; ++i){
src/utils.c:106:        int index = i + rand()%(max-i);
src/utils.c:116:    for(i = index; i < argc-1; ++i) argv[i] = argv[i+1];
src/utils.c:136:    for(i = 0; i < argc-1; ++i){
src/utils.c:151:    for(i = 0; i < argc-1; ++i){
src/utils.c:166:    for(i = 0; i < argc-1; ++i){
src/utils.c:195:    return (c < 58) ? c - 48 : c-87;
src/utils.c:240:    for(j = 0; j < k; ++j) index[j] = -1;
src/utils.c:257:    exit(-1);
src/utils.c:278:    exit(-1);
src/utils.c:310:        else s[i-offset] = c;
src/utils.c:312:    s[len-offset] = '\0';
src/utils.c:323:        else s[i-offset] = c;
src/utils.c:325:    s[len-offset] = '\0';
src/utils.c:347:    while((line[curr-1] != '\n') && !feof(fp)){
src/utils.c:348:        if(curr == size-1){
src/utils.c:356:        size_t readsize = size-curr;
src/utils.c:357:        if(readsize > INT_MAX) readsize = INT_MAX-1;
src/utils.c:361:    if(line[curr-1] == '\n') line[curr-1] = '\0';
src/utils.c:370:    if(next <= 0) return -1;
src/utils.c:384:        int next = read(fd, buffer + n, bytes-n);
src/utils.c:395:        size_t next = write(fd, buffer + n, bytes-n);
src/utils.c:406:        int next = read(fd, buffer + n, bytes-n);
src/utils.c:416:        size_t next = write(fd, buffer + n, bytes-n);
src/utils.c:471:            if(end != c && (end != c-1 || *end != '\r')) field[count] = nan(""); //DOS file formats!
src/utils.c:519:    for(i = 0; i < n; ++i) sum += (a[i] - mean)*(a[i]-mean);
src/utils.c:542:    for(i = 0; i < n; i += sub) sum += pow(a[i]-b[i], 2);
src/utils.c:560:        a[i] = (a[i] - mu)/sigma;
src/utils.c:599:        r = r - a[i];
src/utils.c:602:    return n-1;
src/utils.c:607:    if(n <= 0) return -1;
src/utils.c:621:    if(n <= 0) return -1;
src/utils.c:639:    return -1;
src/utils.c:649:    int r = (rand()%(max - min + 1)) + min;
src/utils.c:668:    if(rand1 < 1e-100) rand1 = 1e-100;
src/utils.c:669:    rand1 = -2 * log(rand1);
src/utils.c:682:   return sum-n/2.;
src/utils.c:705:    return ((float)rand()/RAND_MAX * (max - min)) + min;
src/stb_image.h:1:/* stb_image - v2.19 - public domain image loader - http://nothings.org/stb
src/stb_image.h:24:      PNG 1/2/4/8/16-bit-per-channel
src/stb_image.h:27:      BMP non-1bpp, non-RLE
src/stb_image.h:28:      PSD (composited view only, no extra channels, 8/16 bit-per-channel)
src/stb_image.h:30:      GIF (*comp always reports as 4-channel)
src/stb_image.h:38:      - decode from memory or through FILE (define STBI_NO_STDIO to remove code)
src/stb_image.h:39:      - decode from arbitrary I/O callbacks
src/stb_image.h:40:      - SIMD acceleration on x86/x64 (SSE2) and ARM (NEON)
src/stb_image.h:51:      2.19  (2018-02-11) fix warning
src/stb_image.h:52:      2.18  (2018-01-30) fix warnings
src/stb_image.h:53:      2.17  (2018-01-29) bugfix, 1-bit BMP, 16-bitness query, fix warnings
src/stb_image.h:54:      2.16  (2017-07-23) all functions have 16-bit variants; optimizations; bugfixes
src/stb_image.h:55:      2.15  (2017-03-18) fix png-1,2,4; all Imagenet JPGs; no runtime SSE detection on GCC
src/stb_image.h:56:      2.14  (2017-03-03) remove deprecated STBI_JPEG_OLD; fixes for Imagenet JPGs
src/stb_image.h:57:      2.13  (2016-12-04) experimental 16-bit API, only for PNG so far; fixes
src/stb_image.h:58:      2.12  (2016-04-02) fix typo in 2.11 PSD fix that caused crashes
src/stb_image.h:59:      2.11  (2016-04-02) 16-bit PNGS; enable SSE2 in non-gcc x64
src/stb_image.h:60:                         RGB-format JPEG; remove white matting in PSD;
src/stb_image.h:63:      2.10  (2016-01-22) avoid warning introduced in 2.09
src/stb_image.h:64:      2.09  (2016-01-16) 16-bit TGA; comments in PNM files; STBI_REALLOC_SIZED
src/stb_image.h:75:    Jean-Marc Lienher (gif)                Ben "Disch" Wenger (io callbacks)
src/stb_image.h:76:    Tom Seddon (pic)                       Omar Cornut (1/2/4-bit PNG)
src/stb_image.h:78:    Ken Miller (pgm, ppm)                  Richard Mitton (16-bit PSD)
src/stb_image.h:80:    Christopher Forseth (animated gif)     Daniel Gibson (16-bit TGA)
src/stb_image.h:81:                                           socks-the-fox (16-bit PNG)
src/stb_image.h:83: Optimizations & bugfixes                  Mikhail Morozov (1-bit BMP)
src/stb_image.h:84:    Fabian "ryg" Giesen                    Anael Seghezzi (is-16-bit query)
src/stb_image.h:86:    John-Mark Allen
src/stb_image.h:112://    - no 12-bit-per-channel JPEG
src/stb_image.h:113://    - no JPEGs with arithmetic coding
src/stb_image.h:114://    - GIF always returns *comp=4
src/stb_image.h:120://    // ... x = width, y = height, n = # 8-bit components per pixel ...
src/stb_image.h:126://    int *x                 -- outputs image width in pixels
src/stb_image.h:127://    int *y                 -- outputs image height in pixels
src/stb_image.h:128://    int *channels_in_file  -- outputs # of image components in image file
src/stb_image.h:129://    int desired_channels   -- if non-zero, # of image components requested in result
src/stb_image.h:134:// with each pixel consisting of N interleaved 8-bit components; the first
src/stb_image.h:135:// pixel pointed to is top-left-most in the image. There is no padding between
src/stb_image.h:137:// components N is 'desired_channels' if desired_channels is non-zero, or
src/stb_image.h:138:// *channels_in_file otherwise. If desired_channels is non-zero,
src/stb_image.h:155:// stbi_failure_reason() can be queried for an extremely brief, end-user
src/stb_image.h:158:// more user-friendly ones.
src/stb_image.h:173:// and for best performance I may provide less-easy-to-use APIs that give higher
src/stb_image.h:181://    - Portable ("ease of use")
src/stb_image.h:182://    - Small source code footprint ("easy to maintain")
src/stb_image.h:183://    - No dependencies ("ease of use")
src/stb_image.h:205:// (The old do-it-yourself SIMD API is no longer supported in the current
src/stb_image.h:208:// On x86, SSE2 will automatically be used when available based on a run-time
src/stb_image.h:209:// test; if not, the generic C versions are used as a fall-back. On ARM targets,
src/stb_image.h:210:// the typical path is to have separate builds for NEON and non-NEON devices
src/stb_image.h:247:// Finally, given a filename (or an open file or memory block--see header
src/stb_image.h:258:// By default we convert iphone-formatted PNGs back to RGB, even though
src/stb_image.h:267:// and only if iPhone convert-to-rgb processing is on).
src/stb_image.h:273://  - You can suppress implementation of any of the decoders to reduce
src/stb_image.h:287://  - You can request *only* certain decoders and suppress all other ones
src/stb_image.h:288://    (this will be more forward-compatible, as addition of new decoders
src/stb_image.h:301://   - If you use STBI_NO_PNG (or _ONLY_ without PNG), and you still
src/stb_image.h:337:// PRIMARY API - works on images of any type
src/stb_image.h:347:   void     (*skip)  (void *user,int n);                 // skip the next 'n' bytes, or 'unget' the last -n bytes if negative
src/stb_image.h:353:// 8-bits-per-channel interface
src/stb_image.h:371:// 16-bits-per-channel interface
src/stb_image.h:384:// float-per-channel interface
src/stb_image.h:419:// free the loaded image -- this is just free()
src/stb_image.h:443:// or just pass them through "as-is"
src/stb_image.h:449:// ZLIB client - used by PNG, available for other purposes
src/stb_image.h:554:typedef unsigned char validate_uint32[sizeof(stbi__uint32)==4 ? 1 : -1];
src/stb_image.h:569:   #define stbi_lrot(x,y)  (((x) << (y)) | ((x) >> (32 - (y))))
src/stb_image.h:598:// gcc doesn't support sse2 intrinsics unless you compile with -msse2,
src/stb_image.h:602:// exposed in GCC/Clang is, sadly, not really suited for one-file libs.
src/stb_image.h:603:// New behavior: if compiled with -msse2, we use SSE2 without any
src/stb_image.h:609:// Note that __MINGW32__ doesn't actually mean 32-bit, so we have to avoid STBI__X64_TARGET
src/stb_image.h:611:// 32-bit MinGW wants ESP to be 16-byte aligned, but this is not in the
src/stb_image.h:613:// As a result, enabling SSE2 on 32-bit MinGW is dangerous when not
src/stb_image.h:614:// simultaneously enabling "-mstackrealign".
src/stb_image.h:618:// So default to no SSE2 on 32-bit MinGW. If you've read this far and added
src/stb_image.h:619:// -mstackrealign to your build settings, feel free to #define STBI_MINGW_ENABLE_SSE2.
src/stb_image.h:657:#else // assume GCC-style if not VC++
src/stb_image.h:663:   // -msse2 is on, which means the compiler is allowed to use SSE2
src/stb_image.h:710:// initialize a memory-decode context
src/stb_image.h:713:   s->io.read = NULL;
src/stb_image.h:714:   s->read_from_callbacks = 0;
src/stb_image.h:715:   s->img_buffer = s->img_buffer_original = (stbi_uc *) buffer;
src/stb_image.h:716:   s->img_buffer_end = s->img_buffer_original_end = (stbi_uc *) buffer+len;
src/stb_image.h:719:// initialize a callback-based context
src/stb_image.h:722:   s->io = *c;
src/stb_image.h:723:   s->io_user_data = user;
src/stb_image.h:724:   s->buflen = sizeof(s->buffer_start);
src/stb_image.h:725:   s->read_from_callbacks = 1;
src/stb_image.h:726:   s->img_buffer_original = s->buffer_start;
src/stb_image.h:728:   s->img_buffer_original_end = s->img_buffer_end;
src/stb_image.h:769:   s->img_buffer = s->img_buffer_original;
src/stb_image.h:770:   s->img_buffer_end = s->img_buffer_original_end;
src/stb_image.h:864:// current code, even on 64-bit targets, is INT_MAX. this is not a
src/stb_image.h:869:// multiply integers together, making sure that they're non-negative
src/stb_image.h:878:   // 0 <= INT_MAX - b <= INTMAX.
src/stb_image.h:880:   // same as a <= INT_MAX - b (no overflow)
src/stb_image.h:881:   return a <= INT_MAX - b;
src/stb_image.h:889:   if (b == 0) return 1; // mul-by-0 is always safe
src/stb_image.h:937:// stbi__err - error
src/stb_image.h:938:// stbi__errpf - error returning pointer to float
src/stb_image.h:939:// stbi__errpuc - error returning pointer to unsigned char
src/stb_image.h:975:   ri->bits_per_channel = 8; // default is 8 so most paths don't have to be changed
src/stb_image.h:976:   ri->channel_order = STBI_ORDER_RGB; // all current input & output are this, but this is here so we can add BGR order
src/stb_image.h:977:   ri->num_channels = 0;
src/stb_image.h:1027:      reduced[i] = (stbi_uc)((orig[i] >> 8) & 0xFF); // top half of each byte is sufficient approx of 16->8 bit scaling
src/stb_image.h:1043:      enlarged[i] = (stbi__uint16)((orig[i] << 8) + orig[i]); // replicate to high and low byte, maps 0->0, 255->0xffff
src/stb_image.h:1058:      stbi_uc *row1 = bytes + (h - row - 1)*bytes_per_row;
src/stb_image.h:1068:         bytes_left -= bytes_copy;
src/stb_image.h:1124:   // @TODO: special case RGB-to-Y (and RGBA-to-YA) for 8-bit-to-16-bit case to keep more precision
src/stb_image.h:1177:      fseek(f, - (int) (s.img_buffer_end - s.img_buffer), SEEK_CUR);
src/stb_image.h:1190:      fseek(f, - (int) (s.img_buffer_end - s.img_buffer), SEEK_CUR);
src/stb_image.h:1306:// these is-hdr-or-not is defined independent of whether STBI_NO_LINEAR is
src/stb_image.h:1392:   int n = (s->io.read)(s->io_user_data,(char*)s->buffer_start,s->buflen);
src/stb_image.h:1395:      // where s->img_buffer isn't pointing to safe memory, e.g. 0-byte file
src/stb_image.h:1396:      s->read_from_callbacks = 0;
src/stb_image.h:1397:      s->img_buffer = s->buffer_start;
src/stb_image.h:1398:      s->img_buffer_end = s->buffer_start+1;
src/stb_image.h:1399:      *s->img_buffer = 0;
src/stb_image.h:1401:      s->img_buffer = s->buffer_start;
src/stb_image.h:1402:      s->img_buffer_end = s->buffer_start + n;
src/stb_image.h:1408:   if (s->img_buffer < s->img_buffer_end)
src/stb_image.h:1409:      return *s->img_buffer++;
src/stb_image.h:1410:   if (s->read_from_callbacks) {
src/stb_image.h:1412:      return *s->img_buffer++;
src/stb_image.h:1419:   if (s->io.read) {
src/stb_image.h:1420:      if (!(s->io.eof)(s->io_user_data)) return 0;
src/stb_image.h:1423:      if (s->read_from_callbacks == 0) return 1;
src/stb_image.h:1426:   return s->img_buffer >= s->img_buffer_end;
src/stb_image.h:1432:      s->img_buffer = s->img_buffer_end;
src/stb_image.h:1435:   if (s->io.read) {
src/stb_image.h:1436:      int blen = (int) (s->img_buffer_end - s->img_buffer);
src/stb_image.h:1438:         s->img_buffer = s->img_buffer_end;
src/stb_image.h:1439:         (s->io.skip)(s->io_user_data, n - blen);
src/stb_image.h:1443:   s->img_buffer += n;
src/stb_image.h:1448:   if (s->io.read) {
src/stb_image.h:1449:      int blen = (int) (s->img_buffer_end - s->img_buffer);
src/stb_image.h:1453:         memcpy(buffer, s->img_buffer, blen);
src/stb_image.h:1455:         count = (s->io.read)(s->io_user_data, (char*) buffer + blen, n - blen);
src/stb_image.h:1456:         res = (count == (n-blen));
src/stb_image.h:1457:         s->img_buffer = s->img_buffer_end;
src/stb_image.h:1462:   if (s->img_buffer+n <= s->img_buffer_end) {
src/stb_image.h:1463:      memcpy(buffer, s->img_buffer, n);
src/stb_image.h:1464:      s->img_buffer += n;
src/stb_image.h:1505://  generic converter from built-in img_n to req_comp
src/stb_image.h:1538:      #define STBI__CASE(a,b)   case STBI__COMBO(a,b): for(i=x-1; i >= 0; --i, src += a, dest += b)
src/stb_image.h:1587:      #define STBI__CASE(a,b)   case STBI__COMBO(a,b): for(i=x-1; i >= 0; --i, src += a, dest += b)
src/stb_image.h:1620:   // compute number of non-alpha components
src/stb_image.h:1621:   if (comp & 1) n = comp; else n = comp-1;
src/stb_image.h:1642:   // compute number of non-alpha components
src/stb_image.h:1643:   if (comp & 1) n = comp; else n = comp-1;
src/stb_image.h:1668://      - doesn't support delayed output of y-dimension
src/stb_image.h:1669://      - simple interface (only one output format: 8-bit interleaved RGB)
src/stb_image.h:1670://      - doesn't try to recover corrupt jpegs
src/stb_image.h:1671://      - doesn't allow partial loading, loading multiple at once
src/stb_image.h:1672://      - still fast on x86 (copying globals into locals doesn't help x86)
src/stb_image.h:1673://      - allocates lots of intermediate memory (full size of all components)
src/stb_image.h:1674://        - non-interleaved case requires this anyway
src/stb_image.h:1675://        - allows good upsampling (see next)
src/stb_image.h:1676://    high-quality
src/stb_image.h:1677://      - upsampled channels are bilinearly interpolated, even across blocks
src/stb_image.h:1678://      - quality integer IDCT derived from IJG's 'slow'
src/stb_image.h:1680://      - fast huffman; reasonable integer IDCT
src/stb_image.h:1681://      - some SIMD kernels for common paths on targets with SSE2/NEON
src/stb_image.h:1682://      - uses a lot of intermediate memory, could cache poorly
src/stb_image.h:1697:   int    delta[17];   // old 'firstsymbol' - old 'firstcode'
src/stb_image.h:1730:   stbi__uint32   code_buffer; // jpeg entropy-coded buffer
src/stb_image.h:1761:         h->size[k++] = (stbi_uc) (i+1);
src/stb_image.h:1762:   h->size[k] = 0;
src/stb_image.h:1769:      h->delta[j] = k - code;
src/stb_image.h:1770:      if (h->size[k] == j) {
src/stb_image.h:1771:         while (h->size[k] == j)
src/stb_image.h:1772:            h->code[k++] = (stbi__uint16) (code++);
src/stb_image.h:1773:         if (code-1 >= (1u << j)) return stbi__err("bad code lengths","Corrupt JPEG");
src/stb_image.h:1776:      h->maxcode[j] = code << (16-j);
src/stb_image.h:1779:   h->maxcode[j] = 0xffffffff;
src/stb_image.h:1781:   // build non-spec acceleration table; 255 is flag for not-accelerated
src/stb_image.h:1782:   memset(h->fast, 255, 1 << FAST_BITS);
src/stb_image.h:1784:      int s = h->size[i];
src/stb_image.h:1786:         int c = h->code[i] << (FAST_BITS-s);
src/stb_image.h:1787:         int m = 1 << (FAST_BITS-s);
src/stb_image.h:1789:            h->fast[c+j] = (stbi_uc) i;
src/stb_image.h:1802:      stbi_uc fast = h->fast[i];
src/stb_image.h:1805:         int rs = h->values[fast];
src/stb_image.h:1808:         int len = h->size[fast];
src/stb_image.h:1812:            int k = ((i << len) & ((1 << FAST_BITS) - 1)) >> (FAST_BITS - magbits);
src/stb_image.h:1813:            int m = 1 << (magbits - 1);
src/stb_image.h:1816:            if (k >= -128 && k <= 127)
src/stb_image.h:1826:      unsigned int b = j->nomore ? 0 : stbi__get8(j->s);
src/stb_image.h:1828:         int c = stbi__get8(j->s);
src/stb_image.h:1829:         while (c == 0xff) c = stbi__get8(j->s); // consume fill bytes
src/stb_image.h:1831:            j->marker = (unsigned char) c;
src/stb_image.h:1832:            j->nomore = 1;
src/stb_image.h:1836:      j->code_buffer |= b << (24 - j->code_bits);
src/stb_image.h:1837:      j->code_bits += 8;
src/stb_image.h:1838:   } while (j->code_bits <= 24);
src/stb_image.h:1841:// (1 << n) - 1
src/stb_image.h:1850:   if (j->code_bits < 16) stbi__grow_buffer_unsafe(j);
src/stb_image.h:1854:   c = (j->code_buffer >> (32 - FAST_BITS)) & ((1 << FAST_BITS)-1);
src/stb_image.h:1855:   k = h->fast[c];
src/stb_image.h:1857:      int s = h->size[k];
src/stb_image.h:1858:      if (s > j->code_bits)
src/stb_image.h:1859:         return -1;
src/stb_image.h:1860:      j->code_buffer <<= s;
src/stb_image.h:1861:      j->code_bits -= s;
src/stb_image.h:1862:      return h->values[k];
src/stb_image.h:1867:   // preshifted maxcode left so that it has (16-k) 0s at the
src/stb_image.h:1871:   temp = j->code_buffer >> 16;
src/stb_image.h:1873:      if (temp < h->maxcode[k])
src/stb_image.h:1877:      j->code_bits -= 16;
src/stb_image.h:1878:      return -1;
src/stb_image.h:1881:   if (k > j->code_bits)
src/stb_image.h:1882:      return -1;
src/stb_image.h:1885:   c = ((j->code_buffer >> (32 - k)) & stbi__bmask[k]) + h->delta[k];
src/stb_image.h:1886:   STBI_ASSERT((((j->code_buffer) >> (32 - h->size[c])) & stbi__bmask[h->size[c]]) == h->code[c]);
src/stb_image.h:1889:   j->code_bits -= k;
src/stb_image.h:1890:   j->code_buffer <<= k;
src/stb_image.h:1891:   return h->values[c];
src/stb_image.h:1894:// bias[n] = (-1<<n) + 1
src/stb_image.h:1895:static const int stbi__jbias[16] = {0,-1,-3,-7,-15,-31,-63,-127,-255,-511,-1023,-2047,-4095,-8191,-16383,-32767};
src/stb_image.h:1903:   if (j->code_bits < n) stbi__grow_buffer_unsafe(j);
src/stb_image.h:1905:   sgn = (stbi__int32)j->code_buffer >> 31; // sign bit is always in MSB
src/stb_image.h:1906:   k = stbi_lrot(j->code_buffer, n);
src/stb_image.h:1908:   j->code_buffer = k & ~stbi__bmask[n];
src/stb_image.h:1910:   j->code_bits -= n;
src/stb_image.h:1918:   if (j->code_bits < n) stbi__grow_buffer_unsafe(j);
src/stb_image.h:1919:   k = stbi_lrot(j->code_buffer, n);
src/stb_image.h:1920:   j->code_buffer = k & ~stbi__bmask[n];
src/stb_image.h:1922:   j->code_bits -= n;
src/stb_image.h:1929:   if (j->code_bits < 1) stbi__grow_buffer_unsafe(j);
src/stb_image.h:1930:   k = j->code_buffer;
src/stb_image.h:1931:   j->code_buffer <<= 1;
src/stb_image.h:1932:   --j->code_bits;
src/stb_image.h:1937:// where does it appear in the 8x8 matrix coded as row-major?
src/stb_image.h:1953:// decode one 64-entry block--
src/stb_image.h:1959:   if (j->code_bits < 16) stbi__grow_buffer_unsafe(j);
src/stb_image.h:1963:   // 0 all the ac values now so we can do it 32-bits at a time
src/stb_image.h:1967:   dc = j->img_comp[b].dc_pred + diff;
src/stb_image.h:1968:   j->img_comp[b].dc_pred = dc;
src/stb_image.h:1976:      if (j->code_bits < 16) stbi__grow_buffer_unsafe(j);
src/stb_image.h:1977:      c = (j->code_buffer >> (32 - FAST_BITS)) & ((1 << FAST_BITS)-1);
src/stb_image.h:1979:      if (r) { // fast-AC path
src/stb_image.h:1982:         j->code_buffer <<= s;
src/stb_image.h:1983:         j->code_bits -= s;
src/stb_image.h:2010:   if (j->spec_end != 0) return stbi__err("can't merge dc and ac", "Corrupt JPEG");
src/stb_image.h:2012:   if (j->code_bits < 16) stbi__grow_buffer_unsafe(j);
src/stb_image.h:2014:   if (j->succ_high == 0) {
src/stb_image.h:2020:      dc = j->img_comp[b].dc_pred + diff;
src/stb_image.h:2021:      j->img_comp[b].dc_pred = dc;
src/stb_image.h:2022:      data[0] = (short) (dc << j->succ_low);
src/stb_image.h:2026:         data[0] += (short) (1 << j->succ_low);
src/stb_image.h:2031:// @OPTIMIZE: store non-zigzagged during the decode passes,
src/stb_image.h:2032:// and only de-zigzag when dequantizing
src/stb_image.h:2036:   if (j->spec_start == 0) return stbi__err("can't merge dc and ac", "Corrupt JPEG");
src/stb_image.h:2038:   if (j->succ_high == 0) {
src/stb_image.h:2039:      int shift = j->succ_low;
src/stb_image.h:2041:      if (j->eob_run) {
src/stb_image.h:2042:         --j->eob_run;
src/stb_image.h:2046:      k = j->spec_start;
src/stb_image.h:2050:         if (j->code_bits < 16) stbi__grow_buffer_unsafe(j);
src/stb_image.h:2051:         c = (j->code_buffer >> (32 - FAST_BITS)) & ((1 << FAST_BITS)-1);
src/stb_image.h:2053:         if (r) { // fast-AC path
src/stb_image.h:2056:            j->code_buffer <<= s;
src/stb_image.h:2057:            j->code_bits -= s;
src/stb_image.h:2067:                  j->eob_run = (1 << r);
src/stb_image.h:2069:                     j->eob_run += stbi__jpeg_get_bits(j, r);
src/stb_image.h:2070:                  --j->eob_run;
src/stb_image.h:2080:      } while (k <= j->spec_end);
src/stb_image.h:2084:      short bit = (short) (1 << j->succ_low);
src/stb_image.h:2086:      if (j->eob_run) {
src/stb_image.h:2087:         --j->eob_run;
src/stb_image.h:2088:         for (k = j->spec_start; k <= j->spec_end; ++k) {
src/stb_image.h:2096:                        *p -= bit;
src/stb_image.h:2100:         k = j->spec_start;
src/stb_image.h:2103:            int rs = stbi__jpeg_huff_decode(j, hac); // @OPTIMIZE see if we can use the fast path here, advance-by-r is so slow, eh
src/stb_image.h:2109:                  j->eob_run = (1 << r) - 1;
src/stb_image.h:2111:                     j->eob_run += stbi__jpeg_get_bits(j, r);
src/stb_image.h:2124:                  s = -bit;
src/stb_image.h:2128:            while (k <= j->spec_end) {
src/stb_image.h:2136:                           *p -= bit;
src/stb_image.h:2143:                  --r;
src/stb_image.h:2146:         } while (k <= j->spec_end);
src/stb_image.h:2152:// take a -128..127 value and stbi__clamp it and convert to 0..255
src/stb_image.h:2166:// derived from jidctint -- DCT_ISLOW
src/stb_image.h:2172:   t2 = p1 + p3*stbi__f2f(-1.847759065f);      \
src/stb_image.h:2177:   t1 = stbi__fsh(p2-p3);                      \
src/stb_image.h:2179:   x3 = t0-t3;                                 \
src/stb_image.h:2181:   x2 = t1-t2;                                 \
src/stb_image.h:2195:   p1 = p5 + p1*stbi__f2f(-0.899976223f);      \
src/stb_image.h:2196:   p2 = p5 + p2*stbi__f2f(-2.562915447f);      \
src/stb_image.h:2197:   p3 = p3*stbi__f2f(-1.961570560f);           \
src/stb_image.h:2198:   p4 = p4*stbi__f2f(-0.390180644f);           \
src/stb_image.h:2212:      // if all zeroes, shortcut -- this avoids dequantizing 0s and IDCTing
src/stb_image.h:2217:         //    all separate               -0.047 seconds
src/stb_image.h:2218:         //    1 && 2|3 && 4|5 && 6|7:    -0.047 seconds
src/stb_image.h:2227:         v[56] = (x0-t3) >> 10;
src/stb_image.h:2229:         v[48] = (x1-t2) >> 10;
src/stb_image.h:2231:         v[40] = (x2-t1) >> 10;
src/stb_image.h:2233:         v[32] = (x3-t0) >> 10;
src/stb_image.h:2244:      // aka 65536. Also, we'll end up with -128 to 127 that we want
src/stb_image.h:2253:      o[7] = stbi__clamp((x0-t3) >> 17);
src/stb_image.h:2255:      o[6] = stbi__clamp((x1-t2) >> 17);
src/stb_image.h:2257:      o[5] = stbi__clamp((x2-t1) >> 17);
src/stb_image.h:2259:      o[4] = stbi__clamp((x3-t0) >> 17);
src/stb_image.h:2265:// produces bit-identical results to the generic C version so it's
src/stb_image.h:2276:   // out(0) = c0[even]*x + c0[odd]*y   (c0, x, y 16-bit, out 32-bit)
src/stb_image.h:2286:   // out = in << 12  (in 16-bit, out 32-bit)
src/stb_image.h:2312:   // 8-bit interleave step (for transposes)
src/stb_image.h:2318:   // 16-bit interleave step (for transposes)
src/stb_image.h:2352:   __m128i rot0_0 = dct_const(stbi__f2f(0.5411961f), stbi__f2f(0.5411961f) + stbi__f2f(-1.847759065f));
src/stb_image.h:2354:   __m128i rot1_0 = dct_const(stbi__f2f(1.175875602f) + stbi__f2f(-0.899976223f), stbi__f2f(1.175875602f));
src/stb_image.h:2355:   __m128i rot1_1 = dct_const(stbi__f2f(1.175875602f), stbi__f2f(1.175875602f) + stbi__f2f(-2.562915447f));
src/stb_image.h:2356:   __m128i rot2_0 = dct_const(stbi__f2f(-1.961570560f) + stbi__f2f( 0.298631336f), stbi__f2f(-1.961570560f));
src/stb_image.h:2357:   __m128i rot2_1 = dct_const(stbi__f2f(-1.961570560f), stbi__f2f(-1.961570560f) + stbi__f2f( 3.072711026f));
src/stb_image.h:2358:   __m128i rot3_0 = dct_const(stbi__f2f(-0.390180644f) + stbi__f2f( 2.053119869f), stbi__f2f(-0.390180644f));
src/stb_image.h:2359:   __m128i rot3_1 = dct_const(stbi__f2f(-0.390180644f), stbi__f2f(-0.390180644f) + stbi__f2f( 1.501321110f));
src/stb_image.h:2446:// NEON integer IDCT. should produce bit-identical
src/stb_image.h:2453:   int16x4_t rot0_1 = vdup_n_s16(stbi__f2f(-1.847759065f));
src/stb_image.h:2456:   int16x4_t rot1_1 = vdup_n_s16(stbi__f2f(-0.899976223f));
src/stb_image.h:2457:   int16x4_t rot1_2 = vdup_n_s16(stbi__f2f(-2.562915447f));
src/stb_image.h:2458:   int16x4_t rot2_0 = vdup_n_s16(stbi__f2f(-1.961570560f));
src/stb_image.h:2459:   int16x4_t rot2_1 = vdup_n_s16(stbi__f2f(-0.390180644f));
src/stb_image.h:2585:   // 17. so do a non-rounding shift of 16 first then follow
src/stb_image.h:2608:      // 8x8 8-bit transpose pass 1
src/stb_image.h:2659:   if (j->marker != STBI__MARKER_none) { x = j->marker; j->marker = STBI__MARKER_none; return x; }
src/stb_image.h:2660:   x = stbi__get8(j->s);
src/stb_image.h:2663:      x = stbi__get8(j->s); // consume repeated 0xff fill bytes
src/stb_image.h:2675:   j->code_bits = 0;
src/stb_image.h:2676:   j->code_buffer = 0;
src/stb_image.h:2677:   j->nomore = 0;
src/stb_image.h:2678:   j->img_comp[0].dc_pred = j->img_comp[1].dc_pred = j->img_comp[2].dc_pred = j->img_comp[3].dc_pred = 0;
src/stb_image.h:2679:   j->marker = STBI__MARKER_none;
src/stb_image.h:2680:   j->todo = j->restart_interval ? j->restart_interval : 0x7fffffff;
src/stb_image.h:2681:   j->eob_run = 0;
src/stb_image.h:2689:   if (!z->progressive) {
src/stb_image.h:2690:      if (z->scan_n == 1) {
src/stb_image.h:2693:         int n = z->order[0];
src/stb_image.h:2694:         // non-interleaved data, we just need to process one block at a time,
src/stb_image.h:2698:         int w = (z->img_comp[n].x+7) >> 3;
src/stb_image.h:2699:         int h = (z->img_comp[n].y+7) >> 3;
src/stb_image.h:2702:               int ha = z->img_comp[n].ha;
src/stb_image.h:2703:               if (!stbi__jpeg_decode_block(z, data, z->huff_dc+z->img_comp[n].hd, z->huff_ac+ha, z->fast_ac[ha], n, z->dequant[z->img_comp[n].tq])) return 0;
src/stb_image.h:2704:               z->idct_block_kernel(z->img_comp[n].data+z->img_comp[n].w2*j*8+i*8, z->img_comp[n].w2, data);
src/stb_image.h:2706:               if (--z->todo <= 0) {
src/stb_image.h:2707:                  if (z->code_bits < 24) stbi__grow_buffer_unsafe(z);
src/stb_image.h:2710:                  if (!STBI__RESTART(z->marker)) return 1;
src/stb_image.h:2719:         for (j=0; j < z->img_mcu_y; ++j) {
src/stb_image.h:2720:            for (i=0; i < z->img_mcu_x; ++i) {
src/stb_image.h:2722:               for (k=0; k < z->scan_n; ++k) {
src/stb_image.h:2723:                  int n = z->order[k];
src/stb_image.h:2726:                  for (y=0; y < z->img_comp[n].v; ++y) {
src/stb_image.h:2727:                     for (x=0; x < z->img_comp[n].h; ++x) {
src/stb_image.h:2728:                        int x2 = (i*z->img_comp[n].h + x)*8;
src/stb_image.h:2729:                        int y2 = (j*z->img_comp[n].v + y)*8;
src/stb_image.h:2730:                        int ha = z->img_comp[n].ha;
src/stb_image.h:2731:                        if (!stbi__jpeg_decode_block(z, data, z->huff_dc+z->img_comp[n].hd, z->huff_ac+ha, z->fast_ac[ha], n, z->dequant[z->img_comp[n].tq])) return 0;
src/stb_image.h:2732:                        z->idct_block_kernel(z->img_comp[n].data+z->img_comp[n].w2*y2+x2, z->img_comp[n].w2, data);
src/stb_image.h:2738:               if (--z->todo <= 0) {
src/stb_image.h:2739:                  if (z->code_bits < 24) stbi__grow_buffer_unsafe(z);
src/stb_image.h:2740:                  if (!STBI__RESTART(z->marker)) return 1;
src/stb_image.h:2748:      if (z->scan_n == 1) {
src/stb_image.h:2750:         int n = z->order[0];
src/stb_image.h:2751:         // non-interleaved data, we just need to process one block at a time,
src/stb_image.h:2755:         int w = (z->img_comp[n].x+7) >> 3;
src/stb_image.h:2756:         int h = (z->img_comp[n].y+7) >> 3;
src/stb_image.h:2759:               short *data = z->img_comp[n].coeff + 64 * (i + j * z->img_comp[n].coeff_w);
src/stb_image.h:2760:               if (z->spec_start == 0) {
src/stb_image.h:2761:                  if (!stbi__jpeg_decode_block_prog_dc(z, data, &z->huff_dc[z->img_comp[n].hd], n))
src/stb_image.h:2764:                  int ha = z->img_comp[n].ha;
src/stb_image.h:2765:                  if (!stbi__jpeg_decode_block_prog_ac(z, data, &z->huff_ac[ha], z->fast_ac[ha]))
src/stb_image.h:2769:               if (--z->todo <= 0) {
src/stb_image.h:2770:                  if (z->code_bits < 24) stbi__grow_buffer_unsafe(z);
src/stb_image.h:2771:                  if (!STBI__RESTART(z->marker)) return 1;
src/stb_image.h:2779:         for (j=0; j < z->img_mcu_y; ++j) {
src/stb_image.h:2780:            for (i=0; i < z->img_mcu_x; ++i) {
src/stb_image.h:2782:               for (k=0; k < z->scan_n; ++k) {
src/stb_image.h:2783:                  int n = z->order[k];
src/stb_image.h:2786:                  for (y=0; y < z->img_comp[n].v; ++y) {
src/stb_image.h:2787:                     for (x=0; x < z->img_comp[n].h; ++x) {
src/stb_image.h:2788:                        int x2 = (i*z->img_comp[n].h + x);
src/stb_image.h:2789:                        int y2 = (j*z->img_comp[n].v + y);
src/stb_image.h:2790:                        short *data = z->img_comp[n].coeff + 64 * (x2 + y2 * z->img_comp[n].coeff_w);
src/stb_image.h:2791:                        if (!stbi__jpeg_decode_block_prog_dc(z, data, &z->huff_dc[z->img_comp[n].hd], n))
src/stb_image.h:2798:               if (--z->todo <= 0) {
src/stb_image.h:2799:                  if (z->code_bits < 24) stbi__grow_buffer_unsafe(z);
src/stb_image.h:2800:                  if (!STBI__RESTART(z->marker)) return 1;
src/stb_image.h:2819:   if (z->progressive) {
src/stb_image.h:2822:      for (n=0; n < z->s->img_n; ++n) {
src/stb_image.h:2823:         int w = (z->img_comp[n].x+7) >> 3;
src/stb_image.h:2824:         int h = (z->img_comp[n].y+7) >> 3;
src/stb_image.h:2827:               short *data = z->img_comp[n].coeff + 64 * (i + j * z->img_comp[n].coeff_w);
src/stb_image.h:2828:               stbi__jpeg_dequantize(data, z->dequant[z->img_comp[n].tq]);
src/stb_image.h:2829:               z->idct_block_kernel(z->img_comp[n].data+z->img_comp[n].w2*j*8+i*8, z->img_comp[n].w2, data);
src/stb_image.h:2843:      case 0xDD: // DRI - specify restart interval
src/stb_image.h:2844:         if (stbi__get16be(z->s) != 4) return stbi__err("bad DRI len","Corrupt JPEG");
src/stb_image.h:2845:         z->restart_interval = stbi__get16be(z->s);
src/stb_image.h:2848:      case 0xDB: // DQT - define quantization table
src/stb_image.h:2849:         L = stbi__get16be(z->s)-2;
src/stb_image.h:2851:            int q = stbi__get8(z->s);
src/stb_image.h:2858:               z->dequant[t][stbi__jpeg_dezigzag[i]] = (stbi__uint16)(sixteen ? stbi__get16be(z->s) : stbi__get8(z->s));
src/stb_image.h:2859:            L -= (sixteen ? 129 : 65);
src/stb_image.h:2863:      case 0xC4: // DHT - define huffman table
src/stb_image.h:2864:         L = stbi__get16be(z->s)-2;
src/stb_image.h:2868:            int q = stbi__get8(z->s);
src/stb_image.h:2873:               sizes[i] = stbi__get8(z->s);
src/stb_image.h:2876:            L -= 17;
src/stb_image.h:2878:               if (!stbi__build_huffman(z->huff_dc+th, sizes)) return 0;
src/stb_image.h:2879:               v = z->huff_dc[th].values;
src/stb_image.h:2881:               if (!stbi__build_huffman(z->huff_ac+th, sizes)) return 0;
src/stb_image.h:2882:               v = z->huff_ac[th].values;
src/stb_image.h:2885:               v[i] = stbi__get8(z->s);
src/stb_image.h:2887:               stbi__build_fast_ac(z->fast_ac[th], z->huff_ac + th);
src/stb_image.h:2888:            L -= n;
src/stb_image.h:2895:      L = stbi__get16be(z->s);
src/stb_image.h:2902:      L -= 2;
src/stb_image.h:2909:            if (stbi__get8(z->s) != tag[i])
src/stb_image.h:2911:         L -= 5;
src/stb_image.h:2913:            z->jfif = 1;
src/stb_image.h:2919:            if (stbi__get8(z->s) != tag[i])
src/stb_image.h:2921:         L -= 6;
src/stb_image.h:2923:            stbi__get8(z->s); // version
src/stb_image.h:2924:            stbi__get16be(z->s); // flags0
src/stb_image.h:2925:            stbi__get16be(z->s); // flags1
src/stb_image.h:2926:            z->app14_color_transform = stbi__get8(z->s); // color transform
src/stb_image.h:2927:            L -= 6;
src/stb_image.h:2931:      stbi__skip(z->s, L);
src/stb_image.h:2942:   int Ls = stbi__get16be(z->s);
src/stb_image.h:2943:   z->scan_n = stbi__get8(z->s);
src/stb_image.h:2944:   if (z->scan_n < 1 || z->scan_n > 4 || z->scan_n > (int) z->s->img_n) return stbi__err("bad SOS component count","Corrupt JPEG");
src/stb_image.h:2945:   if (Ls != 6+2*z->scan_n) return stbi__err("bad SOS len","Corrupt JPEG");
src/stb_image.h:2946:   for (i=0; i < z->scan_n; ++i) {
src/stb_image.h:2947:      int id = stbi__get8(z->s), which;
src/stb_image.h:2948:      int q = stbi__get8(z->s);
src/stb_image.h:2949:      for (which = 0; which < z->s->img_n; ++which)
src/stb_image.h:2950:         if (z->img_comp[which].id == id)
src/stb_image.h:2952:      if (which == z->s->img_n) return 0; // no match
src/stb_image.h:2953:      z->img_comp[which].hd = q >> 4;   if (z->img_comp[which].hd > 3) return stbi__err("bad DC huff","Corrupt JPEG");
src/stb_image.h:2954:      z->img_comp[which].ha = q & 15;   if (z->img_comp[which].ha > 3) return stbi__err("bad AC huff","Corrupt JPEG");
src/stb_image.h:2955:      z->order[i] = which;
src/stb_image.h:2960:      z->spec_start = stbi__get8(z->s);
src/stb_image.h:2961:      z->spec_end   = stbi__get8(z->s); // should be 63, but might be 0
src/stb_image.h:2962:      aa = stbi__get8(z->s);
src/stb_image.h:2963:      z->succ_high = (aa >> 4);
src/stb_image.h:2964:      z->succ_low  = (aa & 15);
src/stb_image.h:2965:      if (z->progressive) {
src/stb_image.h:2966:         if (z->spec_start > 63 || z->spec_end > 63  || z->spec_start > z->spec_end || z->succ_high > 13 || z->succ_low > 13)
src/stb_image.h:2969:         if (z->spec_start != 0) return stbi__err("bad SOS","Corrupt JPEG");
src/stb_image.h:2970:         if (z->succ_high != 0 || z->succ_low != 0) return stbi__err("bad SOS","Corrupt JPEG");
src/stb_image.h:2971:         z->spec_end = 63;
src/stb_image.h:2982:      if (z->img_comp[i].raw_data) {
src/stb_image.h:2983:         STBI_FREE(z->img_comp[i].raw_data);
src/stb_image.h:2984:         z->img_comp[i].raw_data = NULL;
src/stb_image.h:2985:         z->img_comp[i].data = NULL;
src/stb_image.h:2987:      if (z->img_comp[i].raw_coeff) {
src/stb_image.h:2988:         STBI_FREE(z->img_comp[i].raw_coeff);
src/stb_image.h:2989:         z->img_comp[i].raw_coeff = 0;
src/stb_image.h:2990:         z->img_comp[i].coeff = 0;
src/stb_image.h:2992:      if (z->img_comp[i].linebuf) {
src/stb_image.h:2993:         STBI_FREE(z->img_comp[i].linebuf);
src/stb_image.h:2994:         z->img_comp[i].linebuf = NULL;
src/stb_image.h:3002:   stbi__context *s = z->s;
src/stb_image.h:3005:   p  = stbi__get8(s);            if (p != 8) return stbi__err("only 8-bit","JPEG format not supported: 8-bit only"); // JPEG baseline
src/stb_image.h:3006:   s->img_y = stbi__get16be(s);   if (s->img_y == 0) return stbi__err("no header height", "JPEG format not supported: delayed height"); // Legal, but we don't handle it--but neither does IJG
src/stb_image.h:3007:   s->img_x = stbi__get16be(s);   if (s->img_x == 0) return stbi__err("0 width","Corrupt JPEG"); // JPEG requires
src/stb_image.h:3010:   s->img_n = c;
src/stb_image.h:3012:      z->img_comp[i].data = NULL;
src/stb_image.h:3013:      z->img_comp[i].linebuf = NULL;
src/stb_image.h:3016:   if (Lf != 8+3*s->img_n) return stbi__err("bad SOF len","Corrupt JPEG");
src/stb_image.h:3018:   z->rgb = 0;
src/stb_image.h:3019:   for (i=0; i < s->img_n; ++i) {
src/stb_image.h:3021:      z->img_comp[i].id = stbi__get8(s);
src/stb_image.h:3022:      if (s->img_n == 3 && z->img_comp[i].id == rgb[i])
src/stb_image.h:3023:         ++z->rgb;
src/stb_image.h:3025:      z->img_comp[i].h = (q >> 4);  if (!z->img_comp[i].h || z->img_comp[i].h > 4) return stbi__err("bad H","Corrupt JPEG");
src/stb_image.h:3026:      z->img_comp[i].v = q & 15;    if (!z->img_comp[i].v || z->img_comp[i].v > 4) return stbi__err("bad V","Corrupt JPEG");
src/stb_image.h:3027:      z->img_comp[i].tq = stbi__get8(s);  if (z->img_comp[i].tq > 3) return stbi__err("bad TQ","Corrupt JPEG");
src/stb_image.h:3032:   if (!stbi__mad3sizes_valid(s->img_x, s->img_y, s->img_n, 0)) return stbi__err("too large", "Image too large to decode");
src/stb_image.h:3034:   for (i=0; i < s->img_n; ++i) {
src/stb_image.h:3035:      if (z->img_comp[i].h > h_max) h_max = z->img_comp[i].h;
src/stb_image.h:3036:      if (z->img_comp[i].v > v_max) v_max = z->img_comp[i].v;
src/stb_image.h:3040:   z->img_h_max = h_max;
src/stb_image.h:3041:   z->img_v_max = v_max;
src/stb_image.h:3042:   z->img_mcu_w = h_max * 8;
src/stb_image.h:3043:   z->img_mcu_h = v_max * 8;
src/stb_image.h:3045:   z->img_mcu_x = (s->img_x + z->img_mcu_w-1) / z->img_mcu_w;
src/stb_image.h:3046:   z->img_mcu_y = (s->img_y + z->img_mcu_h-1) / z->img_mcu_h;
src/stb_image.h:3048:   for (i=0; i < s->img_n; ++i) {
src/stb_image.h:3049:      // number of effective pixels (e.g. for non-interleaved MCU)
src/stb_image.h:3050:      z->img_comp[i].x = (s->img_x * z->img_comp[i].h + h_max-1) / h_max;
src/stb_image.h:3051:      z->img_comp[i].y = (s->img_y * z->img_comp[i].v + v_max-1) / v_max;
src/stb_image.h:3058:      // so these muls can't overflow with 32-bit ints (which we require)
src/stb_image.h:3059:      z->img_comp[i].w2 = z->img_mcu_x * z->img_comp[i].h * 8;
src/stb_image.h:3060:      z->img_comp[i].h2 = z->img_mcu_y * z->img_comp[i].v * 8;
src/stb_image.h:3061:      z->img_comp[i].coeff = 0;
src/stb_image.h:3062:      z->img_comp[i].raw_coeff = 0;
src/stb_image.h:3063:      z->img_comp[i].linebuf = NULL;
src/stb_image.h:3064:      z->img_comp[i].raw_data = stbi__malloc_mad2(z->img_comp[i].w2, z->img_comp[i].h2, 15);
src/stb_image.h:3065:      if (z->img_comp[i].raw_data == NULL)
src/stb_image.h:3068:      z->img_comp[i].data = (stbi_uc*) (((size_t) z->img_comp[i].raw_data + 15) & ~15);
src/stb_image.h:3069:      if (z->progressive) {
src/stb_image.h:3071:         z->img_comp[i].coeff_w = z->img_comp[i].w2 / 8;
src/stb_image.h:3072:         z->img_comp[i].coeff_h = z->img_comp[i].h2 / 8;
src/stb_image.h:3073:         z->img_comp[i].raw_coeff = stbi__malloc_mad3(z->img_comp[i].w2, z->img_comp[i].h2, sizeof(short), 15);
src/stb_image.h:3074:         if (z->img_comp[i].raw_coeff == NULL)
src/stb_image.h:3076:         z->img_comp[i].coeff = (short*) (((size_t) z->img_comp[i].raw_coeff + 15) & ~15);
src/stb_image.h:3095:   z->jfif = 0;
src/stb_image.h:3096:   z->app14_color_transform = -1; // valid values are 0,1,2
src/stb_image.h:3097:   z->marker = STBI__MARKER_none; // initialize cached marker to empty
src/stb_image.h:3107:         if (stbi__at_eof(z->s)) return stbi__err("no SOF", "Corrupt JPEG");
src/stb_image.h:3111:   z->progressive = stbi__SOF_progressive(m);
src/stb_image.h:3121:      j->img_comp[m].raw_data = NULL;
src/stb_image.h:3122:      j->img_comp[m].raw_coeff = NULL;
src/stb_image.h:3124:   j->restart_interval = 0;
src/stb_image.h:3131:         if (j->marker == STBI__MARKER_none ) {
src/stb_image.h:3133:            while (!stbi__at_eof(j->s)) {
src/stb_image.h:3134:               int x = stbi__get8(j->s);
src/stb_image.h:3136:                  j->marker = stbi__get8(j->s);
src/stb_image.h:3143:         int Ld = stbi__get16be(j->s);
src/stb_image.h:3144:         stbi__uint32 NL = stbi__get16be(j->s);
src/stb_image.h:3146:         if (NL != j->s->img_y) return stbi__err("bad DNL height", "Corrupt JPEG");
src/stb_image.h:3152:   if (j->progressive)
src/stb_image.h:3157:// static jfif-centered resampling (across block boundaries)
src/stb_image.h:3197:   for (i=1; i < w-1; ++i) {
src/stb_image.h:3199:      out[i*2+0] = stbi__div4(n+input[i-1]);
src/stb_image.h:3202:   out[i*2+0] = stbi__div4(input[w-2]*3 + input[w-1] + 2);
src/stb_image.h:3203:   out[i*2+1] = input[w-1];
src/stb_image.h:3227:      out[i*2-1] = stbi__div16(3*t0 + t1 + 8);
src/stb_image.h:3230:   out[w*2-1] = stbi__div4(t1+2);
src/stb_image.h:3252:   for (; i < ((w-1) & ~7); i += 8) {
src/stb_image.h:3255:      // this uses 3*x + y = 4*x + (y - x)
src/stb_image.h:3276:      // even pixels = 3*cur + prev = cur*4 + (prev - cur)
src/stb_image.h:3277:      // odd  pixels = 3*cur + next = cur*4 + (next - cur)
src/stb_image.h:3298:      // this uses 3*x + y = 4*x + (y - x)
src/stb_image.h:3316:      // even pixels = 3*cur + prev = cur*4 + (prev - cur)
src/stb_image.h:3317:      // odd  pixels = 3*cur + next = cur*4 + (next - cur)
src/stb_image.h:3343:      out[i*2-1] = stbi__div16(3*t0 + t1 + 8);
src/stb_image.h:3346:   out[w*2-1] = stbi__div4(t1+2);
src/stb_image.h:3356:   // resample with nearest-neighbor
src/stb_image.h:3365:// this is a reduced-precision calculation of YCbCr-to-RGB introduced
src/stb_image.h:3374:      int cr = pcr[i] - 128;
src/stb_image.h:3375:      int cb = pcb[i] - 128;
src/stb_image.h:3377:      g = y_fixed + (cr*-stbi__float2fixed(0.71414f)) + ((cb*-stbi__float2fixed(0.34414f)) & 0xffff0000);
src/stb_image.h:3403:      // this is a fairly straightforward implementation and not super-optimized.
src/stb_image.h:3404:      __m128i signflip  = _mm_set1_epi8(-0x80);
src/stb_image.h:3406:      __m128i cr_const1 = _mm_set1_epi16( - (short) ( 0.71414f*4096.0f+0.5f));
src/stb_image.h:3407:      __m128i cb_const0 = _mm_set1_epi16( - (short) ( 0.34414f*4096.0f+0.5f));
src/stb_image.h:3417:         __m128i cr_biased = _mm_xor_si128(cr_bytes, signflip); // -128
src/stb_image.h:3418:         __m128i cb_biased = _mm_xor_si128(cb_bytes, signflip); // -128
src/stb_image.h:3420:         // unpack to short (and left-shift cr, cb by 8)
src/stb_image.h:3462:      // this is a fairly straightforward implementation and not super-optimized.
src/stb_image.h:3465:      int16x8_t cr_const1 = vdupq_n_s16( - (short) ( 0.71414f*4096.0f+0.5f));
src/stb_image.h:3466:      int16x8_t cb_const0 = vdupq_n_s16( - (short) ( 0.34414f*4096.0f+0.5f));
src/stb_image.h:3508:      int cr = pcr[i] - 128;
src/stb_image.h:3509:      int cb = pcb[i] - 128;
src/stb_image.h:3511:      g = y_fixed + cr*-stbi__float2fixed(0.71414f) + ((cb*-stbi__float2fixed(0.34414f)) & 0xffff0000);
src/stb_image.h:3531:   j->idct_block_kernel = stbi__idct_block;
src/stb_image.h:3532:   j->YCbCr_to_RGB_kernel = stbi__YCbCr_to_RGB_row;
src/stb_image.h:3533:   j->resample_row_hv_2_kernel = stbi__resample_row_hv_2;
src/stb_image.h:3537:      j->idct_block_kernel = stbi__idct_simd;
src/stb_image.h:3538:      j->YCbCr_to_RGB_kernel = stbi__YCbCr_to_RGB_simd;
src/stb_image.h:3539:      j->resample_row_hv_2_kernel = stbi__resample_row_hv_2_simd;
src/stb_image.h:3544:   j->idct_block_kernel = stbi__idct_simd;
src/stb_image.h:3545:   j->YCbCr_to_RGB_kernel = stbi__YCbCr_to_RGB_simd;
src/stb_image.h:3546:   j->resample_row_hv_2_kernel = stbi__resample_row_hv_2_simd;
src/stb_image.h:3553:   stbi__free_jpeg_components(j, j->s->img_n, 0);
src/stb_image.h:3561:   int w_lores; // horizontal pixels pre-expansion
src/stb_image.h:3563:   int ypos;    // which pre-expansion row we're on
src/stb_image.h:3576:   z->s->img_n = 0; // make stbi__cleanup_jpeg safe
src/stb_image.h:3585:   n = req_comp ? req_comp : z->s->img_n >= 3 ? 3 : 1;
src/stb_image.h:3587:   is_rgb = z->s->img_n == 3 && (z->rgb == 3 || (z->app14_color_transform == 0 && !z->jfif));
src/stb_image.h:3589:   if (z->s->img_n == 3 && n < 3 && !is_rgb)
src/stb_image.h:3592:      decode_n = z->s->img_n;
src/stb_image.h:3594:   // resample and color-convert
src/stb_image.h:3608:         z->img_comp[k].linebuf = (stbi_uc *) stbi__malloc(z->s->img_x + 3);
src/stb_image.h:3609:         if (!z->img_comp[k].linebuf) { stbi__cleanup_jpeg(z); return stbi__errpuc("outofmem", "Out of memory"); }
src/stb_image.h:3611:         r->hs      = z->img_h_max / z->img_comp[k].h;
src/stb_image.h:3612:         r->vs      = z->img_v_max / z->img_comp[k].v;
src/stb_image.h:3613:         r->ystep   = r->vs >> 1;
src/stb_image.h:3614:         r->w_lores = (z->s->img_x + r->hs-1) / r->hs;
src/stb_image.h:3615:         r->ypos    = 0;
src/stb_image.h:3616:         r->line0   = r->line1 = z->img_comp[k].data;
src/stb_image.h:3618:         if      (r->hs == 1 && r->vs == 1) r->resample = resample_row_1;
src/stb_image.h:3619:         else if (r->hs == 1 && r->vs == 2) r->resample = stbi__resample_row_v_2;
src/stb_image.h:3620:         else if (r->hs == 2 && r->vs == 1) r->resample = stbi__resample_row_h_2;
src/stb_image.h:3621:         else if (r->hs == 2 && r->vs == 2) r->resample = z->resample_row_hv_2_kernel;
src/stb_image.h:3622:         else                               r->resample = stbi__resample_row_generic;
src/stb_image.h:3626:      output = (stbi_uc *) stbi__malloc_mad3(n, z->s->img_x, z->s->img_y, 1);
src/stb_image.h:3630:      for (j=0; j < z->s->img_y; ++j) {
src/stb_image.h:3631:         stbi_uc *out = output + n * z->s->img_x * j;
src/stb_image.h:3634:            int y_bot = r->ystep >= (r->vs >> 1);
src/stb_image.h:3635:            coutput[k] = r->resample(z->img_comp[k].linebuf,
src/stb_image.h:3636:                                     y_bot ? r->line1 : r->line0,
src/stb_image.h:3637:                                     y_bot ? r->line0 : r->line1,
src/stb_image.h:3638:                                     r->w_lores, r->hs);
src/stb_image.h:3639:            if (++r->ystep >= r->vs) {
src/stb_image.h:3640:               r->ystep = 0;
src/stb_image.h:3641:               r->line0 = r->line1;
src/stb_image.h:3642:               if (++r->ypos < z->img_comp[k].y)
src/stb_image.h:3643:                  r->line1 += z->img_comp[k].w2;
src/stb_image.h:3648:            if (z->s->img_n == 3) {
src/stb_image.h:3650:                  for (i=0; i < z->s->img_x; ++i) {
src/stb_image.h:3658:                  z->YCbCr_to_RGB_kernel(out, y, coutput[1], coutput[2], z->s->img_x, n);
src/stb_image.h:3660:            } else if (z->s->img_n == 4) {
src/stb_image.h:3661:               if (z->app14_color_transform == 0) { // CMYK
src/stb_image.h:3662:                  for (i=0; i < z->s->img_x; ++i) {
src/stb_image.h:3670:               } else if (z->app14_color_transform == 2) { // YCCK
src/stb_image.h:3671:                  z->YCbCr_to_RGB_kernel(out, y, coutput[1], coutput[2], z->s->img_x, n);
src/stb_image.h:3672:                  for (i=0; i < z->s->img_x; ++i) {
src/stb_image.h:3674:                     out[0] = stbi__blinn_8x8(255 - out[0], m);
src/stb_image.h:3675:                     out[1] = stbi__blinn_8x8(255 - out[1], m);
src/stb_image.h:3676:                     out[2] = stbi__blinn_8x8(255 - out[2], m);
src/stb_image.h:3680:                  z->YCbCr_to_RGB_kernel(out, y, coutput[1], coutput[2], z->s->img_x, n);
src/stb_image.h:3683:               for (i=0; i < z->s->img_x; ++i) {
src/stb_image.h:3691:                  for (i=0; i < z->s->img_x; ++i)
src/stb_image.h:3694:                  for (i=0; i < z->s->img_x; ++i, out += 2) {
src/stb_image.h:3699:            } else if (z->s->img_n == 4 && z->app14_color_transform == 0) {
src/stb_image.h:3700:               for (i=0; i < z->s->img_x; ++i) {
src/stb_image.h:3709:            } else if (z->s->img_n == 4 && z->app14_color_transform == 2) {
src/stb_image.h:3710:               for (i=0; i < z->s->img_x; ++i) {
src/stb_image.h:3711:                  out[0] = stbi__blinn_8x8(255 - coutput[0][i], coutput[3][i]);
src/stb_image.h:3718:                  for (i=0; i < z->s->img_x; ++i) out[i] = y[i];
src/stb_image.h:3720:                  for (i=0; i < z->s->img_x; ++i) *out++ = y[i], *out++ = 255;
src/stb_image.h:3725:      *out_x = z->s->img_x;
src/stb_image.h:3726:      *out_y = z->s->img_y;
src/stb_image.h:3727:      if (comp) *comp = z->s->img_n >= 3 ? 3 : 1; // report original components, not output
src/stb_image.h:3737:   j->s = s;
src/stb_image.h:3748:   j->s = s;
src/stb_image.h:3759:      stbi__rewind( j->s );
src/stb_image.h:3762:   if (x) *x = j->s->img_x;
src/stb_image.h:3763:   if (y) *y = j->s->img_y;
src/stb_image.h:3764:   if (comp) *comp = j->s->img_n >= 3 ? 3 : 1;
src/stb_image.h:3772:   j->s = s;
src/stb_image.h:3779:// public domain zlib decode    v0.2  Sean Barrett 2006-11-18
src/stb_image.h:3781://      - all input must be provided in an upfront buffer
src/stb_image.h:3782://      - all output is written to a single output buffer (can malloc/realloc)
src/stb_image.h:3784://      - fast huffman
src/stb_image.h:3788:// fast-way is faster to check than jpeg huffman, but slow way is slower
src/stb_image.h:3790:#define STBI__ZFAST_MASK  ((1 << STBI__ZFAST_BITS) - 1)
src/stb_image.h:3792:// zlib-style huffman encoding
src/stb_image.h:3818:   return stbi__bitreverse16(v) >> (16-bits);
src/stb_image.h:3828:   memset(z->fast, 0, sizeof(z->fast));
src/stb_image.h:3838:      z->firstcode[i] = (stbi__uint16) code;
src/stb_image.h:3839:      z->firstsymbol[i] = (stbi__uint16) k;
src/stb_image.h:3842:         if (code-1 >= (1 << i)) return stbi__err("bad codelengths","Corrupt PNG");
src/stb_image.h:3843:      z->maxcode[i] = code << (16-i); // preshift for inner loop
src/stb_image.h:3847:   z->maxcode[16] = 0x10000; // sentinel
src/stb_image.h:3851:         int c = next_code[s] - z->firstcode[s] + z->firstsymbol[s];
src/stb_image.h:3853:         z->size [c] = (stbi_uc     ) s;
src/stb_image.h:3854:         z->value[c] = (stbi__uint16) i;
src/stb_image.h:3858:               z->fast[j] = fastv;
src/stb_image.h:3868:// zlib-from-memory implementation for PNG reading
src/stb_image.h:3890:   if (z->zbuffer >= z->zbuffer_end) return 0;
src/stb_image.h:3891:   return *z->zbuffer++;
src/stb_image.h:3897:      STBI_ASSERT(z->code_buffer < (1U << z->num_bits));
src/stb_image.h:3898:      z->code_buffer |= (unsigned int) stbi__zget8(z) << z->num_bits;
src/stb_image.h:3899:      z->num_bits += 8;
src/stb_image.h:3900:   } while (z->num_bits <= 24);
src/stb_image.h:3906:   if (z->num_bits < n) stbi__fill_bits(z);
src/stb_image.h:3907:   k = z->code_buffer & ((1 << n) - 1);
src/stb_image.h:3908:   z->code_buffer >>= n;
src/stb_image.h:3909:   z->num_bits -= n;
src/stb_image.h:3918:   k = stbi__bit_reverse(a->code_buffer, 16);
src/stb_image.h:3920:      if (k < z->maxcode[s])
src/stb_image.h:3922:   if (s == 16) return -1; // invalid code!
src/stb_image.h:3924:   b = (k >> (16-s)) - z->firstcode[s] + z->firstsymbol[s];
src/stb_image.h:3925:   STBI_ASSERT(z->size[b] == s);
src/stb_image.h:3926:   a->code_buffer >>= s;
src/stb_image.h:3927:   a->num_bits -= s;
src/stb_image.h:3928:   return z->value[b];
src/stb_image.h:3934:   if (a->num_bits < 16) stbi__fill_bits(a);
src/stb_image.h:3935:   b = z->fast[a->code_buffer & STBI__ZFAST_MASK];
src/stb_image.h:3938:      a->code_buffer >>= s;
src/stb_image.h:3939:      a->num_bits -= s;
src/stb_image.h:3949:   z->zout = zout;
src/stb_image.h:3950:   if (!z->z_expandable) return stbi__err("output buffer limit","Corrupt PNG");
src/stb_image.h:3951:   cur   = (int) (z->zout     - z->zout_start);
src/stb_image.h:3952:   limit = old_limit = (int) (z->zout_end - z->zout_start);
src/stb_image.h:3955:   q = (char *) STBI_REALLOC_SIZED(z->zout_start, old_limit, limit);
src/stb_image.h:3958:   z->zout_start = q;
src/stb_image.h:3959:   z->zout       = q + cur;
src/stb_image.h:3960:   z->zout_end   = q + limit;
src/stb_image.h:3980:   char *zout = a->zout;
src/stb_image.h:3982:      int z = stbi__zhuffman_decode(a, &a->z_length);
src/stb_image.h:3985:         if (zout >= a->zout_end) {
src/stb_image.h:3987:            zout = a->zout;
src/stb_image.h:3994:            a->zout = zout;
src/stb_image.h:3997:         z -= 257;
src/stb_image.h:4000:         z = stbi__zhuffman_decode(a, &a->z_distance);
src/stb_image.h:4004:         if (zout - a->zout_start < dist) return stbi__err("bad dist","Corrupt PNG");
src/stb_image.h:4005:         if (zout + len > a->zout_end) {
src/stb_image.h:4007:            zout = a->zout;
src/stb_image.h:4009:         p = (stbi_uc *) (zout - dist);
src/stb_image.h:4012:            if (len) { do *zout++ = v; while (--len); }
src/stb_image.h:4014:            if (len) { do *zout++ = *p++; while (--len); }
src/stb_image.h:4051:            fill = lencodes[n-1];
src/stb_image.h:4058:         if (ntot - n < c) return stbi__err("bad codelengths", "Corrupt PNG");
src/stb_image.h:4064:   if (!stbi__zbuild_huffman(&a->z_length, lencodes, hlit)) return 0;
src/stb_image.h:4065:   if (!stbi__zbuild_huffman(&a->z_distance, lencodes+hlit, hdist)) return 0;
src/stb_image.h:4073:   if (a->num_bits & 7)
src/stb_image.h:4074:      stbi__zreceive(a, a->num_bits & 7); // discard
src/stb_image.h:4075:   // drain the bit-packed data into header
src/stb_image.h:4077:   while (a->num_bits > 0) {
src/stb_image.h:4078:      header[k++] = (stbi_uc) (a->code_buffer & 255); // suppress MSVC run-time check
src/stb_image.h:4079:      a->code_buffer >>= 8;
src/stb_image.h:4080:      a->num_bits -= 8;
src/stb_image.h:4082:   STBI_ASSERT(a->num_bits == 0);
src/stb_image.h:4089:   if (a->zbuffer + len > a->zbuffer_end) return stbi__err("read past buffer","Corrupt PNG");
src/stb_image.h:4090:   if (a->zout + len > a->zout_end)
src/stb_image.h:4091:      if (!stbi__zexpand(a, a->zout, len)) return 0;
src/stb_image.h:4092:   memcpy(a->zout, a->zbuffer, len);
src/stb_image.h:4093:   a->zbuffer += len;
src/stb_image.h:4094:   a->zout += len;
src/stb_image.h:4145:   a->num_bits = 0;
src/stb_image.h:4146:   a->code_buffer = 0;
src/stb_image.h:4157:            if (!stbi__zbuild_huffman(&a->z_length  , stbi__zdefault_length  , 288)) return 0;
src/stb_image.h:4158:            if (!stbi__zbuild_huffman(&a->z_distance, stbi__zdefault_distance,  32)) return 0;
src/stb_image.h:4170:   a->zout_start = obuf;
src/stb_image.h:4171:   a->zout       = obuf;
src/stb_image.h:4172:   a->zout_end   = obuf + olen;
src/stb_image.h:4173:   a->z_expandable = exp;
src/stb_image.h:4186:      if (outlen) *outlen = (int) (a.zout - a.zout_start);
src/stb_image.h:4207:      if (outlen) *outlen = (int) (a.zout - a.zout_start);
src/stb_image.h:4221:      return (int) (a.zout - a.zout_start);
src/stb_image.h:4223:      return -1;
src/stb_image.h:4234:      if (outlen) *outlen = (int) (a.zout - a.zout_start);
src/stb_image.h:4248:      return (int) (a.zout - a.zout_start);
src/stb_image.h:4250:      return -1;
src/stb_image.h:4254:// public domain "baseline" PNG decoder   v0.10  Sean Barrett 2006-11-18
src/stb_image.h:4256://      - only 8-bit samples
src/stb_image.h:4257://      - no CRC checking
src/stb_image.h:4258://      - allocates lots of intermediate memory
src/stb_image.h:4259://        - avoids problem of streaming data between subsystems
src/stb_image.h:4260://        - avoids explicit window management
src/stb_image.h:4262://      - uses stb_zlib, a PD zlib implementation with fast huffman decoding
src/stb_image.h:4318:   int p = a + b - c;
src/stb_image.h:4319:   int pa = abs(p-a);
src/stb_image.h:4320:   int pb = abs(p-b);
src/stb_image.h:4321:   int pc = abs(p-c);
src/stb_image.h:4329:// create the png data from post-deflated data
src/stb_image.h:4333:   stbi__context *s = a->s;
src/stb_image.h:4337:   int img_n = s->img_n; // copy it into a local for later
src/stb_image.h:4343:   STBI_ASSERT(out_n == s->img_n || out_n == s->img_n+1);
src/stb_image.h:4344:   a->out = (stbi_uc *) stbi__malloc_mad3(x, y, output_bytes, 0); // extra bytes to write off the end into
src/stb_image.h:4345:   if (!a->out) return stbi__err("outofmem", "Out of memory");
src/stb_image.h:4351:   // we used to check for exact match between raw_len and img_len on non-interlaced PNGs,
src/stb_image.h:4357:      stbi_uc *cur = a->out + stride*j;
src/stb_image.h:4366:         cur += x*out_n - img_width_bytes; // store output to the rightmost img_len bytes, so we can decode in place
src/stb_image.h:4370:      prior = cur - stride; // bugfix: need to compute this after 'cur +=' computation above
src/stb_image.h:4408:      // this is a little gross, so that we don't switch per-pixel or per-component
src/stb_image.h:4410:         int nk = (width - 1)*filter_bytes;
src/stb_image.h:4417:            STBI__CASE(STBI__F_sub)          { cur[k] = STBI__BYTECAST(raw[k] + cur[k-filter_bytes]); } break;
src/stb_image.h:4419:            STBI__CASE(STBI__F_avg)          { cur[k] = STBI__BYTECAST(raw[k] + ((prior[k] + cur[k-filter_bytes])>>1)); } break;
src/stb_image.h:4420:            STBI__CASE(STBI__F_paeth)        { cur[k] = STBI__BYTECAST(raw[k] + stbi__paeth(cur[k-filter_bytes],prior[k],prior[k-filter_bytes])); } break;
src/stb_image.h:4421:            STBI__CASE(STBI__F_avg_first)    { cur[k] = STBI__BYTECAST(raw[k] + (cur[k-filter_bytes] >> 1)); } break;
src/stb_image.h:4422:            STBI__CASE(STBI__F_paeth_first)  { cur[k] = STBI__BYTECAST(raw[k] + stbi__paeth(cur[k-filter_bytes],0,0)); } break;
src/stb_image.h:4430:                for (i=x-1; i >= 1; --i, cur[filter_bytes]=255,raw+=filter_bytes,cur+=output_bytes,prior+=output_bytes) \
src/stb_image.h:4434:            STBI__CASE(STBI__F_sub)          { cur[k] = STBI__BYTECAST(raw[k] + cur[k- output_bytes]); } break;
src/stb_image.h:4436:            STBI__CASE(STBI__F_avg)          { cur[k] = STBI__BYTECAST(raw[k] + ((prior[k] + cur[k- output_bytes])>>1)); } break;
src/stb_image.h:4437:            STBI__CASE(STBI__F_paeth)        { cur[k] = STBI__BYTECAST(raw[k] + stbi__paeth(cur[k- output_bytes],prior[k],prior[k- output_bytes])); } break;
src/stb_image.h:4438:            STBI__CASE(STBI__F_avg_first)    { cur[k] = STBI__BYTECAST(raw[k] + (cur[k- output_bytes] >> 1)); } break;
src/stb_image.h:4439:            STBI__CASE(STBI__F_paeth_first)  { cur[k] = STBI__BYTECAST(raw[k] + stbi__paeth(cur[k- output_bytes],0,0)); } break;
src/stb_image.h:4446:            cur = a->out + stride*j; // start at the beginning of the row again
src/stb_image.h:4459:         stbi_uc *cur = a->out + stride*j;
src/stb_image.h:4460:         stbi_uc *in  = a->out + stride*j + x*out_n - img_width_bytes;
src/stb_image.h:4461:         // unpack 1/2/4-bit into a 8-bit buffer. allows us to keep the common 8-bit path optimal at minimal cost for 1/2/4-bit
src/stb_image.h:4467:         // could also overwrite the next scanline. can it overwrite non-empty data
src/stb_image.h:4468:         // on the next scanline? yes, consider 1-pixel-wide scanlines with 1-bit-per-pixel.
src/stb_image.h:4472:            for (k=x*img_n; k >= 2; k-=2, ++in) {
src/stb_image.h:4478:            for (k=x*img_n; k >= 4; k-=4, ++in) {
src/stb_image.h:4488:            for (k=x*img_n; k >= 8; k-=8, ++in) {
src/stb_image.h:4509:            cur = a->out + stride*j;
src/stb_image.h:4511:               for (q=x-1; q >= 0; --q) {
src/stb_image.h:4517:               for (q=x-1; q >= 0; --q) {
src/stb_image.h:4527:      // force the image data from big-endian to platform-native.
src/stb_image.h:4530:      // per-line during decode if care is taken.
src/stb_image.h:4531:      stbi_uc *cur = a->out;
src/stb_image.h:4549:      return stbi__create_png_image_raw(a, image_data, image_data_len, out_n, a->s->img_x, a->s->img_y, depth, color);
src/stb_image.h:4551:   // de-interlacing
src/stb_image.h:4552:   final = (stbi_uc *) stbi__malloc_mad3(a->s->img_x, a->s->img_y, out_bytes, 0);
src/stb_image.h:4560:      x = (a->s->img_x - xorig[p] + xspc[p]-1) / xspc[p];
src/stb_image.h:4561:      y = (a->s->img_y - yorig[p] + yspc[p]-1) / yspc[p];
src/stb_image.h:4563:         stbi__uint32 img_len = ((((a->s->img_n * x * depth) + 7) >> 3) + 1) * y;
src/stb_image.h:4572:               memcpy(final + out_y*a->s->img_x*out_bytes + out_x*out_bytes,
src/stb_image.h:4573:                      a->out + (j*x+i)*out_bytes, out_bytes);
src/stb_image.h:4576:         STBI_FREE(a->out);
src/stb_image.h:4578:         image_data_len -= img_len;
src/stb_image.h:4581:   a->out = final;
src/stb_image.h:4588:   stbi__context *s = z->s;
src/stb_image.h:4589:   stbi__uint32 i, pixel_count = s->img_x * s->img_y;
src/stb_image.h:4590:   stbi_uc *p = z->out;
src/stb_image.h:4592:   // compute color-based transparency, assuming we've
src/stb_image.h:4613:   stbi__context *s = z->s;
src/stb_image.h:4614:   stbi__uint32 i, pixel_count = s->img_x * s->img_y;
src/stb_image.h:4615:   stbi__uint16 *p = (stbi__uint16*) z->out;
src/stb_image.h:4617:   // compute color-based transparency, assuming we've
src/stb_image.h:4638:   stbi__uint32 i, pixel_count = a->s->img_x * a->s->img_y;
src/stb_image.h:4639:   stbi_uc *p, *temp_out, *orig = a->out;
src/stb_image.h:4665:   STBI_FREE(a->out);
src/stb_image.h:4666:   a->out = temp_out;
src/stb_image.h:4688:   stbi__context *s = z->s;
src/stb_image.h:4689:   stbi__uint32 i, pixel_count = s->img_x * s->img_y;
src/stb_image.h:4690:   stbi_uc *p = z->out;
src/stb_image.h:4692:   if (s->img_out_n == 3) {  // convert bgr to rgb
src/stb_image.h:4700:      STBI_ASSERT(s->img_out_n == 4);
src/stb_image.h:4738:   stbi__context *s = z->s;
src/stb_image.h:4740:   z->expanded = NULL;
src/stb_image.h:4741:   z->idata = NULL;
src/stb_image.h:4742:   z->out = NULL;
src/stb_image.h:4760:            s->img_x = stbi__get32be(s); if (s->img_x > (1 << 24)) return stbi__err("too large","Very large image (corrupt?)");
src/stb_image.h:4761:            s->img_y = stbi__get32be(s); if (s->img_y > (1 << 24)) return stbi__err("too large","Very large image (corrupt?)");
src/stb_image.h:4762:            z->depth = stbi__get8(s);  if (z->depth != 1 && z->depth != 2 && z->depth != 4 && z->depth != 8 && z->depth != 16)  return stbi__err("1/2/4/8/16-bit only","PNG not supported: 1/2/4/8/16-bit only");
src/stb_image.h:4764:            if (color == 3 && z->depth == 16)                  return stbi__err("bad ctype","Corrupt PNG");
src/stb_image.h:4769:            if (!s->img_x || !s->img_y) return stbi__err("0-pixel image","Corrupt PNG");
src/stb_image.h:4771:               s->img_n = (color & 2 ? 3 : 1) + (color & 4 ? 1 : 0);
src/stb_image.h:4772:               if ((1 << 30) / s->img_x / s->img_n < s->img_y) return stbi__err("too large", "Image too large to decode");
src/stb_image.h:4777:               s->img_n = 1;
src/stb_image.h:4778:               if ((1 << 30) / s->img_x / 4 < s->img_y) return stbi__err("too large","Corrupt PNG");
src/stb_image.h:4800:            if (z->idata) return stbi__err("tRNS after IDAT","Corrupt PNG");
src/stb_image.h:4802:               if (scan == STBI__SCAN_header) { s->img_n = 4; return 1; }
src/stb_image.h:4809:               if (!(s->img_n & 1)) return stbi__err("tRNS with alpha","Corrupt PNG");
src/stb_image.h:4810:               if (c.length != (stbi__uint32) s->img_n*2) return stbi__err("bad tRNS len","Corrupt PNG");
src/stb_image.h:4812:               if (z->depth == 16) {
src/stb_image.h:4813:                  for (k = 0; k < s->img_n; ++k) tc16[k] = (stbi__uint16)stbi__get16be(s); // copy the values as-is
src/stb_image.h:4815:                  for (k = 0; k < s->img_n; ++k) tc[k] = (stbi_uc)(stbi__get16be(s) & 255) * stbi__depth_scale_table[z->depth]; // non 8-bit images will be larger
src/stb_image.h:4824:            if (scan == STBI__SCAN_header) { s->img_n = pal_img_n; return 1; }
src/stb_image.h:4833:               p = (stbi_uc *) STBI_REALLOC_SIZED(z->idata, idata_limit_old, idata_limit); if (p == NULL) return stbi__err("outofmem", "Out of memory");
src/stb_image.h:4834:               z->idata = p;
src/stb_image.h:4836:            if (!stbi__getn(s, z->idata+ioff,c.length)) return stbi__err("outofdata","Corrupt PNG");
src/stb_image.h:4845:            if (z->idata == NULL) return stbi__err("no IDAT","Corrupt PNG");
src/stb_image.h:4847:            bpl = (s->img_x * z->depth + 7) / 8; // bytes per line, per component
src/stb_image.h:4848:            raw_len = bpl * s->img_y * s->img_n /* pixels */ + s->img_y /* filter mode per row */;
src/stb_image.h:4849:            z->expanded = (stbi_uc *) stbi_zlib_decode_malloc_guesssize_headerflag((char *) z->idata, ioff, raw_len, (int *) &raw_len, !is_iphone);
src/stb_image.h:4850:            if (z->expanded == NULL) return 0; // zlib should set error
src/stb_image.h:4851:            STBI_FREE(z->idata); z->idata = NULL;
src/stb_image.h:4852:            if ((req_comp == s->img_n+1 && req_comp != 3 && !pal_img_n) || has_trans)
src/stb_image.h:4853:               s->img_out_n = s->img_n+1;
src/stb_image.h:4855:               s->img_out_n = s->img_n;
src/stb_image.h:4856:            if (!stbi__create_png_image(z, z->expanded, raw_len, s->img_out_n, z->depth, color, interlace)) return 0;
src/stb_image.h:4858:               if (z->depth == 16) {
src/stb_image.h:4859:                  if (!stbi__compute_transparency16(z, tc16, s->img_out_n)) return 0;
src/stb_image.h:4861:                  if (!stbi__compute_transparency(z, tc, s->img_out_n)) return 0;
src/stb_image.h:4864:            if (is_iphone && stbi__de_iphone_flag && s->img_out_n > 2)
src/stb_image.h:4868:               s->img_n = pal_img_n; // record the actual colors we had
src/stb_image.h:4869:               s->img_out_n = pal_img_n;
src/stb_image.h:4870:               if (req_comp >= 3) s->img_out_n = req_comp;
src/stb_image.h:4871:               if (!stbi__expand_png_palette(z, palette, pal_len, s->img_out_n))
src/stb_image.h:4874:               // non-paletted image with tRNS -> source image has (constant) alpha
src/stb_image.h:4875:               ++s->img_n;
src/stb_image.h:4877:            STBI_FREE(z->expanded); z->expanded = NULL;
src/stb_image.h:4908:      if (p->depth < 8)
src/stb_image.h:4909:         ri->bits_per_channel = 8;
src/stb_image.h:4911:         ri->bits_per_channel = p->depth;
src/stb_image.h:4912:      result = p->out;
src/stb_image.h:4913:      p->out = NULL;
src/stb_image.h:4914:      if (req_comp && req_comp != p->s->img_out_n) {
src/stb_image.h:4915:         if (ri->bits_per_channel == 8)
src/stb_image.h:4916:            result = stbi__convert_format((unsigned char *) result, p->s->img_out_n, req_comp, p->s->img_x, p->s->img_y);
src/stb_image.h:4918:            result = stbi__convert_format16((stbi__uint16 *) result, p->s->img_out_n, req_comp, p->s->img_x, p->s->img_y);
src/stb_image.h:4919:         p->s->img_out_n = req_comp;
src/stb_image.h:4922:      *x = p->s->img_x;
src/stb_image.h:4923:      *y = p->s->img_y;
src/stb_image.h:4924:      if (n) *n = p->s->img_n;
src/stb_image.h:4926:   STBI_FREE(p->out);      p->out      = NULL;
src/stb_image.h:4927:   STBI_FREE(p->expanded); p->expanded = NULL;
src/stb_image.h:4928:   STBI_FREE(p->idata);    p->idata    = NULL;
src/stb_image.h:4951:      stbi__rewind( p->s );
src/stb_image.h:4954:   if (x) *x = p->s->img_x;
src/stb_image.h:4955:   if (y) *y = p->s->img_y;
src/stb_image.h:4956:   if (comp) *comp = p->s->img_n;
src/stb_image.h:5011:   if (z == 0) return -1;
src/stb_image.h:5030:// extract an arbitrarily-aligned N-bit value (N=bits)
src/stb_image.h:5031:// from v, and then make it 8-bits long and fractionally
src/stb_image.h:5044:      v <<= -shift;
src/stb_image.h:5048:   v >>= (8-bits);
src/stb_image.h:5066:   info->offset = stbi__get32le(s);
src/stb_image.h:5067:   info->hsz = hsz = stbi__get32le(s);
src/stb_image.h:5068:   info->mr = info->mg = info->mb = info->ma = 0;
src/stb_image.h:5072:      s->img_x = stbi__get16le(s);
src/stb_image.h:5073:      s->img_y = stbi__get16le(s);
src/stb_image.h:5075:      s->img_x = stbi__get32le(s);
src/stb_image.h:5076:      s->img_y = stbi__get32le(s);
src/stb_image.h:5079:   info->bpp = stbi__get16le(s);
src/stb_image.h:5095:         if (info->bpp == 16 || info->bpp == 32) {
src/stb_image.h:5097:               if (info->bpp == 32) {
src/stb_image.h:5098:                  info->mr = 0xffu << 16;
src/stb_image.h:5099:                  info->mg = 0xffu <<  8;
src/stb_image.h:5100:                  info->mb = 0xffu <<  0;
src/stb_image.h:5101:                  info->ma = 0xffu << 24;
src/stb_image.h:5102:                  info->all_a = 0; // if all_a is 0 at end, then we loaded alpha channel but it was all 0
src/stb_image.h:5104:                  info->mr = 31u << 10;
src/stb_image.h:5105:                  info->mg = 31u <<  5;
src/stb_image.h:5106:                  info->mb = 31u <<  0;
src/stb_image.h:5109:               info->mr = stbi__get32le(s);
src/stb_image.h:5110:               info->mg = stbi__get32le(s);
src/stb_image.h:5111:               info->mb = stbi__get32le(s);
src/stb_image.h:5113:               if (info->mr == info->mg && info->mg == info->mb) {
src/stb_image.h:5124:         info->mr = stbi__get32le(s);
src/stb_image.h:5125:         info->mg = stbi__get32le(s);
src/stb_image.h:5126:         info->mb = stbi__get32le(s);
src/stb_image.h:5127:         info->ma = stbi__get32le(s);
src/stb_image.h:5157:   flip_vertically = ((int) s->img_y) > 0;
src/stb_image.h:5158:   s->img_y = abs((int) s->img_y);
src/stb_image.h:5168:         psize = (info.offset - 14 - 24) / 3;
src/stb_image.h:5171:         psize = (info.offset - 14 - info.hsz) >> 2;
src/stb_image.h:5174:   s->img_n = ma ? 4 : 3;
src/stb_image.h:5178:      target = s->img_n; // if they want monochrome, we'll post-convert
src/stb_image.h:5180:   // sanity-check size
src/stb_image.h:5181:   if (!stbi__mad3sizes_valid(target, s->img_x, s->img_y, 0))
src/stb_image.h:5184:   out = (stbi_uc *) stbi__malloc_mad3(target, s->img_x, s->img_y, 0);
src/stb_image.h:5196:      stbi__skip(s, info.offset - 14 - info.hsz - psize * (info.hsz == 12 ? 3 : 4));
src/stb_image.h:5197:      if (info.bpp == 1) width = (s->img_x + 7) >> 3;
src/stb_image.h:5198:      else if (info.bpp == 4) width = (s->img_x + 1) >> 1;
src/stb_image.h:5199:      else if (info.bpp == 8) width = s->img_x;
src/stb_image.h:5201:      pad = (-width)&3;
src/stb_image.h:5203:         for (j=0; j < (int) s->img_y; ++j) {
src/stb_image.h:5205:            for (i=0; i < (int) s->img_x; ++i) {
src/stb_image.h:5210:               if((--bit_offset) < 0) {
src/stb_image.h:5218:         for (j=0; j < (int) s->img_y; ++j) {
src/stb_image.h:5219:            for (i=0; i < (int) s->img_x; i += 2) {
src/stb_image.h:5229:               if (i+1 == (int) s->img_x) break;
src/stb_image.h:5243:      stbi__skip(s, info.offset - 14 - info.hsz);
src/stb_image.h:5244:      if (info.bpp == 24) width = 3 * s->img_x;
src/stb_image.h:5245:      else if (info.bpp == 16) width = 2*s->img_x;
src/stb_image.h:5247:      pad = (-width) & 3;
src/stb_image.h:5257:         rshift = stbi__high_bit(mr)-7; rcount = stbi__bitcount(mr);
src/stb_image.h:5258:         gshift = stbi__high_bit(mg)-7; gcount = stbi__bitcount(mg);
src/stb_image.h:5259:         bshift = stbi__high_bit(mb)-7; bcount = stbi__bitcount(mb);
src/stb_image.h:5260:         ashift = stbi__high_bit(ma)-7; acount = stbi__bitcount(ma);
src/stb_image.h:5262:      for (j=0; j < (int) s->img_y; ++j) {
src/stb_image.h:5264:            for (i=0; i < (int) s->img_x; ++i) {
src/stb_image.h:5276:            for (i=0; i < (int) s->img_x; ++i) {
src/stb_image.h:5293:      for (i=4*s->img_x*s->img_y-1; i >= 0; i -= 4)
src/stb_image.h:5298:      for (j=0; j < (int) s->img_y>>1; ++j) {
src/stb_image.h:5299:         stbi_uc *p1 = out +      j     *s->img_x*target;
src/stb_image.h:5300:         stbi_uc *p2 = out + (s->img_y-1-j)*s->img_x*target;
src/stb_image.h:5301:         for (i=0; i < (int) s->img_x*target; ++i) {
src/stb_image.h:5308:      out = stbi__convert_format(out, target, req_comp, s->img_x, s->img_y);
src/stb_image.h:5312:   *x = s->img_x;
src/stb_image.h:5313:   *y = s->img_y;
src/stb_image.h:5314:   if (comp) *comp = s->img_n;
src/stb_image.h:5319:// Targa Truevision - TGA
src/stb_image.h:5363:    } else { // "normal" image w/o colormap - only RGB or grey allowed, +/- RLE
src/stb_image.h:5366:            return 0; // only RGB or grey allowed, +/- RLE
src/stb_image.h:5419:      if ( (sz != 2) && (sz != 3) && (sz != 10) && (sz != 11) ) goto errorEnd; // only RGB or grey allowed, +/- RLE
src/stb_image.h:5450:   // (possibly if an alpha-bit is set in the "image descriptor byte")
src/stb_image.h:5472:   // int tga_alpha_bits = tga_inverted & 15; // the 4 lowest bits - unused (useless?)
src/stb_image.h:5486:      tga_image_type -= 8;
src/stb_image.h:5489:   tga_inverted = 1 - ((tga_inverted >> 5) & 1);
src/stb_image.h:5514:         int row = tga_inverted ? tga_height -i - 1 : i;
src/stb_image.h:5598:         --RLE_count;
src/stb_image.h:5606:            int index2 = (tga_height - 1 - j) * tga_width * tga_comp;
src/stb_image.h:5607:            for (i = tga_width * tga_comp; i > 0; --i)
src/stb_image.h:5624:   // swap RGB - if the source data was RGB16, it already is in the right order
src/stb_image.h:5651:// Photoshop PSD loader -- PD by Thatcher Ulrich, integration by Nicolas Schulz, tweaked by STB
src/stb_image.h:5666:   while ((nleft = pixelCount - count) > 0) {
src/stb_image.h:5669:         // No-op.
src/stb_image.h:5678:            len--;
src/stb_image.h:5682:         // Next -len+1 bytes in the dest are replicated from next source byte.
src/stb_image.h:5683:         // (Interpret len as a negative 8-bit int.)
src/stb_image.h:5684:         len = 257 - len;
src/stb_image.h:5691:            len--;
src/stb_image.h:5772:      ri->bits_per_channel = 16;
src/stb_image.h:5788:      //     Else if n is between -127 and -1 inclusive, copy the next byte -n+1 times.
src/stb_image.h:5792:      // The RLE-compressed data is preceeded by a 2-byte data count for each row in the data,
src/stb_image.h:5816:      // where each channel consists of an 8-bit (or 16-bit) value for each pixel in the image.
src/stb_image.h:5834:            if (ri->bits_per_channel == 16) {    // output bpc
src/stb_image.h:5854:      if (ri->bits_per_channel == 16) {
src/stb_image.h:5860:               float inv_a = 65535.0f * (1 - ra);
src/stb_image.h:5872:               float inv_a = 255.0f * (1 - ra);
src/stb_image.h:5883:      if (ri->bits_per_channel == 16)
src/stb_image.h:5976:      packet->size    = stbi__get8(s);
src/stb_image.h:5977:      packet->type    = stbi__get8(s);
src/stb_image.h:5978:      packet->channel = stbi__get8(s);
src/stb_image.h:5980:      act_comp |= packet->channel;
src/stb_image.h:5983:      if (packet->size != 8)  return stbi__errpuc("bad format","packet isn't 8bpp");
src/stb_image.h:5995:         switch (packet->type) {
src/stb_image.h:6003:                  if (!stbi__readval(s,packet->channel,dest))
src/stb_image.h:6021:                     if (!stbi__readval(s,packet->channel,value))  return 0;
src/stb_image.h:6024:                        stbi__copyval(packet->channel,dest,value);
src/stb_image.h:6025:                     left -= count;
src/stb_image.h:6042:                        count -= 127;
src/stb_image.h:6046:                     if (!stbi__readval(s,packet->channel,value))
src/stb_image.h:6050:                        stbi__copyval(packet->channel,dest,value);
src/stb_image.h:6056:                        if (!stbi__readval(s,packet->channel,dest))
src/stb_image.h:6059:                  left-=count;
src/stb_image.h:6115:// GIF loader -- public domain by Jean-Marc Lienher -- simplified/shrunk by stb
src/stb_image.h:6184:   g->w = stbi__get16le(s);
src/stb_image.h:6185:   g->h = stbi__get16le(s);
src/stb_image.h:6186:   g->flags = stbi__get8(s);
src/stb_image.h:6187:   g->bgindex = stbi__get8(s);
src/stb_image.h:6188:   g->ratio = stbi__get8(s);
src/stb_image.h:6189:   g->transparent = -1;
src/stb_image.h:6195:   if (g->flags & 0x80)
src/stb_image.h:6196:      stbi__gif_parse_colortable(s,g->pal, 2 << (g->flags & 7), -1);
src/stb_image.h:6209:   if (x) *x = g->w;
src/stb_image.h:6210:   if (y) *y = g->h;
src/stb_image.h:6220:   // recurse to decode the prefixes, since the linked-list is backwards,
src/stb_image.h:6222:   if (g->codes[code].prefix >= 0)
src/stb_image.h:6223:      stbi__out_gif_code(g, g->codes[code].prefix);
src/stb_image.h:6225:   if (g->cur_y >= g->max_y) return;
src/stb_image.h:6227:   idx = g->cur_x + g->cur_y; 
src/stb_image.h:6228:   p = &g->out[idx];
src/stb_image.h:6229:   g->history[idx / 4] = 1;  
src/stb_image.h:6231:   c = &g->color_table[g->codes[code].suffix * 4];
src/stb_image.h:6238:   g->cur_x += 4;
src/stb_image.h:6240:   if (g->cur_x >= g->max_x) {
src/stb_image.h:6241:      g->cur_x = g->start_x;
src/stb_image.h:6242:      g->cur_y += g->step;
src/stb_image.h:6244:      while (g->cur_y >= g->max_y && g->parse > 0) {
src/stb_image.h:6245:         g->step = (1 << g->parse) * g->line_size;
src/stb_image.h:6246:         g->cur_y = g->start_y + (g->step >> 1);
src/stb_image.h:6247:         --g->parse;
src/stb_image.h:6265:   codemask = (1 << codesize) - 1;
src/stb_image.h:6269:      g->codes[init_code].prefix = -1;
src/stb_image.h:6270:      g->codes[init_code].first = (stbi_uc) init_code;
src/stb_image.h:6271:      g->codes[init_code].suffix = (stbi_uc) init_code;
src/stb_image.h:6276:   oldcode = -1;
src/stb_image.h:6284:               return g->out;
src/stb_image.h:6286:         --len;
src/stb_image.h:6292:         valid_bits -= codesize;
src/stb_image.h:6293:         // @OPTIMIZE: is there some way we can accelerate the non-clear path?
src/stb_image.h:6296:            codemask = (1 << codesize) - 1;
src/stb_image.h:6298:            oldcode = -1;
src/stb_image.h:6304:            return g->out;
src/stb_image.h:6311:               p = &g->codes[avail++];
src/stb_image.h:6316:               p->prefix = (stbi__int16) oldcode;
src/stb_image.h:6317:               p->first = g->codes[oldcode].first;
src/stb_image.h:6318:               p->suffix = (code == avail) ? p->first : g->codes[code].first;
src/stb_image.h:6326:               codemask = (1 << codesize) - 1;
src/stb_image.h:6346:   // on first frame, any non-written pixels get the background colour (non-transparent)
src/stb_image.h:6348:   if (g->out == 0) {
src/stb_image.h:6350:      g->out = (stbi_uc *) stbi__malloc(4 * g->w * g->h);
src/stb_image.h:6351:      g->background = (stbi_uc *) stbi__malloc(4 * g->w * g->h); 
src/stb_image.h:6352:      g->history = (stbi_uc *) stbi__malloc(g->w * g->h); 
src/stb_image.h:6353:      if (g->out == 0)                      return stbi__errpuc("outofmem", "Out of memory");
src/stb_image.h:6355:      // image is treated as "tranparent" at the start - ie, nothing overwrites the current background; 
src/stb_image.h:6358:      memset( g->out, 0x00, 4 * g->w * g->h ); 
src/stb_image.h:6359:      memset( g->background, 0x00, 4 * g->w * g->h ); // state of the background (starts transparent)
src/stb_image.h:6360:      memset( g->history, 0x00, g->w * g->h );        // pixels that were affected previous frame
src/stb_image.h:6363:      // second frame - how do we dispoase of the previous one?
src/stb_image.h:6364:      dispose = (g->eflags & 0x1C) >> 2; 
src/stb_image.h:6365:      pcount = g->w * g->h; 
src/stb_image.h:6373:            if (g->history[pi]) {
src/stb_image.h:6374:               memcpy( &g->out[pi * 4], &two_back[pi * 4], 4 ); 
src/stb_image.h:6380:            if (g->history[pi]) {
src/stb_image.h:6381:               memcpy( &g->out[pi * 4], &g->background[pi * 4], 4 ); 
src/stb_image.h:6385:         // This is a non-disposal case eithe way, so just 
src/stb_image.h:6392:      memcpy( g->background, g->out, 4 * g->w * g->h ); 
src/stb_image.h:6396:   memset( g->history, 0x00, g->w * g->h );        // pixels that were affected previous frame
src/stb_image.h:6410:            if (((x + w) > (g->w)) || ((y + h) > (g->h)))
src/stb_image.h:6413:            g->line_size = g->w * 4;
src/stb_image.h:6414:            g->start_x = x * 4;
src/stb_image.h:6415:            g->start_y = y * g->line_size;
src/stb_image.h:6416:            g->max_x   = g->start_x + w * 4;
src/stb_image.h:6417:            g->max_y   = g->start_y + h * g->line_size;
src/stb_image.h:6418:            g->cur_x   = g->start_x;
src/stb_image.h:6419:            g->cur_y   = g->start_y;
src/stb_image.h:6421:            g->lflags = stbi__get8(s);
src/stb_image.h:6423:            if (g->lflags & 0x40) {
src/stb_image.h:6424:               g->step = 8 * g->line_size; // first interlaced spacing
src/stb_image.h:6425:               g->parse = 3;
src/stb_image.h:6427:               g->step = g->line_size;
src/stb_image.h:6428:               g->parse = 0;
src/stb_image.h:6431:            if (g->lflags & 0x80) {
src/stb_image.h:6432:               stbi__gif_parse_colortable(s,g->lpal, 2 << (g->lflags & 7), g->eflags & 0x01 ? g->transparent : -1);
src/stb_image.h:6433:               g->color_table = (stbi_uc *) g->lpal;
src/stb_image.h:6434:            } else if (g->flags & 0x80) {
src/stb_image.h:6435:               g->color_table = (stbi_uc *) g->pal;
src/stb_image.h:6443:            pcount = g->w * g->h; 
src/stb_image.h:6444:            if (first_frame && (g->bgindex > 0)) {
src/stb_image.h:6447:                  if (g->history[pi] == 0) {
src/stb_image.h:6448:                     g->pal[g->bgindex][3] = 255; // just in case it was made transparent, undo that; It will be reset next frame if need be; 
src/stb_image.h:6449:                     memcpy( &g->out[pi * 4], &g->pal[g->bgindex], 4 ); 
src/stb_image.h:6464:                  g->eflags = stbi__get8(s);
src/stb_image.h:6465:                  g->delay = 10 * stbi__get16le(s); // delay - 1/100th of a second, saving as 1/1000ths.
src/stb_image.h:6468:                  if (g->transparent >= 0) {
src/stb_image.h:6469:                     g->pal[g->transparent][3] = 255; 
src/stb_image.h:6471:                  if (g->eflags & 0x01) {
src/stb_image.h:6472:                     g->transparent = stbi__get8(s);
src/stb_image.h:6473:                     if (g->transparent >= 0) {
src/stb_image.h:6474:                        g->pal[g->transparent][3] = 0; 
src/stb_image.h:6479:                     g->transparent = -1; 
src/stb_image.h:6536:            memcpy( out + ((layers - 1) * stride), u, stride ); 
src/stb_image.h:6538:               two_back = out - 2 * stride; 
src/stb_image.h:6542:               (*delays)[layers - 1U] = g.delay; 
src/stb_image.h:6629:      if (len == STBI__HDR_BUFLEN-1) {
src/stb_image.h:6647:      f1 = (float) ldexp(1.0f, input[3] - (int)(128 + 8));
src/stb_image.h:6692:      if (strcmp(token, "FORMAT=32-bit_rle_rgbe") == 0) valid = 1;
src/stb_image.h:6700:   if (strncmp(token, "-Y ", 3))  return stbi__errpf("unsupported data layout", "Unsupported HDR format");
src/stb_image.h:6735:      // Read RLE-encoded data
src/stb_image.h:6743:            // not run-length encoded, so we have to actually use THIS data as a decoded
src/stb_image.h:6744:            // pixel (note this can't be a valid pixel--one of RGB must be >= 128)
src/stb_image.h:6770:            while ((nleft = width - i) > 0) {
src/stb_image.h:6775:                  count -= 128;
src/stb_image.h:6816:      if (strcmp(token, "FORMAT=32-bit_rle_rgbe") == 0) valid = 1;
src/stb_image.h:6824:   if (strncmp(token, "-Y ", 3)) {
src/stb_image.h:6853:   if (x) *x = s->img_x;
src/stb_image.h:6854:   if (y) *y = s->img_y;
src/stb_image.h:6962:      packet->size    = stbi__get8(s);
src/stb_image.h:6963:      packet->type    = stbi__get8(s);
src/stb_image.h:6964:      packet->channel = stbi__get8(s);
src/stb_image.h:6965:      act_comp |= packet->channel;
src/stb_image.h:6971:      if (packet->size != 8) {
src/stb_image.h:6993://    Does not support 16-bit-per-channel
src/stb_image.h:7014:   if (!stbi__pnm_info(s, (int *)&s->img_x, (int *)&s->img_y, (int *)&s->img_n))
src/stb_image.h:7017:   *x = s->img_x;
src/stb_image.h:7018:   *y = s->img_y;
src/stb_image.h:7019:   if (comp) *comp = s->img_n;
src/stb_image.h:7021:   if (!stbi__mad3sizes_valid(s->img_n, s->img_x, s->img_y, 0))
src/stb_image.h:7024:   out = (stbi_uc *) stbi__malloc_mad3(s->img_n, s->img_x, s->img_y, 0);
src/stb_image.h:7026:   stbi__getn(s, out, s->img_n * s->img_x * s->img_y);
src/stb_image.h:7028:   if (req_comp && req_comp != s->img_n) {
src/stb_image.h:7029:      out = stbi__convert_format(out, s->img_n, req_comp, s->img_x, s->img_y);
src/stb_image.h:7064:      value = value*10 + (*c - '0');
src/stb_image.h:7090:   *comp = (t == '6') ? 3 : 1;  // '5' is 1-component .pgm; '6' is 3-component .ppm
src/stb_image.h:7104:      return stbi__err("max value > 255", "PPM image not 8-bit");
src/stb_image.h:7241:      2.19  (2018-02-11) fix warning
src/stb_image.h:7242:      2.18  (2018-01-30) fix warnings
src/stb_image.h:7243:      2.17  (2018-01-29) change sbti__shiftsigned to avoid clang -O2 bug
src/stb_image.h:7244:                         1-bit BMP
src/stb_image.h:7247:      2.16  (2017-07-23) all functions have 16-bit variants;
src/stb_image.h:7254:      2.15  (2017-03-18) fix png-1,2,4 bug; now all Imagenet JPGs decode;
src/stb_image.h:7255:                         warning fixes; disable run-time SSE detection on gcc;
src/stb_image.h:7257:                         thread-safe initialization of zlib tables
src/stb_image.h:7258:      2.14  (2017-03-03) remove deprecated STBI_JPEG_OLD; fixes for Imagenet JPGs
src/stb_image.h:7259:      2.13  (2016-11-29) add 16-bit API, only supported for PNG right now
src/stb_image.h:7260:      2.12  (2016-04-02) fix typo in 2.11 PSD fix that caused crashes
src/stb_image.h:7261:      2.11  (2016-04-02) allocate large structures on the stack
src/stb_image.h:7264:                         re-enable SSE2 in non-gcc 64-bit
src/stb_image.h:7265:                         support RGB-formatted JPEG
src/stb_image.h:7266:                         read 16-bit PNGs (only as 8-bit)
src/stb_image.h:7267:      2.10  (2016-01-22) avoid warning introduced in 2.09 by STBI_REALLOC_SIZED
src/stb_image.h:7268:      2.09  (2016-01-16) allow comments in PNM files
src/stb_image.h:7269:                         16-bit-per-pixel TGA (not bit-per-component)
src/stb_image.h:7274:      2.08  (2015-09-13) fix to 2.07 cleanup, reading RGB PSD as RGBA
src/stb_image.h:7275:      2.07  (2015-09-13) fix compiler warnings
src/stb_image.h:7277:                         limited 16-bpc PSD support
src/stb_image.h:7280:      2.06  (2015-04-19) fix bug where PSD returns wrong '*comp' value
src/stb_image.h:7281:      2.05  (2015-04-19) fix bug in progressive JPEG handling, fix warning
src/stb_image.h:7282:      2.04  (2015-04-15) try to re-enable SIMD on MinGW 64-bit
src/stb_image.h:7283:      2.03  (2015-04-12) extra corruption checking (mmozeiko)
src/stb_image.h:7286:      2.02  (2015-01-19) fix incorrect assert, fix warning
src/stb_image.h:7287:      2.01  (2015-01-17) fix various warnings; suppress SIMD on gcc 32-bit without -msse2
src/stb_image.h:7288:      2.00b (2014-12-25) fix STBI_MALLOC in progressive JPEG
src/stb_image.h:7289:      2.00  (2014-12-25) optimize JPG, including x86 SSE2 & NEON SIMD (ryg)
src/stb_image.h:7293:                         GIF bugfix -- seemingly never worked
src/stb_image.h:7295:      1.48  (2014-12-14) fix incorrectly-named assert()
src/stb_image.h:7296:      1.47  (2014-12-14) 1/2/4-bit PNG support, both direct and paletted (Omar Cornut & stb)
src/stb_image.h:7298:                         fix bug in interlaced PNG with user-specified channel count (stb)
src/stb_image.h:7299:      1.46  (2014-08-26)
src/stb_image.h:7300:              fix broken tRNS chunk (colorkey-style transparency) in non-paletted PNG
src/stb_image.h:7301:      1.45  (2014-08-16)
src/stb_image.h:7302:              fix MSVC-ARM internal compiler error by wrapping malloc
src/stb_image.h:7303:      1.44  (2014-08-07)
src/stb_image.h:7305:      1.43  (2014-07-15)
src/stb_image.h:7306:              fix MSVC-only compiler problem in code changed in 1.42
src/stb_image.h:7307:      1.42  (2014-07-09)
src/stb_image.h:7311:      1.41  (2014-06-25)
src/stb_image.h:7313:      1.40  (2014-06-22)
src/stb_image.h:7314:              fix gcc struct-initialization warning
src/stb_image.h:7315:      1.39  (2014-06-15)
src/stb_image.h:7319:      1.38  (2014-06-06)
src/stb_image.h:7322:      1.37  (2014-06-04)
src/stb_image.h:7324:      1.36  (2014-06-03)
src/stb_image.h:7325:              convert to header file single-file library
src/stb_image.h:7326:              if de-iphone isn't set, load iphone images color-swapped instead of returning NULL
src/stb_image.h:7327:      1.35  (2014-05-27)
src/stb_image.h:7331:              fix broken non-easy path for 32-bit BMP (possibly never used)
src/stb_image.h:7335:      1.33  (2011-07-14)
src/stb_image.h:7336:              make stbi_is_hdr work in STBI_NO_HDR (as specified), minor compiler-friendly improvements
src/stb_image.h:7337:      1.32  (2011-07-13)
src/stb_image.h:7339:      1.31  (2011-06-20)
src/stb_image.h:7341:      1.30  (2011-06-11)
src/stb_image.h:7343:              removed deprecated format-specific test/load functions
src/stb_image.h:7344:              removed support for installable file formats (stbi_loader) -- would have been broken for IO callbacks anyway
src/stb_image.h:7346:              fix inefficiency in decoding 32-bit BMP (David Woo)
src/stb_image.h:7347:      1.29  (2010-08-16)
src/stb_image.h:7349:      1.28  (2010-08-01)
src/stb_image.h:7351:      1.27  (2010-08-01)
src/stb_image.h:7352:              cast-to-stbi_uc to fix warnings
src/stb_image.h:7353:      1.26  (2010-07-24)
src/stb_image.h:7355:      1.25  (2010-07-17)
src/stb_image.h:7357:      1.24  (2010-07-12)
src/stb_image.h:7358:              perf improvements reading from files on platforms with lock-heavy fgetc()
src/stb_image.h:7360:              deprecated type-specific functions so we'll get feedback if they're needed
src/stb_image.h:7363:      1.22  (2010-07-10)
src/stb_image.h:7366:              GIF support from Jean-Marc Lienher
src/stb_image.h:7367:              iPhone PNG-extensions from James Brown
src/stb_image.h:7368:              warning-fixes from Nicolas Schulz and Janez Zemva (i.stbi__err. Janez (U+017D)emva)
src/stb_image.h:7372:      1.18  (2008-08-02)
src/stb_image.h:7375:      1.16    major bugfix - stbi__convert_format converted one too many pixels
src/stb_image.h:7378:              header-file-only version (#define STBI_HEADER_FILE_ONLY before including)
src/stb_image.h:7382:      1.10    Fixes for 64-bit (don't use "unsigned long")
src/stb_image.h:7384:      1.09    Fix format-conversion for PSD code (bad global variables!)
src/stb_image.h:7392:      1.01    fix bug: possible bug in handling right-side up bmps... not sure
src/stb_image.h:7398:      0.96    fix detection of invalid v value - particleman@mollyrocket forum
src/stb_image.h:7402:      0.92    read 4,8,16,24,32-bit BMP files of several formats
src/stb_image.h:7403:      0.91    output 24-bit Windows 3.0 BMP files
src/stb_image.h:7407:      0.59    fix warnings: merge Dave Moore's -Wall fixes
src/stb_image.h:7413:      0.53    fix bug in png 3->4; speedup png decoding
src/stb_image.h:7415:      0.51    obey req_comp requests, 1-component jpegs return as 1-component,
src/stb_image.h:7417:      0.50  (2006-11-19)
src/stb_image.h:7423:------------------------------------------------------------------------------
src/stb_image.h:7424:This software is available under 2 licenses -- choose whichever you prefer.
src/stb_image.h:7425:------------------------------------------------------------------------------
src/stb_image.h:7426:ALTERNATIVE A - MIT License
src/stb_image.h:7443:------------------------------------------------------------------------------
src/stb_image.h:7444:ALTERNATIVE B - Public Domain (www.unlicense.org)
src/stb_image.h:7448:commercial or non-commercial, and by any means.
src/stb_image.h:7461:------------------------------------------------------------------------------
src/cuda.c:79:    size_t k = (n - 1) / BLOCK + 1;
src/cuda.c:85:        y = (n - 1) / (x * BLOCK) + 1;
src/cuda.c:261:    axpy_cpu(n, -1, x, 1, tmp, 1);
src/iseg_layer.c:60:    l->w = w;
src/iseg_layer.c:61:    l->h = h;
src/iseg_layer.c:63:    l->outputs = h*w*l->c;
src/iseg_layer.c:64:    l->inputs = l->outputs;
src/iseg_layer.c:66:    l->output = realloc(l->output, l->batch*l->outputs*sizeof(float));
src/iseg_layer.c:67:    l->delta = realloc(l->delta, l->batch*l->outputs*sizeof(float));
src/iseg_layer.c:70:    cuda_free(l->delta_gpu);
src/iseg_layer.c:71:    cuda_free(l->output_gpu);
src/iseg_layer.c:73:    l->delta_gpu =     cuda_make_array(l->delta, l->batch*l->outputs);
src/iseg_layer.c:74:    l->output_gpu =    cuda_make_array(l->output, l->batch*l->outputs);
src/iseg_layer.c:99:                l.delta[index] = 0 - l.output[index];
src/iseg_layer.c:107:                l.delta[index] = .1 * (0 - l.output[index]);
src/iseg_layer.c:123:                    l.delta[index] = v - l.output[index];
src/iseg_layer.c:141:                        sum += pow(l.sums[i][z]/l.counts[i] - l.output[index], 2);
src/iseg_layer.c:174:                            float diff = l.sums[j][z] - l.output[index];
src/iseg_layer.c:175:                            if (j == i) l.delta[index] +=   diff < 0? -.1 : .1;
src/iseg_layer.c:176:                            else        l.delta[index] += -(diff < 0? -.1 : .1);
src/iseg_layer.c:192:    printf("took %lf sec\n", what_time_is_it_now() - time);
src/activation_kernels.cu:14:    if(x > 1) return .001f*(x-1.f) + 1.f;
src/activation_kernels.cu:25:    if (x < -1) return -1;
src/activation_kernels.cu:30:__device__ float logistic_activate_kernel(float x){return 1.f/(1.f + expf(-x));}
src/activation_kernels.cu:31:__device__ float loggy_activate_kernel(float x){return 2.f/(1.f + expf(-x)) - 1;}
src/activation_kernels.cu:33:__device__ float elu_activate_kernel(float x){return (x >= 0)*x + (x < 0)*(expf(x)-1);}
src/activation_kernels.cu:34:__device__ float selu_activate_kernel(float x){return (x >= 0)*1.0507f*x + (x < 0)*1.0507f*1.6732f*(expf(x)-1);}
src/activation_kernels.cu:38:__device__ float tanh_activate_kernel(float x){return (2.f/(1 + expf(-2*x)) - 1);}
src/activation_kernels.cu:41:    if(x < -4) return .01f * (x + 4);
src/activation_kernels.cu:42:    if(x > 4)  return .01f * (x - 4) + 1;
src/activation_kernels.cu:49:    else return (x - n) + floorf(x/2);
src/activation_kernels.cu:55:    if (x > -1 && x < 1) return 1;
src/activation_kernels.cu:59:__device__ float logistic_gradient_kernel(float x){return (1-x)*x;}
src/activation_kernels.cu:63:    return 2*(1-y)*y;
src/activation_kernels.cu:71:__device__ float tanh_gradient_kernel(float x){return 1-x*x;}
src/image.c:22:    ratio -= i;
src/image.c:23:    float r = (1-ratio) * colors[i][c] + ratio*colors[j][c];
src/image.c:57:    if(x >= m.w) x = m.w-1;
src/image.c:59:    if(y >= m.h) y = m.h-1;
src/image.c:81:    float dx = x - ix;
src/image.c:82:    float dy = y - iy;
src/image.c:84:    float val = (1-dy) * (1-dx) * get_pixel_extend(im, ix, iy, c) + 
src/image.c:85:        dy     * (1-dx) * get_pixel_extend(im, ix, iy+1, c) + 
src/image.c:86:        (1-dy) *   dx   * get_pixel_extend(im, ix+1, iy, c) +
src/image.c:113:                float val = get_pixel_extend(a, x - border, y - border, k);
src/image.c:114:                if(x - border < 0 || x - border >= a.w || y - border < 0 || y - border >= a.h) val = 1;
src/image.c:139:        image n = tile_images(label, l, -size - 1 + (size+1)/2);
src/image.c:153:    if (r - h >= 0) r = r - h;
src/image.c:171:    if(x1 >= a.w) x1 = a.w-1;
src/image.c:173:    if(x2 >= a.w) x2 = a.w-1;
src/image.c:176:    if(y1 >= a.h) y1 = a.h-1;
src/image.c:178:    if(y2 >= a.h) y2 = a.h-1;
src/image.c:206:        draw_box(a, x1+i, y1+i, x2-i, y2-i, r, g, b);
src/image.c:212:    int left  = (bbox.x-bbox.w/2)*a.w;
src/image.c:214:    int top   = (bbox.y-bbox.h/2)*a.h;
src/image.c:219:        draw_box(a, left+i, top+i, right-i, bot-i, r, g, b);
src/image.c:245:        int class = -1;
src/image.c:283:            int left  = (b.x-b.w/2.)*im.w;
src/image.c:285:            int top   = (b.y-b.h/2.)*im.h;
src/image.c:289:            if(right > im.w-1) right = im.w-1;
src/image.c:291:            if(bot > im.h-1) bot = im.h-1;
src/image.c:318:        for(n = 0; n < im.w-1; ++n){
src/image.c:337:                for(y = 0; y < (n-1)/2 + 1; ++y){
src/image.c:339:                    im.data[y + im.w*(x + im.h*c)] = im.data[n-1-x + im.w*(y + im.h*c)];
src/image.c:340:                    im.data[n-1-x + im.w*(y + im.h*c)] = im.data[n-1-y + im.w*(n-1-x + im.h*c)];
src/image.c:341:                    im.data[n-1-y + im.w*(n-1-x + im.h*c)] = im.data[x + im.w*(n-1-y + im.h*c)];
src/image.c:342:                    im.data[x + im.w*(n-1-y + im.h*c)] = temp;
src/image.c:356:                int flip = (a.w - j - 1) + a.w*(i + a.h*(k));
src/image.c:371:            dist.data[j] += pow(a.data[i*a.h*a.w+j]-b.data[i*a.h*a.w+j],2);
src/image.c:383:    float max_dist = sqrt((-source.w/2. + .5)*(-source.w/2. + .5));
src/image.c:387:                float dist = sqrt((x - source.w/2. + .5)*(x - source.w/2. + .5) + (y - source.h/2. + .5)*(y - source.h/2. + .5));
src/image.c:388:                float alpha = (1 - dist/max_dist);
src/image.c:392:                float val = alpha*v1 + (1-alpha)*v2;
src/image.c:444:    h = (h+border)*source.c - border;
src/image.c:469:    float max = -999999;
src/image.c:476:    if(max - min < .000000001){
src/image.c:481:        p.data[i] = (p.data[i] - min)/(max-min);
src/image.c:500:        if(max[i] - min[i] < .000000001){
src/image.c:507:            p.data[i+j*p.h*p.w] = (p.data[i+j*p.h*p.w] - min[j])/(max[j]-min[j]);
src/image.c:545:    return -1;
src/image.c:584:        sprintf(buff, "%s - Layer %d", name, i);
src/image.c:651:    image c = crop_image(im, (im.w - m) / 2, (im.h - m)/2, m, m);
src/image.c:666:                float rx = cos(rad)*((x - w/2.)/s*aspect + dx/s*aspect) - sin(rad)*((y - h/2.)/s + dy/s) + cx;
src/image.c:667:                float ry = sin(rad)*((x - w/2.)/s*aspect + dx/s*aspect) + cos(rad)*((y - h/2.)/s + dy/s) + cy;
src/image.c:685:                float rx = cos(rad)*(x-cx) - sin(rad)*(y-cy) + cx;
src/image.c:686:                float ry = sin(rad)*(x-cx) + cos(rad)*(y-cy) + cy;
src/image.c:723:                r = constrain_int(r, 0, im.h-1);
src/image.c:724:                c = constrain_int(c, 0, im.w-1);
src/image.c:770:    int shift = best_3d_shift_r(a, b, -a.h/100, a.h/100);
src/image.c:774:    image c2 = crop_image(b, -10, shift, b.w, b.h);
src/image.c:781:        shift = -shift;
src/image.c:808:    embed_image(resized, boxed, (w-new_w)/2, (h-new_h)/2); 
src/image.c:828:    embed_image(resized, boxed, (w-new_w)/2, (h-new_h)/2); 
src/image.c:867:    int dx = rand_int(0, im.w - w);
src/image.c:868:    int dy = rand_int(0, im.h - h);
src/image.c:881:    float rad = rand_uniform(-angle, angle) * TWO_PI / 360.;
src/image.c:883:    float dx = (im.w*scale/aspect - w) / 2.;
src/image.c:884:    float dy = (im.h*scale - w) / 2.;
src/image.c:887:    dx = rand_uniform(-dx, dx);
src/image.c:888:    dy = rand_uniform(-dy, dy);
src/image.c:930:            g = y + -.39465*u + -.58060*v;
src/image.c:953:            u = -.14713*r + -.28886*g + .436*b;
src/image.c:954:            v = .615*r + -.51499*g + -.10001*b;
src/image.c:977:            float delta = max - min;
src/image.c:985:                    h = (g - b) / delta;
src/image.c:987:                    h = 2 + (b - r) / delta;
src/image.c:989:                    h = 4 + (r - g) / delta;
src/image.c:1017:                f = h - index;
src/image.c:1018:                p = v*(1-s);
src/image.c:1019:                q = v*(1-s*f);
src/image.c:1020:                t = v*(1-s*(1-f));
src/image.c:1095:                    (1 - alpha)* get_pixel(back, i, j, k);
src/image.c:1152:        if (im.data[i] > 1) im.data[i] -= 1;
src/image.c:1175:        if (im.data[i] > 1) im.data[i] -= 1;
src/image.c:1184:    float dhue = rand_uniform(-hue, hue);
src/image.c:1204:    float w_scale = (float)(im.w - 1) / (w - 1);
src/image.c:1205:    float h_scale = (float)(im.h - 1) / (h - 1);
src/image.c:1210:                if(c == w-1 || im.w == 1){
src/image.c:1211:                    val = get_pixel(im, im.w-1, r, k);
src/image.c:1215:                    float dx = sx - ix;
src/image.c:1216:                    val = (1 - dx) * get_pixel(im, ix, r, k) + dx * get_pixel(im, ix+1, r, k);
src/image.c:1226:            float dy = sy - iy;
src/image.c:1228:                float val = (1-dy) * get_pixel(part, c, iy, k);
src/image.c:1231:            if(r == h-1 || im.h == 1) continue;
src/image.c:1256:    distort_image(c2, -.1, .66666, .66666);
src/image.c:1282:        float dhue = rand_uniform(-hue, hue);
src/image.c:1370:    h = (ims[0].h + border) * n - border;
src/image.c:1373:        w = (w+border)*c - border;
src/image.c:1406:    w = (ims[0].w + border) * n - border;
src/image.c:1409:        h = (h+border)*c - border;
src/gemm.c:23:                    C[i*ldc+j] -= B[k*ldb+j];
src/gemm.c:58:    printf("Matrix Multiplication %dx%d * %dx%d, TA=%d, TB=%d: %lf ms\n",m,k,k,n, TA, TB, (float)(end-start)/CLOCKS_PER_SEC);
src/gemm.c:219:    printf("Matrix Multiplication %dx%d * %dx%d, TA=%d, TB=%d: %lf s\n",m,k,k,n, TA, TB, (float)(end-start)/CLOCKS_PER_SEC);
src/gemm.c:249:    double seconds = sec(end-start);
src/gemm.c:288:        sse += pow(c[i]-c_gpu[i], 2);
src/blas_kernels.cu:23:    dim3 dimGrid((size-1)/BLOCK + 1, n, batch);
src/blas_kernels.cu:33:        dim3 dimGrid((size-1)/BLOCK + 1, n, batch);
src/blas_kernels.cu:172:            delta[i1] += - scale * sum * output[i2] / norm;
src/blas_kernels.cu:173:            delta[i2] += - scale * sum * output[i1] / norm;
src/blas_kernels.cu:191:    float mhat = m[index] / (1.f - powf(B1, t));
src/blas_kernels.cu:192:    float vhat = v[index] / (1.f - powf(B2, t));
src/blas_kernels.cu:207:    axpy_gpu(n, -decay*batch, w, 1, d, 1);
src/blas_kernels.cu:209:    axpy_gpu(n, (1-B1), d, 1, m, 1);
src/blas_kernels.cu:211:    axpy_gpu(n, (1-B2), d, 1, v, 1);
src/blas_kernels.cu:223:    x[index] = (x[index] - mean[f])/(sqrtf(variance[f] + .00001f));
src/blas_kernels.cu:232:    delta[index] = delta[index] * 1.f/(sqrtf(variance[f] + .00001f)) + variance_delta[f] * 2.f * (x[index] - mean[f]) / (spatial * batch) + mean_delta[f]/(spatial*batch);
src/blas_kernels.cu:251:            variance_delta[i] += delta[index]*(x[index] - mean[i]);
src/blas_kernels.cu:254:    variance_delta[i] *= -.5f * powf(variance[i] + .00001f, (float)(-3.f/2.f));
src/blas_kernels.cu:293:        mean_delta[filter] *= (-1.f/sqrtf(variance[filter] + .00001f));
src/blas_kernels.cu:312:            local[id] += (i+id < spatial) ? delta[index]*(x[index] - mean[filter]) : 0;
src/blas_kernels.cu:323:        variance_delta[filter] *= -.5f * powf(variance[filter] + .00001f, (float)(-3.f/2.f));
src/blas_kernels.cu:340:    mean_delta[i] *= (-1.f/sqrtf(variance[i] + .00001f));
src/blas_kernels.cu:379:    float scale = 1.f/(batch * spatial - 1);
src/blas_kernels.cu:387:            variance[i] += powf((x[index] - mean[i]), 2);
src/blas_kernels.cu:446:    if(i < N) X[i*INCX] = fminf(ALPHA, fmaxf(-ALPHA, X[i*INCX]));
src/blas_kernels.cu:523:        dx[index] = (1 - x[index]) / sum;
src/blas_kernels.cu:578:            local[id] += (i+id < spatial) ? powf((x[index] - mean[filter]), 2) : 0;
src/blas_kernels.cu:589:        variance[filter] /= (spatial * batch - 1);
src/blas_kernels.cu:828:        float diff = truth[i] - pred[i];
src/blas_kernels.cu:835:            error[i] = 2*abs_val - 1;
src/blas_kernels.cu:836:            delta[i] = (diff > 0) ? 1 : -1;
src/blas_kernels.cu:853:        error[i] = (t) ? -log(p) : 0;
src/blas_kernels.cu:854:        delta[i] = t-p;
src/blas_kernels.cu:870:        error[i] = -t*log(p+.0000001) - (1-t)*log(1-p+.0000001);
src/blas_kernels.cu:871:        delta[i] = t-p;
src/blas_kernels.cu:885:        float diff = truth[i] - pred[i];
src/blas_kernels.cu:901:        float diff = truth[i] - pred[i];
src/blas_kernels.cu:903:        delta[i] = (diff > 0) ? 1 : -1;
src/blas_kernels.cu:917:        error[i] = truth[i] ? -pred[i] : pred[i];
src/blas_kernels.cu:918:        delta[i] = (truth[i] > 0) ? 1 : -1;
src/blas_kernels.cu:935:        c[i] = s[i]*a[i] + (1-s[i])*(b ? b[i] : 0);
src/blas_kernels.cu:948:            if(Y) Y[b*NY + j - NX] += OUT[i];
src/blas_kernels.cu:968:            OUT[i] = Y[b*NY + j - NX];
src/blas_kernels.cu:990:        if(db) db[i] += dc[i] * (1-s[i]);
src/blas_kernels.cu:991:        ds[i] += dc[i] * (a[i] - b[i]);
src/blas_kernels.cu:1020:    float largest = -INFINITY;
src/blas_kernels.cu:1026:        float e = expf(input[i*stride]/temp - largest/temp);
src/thpool.c:125:	thpool_p->num_threads_alive = 0;
src/thpool.c:126:	thpool_p->num_threads_working = 0;
src/thpool.c:129:	if (jobqueue_init(&thpool_p->jobqueue) == -1)
src/thpool.c:137:	thpool_p->threads = (struct thread **)malloc(num_threads * sizeof(struct thread *));
src/thpool.c:138:	if (thpool_p->threads == NULL)
src/thpool.c:141:		jobqueue_destroy(&thpool_p->jobqueue);
src/thpool.c:146:	pthread_mutex_init(&(thpool_p->thcount_lock), NULL);
src/thpool.c:147:	pthread_cond_init(&thpool_p->threads_all_idle, NULL);
src/thpool.c:157:			thread_init(thpool_p, &thpool_p->threads[n], H_th + M_th + n);
src/thpool.c:160:			thread_init(thpool_p, &thpool_p->threads[n], H_th + n);
src/thpool.c:163:			thread_init(thpool_p, &thpool_p->threads[n], n);
src/thpool.c:166:		thread_init(thpool_p, &thpool_p->threads[n], n);
src/thpool.c:170:		if(n == (num_threads-1)){
src/thpool.c:172:		thpool_p->threads[n]->flag = 1;
src/thpool.c:176:			thpool_p->threads[n]->flag = 0;
src/thpool.c:182:		CPU_SET(n % 8, &cpuset); //only this thread has the affinity for the 'n'-th CPU
src/thpool.c:183:		pthread_setaffinity_np(thpool_p->threads[n]->pthread, sizeof(cpu_set_t), &cpuset);
src/thpool.c:191:	while (thpool_p->num_threads_alive != num_threads)
src/thpool.c:206:		return -1;
src/thpool.c:210:	newjob->function = function_p;
src/thpool.c:211:	newjob->arg = arg_p;
src/thpool.c:212:	newjob->flag = 1;
src/thpool.c:213:	thpool_p->pri = ((th_arg *)arg_p)->pri;
src/thpool.c:216:	jobqueue_push(&thpool_p->jobqueue, newjob);
src/thpool.c:223:	pthread_mutex_lock(&thpool_p->thcount_lock);
src/thpool.c:224:	while (thpool_p->jobqueue.len || thpool_p->num_threads_working)
src/thpool.c:226:		pthread_cond_wait(&thpool_p->threads_all_idle, &thpool_p->thcount_lock);
src/thpool.c:228:	pthread_mutex_unlock(&thpool_p->thcount_lock);
src/thpool.c:238:	volatile int threads_total = thpool_p->num_threads_alive;
src/thpool.c:248:	while (tpassed < TIMEOUT && thpool_p->num_threads_alive)
src/thpool.c:250:		bsem_post_all(thpool_p->jobqueue.has_jobs);
src/thpool.c:256:	while (thpool_p->num_threads_alive)
src/thpool.c:259:		bsem_post_all(thpool_p->jobqueue.has_jobs);
src/thpool.c:264:	jobqueue_destroy(&thpool_p->jobqueue);
src/thpool.c:269:		thread_destroy(thpool_p->threads[n]);
src/thpool.c:271:	free(thpool_p->threads);
src/thpool.c:279:	for (n = 0; n < thpool_p->num_threads_alive; n++)
src/thpool.c:281:		pthread_kill(thpool_p->threads[n]->pthread, SIGUSR1);
src/thpool.c:298:	return thpool_p->num_threads_working;
src/thpool.c:307: * @return 0 on success, -1 otherwise.
src/thpool.c:316:		return -1;
src/thpool.c:319:	(*thread_p)->thpool_p = thpool_p;
src/thpool.c:320:	(*thread_p)->id = id;
src/thpool.c:322:	pthread_create(&(*thread_p)->pthread, NULL, (void *)thread_do, (*thread_p));
src/thpool.c:323:	pthread_detach((*thread_p)->pthread);
src/thpool.c:351:	sprintf(thread_name, "thread-pool-%d", thread_p->id);
src/thpool.c:363:	thpool_ *thpool_p = thread_p->thpool_p;
src/thpool.c:370:	if (sigaction(SIGUSR1, &act, NULL) == -1)
src/thpool.c:376:	pthread_mutex_lock(&thpool_p->thcount_lock);
src/thpool.c:377:	thpool_p->num_threads_alive += 1;
src/thpool.c:378:	pthread_mutex_unlock(&thpool_p->thcount_lock);
src/thpool.c:383:		my_pri = thpool_p->pri;
src/thpool.c:385:		if(thpool_p->jobqueue.front != NULL && my_pri != NULL){
src/thpool.c:387:			    if(strcmp(my_pri, "M") == 0 && H_thpool->jobqueue.front == NULL){
src/thpool.c:390:			    else if(strcmp(my_pri, "L") == 0 && H_thpool->jobqueue.front == NULL && M_thpool->jobqueue.front == NULL){
src/thpool.c:404:		if (thread_p->id == 0 && thpool_p->jobqueue.len == 0)
src/thpool.c:408:		if (thpool_p->jobqueue.front != NULL)
src/thpool.c:410:			if (thread_p->id == 0 && ((th_arg *)thpool_p->jobqueue.front->arg)->type == 0)
src/thpool.c:412:				//fprintf(stderr, " [%d - %d]  id = 0 && conv \n", ((th_arg*)thpool_p->jobqueue.front->arg)->id, ((th_arg*)thpool_p->jobqueue.front->arg)->n);
src/thpool.c:417:		bsem_wait(thpool_p->jobqueue.has_jobs);
src/thpool.c:421:			pthread_mutex_lock(&thpool_p->thcount_lock);
src/thpool.c:422:			thpool_p->num_threads_working++;
src/thpool.c:423:			pthread_mutex_unlock(&thpool_p->thcount_lock);
src/thpool.c:430:			job *job_p = jobqueue_pull(&thpool_p->jobqueue);
src/thpool.c:433:				func_buff = job_p->function;
src/thpool.c:434:				arg_buff = job_p->arg;
src/thpool.c:435:				((th_arg *)arg_buff)->flag = thread_p->flag;
src/thpool.c:436:				func_buff(arg_buff, thread_p->id);
src/thpool.c:442:			job *job_p = jobqueue_pull(&thpool_p->jobqueue);
src/thpool.c:445:				func_buff = job_p->function;
src/thpool.c:446:				arg_buff = job_p->arg;
src/thpool.c:447:				((th_arg *)arg_buff)->flag = thread_p->flag;
src/thpool.c:452:			pthread_mutex_lock(&thpool_p->thcount_lock);
src/thpool.c:453:			thpool_p->num_threads_working--;
src/thpool.c:454:			if (!thpool_p->num_threads_working)
src/thpool.c:456:				pthread_cond_signal(&thpool_p->threads_all_idle);
src/thpool.c:458:			pthread_mutex_unlock(&thpool_p->thcount_lock);
src/thpool.c:461:	pthread_mutex_lock(&thpool_p->thcount_lock);
src/thpool.c:462:	thpool_p->num_threads_alive--;
src/thpool.c:463:	pthread_mutex_unlock(&thpool_p->thcount_lock);
src/thpool.c:479:	jobqueue_p->len = 0;
src/thpool.c:480:	jobqueue_p->front = NULL;
src/thpool.c:481:	jobqueue_p->rear = NULL;
src/thpool.c:483:	jobqueue_p->has_jobs = (struct bsem *)malloc(sizeof(struct bsem));
src/thpool.c:484:	if (jobqueue_p->has_jobs == NULL)
src/thpool.c:486:		return -1;
src/thpool.c:489:	pthread_mutex_init(&(jobqueue_p->rwmutex), NULL);
src/thpool.c:490:	bsem_init(jobqueue_p->has_jobs, 0);
src/thpool.c:499:	while (jobqueue_p->len)
src/thpool.c:504:	jobqueue_p->front = NULL;
src/thpool.c:505:	jobqueue_p->rear = NULL;
src/thpool.c:506:	bsem_reset(jobqueue_p->has_jobs);
src/thpool.c:507:	jobqueue_p->len = 0;
src/thpool.c:514:	pthread_mutex_lock(&jobqueue_p->rwmutex);
src/thpool.c:515:	newjob->prev = NULL;
src/thpool.c:517:	switch (jobqueue_p->len)
src/thpool.c:521:		jobqueue_p->front = newjob;
src/thpool.c:522:		jobqueue_p->rear = newjob;
src/thpool.c:526:		jobqueue_p->rear->prev = newjob;
src/thpool.c:527:		jobqueue_p->rear = newjob;
src/thpool.c:529:	jobqueue_p->len++;
src/thpool.c:531:	bsem_post(jobqueue_p->has_jobs);
src/thpool.c:532:	pthread_mutex_unlock(&jobqueue_p->rwmutex);
src/thpool.c:539:	pthread_mutex_lock(&jobqueue_p->rwmutex);
src/thpool.c:540:	job *job_p = jobqueue_p->front;
src/thpool.c:542:	switch (jobqueue_p->len)
src/thpool.c:549:		jobqueue_p->front = NULL;
src/thpool.c:550:		jobqueue_p->rear = NULL;
src/thpool.c:551:		jobqueue_p->len = 0;
src/thpool.c:555:		jobqueue_p->front = job_p->prev;
src/thpool.c:556:		jobqueue_p->len--;
src/thpool.c:557:		/* more than one job in queue -> post it */
src/thpool.c:558:		bsem_post(jobqueue_p->has_jobs);
src/thpool.c:561:	pthread_mutex_unlock(&jobqueue_p->rwmutex);
src/thpool.c:569:	free(jobqueue_p->has_jobs);
src/thpool.c:582:	pthread_mutex_init(&(bsem_p->mutex), NULL);
src/thpool.c:583:	pthread_cond_init(&(bsem_p->cond), NULL);
src/thpool.c:584:	bsem_p->v = value;
src/thpool.c:596:	pthread_mutex_lock(&bsem_p->mutex);
src/thpool.c:597:	bsem_p->v = 1;
src/thpool.c:598:	pthread_cond_signal(&bsem_p->cond);
src/thpool.c:599:	pthread_mutex_unlock(&bsem_p->mutex);
src/thpool.c:605:	pthread_mutex_lock(&bsem_p->mutex);
src/thpool.c:606:	bsem_p->v = 1;
src/thpool.c:607:	pthread_cond_broadcast(&bsem_p->cond);
src/thpool.c:608:	pthread_mutex_unlock(&bsem_p->mutex);
src/thpool.c:614:	pthread_mutex_lock(&bsem_p->mutex);
src/thpool.c:615:	while (bsem_p->v != 1)
src/thpool.c:617:		pthread_cond_wait(&bsem_p->cond, &bsem_p->mutex);
src/thpool.c:619:	bsem_p->v = 0;
src/thpool.c:620:	pthread_mutex_unlock(&bsem_p->mutex);
src/thpool.h:56:								  * @return 0 on successs, -1 otherwise.
src/thpool.h:63:		    * Will wait for all jobs - both queued and currently running to finish.
src/thpool.h:67:			    * Smart polling is used in wait. The polling is initially 0 - meaning that
src/convolutional_kernels.cu:20:    binary[i] = (x[i] >= 0) ? 1 : -1;
src/convolutional_kernels.cu:49:        binary[i*size + s] = (input[i*size + s] > 0) ? mean : -mean;
src/convolutional_kernels.cu:71:        binary[f*size + i] = (weights[f*size + i] > 0) ? mean : -mean;
src/convolutional_kernels.cu:174:    network net = input->net;
src/convolutional_kernels.cu:175:    layer l = input->layer;
src/convolutional_kernels.cu:209:        id = THREAD_NUM_POOL-1;
src/convolutional_kernels.cu:326:    int w_offset = -(size/2.f);
src/convolutional_kernels.cu:327:    int h_offset = -(size/2.f);
src/convolutional_kernels.cu:338:            delta[out_index] += valid ? rate*(x[index] - x[out_index]) : 0;
src/convolutional_kernels.cu:521:        axpy_gpu(l.nweights, -decay*batch, l.weights_gpu, 1, l.weight_updates_gpu, 1);
src/activation_layer.c:55:    network net= input->net;
src/activation_layer.c:56:    layer l = input->layer;
src/activation_layer.c:83:    network net= input->net;
src/activation_layer.c:84:    layer l = input->layer;
src/lstm_layer.c:15:    int num = l->outputs*l->batch*steps;
src/lstm_layer.c:16:    l->output += num;
src/lstm_layer.c:17:    l->delta += num;
src/lstm_layer.c:18:    l->x += num;
src/lstm_layer.c:19:    l->x_norm += num;
src/lstm_layer.c:22:    l->output_gpu += num;
src/lstm_layer.c:23:    l->delta_gpu += num;
src/lstm_layer.c:24:    l->x_gpu += num;
src/lstm_layer.c:25:    l->x_norm_gpu += num;
src/lstm_layer.c:42:    l.uf->batch = batch;
src/lstm_layer.c:47:    l.ui->batch = batch;
src/lstm_layer.c:52:    l.ug->batch = batch;
src/lstm_layer.c:57:    l.uo->batch = batch;
src/lstm_layer.c:62:    l.wf->batch = batch;
src/lstm_layer.c:67:    l.wi->batch = batch;
src/lstm_layer.c:72:    l.wg->batch = batch;
src/lstm_layer.c:77:    l.wo->batch = batch;
src/lstm_layer.c:128:        cudnnSetTensor4dDescriptor(l.wf->dstTensorDesc, CUDNN_TENSOR_NCHW, CUDNN_DATA_FLOAT, batch, l.wf->out_c, l.wf->out_h, l.wf->out_w); 
src/lstm_layer.c:129:        cudnnSetTensor4dDescriptor(l.wi->dstTensorDesc, CUDNN_TENSOR_NCHW, CUDNN_DATA_FLOAT, batch, l.wi->out_c, l.wi->out_h, l.wi->out_w); 
src/lstm_layer.c:130:        cudnnSetTensor4dDescriptor(l.wg->dstTensorDesc, CUDNN_TENSOR_NCHW, CUDNN_DATA_FLOAT, batch, l.wg->out_c, l.wg->out_h, l.wg->out_w); 
src/lstm_layer.c:131:        cudnnSetTensor4dDescriptor(l.wo->dstTensorDesc, CUDNN_TENSOR_NCHW, CUDNN_DATA_FLOAT, batch, l.wo->out_c, l.wo->out_h, l.wo->out_w); 
src/lstm_layer.c:133:        cudnnSetTensor4dDescriptor(l.uf->dstTensorDesc, CUDNN_TENSOR_NCHW, CUDNN_DATA_FLOAT, batch, l.uf->out_c, l.uf->out_h, l.uf->out_w); 
src/lstm_layer.c:134:        cudnnSetTensor4dDescriptor(l.ui->dstTensorDesc, CUDNN_TENSOR_NCHW, CUDNN_DATA_FLOAT, batch, l.ui->out_c, l.ui->out_h, l.ui->out_w); 
src/lstm_layer.c:135:        cudnnSetTensor4dDescriptor(l.ug->dstTensorDesc, CUDNN_TENSOR_NCHW, CUDNN_DATA_FLOAT, batch, l.ug->out_c, l.ug->out_h, l.ug->out_w); 
src/lstm_layer.c:136:        cudnnSetTensor4dDescriptor(l.uo->dstTensorDesc, CUDNN_TENSOR_NCHW, CUDNN_DATA_FLOAT, batch, l.uo->out_c, l.uo->out_h, l.uo->out_w); 
src/lstm_layer.c:257:    increment_layer(&wf, l.steps - 1);
src/lstm_layer.c:258:    increment_layer(&wi, l.steps - 1);
src/lstm_layer.c:259:    increment_layer(&wg, l.steps - 1);
src/lstm_layer.c:260:    increment_layer(&wo, l.steps - 1);
src/lstm_layer.c:262:    increment_layer(&uf, l.steps - 1);
src/lstm_layer.c:263:    increment_layer(&ui, l.steps - 1);
src/lstm_layer.c:264:    increment_layer(&ug, l.steps - 1);
src/lstm_layer.c:265:    increment_layer(&uo, l.steps - 1);
src/lstm_layer.c:267:    state.input += l.inputs*l.batch*(l.steps - 1);
src/lstm_layer.c:268:    if (state.delta) state.delta += l.inputs*l.batch*(l.steps - 1);
src/lstm_layer.c:270:    l.output += l.outputs*l.batch*(l.steps - 1);
src/lstm_layer.c:271:    l.cell_cpu += l.outputs*l.batch*(l.steps - 1);
src/lstm_layer.c:272:    l.delta += l.outputs*l.batch*(l.steps - 1);
src/lstm_layer.c:274:    for (i = l.steps - 1; i >= 0; --i) {
src/lstm_layer.c:275:        if (i != 0) copy_cpu(l.outputs*l.batch, l.cell_cpu - l.outputs*l.batch, 1, l.prev_cell_cpu, 1);
src/lstm_layer.c:277:        if (i != 0) copy_cpu(l.outputs*l.batch, l.output - l.outputs*l.batch, 1, l.prev_state_cpu, 1);
src/lstm_layer.c:280:        l.dh_cpu = (i == 0) ? 0 : l.delta - l.outputs*l.batch;
src/lstm_layer.c:367:        state.input -= l.inputs*l.batch;
src/lstm_layer.c:368:        if (state.delta) state.delta -= l.inputs*l.batch;
src/lstm_layer.c:369:        l.output -= l.outputs*l.batch;
src/lstm_layer.c:370:        l.cell_cpu -= l.outputs*l.batch;
src/lstm_layer.c:371:        l.delta -= l.outputs*l.batch;
src/lstm_layer.c:373:        increment_layer(&wf, -1);
src/lstm_layer.c:374:        increment_layer(&wi, -1);
src/lstm_layer.c:375:        increment_layer(&wg, -1);
src/lstm_layer.c:376:        increment_layer(&wo, -1);
src/lstm_layer.c:378:        increment_layer(&uf, -1);
src/lstm_layer.c:379:        increment_layer(&ui, -1);
src/lstm_layer.c:380:        increment_layer(&ug, -1);
src/lstm_layer.c:381:        increment_layer(&uo, -1);
src/lstm_layer.c:499:    increment_layer(&wf, l.steps - 1);
src/lstm_layer.c:500:    increment_layer(&wi, l.steps - 1);
src/lstm_layer.c:501:    increment_layer(&wg, l.steps - 1);
src/lstm_layer.c:502:    increment_layer(&wo, l.steps - 1);
src/lstm_layer.c:504:    increment_layer(&uf, l.steps - 1);
src/lstm_layer.c:505:    increment_layer(&ui, l.steps - 1);
src/lstm_layer.c:506:    increment_layer(&ug, l.steps - 1);
src/lstm_layer.c:507:    increment_layer(&uo, l.steps - 1);
src/lstm_layer.c:509:    state.input_gpu += l.inputs*l.batch*(l.steps - 1);
src/lstm_layer.c:510:    if (state.delta_gpu) state.delta_gpu += l.inputs*l.batch*(l.steps - 1);
src/lstm_layer.c:512:    l.output_gpu += l.outputs*l.batch*(l.steps - 1);
src/lstm_layer.c:513:    l.cell_gpu += l.outputs*l.batch*(l.steps - 1);
src/lstm_layer.c:514:    l.delta_gpu += l.outputs*l.batch*(l.steps - 1);
src/lstm_layer.c:516:    for (i = l.steps - 1; i >= 0; --i) {
src/lstm_layer.c:517:        if (i != 0) copy_gpu(l.outputs*l.batch, l.cell_gpu - l.outputs*l.batch, 1, l.prev_cell_gpu, 1);
src/lstm_layer.c:519:        if (i != 0) copy_gpu(l.outputs*l.batch, l.output_gpu - l.outputs*l.batch, 1, l.prev_state_gpu, 1);
src/lstm_layer.c:522:        l.dh_gpu = (i == 0) ? 0 : l.delta_gpu - l.outputs*l.batch;
src/lstm_layer.c:609:        state.input_gpu -= l.inputs*l.batch;
src/lstm_layer.c:610:        if (state.delta_gpu) state.delta_gpu -= l.inputs*l.batch;
src/lstm_layer.c:611:        l.output_gpu -= l.outputs*l.batch;
src/lstm_layer.c:612:        l.cell_gpu -= l.outputs*l.batch;
src/lstm_layer.c:613:        l.delta_gpu -= l.outputs*l.batch;
src/lstm_layer.c:615:        increment_layer(&wf, -1);
src/lstm_layer.c:616:        increment_layer(&wi, -1);
src/lstm_layer.c:617:        increment_layer(&wg, -1);
src/lstm_layer.c:618:        increment_layer(&wo, -1);
src/lstm_layer.c:620:        increment_layer(&uf, -1);
src/lstm_layer.c:621:        increment_layer(&ui, -1);
src/lstm_layer.c:622:        increment_layer(&ug, -1);
src/lstm_layer.c:623:        increment_layer(&uo, -1);
src/deconvolutional_kernels.cu:126:        axpy_gpu(l.nweights, -decay*batch, l.weights_gpu, 1, l.weight_updates_gpu, 1);
src/deconvolutional_layer.c:21:    float center = (l.size-1) / 2.;
src/deconvolutional_layer.c:25:                float val = (1 - fabs(i - center)) * (1 - fabs(j - center));
src/deconvolutional_layer.c:67:    l.out_h = (l.h - 1) * l.stride + l.size - 2*l.pad;
src/deconvolutional_layer.c:68:    l.out_w = (l.w - 1) * l.stride + l.size - 2*l.pad;
src/deconvolutional_layer.c:163:    fprintf(stderr, "deconv%5d %2d x%2d /%2d  %4d x%4d x%4d   ->  %4d x%4d x%4d\n", n, size, size, stride, w, h, c, l.out_w, l.out_h, l.out_c);
src/deconvolutional_layer.c:176:        l.biases[i] -= l.rolling_mean[i] * scale;
src/deconvolutional_layer.c:185:    l->h = h;
src/deconvolutional_layer.c:186:    l->w = w;
src/deconvolutional_layer.c:187:    l->out_h = (l->h - 1) * l->stride + l->size - 2*l->pad;
src/deconvolutional_layer.c:188:    l->out_w = (l->w - 1) * l->stride + l->size - 2*l->pad;
src/deconvolutional_layer.c:190:    l->outputs = l->out_h * l->out_w * l->out_c;
src/deconvolutional_layer.c:191:    l->inputs = l->w * l->h * l->c;
src/deconvolutional_layer.c:193:    l->output = realloc(l->output, l->batch*l->outputs*sizeof(float));
src/deconvolutional_layer.c:194:    l->delta  = realloc(l->delta,  l->batch*l->outputs*sizeof(float));
src/deconvolutional_layer.c:195:    if(l->batch_normalize){
src/deconvolutional_layer.c:196:        l->x = realloc(l->x, l->batch*l->outputs*sizeof(float));
src/deconvolutional_layer.c:197:        l->x_norm  = realloc(l->x_norm, l->batch*l->outputs*sizeof(float));
src/deconvolutional_layer.c:201:    cuda_free(l->delta_gpu);
src/deconvolutional_layer.c:202:    cuda_free(l->output_gpu);
src/deconvolutional_layer.c:204:    l->delta_gpu =  cuda_make_array(l->delta,  l->batch*l->outputs);
src/deconvolutional_layer.c:205:    l->output_gpu = cuda_make_array(l->output, l->batch*l->outputs);
src/deconvolutional_layer.c:207:    if(l->batch_normalize){
src/deconvolutional_layer.c:208:        cuda_free(l->x_gpu);
src/deconvolutional_layer.c:209:        cuda_free(l->x_norm_gpu);
src/deconvolutional_layer.c:211:        l->x_gpu = cuda_make_array(l->output, l->batch*l->outputs);
src/deconvolutional_layer.c:212:        l->x_norm_gpu = cuda_make_array(l->output, l->batch*l->outputs);
src/deconvolutional_layer.c:215:        cudnnSetTensor4dDescriptor(l->dstTensorDesc, CUDNN_TENSOR_NCHW, CUDNN_DATA_FLOAT, l->batch, l->out_c, l->out_h, l->out_w); 
src/deconvolutional_layer.c:216:        cudnnSetTensor4dDescriptor(l->normTensorDesc, CUDNN_TENSOR_NCHW, CUDNN_DATA_FLOAT, 1, l->out_c, 1, 1); 
src/deconvolutional_layer.c:219:    l->workspace_size = get_workspace_size(*l);
src/deconvolutional_layer.c:306:    axpy_cpu(size, -decay*batch, l.weights, 1, l.weight_updates, 1);
src/parser.c:91:    free(s->type);
src/parser.c:92:    node *n = s->options->front;
src/parser.c:94:        kvp *pair = (kvp *)n->val;
src/parser.c:95:        free(pair->key);
src/parser.c:97:        node *next = n->next;
src/parser.c:101:    free(s->options);
src/parser.c:173:    layer l = make_deconvolutional_layer(batch,h,w,c,n,size,stride,padding, activation, batch_normalize, params.net->adam);
src/parser.c:202:    convolutional_layer layer = make_convolutional_layer(batch,h,w,c,n,groups,size,stride,padding,activation, batch_normalize, binary, xnor, params.net->adam);
src/parser.c:231:    layer l = make_rnn_layer(params.batch, params.inputs, output, params.time_steps, activation, batch_normalize, params.net->adam);
src/parser.c:243:    layer l = make_gru_layer(params.batch, params.inputs, output, params.time_steps, batch_normalize, params.net->adam);
src/parser.c:254:    layer l = make_lstm_layer(params.batch, params.inputs, output, params.time_steps, batch_normalize, params.net->adam);
src/parser.c:266:    layer l = make_connected_layer(params.batch, params.inputs, output, activation, batch_normalize, params.net->adam);
src/parser.c:487:    int padding = option_find_int_quiet(options, "padding", size-1);
src/parser.c:546:    layer from = net->layers[index];
src/parser.c:619:        sizes[i] = net->layers[index].outputs;
src/parser.c:625:    convolutional_layer first = net->layers[layers[0]];
src/parser.c:631:        convolutional_layer next = net->layers[index];
src/parser.c:657:    net->batch = option_find_int(options, "batch",1);
src/parser.c:658:    net->learning_rate = option_find_float(options, "learning_rate", .001);
src/parser.c:659:    net->momentum = option_find_float(options, "momentum", .9);
src/parser.c:660:    net->decay = option_find_float(options, "decay", .0001);
src/parser.c:662:    net->time_steps = option_find_int_quiet(options, "time_steps",1);
src/parser.c:663:    net->notruth = option_find_int_quiet(options, "notruth",0);
src/parser.c:664:    net->batch /= subdivs;
src/parser.c:665:    net->batch *= net->time_steps;
src/parser.c:666:    net->subdivisions = subdivs;
src/parser.c:667:    net->random = option_find_int_quiet(options, "random", 0);
src/parser.c:669:    net->adam = option_find_int_quiet(options, "adam", 0);
src/parser.c:670:    if(net->adam){
src/parser.c:671:        net->B1 = option_find_float(options, "B1", .9);
src/parser.c:672:        net->B2 = option_find_float(options, "B2", .999);
src/parser.c:673:        net->eps = option_find_float(options, "eps", .0000001);
src/parser.c:676:    net->h = option_find_int_quiet(options, "height",0);
src/parser.c:677:    net->w = option_find_int_quiet(options, "width",0);
src/parser.c:678:    net->c = option_find_int_quiet(options, "channels",0);
src/parser.c:679:    net->inputs = option_find_int_quiet(options, "inputs", net->h * net->w * net->c);
src/parser.c:680:    net->max_crop = option_find_int_quiet(options, "max_crop",net->w*2);
src/parser.c:681:    net->min_crop = option_find_int_quiet(options, "min_crop",net->w);
src/parser.c:682:    net->max_ratio = option_find_float_quiet(options, "max_ratio", (float) net->max_crop / net->w);
src/parser.c:683:    net->min_ratio = option_find_float_quiet(options, "min_ratio", (float) net->min_crop / net->w);
src/parser.c:684:    net->center = option_find_int_quiet(options, "center",0);
src/parser.c:685:    net->clip = option_find_float_quiet(options, "clip", 0);
src/parser.c:687:    net->angle = option_find_float_quiet(options, "angle", 0);
src/parser.c:688:    net->aspect = option_find_float_quiet(options, "aspect", 1);
src/parser.c:689:    net->saturation = option_find_float_quiet(options, "saturation", 1);
src/parser.c:690:    net->exposure = option_find_float_quiet(options, "exposure", 1);
src/parser.c:691:    net->hue = option_find_float_quiet(options, "hue", 0);
src/parser.c:693:    if(!net->inputs && !(net->h && net->w && net->c)) error("No input parameters supplied");
src/parser.c:696:    net->policy = get_policy(policy_s);
src/parser.c:697:    net->burn_in = option_find_int_quiet(options, "burn_in", 0);
src/parser.c:698:    net->power = option_find_float_quiet(options, "power", 4);
src/parser.c:699:    if(net->policy == STEP){
src/parser.c:700:        net->step = option_find_int(options, "step", 1);
src/parser.c:701:        net->scale = option_find_float(options, "scale", 1);
src/parser.c:702:    } else if (net->policy == STEPS){
src/parser.c:723:        net->scales = scales;
src/parser.c:724:        net->steps = steps;
src/parser.c:725:        net->num_steps = n;
src/parser.c:726:    } else if (net->policy == EXP){
src/parser.c:727:        net->gamma = option_find_float(options, "gamma", 1);
src/parser.c:728:    } else if (net->policy == SIG){
src/parser.c:729:        net->gamma = option_find_float(options, "gamma", 1);
src/parser.c:730:        net->step = option_find_int(options, "step", 1);
src/parser.c:731:    } else if (net->policy == POLY || net->policy == RANDOM){
src/parser.c:733:    net->max_batches = option_find_int(options, "max_batches", 0);
src/parser.c:738:    return (strcmp(s->type, "[net]")==0
src/parser.c:739:            || strcmp(s->type, "[network]")==0);
src/parser.c:745:    node *n = sections->front;
src/parser.c:747:    network *net = make_network(sections->size - 1);
src/parser.c:748:    net->gpu_index = gpu_index;
src/parser.c:751:    section *s = (section *)n->val;
src/parser.c:752:    list *options = s->options;
src/parser.c:756:    params.h = net->h;
src/parser.c:757:    params.w = net->w;
src/parser.c:758:    params.c = net->c;
src/parser.c:759:    params.inputs = net->inputs;
src/parser.c:760:    params.batch = net->batch;
src/parser.c:761:    params.time_steps = net->time_steps;
src/parser.c:765:    n = n->next;
src/parser.c:772:        s = (section *)n->val;
src/parser.c:773:        options = s->options;
src/parser.c:775:        LAYER_TYPE lt = string_to_layer_type(s->type);
src/parser.c:812:            net->hierarchy = l.softmax_tree;
src/parser.c:831:            l.output = net->layers[count-1].output;
src/parser.c:832:            l.delta = net->layers[count-1].delta;
src/parser.c:834:            l.output_gpu = net->layers[count-1].output_gpu;
src/parser.c:835:            l.delta_gpu = net->layers[count-1].delta_gpu;
src/parser.c:838:            fprintf(stderr, "Type not recognized: %s\n", s->type);
src/parser.c:840:        l.clip = net->clip;
src/parser.c:851:        net->layers[count] = l;
src/parser.c:854:        n = n->next;
src/parser.c:865:    net->outputs = out.outputs;
src/parser.c:866:    net->truths = out.outputs;
src/parser.c:867:    if(net->layers[net->n-1].truths) net->truths = net->layers[net->n-1].truths;
src/parser.c:868:    net->output = out.output;
src/parser.c:869:    net->input = calloc(net->inputs*net->batch, sizeof(float));
src/parser.c:870:    net->truth = calloc(net->truths*net->batch, sizeof(float));
src/parser.c:871:    net->workspace_size = workspace_size;
src/parser.c:873:    net->output_gpu = out.output_gpu;
src/parser.c:874:    net->input_gpu = cuda_make_array(net->input, net->inputs*net->batch);
src/parser.c:875:    net->truth_gpu = cuda_make_array(net->truth, net->truths*net->batch);
src/parser.c:882:    net->workspace_gpu = cuda_make_array(0, (workspace_size-1)/sizeof(float)+1);
src/parser.c:883:    net->workspace = calloc(1, workspace_size);
src/parser.c:886:            net->workspace = cuda_make_array(0, (workspace_size-1)/sizeof(float)+1);
src/parser.c:888:            net->workspace = calloc(1, workspace_size);
src/parser.c:892:        net->workspace = calloc(1, workspace_size);
src/parser.c:913:                current->options = make_list();
src/parser.c:914:                current->type = line;
src/parser.c:922:                if(!read_option(line, current->options)){
src/parser.c:951:        if(mean < 0) mean = -mean;
src/parser.c:1017:    if(net->gpu_index >= 0){
src/parser.c:1018:        cuda_set_device(net->gpu_index);
src/parser.c:1031:    fwrite(net->seen, sizeof(size_t), 1, fp);
src/parser.c:1034:    for(i = 0; i < net->n && i < cutoff; ++i){
src/parser.c:1035:        layer l = net->layers[i];
src/parser.c:1089:    save_weights_upto(net, filename, net->n);
src/parser.c:1160:                l.weights[index + k] = (c & 1<<k) ? mean : -mean;
src/parser.c:1228:    if(net->gpu_index >= 0){
src/parser.c:1229:        cuda_set_device(net->gpu_index);
src/parser.c:1244:        fread(net->seen, sizeof(size_t), 1, fp);
src/parser.c:1248:        *net->seen = iseen;
src/parser.c:1253:    for(i = start; i < net->n && i < cutoff; ++i){
src/parser.c:1254:        layer l = net->layers[i];
src/parser.c:1317:    load_weights_upto(net, filename, 0, net->n);
src/detection_layer.c:84:                    l.delta[p_index] = l.noobject_scale*(0 - l.output[p_index]);
src/detection_layer.c:89:                int best_index = -1;
src/detection_layer.c:99:                    l.delta[class_index+j] = l.class_scale * (net.truth[truth_index+1+j] - l.output[class_index+j]);
src/detection_layer.c:100:                    *(l.cost) += l.class_scale * pow(net.truth[truth_index+1+j] - l.output[class_index+j], 2);
src/detection_layer.c:161:                *(l.cost) -= l.noobject_scale * pow(l.output[p_index], 2);
src/detection_layer.c:162:                *(l.cost) += l.object_scale * pow(1-l.output[p_index], 2);
src/detection_layer.c:164:                l.delta[p_index] = l.object_scale * (1.-l.output[p_index]);
src/detection_layer.c:167:                    l.delta[p_index] = l.object_scale * (iou - l.output[p_index]);
src/detection_layer.c:170:                l.delta[box_index+0] = l.coord_scale*(net.truth[tbox_index + 0] - l.output[box_index + 0]);
src/detection_layer.c:171:                l.delta[box_index+1] = l.coord_scale*(net.truth[tbox_index + 1] - l.output[box_index + 1]);
src/detection_layer.c:172:                l.delta[box_index+2] = l.coord_scale*(net.truth[tbox_index + 2] - l.output[box_index + 2]);
src/detection_layer.c:173:                l.delta[box_index+3] = l.coord_scale*(net.truth[tbox_index + 3] - l.output[box_index + 3]);
src/detection_layer.c:175:                    l.delta[box_index+2] = l.coord_scale*(sqrt(net.truth[tbox_index + 2]) - l.output[box_index + 2]);
src/detection_layer.c:176:                    l.delta[box_index+3] = l.coord_scale*(sqrt(net.truth[tbox_index + 3]) - l.output[box_index + 3]);
src/detection_layer.c:179:                *(l.cost) += pow(1-iou, 2);
src/maxpool_layer.c:30:    l.out_w = (w + padding - size)/stride + 1;
src/maxpool_layer.c:31:    l.out_h = (h + padding - size)/stride + 1;
src/maxpool_layer.c:62:    fprintf(stderr, "max          %d x %d / %d  %4d x%4d x%4d   ->  %4d x%4d x%4d\n", size, size, stride, w, h, c, l.out_w, l.out_h, l.out_c);
src/maxpool_layer.c:68:    l->h = h;
src/maxpool_layer.c:69:    l->w = w;
src/maxpool_layer.c:70:    l->inputs = h*w*l->c;
src/maxpool_layer.c:72:    l->out_w = (w + l->pad - l->size)/l->stride + 1;
src/maxpool_layer.c:73:    l->out_h = (h + l->pad - l->size)/l->stride + 1;
src/maxpool_layer.c:74:    l->outputs = l->out_w * l->out_h * l->c;
src/maxpool_layer.c:75:    int output_size = l->outputs * l->batch;
src/maxpool_layer.c:77:    l->indexes = realloc(l->indexes, output_size * sizeof(int));
src/maxpool_layer.c:78:    l->output = realloc(l->output, output_size * sizeof(float));
src/maxpool_layer.c:79:    l->delta = realloc(l->delta, output_size * sizeof(float));
src/maxpool_layer.c:82:    cuda_free((float *)l->indexes_gpu);
src/maxpool_layer.c:83:    cuda_free(l->output_gpu);
src/maxpool_layer.c:84:    cuda_free(l->delta_gpu);
src/maxpool_layer.c:85:    l->indexes_gpu = cuda_make_int_array(0, output_size);
src/maxpool_layer.c:86:    l->output_gpu  = cuda_make_array(l->output, output_size);
src/maxpool_layer.c:87:    l->delta_gpu   = cuda_make_array(l->delta,  output_size);
src/maxpool_layer.c:94:    int w_offset = -l.pad/2;
src/maxpool_layer.c:95:    int h_offset = -l.pad/2;
src/maxpool_layer.c:106:                    float max = -FLT_MAX;
src/maxpool_layer.c:107:                    int max_i = -1;
src/maxpool_layer.c:115:                            float val = (valid != 0) ? net.input[index] : -FLT_MAX;
src/maxpool_layer.c:132:    network net = input->net;
src/maxpool_layer.c:133:    layer l = input->layer;
src/maxpool_layer.c:136:    int w_offset = -l.pad/2;
src/maxpool_layer.c:137:    int h_offset = -l.pad/2;
src/maxpool_layer.c:148:                    float max = -FLT_MAX;
src/maxpool_layer.c:149:                    int max_i = -1;
src/maxpool_layer.c:157:                            float val = (valid != 0) ? net.input[index] : -FLT_MAX;
src/image_opencv.cpp:16:    int step = disp->widthStep;
src/image_opencv.cpp:21:                disp->imageData[y*step + x*im.c + c] = (unsigned char)(val*255);
src/image_opencv.cpp:30:    int h = src->height;
src/image_opencv.cpp:31:    int w = src->width;
src/image_opencv.cpp:32:    int c = src->nChannels;
src/image_opencv.cpp:34:    unsigned char *data = (unsigned char *)src->imageData;
src/image_opencv.cpp:35:    int step = src->widthStep;
src/image_opencv.cpp:74:    if(!cap->isOpened()) return 0;
src/image_opencv.cpp:75:    if(w) cap->set(CV_CAP_PROP_FRAME_WIDTH, w);
src/image_opencv.cpp:76:    if(h) cap->set(CV_CAP_PROP_FRAME_HEIGHT, w);
src/image_opencv.cpp:77:    if(fps) cap->set(CV_CAP_PROP_FPS, w);
src/image_opencv.cpp:92:    int flag = -1;
src/image_opencv.cpp:93:    if (channels == 0) flag = -1;
src/image_opencv.cpp:118:    if (c != -1) c = c%256;
src/connected_layer.c:62:        l.weights[i] = scale*rand_uniform(-1, 1);
src/connected_layer.c:175:    fprintf(stderr, "connected                            %4d  ->  %4d\n", inputs, outputs);
src/connected_layer.c:193:    axpy_cpu(l.inputs*l.outputs, -decay*batch, l.weights, 1, l.weight_updates, 1);
src/connected_layer.c:219:    network net = input->net;
src/connected_layer.c:220:    layer l = input->layer;
src/connected_layer.c:280:        l.biases[i] -= l.rolling_mean[i] * scale;
src/connected_layer.c:355:        axpy_gpu(l.inputs*l.outputs, -decay*batch, l.weights_gpu, 1, l.weight_updates_gpu, 1);
src/connected_layer.c:386:    network net = input->net;
src/connected_layer.c:387:    layer l = input->layer;
src/avgpool_layer.c:7:    fprintf(stderr, "avg                     %4d x%4d x%4d   ->  %4d\n",  w, h, c, c);
src/avgpool_layer.c:42:    l->w = w;
src/avgpool_layer.c:43:    l->h = h;
src/avgpool_layer.c:44:    l->inputs = h*w*l->c;
src/avgpool_layer.c:66:    network net = input->net;
src/avgpool_layer.c:67:    layer l = input->layer;
src/network.c:38:    args.w = net->w;
src/network.c:39:    args.h = net->h;
src/network.c:40:    args.size = net->w;
src/network.c:42:    args.min = net->min_crop;
src/network.c:43:    args.max = net->max_crop;
src/network.c:44:    args.angle = net->angle;
src/network.c:45:    args.aspect = net->aspect;
src/network.c:46:    args.exposure = net->exposure;
src/network.c:47:    args.center = net->center;
src/network.c:48:    args.saturation = net->saturation;
src/network.c:49:    args.hue = net->hue;
src/network.c:61:        (*net->seen) = 0;
src/network.c:76:    des->seen = calloc(1, sizeof(size_t));
src/network.c:77:    des->t    = calloc(1, sizeof(int));
src/network.c:78:    des->cost = calloc(1, sizeof(float));
src/network.c:80:    des->input = calloc(source->inputs*source->batch, sizeof(float));
src/network.c:81:    des->truth = calloc(source->truths*source->batch, sizeof(float));
src/network.c:82:    des->workspace = calloc(1, source->workspace_size);
src/network.c:83:    des->scales = calloc(source->num_steps, sizeof(float));
src/network.c:84:    des->steps = calloc(source->num_steps, sizeof(int));
src/network.c:92:    size_t batch_num = (*net->seen) / (net->batch * net->subdivisions);
src/network.c:99:    for (i = 0; i < net->n; ++i)
src/network.c:102:        layer l = net->layers[i];
src/network.c:125:    if (batch_num < net->burn_in)
src/network.c:126:        return net->learning_rate * pow((float)batch_num / net->burn_in, net->power);
src/network.c:127:    switch (net->policy)
src/network.c:130:        return net->learning_rate;
src/network.c:132:        return net->learning_rate * pow(net->scale, batch_num / net->step);
src/network.c:134:        rate = net->learning_rate;
src/network.c:135:        for (i = 0; i < net->num_steps; ++i)
src/network.c:137:            if (net->steps[i] > batch_num)
src/network.c:139:            rate *= net->scales[i];
src/network.c:143:        return net->learning_rate * pow(net->gamma, batch_num);
src/network.c:145:        return net->learning_rate * pow(1 - (float)batch_num / net->max_batches, net->power);
src/network.c:147:        return net->learning_rate * pow(rand_uniform(0, 1), net->power);
src/network.c:149:        return net->learning_rate * (1. / (1. + exp(net->gamma * (batch_num - net->step))));
src/network.c:152:        return net->learning_rate;
src/network.c:215:    net->n = n;
src/network.c:216:    net->layers = calloc(net->n, sizeof(layer));
src/network.c:217:    net->seen = calloc(1, sizeof(size_t));
src/network.c:218:    net->t = calloc(1, sizeof(int));
src/network.c:219:    net->cost = calloc(1, sizeof(float));
src/network.c:227:        netlayer *nl = input->arg;
src/network.c:231:            int thidx = (nl->net.index_n % 8);
src/network.c:234:        pthread_mutex_lock(&mutex_t[nl->net.index_n]);
src/network.c:236:        if (input->flag == 1)
src/network.c:238:            if (nl->layer.delta_gpu)
src/network.c:240:                fill_gpu_stream(nl->layer.outputs * nl->layer.batch, 0, nl->layer.delta_gpu, 1, thidx);
src/network.c:242:	    //fprintf(stderr, "[%d] index, [%s] start, thpool index: %d,  thidx : %d\n", nl->net.index_n, get_layer_string(nl->layer.type), id, thidx);
src/network.c:243:            nl->layer.forward_gpu_thread(nl, thidx);
src/network.c:244:            //cuda_pull_array_stream(nl->layer.output_gpu, nl->layer.output, nl->layer.outputs * nl->layer.batch, thidx);
src/network.c:245:	    //fprintf(stderr, "[%d} index, [%s] end \n", nl->net.index_n, get_layer_string(nl->layer.type));
src/network.c:247:        else if (input->flag == 0)
src/network.c:250:            cuda_push_array(nl->net.input_gpu, nl->net.input, ((nl->net).inputs)*((nl->net).batch));
src/network.c:252:            if (nl->layer.delta)
src/network.c:254:                fill_cpu(nl->layer.outputs * nl->layer.batch, 0, nl->layer.delta, 1);
src/network.c:256:            nl->layer.forward_thread(nl);
src/network.c:260:        cond_i[nl->net.index_n] = 0;
src/network.c:261:        pthread_cond_signal(&cond_t[nl->net.index_n]);
src/network.c:262:        pthread_mutex_unlock(&mutex_t[nl->net.index_n]);
src/network.c:267:        netlayer *nl = input->arg;
src/network.c:268:        pthread_mutex_lock(&mutex_t[nl->net.index_n]);
src/network.c:269:        //input->flag == 1;
src/network.c:271:        if (input->flag == 1)
src/network.c:274:            //cuda_push_array(nl->net.input_gpu, nl->net.input, ((nl->net).inputs)*((nl->net).batch));
src/network.c:276:            if (nl->layer.delta_gpu)
src/network.c:278:                fill_gpu(nl->layer.outputs * nl->layer.batch, 0, nl->layer.delta_gpu, 1);
src/network.c:280:            nl->layer.forward_gpu_thread(nl);
src/network.c:282:            //cuda_pull_array(nl->layer.output_gpu, nl->layer.output, nl->layer.outputs * nl->layer.batch);
src/network.c:283:            //fprintf(stderr,"PULL = CPU : %f, GPU :%f\n",nl->layer.output,nl->layer.output_gpu);
src/network.c:286:        else if (input->flag == 0)
src/network.c:289:            //cuda_push_array(nl->net.input_gpu, nl->net.input, ((nl->net).inputs)*((nl->net).batch));
src/network.c:290:            if (nl->layer.delta)
src/network.c:292:                fill_cpu(nl->layer.outputs * nl->layer.batch, 0, nl->layer.delta, 1);
src/network.c:294:            nl->layer.forward_thread(nl);
src/network.c:295:            //fprintf(stderr,"CPU : %f\n",nl->layer.output);
src/network.c:299:        cond_i[nl->net.index_n] = 0;
src/network.c:300:        pthread_cond_signal(&cond_t[nl->net.index_n]);
src/network.c:301:        pthread_mutex_unlock(&mutex_t[nl->net.index_n]);
src/network.c:423:        if (netp->gpu_index >= 0)
src/network.c:488:    if (netp->gpu_index >= 0)
src/network.c:537:    return max_index(net->output, net->outputs);
src/network.c:543:    if (netp->gpu_index >= 0)
src/network.c:552:    for (i = net.n - 1; i >= 0; --i)
src/network.c:563:            layer prev = net.layers[i - 1];
src/network.c:574:    *net->seen += net->batch;
src/network.c:575:    net->train = 1;
src/network.c:578:    float error = *net->cost;
src/network.c:579:    if (((*net->seen) / net->batch) % net->subdivisions == 0)
src/network.c:586:    int batch = net->batch;
src/network.c:592:        get_random_batch(d, batch, net->input, net->truth);
src/network.c:601:    assert(d.X.rows % net->batch == 0);
src/network.c:602:    int batch = net->batch;
src/network.c:609:        get_next_batch(d, batch, i * batch, net->input, net->truth);
src/network.c:619:    for (i = 0; i < net->n; ++i)
src/network.c:621:        net->layers[i].temperature = t;
src/network.c:627:    net->batch = b;
src/network.c:629:    for (i = 0; i < net->n; ++i)
src/network.c:631:        net->layers[i].batch = b;
src/network.c:633:        if (net->layers[i].type == CONVOLUTIONAL)
src/network.c:635:            cudnn_convolutional_setup(net->layers + i);
src/network.c:637:        if (net->layers[i].type == DECONVOLUTIONAL)
src/network.c:639:            layer *l = net->layers + i;
src/network.c:640:            cudnnSetTensor4dDescriptor(l->dstTensorDesc, CUDNN_TENSOR_NCHW, CUDNN_DATA_FLOAT, 1, l->out_c, l->out_h, l->out_w);
src/network.c:641:            cudnnSetTensor4dDescriptor(l->normTensorDesc, CUDNN_TENSOR_NCHW, CUDNN_DATA_FLOAT, 1, l->out_c, 1, 1);
src/network.c:650:    cuda_set_device(net->gpu_index);
src/network.c:651:    cuda_free(net->workspace);
src/network.c:654:    //if(w == net->w && h == net->h) return 0;
src/network.c:655:    net->w = w;
src/network.c:656:    net->h = h;
src/network.c:661:    for (i = 0; i < net->n; ++i)
src/network.c:663:        layer l = net->layers[i];
src/network.c:721:        net->layers[i] = l;
src/network.c:728:    net->inputs = net->layers[0].inputs;
src/network.c:729:    net->outputs = out.outputs;
src/network.c:730:    net->truths = out.outputs;
src/network.c:731:    if (net->layers[net->n - 1].truths)
src/network.c:732:        net->truths = net->layers[net->n - 1].truths;
src/network.c:733:    net->output = out.output;
src/network.c:734:    free(net->input);
src/network.c:735:    free(net->truth);
src/network.c:736:    net->input = calloc(net->inputs * net->batch, sizeof(float));
src/network.c:737:    net->truth = calloc(net->truths * net->batch, sizeof(float));
src/network.c:741:        cuda_free(net->input_gpu);
src/network.c:742:        cuda_free(net->truth_gpu);
src/network.c:743:        net->input_gpu = cuda_make_array(net->input, net->inputs * net->batch);
src/network.c:744:        net->truth_gpu = cuda_make_array(net->truth, net->truths * net->batch);
src/network.c:747:            net->workspace = cuda_make_array(0, (workspace_size - 1) / sizeof(float) + 1);
src/network.c:752:        free(net->workspace);
src/network.c:753:        net->workspace = calloc(1, workspace_size);
src/network.c:756:    free(net->workspace);
src/network.c:757:    net->workspace = calloc(1, workspace_size);
src/network.c:766:    for (i = 0; i < net->n; ++i)
src/network.c:768:        if (net->layers[i].type == DETECTION)
src/network.c:770:            return net->layers[i];
src/network.c:780:    layer l = net->layers[i];
src/network.c:795:    for (i = net->n - 1; i >= 0; --i)
src/network.c:810:    for (i = 0; i < net->n; ++i)
src/network.c:813:        layer l = net->layers[i];
src/network.c:823:    top_k(net->output, net->outputs, k, index);
src/network.c:829:    net->input = input;
src/network.c:830:    net->truth = 0;
src/network.c:831:    net->train = 0;
src/network.c:832:    net->delta = 0;
src/network.c:834:    float *out = net->output;
src/network.c:843:    for (i = 0; i < net->n; ++i)
src/network.c:845:        layer l = net->layers[i];
src/network.c:860:    layer l = net->layers[net->n - 1];
src/network.c:871:            dets[i].mask = calloc(l.coords - 4, sizeof(float));
src/network.c:880:    for (j = 0; j < net->n; ++j)
src/network.c:882:        layer l = net->layers[j];
src/network.c:885:            int count = get_yolo_detections(l, w, h, net->w, net->h, thresh, map, relative, dets);
src/network.c:890:            get_region_detections(l, w, h, net->w, net->h, thresh, map, hier, relative, dets);
src/network.c:922:    image imr = letterbox_image(im, net->w, net->h);
src/network.c:929:int network_width(network *net) { return net->w; }
src/network.c:930:int network_height(network *net) { return net->h; }
src/network.c:935:    int k = net->outputs;
src/network.c:937:    float *X = calloc(net->batch * test.X.rows, sizeof(float));
src/network.c:938:    for (i = 0; i < test.X.rows; i += net->batch)
src/network.c:940:        for (b = 0; b < net->batch; ++b)
src/network.c:949:            for (b = 0; b < net->batch; ++b)
src/network.c:967:    int k = net->outputs;
src/network.c:969:    float *X = calloc(net->batch * test.X.cols, sizeof(float));
src/network.c:970:    for (i = 0; i < test.X.rows; i += net->batch)
src/network.c:972:        for (b = 0; b < net->batch; ++b)
src/network.c:979:        for (b = 0; b < net->batch; ++b)
src/network.c:996:    for (i = 0; i < net->n; ++i)
src/network.c:998:        layer l = net->layers[i];
src/network.c:1003:        fprintf(stderr, "Layer %d [%s]- Mean: %f, Variance: %f\n", i, get_layer_string(l.type), mean, vari);
src/network.c:1042:    float num = pow((abs(b - c) - 1.), 2.);
src/network.c:1068:    for (i = net->n - 1; i >= 0; --i)
src/network.c:1070:        if (net->layers[i].type != COST)
src/network.c:1073:    return net->layers[i];
src/network.c:1087:    for (i = 0; i < net->n; ++i)
src/network.c:1089:        free_layer(net->layers[i]);
src/network.c:1091:    free(net->layers);
src/network.c:1092:    if (net->input)
src/network.c:1093:        free(net->input);
src/network.c:1094:    if (net->truth)
src/network.c:1095:        free(net->truth);
src/network.c:1097:    if (net->input_gpu)
src/network.c:1098:        cuda_free(net->input_gpu);
src/network.c:1099:    if (net->truth_gpu)
src/network.c:1100:        cuda_free(net->truth_gpu);
src/network.c:1111:    for (i = net->n - 1; i >= 0; --i)
src/network.c:1113:        if (net->layers[i].type != COST)
src/network.c:1116:    return net->layers[i];
src/network.c:1121:    return net->layers[0].inputs;
src/network.c:1152:        //fprintf(stderr, "net - %d /layerstart-%d - %s start\n", net.index_n, i, get_layer_string(l.type));
src/network.c:1165:        //fprintf(stderr, "net - %d /layerstart-%d - %s end\n ", net.index_n, i, get_layer_string(l.type));
src/network.c:1177:    for (i = net.n - 1; i >= 0; --i)
src/network.c:1188:            layer prev = net.layers[i - 1];
src/network.c:1254:    cuda_set_device(args.net->gpu_index);
src/network.c:1263:    ptr->net = net;
src/network.c:1264:    ptr->d = d;
src/network.c:1265:    ptr->err = err;
src/network.c:1443:    layer base = net->layers[j];
src/network.c:1447:        cuda_set_device(nets[i]->gpu_index);
src/network.c:1448:        layer l = nets[i]->layers[j];
src/network.c:1455:        cuda_set_device(nets[i]->gpu_index);
src/network.c:1456:        layer l = nets[i]->layers[j];
src/network.c:1480:    ptr->nets = nets;
src/network.c:1481:    ptr->n = n;
src/network.c:1482:    ptr->j = j;
src/network.c:1491:    int layers = nets[0]->n;
src/network.c:1494:    *(nets[0]->seen) += interval * (n - 1) * nets[0]->batch * nets[0]->subdivisions;
src/network.c:1497:        *(nets[j]->seen) = *(nets[0]->seen);
src/network.c:1513:    int batch = nets[0]->batch;
src/network.c:1514:    int subdivisions = nets[0]->subdivisions;
src/matrix.c:109:    h.cols = m->cols;
src/matrix.c:112:        int index = rand()%m->rows;
src/matrix.c:113:        h.vals[i] = m->vals[index];
src/matrix.c:114:        m->vals[index] = m->vals[--(m->rows)];
src/matrix.c:121:    float *col = calloc(m->rows, sizeof(float));
src/matrix.c:123:    for(i = 0; i < m->rows; ++i){
src/matrix.c:124:        col[i] = m->vals[i][c];
src/matrix.c:125:        for(j = c; j < m->cols-1; ++j){
src/matrix.c:126:            m->vals[i][j] = m->vals[i][j+1];
src/matrix.c:129:    --m->cols;
src/matrix.c:139:    m.cols = -1;
src/matrix.c:147:        if(m.cols == -1) m.cols = count_fields(line);
src/matrix.c:179:    for(j = 0; j < 16*m.cols-1; ++j) printf(" ");
src/matrix.c:183:    for(j = 0; j < 16*m.cols-1; ++j) printf(" ");
src/matrix.c:194:    for(j = 0; j < 16*m.cols-1; ++j) printf(" ");
src/blas.c:54:        c[i] = s[i]*a[i] + (1-s[i])*(b ? b[i] : 0);
src/blas.c:63:        if(db) db[i] += dc[i] * (1-s[i]);
src/blas.c:64:        ds[i] += dc[i] * (a[i] - b[i]);
src/blas.c:112:    float scale = 1./(batch * spatial - 1);
src/blas.c:119:                variance[i] += pow((x[index] - mean[i]), 2);
src/blas.c:140:                dx[index] = (1 - x[index]) / sum;
src/blas.c:154:                x[index] = (x[index] - mean[f])/(sqrt(variance[f]) + .000001f);
src/blas.c:242:        float diff = truth[i] - pred[i];
src/blas.c:249:            error[i] = 2*abs_val - 1;
src/blas.c:250:            delta[i] = (diff < 0) ? 1 : -1;
src/blas.c:259:        float diff = truth[i] - pred[i];
src/blas.c:261:        delta[i] = diff > 0 ? 1 : -1;
src/blas.c:271:        error[i] = (t) ? -log(p) : 0;
src/blas.c:272:        delta[i] = t-p;
src/blas.c:282:        error[i] = -t*log(p) - (1-t)*log(1-p);
src/blas.c:283:        delta[i] = t-p;
src/blas.c:291:        float diff = truth[i] - pred[i];
src/blas.c:309:    float largest = -FLT_MAX;
src/blas.c:314:        float e = exp(input[i*stride]/temp - largest/temp);
src/region_layer.c:58:    l->w = w;
src/region_layer.c:59:    l->h = h;
src/region_layer.c:61:    l->outputs = h*w*l->n*(l->classes + l->coords + 1);
src/region_layer.c:62:    l->inputs = l->outputs;
src/region_layer.c:64:    l->output = realloc(l->output, l->batch*l->outputs*sizeof(float));
src/region_layer.c:65:    l->delta = realloc(l->delta, l->batch*l->outputs*sizeof(float));
src/region_layer.c:68:    cuda_free(l->delta_gpu);
src/region_layer.c:69:    cuda_free(l->output_gpu);
src/region_layer.c:71:    l->delta_gpu =     cuda_make_array(l->delta, l->batch*l->outputs);
src/region_layer.c:72:    l->output_gpu =    cuda_make_array(l->output, l->batch*l->outputs);
src/region_layer.c:91:    float tx = (truth.x*w - i);
src/region_layer.c:92:    float ty = (truth.y*h - j);
src/region_layer.c:96:    delta[index + 0*stride] = scale * (tx - x[index + 0*stride]);
src/region_layer.c:97:    delta[index + 1*stride] = scale * (ty - x[index + 1*stride]);
src/region_layer.c:98:    delta[index + 2*stride] = scale * (tw - x[index + 2*stride]);
src/region_layer.c:99:    delta[index + 3*stride] = scale * (th - x[index + 3*stride]);
src/region_layer.c:107:        delta[index + i*stride] = scale*(truth[i] - x[index + i*stride]);
src/region_layer.c:119:            int g = hier->group[class];
src/region_layer.c:120:            int offset = hier->group_offset[g];
src/region_layer.c:121:            for(i = 0; i < hier->group_size[g]; ++i){
src/region_layer.c:122:                delta[index + stride*(offset + i)] = scale * (0 - output[index + stride*(offset + i)]);
src/region_layer.c:124:            delta[index + stride*class] = scale * (1 - output[index + stride*class]);
src/region_layer.c:126:            class = hier->parent[class];
src/region_layer.c:131:            delta[index + stride*class] = scale * (1 - output[index + stride*class]);
src/region_layer.c:135:            delta[index + stride*n] = scale * (((n == class)?1 : 0) - output[index + stride*n]);
src/region_layer.c:143:    return log(x/(1.-x));
src/region_layer.c:177:        for (i = 0; i < l.softmax_tree->groups; ++i) {
src/region_layer.c:178:            int group_size = l.softmax_tree->group_size[i];
src/region_layer.c:212:                        l.delta[obj_index] = l.noobject_scale * (0 - l.output[obj_index]);
src/region_layer.c:222:                    if(l.output[obj_index] < .3) l.delta[obj_index] = l.object_scale * (.3 - l.output[obj_index]);
src/region_layer.c:248:                    l.delta[obj_index] = l.noobject_scale * (0 - l.output[obj_index]);
src/region_layer.c:249:                    if(l.background) l.delta[obj_index] = l.noobject_scale * (1 - l.output[obj_index]);
src/region_layer.c:293:            float iou = delta_region_box(truth, l.output, l.biases, best_n, box_index, i, j, l.w, l.h, l.delta, l.coord_scale *  (2 - truth.w*truth.h), l.w*l.h);
src/region_layer.c:296:                delta_region_mask(net.truth + t*(l.coords + 1) + b*l.truths + 5, l.output, l.coords - 4, mask_index, l.delta, l.w*l.h, l.mask_scale);
src/region_layer.c:303:            l.delta[obj_index] = l.object_scale * (1 - l.output[obj_index]);
src/region_layer.c:305:                l.delta[obj_index] = l.object_scale * (iou - l.output[obj_index]);
src/region_layer.c:308:                l.delta[obj_index] = l.object_scale * (0 - l.output[obj_index]);
src/region_layer.c:350:        b.x =  (b.x - (netw - new_w)/2./netw) / ((float)new_w/netw); 
src/region_layer.c:351:        b.y =  (b.y - (neth - new_h)/2./neth) / ((float)new_h/neth); 
src/region_layer.c:375:                        int i2 = z*l.w*l.h*l.n + n*l.w*l.h + j*l.w + (l.w - i - 1);
src/region_layer.c:380:                            flip[i1] = -flip[i1];
src/region_layer.c:381:                            flip[i2] = -flip[i2];
src/region_layer.c:406:                for(j = 0; j < l.coords - 4; ++j){
src/region_layer.c:451:                activate_array_gpu(l.output_gpu + index, (l.coords - 4)*l.w*l.h, LOGISTIC);
src/region_layer.c:487:                gradient_array_gpu(l.output_gpu + index, (l.coords - 4)*l.w*l.h, LOGISTIC, l.delta_gpu + index);
src/cost_layer.c:70:    l->inputs = inputs;
src/cost_layer.c:71:    l->outputs = inputs;
src/cost_layer.c:72:    l->delta = realloc(l->delta, inputs*l->batch*sizeof(float));
src/cost_layer.c:73:    l->output = realloc(l->output, inputs*l->batch*sizeof(float));
src/cost_layer.c:75:    cuda_free(l->delta_gpu);
src/cost_layer.c:76:    cuda_free(l->output_gpu);
src/cost_layer.c:77:    l->delta_gpu = cuda_make_array(l->delta, inputs*l->batch);
src/cost_layer.c:78:    l->output_gpu = cuda_make_array(l->output, inputs*l->batch);
src/cost_layer.c:121:    if(fa < 0) fa = -fa;
src/cost_layer.c:123:    if(fb < 0) fb = -fb;
src/cost_layer.c:124:    return (fa > fb) - (fa < fb);
src/cost_layer.c:131:        scal_gpu(l.batch*l.inputs, (1-l.smooth), net.truth_gpu, 1);
src/cost_layer.c:156:        int n = (1-l.ratio) * l.batch*l.inputs;
src/dropout_layer_kernels.cu:37:    network net = input->net;
src/dropout_layer_kernels.cu:38:    layer layer = input->layer;
src/local_layer.c:13:    if (!l.pad) h -= l.size;
src/local_layer.c:14:    else h -= 1;
src/local_layer.c:21:    if (!l.pad) w -= l.size;
src/local_layer.c:22:    else w -= 1;
src/local_layer.c:58:    for(i = 0; i < c*n*size*size; ++i) l.weights[i] = scale*rand_uniform(-1,1);
src/local_layer.c:86:    fprintf(stderr, "Local Layer: %d x %d x %d image, %d filters -> %d x %d x %d image\n", h,w,c,n, out_h, out_w, n);
src/local_layer.c:179:    axpy_cpu(size, -decay*batch, l.weights, 1, l.weight_updates, 1);
src/local_layer.c:273:    axpy_gpu(size, -decay*batch, l.weights_gpu, 1, l.weight_updates_gpu, 1);
src/col2im.c:6:    row -= pad;
src/col2im.c:7:    col -= pad;
src/col2im.c:19:    int height_col = (height + 2*pad - ksize) / stride + 1;
src/col2im.c:20:    int width_col = (width + 2*pad - ksize) / stride + 1;
src/route_layer.c:49:    layer first = net->layers[l->input_layers[0]];
src/route_layer.c:50:    l->out_w = first.out_w;
src/route_layer.c:51:    l->out_h = first.out_h;
src/route_layer.c:52:    l->out_c = first.out_c;
src/route_layer.c:53:    l->outputs = first.outputs;
src/route_layer.c:54:    l->input_sizes[0] = first.outputs;
src/route_layer.c:55:    for(i = 1; i < l->n; ++i){
src/route_layer.c:56:        int index = l->input_layers[i];
src/route_layer.c:57:        layer next = net->layers[index];
src/route_layer.c:58:        l->outputs += next.outputs;
src/route_layer.c:59:        l->input_sizes[i] = next.outputs;
src/route_layer.c:61:            l->out_c += next.out_c;
src/route_layer.c:64:            l->out_h = l->out_w = l->out_c = 0;
src/route_layer.c:67:    l->inputs = l->outputs;
src/route_layer.c:68:    l->delta =  realloc(l->delta, l->outputs*l->batch*sizeof(float));
src/route_layer.c:69:    l->output = realloc(l->output, l->outputs*l->batch*sizeof(float));
src/route_layer.c:73:    cuda_free(l->output_gpu);
src/route_layer.c:74:    cuda_free(l->delta_gpu);
src/route_layer.c:75:    l->output_gpu  = cuda_make_array(l->output, l->outputs*l->batch);
src/route_layer.c:76:    l->delta_gpu   = cuda_make_array(l->delta,  l->outputs*l->batch);
src/route_layer.c:99:    network net = input->net;
src/route_layer.c:100:    layer l = input->layer;
src/route_layer.c:153:    network net = input->net;
src/route_layer.c:154:    layer l = input->layer;
src/crop_layer_kernels.cu:27:    float delta = max - min;
src/crop_layer_kernels.cu:31:        h = -1;
src/crop_layer_kernels.cu:35:            h = (g - b) / delta;
src/crop_layer_kernels.cu:37:            h = 2 + (b - r) / delta;
src/crop_layer_kernels.cu:39:            h = 4 + (r - g) / delta;
src/crop_layer_kernels.cu:59:        f = h - index;
src/crop_layer_kernels.cu:60:        p = v*(1-s);
src/crop_layer_kernels.cu:61:        q = v*(1-s*f);
src/crop_layer_kernels.cu:62:        t = v*(1-s*(1-f));
src/crop_layer_kernels.cu:88:    float dx = x - ix;
src/crop_layer_kernels.cu:89:    float dy = y - iy;
src/crop_layer_kernels.cu:91:    float val = (1-dy) * (1-dx) * get_pixel_kernel(image, w, h, ix, iy, c) + 
src/crop_layer_kernels.cu:92:        dy     * (1-dx) * get_pixel_kernel(image, w, h, ix, iy+1, c) + 
src/crop_layer_kernels.cu:93:        (1-dy) *   dx   * get_pixel_kernel(image, w, h, ix+1, iy, c) +
src/crop_layer_kernels.cu:115:    saturation = r0*(saturation - 1) + 1;
src/crop_layer_kernels.cu:117:    exposure = r2*(exposure - 1) + 1;
src/crop_layer_kernels.cu:134:    image[x + w*(y + h*0)] = rgb.x*scale + translate + (rshift - .5f)*shift;
src/crop_layer_kernels.cu:135:    image[x + w*(y + h*1)] = rgb.y*scale + translate + (gshift - .5f)*shift;
src/crop_layer_kernels.cu:136:    image[x + w*(y + h*2)] = rgb.z*scale + translate + (bshift - .5f)*shift;
src/crop_layer_kernels.cu:161:    float dw = (w - crop_width)*r4;
src/crop_layer_kernels.cu:162:    float dh = (h - crop_height)*r5;
src/crop_layer_kernels.cu:164:    angle = 2*angle*r7 - angle;
src/crop_layer_kernels.cu:166:        dw = (w - crop_width)/2.f;
src/crop_layer_kernels.cu:167:        dh = (h - crop_height)/2.f;
src/crop_layer_kernels.cu:174:    float x = (flip) ? w - dw - j - 1 : j + dw;    
src/crop_layer_kernels.cu:177:    float rx = cosf(angle)*(x-cx) - sinf(angle)*(y-cy) + cx;
src/crop_layer_kernels.cu:178:    float ry = sinf(angle)*(x-cx) + cosf(angle)*(y-cy) + cy;
src/crop_layer_kernels.cu:190:    float translate = -1;
src/crop_layer_kernels.cu:212:       translate_image(im, -translate);
src/crop_layer_kernels.cu:214:       translate_image(im2, -translate);
src/crop_layer_kernels.cu:216:       translate_image(im3, -translate);
src/crop_layer_kernels.cu:228:    network net = input->net;
src/crop_layer_kernels.cu:229:    layer layer = input->layer;
src/crop_layer_kernels.cu:236:    float translate = -1;
src/crop_layer.c:18:    fprintf(stderr, "Crop Layer: %d x %d -> %d x %d x %d image\n", h,w,crop_height,crop_width,c);
src/crop_layer.c:57:    l->w = w;
src/crop_layer.c:58:    l->h = h;
src/crop_layer.c:60:    l->out_w =  l->scale*w;
src/crop_layer.c:61:    l->out_h =  l->scale*h;
src/crop_layer.c:63:    l->inputs = l->w * l->h * l->c;
src/crop_layer.c:64:    l->outputs = l->out_h * l->out_w * l->out_c;
src/crop_layer.c:66:    l->output = realloc(l->output, l->batch*l->outputs*sizeof(float));
src/crop_layer.c:68:    cuda_free(l->output_gpu);
src/crop_layer.c:69:    l->output_gpu = cuda_make_array(l->output, l->outputs*l->batch);
src/crop_layer.c:80:    int dh = rand()%(l.h - l.out_h + 1);
src/crop_layer.c:81:    int dw = rand()%(l.w - l.out_w + 1);
src/crop_layer.c:83:    float trans = -1;
src/crop_layer.c:90:        dh = (l.h - l.out_h)/2;
src/crop_layer.c:91:        dw = (l.w - l.out_w)/2;
src/crop_layer.c:98:                        col = l.w - dw - j - 1;    
src/crop_layer.c:114:    network net = input->net;
src/crop_layer.c:115:    layer l = input->layer;
src/crop_layer.c:120:    int dh = rand()%(l.h - l.out_h + 1);
src/crop_layer.c:121:    int dw = rand()%(l.w - l.out_w + 1);
src/crop_layer.c:123:    float trans = -1;
src/crop_layer.c:130:        dh = (l.h - l.out_h)/2;
src/crop_layer.c:131:        dw = (l.w - l.out_w)/2;
src/crop_layer.c:138:                        col = l.w - dw - j - 1;    
src/avgpool_layer_kernels.cu:56:    network net = input->net;
src/avgpool_layer_kernels.cu:57:    layer layer = input->layer;
src/demo.c:44:    for(i = 0; i < net->n; ++i){
src/demo.c:45:        layer l = net->layers[i];
src/demo.c:57:    for(i = 0; i < net->n; ++i){
src/demo.c:58:        layer l = net->layers[i];
src/demo.c:60:            memcpy(predictions[demo_index] + count, net->layers[i].output, sizeof(float) * l.outputs);
src/demo.c:74:    for(i = 0; i < net->n; ++i){
src/demo.c:75:        layer l = net->layers[i];
src/demo.c:90:    layer l = net->layers[net->n-1];
src/demo.c:148:    letterbox_image_into(buff[buff_index], net->w, net->h, buff_letter[buff_index]);
src/demo.c:155:    if (c != -1) c = c%256;
src/demo.c:162:        demo_thresh -= .02;
src/demo.c:167:        demo_hier -= .02;
src/demo.c:224:    buff_letter[0] = letterbox_image(buff[0], net->w, net->h);
src/demo.c:225:    buff_letter[1] = letterbox_image(buff[0], net->w, net->h);
src/demo.c:226:    buff_letter[2] = letterbox_image(buff[0], net->w, net->h);
src/demo.c:240:            fps = 1./(what_time_is_it_now() - demo_time);
src/demo.c:292:   layer l = net->layers[net->n-1];
src/demo.c:306:   buff_letter[0] = letterbox_image(buff[0], net->w, net->h);
src/demo.c:307:   buff_letter[1] = letterbox_image(buff[0], net->w, net->h);
src/demo.c:308:   buff_letter[2] = letterbox_image(buff[0], net->w, net->h);
src/demo.c:329:    fps = 1./(what_time_is_it_now() - demo_time);
src/tree.c:11:    int n = llist->size;
src/tree.c:14:    for(i = 0; i < t->n; ++i){
src/tree.c:15:        t->leaf[i] = 0;
src/tree.c:17:            if (0==strcmp(t->name[i], leaves[j])){
src/tree.c:18:                t->leaf[i] = 1;
src/tree.c:32:        c = hier->parent[c];
src/tree.c:41:        int parent = hier->parent[j];
src/tree.c:48:            if(!hier->leaf[j]) predictions[j*stride] = 0;
src/tree.c:62:        for(i = 0; i < hier->group_size[group]; ++i){
src/tree.c:63:            int index = i + hier->group_offset[group];
src/tree.c:64:            float val = predictions[(i + hier->group_offset[group])*stride];
src/tree.c:72:            group = hier->child[max_i];
src/tree.c:73:            if(hier->child[max_i] < 0) return max_i;
src/tree.c:77:            return hier->parent[hier->group_offset[group]];
src/tree.c:89:    int last_parent = -1;
src/tree.c:95:        int parent = -1;
src/tree.c:101:        t.child[n] = -1;
src/tree.c:108:            t.group_offset[groups - 1] = n - group_size;
src/tree.c:110:            t.group_size[groups - 1] = group_size;
src/tree.c:124:    t.group_offset[groups - 1] = n - group_size;
src/tree.c:126:    t.group_size[groups - 1] = group_size;
src/rnn_layer.c:15:    int num = l->outputs*l->batch*steps;
src/rnn_layer.c:16:    l->output += num;
src/rnn_layer.c:17:    l->delta += num;
src/rnn_layer.c:18:    l->x += num;
src/rnn_layer.c:19:    l->x_norm += num;
src/rnn_layer.c:22:    l->output_gpu += num;
src/rnn_layer.c:23:    l->delta_gpu += num;
src/rnn_layer.c:24:    l->x_gpu += num;
src/rnn_layer.c:25:    l->x_norm_gpu += num;
src/rnn_layer.c:45:    l.input_layer->batch = batch;
src/rnn_layer.c:50:    l.self_layer->batch = batch;
src/rnn_layer.c:55:    l.output_layer->batch = batch;
src/rnn_layer.c:58:    l.output = l.output_layer->output;
src/rnn_layer.c:59:    l.delta = l.output_layer->delta;
src/rnn_layer.c:70:    l.output_gpu = l.output_layer->output_gpu;
src/rnn_layer.c:71:    l.delta_gpu = l.output_layer->delta_gpu;
src/rnn_layer.c:73:    cudnnSetTensor4dDescriptor(l.input_layer->dstTensorDesc, CUDNN_TENSOR_NCHW, CUDNN_DATA_FLOAT, batch, l.input_layer->out_c, l.input_layer->out_h, l.input_layer->out_w); 
src/rnn_layer.c:74:    cudnnSetTensor4dDescriptor(l.self_layer->dstTensorDesc, CUDNN_TENSOR_NCHW, CUDNN_DATA_FLOAT, batch, l.self_layer->out_c, l.self_layer->out_h, l.self_layer->out_w); 
src/rnn_layer.c:75:    cudnnSetTensor4dDescriptor(l.output_layer->dstTensorDesc, CUDNN_TENSOR_NCHW, CUDNN_DATA_FLOAT, batch, l.output_layer->out_c, l.output_layer->out_h, l.output_layer->out_w); 
src/rnn_layer.c:139:    increment_layer(&input_layer, l.steps-1);
src/rnn_layer.c:140:    increment_layer(&self_layer, l.steps-1);
src/rnn_layer.c:141:    increment_layer(&output_layer, l.steps-1);
src/rnn_layer.c:144:    for (i = l.steps-1; i >= 0; --i) {
src/rnn_layer.c:152:        l.state -= l.outputs*l.batch;
src/rnn_layer.c:155:           copy_cpu(l.outputs * l.batch, input_layer.output - l.outputs*l.batch, 1, l.state, 1);
src/rnn_layer.c:156:           axpy_cpu(l.outputs * l.batch, 1, self_layer.output - l.outputs*l.batch, 1, l.state, 1);
src/rnn_layer.c:163:        s.delta = self_layer.delta - l.outputs*l.batch;
src/rnn_layer.c:168:        if (i > 0 && l.shortcut) axpy_cpu(l.outputs*l.batch, 1, self_layer.delta, 1, self_layer.delta - l.outputs*l.batch, 1);
src/rnn_layer.c:174:        increment_layer(&input_layer, -1);
src/rnn_layer.c:175:        increment_layer(&self_layer, -1);
src/rnn_layer.c:176:        increment_layer(&output_layer, -1);
src/rnn_layer.c:250:    increment_layer(&input_layer,  l.steps - 1);
src/rnn_layer.c:251:    increment_layer(&self_layer,   l.steps - 1);
src/rnn_layer.c:252:    increment_layer(&output_layer, l.steps - 1);
src/rnn_layer.c:255:    for (i = l.steps-1; i >= 0; --i) {
src/rnn_layer.c:266:            axpy_gpu(l.outputs * l.batch, 1, input_layer.output_gpu - l.outputs*l.batch, 1, l.state_gpu, 1);
src/rnn_layer.c:267:            axpy_gpu(l.outputs * l.batch, 1, self_layer.output_gpu - l.outputs*l.batch, 1, l.state_gpu, 1);
src/rnn_layer.c:275:        s.delta_gpu = (i > 0) ? self_layer.delta_gpu - l.outputs*l.batch : 0;
src/rnn_layer.c:284:        increment_layer(&input_layer,  -1);
src/rnn_layer.c:285:        increment_layer(&self_layer,   -1);
src/rnn_layer.c:286:        increment_layer(&output_layer, -1);
src/option_list.c:64:    if(i == len-1) return 0;
src/option_list.c:73:    p->key = key;
src/option_list.c:74:    p->val = val;
src/option_list.c:75:    p->used = 0;
src/option_list.c:81:    node *n = l->front;
src/option_list.c:83:        kvp *p = (kvp *)n->val;
src/option_list.c:84:        if(!p->used){
src/option_list.c:85:            fprintf(stderr, "Unused field: '%s = %s'\n", p->key, p->val);
src/option_list.c:87:        n = n->next;
src/option_list.c:93:    node *n = l->front;
src/option_list.c:95:        kvp *p = (kvp *)n->val;
src/option_list.c:96:        if(strcmp(p->key, key) == 0){
src/option_list.c:97:            p->used = 1;
src/option_list.c:98:            return p->val;
src/option_list.c:100:        n = n->next;
src/batchnorm_layer.c:99:        mean_delta[i] *= (-1./sqrt(variance[i] + .00001f));
src/batchnorm_layer.c:111:                variance_delta[i] += delta[index]*(x[index] - mean[i]);
src/batchnorm_layer.c:114:        variance_delta[i] *= -.5 * pow(variance[i] + .00001f, (float)(-3./2.));
src/batchnorm_layer.c:124:                delta[index] = delta[index] * 1./(sqrt(variance[f] + .00001f)) + variance_delta[f] * 2. * (x[index] - mean[f]) / (spatial * batch) + mean_delta[f]/(spatial*batch);
src/gru_layer.c:15:    int num = l->outputs*l->batch*steps;
src/gru_layer.c:16:    l->output += num;
src/gru_layer.c:17:    l->delta += num;
src/gru_layer.c:18:    l->x += num;
src/gru_layer.c:19:    l->x_norm += num;
src/gru_layer.c:22:    l->output_gpu += num;
src/gru_layer.c:23:    l->delta_gpu += num;
src/gru_layer.c:24:    l->x_gpu += num;
src/gru_layer.c:25:    l->x_norm_gpu += num;
src/gru_layer.c:42:    l.uz->batch = batch;
src/gru_layer.c:47:    l.wz->batch = batch;
src/gru_layer.c:52:    l.ur->batch = batch;
src/gru_layer.c:57:    l.wr->batch = batch;
src/gru_layer.c:64:    l.uh->batch = batch;
src/gru_layer.c:69:    l.wh->batch = batch;
src/gru_layer.c:106:    cudnnSetTensor4dDescriptor(l.uz->dstTensorDesc, CUDNN_TENSOR_NCHW, CUDNN_DATA_FLOAT, batch, l.uz->out_c, l.uz->out_h, l.uz->out_w); 
src/gru_layer.c:107:    cudnnSetTensor4dDescriptor(l.uh->dstTensorDesc, CUDNN_TENSOR_NCHW, CUDNN_DATA_FLOAT, batch, l.uh->out_c, l.uh->out_h, l.uh->out_w); 
src/gru_layer.c:108:    cudnnSetTensor4dDescriptor(l.ur->dstTensorDesc, CUDNN_TENSOR_NCHW, CUDNN_DATA_FLOAT, batch, l.ur->out_c, l.ur->out_h, l.ur->out_w); 
src/gru_layer.c:109:    cudnnSetTensor4dDescriptor(l.wz->dstTensorDesc, CUDNN_TENSOR_NCHW, CUDNN_DATA_FLOAT, batch, l.wz->out_c, l.wz->out_h, l.wz->out_w); 
src/gru_layer.c:110:    cudnnSetTensor4dDescriptor(l.wh->dstTensorDesc, CUDNN_TENSOR_NCHW, CUDNN_DATA_FLOAT, batch, l.wh->out_c, l.wh->out_h, l.wh->out_w); 
src/gru_layer.c:111:    cudnnSetTensor4dDescriptor(l.wr->dstTensorDesc, CUDNN_TENSOR_NCHW, CUDNN_DATA_FLOAT, batch, l.wr->out_c, l.wr->out_h, l.wr->out_w); 
src/gru_layer.c:315:    increment_layer(&uz, l.steps - 1);
src/gru_layer.c:316:    increment_layer(&ur, l.steps - 1);
src/gru_layer.c:317:    increment_layer(&uh, l.steps - 1);
src/gru_layer.c:319:    increment_layer(&wz, l.steps - 1);
src/gru_layer.c:320:    increment_layer(&wr, l.steps - 1);
src/gru_layer.c:321:    increment_layer(&wh, l.steps - 1);
src/gru_layer.c:323:    net.input_gpu += l.inputs*l.batch*(l.steps-1);
src/gru_layer.c:324:    if(net.delta_gpu) net.delta_gpu += l.inputs*l.batch*(l.steps-1);
src/gru_layer.c:325:    l.output_gpu += l.outputs*l.batch*(l.steps-1);
src/gru_layer.c:326:    l.delta_gpu += l.outputs*l.batch*(l.steps-1);
src/gru_layer.c:328:    for (i = l.steps-1; i >= 0; --i) {
src/gru_layer.c:329:        if(i != 0) copy_gpu(l.outputs*l.batch, l.output_gpu - l.outputs*l.batch, 1, l.state_gpu, 1);
src/gru_layer.c:331:        float *prev_delta_gpu = (i == 0) ? 0 : l.delta_gpu - l.outputs*l.batch;
src/gru_layer.c:392:        net.input_gpu -= l.inputs*l.batch;
src/gru_layer.c:393:        if(net.delta_gpu) net.delta_gpu -= l.inputs*l.batch;
src/gru_layer.c:394:        l.output_gpu -= l.outputs*l.batch;
src/gru_layer.c:395:        l.delta_gpu -= l.outputs*l.batch;
src/gru_layer.c:396:        increment_layer(&uz, -1);
src/gru_layer.c:397:        increment_layer(&ur, -1);
src/gru_layer.c:398:        increment_layer(&uh, -1);
src/gru_layer.c:400:        increment_layer(&wz, -1);
src/gru_layer.c:401:        increment_layer(&wr, -1);
src/gru_layer.c:402:        increment_layer(&wh, -1);
src/crnn_layer.c:15:    int num = l->outputs*l->batch*steps;
src/crnn_layer.c:16:    l->output += num;
src/crnn_layer.c:17:    l->delta += num;
src/crnn_layer.c:18:    l->x += num;
src/crnn_layer.c:19:    l->x_norm += num;
src/crnn_layer.c:22:    l->output_gpu += num;
src/crnn_layer.c:23:    l->delta_gpu += num;
src/crnn_layer.c:24:    l->x_gpu += num;
src/crnn_layer.c:25:    l->x_norm_gpu += num;
src/crnn_layer.c:52:    l.input_layer->batch = batch;
src/crnn_layer.c:57:    l.self_layer->batch = batch;
src/crnn_layer.c:62:    l.output_layer->batch = batch;
src/crnn_layer.c:64:    l.output = l.output_layer->output;
src/crnn_layer.c:65:    l.delta = l.output_layer->delta;
src/crnn_layer.c:77:    l.output_gpu = l.output_layer->output_gpu;
src/crnn_layer.c:78:    l.delta_gpu = l.output_layer->delta_gpu;
src/crnn_layer.c:140:    increment_layer(&input_layer, l.steps-1);
src/crnn_layer.c:141:    increment_layer(&self_layer, l.steps-1);
src/crnn_layer.c:142:    increment_layer(&output_layer, l.steps-1);
src/crnn_layer.c:145:    for (i = l.steps-1; i >= 0; --i) {
src/crnn_layer.c:153:        l.state -= l.hidden*l.batch;
src/crnn_layer.c:156:           copy_cpu(l.hidden * l.batch, input_layer.output - l.hidden*l.batch, 1, l.state, 1);
src/crnn_layer.c:157:           axpy_cpu(l.hidden * l.batch, 1, self_layer.output - l.hidden*l.batch, 1, l.state, 1);
src/crnn_layer.c:164:        s.delta = self_layer.delta - l.hidden*l.batch;
src/crnn_layer.c:169:        if (i > 0 && l.shortcut) axpy_cpu(l.hidden*l.batch, 1, self_layer.delta, 1, self_layer.delta - l.hidden*l.batch, 1);
src/crnn_layer.c:175:        increment_layer(&input_layer, -1);
src/crnn_layer.c:176:        increment_layer(&self_layer, -1);
src/crnn_layer.c:177:        increment_layer(&output_layer, -1);
src/crnn_layer.c:252:    increment_layer(&input_layer,  l.steps - 1);
src/crnn_layer.c:253:    increment_layer(&self_layer,   l.steps - 1);
src/crnn_layer.c:254:    increment_layer(&output_layer, l.steps - 1);
src/crnn_layer.c:256:    for (i = l.steps-1; i >= 0; --i) {
src/crnn_layer.c:264:        l.state_gpu -= l.hidden*l.batch;
src/crnn_layer.c:267:        s.delta_gpu = self_layer.delta_gpu - l.hidden*l.batch;
src/crnn_layer.c:272:        if (i > 0 && l.shortcut) axpy_gpu(l.hidden*l.batch, 1, self_layer.delta_gpu, 1, self_layer.delta_gpu - l.hidden*l.batch, 1);
src/crnn_layer.c:278:        increment_layer(&input_layer,  -1);
src/crnn_layer.c:279:        increment_layer(&self_layer,   -1);
src/crnn_layer.c:280:        increment_layer(&output_layer, -1);
src/reorg_layer.c:38:        fprintf(stderr, "reorg              %4d   ->  %4d\n",  l.inputs, l.outputs);
src/reorg_layer.c:40:        fprintf(stderr, "reorg              /%2d  %4d x%4d x%4d   ->  %4d x%4d x%4d\n",  stride, w, h, c, l.out_w, l.out_h, l.out_c);
src/reorg_layer.c:60:    int stride = l->stride;
src/reorg_layer.c:61:    int c = l->c;
src/reorg_layer.c:63:    l->h = h;
src/reorg_layer.c:64:    l->w = w;
src/reorg_layer.c:66:    if(l->reverse){
src/reorg_layer.c:67:        l->out_w = w*stride;
src/reorg_layer.c:68:        l->out_h = h*stride;
src/reorg_layer.c:69:        l->out_c = c/(stride*stride);
src/reorg_layer.c:71:        l->out_w = w/stride;
src/reorg_layer.c:72:        l->out_h = h/stride;
src/reorg_layer.c:73:        l->out_c = c*(stride*stride);
src/reorg_layer.c:76:    l->outputs = l->out_h * l->out_w * l->out_c;
src/reorg_layer.c:77:    l->inputs = l->outputs;
src/reorg_layer.c:78:    int output_size = l->outputs * l->batch;
src/reorg_layer.c:80:    l->output = realloc(l->output, output_size * sizeof(float));
src/reorg_layer.c:81:    l->delta = realloc(l->delta, output_size * sizeof(float));
src/reorg_layer.c:84:    cuda_free(l->output_gpu);
src/reorg_layer.c:85:    cuda_free(l->delta_gpu);
src/reorg_layer.c:86:    l->output_gpu  = cuda_make_array(l->output, output_size);
src/reorg_layer.c:87:    l->delta_gpu   = cuda_make_array(l->delta,  output_size);
src/data.c:158:        boxes[count].left   = x - w/2;
src/data.c:160:        boxes[count].top    = y - h/2;
src/data.c:191:        boxes[i].left   = boxes[i].left  * sx - dx;
src/data.c:192:        boxes[i].right  = boxes[i].right * sx - dx;
src/data.c:193:        boxes[i].top    = boxes[i].top   * sy - dy;
src/data.c:194:        boxes[i].bottom = boxes[i].bottom* sy - dy;
src/data.c:198:            boxes[i].left = 1. - boxes[i].right;
src/data.c:199:            boxes[i].right = 1. - swap;
src/data.c:209:        boxes[i].w = (boxes[i].right - boxes[i].left);
src/data.c:210:        boxes[i].h = (boxes[i].bottom - boxes[i].top);
src/data.c:285:        x = x*num_boxes - col;
src/data.c:286:        y = y*num_boxes - row;
src/data.c:312:        curr = 1 - curr;
src/data.c:331:    for(k = 0; k < src.c-1; ++k){
src/data.c:359:    box b = {minx, miny, maxx-minx + 1, maxy-miny + 1};
src/data.c:397:    if(i < num_boxes) truth[i*(mw*mh+1)] = -1;
src/data.c:480:        truth[(i-sub)*5+0] = x;
src/data.c:481:        truth[(i-sub)*5+1] = y;
src/data.c:482:        truth[(i-sub)*5+2] = w;
src/data.c:483:        truth[(i-sub)*5+3] = h;
src/data.c:484:        truth[(i-sub)*5+4] = id;
src/data.c:512:        truth[i*NUMCHARS + NUMCHARS-1] = 1;
src/data.c:563:            int parent = hierarchy->parent[j];
src/data.c:566:                parent = hierarchy->parent[parent];
src/data.c:572:    for(j = 0; j < hierarchy->groups; ++j){
src/data.c:575:        for(i = 0; i < hierarchy->group_size[j]; ++i){
src/data.c:582:            for(i = 0; i < hierarchy->group_size[j]; ++i){
src/data.c:586:        count += hierarchy->group_size[j];
src/data.c:888:        int pleft  = rand_uniform(-dw, dw);
src/data.c:889:        int pright = rand_uniform(-dw, dw);
src/data.c:890:        int ptop   = rand_uniform(-dh, dh);
src/data.c:891:        int pbot   = rand_uniform(-dh, dh);
src/data.c:893:        int swidth =  ow - pleft - pright;
src/data.c:894:        int sheight = oh - ptop - pbot;
src/data.c:1007:    int pleft  = rand_uniform(-dw, dw);
src/data.c:1008:    int pright = rand_uniform(-dw, dw);
src/data.c:1009:    int ptop   = rand_uniform(-dh, dh);
src/data.c:1010:    int pbot   = rand_uniform(-dh, dh);
src/data.c:1012:    int swidth =  w - pleft - pright;
src/data.c:1013:    int sheight = h - ptop - pbot;
src/data.c:1056:        float new_ar = (orig.w + rand_uniform(-dw, dw)) / (orig.h + rand_uniform(-dh, dh));
src/data.c:1070:        float dx = rand_uniform(0, w - nw);
src/data.c:1071:        float dy = rand_uniform(0, h - nh);
src/data.c:1082:        fill_truth_detection(random_paths[i], boxes, d.y.vals[i], classes, flip, -dx/w, -dy/h, nw/w, nh/h);
src/data.c:1156:        args.n = (i+1) * total/args.threads - i * total/args.threads;
src/data.c:1163:    out->shallow = 0;
src/data.c:1192:    char **replace_paths = find_replace_paths(paths, n, ".png", "-label.png");
src/data.c:1310:            int x = (i%divs) * orig.w / divs - (d.w - orig.w/divs)/2;
src/data.c:1311:            int y = (i/divs) * orig.h / divs - (d.h - orig.h/divs)/2;
src/data.c:1476:            d.y.vals[i][j] = eps * scale + (1-eps) * d.y.vals[i][j];
src/data.c:1494:        sprintf(buff, "data/cifar/cifar-10-batches-bin/data_batch_%d.bin", b+1);
src/data.c:1539:            else if(board[i] == '2') val = -1;
src/data.c:1564:    for(i = d.X.rows-1; i > 0; --i){
src/data.c:1617:    p.X.rows = d.X.rows * (part + 1) / total - d.X.rows * part / total;
src/data.c:1618:    p.y.rows = d.y.rows * (part + 1) / total - d.y.rows * part / total;
src/data.c:1659:    test.X.rows = test.y.rows = end-start;
src/data.c:1660:    train.X.rows = train.y.rows = d.X.rows - (end-start);
src/data.c:1674:        test.X.vals[i-start] = d.X.vals[i];
src/data.c:1675:        test.y.vals[i-start] = d.y.vals[i];
src/data.c:1678:        train.X.vals[i-(end-start)] = d.X.vals[i];
src/data.c:1679:        train.y.vals[i-(end-start)] = d.y.vals[i];
src/convolutional_layer.c:17:    float *swap = l->weights;
src/convolutional_layer.c:18:    l->weights = l->binary_weights;
src/convolutional_layer.c:19:    l->binary_weights = swap;
src/convolutional_layer.c:22:    swap = l->weights_gpu;
src/convolutional_layer.c:23:    l->weights_gpu = l->binary_weights_gpu;
src/convolutional_layer.c:24:    l->binary_weights_gpu = swap;
src/convolutional_layer.c:38:            binary[f*size + i] = (weights[f*size + i] > 0) ? mean : -mean;
src/convolutional_layer.c:47:        binary[i] = (input[i] > 0) ? 1 : -1;
src/convolutional_layer.c:61:            binary[i*size + s] = (input[i*size + s] > 0) ? mean : -mean;
src/convolutional_layer.c:68:    return (l.h + 2*l.pad - l.size) / l.stride + 1;
src/convolutional_layer.c:73:    return (l.w + 2*l.pad - l.size) / l.stride + 1;
src/convolutional_layer.c:125:    cudnnSetTensor4dDescriptor(l->dsrcTensorDesc, CUDNN_TENSOR_NCHW, CUDNN_DATA_FLOAT, l->batch, l->c, l->h, l->w); 
src/convolutional_layer.c:126:    cudnnSetTensor4dDescriptor(l->ddstTensorDesc, CUDNN_TENSOR_NCHW, CUDNN_DATA_FLOAT, l->batch, l->out_c, l->out_h, l->out_w); 
src/convolutional_layer.c:128:    cudnnSetTensor4dDescriptor(l->srcTensorDesc, CUDNN_TENSOR_NCHW, CUDNN_DATA_FLOAT, l->batch, l->c, l->h, l->w); 
src/convolutional_layer.c:129:    cudnnSetTensor4dDescriptor(l->dstTensorDesc, CUDNN_TENSOR_NCHW, CUDNN_DATA_FLOAT, l->batch, l->out_c, l->out_h, l->out_w); 
src/convolutional_layer.c:130:    cudnnSetTensor4dDescriptor(l->normTensorDesc, CUDNN_TENSOR_NCHW, CUDNN_DATA_FLOAT, 1, l->out_c, 1, 1); 
src/convolutional_layer.c:132:    cudnnSetFilter4dDescriptor(l->dweightDesc, CUDNN_DATA_FLOAT, CUDNN_TENSOR_NCHW, l->n, l->c/l->groups, l->size, l->size); 
src/convolutional_layer.c:133:    cudnnSetFilter4dDescriptor(l->weightDesc, CUDNN_DATA_FLOAT, CUDNN_TENSOR_NCHW, l->n, l->c/l->groups, l->size, l->size); 
src/convolutional_layer.c:135:    cudnnSetConvolution2dDescriptor(l->convDesc, l->pad, l->pad, l->stride, l->stride, 1, 1, CUDNN_CROSS_CORRELATION, CUDNN_DATA_FLOAT);
src/convolutional_layer.c:137:    cudnnSetConvolution2dDescriptor(l->convDesc, l->pad, l->pad, l->stride, l->stride, 1, 1, CUDNN_CROSS_CORRELATION);
src/convolutional_layer.c:141:    cudnnSetConvolutionGroupCount(l->convDesc, l->groups);
src/convolutional_layer.c:143:    if(l->groups > 1){
src/convolutional_layer.c:148:            l->srcTensorDesc,
src/convolutional_layer.c:149:            l->weightDesc,
src/convolutional_layer.c:150:            l->convDesc,
src/convolutional_layer.c:151:            l->dstTensorDesc,
src/convolutional_layer.c:154:            &l->fw_algo);
src/convolutional_layer.c:156:            l->weightDesc,
src/convolutional_layer.c:157:            l->ddstTensorDesc,
src/convolutional_layer.c:158:            l->convDesc,
src/convolutional_layer.c:159:            l->dsrcTensorDesc,
src/convolutional_layer.c:162:            &l->bd_algo);
src/convolutional_layer.c:164:            l->srcTensorDesc,
src/convolutional_layer.c:165:            l->ddstTensorDesc,
src/convolutional_layer.c:166:            l->convDesc,
src/convolutional_layer.c:167:            l->dweightDesc,
src/convolutional_layer.c:170:            &l->bf_algo);
src/convolutional_layer.c:383:    fprintf(stderr, "conv  %5d %2d x%2d /%2d  %4d x%4d x%4d   ->  %4d x%4d x%4d  %5.3f BFLOPs\n", n, size, size, stride, w, h, c, l.out_w, l.out_h, l.out_c, (2.0 * l.n * l.size*l.size*l.c/l.groups * l.out_h*l.out_w)/1000000000.);
src/convolutional_layer.c:396:        l.biases[i] -= l.rolling_mean[i] * scale;
src/convolutional_layer.c:430:    l->w = w;
src/convolutional_layer.c:431:    l->h = h;
src/convolutional_layer.c:435:    l->out_w = out_w;
src/convolutional_layer.c:436:    l->out_h = out_h;
src/convolutional_layer.c:438:    l->outputs = l->out_h * l->out_w * l->out_c;
src/convolutional_layer.c:439:    l->inputs = l->w * l->h * l->c;
src/convolutional_layer.c:441:    l->output = realloc(l->output, l->batch*l->outputs*sizeof(float));
src/convolutional_layer.c:442:    l->delta  = realloc(l->delta,  l->batch*l->outputs*sizeof(float));
src/convolutional_layer.c:443:    if(l->batch_normalize){
src/convolutional_layer.c:444:        l->x = realloc(l->x, l->batch*l->outputs*sizeof(float));
src/convolutional_layer.c:445:        l->x_norm  = realloc(l->x_norm, l->batch*l->outputs*sizeof(float));
src/convolutional_layer.c:449:    cuda_free(l->delta_gpu);
src/convolutional_layer.c:450:    cuda_free(l->output_gpu);
src/convolutional_layer.c:452:    l->delta_gpu =  cuda_make_array(l->delta,  l->batch*l->outputs);
src/convolutional_layer.c:453:    l->output_gpu = cuda_make_array(l->output, l->batch*l->outputs);
src/convolutional_layer.c:455:    if(l->batch_normalize){
src/convolutional_layer.c:456:        cuda_free(l->x_gpu);
src/convolutional_layer.c:457:        cuda_free(l->x_norm_gpu);
src/convolutional_layer.c:459:        l->x_gpu = cuda_make_array(l->output, l->batch*l->outputs);
src/convolutional_layer.c:460:        l->x_norm_gpu = cuda_make_array(l->output, l->batch*l->outputs);
src/convolutional_layer.c:466:    l->workspace_size = get_workspace_size(*l);
src/convolutional_layer.c:546:    network net = input->net;
src/convolutional_layer.c:547:    layer l = input->layer;
src/convolutional_layer.c:657:    axpy_cpu(l.nweights, -decay*batch, l.weights, 1, l.weight_updates, 1);
src/shortcut_layer.c:11:    fprintf(stderr, "res  %3d                %4d x%4d x%4d   ->  %4d x%4d x%4d\n",index, w2,h2,c2, w,h,c);
src/shortcut_layer.c:50:    assert(l->w == l->out_w);
src/shortcut_layer.c:51:    assert(l->h == l->out_h);
src/shortcut_layer.c:52:    l->w = l->out_w = w;
src/shortcut_layer.c:53:    l->h = l->out_h = h;
src/shortcut_layer.c:54:    l->outputs = w*h*l->out_c;
src/shortcut_layer.c:55:    l->inputs = l->outputs;
src/shortcut_layer.c:56:    l->delta =  realloc(l->delta, l->outputs*l->batch*sizeof(float));
src/shortcut_layer.c:57:    l->output = realloc(l->output, l->outputs*l->batch*sizeof(float));
src/shortcut_layer.c:60:    cuda_free(l->output_gpu);
src/shortcut_layer.c:61:    cuda_free(l->delta_gpu);
src/shortcut_layer.c:62:    l->output_gpu  = cuda_make_array(l->output, l->outputs*l->batch);
src/shortcut_layer.c:63:    l->delta_gpu   = cuda_make_array(l->delta,  l->outputs*l->batch);
src/shortcut_layer.c:79:    network net = input->net;
src/shortcut_layer.c:80:    layer l = input->layer;
src/shortcut_layer.c:108:    network net = input->net;
src/shortcut_layer.c:109:    layer l = input->layer;
src/activations.h:27:    else return (x - n) + floor(x/2.);
src/activations.h:31:    if (x < -1) return -1;
src/activations.h:36:static inline float logistic_activate(float x){return 1./(1. + exp(-x));}
src/activations.h:37:static inline float loggy_activate(float x){return 2./(1. + exp(-x)) - 1;}
src/activations.h:39:static inline float elu_activate(float x){return (x >= 0)*x + (x < 0)*(exp(x)-1);}
src/activations.h:40:static inline float selu_activate(float x){return (x >= 0)*1.0507*x + (x < 0)*1.0507*1.6732*(exp(x)-1);}
src/activations.h:44:static inline float tanh_activate(float x){return (exp(2*x)-1)/(exp(2*x)+1);}
src/activations.h:47:    if(x < -4) return .01 * (x + 4);
src/activations.h:48:    if(x > 4)  return .01 * (x - 4) + 1;
src/activations.h:55:    if(x > 1) return .001*(x-1) + 1;
src/activations.h:66:    if (x > -1 && x < 1) return 1;
src/activations.h:70:static inline float logistic_gradient(float x){return (1-x)*x;}
src/activations.h:74:    return 2*(1-y)*y;
src/activations.h:87:static inline float tanh_gradient(float x){return 1-x*x;}
src/im2col.c:6:    row -= pad;
src/im2col.c:7:    col -= pad;
src/im2col.c:21:    int height_col = (height + 2*pad - ksize) / stride + 1;
src/im2col.c:22:    int width_col = (width + 2*pad - ksize) / stride + 1;
src/compare.c:13:    float avg_loss = -1;
src/compare.c:25:    int N = plist->size;
src/compare.c:52:        printf("Loaded: %lf seconds\n", sec(clock()-time));
src/compare.c:55:        if(avg_loss == -1) avg_loss = loss;
src/compare.c:57:        printf("%.3f: %f, %f avg, %lf seconds, %ld images\n", (float)*net.seen/N, loss, avg_loss, sec(clock()-time), *net.seen);
src/compare.c:76:    free_ptrs((void**)paths, plist->size);
src/compare.c:93:    int N = plist->size/2;
src/compare.c:100:    int num = (i+1)*N/splits - i*N/splits;
src/compare.c:121:        num = (i+1)*N/splits - i*N/splits;
src/compare.c:127:        printf("Loaded: %d images in %lf seconds\n", val.X.rows, sec(clock()-time));
src/compare.c:143:        printf("%d: Acc: %f, %lf seconds, %d images\n", i, (float)correct/total, sec(clock()-time), val.X.rows);
src/compare.c:165:    if(box1.elos[current_class] >  box2.elos[current_class]) return -1;
src/compare.c:190:    return -1;
src/compare.c:196:    float EA = 1./(1+pow(10, (b->elos[class] - a->elos[class])/400.));
src/compare.c:197:    float EB = 1./(1+pow(10, (a->elos[class] - b->elos[class])/400.));
src/compare.c:200:    a->elos[class] += k*(SA - EA);
src/compare.c:201:    b->elos[class] += k*(SB - EB);
src/compare.c:206:    image im1 = load_image_color(a->filename, net.w, net.h);
src/compare.c:207:    image im2 = load_image_color(b->filename, net.w, net.h);
src/compare.c:240:    int N = plist->size;
src/compare.c:255:    printf("Sorted in %d compares, %f secs\n", total_compares, sec(clock()-time));
src/compare.c:274:    int N = plist->size;
src/compare.c:295:            bbox_fight(net, boxes+i*2, boxes+i*2+1, classes, -1);
src/compare.c:297:        printf("Round: %f secs, %d remaining\n", sec(clock()-round_time), N);
src/compare.c:320:            printf("Round: %f secs, %d remaining\n", sec(clock()-round_time), N);
src/compare.c:330:    printf("Tournament in %d compares, %f secs\n", total_compares, sec(clock()-time));
src/box.c:12:        diff = a.prob[b.sort_class] - b.prob[b.sort_class];
src/box.c:14:        diff = a.objectness - b.objectness;
src/box.c:17:    else if(diff > 0) return -1;
src/box.c:24:    k = total-1;
src/box.c:30:            --k;
src/box.c:31:            --i;
src/box.c:37:        dets[i].sort_class = -1;
src/box.c:61:    k = total-1;
src/box.c:67:            --k;
src/box.c:68:            --i;
src/box.c:106:    float l1 = a.x - a.w/2;
src/box.c:107:    float l2 = b.x - b.w/2;
src/box.c:109:        d.dx -= 1;
src/box.c:119:        d.dx = -1;
src/box.c:129:    float t1 = a.y - a.h/2;
src/box.c:130:    float t2 = b.y - b.h/2;
src/box.c:132:        d.dy -= 1;
src/box.c:142:        d.dy = -1;
src/box.c:154:    float l1 = x1 - w1/2;
src/box.c:155:    float l2 = x2 - w2/2;
src/box.c:160:    return right - left;
src/box.c:175:    float u = a.w*a.h + b.w*b.h - i;
src/box.c:186:    return sqrt(pow(a.x-b.x, 2) + 
src/box.c:187:                pow(a.y-b.y, 2) + 
src/box.c:188:                pow(a.w-b.w, 2) + 
src/box.c:189:                pow(a.h-b.h, 2));
src/box.c:212:    du.dw = a.h - di.dw;
src/box.c:213:    du.dh = a.w - di.dh;
src/box.c:214:    du.dx = -di.dx;
src/box.c:215:    du.dy = -di.dy;
src/box.c:237:    xinter = (xinter - inter)/(.0001);
src/box.c:238:    yinter = (yinter - inter)/(.0001);
src/box.c:239:    winter = (winter - inter)/(.0001);
src/box.c:240:    hinter = (hinter - inter)/(.0001);
src/box.c:259:    xinter = (xinter - inter)/(.0001);
src/box.c:260:    yinter = (yinter - inter)/(.0001);
src/box.c:261:    winter = (winter - inter)/(.0001);
src/box.c:262:    hinter = (hinter - inter)/(.0001);
src/box.c:279:    iou = (1-iou)*(1-iou);
src/box.c:288:    xiou = ((1-xiou)*(1-xiou) - iou)/(.00001);
src/box.c:289:    yiou = ((1-yiou)*(1-yiou) - iou)/(.00001);
src/box.c:290:    wiou = ((1-wiou)*(1-wiou) - iou)/(.00001);
src/box.c:291:    hiou = ((1-hiou)*(1-hiou) - iou)/(.00001);
src/box.c:304:        dd.dx = b.x - a.x;
src/box.c:305:        dd.dy = b.y - a.y;
src/box.c:306:        dd.dw = b.w - a.w;
src/box.c:307:        dd.dh = b.h - a.h;
src/box.c:311:    dd.dx = 2*pow((1-(i/u)),1)*(di.dx*u - du.dx*i)/(u*u);
src/box.c:312:    dd.dy = 2*pow((1-(i/u)),1)*(di.dy*u - du.dy*i)/(u*u);
src/box.c:313:    dd.dw = 2*pow((1-(i/u)),1)*(di.dw*u - du.dw*i)/(u*u);
src/box.c:314:    dd.dh = 2*pow((1-(i/u)),1)*(di.dh*u - du.dh*i)/(u*u);
src/box.c:342:    encode.x = (b.x - anchor.x) / anchor.w;
src/box.c:343:    encode.y = (b.y - anchor.y) / anchor.h;
src/softmax_layer.c:51:        for (i = 0; i < l.softmax_tree->groups; ++i) {
src/softmax_layer.c:52:            int group_size = l.softmax_tree->group_size[i];
src/softmax_layer.c:69:    network net = input->net;
src/softmax_layer.c:70:    layer l = input->layer;
src/softmax_layer.c:74:        for (i = 0; i < l.softmax_tree->groups; ++i) {
src/softmax_layer.c:75:            int group_size = l.softmax_tree->group_size[i];
src/softmax_layer.c:113:        for (i = 0; i < l.softmax_tree->groups; ++i) {
src/softmax_layer.c:114:            int group_size = l.softmax_tree->group_size[i];
src/softmax_layer.c:140:    network net = input->net;
src/softmax_layer.c:141:    layer l = input->layer;
src/softmax_layer.c:173:            for (i = 0; i < l.softmax_tree->groups; ++i) {
src/softmax_layer.c:174:                int group_size = l.softmax_tree->group_size[i];
src/data.h:13:    int dx = (max/2) - x;
src/data.h:14:    if (dx < 0) dx = -dx;
src/data.h:15:    dx = (max/2) + 1 - dx;
src/yolo_layer.c:65:    l->w = w;
src/yolo_layer.c:66:    l->h = h;
src/yolo_layer.c:68:    l->outputs = h*w*l->n*(l->classes + 4 + 1);
src/yolo_layer.c:69:    l->inputs = l->outputs;
src/yolo_layer.c:71:    l->output = realloc(l->output, l->batch*l->outputs*sizeof(float));
src/yolo_layer.c:72:    l->delta = realloc(l->delta, l->batch*l->outputs*sizeof(float));
src/yolo_layer.c:75:    cuda_free(l->delta_gpu);
src/yolo_layer.c:76:    cuda_free(l->output_gpu);
src/yolo_layer.c:78:    l->delta_gpu =     cuda_make_array(l->delta, l->batch*l->outputs);
src/yolo_layer.c:79:    l->output_gpu =    cuda_make_array(l->output, l->batch*l->outputs);
src/yolo_layer.c:98:    float tx = (truth.x*lw - i);
src/yolo_layer.c:99:    float ty = (truth.y*lh - j);
src/yolo_layer.c:103:    delta[index + 0*stride] = scale * (tx - x[index + 0*stride]);
src/yolo_layer.c:104:    delta[index + 1*stride] = scale * (ty - x[index + 1*stride]);
src/yolo_layer.c:105:    delta[index + 2*stride] = scale * (tw - x[index + 2*stride]);
src/yolo_layer.c:106:    delta[index + 3*stride] = scale * (th - x[index + 3*stride]);
src/yolo_layer.c:115:        delta[index + stride*class] = 1 - output[index + stride*class];
src/yolo_layer.c:120:        delta[index + stride*n] = ((n == class)?1 : 0) - output[index + stride*n];
src/yolo_layer.c:178:                    l.delta[obj_index] = 0 - l.output[obj_index];
src/yolo_layer.c:183:                        l.delta[obj_index] = 1 - l.output[obj_index];
src/yolo_layer.c:190:                        delta_yolo_box(truth, l.output, l.biases, l.mask[n], box_index, i, j, l.w, l.h, net.w, net.h, l.delta, (2-truth.w*truth.h), l.w*l.h);
src/yolo_layer.c:219:                float iou = delta_yolo_box(truth, l.output, l.biases, best_n, box_index, i, j, l.w, l.h, net.w, net.h, l.delta, (2-truth.w*truth.h), l.w*l.h);
src/yolo_layer.c:223:                l.delta[obj_index] = 1 - l.output[obj_index];
src/yolo_layer.c:261:        b.x =  (b.x - (netw - new_w)/2./netw) / ((float)new_w/netw); 
src/yolo_layer.c:262:        b.y =  (b.y - (neth - new_h)/2./neth) / ((float)new_h/neth); 
src/yolo_layer.c:299:                    int i2 = z*l.w*l.h*l.n + n*l.w*l.h + j*l.w + (l.w - i - 1);
src/yolo_layer.c:304:                        flip[i1] = -flip[i1];
src/yolo_layer.c:305:                        flip[i2] = -flip[i2];
src/col2im_kernels.cu:26:        int w_col_start = (w < ksize) ? 0 : (w - ksize) / stride + 1;
src/col2im_kernels.cu:28:        int h_col_start = (h < ksize) ? 0 : (h - ksize) / stride + 1;
src/col2im_kernels.cu:33:        int coeff_h_col = (1 - stride * ksize * height_col) * width_col;
src/col2im_kernels.cu:34:        int coeff_w_col = (1 - stride * height_col * width_col);
src/col2im_kernels.cu:48:    // kernel responsible for copying a single-channel grid.
src/col2im_kernels.cu:49:    int height_col = (height + 2 * pad - ksize) / stride + 1;
src/col2im_kernels.cu:50:    int width_col = (width + 2 * pad - ksize) / stride + 1;
src/col2im_kernels.cu:52:    col2im_gpu_kernel<<<(num_kernels+BLOCK-1)/BLOCK,
src/list.c:8:	l->size = 0;
src/list.c:9:	l->front = 0;
src/list.c:10:	l->back = 0;
src/list.c:18:    prev = n->prev;
src/list.c:19:    next = n->next;
src/list.c:20:    if(prev) prev->next = next;
src/list.c:21:    if(next) next->prev = prev;
src/list.c:22:    --s->size;
src/list.c:23:    if(s->front == n) s->front = next;
src/list.c:24:    if(s->back == n) s->back = prev;
src/list.c:29:    if(!l->back) return 0;
src/list.c:30:    node *b = l->back;
src/list.c:31:    void *val = b->val;
src/list.c:32:    l->back = b->prev;
src/list.c:33:    if(l->back) l->back->next = 0;
src/list.c:35:    --l->size;
src/list.c:43:	new->val = val;
src/list.c:44:	new->next = 0;
src/list.c:46:	if(!l->back){
src/list.c:47:		l->front = new;
src/list.c:48:		new->prev = 0;
src/list.c:50:		l->back->next = new;
src/list.c:51:		new->prev = l->back;
src/list.c:53:	l->back = new;
src/list.c:54:	++l->size;
src/list.c:61:		next = n->next;
src/list.c:69:	free_node(l->front);
src/list.c:75:	node *n = l->front;
src/list.c:77:		free(n->val);
src/list.c:78:		n = n->next;
src/list.c:84:    void **a = calloc(l->size, sizeof(void*));
src/list.c:86:    node *n = l->front;
src/list.c:88:        a[count++] = n->val;
src/list.c:89:        n = n->next;
src/maxpool_layer_kernels.cu:12:    int h = (in_h + pad - size)/stride + 1;
src/maxpool_layer_kernels.cu:13:    int w = (in_w + pad - size)/stride + 1;
src/maxpool_layer_kernels.cu:27:    int w_offset = -pad/2;
src/maxpool_layer_kernels.cu:28:    int h_offset = -pad/2;
src/maxpool_layer_kernels.cu:31:    float max = -INFINITY;
src/maxpool_layer_kernels.cu:32:    int max_i = -1;
src/maxpool_layer_kernels.cu:41:            float val = (valid != 0) ? input[index] : -INFINITY;
src/maxpool_layer_kernels.cu:52:    int h = (in_h + pad - size)/stride + 1;
src/maxpool_layer_kernels.cu:53:    int w = (in_w + pad - size)/stride + 1;
src/maxpool_layer_kernels.cu:55:    int area = (size-1)/stride;
src/maxpool_layer_kernels.cu:69:    int w_offset = -pad/2;
src/maxpool_layer_kernels.cu:70:    int h_offset = -pad/2;
src/maxpool_layer_kernels.cu:74:    for(l = -area; l < area+1; ++l){
src/maxpool_layer_kernels.cu:75:        for(m = -area; m < area+1; ++m){
src/maxpool_layer_kernels.cu:76:            int out_w = (j-w_offset)/stride + m;
src/maxpool_layer_kernels.cu:77:            int out_h = (i-h_offset)/stride + l;
src/maxpool_layer_kernels.cu:102:        network net = input->net;
src/maxpool_layer_kernels.cu:103:        layer layer = input->layer;
src/upsample_layer.c:19:        stride = -stride;
src/upsample_layer.c:39:    if(l.reverse) fprintf(stderr, "downsample         %2dx  %4d x%4d x%4d   ->  %4d x%4d x%4d\n", stride, w, h, c, l.out_w, l.out_h, l.out_c);
src/upsample_layer.c:40:    else fprintf(stderr, "upsample           %2dx  %4d x%4d x%4d   ->  %4d x%4d x%4d\n", stride, w, h, c, l.out_w, l.out_h, l.out_c);
src/upsample_layer.c:46:    l->w = w;
src/upsample_layer.c:47:    l->h = h;
src/upsample_layer.c:48:    l->out_w = w*l->stride;
src/upsample_layer.c:49:    l->out_h = h*l->stride;
src/upsample_layer.c:50:    if(l->reverse){
src/upsample_layer.c:51:        l->out_w = w/l->stride;
src/upsample_layer.c:52:        l->out_h = h/l->stride;
src/upsample_layer.c:54:    l->outputs = l->out_w*l->out_h*l->out_c;
src/upsample_layer.c:55:    l->inputs = l->h*l->w*l->c;
src/upsample_layer.c:56:    l->delta =  realloc(l->delta, l->outputs*l->batch*sizeof(float));
src/upsample_layer.c:57:    l->output = realloc(l->output, l->outputs*l->batch*sizeof(float));
src/upsample_layer.c:60:    cuda_free(l->output_gpu);
src/upsample_layer.c:61:    cuda_free(l->delta_gpu);
src/upsample_layer.c:62:    l->output_gpu  = cuda_make_array(l->output, l->outputs*l->batch);
src/upsample_layer.c:63:    l->delta_gpu   = cuda_make_array(l->delta,  l->outputs*l->batch);
src/dropout_layer.c:16:    l.scale = 1./(1.-probability);
src/dropout_layer.c:30:    fprintf(stderr, "dropout       p = %.2f               %4d  ->  %4d\n", probability, inputs, inputs);
src/dropout_layer.c:36:    l->rand = realloc(l->rand, l->inputs*l->batch*sizeof(float));
src/dropout_layer.c:38:    cuda_free(l->rand_gpu);
src/dropout_layer.c:40:    l->rand_gpu = cuda_make_array(l->rand, inputs*l->batch);
src/dropout_layer.c:59:    network net = input->net;
src/dropout_layer.c:60:    layer l = input->layer;
src/utils.h:12:    printf("%s took: %f seconds\n", #a, what_time_is_it_now() - start); \
src/normalization_layer.c:42:    int c = layer->c;
src/normalization_layer.c:43:    int batch = layer->batch;
src/normalization_layer.c:44:    layer->h = h;
src/normalization_layer.c:45:    layer->w = w;
src/normalization_layer.c:46:    layer->out_h = h;
src/normalization_layer.c:47:    layer->out_w = w;
src/normalization_layer.c:48:    layer->inputs = w*h*c;
src/normalization_layer.c:49:    layer->outputs = layer->inputs;
src/normalization_layer.c:50:    layer->output = realloc(layer->output, h * w * c * batch * sizeof(float));
src/normalization_layer.c:51:    layer->delta = realloc(layer->delta, h * w * c * batch * sizeof(float));
src/normalization_layer.c:52:    layer->squared = realloc(layer->squared, h * w * c * batch * sizeof(float));
src/normalization_layer.c:53:    layer->norms = realloc(layer->norms, h * w * c * batch * sizeof(float));
src/normalization_layer.c:55:    cuda_free(layer->output_gpu);
src/normalization_layer.c:56:    cuda_free(layer->delta_gpu); 
src/normalization_layer.c:57:    cuda_free(layer->squared_gpu); 
src/normalization_layer.c:58:    cuda_free(layer->norms_gpu);   
src/normalization_layer.c:59:    layer->output_gpu =  cuda_make_array(layer->output, h * w * c * batch);
src/normalization_layer.c:60:    layer->delta_gpu =   cuda_make_array(layer->delta, h * w * c * batch);
src/normalization_layer.c:61:    layer->squared_gpu = cuda_make_array(layer->squared, h * w * c * batch);
src/normalization_layer.c:62:    layer->norms_gpu =   cuda_make_array(layer->norms, h * w * c * batch);
src/normalization_layer.c:86:            copy_cpu(w*h, norms + w*h*(k-1), 1, norms + w*h*k, 1);
src/normalization_layer.c:87:            int prev = k - ((layer.size-1)/2) - 1;
src/normalization_layer.c:89:            if(prev >= 0)      axpy_cpu(w*h, -layer.alpha, squared + w*h*prev, 1, norms + w*h*k, 1);
src/normalization_layer.c:93:    pow_cpu(w*h*c*layer.batch, -layer.beta, layer.norms, 1, layer.output, 1);
src/normalization_layer.c:99:    // TODO This is approximate ;-)
src/normalization_layer.c:105:    pow_cpu(w*h*c*layer.batch, -layer.beta, layer.norms, 1, net.delta, 1);
src/normalization_layer.c:130:            copy_gpu(w*h, norms + w*h*(k-1), 1, norms + w*h*k, 1);
src/normalization_layer.c:131:            int prev = k - ((layer.size-1)/2) - 1;
src/normalization_layer.c:133:            if(prev >= 0)      axpy_gpu(w*h, -layer.alpha, squared + w*h*prev, 1, norms + w*h*k, 1);
src/normalization_layer.c:137:    pow_gpu(w*h*c*layer.batch, -layer.beta, layer.norms_gpu, 1, layer.output_gpu, 1);
src/normalization_layer.c:143:    // TODO This is approximate ;-)
src/normalization_layer.c:148:    pow_gpu(w*h*c*layer.batch, -layer.beta, layer.norms_gpu, 1, net.delta_gpu, 1);
src/im2col_kernels.cu:26:        int h_in = h_out * stride - pad;
src/im2col_kernels.cu:27:        int w_in = w_out * stride - pad;
src/im2col_kernels.cu:52:    // kernel responsible for copying a single-channel grid.
src/im2col_kernels.cu:53:    int height_col = (height + 2 * pad - ksize) / stride + 1;
src/im2col_kernels.cu:54:    int width_col = (width + 2 * pad - ksize) / stride + 1;
src/im2col_kernels.cu:56:    im2col_gpu_kernel<<<(num_kernels+BLOCK-1)/BLOCK,
src/stb_image_write.h:1:/* stb_image_write - v1.09 - public domain - http://nothings.org/stb/stb_image_write.h
src/stb_image_write.h:2:   writes out PNG/BMP/TGA/JPEG/HDR images to C stdio - Sean Barrett 2010-2015
src/stb_image_write.h:11:   Will probably not work correctly with strict-aliasing optimizations.
src/stb_image_write.h:13:   If using a modern Microsoft Compiler, non-safe versions of CRT calls may cause 
src/stb_image_write.h:23:   The PNG output is not optimal; it is 20-50% larger than the file
src/stb_image_write.h:27:   not optimal image file size or run-time performance.
src/stb_image_write.h:35:   You can #define STBIW_ZLIB_COMPRESS to use a custom zlib-style compress function
src/stb_image_write.h:51:     void stbi_flip_vertically_on_write(int flag); // flag is non-zero to flip data vertically
src/stb_image_write.h:54:   expected to open/close your file-equivalent before and after calling these:
src/stb_image_write.h:68:      int stbi_write_force_png_filter;         // defaults to -1; set to 0..5 to force a filter mode
src/stb_image_write.h:75:   Each function returns 0 on failure and non-0 on success.
src/stb_image_write.h:78:   is a rectangle of pixels stored from left-to-right, top-to-bottom.
src/stb_image_write.h:79:   Each pixel contains 'comp' channels of data stored interleaved with 8-bits
src/stb_image_write.h:82:   The *data pointer points to the first byte of the top-left-most pixel.
src/stb_image_write.h:91:   data are not consecutive in memory (e.g. sub-rectangles of a larger image),
src/stb_image_write.h:93:   formats do not. (Thus you cannot write a native-format BMP through the BMP
src/stb_image_write.h:100:   HDR expects linear float data. Since the format is always 32-bit rgb(e)
src/stb_image_write.h:104:   TGA supports RLE or non-RLE compressed data. To use non-RLE-compressed
src/stb_image_write.h:114:   Sean Barrett           -    PNG/BMP/TGA 
src/stb_image_write.h:115:   Baldur Karlsson        -    HDR
src/stb_image_write.h:116:   Jean-Sebastien Guay    -    TGA monochrome
src/stb_image_write.h:117:   Tim Kelsey             -    misc enhancements
src/stb_image_write.h:118:   Alan Hickman           -    TGA RLE
src/stb_image_write.h:119:   Emmanuel Julien        -    initial file IO callback implementation
src/stb_image_write.h:120:   Jon Olick              -    original jo_jpeg.cpp code
src/stb_image_write.h:121:   Daniel Gibson          -    integrate JPEG, allow external zlib
src/stb_image_write.h:122:   Aarni Koskela          -    allow choosing PNG filter
src/stb_image_write.h:245:static int stbi_write_force_png_filter = -1;
src/stb_image_write.h:250:int stbi_write_force_png_filter = -1;
src/stb_image_write.h:264:// initialize a callback-based context
src/stb_image_write.h:267:   s->func    = c;
src/stb_image_write.h:268:   s->context = context;
src/stb_image_write.h:293:   fclose((FILE *)s->context);
src/stb_image_write.h:299:typedef int stb_image_write_test[sizeof(stbiw_uint32)==4 ? 1 : -1];
src/stb_image_write.h:307:                     s->func(s->context,&x,1);
src/stb_image_write.h:313:                     s->func(s->context,b,2);
src/stb_image_write.h:321:                     s->func(s->context,b,4);
src/stb_image_write.h:340:   s->func(s->context, &c, 1);
src/stb_image_write.h:347:   s->func(s->context, arr, 3);
src/stb_image_write.h:356:      s->func(s->context, &d[comp - 1], 1);
src/stb_image_write.h:359:      case 2: // 2 pixels = mono + alpha, alpha is written separately, so same as 1-channel case
src/stb_image_write.h:364:            s->func(s->context, d, 1);  // monochrome TGA
src/stb_image_write.h:370:               px[k] = bg[k] + ((d[k] - bg[k]) * d[3]) / 255;
src/stb_image_write.h:371:            stbiw__write3(s, px[1 - rgb_dir], px[1], px[1 + rgb_dir]);
src/stb_image_write.h:376:         stbiw__write3(s, d[1 - rgb_dir], d[1], d[1 + rgb_dir]);
src/stb_image_write.h:380:      s->func(s->context, &d[comp - 1], 1);
src/stb_image_write.h:392:      vdir *= -1;
src/stb_image_write.h:395:      j_end = -1, j = y-1;
src/stb_image_write.h:404:      s->func(s->context, &zero, scanline_pad);
src/stb_image_write.h:424:   int pad = (-x*3) & 3;
src/stb_image_write.h:425:   return stbiw__outfile(s,-1,-1,x,y,comp,1,(void *) data,0,pad,
src/stb_image_write.h:454:   int colorbytes = has_alpha ? comp-1 : comp;
src/stb_image_write.h:461:      return stbiw__outfile(s, -1, -1, x, y, comp, 0, (void *) data, has_alpha, 0,
src/stb_image_write.h:474:         j = y-1;
src/stb_image_write.h:475:         jend = -1;
src/stb_image_write.h:476:         jdir = -1;
src/stb_image_write.h:487:            if (i < x - 1) {
src/stb_image_write.h:497:                        --len;
src/stb_image_write.h:513:               unsigned char header = STBIW_UCHAR(len - 1);
src/stb_image_write.h:514:               s->func(s->context, &header, 1);
src/stb_image_write.h:516:                  stbiw__write_pixel(s, -1, comp, has_alpha, 0, begin + k * comp);
src/stb_image_write.h:519:               unsigned char header = STBIW_UCHAR(len - 129);
src/stb_image_write.h:520:               s->func(s->context, &header, 1);
src/stb_image_write.h:521:               stbiw__write_pixel(s, -1, comp, has_alpha, 0, begin);
src/stb_image_write.h:560:   if (maxcomp < 1e-32f) {
src/stb_image_write.h:576:   s->func(s->context, &lengthbyte, 1);
src/stb_image_write.h:577:   s->func(s->context, &databyte, 1);
src/stb_image_write.h:584:   s->func(s->context, &lengthbyte, 1);
src/stb_image_write.h:585:   s->func(s->context, data, length);
src/stb_image_write.h:612:         s->func(s->context, rgbe, 4);
src/stb_image_write.h:635:      s->func(s->context, scanlineheader, 4);
src/stb_image_write.h:654:               int len = r-x;
src/stb_image_write.h:666:                  int len = r-x;
src/stb_image_write.h:686:      char header[] = "#?RADIANCE\n# Written by stb_image_write.h\nFORMAT=32-bit_rle_rgbe\n";
src/stb_image_write.h:687:      s->func(s->context, header, sizeof(header)-1);
src/stb_image_write.h:690:      len = sprintf_s(buffer, "EXPOSURE=          1.0000000000000\n\n-Y %d +X %d\n", y, x);
src/stb_image_write.h:692:      len = sprintf(buffer, "EXPOSURE=          1.0000000000000\n\n-Y %d +X %d\n", y, x);
src/stb_image_write.h:694:      s->func(s->context, buffer, len);
src/stb_image_write.h:697:         stbiw__write_hdr_scanline(s, x, comp, scratch, data + comp*x*(stbi__flip_vertically_on_write ? y-1-i : i)*x);
src/stb_image_write.h:730:// stretchy buffer; stbiw__sbpush() == vector<>::push_back() -- stbiw__sbcount() == vector<>::size()
src/stb_image_write.h:731:#define stbiw__sbraw(a) ((int *) (a) - 2)
src/stb_image_write.h:761:      *bitcount -= 8;
src/stb_image_write.h:769:   while (codebits--) {
src/stb_image_write.h:802:#define stbiw__zlib_huff2(n)  stbiw__zlib_huffa(0x190 + (n)-144, 9)
src/stb_image_write.h:803:#define stbiw__zlib_huff3(n)  stbiw__zlib_huffa(0 + (n)-256,7)
src/stb_image_write.h:804:#define stbiw__zlib_huff4(n)  stbiw__zlib_huffa(0xc0 + (n)-280,8)
src/stb_image_write.h:833:   stbiw__zlib_add(1,2);  // BTYPE = 1 -- fixed huffman
src/stb_image_write.h:839:   while (i < data_len-3) {
src/stb_image_write.h:841:      int h = stbiw__zhash(data+i)&(stbiw__ZHASH-1), best=3;
src/stb_image_write.h:846:         if (hlist[j]-data > i-32768) { // if entry lies within window
src/stb_image_write.h:847:            int d = stbiw__zlib_countm(hlist[j], data+i, data_len-i);
src/stb_image_write.h:859:         // "lazy matching" - check match at *next* byte, and if it's better, do cur byte as literal
src/stb_image_write.h:860:         h = stbiw__zhash(data+i+1)&(stbiw__ZHASH-1);
src/stb_image_write.h:864:            if (hlist[j]-data > i-32767) {
src/stb_image_write.h:865:               int e = stbiw__zlib_countm(hlist[j], data+i+1, data_len-i-1);
src/stb_image_write.h:875:         int d = (int) (data+i - bestloc); // distance back
src/stb_image_write.h:877:         for (j=0; best > lengthc[j+1]-1; ++j);
src/stb_image_write.h:879:         if (lengtheb[j]) stbiw__zlib_add(best - lengthc[j], lengtheb[j]);
src/stb_image_write.h:880:         for (j=0; d > distc[j+1]-1; ++j);
src/stb_image_write.h:882:         if (disteb[j]) stbiw__zlib_add(d - distc[j], disteb[j]);
src/stb_image_write.h:975:   unsigned int crc = stbiw__crc32(*data - len - 4, len+4);
src/stb_image_write.h:981:   int p = a + b - c, pa = abs(p-a), pb = abs(p-b), pc = abs(p-c);
src/stb_image_write.h:987:// @OPTIMIZE: provide an option that always forces left-predict or paeth predict
src/stb_image_write.h:995:   unsigned char *z = pixels + stride_bytes * (stbi__flip_vertically_on_write ? height-1-y : y);
src/stb_image_write.h:996:   int signed_stride = stbi__flip_vertically_on_write ? -stride_bytes : stride_bytes;
src/stb_image_write.h:1001:         case 2: line_buffer[i] = z[i] - z[i-signed_stride]; break;
src/stb_image_write.h:1002:         case 3: line_buffer[i] = z[i] - (z[i-signed_stride]>>1); break;
src/stb_image_write.h:1003:         case 4: line_buffer[i] = (signed char) (z[i] - stbiw__paeth(0,z[i-signed_stride],0)); break;
src/stb_image_write.h:1011:         case 1: line_buffer[i] = z[i] - z[i-n]; break;
src/stb_image_write.h:1012:         case 2: line_buffer[i] = z[i] - z[i-signed_stride]; break;
src/stb_image_write.h:1013:         case 3: line_buffer[i] = z[i] - ((z[i-n] + z[i-signed_stride])>>1); break;
src/stb_image_write.h:1014:         case 4: line_buffer[i] = z[i] - stbiw__paeth(z[i-n], z[i-signed_stride], z[i-signed_stride-n]); break;
src/stb_image_write.h:1015:         case 5: line_buffer[i] = z[i] - (z[i-n]>>1); break;
src/stb_image_write.h:1016:         case 6: line_buffer[i] = z[i] - stbiw__paeth(z[i-n], 0,0); break;
src/stb_image_write.h:1024:   int ctype[5] = { -1, 0, 4, 2, 6 };
src/stb_image_write.h:1034:      force_filter = -1;
src/stb_image_write.h:1041:      if (force_filter > -1) {
src/stb_image_write.h:1144: * public domain Simple, Minimalistic JPEG writer - http://www.jonolick.com/code.html
src/stb_image_write.h:1153:   bitBuf |= bs[0] << (24 - bitCnt);
src/stb_image_write.h:1161:      bitCnt -= 8;
src/stb_image_write.h:1172:   float tmp7 = d0 - d7;
src/stb_image_write.h:1174:   float tmp6 = d1 - d6;
src/stb_image_write.h:1176:   float tmp5 = d2 - d5;
src/stb_image_write.h:1178:   float tmp4 = d3 - d4;
src/stb_image_write.h:1182:   float tmp13 = tmp0 - tmp3;
src/stb_image_write.h:1184:   float tmp12 = tmp1 - tmp2;
src/stb_image_write.h:1187:   d4 = tmp10 - tmp11;
src/stb_image_write.h:1191:   d6 = tmp13 - z1;
src/stb_image_write.h:1198:   // The rotator is modified from fig 4-8 to avoid extra negations.
src/stb_image_write.h:1199:   z5 = (tmp10 - tmp12) * 0.382683433f; // c6
src/stb_image_write.h:1200:   z2 = tmp10 * 0.541196100f + z5; // c2-c6
src/stb_image_write.h:1205:   z13 = tmp7 - z3;
src/stb_image_write.h:1208:   *d3p = z13 - z2;
src/stb_image_write.h:1210:   *d7p = z11 - z4;
src/stb_image_write.h:1216:   int tmp1 = val < 0 ? -val : val;
src/stb_image_write.h:1217:   val = val < 0 ? val-1 : val;
src/stb_image_write.h:1222:   bits[0] = val & ((1<<bits[1])-1);
src/stb_image_write.h:1242:      // DU[stbiw__jpg_ZigZag[i]] = (int)(v < 0 ? ceilf(v - 0.5f) : floorf(v + 0.5f));
src/stb_image_write.h:1244:      DU[stbiw__jpg_ZigZag[i]] = (int)(v < 0 ? v - 0.5f : v + 0.5f);
src/stb_image_write.h:1248:   diff = DU[0] - DC;
src/stb_image_write.h:1259:   for(; (end0pos>0)&&(DU[end0pos]==0); --end0pos) {
src/stb_image_write.h:1272:      nrzeroes = i-startpos;
src/stb_image_write.h:1372:   quality = quality < 50 ? 5000 / quality : 200 - quality * 2;
src/stb_image_write.h:1394:      s->func(s->context, (void*)head0, sizeof(head0));
src/stb_image_write.h:1395:      s->func(s->context, (void*)YTable, sizeof(YTable));
src/stb_image_write.h:1397:      s->func(s->context, UVTable, sizeof(UVTable));
src/stb_image_write.h:1398:      s->func(s->context, (void*)head1, sizeof(head1));
src/stb_image_write.h:1399:      s->func(s->context, (void*)(std_dc_luminance_nrcodes+1), sizeof(std_dc_luminance_nrcodes)-1);
src/stb_image_write.h:1400:      s->func(s->context, (void*)std_dc_luminance_values, sizeof(std_dc_luminance_values));
src/stb_image_write.h:1402:      s->func(s->context, (void*)(std_ac_luminance_nrcodes+1), sizeof(std_ac_luminance_nrcodes)-1);
src/stb_image_write.h:1403:      s->func(s->context, (void*)std_ac_luminance_values, sizeof(std_ac_luminance_values));
src/stb_image_write.h:1405:      s->func(s->context, (void*)(std_dc_chrominance_nrcodes+1), sizeof(std_dc_chrominance_nrcodes)-1);
src/stb_image_write.h:1406:      s->func(s->context, (void*)std_dc_chrominance_values, sizeof(std_dc_chrominance_values));
src/stb_image_write.h:1408:      s->func(s->context, (void*)(std_ac_chrominance_nrcodes+1), sizeof(std_ac_chrominance_nrcodes)-1);
src/stb_image_write.h:1409:      s->func(s->context, (void*)std_ac_chrominance_values, sizeof(std_ac_chrominance_values));
src/stb_image_write.h:1410:      s->func(s->context, (void*)head2, sizeof(head2));
src/stb_image_write.h:1427:                  int p = (stbi__flip_vertically_on_write ? height-1-row : row)*width*comp + col*comp;
src/stb_image_write.h:1430:                     p -= width*comp*(row+1 - height);
src/stb_image_write.h:1433:                     p -= comp*(col+1 - width);
src/stb_image_write.h:1439:                  YDU[pos]=+0.29900f*r+0.58700f*g+0.11400f*b-128;
src/stb_image_write.h:1440:                  UDU[pos]=-0.16874f*r-0.33126f*g+0.50000f*b;
src/stb_image_write.h:1441:                  VDU[pos]=+0.50000f*r-0.41869f*g-0.08131f*b;
src/stb_image_write.h:1486:      1.09  (2018-02-11)
src/stb_image_write.h:1488:      1.08  (2018-01-29)
src/stb_image_write.h:1490:      1.07  (2017-07-24)
src/stb_image_write.h:1492:      1.06 (2017-07-23)
src/stb_image_write.h:1495:      1.04 (2017-03-03)
src/stb_image_write.h:1498:      1.02 (2016-04-02)
src/stb_image_write.h:1500:      1.01 (2016-01-16)
src/stb_image_write.h:1502:             avoid race-condition in crc initialization
src/stb_image_write.h:1504:      1.00 (2015-09-14)
src/stb_image_write.h:1506:      0.99 (2015-09-13)
src/stb_image_write.h:1508:      0.98 (2015-04-08)
src/stb_image_write.h:1510:      0.97 (2015-01-18)
src/stb_image_write.h:1512:      0.96 (2015-01-17)
src/stb_image_write.h:1515:      0.95 (2014-08-17)
src/stb_image_write.h:1517:      0.94 (2014-05-31)
src/stb_image_write.h:1519:      0.93 (2014-05-27)
src/stb_image_write.h:1521:      0.92 (2010-08-01)
src/stb_image_write.h:1523:      0.91 (2010-07-17)
src/stb_image_write.h:1529:------------------------------------------------------------------------------
src/stb_image_write.h:1530:This software is available under 2 licenses -- choose whichever you prefer.
src/stb_image_write.h:1531:------------------------------------------------------------------------------
src/stb_image_write.h:1532:ALTERNATIVE A - MIT License
src/stb_image_write.h:1549:------------------------------------------------------------------------------
src/stb_image_write.h:1550:ALTERNATIVE B - Public Domain (www.unlicense.org)
src/stb_image_write.h:1554:commercial or non-commercial, and by any means.
src/stb_image_write.h:1567:------------------------------------------------------------------------------
README.md:1:![Darknet Logo](http://pjreddie.com/media/files/darknet-black-small.png)
Binary file success matches
scripts/dice_label.sh:1:mkdir -p images
scripts/dice_label.sh:2:mkdir -p images/orig
scripts/dice_label.sh:3:mkdir -p images/train
scripts/dice_label.sh:4:mkdir -p images/val
scripts/dice_label.sh:6:ffmpeg -i Face1.mp4 images/orig/face1_%6d.jpg
scripts/dice_label.sh:7:ffmpeg -i Face2.mp4 images/orig/face2_%6d.jpg
scripts/dice_label.sh:8:ffmpeg -i Face3.mp4 images/orig/face3_%6d.jpg
scripts/dice_label.sh:9:ffmpeg -i Face4.mp4 images/orig/face4_%6d.jpg
scripts/dice_label.sh:10:ffmpeg -i Face5.mp4 images/orig/face5_%6d.jpg
scripts/dice_label.sh:11:ffmpeg -i Face6.mp4 images/orig/face6_%6d.jpg
scripts/dice_label.sh:13:mogrify -resize 100x100^ -gravity center -crop 100x100+0+0 +repage images/orig/*
scripts/dice_label.sh:15:ls images/orig/* | shuf | head -n 1000 | xargs mv -t images/val
scripts/dice_label.sh:18:find `pwd`/images/train > dice.train.list -name \*.jpg
scripts/dice_label.sh:19:find `pwd`/images/val > dice.val.list -name \*.jpg
scripts/get_coco_dataset.sh:11:wget -c https://pjreddie.com/media/files/train2014.zip
scripts/get_coco_dataset.sh:12:wget -c https://pjreddie.com/media/files/val2014.zip
scripts/get_coco_dataset.sh:15:unzip -q train2014.zip
scripts/get_coco_dataset.sh:16:unzip -q val2014.zip
scripts/get_coco_dataset.sh:21:wget -c https://pjreddie.com/media/files/instances_train-val2014.zip
scripts/get_coco_dataset.sh:22:wget -c https://pjreddie.com/media/files/coco/5k.part
scripts/get_coco_dataset.sh:23:wget -c https://pjreddie.com/media/files/coco/trainvalno5k.part
scripts/get_coco_dataset.sh:24:wget -c https://pjreddie.com/media/files/coco/labels.tgz
scripts/get_coco_dataset.sh:26:unzip -q instances_train-val2014.zip
scripts/get_coco_dataset.sh:29:paste <(awk "{print \"$PWD\"}" <5k.part) 5k.part | tr -d '\t' > 5k.txt
scripts/get_coco_dataset.sh:30:paste <(awk "{print \"$PWD\"}" <trainvalno5k.part) trainvalno5k.part | tr -d '\t' > trainvalno5k.txt
scripts/voc_label.py:15:    x = (box[0] + box[1])/2.0 - 1
scripts/voc_label.py:16:    y = (box[2] + box[3])/2.0 - 1
scripts/voc_label.py:17:    w = box[1] - box[0]
scripts/voc_label.py:18:    h = box[3] - box[2]
scripts/imagenet_label.sh:3:mkdir -p labelled
scripts/imagenet_label.sh:8:label=`grep -m1 "<name>" $f | grep -oP '<name>\K[^<]*'`
scripts/imagenet_label.sh:11:ln -s ${wd}/$im ${wd}/$out
scripts/imagenet_label.sh:14:find ${wd}/labelled -name \*.JPEG > inet.val.list
serial.txt:4:--------[6] end time : 0.750279 ---------
serial.txt:7:--------[3] end time : 0.760625 ---------
serial.txt:10:--------[5] end time : 0.760965 ---------
serial.txt:13:--------[7] end time : 0.763878 ---------
serial.txt:16:--------[8] end time : 0.765911 ---------
serial.txt:19:--------[4] end time : 0.771130 ---------
serial.txt:22:--------[2] end time : 0.808105 ---------
serial.txt:25:--------[1] end time : 0.808234 ---------
serial.txt:28:--------[0] end time : 0.809461 ---------
serial.txt:39:--------[0] end time : 0.768313 ---------
serial.txt:42:--------[6] end time : 0.810872 ---------
serial.txt:45:--------[3] end time : 0.813936 ---------
serial.txt:48:--------[8] end time : 0.816320 ---------
serial.txt:51:--------[4] end time : 0.821787 ---------
serial.txt:54:--------[1] end time : 0.825274 ---------
serial.txt:57:--------[7] end time : 0.827745 ---------
serial.txt:60:--------[2] end time : 0.829607 ---------
serial.txt:63:--------[5] end time : 0.830941 ---------
serial.txt:72:--------[0] end time : 0.074265 ---------
serial.txt:75:--------[1] end time : 0.141729 ---------
serial.txt:78:--------[2] end time : 0.209392 ---------
serial.txt:81:--------[3] end time : 0.277739 ---------
serial.txt:84:--------[4] end time : 0.345600 ---------
serial.txt:87:--------[5] end time : 0.414668 ---------
serial.txt:90:--------[6] end time : 0.481357 ---------
serial.txt:93:--------[7] end time : 0.551076 ---------
serial.txt:96:--------[8] end time : 0.617717 ---------
serial.txt:105:--------[0] end time : 0.073783 ---------
serial.txt:107:--------[1] end time : 0.142588 ---------
serial.txt:109:--------[2] end time : 0.209619 ---------
serial.txt:111:--------[3] end time : 0.277527 ---------
serial.txt:113:--------[4] end time : 0.344389 ---------
serial.txt:115:--------[5] end time : 0.413042 ---------
serial.txt:117:--------[6] end time : 0.478533 ---------
serial.txt:119:--------[7] end time : 0.547135 ---------
serial.txt:121:--------[8] end time : 0.609907 ---------
serial.txt:129:--------[0] end time : 0.726142 ---------
serial.txt:131:--------[1] end time : 0.779278 ---------
serial.txt:133:--------[7] end time : 0.781754 ---------
serial.txt:135:--------[3] end time : 0.788757 ---------
serial.txt:137:--------[4] end time : 0.790117 ---------
serial.txt:139:--------[5] end time : 0.793781 ---------
serial.txt:141:--------[6] end time : 0.795167 ---------
serial.txt:143:--------[2] end time : 0.796296 ---------
serial.txt:145:--------[8] end time : 0.796997 ---------
serial.txt:155:--------[0] end time : 0.714065 ---------
serial.txt:157:--------[1] end time : 0.743940 ---------
serial.txt:159:--------[3] end time : 0.759818 ---------
serial.txt:161:--------[4] end time : 0.765685 ---------
serial.txt:163:--------[2] end time : 0.767280 ---------
serial.txt:165:--------[7] end time : 0.806292 ---------
serial.txt:167:--------[5] end time : 0.807077 ---------
serial.txt:169:--------[8] end time : 0.807213 ---------
serial.txt:171:--------[6] end time : 0.808169 ---------
serial.txt:183:--------[4] end time : 0.977285 ---------
serial.txt:185:--------[3] end time : 0.985872 ---------
serial.txt:187:--------[5] end time : 0.993313 ---------
serial.txt:189:--------[8] end time : 1.077494 ---------
serial.txt:191:--------[7] end time : 1.078936 ---------
serial.txt:193:--------[9] end time : 1.080284 ---------
serial.txt:195:--------[6] end time : 1.082010 ---------
serial.txt:197:--------[0] end time : 1.094211 ---------
serial.txt:199:--------[2] end time : 1.094355 ---------
serial.txt:201:--------[1] end time : 1.096179 ---------
serial.txt:216:--------[6] end time : 0.460212 ---------
serial.txt:218:--------[5] end time : 0.471500 ---------
serial.txt:220:--------[8] end time : 0.471641 ---------
serial.txt:222:--------[7] end time : 0.472242 ---------
.gitignore:87:## files generated by popular Visual Studio add-ons.
.gitignore:91:# User-specific files
.gitignore:98:# User-specific files (MonoDevelop/Xamarin Studio)
.gitignore:133:nunit-*.xml
.gitignore:204:# ReSharper is a .NET coding add-in
.gitignore:209:# JustCode is a .NET coding add-in
.gitignore:212:# TeamCity is a build add-in
.gitignore:236:.sass-cache/
.gitignore:241:# DocProject is a documentation generator add-in
.gitignore:251:# Click-Once directory
.gitignore:316:# (https://github.com/github/gitignore/pull/2483#issue-259490424)
.gitignore:320:# (https://github.com/github/gitignore/pull/1529#issuecomment-104372622)
.gitignore:328:# because we have git ;-)
.gitignore:346:*- [Bb]ackup.rdl
.gitignore:347:*- [Bb]ackup ([0-9]).rdl
.gitignore:348:*- [Bb]ackup ([0-9][0-9]).rdl
.gitignore:366:# Visual Studio 6 auto-generated workspace file (contains which files were open etc.)
.gitignore:379:paket-files/
.gitignore:381:# FAKE - F# Make
.gitignore:391:# Cake - Uncomment if you are using it
LICENSE.meta:1:                          META-LICENSE
Binary file resnet152.weights matches
Binary file obj/activation_kernels.o matches
Binary file obj/avgpool_layer_kernels.o matches
Binary file obj/image_opencv.o matches
Binary file obj/avgpool_layer.o matches
Binary file obj/local_layer.o matches
Binary file obj/upsample_layer.o matches
Binary file obj/detector.o matches
Binary file obj/convolutional_kernels.o matches
Binary file obj/activations.o matches
Binary file obj/classifier.o matches
Binary file obj/batchnorm_layer.o matches
Binary file obj/network.o matches
Binary file obj/tag.o matches
Binary file obj/activation_layer.o matches
Binary file obj/super.o matches
Binary file obj/route_layer.o matches
Binary file obj/list.o matches
Binary file obj/normalization_layer.o matches
Binary file obj/lsd.o matches
Binary file obj/iseg_layer.o matches
Binary file obj/detection_layer.o matches
Binary file obj/gru_layer.o matches
Binary file obj/gemm.o matches
Binary file obj/option_list.o matches
Binary file obj/data.o matches
Binary file obj/segmenter.o matches
Binary file obj/rnn_layer.o matches
Binary file obj/utils.o matches
Binary file obj/tree.o matches
Binary file obj/captcha.o matches
Binary file obj/coco.o matches
Binary file obj/nightmare.o matches
Binary file obj/parser.o matches
Binary file obj/col2im_kernels.o matches
Binary file obj/im2col.o matches
Binary file obj/yolo.o matches
Binary file obj/art.o matches
Binary file obj/cifar.o matches
Binary file obj/shortcut_layer.o matches
Binary file obj/maxpool_layer_kernels.o matches
Binary file obj/cuda.o matches
Binary file obj/blas.o matches
Binary file obj/instance-segmenter.o matches
Binary file obj/region_layer.o matches
Binary file obj/dropout_layer_kernels.o matches
Binary file obj/lstm_layer.o matches
Binary file obj/crnn_layer.o matches
Binary file obj/darknet.o matches
Binary file obj/l2norm_layer.o matches
Binary file obj/go.o matches
Binary file obj/im2col_kernels.o matches
Binary file obj/rnn.o matches
Binary file obj/dropout_layer.o matches
Binary file obj/softmax_layer.o matches
Binary file obj/deconvolutional_kernels.o matches
Binary file obj/crop_layer_kernels.o matches
Binary file obj/crop_layer.o matches
Binary file obj/demo.o matches
Binary file obj/col2im.o matches
Binary file obj/cost_layer.o matches
Binary file obj/layer.o matches
Binary file obj/matrix.o matches
Binary file obj/image.o matches
Binary file obj/reorg_layer.o matches
Binary file obj/connected_layer.o matches
Binary file obj/maxpool_layer.o matches
Binary file obj/yolo_layer.o matches
Binary file obj/regressor.o matches
Binary file obj/box.o matches
Binary file obj/blas_kernels.o matches
Binary file obj/deconvolutional_layer.o matches
Binary file obj/convolutional_layer.o matches
Binary file obj/thpool.o matches
Binary file obj/logistic_layer.o matches
LICENSE.gpl:16:share and change all versions of a program--to make sure it remains free
LICENSE.gpl:63:software on general-purpose computers, but in those that do, we wish to
LICENSE.gpl:66:patents cannot be used to render the program non-free.
LICENSE.gpl:77:  "Copyright" also means copyright-like laws that apply to other kinds of
LICENSE.gpl:115:for making modifications to it.  "Object code" means any non-source
LICENSE.gpl:138:System Libraries, or general-purpose tools or generally available free
LICENSE.gpl:179:  3. Protecting Users' Legal Rights From Anti-Circumvention Law.
LICENSE.gpl:201:non-permissive terms added in accord with section 7 apply to the code;
LICENSE.gpl:245:  6. Conveying Non-Source Forms.
LICENSE.gpl:249:machine-readable Corresponding Source under the terms of this License,
LICENSE.gpl:288:    e) Convey the object code using peer-to-peer transmission, provided
LICENSE.gpl:307:commercial, industrial or non-consumer uses, unless such uses represent
LICENSE.gpl:388:  All other non-permissive additional terms are considered "further
LICENSE.gpl:403:  Additional terms, permissive or non-permissive, may be stated in the
LICENSE.gpl:439:occurring solely as a consequence of using peer-to-peer transmission
LICENSE.gpl:467:(including a cross-claim or counterclaim in a lawsuit) alleging that
LICENSE.gpl:487:  Each contributor grants you a non-exclusive, worldwide, royalty-free
LICENSE.gpl:523:conditioned on the non-exercise of one or more of the rights that are
LICENSE.gpl:674:<http://www.gnu.org/philosophy/why-not-lgpl.html>.
Binary file data/scream.jpg matches
Binary file data/horses.jpg matches
Binary file data/eagle.jpg matches
data/imagenet.shortnames.list:26:soft-coated wheaten terrier
data/imagenet.shortnames.list:38:three-toed sloth
data/imagenet.shortnames.list:40:black-footed ferret
data/imagenet.shortnames.list:42:black-and-tan coonhound
data/imagenet.shortnames.list:116:Shih-Tzu
data/imagenet.shortnames.list:134:German short-haired pointer
data/imagenet.shortnames.list:144:curly-coated retriever
data/imagenet.shortnames.list:146:flat-coated retriever
data/imagenet.shortnames.list:160:wire-haired fox terrier
data/imagenet.shortnames.list:254:bicycle-built-for-two
data/imagenet.shortnames.list:275:go-kart
data/imagenet.shortnames.list:299:four-poster
data/imagenet.shortnames.list:410:sulphur-crested cockatoo
data/imagenet.shortnames.list:419:red-breasted merganser
data/imagenet.shortnames.list:434:red-backed sandpiper
data/imagenet.shortnames.list:551:hand-held computer
data/imagenet.shortnames.list:592:jack-o'-lantern
data/imagenet.shortnames.list:624:long-horned beetle
data/imagenet.shortnames.list:812:hen-of-the-woods
data/imagenet.shortnames.list:841:ping-pong ball
data/imagenet.shortnames.list:843:pay-phone
data/imagenet.shortnames.list:1006:table-tennis table
data/imagenet.shortnames.list:1027:four-wheel drive
data/imagenet.shortnames.list:1044:stained-glass window
data/imagenet.shortnames.list:1048:red-spotted purple
data/imagenet.shortnames.list:1068:push-bike
data/imagenet.shortnames.list:1074:hula-hoop
data/imagenet.shortnames.list:1095:fly-fishing
data/imagenet.shortnames.list:1098:water-skiing
data/imagenet.shortnames.list:1129:night-blooming cereus
data/imagenet.shortnames.list:1179:no-hit game
data/imagenet.shortnames.list:1253:white-bellied swallow
data/imagenet.shortnames.list:1287:Greco-Roman wrestling
data/imagenet.shortnames.list:1301:forget-me-not
data/imagenet.shortnames.list:1321:half-mast
data/imagenet.shortnames.list:1350:used-car
data/imagenet.shortnames.list:1367:great-niece
data/imagenet.shortnames.list:1375:night-blooming cereus
data/imagenet.shortnames.list:1422:black-backed gull
data/imagenet.shortnames.list:1428:soup-strainer
data/imagenet.shortnames.list:1433:black-necked stilt
data/imagenet.shortnames.list:1446:great-nephew
data/imagenet.shortnames.list:1460:red-winged blackbird
data/imagenet.shortnames.list:1476:fire-eater
data/imagenet.shortnames.list:1496:Turk's-cap
data/imagenet.shortnames.list:1547:jack-in-the-pulpit
data/imagenet.shortnames.list:1572:CD-R
data/imagenet.shortnames.list:1576:CD-ROM
data/imagenet.shortnames.list:1586:great-aunt
data/imagenet.shortnames.list:1597:bird's-foot violet
data/imagenet.shortnames.list:1625:castor-oil plant
data/imagenet.shortnames.list:1641:cross-country skiing
data/imagenet.shortnames.list:1652:ready-to-wear
data/imagenet.shortnames.list:1675:slip-on
data/imagenet.shortnames.list:1676:bottle-nosed whale
data/imagenet.shortnames.list:1686:love-in-a-mist
data/imagenet.shortnames.list:1689:night-blooming cereus
data/imagenet.shortnames.list:1732:high-rise
data/imagenet.shortnames.list:1768:right-hander
data/imagenet.shortnames.list:1797:common lady's-slipper
data/imagenet.shortnames.list:1840:horse-trail
data/imagenet.shortnames.list:1867:quack-quack
data/imagenet.shortnames.list:1901:ladder-back
data/imagenet.shortnames.list:1906:two-hitter
data/imagenet.shortnames.list:1925:white-breasted nuthatch
data/imagenet.shortnames.list:1929:first-aid kit
data/imagenet.shortnames.list:1930:four-wheeler
data/imagenet.shortnames.list:1950:black-eyed Susan
data/imagenet.shortnames.list:1963:ring-necked pheasant
data/imagenet.shortnames.list:2017:father-in-law
data/imagenet.shortnames.list:2040:high-definition television
data/imagenet.shortnames.list:2047:point-and-shoot camera
data/imagenet.shortnames.list:2060:finger-painting
data/imagenet.shortnames.list:2073:red-shouldered hawk
data/imagenet.shortnames.list:2112:G-string
data/imagenet.shortnames.list:2158:creepy-crawly
data/imagenet.shortnames.list:2200:lip-gloss
data/imagenet.shortnames.list:2206:four-wheel drive
data/imagenet.shortnames.list:2215:safe-deposit
data/imagenet.shortnames.list:2282:felt-tip pen
data/imagenet.shortnames.list:2341:fleur-de-lis
data/imagenet.shortnames.list:2352:lean-to
data/imagenet.shortnames.list:2401:hi-fi
data/imagenet.shortnames.list:2405:ruby-crowned kinglet
data/imagenet.shortnames.list:2422:golf-club head
data/imagenet.shortnames.list:2425:fire-eater
data/imagenet.shortnames.list:2533:long-head coneflower
data/imagenet.shortnames.list:2535:roll-on
data/imagenet.shortnames.list:2561:ice-cream sundae
data/imagenet.shortnames.list:2568:tent-fly
data/imagenet.shortnames.list:2644:ice-cream cake
data/imagenet.shortnames.list:2651:three-hitter
data/imagenet.shortnames.list:2657:wide-angle lens
data/imagenet.shortnames.list:2659:ladder-back
data/imagenet.shortnames.list:2702:hand-me-down
data/imagenet.shortnames.list:2713:white-throated sparrow
data/imagenet.shortnames.list:2733:cross-country riding
data/imagenet.shortnames.list:2734:mother-in-law's tongue
data/imagenet.shortnames.list:2762:dik-dik
data/imagenet.shortnames.list:2778:Joe-Pye weed
data/imagenet.shortnames.list:2809:red-hot poker
data/imagenet.shortnames.list:2868:skin-diver
data/imagenet.shortnames.list:2876:open-face sandwich
data/imagenet.shortnames.list:2892:black-crowned night heron
data/imagenet.shortnames.list:3026:garden forget-me-not
data/imagenet.shortnames.list:3067:concert-goer
data/imagenet.shortnames.list:3085:snow-in-summer
data/imagenet.shortnames.list:3088:ice-cream cone
data/imagenet.shortnames.list:3268:roll-on
data/imagenet.shortnames.list:3465:blue-eyed grass
data/imagenet.shortnames.list:3470:walkie-talkie
data/imagenet.shortnames.list:3500:work-shirt
data/imagenet.shortnames.list:3568:yellow-crowned night heron
data/imagenet.shortnames.list:3671:diesel-electric locomotive
data/imagenet.shortnames.list:3688:white-crowned sparrow
data/imagenet.shortnames.list:3735:red-breasted nuthatch
data/imagenet.shortnames.list:3750:black-winged stilt
data/imagenet.shortnames.list:3763:Mexican-American
data/imagenet.shortnames.list:3782:yellow-shafted flicker
data/imagenet.shortnames.list:3808:Jew's-ear
data/imagenet.shortnames.list:3929:bread-bin
data/imagenet.shortnames.list:3943:seventy-eight
data/imagenet.shortnames.list:3964:single-breasted jacket
data/imagenet.shortnames.list:3992:foul-weather gear
data/imagenet.shortnames.list:4101:grease-gun
data/imagenet.shortnames.list:4186:fixer-upper
data/imagenet.shortnames.list:4243:three-way calling
data/imagenet.shortnames.list:4278:diesel-hydraulic locomotive
data/imagenet.shortnames.list:4311:love-in-a-mist
data/imagenet.shortnames.list:4321:in-basket
data/imagenet.shortnames.list:4352:bacon-lettuce-tomato sandwich
data/imagenet.shortnames.list:4430:table-mountain pine
data/imagenet.shortnames.list:4444:Afro-wig
data/imagenet.shortnames.list:4483:smooth-leaved elm
data/imagenet.shortnames.list:4493:side-blotched lizard
data/imagenet.shortnames.list:4499:common four-o'clock
data/imagenet.shortnames.list:4500:long-eared owl
data/imagenet.shortnames.list:4540:orb-weaving spider
data/imagenet.shortnames.list:4568:gumbo-limbo
data/imagenet.shortnames.list:4599:pony-trekking
data/imagenet.shortnames.list:4629:swallow-tailed coat
data/imagenet.shortnames.list:4671:black-necked grebe
data/imagenet.shortnames.list:4684:roll-on roll-off
data/imagenet.shortnames.list:4706:rough-legged hawk
data/imagenet.shortnames.list:4734:black-tailed deer
data/imagenet.shortnames.list:4772:iced-tea spoon
data/imagenet.shortnames.list:4799:yellow-bellied sapsucker
data/imagenet.shortnames.list:4838:India-rubber tree
data/imagenet.shortnames.list:4865:yellow-breasted chat
data/imagenet.shortnames.list:4868:pied-billed grebe
data/imagenet.shortnames.list:4899:stair-carpet
data/imagenet.shortnames.list:4917:table-tennis racquet
data/imagenet.shortnames.list:4937:hart's-tongue
data/imagenet.shortnames.list:4943:soft-shell clam
data/imagenet.shortnames.list:4978:red-necked grebe
data/imagenet.shortnames.list:4982:Portuguese man-of-war
data/imagenet.shortnames.list:4986:night-light
data/imagenet.shortnames.list:5021:organ-grinder
data/imagenet.shortnames.list:5029:red-breasted sapsucker
data/imagenet.shortnames.list:5040:cat's-ear
data/imagenet.shortnames.list:5054:check-in
data/imagenet.shortnames.list:5055:ring-necked parakeet
data/imagenet.shortnames.list:5303:hotel-casino
data/imagenet.shortnames.list:5358:blackberry-lily
data/imagenet.shortnames.list:5386:purple-fringed orchid
data/imagenet.shortnames.list:5410:lamb's-quarter
data/imagenet.shortnames.list:5430:wood-frog
data/imagenet.shortnames.list:5529:hot-water bottle
data/imagenet.shortnames.list:5530:baby blue-eyes
data/imagenet.shortnames.list:5549:short-spurred fragrant orchid
data/imagenet.shortnames.list:5584:split-pea soup
data/imagenet.shortnames.list:5644:tumble-dryer
data/imagenet.shortnames.list:5650:C-clamp
data/imagenet.shortnames.list:5713:Joe-Pye weed
data/imagenet.shortnames.list:5716:hole-in-the-wall
data/imagenet.shortnames.list:5737:red-eyed vireo
data/imagenet.shortnames.list:5756:looking-glass plant
data/imagenet.shortnames.list:5781:serjeant-at-law
data/imagenet.shortnames.list:5782:mill-hand
data/imagenet.shortnames.list:5785:red silk-cotton tree
data/imagenet.shortnames.list:5832:Turk's-cap
data/imagenet.shortnames.list:5878:semi-detached house
data/imagenet.shortnames.list:5958:water-mint
data/imagenet.shortnames.list:5967:field-emission microscope
data/imagenet.shortnames.list:5975:passe-partout
data/imagenet.shortnames.list:6026:harvest-lice
data/imagenet.shortnames.list:6049:broad-leaved plantain
data/imagenet.shortnames.list:6083:two-toed sloth
data/imagenet.shortnames.list:6090:black-eyed Susan
data/imagenet.shortnames.list:6115:CD-ROM drive
data/imagenet.shortnames.list:6146:two-toed sloth
data/imagenet.shortnames.list:6187:dancing-master
data/imagenet.shortnames.list:6206:eastern red-backed salamander
data/imagenet.shortnames.list:6254:four-hitter
data/imagenet.shortnames.list:6259:four-in-hand
data/imagenet.shortnames.list:6268:two-eyed violet
data/imagenet.shortnames.list:6272:bone-ash cup
data/imagenet.shortnames.list:6315:yellow-fever mosquito
data/imagenet.shortnames.list:6318:black-eyed pea
data/imagenet.shortnames.list:6329:double-breasted jacket
data/imagenet.shortnames.list:6393:radio-phonograph
data/imagenet.shortnames.list:6402:red morning-glory
data/imagenet.shortnames.list:6425:blue-headed vireo
data/imagenet.shortnames.list:6439:long-billed marsh wren
data/imagenet.shortnames.list:6442:left-hander
data/imagenet.shortnames.list:6463:red-shafted flicker
data/imagenet.shortnames.list:6473:purple-fringed orchid
data/imagenet.shortnames.list:6478:ilang-ilang
data/imagenet.shortnames.list:6501:fire-bellied toad
data/imagenet.shortnames.list:6503:co-star
data/imagenet.shortnames.list:6516:band-tailed pigeon
data/imagenet.shortnames.list:6517:snow-on-the-mountain
data/imagenet.shortnames.list:6581:sharp-tailed grouse
data/imagenet.shortnames.list:6609:brother-in-law
data/imagenet.shortnames.list:6655:five-spot
data/imagenet.shortnames.list:6693:organic light-emitting diode
data/imagenet.shortnames.list:6720:dead-man's-fingers
data/imagenet.shortnames.list:6831:death's-head moth
data/imagenet.shortnames.list:6835:black-necked cobra
data/imagenet.shortnames.list:6842:high-protein diet
data/imagenet.shortnames.list:6887:Anglo-American
data/imagenet.shortnames.list:6906:single-leaf
data/imagenet.shortnames.list:6910:jack-in-the-box
data/imagenet.shortnames.list:6950:pari-mutuel machine
data/imagenet.shortnames.list:6992:three-day event
data/imagenet.shortnames.list:7009:laser-guided bomb
data/imagenet.shortnames.list:7026:thick-billed murre
data/imagenet.shortnames.list:7070:red-bellied terrapin
data/imagenet.shortnames.list:7126:bird's-nest fungus
data/imagenet.shortnames.list:7156:angel-wing begonia
data/imagenet.shortnames.list:7219:tilt-top table
data/imagenet.shortnames.list:7237:lock-gate
data/imagenet.shortnames.list:7251:fall-blooming hydrangea
data/imagenet.shortnames.list:7255:ex-president
data/imagenet.shortnames.list:7265:bald-faced hornet
data/imagenet.shortnames.list:7338:porte-cochere
data/imagenet.shortnames.list:7368:monkey-wrench
data/imagenet.shortnames.list:7372:A-line
data/imagenet.shortnames.list:7385:leaf-footed bug
data/imagenet.shortnames.list:7404:lemon-scented gum
data/imagenet.shortnames.list:7415:vicar-general
data/imagenet.shortnames.list:7504:off-line equipment
data/imagenet.shortnames.list:7569:rough-skinned newt
data/imagenet.shortnames.list:7574:torpedo-boat destroyer
data/imagenet.shortnames.list:7581:call-in
data/imagenet.shortnames.list:7592:wash-and-wear
data/imagenet.shortnames.list:7602:ash-pan
data/imagenet.shortnames.list:7660:Chinese forget-me-not
data/imagenet.shortnames.list:7705:second-rater
data/imagenet.shortnames.list:7748:step-down transformer
data/imagenet.shortnames.list:7778:fer-de-lance
data/imagenet.shortnames.list:7803:silver-bell tree
data/imagenet.shortnames.list:7823:compact-disk burner
data/imagenet.shortnames.list:7828:pot-au-feu
data/imagenet.shortnames.list:7883:lady-in-waiting
data/imagenet.shortnames.list:7920:low-calorie diet
data/imagenet.shortnames.list:7923:bain-marie
data/imagenet.shortnames.list:7926:double-hung window
data/imagenet.shortnames.list:7946:stair-rod
data/imagenet.shortnames.list:7947:wish-wash
data/imagenet.shortnames.list:7960:holly-leaved cherry
data/imagenet.shortnames.list:7976:square-rigger
data/imagenet.shortnames.list:8027:erasable programmable read-only memory
data/imagenet.shortnames.list:8092:shrink-wrap
data/imagenet.shortnames.list:8110:eastern narrow-mouthed toad
data/imagenet.shortnames.list:8129:man-of-the-earth
data/imagenet.shortnames.list:8147:leopard's-bane
data/imagenet.shortnames.list:8168:lamb's-quarters
data/imagenet.shortnames.list:8209:ex-husband
data/imagenet.shortnames.list:8213:five-hitter
data/imagenet.shortnames.list:8267:bib-and-tucker
data/imagenet.shortnames.list:8306:choo-choo
data/imagenet.shortnames.list:8315:mock-up
data/imagenet.shortnames.list:8329:green-tailed towhee
data/imagenet.shortnames.list:8397:I-beam
data/imagenet.shortnames.list:8405:part-timer
data/imagenet.shortnames.list:8438:no-parking zone
data/imagenet.shortnames.list:8462:cracked-wheat bread
data/imagenet.shortnames.list:8498:dwarf-white trillium
data/imagenet.shortnames.list:8513:prince's-feather
data/imagenet.shortnames.list:8520:she-oak
data/imagenet.shortnames.list:8542:mother-in-law
data/imagenet.shortnames.list:8549:brush-tailed phalanger
data/imagenet.shortnames.list:8564:hawk's-beard
data/imagenet.shortnames.list:8565:Dutchman's-pipe
data/imagenet.shortnames.list:8576:rabbit-eared bandicoot
data/imagenet.shortnames.list:8588:white-headed stilt
data/imagenet.shortnames.list:8601:stalking-horse
data/imagenet.shortnames.list:8608:round-bottom flask
data/imagenet.shortnames.list:8710:broad buckler-fern
data/imagenet.shortnames.list:8733:black-billed cuckoo
data/imagenet.shortnames.list:8743:walk-in
data/imagenet.shortnames.list:8802:prie-dieu
data/imagenet.shortnames.list:8828:porte-cochere
data/imagenet.shortnames.list:8838:old-age pensioner
data/imagenet.shortnames.list:8854:in-fighting
data/imagenet.shortnames.list:8886:bottom-feeder
data/imagenet.shortnames.list:8922:lady's-eardrop
data/imagenet.shortnames.list:8945:right-hand man
data/imagenet.shortnames.list:8946:namby-pamby
data/imagenet.shortnames.list:8989:white-leaved rockrose
data/imagenet.shortnames.list:9034:low-fat diet
data/imagenet.shortnames.list:9089:white-rumped shrike
data/imagenet.shortnames.list:9090:car-ferry
data/imagenet.shortnames.list:9101:blue-eyed Mary
data/imagenet.shortnames.list:9176:fore-topsail
data/imagenet.shortnames.list:9177:thyme-leaved sandwort
data/imagenet.shortnames.list:9254:first-aid station
data/imagenet.shortnames.list:9292:mouse-ear hawkweed
data/imagenet.shortnames.list:9308:pen-and-ink
data/imagenet.shortnames.list:9346:common pond-skater
data/imagenet.shortnames.list:9355:foster-mother
data/imagenet.shortnames.list:9365:hart's-tongue
data/imagenet.shortnames.list:9370:divi-divi
data/imagenet.shortnames.list:9396:low-bush blueberry
data/imagenet.shortnames.list:9404:squirrel's-foot fern
data/imagenet.shortnames.list:9418:hound's-tongue
data/imagenet.shortnames.list:9421:pink-and-white everlasting
data/imagenet.shortnames.list:9439:low-fat milk
data/imagenet.shortnames.list:9449:tailor-made
data/imagenet.shortnames.list:9471:thyme-leaved speedwell
data/imagenet.shortnames.list:9484:one-flowered wintergreen
data/imagenet.shortnames.list:9489:foster-sister
data/imagenet.shortnames.list:9508:two-man tent
data/imagenet.shortnames.list:9518:foster-son
data/imagenet.shortnames.list:9532:heart-leaved aster
data/imagenet.shortnames.list:9554:high-vitamin diet
data/imagenet.shortnames.list:9654:three-spined stickleback
data/imagenet.shortnames.list:9672:p-n-p transistor
data/imagenet.shortnames.list:9692:gee-gee
data/imagenet.shortnames.list:9704:clay-colored robin
data/imagenet.shortnames.list:9716:T-bar lift
data/imagenet.shortnames.list:9727:cruet-stand
data/imagenet.shortnames.list:9748:pince-nez
data/imagenet.shortnames.list:9766:three-cornered leek
data/imagenet.shortnames.list:9778:even-pinnate leaf
data/imagenet.shortnames.list:9830:good-king-henry
data/imagenet.shortnames.list:9840:ski-plane
data/imagenet.shortnames.list:9886:B-flat clarinet
data/imagenet.shortnames.list:9927:low-water mark
data/imagenet.shortnames.list:9971:S-shape
data/imagenet.shortnames.list:9990:comb-footed spider
data/imagenet.shortnames.list:9993:C-ration
data/imagenet.shortnames.list:10007:blue-eyed African daisy
data/imagenet.shortnames.list:10018:barley-sugar
data/imagenet.shortnames.list:10033:ram's-head
data/imagenet.shortnames.list:10042:long-spurred violet
data/imagenet.shortnames.list:10065:dye-works
data/imagenet.shortnames.list:10073:lady-of-the-night
data/imagenet.shortnames.list:10091:trend-setter
data/imagenet.shortnames.list:10092:call-back
data/imagenet.shortnames.list:10103:cream-of-tartar tree
data/imagenet.shortnames.list:10117:lion's-ear
data/imagenet.shortnames.list:10121:marsh St-John's wort
data/imagenet.shortnames.list:10149:digital-analog converter
data/imagenet.shortnames.list:10172:pork-and-veal goulash
data/imagenet.shortnames.list:10179:large-flowered calamint
data/imagenet.shortnames.list:10202:L-plate
data/imagenet.shortnames.list:10237:Alpine mouse-ear
data/imagenet.shortnames.list:10254:self-starter
data/imagenet.shortnames.list:10276:walk-up apartment
data/imagenet.shortnames.list:10370:baa-lamb
data/imagenet.shortnames.list:10410:roly-poly
data/imagenet.shortnames.list:10420:high-hat cymbal
data/imagenet.shortnames.list:10423:fine-tooth comb
data/imagenet.shortnames.list:10443:surface-to-air missile system
data/imagenet.shortnames.list:10444:bark-louse
data/imagenet.shortnames.list:10447:clip-on
data/imagenet.shortnames.list:10489:slip-joint pliers
data/imagenet.shortnames.list:10494:orange-blossom orchid
data/imagenet.shortnames.list:10544:four-lined plant bug
data/imagenet.shortnames.list:10549:trap-door spider
data/imagenet.shortnames.list:10553:second-in-command
data/imagenet.shortnames.list:10580:three-quarter binding
data/imagenet.shortnames.list:10585:golden-beard penstemon
data/imagenet.shortnames.list:10589:T-square
data/imagenet.shortnames.list:10594:rope-a-dope
data/imagenet.shortnames.list:10606:self-starter
data/imagenet.shortnames.list:10625:laurel-tree
data/imagenet.shortnames.list:10627:Christ's-thorn
data/imagenet.shortnames.list:10649:semi-skimmed milk
data/imagenet.shortnames.list:10657:jewels-of-opar
data/imagenet.shortnames.list:10669:pheasant's-eye
data/imagenet.shortnames.list:10699:three-mile limit
data/imagenet.shortnames.list:10733:free-liver
data/imagenet.shortnames.list:10738:hound's-tongue
data/imagenet.shortnames.list:10745:powder-post termite
data/imagenet.shortnames.list:10754:father-figure
data/imagenet.shortnames.list:10777:big-cone spruce
data/imagenet.shortnames.list:10784:prairie bird's-foot trefoil
data/imagenet.shortnames.list:10794:hotel-casino
data/imagenet.shortnames.list:10796:life-support system
data/imagenet.shortnames.list:10800:white-footed mouse
data/imagenet.shortnames.list:10802:salt-rising bread
data/imagenet.shortnames.list:10807:bi-fold door
data/imagenet.shortnames.list:10808:fig-bird
data/imagenet.shortnames.list:10816:flat-topped white aster
data/imagenet.shortnames.list:10854:sixth-former
data/imagenet.shortnames.list:10890:old-timer
data/imagenet.shortnames.list:10893:sodium-vapor lamp
data/imagenet.shortnames.list:10905:mezzo-soprano
data/imagenet.shortnames.list:10912:round-headed leek
data/imagenet.shortnames.list:10926:red-bellied snake
data/imagenet.shortnames.list:10937:shoot-'em-up
data/imagenet.shortnames.list:10980:vehicle-borne transmission
data/imagenet.shortnames.list:11032:V-8 juice
data/imagenet.shortnames.list:11038:gas-turbine ship
data/imagenet.shortnames.list:11051:alpha-tocopheral
data/imagenet.shortnames.list:11054:water-shield
data/imagenet.shortnames.list:11091:half-and-half dressing
data/imagenet.shortnames.list:11101:wren-tit
data/imagenet.shortnames.list:11109:love-in-winter
data/imagenet.shortnames.list:11119:foster-father
data/imagenet.shortnames.list:11138:prairie wake-robin
data/imagenet.shortnames.list:11143:floating-moss
data/imagenet.shortnames.list:11156:great Solomon's-seal
data/imagenet.shortnames.list:11184:Cro-magnon
data/imagenet.shortnames.list:11196:sugar-bush
data/imagenet.shortnames.list:11252:short-tailed shrew
data/imagenet.shortnames.list:11310:yellow-eyed grass
data/imagenet.shortnames.list:11372:chop-suey greens
data/imagenet.shortnames.list:11396:cat-o'-nine-tails
data/imagenet.shortnames.list:11406:cream-colored courser
data/imagenet.shortnames.list:11408:European beggar-ticks
data/imagenet.shortnames.list:11412:red-flowered silky oak
data/imagenet.shortnames.list:11435:nosh-up
data/imagenet.shortnames.list:11438:single-rotor helicopter
data/imagenet.shortnames.list:11452:coral-root bittercress
data/imagenet.shortnames.list:11456:bird's-foot fern
data/imagenet.shortnames.list:11463:hard-shell crab
data/imagenet.shortnames.list:11466:friar's-cowl
data/imagenet.shortnames.list:11475:tent-caterpillar moth
data/imagenet.shortnames.list:11497:major-domo
data/imagenet.shortnames.list:11507:date-nut bread
data/imagenet.shortnames.list:11514:pousse-cafe
data/imagenet.shortnames.list:11518:recruiting-sergeant
data/imagenet.shortnames.list:11522:prairie white-fringed orchid
data/imagenet.shortnames.list:11546:sawed-off shotgun
data/imagenet.shortnames.list:11560:western narrow-mouthed toad
data/imagenet.shortnames.list:11577:cat's-ear
data/imagenet.shortnames.list:11601:fringe-toed lizard
data/imagenet.shortnames.list:11637:creole-fish
data/imagenet.shortnames.list:11660:stem-winder
data/imagenet.shortnames.list:11668:black-headed snake
data/imagenet.shortnames.list:11678:big-eared bat
data/imagenet.shortnames.list:11687:fire-on-the-mountain
data/imagenet.shortnames.list:11739:yellow-breasted bunting
data/imagenet.shortnames.list:11794:cape forget-me-not
data/imagenet.shortnames.list:11798:push-button radio
data/imagenet.shortnames.list:11827:three-dimensional radar
data/imagenet.shortnames.list:11831:two-by-four
data/imagenet.shortnames.list:11836:fibrous-rooted begonia
data/imagenet.shortnames.list:11837:violet-flowered petunia
data/imagenet.shortnames.list:11885:tent-caterpillar moth
data/imagenet.shortnames.list:11895:heart-lung machine
data/imagenet.shortnames.list:11896:mouse-eared bat
data/imagenet.shortnames.list:11902:one-hitter
data/imagenet.shortnames.list:11910:South-African yellowwood
data/imagenet.shortnames.list:11936:maiden blue-eyed Mary
data/imagenet.shortnames.list:11976:soft-shell crab
data/imagenet.shortnames.list:11980:cricket-bat willow
data/imagenet.shortnames.list:12006:zebra-tailed lizard
data/imagenet.shortnames.list:12007:shaving-brush tree
data/imagenet.shortnames.list:12037:birth-control campaigner
data/imagenet.shortnames.list:12048:red-backed mouse
data/imagenet.shortnames.list:12065:color-blind person
data/imagenet.shortnames.list:12068:white-lipped peccary
data/imagenet.shortnames.list:12079:sub-assembly
data/imagenet.shortnames.list:12089:pellitory-of-the-wall
data/imagenet.shortnames.list:12114:lean-to tent
data/imagenet.shortnames.list:12122:X-ray tube
data/imagenet.shortnames.list:12177:narrow-leaf penstemon
data/imagenet.shortnames.list:12194:gold-tail moth
data/imagenet.shortnames.list:12199:leaf-nosed snake
data/imagenet.shortnames.list:12236:lion-jaw forceps
data/imagenet.shortnames.list:12242:smooth-haired fox terrier
data/imagenet.shortnames.list:12244:rewa-rewa
data/imagenet.shortnames.list:12250:prince's-feather
data/imagenet.shortnames.list:12256:low-sodium diet
data/imagenet.shortnames.list:12315:read-only memory chip
data/imagenet.shortnames.list:12322:variable-pitch propeller
data/imagenet.shortnames.list:12323:western red-backed salamander
data/imagenet.shortnames.list:12332:aye-aye
data/imagenet.shortnames.list:12380:jackknife-fish
data/imagenet.shortnames.list:12409:odd-pinnate leaf
data/imagenet.shortnames.list:12433:electric-discharge lamp
data/imagenet.shortnames.list:12452:out-basket
data/imagenet.shortnames.list:12475:star-thistle
data/imagenet.shortnames.list:12491:tucker-bag
data/imagenet.shortnames.list:12562:pull-through
data/imagenet.shortnames.list:12581:pied-a-terre
data/imagenet.shortnames.list:12603:by-catch
data/imagenet.shortnames.list:12653:pro-lifer
data/imagenet.shortnames.list:12661:main-topsail
data/imagenet.shortnames.list:12686:patty-pan
data/imagenet.shortnames.list:12697:rose-root
data/imagenet.shortnames.list:12712:split-pea
data/imagenet.shortnames.list:12717:pip-squeak
data/imagenet.shortnames.list:12729:call-board
data/imagenet.shortnames.list:12741:sailor's-choice
data/imagenet.shortnames.list:12775:ex-spouse
data/imagenet.shortnames.list:12806:three-seeded mercury
data/imagenet.shortnames.list:12808:ice-cream bean
data/imagenet.shortnames.list:12847:ball-and-socket joint
data/imagenet.shortnames.list:12858:cock-a-leekie
data/imagenet.shortnames.list:12871:twenty-two pistol
data/imagenet.shortnames.list:12884:clover-leaf roll
data/imagenet.shortnames.list:12886:bird's-eye bush
data/imagenet.shortnames.list:12908:pointed-leaf maple
data/imagenet.shortnames.list:12909:pull-off
data/imagenet.shortnames.list:12924:moss-trooper
data/imagenet.shortnames.list:12926:cat's-claw
data/imagenet.shortnames.list:12959:tansy-leaved rocket
data/imagenet.shortnames.list:12976:test-tube baby
data/imagenet.shortnames.list:12980:elephant's-foot
data/imagenet.shortnames.list:12991:high-pass filter
data/imagenet.shortnames.list:13006:three-centered arch
data/imagenet.shortnames.list:13020:high-water mark
data/imagenet.shortnames.list:13100:linsey-woolsey
data/imagenet.shortnames.list:13141:coquilles Saint-Jacques
data/imagenet.shortnames.list:13146:light-o'-love
data/imagenet.shortnames.list:13214:evening-snow
data/imagenet.shortnames.list:13224:forty-five
data/imagenet.shortnames.list:13236:prickly-edged leaf
data/imagenet.shortnames.list:13259:bear's-paw fern
data/imagenet.shortnames.list:13272:large-leaved aster
data/imagenet.shortnames.list:13314:steel-wool pad
data/imagenet.shortnames.list:13330:western big-eared bat
data/imagenet.shortnames.list:13336:flower-of-an-hour
data/imagenet.shortnames.list:13341:plum-yew
data/imagenet.shortnames.list:13351:anti-Semite
data/imagenet.shortnames.list:13376:ape-man
data/imagenet.shortnames.list:13381:hairy-legged vampire bat
data/imagenet.shortnames.list:13433:rough-stemmed goldenrod
data/imagenet.shortnames.list:13437:plum-fruited yew
data/imagenet.shortnames.list:13441:whipper-in
data/imagenet.shortnames.list:13453:crab-eating dog
data/imagenet.shortnames.list:13487:take-up
data/imagenet.shortnames.list:13498:nuclear-powered ship
data/imagenet.shortnames.list:13512:two-timer
data/imagenet.shortnames.list:13516:nettle-leaved goosefoot
data/imagenet.shortnames.list:13526:pearly-shelled mussel
data/imagenet.shortnames.list:13543:lead-in
data/imagenet.shortnames.list:13550:broad-leaved twayblade
data/imagenet.shortnames.list:13558:cross-examiner
data/imagenet.shortnames.list:13586:anti-submarine rocket
data/imagenet.shortnames.list:13620:white-chinned petrel
data/imagenet.shortnames.list:13635:pus-forming bacteria
data/imagenet.shortnames.list:13666:purple-stemmed aster
data/imagenet.shortnames.list:13695:double-crosser
data/imagenet.shortnames.list:13704:lace-flower vine
data/imagenet.shortnames.list:13737:low-pass filter
data/imagenet.shortnames.list:13767:crab-eating raccoon
data/imagenet.shortnames.list:13775:high-muck-a-muck
data/imagenet.shortnames.list:13779:half-and-half
data/imagenet.shortnames.list:13797:gas-cooled reactor
data/imagenet.shortnames.list:13841:ship-towed long-range acoustic detection system
data/imagenet.shortnames.list:13870:deck-house
data/imagenet.shortnames.list:13893:chuck-will's-widow
data/imagenet.shortnames.list:13923:office-bearer
data/imagenet.shortnames.list:13933:gluten-free diet
data/imagenet.shortnames.list:13954:know-it-all
data/imagenet.shortnames.list:13960:California single-leaf pinyon
data/imagenet.shortnames.list:13986:ball-buster
data/imagenet.shortnames.list:14042:black-stem spleenwort
data/imagenet.shortnames.list:14079:process-server
data/imagenet.shortnames.list:14128:stock-in-trade
data/imagenet.shortnames.list:14153:dusky-footed woodrat
data/imagenet.shortnames.list:14162:gold-crowned kinglet
data/imagenet.shortnames.list:14173:thin-shelled mussel
data/imagenet.shortnames.list:14175:annual salt-marsh aster
data/imagenet.shortnames.list:14187:large-leaved magnolia
data/imagenet.shortnames.list:14188:free-reed
data/imagenet.shortnames.list:14193:anti-G suit
data/imagenet.shortnames.list:14197:write-in candidate
data/imagenet.shortnames.list:14202:mangel-wurzel
data/imagenet.shortnames.list:14204:red-skinned onion
data/imagenet.shortnames.list:14226:self-heal
data/imagenet.shortnames.list:14239:yellow-green algae
data/imagenet.shortnames.list:14251:anti-American
data/imagenet.shortnames.list:14285:white-rayed mule's ears
data/imagenet.shortnames.list:14298:twenty-two rifle
data/imagenet.shortnames.list:14303:dry-bulb thermometer
data/imagenet.shortnames.list:14305:double-bitted ax
data/imagenet.shortnames.list:14349:Paleo-American
data/imagenet.shortnames.list:14369:bunji-bunji
data/imagenet.shortnames.list:14382:four-minute man
data/imagenet.shortnames.list:14383:pin-tailed sandgrouse
data/imagenet.shortnames.list:14395:pine-barren sandwort
data/imagenet.shortnames.list:14442:hug-me-tight
data/imagenet.shortnames.list:14451:walk-on
data/imagenet.shortnames.list:14456:cape forget-me-not
data/imagenet.shortnames.list:14464:fuddy-duddy
data/imagenet.shortnames.list:14498:Dutch-elm beetle
data/imagenet.shortnames.list:14501:West-sider
data/imagenet.shortnames.list:14503:skinny-dipper
data/imagenet.shortnames.list:14505:out-and-outer
data/imagenet.shortnames.list:14567:owner-occupier
data/imagenet.shortnames.list:14568:yellow-leaf sickle pine
data/imagenet.shortnames.list:14573:crooked-stemmed aster
data/imagenet.shortnames.list:14575:dash-pot
data/imagenet.shortnames.list:14578:egg-and-dart
data/imagenet.shortnames.list:14581:self-rising flour
data/imagenet.shortnames.list:14591:rough-leaved aster
data/imagenet.shortnames.list:14595:ex-wife
data/imagenet.shortnames.list:14596:round-leaved rein orchid
data/imagenet.shortnames.list:14607:four-stroke engine
data/imagenet.shortnames.list:14656:five-point bishop's cap
data/imagenet.shortnames.list:14665:ten-spined stickleback
data/imagenet.shortnames.list:14669:agent-in-place
data/imagenet.shortnames.list:14681:down-and-out
data/imagenet.shortnames.list:14696:four-pounder
data/imagenet.shortnames.list:14699:field-effect transistor
data/imagenet.shortnames.list:14707:Prince-of-Wales'-heath
data/imagenet.shortnames.list:14730:ex-gambler
data/imagenet.shortnames.list:14769:tea-like drink
data/imagenet.shortnames.list:14774:gutta-percha tree
data/imagenet.shortnames.list:14820:big-tree plum
data/imagenet.shortnames.list:14836:black-fronted bush shrike
data/imagenet.shortnames.list:14850:wake-up call
data/imagenet.shortnames.list:14867:plank-bed
data/imagenet.shortnames.list:14889:nickel-iron battery
data/imagenet.shortnames.list:14894:dusky-footed wood rat
data/imagenet.shortnames.list:14911:fur-piece
data/imagenet.shortnames.list:14931:cush-cush
data/imagenet.shortnames.list:14974:Anglo-Saxon
data/imagenet.shortnames.list:14993:fly-by-night
data/imagenet.shortnames.list:14994:white-berry yew
data/imagenet.shortnames.list:15010:pond-scum parasite
data/imagenet.shortnames.list:15017:hot-rock penstemon
data/imagenet.shortnames.list:15027:falcon-gentle
data/imagenet.shortnames.list:15036:master-at-arms
data/imagenet.shortnames.list:15053:vice-regent
data/imagenet.shortnames.list:15061:life-support system
data/imagenet.shortnames.list:15079:foster-brother
data/imagenet.shortnames.list:15110:co-beneficiary
data/imagenet.shortnames.list:15135:cat's-tail
data/imagenet.shortnames.list:15137:self-registering thermometer
data/imagenet.shortnames.list:15158:beam-ends
data/imagenet.shortnames.list:15164:oak-leaved goosefoot
data/imagenet.shortnames.list:15172:Hercules'-club
data/imagenet.shortnames.list:15186:side-wheeler
data/imagenet.shortnames.list:15216:few-flowered leek
data/imagenet.shortnames.list:15221:lion-hunter
data/imagenet.shortnames.list:15239:miller's-thumb
data/imagenet.shortnames.list:15249:hare's-foot bristle fern
data/imagenet.shortnames.list:15265:T-man
data/imagenet.shortnames.list:15289:three-decker
data/imagenet.shortnames.list:15324:long-clawed prawn
data/imagenet.shortnames.list:15342:mangel-wurzel
data/imagenet.shortnames.list:15406:stretcher-bearer
data/imagenet.shortnames.list:15440:rose-colored starling
data/imagenet.shortnames.list:15442:addle-head
data/imagenet.shortnames.list:15478:broad-leaved montia
data/imagenet.shortnames.list:15488:cusk-eel
data/imagenet.shortnames.list:15511:wine-maker's yeast
data/imagenet.shortnames.list:15531:nut-leaved screw tree
data/imagenet.shortnames.list:15540:Queensland grass-cloth plant
data/imagenet.shortnames.list:15551:semi-climber
data/imagenet.shortnames.list:15553:wet-bulb thermometer
data/imagenet.shortnames.list:15572:valve-in-head engine
data/imagenet.shortnames.list:15589:open-hearth furnace
data/imagenet.shortnames.list:15618:little-head snakeweed
data/imagenet.shortnames.list:15653:plantain-leaved pussytoes
data/imagenet.shortnames.list:15671:ship-breaker
data/imagenet.shortnames.list:15700:stalking-horse
data/imagenet.shortnames.list:15729:odd-leg caliper
data/imagenet.shortnames.list:15736:chop-suey greens
data/imagenet.shortnames.list:15741:gutta-percha tree
data/imagenet.shortnames.list:15761:p-n junction
data/imagenet.shortnames.list:15770:hemming-stitch
data/imagenet.shortnames.list:15772:star-duckweed
data/imagenet.shortnames.list:15784:blockade-runner
data/imagenet.shortnames.list:15786:web-spinning mite
data/imagenet.shortnames.list:15834:round-tailed muskrat
data/imagenet.shortnames.list:15853:seizure-alert dog
data/imagenet.shortnames.list:15894:calf's-foot jelly
data/imagenet.shortnames.list:15903:tablet-armed chair
data/imagenet.shortnames.list:15921:hub-and-spoke
data/imagenet.shortnames.list:15935:narrow-leaved white-topped aster
data/imagenet.shortnames.list:15956:small-leaved linden
data/imagenet.shortnames.list:15987:cheval-de-frise
data/imagenet.shortnames.list:16011:pump-type pliers
data/imagenet.shortnames.list:16038:elephant's-foot
data/imagenet.shortnames.list:16079:fore-and-after
data/imagenet.shortnames.list:16130:narrow-leaved water plantain
data/imagenet.shortnames.list:16162:man-at-arms
data/imagenet.shortnames.list:16170:low-warp-loom
data/imagenet.shortnames.list:16180:high-warp loom
data/imagenet.shortnames.list:16198:crab-eating opossum
data/imagenet.shortnames.list:16236:pass-through
data/imagenet.shortnames.list:16261:water-shield
data/imagenet.shortnames.list:16332:yellow-throated marten
data/imagenet.shortnames.list:16389:rat-tail file
data/imagenet.shortnames.list:16394:Pitot-static tube
data/imagenet.shortnames.list:16399:wavy-leaved aster
data/imagenet.shortnames.list:16431:charge-exchange accelerator
data/imagenet.shortnames.list:16446:put-put
data/imagenet.shortnames.list:16463:time-delay measuring instrument
data/imagenet.shortnames.list:16469:dead-man's float
data/imagenet.shortnames.list:16526:bottom-feeder
data/imagenet.shortnames.list:16619:dark-eyed junco
data/imagenet.shortnames.list:16671:black-capped chickadee
data/imagenet.shortnames.list:16687:swallow-tailed kite
data/imagenet.shortnames.list:16688:white-tailed kite
data/imagenet.shortnames.list:16718:web-toed salamander
data/imagenet.shortnames.list:16738:soft-shelled turtle
data/imagenet.shortnames.list:16766:bone-headed dinosaur
data/imagenet.shortnames.list:16783:whip-snake
data/imagenet.shortnames.list:16816:whip-scorpion
data/imagenet.shortnames.list:16825:sheep-tick
data/imagenet.shortnames.list:16865:red-legged partridge
data/imagenet.shortnames.list:16937:nail-tailed wallaby
data/imagenet.shortnames.list:17072:red-breasted snipe
data/imagenet.shortnames.list:17101:black-footed albatross
data/imagenet.shortnames.list:17168:liver-spotted dalmatian
data/imagenet.shortnames.list:17202:saber-toothed tiger
data/imagenet.shortnames.list:17212:slender-tailed meerkat
data/imagenet.shortnames.list:17220:long-eared bat
data/imagenet.shortnames.list:17230:two-spotted ladybug
data/imagenet.shortnames.list:17296:cuckoo-bumblebee
data/imagenet.shortnames.list:17299:leaf-cutting bee
data/imagenet.shortnames.list:17318:slave-making ant
data/imagenet.shortnames.list:17323:dry-wood termite
data/imagenet.shortnames.list:17325:short-horned grasshopper
data/imagenet.shortnames.list:17329:long-horned grasshopper
data/imagenet.shortnames.list:17358:sweet-potato whitefly
data/imagenet.shortnames.list:17369:dog-day cicada
data/imagenet.shortnames.list:17370:seventeen-year locust
data/imagenet.shortnames.list:17450:white-tailed jackrabbit
data/imagenet.shortnames.list:17474:brush-tailed porcupine
data/imagenet.shortnames.list:17475:long-tailed porcupine
data/imagenet.shortnames.list:17498:odd-toed ungulate
data/imagenet.shortnames.list:17528:even-toed ungulate
data/imagenet.shortnames.list:17594:hog-nosed skunk
data/imagenet.shortnames.list:17642:crab-eating macaque
data/imagenet.shortnames.list:17696:spiny-finned fish
data/imagenet.shortnames.list:17699:pike-perch
data/imagenet.shortnames.list:17794:after-shave
data/imagenet.shortnames.list:17802:air-to-air missile
data/imagenet.shortnames.list:17803:air-to-ground missile
data/imagenet.shortnames.list:17904:ball-peen hammer
data/imagenet.shortnames.list:17937:battle-ax
data/imagenet.shortnames.list:17947:beating-reed instrument
data/imagenet.shortnames.list:18161:cathode-ray tube
data/imagenet.shortnames.list:18162:cat's-paw
data/imagenet.shortnames.list:18222:closed-circuit television
data/imagenet.shortnames.list:18371:deep-freeze
data/imagenet.shortnames.list:18398:dining-hall
data/imagenet.shortnames.list:18400:dining-room furniture
data/imagenet.shortnames.list:18401:dining-room table
data/imagenet.shortnames.list:18434:double-breasted suit
data/imagenet.shortnames.list:18435:double-reed instrument
data/imagenet.shortnames.list:18460:drop-leaf table
data/imagenet.shortnames.list:18490:electro-acoustic transducer
data/imagenet.shortnames.list:18526:external-combustion engine
data/imagenet.shortnames.list:18547:field-sequential color television
data/imagenet.shortnames.list:18584:flip-flop
data/imagenet.shortnames.list:18602:fore-and-aft sail
data/imagenet.shortnames.list:18605:fore-topmast
data/imagenet.shortnames.list:18614:free-reed instrument
data/imagenet.shortnames.list:18624:full-dress uniform
data/imagenet.shortnames.list:18652:gas-discharge tube
data/imagenet.shortnames.list:18667:general-purpose bomb
data/imagenet.shortnames.list:18760:heat-seeking missile
data/imagenet.shortnames.list:18761:heavier-than-air craft
data/imagenet.shortnames.list:18770:high-angle gun
data/imagenet.shortnames.list:18793:horse-drawn vehicle
data/imagenet.shortnames.list:18799:hot-air balloon
data/imagenet.shortnames.list:18832:ink-jet printer
data/imagenet.shortnames.list:18844:internal-combustion engine
data/imagenet.shortnames.list:18894:knee-high
data/imagenet.shortnames.list:18915:lead-acid battery
data/imagenet.shortnames.list:18932:light-emitting diode
data/imagenet.shortnames.list:18933:lighter-than-air craft
data/imagenet.shortnames.list:18980:main-topmast
data/imagenet.shortnames.list:18988:man-of-war
data/imagenet.shortnames.list:19028:mercury-vapor lamp
data/imagenet.shortnames.list:19058:motion-picture camera
data/imagenet.shortnames.list:19059:motion-picture film
data/imagenet.shortnames.list:19069:moving-coil galvanometer
data/imagenet.shortnames.list:19106:non-volatile storage
data/imagenet.shortnames.list:19124:open-air market
data/imagenet.shortnames.list:19125:open-end wrench
data/imagenet.shortnames.list:19249:pocket-handkerchief
data/imagenet.shortnames.list:19338:random-access memory
data/imagenet.shortnames.list:19341:reaction-propulsion engine
data/imagenet.shortnames.list:19345:read-only memory
data/imagenet.shortnames.list:19404:in-line skate
data/imagenet.shortnames.list:19476:self-propelled vehicle
data/imagenet.shortnames.list:19538:single-breasted suit
data/imagenet.shortnames.list:19539:single-reed instrument
data/imagenet.shortnames.list:19541:six-pack
data/imagenet.shortnames.list:19571:snap-brim hat
data/imagenet.shortnames.list:19574:Sno-cat
data/imagenet.shortnames.list:19647:step-up transformer
data/imagenet.shortnames.list:19695:surface-to-air missile
data/imagenet.shortnames.list:19735:tea-strainer
data/imagenet.shortnames.list:19767:three-piece suit
data/imagenet.shortnames.list:19768:three-way switch
data/imagenet.shortnames.list:19776:time-fuse
data/imagenet.shortnames.list:19779:time-switch
data/imagenet.shortnames.list:19848:twenty-two
data/imagenet.shortnames.list:19849:two-piece
data/imagenet.shortnames.list:19899:water-base paint
data/imagenet.shortnames.list:19903:water-cooled reactor
data/imagenet.shortnames.list:19955:work-clothing
data/imagenet.shortnames.list:19962:X-ray film
data/imagenet.shortnames.list:19963:X-ray machine
data/imagenet.shortnames.list:20075:ready-mix
data/imagenet.shortnames.list:20108:tutti-frutti
data/imagenet.shortnames.list:20147:baking-powder biscuit
data/imagenet.shortnames.list:20291:hot-fudge sauce
data/imagenet.shortnames.list:20295:hard-boiled egg
data/imagenet.shortnames.list:20771:in-law
data/imagenet.shortnames.list:20806:middle-aged man
data/imagenet.shortnames.list:20814:mixed-blood
data/imagenet.shortnames.list:20842:right-handed pitcher
data/imagenet.shortnames.list:20945:stand-in
data/imagenet.shortnames.list:21087:mouse-ear chickweed
data/imagenet.shortnames.list:21169:white-topped aster
data/imagenet.shortnames.list:21253:bottle-tree
data/imagenet.shortnames.list:21359:star-of-Bethlehem
data/imagenet.shortnames.list:21367:Solomon's-seal
data/imagenet.shortnames.list:21391:edible-pod pea
data/imagenet.shortnames.list:21523:kitten-tails
data/imagenet.shortnames.list:21587:jack-o-lantern fungus
data/imagenet.shortnames.list:21591:fairy-ring mushroom
data/imagenet.shortnames.list:21593:olive-tree agaric
data/imagenet.shortnames.list:21600:Pholiota squarrosa-adiposa
data/imagenet.shortnames.list:21605:Stropharia rugoso-annulata
data/imagenet.shortnames.list:21622:man-on-a-horse
data/imagenet.shortnames.list:21680:old-man-of-the-woods
data/imagenet.shortnames.list:21769:hare's-foot fern
data/imagenet.shortnames.list:21837:fat-soluble vitamin
data/imagenet.shortnames.list:21838:water-soluble vitamin
data/imagenet.shortnames.list:21840:B-complex vitamin
Binary file data/kite.jpg matches
Binary file data/dog.jpg matches
Binary file data/giraffe.jpg matches
data/9k.tree:1:n00002452 -1
data/9k.tree:2:n00020827 -1
data/9k.tree:3:n00002684 -1
data/9k.tree:4:n11425580 -1
Binary file data/labels/66_5.png matches
Binary file data/labels/120_4.png matches
Binary file data/labels/39_1.png matches
Binary file data/labels/47_6.png matches
Binary file data/labels/112_5.png matches
Binary file data/labels/36_0.png matches
Binary file data/labels/74_7.png matches
Binary file data/labels/56_7.png matches
Binary file data/labels/113_1.png matches
Binary file data/labels/101_3.png matches
Binary file data/labels/120_7.png matches
Binary file data/labels/44_7.png matches
Binary file data/labels/81_5.png matches
Binary file data/labels/43_7.png matches
Binary file data/labels/41_2.png matches
Binary file data/labels/123_3.png matches
Binary file data/labels/103_0.png matches
Binary file data/labels/117_3.png matches
Binary file data/labels/78_7.png matches
Binary file data/labels/98_7.png matches
Binary file data/labels/62_4.png matches
Binary file data/labels/72_6.png matches
Binary file data/labels/71_2.png matches
Binary file data/labels/115_2.png matches
Binary file data/labels/76_4.png matches
Binary file data/labels/81_0.png matches
Binary file data/labels/69_7.png matches
Binary file data/labels/64_2.png matches
Binary file data/labels/115_0.png matches
Binary file data/labels/115_7.png matches
Binary file data/labels/54_3.png matches
Binary file data/labels/57_4.png matches
Binary file data/labels/104_4.png matches
Binary file data/labels/68_2.png matches
Binary file data/labels/70_3.png matches
Binary file data/labels/124_4.png matches
Binary file data/labels/105_6.png matches
Binary file data/labels/35_4.png matches
Binary file data/labels/51_4.png matches
Binary file data/labels/120_0.png matches
Binary file data/labels/34_7.png matches
Binary file data/labels/51_6.png matches
Binary file data/labels/121_1.png matches
Binary file data/labels/79_3.png matches
Binary file data/labels/102_4.png matches
Binary file data/labels/113_2.png matches
Binary file data/labels/43_6.png matches
Binary file data/labels/71_6.png matches
Binary file data/labels/38_2.png matches
Binary file data/labels/43_4.png matches
Binary file data/labels/94_7.png matches
Binary file data/labels/93_3.png matches
Binary file data/labels/62_6.png matches
Binary file data/labels/69_6.png matches
Binary file data/labels/89_0.png matches
Binary file data/labels/113_3.png matches
Binary file data/labels/61_4.png matches
Binary file data/labels/78_2.png matches
Binary file data/labels/41_3.png matches
Binary file data/labels/106_0.png matches
Binary file data/labels/80_2.png matches
Binary file data/labels/80_1.png matches
Binary file data/labels/72_2.png matches
Binary file data/labels/88_3.png matches
Binary file data/labels/55_1.png matches
Binary file data/labels/61_1.png matches
Binary file data/labels/80_4.png matches
Binary file data/labels/42_4.png matches
Binary file data/labels/41_5.png matches
Binary file data/labels/99_4.png matches
Binary file data/labels/70_5.png matches
Binary file data/labels/108_7.png matches
Binary file data/labels/73_5.png matches
Binary file data/labels/55_4.png matches
Binary file data/labels/100_3.png matches
Binary file data/labels/40_4.png matches
Binary file data/labels/94_3.png matches
Binary file data/labels/46_6.png matches
Binary file data/labels/33_3.png matches
Binary file data/labels/118_2.png matches
Binary file data/labels/114_2.png matches
Binary file data/labels/82_5.png matches
Binary file data/labels/32_2.png matches
Binary file data/labels/83_0.png matches
Binary file data/labels/58_0.png matches
Binary file data/labels/36_4.png matches
Binary file data/labels/50_6.png matches
Binary file data/labels/91_3.png matches
Binary file data/labels/56_1.png matches
Binary file data/labels/70_4.png matches
Binary file data/labels/48_0.png matches
Binary file data/labels/98_5.png matches
Binary file data/labels/94_6.png matches
Binary file data/labels/106_1.png matches
Binary file data/labels/32_1.png matches
Binary file data/labels/89_5.png matches
Binary file data/labels/67_3.png matches
Binary file data/labels/34_2.png matches
Binary file data/labels/107_3.png matches
Binary file data/labels/71_0.png matches
Binary file data/labels/73_6.png matches
Binary file data/labels/120_6.png matches
Binary file data/labels/112_6.png matches
Binary file data/labels/74_2.png matches
Binary file data/labels/42_7.png matches
Binary file data/labels/126_0.png matches
Binary file data/labels/93_1.png matches
Binary file data/labels/56_5.png matches
Binary file data/labels/115_4.png matches
Binary file data/labels/52_7.png matches
Binary file data/labels/91_2.png matches
Binary file data/labels/118_3.png matches
Binary file data/labels/46_2.png matches
Binary file data/labels/50_4.png matches
Binary file data/labels/89_4.png matches
Binary file data/labels/92_7.png matches
Binary file data/labels/50_5.png matches
Binary file data/labels/77_3.png matches
Binary file data/labels/33_1.png matches
Binary file data/labels/106_2.png matches
Binary file data/labels/121_5.png matches
Binary file data/labels/70_1.png matches
Binary file data/labels/50_3.png matches
Binary file data/labels/102_1.png matches
Binary file data/labels/109_2.png matches
Binary file data/labels/93_0.png matches
Binary file data/labels/53_7.png matches
Binary file data/labels/118_4.png matches
Binary file data/labels/39_4.png matches
Binary file data/labels/82_4.png matches
Binary file data/labels/121_7.png matches
Binary file data/labels/122_2.png matches
Binary file data/labels/112_2.png matches
Binary file data/labels/48_4.png matches
Binary file data/labels/76_7.png matches
Binary file data/labels/86_7.png matches
Binary file data/labels/122_3.png matches
Binary file data/labels/79_2.png matches
Binary file data/labels/85_0.png matches
Binary file data/labels/108_5.png matches
Binary file data/labels/83_3.png matches
Binary file data/labels/85_6.png matches
Binary file data/labels/42_5.png matches
Binary file data/labels/73_4.png matches
Binary file data/labels/38_0.png matches
Binary file data/labels/100_0.png matches
Binary file data/labels/68_6.png matches
Binary file data/labels/85_2.png matches
Binary file data/labels/51_1.png matches
Binary file data/labels/51_3.png matches
Binary file data/labels/124_0.png matches
Binary file data/labels/79_7.png matches
Binary file data/labels/104_7.png matches
Binary file data/labels/101_6.png matches
Binary file data/labels/112_7.png matches
Binary file data/labels/96_2.png matches
Binary file data/labels/85_1.png matches
Binary file data/labels/71_4.png matches
Binary file data/labels/89_6.png matches
Binary file data/labels/110_4.png matches
Binary file data/labels/67_5.png matches
Binary file data/labels/77_1.png matches
Binary file data/labels/97_6.png matches
Binary file data/labels/40_3.png matches
Binary file data/labels/97_0.png matches
Binary file data/labels/76_3.png matches
Binary file data/labels/61_7.png matches
Binary file data/labels/65_1.png matches
Binary file data/labels/61_5.png matches
Binary file data/labels/48_1.png matches
Binary file data/labels/103_2.png matches
Binary file data/labels/73_2.png matches
Binary file data/labels/77_4.png matches
Binary file data/labels/112_1.png matches
Binary file data/labels/54_6.png matches
Binary file data/labels/110_7.png matches
Binary file data/labels/89_7.png matches
Binary file data/labels/32_0.png matches
Binary file data/labels/85_7.png matches
Binary file data/labels/111_6.png matches
Binary file data/labels/105_5.png matches
Binary file data/labels/96_6.png matches
Binary file data/labels/44_0.png matches
Binary file data/labels/91_0.png matches
Binary file data/labels/80_7.png matches
Binary file data/labels/106_5.png matches
Binary file data/labels/75_6.png matches
Binary file data/labels/96_5.png matches
Binary file data/labels/61_2.png matches
Binary file data/labels/109_1.png matches
Binary file data/labels/64_6.png matches
Binary file data/labels/90_2.png matches
Binary file data/labels/113_5.png matches
Binary file data/labels/81_2.png matches
Binary file data/labels/114_4.png matches
Binary file data/labels/41_6.png matches
Binary file data/labels/117_1.png matches
Binary file data/labels/43_1.png matches
Binary file data/labels/43_3.png matches
Binary file data/labels/41_1.png matches
Binary file data/labels/107_4.png matches
Binary file data/labels/92_2.png matches
Binary file data/labels/32_3.png matches
Binary file data/labels/65_0.png matches
Binary file data/labels/56_6.png matches
Binary file data/labels/68_1.png matches
Binary file data/labels/33_5.png matches
Binary file data/labels/54_0.png matches
Binary file data/labels/97_4.png matches
Binary file data/labels/69_2.png matches
Binary file data/labels/107_7.png matches
Binary file data/labels/101_0.png matches
Binary file data/labels/82_3.png matches
Binary file data/labels/32_6.png matches
Binary file data/labels/58_1.png matches
Binary file data/labels/92_3.png matches
Binary file data/labels/110_5.png matches
Binary file data/labels/58_7.png matches
Binary file data/labels/64_1.png matches
Binary file data/labels/82_0.png matches
Binary file data/labels/60_7.png matches
Binary file data/labels/78_4.png matches
Binary file data/labels/86_2.png matches
Binary file data/labels/49_7.png matches
Binary file data/labels/74_3.png matches
Binary file data/labels/99_6.png matches
Binary file data/labels/126_4.png matches
Binary file data/labels/49_2.png matches
Binary file data/labels/78_3.png matches
Binary file data/labels/76_6.png matches
Binary file data/labels/84_0.png matches
Binary file data/labels/110_3.png matches
Binary file data/labels/40_7.png matches
Binary file data/labels/113_0.png matches
Binary file data/labels/45_0.png matches
Binary file data/labels/90_5.png matches
Binary file data/labels/106_7.png matches
Binary file data/labels/88_5.png matches
Binary file data/labels/43_0.png matches
Binary file data/labels/104_0.png matches
Binary file data/labels/122_4.png matches
Binary file data/labels/97_7.png matches
Binary file data/labels/119_5.png matches
Binary file data/labels/121_6.png matches
Binary file data/labels/95_3.png matches
Binary file data/labels/47_1.png matches
Binary file data/labels/64_5.png matches
Binary file data/labels/124_5.png matches
Binary file data/labels/56_3.png matches
Binary file data/labels/66_3.png matches
Binary file data/labels/49_4.png matches
Binary file data/labels/37_1.png matches
Binary file data/labels/42_0.png matches
Binary file data/labels/62_3.png matches
Binary file data/labels/78_0.png matches
Binary file data/labels/99_3.png matches
Binary file data/labels/75_3.png matches
Binary file data/labels/82_1.png matches
Binary file data/labels/59_5.png matches
Binary file data/labels/34_1.png matches
Binary file data/labels/83_4.png matches
Binary file data/labels/113_4.png matches
Binary file data/labels/69_3.png matches
Binary file data/labels/90_6.png matches
Binary file data/labels/91_7.png matches
Binary file data/labels/98_6.png matches
Binary file data/labels/103_1.png matches
Binary file data/labels/114_0.png matches
Binary file data/labels/104_1.png matches
Binary file data/labels/36_3.png matches
Binary file data/labels/117_2.png matches
Binary file data/labels/89_1.png matches
Binary file data/labels/101_4.png matches
Binary file data/labels/108_3.png matches
Binary file data/labels/66_2.png matches
Binary file data/labels/63_0.png matches
Binary file data/labels/57_0.png matches
Binary file data/labels/96_7.png matches
Binary file data/labels/110_2.png matches
Binary file data/labels/100_7.png matches
Binary file data/labels/91_6.png matches
Binary file data/labels/122_1.png matches
Binary file data/labels/64_4.png matches
Binary file data/labels/45_5.png matches
Binary file data/labels/55_2.png matches
Binary file data/labels/92_1.png matches
Binary file data/labels/99_7.png matches
Binary file data/labels/42_3.png matches
Binary file data/labels/45_6.png matches
Binary file data/labels/86_3.png matches
Binary file data/labels/103_5.png matches
Binary file data/labels/90_3.png matches
Binary file data/labels/125_6.png matches
Binary file data/labels/36_6.png matches
Binary file data/labels/114_3.png matches
Binary file data/labels/63_6.png matches
Binary file data/labels/105_4.png matches
Binary file data/labels/32_7.png matches
Binary file data/labels/52_1.png matches
Binary file data/labels/115_3.png matches
Binary file data/labels/118_6.png matches
Binary file data/labels/116_6.png matches
Binary file data/labels/75_0.png matches
Binary file data/labels/100_2.png matches
Binary file data/labels/67_7.png matches
Binary file data/labels/52_3.png matches
Binary file data/labels/64_7.png matches
Binary file data/labels/120_3.png matches
Binary file data/labels/60_6.png matches
Binary file data/labels/35_6.png matches
Binary file data/labels/78_1.png matches
Binary file data/labels/72_4.png matches
Binary file data/labels/82_7.png matches
Binary file data/labels/112_3.png matches
Binary file data/labels/120_2.png matches
Binary file data/labels/80_5.png matches
Binary file data/labels/81_3.png matches
Binary file data/labels/36_2.png matches
Binary file data/labels/96_3.png matches
Binary file data/labels/53_5.png matches
Binary file data/labels/119_6.png matches
Binary file data/labels/53_2.png matches
Binary file data/labels/84_2.png matches
Binary file data/labels/56_2.png matches
Binary file data/labels/98_3.png matches
Binary file data/labels/72_5.png matches
Binary file data/labels/75_4.png matches
Binary file data/labels/86_1.png matches
Binary file data/labels/86_0.png matches
Binary file data/labels/79_5.png matches
Binary file data/labels/46_1.png matches
Binary file data/labels/48_2.png matches
Binary file data/labels/52_0.png matches
Binary file data/labels/68_0.png matches
Binary file data/labels/114_1.png matches
Binary file data/labels/120_5.png matches
Binary file data/labels/101_2.png matches
Binary file data/labels/62_5.png matches
Binary file data/labels/107_1.png matches
Binary file data/labels/71_5.png matches
Binary file data/labels/59_1.png matches
Binary file data/labels/34_4.png matches
Binary file data/labels/40_0.png matches
Binary file data/labels/61_3.png matches
Binary file data/labels/104_2.png matches
Binary file data/labels/33_6.png matches
Binary file data/labels/40_1.png matches
Binary file data/labels/102_6.png matches
Binary file data/labels/63_7.png matches
Binary file data/labels/115_5.png matches
Binary file data/labels/47_4.png matches
Binary file data/labels/122_7.png matches
Binary file data/labels/109_6.png matches
Binary file data/labels/49_1.png matches
Binary file data/labels/103_3.png matches
Binary file data/labels/88_0.png matches
Binary file data/labels/92_4.png matches
Binary file data/labels/103_6.png matches
Binary file data/labels/86_6.png matches
Binary file data/labels/111_4.png matches
Binary file data/labels/90_1.png matches
Binary file data/labels/69_1.png matches
Binary file data/labels/46_5.png matches
Binary file data/labels/82_6.png matches
Binary file data/labels/115_6.png matches
Binary file data/labels/80_3.png matches
Binary file data/labels/33_2.png matches
Binary file data/labels/63_5.png matches
Binary file data/labels/99_5.png matches
Binary file data/labels/60_1.png matches
Binary file data/labels/126_7.png matches
Binary file data/labels/57_6.png matches
Binary file data/labels/107_2.png matches
Binary file data/labels/125_3.png matches
Binary file data/labels/74_1.png matches
Binary file data/labels/115_1.png matches
Binary file data/labels/92_5.png matches
Binary file data/labels/109_5.png matches
Binary file data/labels/86_5.png matches
Binary file data/labels/49_6.png matches
Binary file data/labels/58_4.png matches
Binary file data/labels/87_5.png matches
Binary file data/labels/47_3.png matches
Binary file data/labels/88_6.png matches
Binary file data/labels/45_4.png matches
Binary file data/labels/64_3.png matches
Binary file data/labels/32_4.png matches
Binary file data/labels/78_6.png matches
Binary file data/labels/85_5.png matches
Binary file data/labels/38_7.png matches
Binary file data/labels/93_7.png matches
Binary file data/labels/67_1.png matches
Binary file data/labels/125_5.png matches
Binary file data/labels/126_1.png matches
Binary file data/labels/54_1.png matches
Binary file data/labels/95_6.png matches
Binary file data/labels/114_7.png matches
Binary file data/labels/100_4.png matches
Binary file data/labels/102_5.png matches
Binary file data/labels/83_1.png matches
Binary file data/labels/32_5.png matches
Binary file data/labels/117_5.png matches
Binary file data/labels/116_5.png matches
Binary file data/labels/116_4.png matches
Binary file data/labels/42_1.png matches
Binary file data/labels/73_1.png matches
Binary file data/labels/111_2.png matches
Binary file data/labels/46_3.png matches
Binary file data/labels/123_2.png matches
Binary file data/labels/47_0.png matches
Binary file data/labels/104_5.png matches
Binary file data/labels/106_4.png matches
Binary file data/labels/55_0.png matches
Binary file data/labels/52_5.png matches
Binary file data/labels/125_0.png matches
Binary file data/labels/36_5.png matches
Binary file data/labels/56_0.png matches
Binary file data/labels/47_7.png matches
Binary file data/labels/98_2.png matches
Binary file data/labels/39_6.png matches
Binary file data/labels/60_2.png matches
Binary file data/labels/68_5.png matches
Binary file data/labels/49_0.png matches
Binary file data/labels/102_7.png matches
Binary file data/labels/118_5.png matches
Binary file data/labels/111_0.png matches
Binary file data/labels/96_1.png matches
Binary file data/labels/62_0.png matches
Binary file data/labels/65_2.png matches
Binary file data/labels/41_4.png matches
Binary file data/labels/55_6.png matches
Binary file data/labels/92_6.png matches
Binary file data/labels/116_2.png matches
Binary file data/labels/71_1.png matches
Binary file data/labels/59_7.png matches
Binary file data/labels/57_2.png matches
Binary file data/labels/101_7.png matches
Binary file data/labels/112_4.png matches
Binary file data/labels/91_5.png matches
Binary file data/labels/51_2.png matches
Binary file data/labels/53_0.png matches
Binary file data/labels/78_5.png matches
Binary file data/labels/62_1.png matches
Binary file data/labels/118_7.png matches
Binary file data/labels/94_4.png matches
Binary file data/labels/66_4.png matches
Binary file data/labels/65_5.png matches
Binary file data/labels/66_6.png matches
Binary file data/labels/60_0.png matches
Binary file data/labels/84_1.png matches
Binary file data/labels/64_0.png matches
Binary file data/labels/114_5.png matches
Binary file data/labels/84_6.png matches
Binary file data/labels/123_5.png matches
Binary file data/labels/113_6.png matches
Binary file data/labels/122_6.png matches
Binary file data/labels/67_2.png matches
Binary file data/labels/88_4.png matches
Binary file data/labels/55_7.png matches
Binary file data/labels/121_4.png matches
Binary file data/labels/123_7.png matches
Binary file data/labels/97_2.png matches
Binary file data/labels/89_2.png matches
Binary file data/labels/66_1.png matches
Binary file data/labels/95_4.png matches
Binary file data/labels/73_0.png matches
Binary file data/labels/39_7.png matches
Binary file data/labels/44_4.png matches
Binary file data/labels/70_0.png matches
Binary file data/labels/123_1.png matches
Binary file data/labels/63_2.png matches
Binary file data/labels/41_7.png matches
Binary file data/labels/91_1.png matches
Binary file data/labels/72_0.png matches
Binary file data/labels/116_1.png matches
Binary file data/labels/34_3.png matches
Binary file data/labels/46_0.png matches
Binary file data/labels/111_3.png matches
Binary file data/labels/65_4.png matches
Binary file data/labels/77_5.png matches
Binary file data/labels/76_2.png matches
Binary file data/labels/112_0.png matches
Binary file data/labels/103_7.png matches
Binary file data/labels/81_7.png matches
Binary file data/labels/101_5.png matches
Binary file data/labels/87_0.png matches
Binary file data/labels/54_5.png matches
Binary file data/labels/119_7.png matches
Binary file data/labels/123_6.png matches
Binary file data/labels/53_6.png matches
Binary file data/labels/96_4.png matches
Binary file data/labels/98_4.png matches
Binary file data/labels/69_5.png matches
Binary file data/labels/109_3.png matches
Binary file data/labels/88_1.png matches
Binary file data/labels/45_7.png matches
Binary file data/labels/49_3.png matches
Binary file data/labels/117_7.png matches
Binary file data/labels/122_0.png matches
Binary file data/labels/116_7.png matches
Binary file data/labels/54_4.png matches
Binary file data/labels/107_6.png matches
Binary file data/labels/72_1.png matches
Binary file data/labels/70_7.png matches
Binary file data/labels/74_6.png matches
Binary file data/labels/93_4.png matches
Binary file data/labels/119_1.png matches
Binary file data/labels/88_7.png matches
Binary file data/labels/48_3.png matches
Binary file data/labels/97_3.png matches
Binary file data/labels/51_0.png matches
Binary file data/labels/87_2.png matches
Binary file data/labels/87_3.png matches
Binary file data/labels/100_6.png matches
Binary file data/labels/76_1.png matches
Binary file data/labels/35_2.png matches
Binary file data/labels/38_3.png matches
Binary file data/labels/113_7.png matches
Binary file data/labels/105_2.png matches
Binary file data/labels/124_6.png matches
Binary file data/labels/68_7.png matches
Binary file data/labels/59_3.png matches
Binary file data/labels/117_0.png matches
Binary file data/labels/72_7.png matches
Binary file data/labels/79_4.png matches
Binary file data/labels/126_5.png matches
Binary file data/labels/102_2.png matches
Binary file data/labels/76_0.png matches
Binary file data/labels/94_2.png matches
Binary file data/labels/53_1.png matches
Binary file data/labels/68_3.png matches
Binary file data/labels/98_0.png matches
Binary file data/labels/121_2.png matches
Binary file data/labels/63_1.png matches
Binary file data/labels/125_2.png matches
Binary file data/labels/71_3.png matches
Binary file data/labels/95_5.png matches
Binary file data/labels/81_6.png matches
Binary file data/labels/46_4.png matches
Binary file data/labels/36_7.png matches
Binary file data/labels/77_7.png matches
Binary file data/labels/105_0.png matches
Binary file data/labels/91_4.png matches
Binary file data/labels/52_6.png matches
Binary file data/labels/109_0.png matches
Binary file data/labels/101_1.png matches
Binary file data/labels/75_1.png matches
Binary file data/labels/121_3.png matches
Binary file data/labels/66_0.png matches
Binary file data/labels/47_5.png matches
Binary file data/labels/110_1.png matches
Binary file data/labels/111_5.png matches
Binary file data/labels/58_5.png matches
Binary file data/labels/60_5.png matches
Binary file data/labels/47_2.png matches
Binary file data/labels/59_2.png matches
Binary file data/labels/35_7.png matches
Binary file data/labels/119_4.png matches
Binary file data/labels/81_4.png matches
Binary file data/labels/38_1.png matches
Binary file data/labels/70_6.png matches
Binary file data/labels/124_7.png matches
Binary file data/labels/95_1.png matches
Binary file data/labels/75_7.png matches
Binary file data/labels/126_6.png matches
Binary file data/labels/90_7.png matches
Binary file data/labels/108_4.png matches
Binary file data/labels/33_0.png matches
Binary file data/labels/59_6.png matches
Binary file data/labels/54_7.png matches
Binary file data/labels/116_3.png matches
Binary file data/labels/41_0.png matches
Binary file data/labels/104_3.png matches
Binary file data/labels/65_3.png matches
Binary file data/labels/77_2.png matches
Binary file data/labels/100_5.png matches
Binary file data/labels/110_6.png matches
Binary file data/labels/38_6.png matches
Binary file data/labels/49_5.png matches
Binary file data/labels/35_5.png matches
Binary file data/labels/62_7.png matches
Binary file data/labels/97_5.png matches
Binary file data/labels/99_1.png matches
Binary file data/labels/108_0.png matches
Binary file data/labels/89_3.png matches
Binary file data/labels/106_6.png matches
Binary file data/labels/37_6.png matches
Binary file data/labels/76_5.png matches
Binary file data/labels/45_2.png matches
Binary file data/labels/37_4.png matches
Binary file data/labels/42_6.png matches
Binary file data/labels/119_2.png matches
Binary file data/labels/83_7.png matches
Binary file data/labels/59_4.png matches
Binary file data/labels/123_4.png matches
Binary file data/labels/45_3.png matches
Binary file data/labels/43_5.png matches
Binary file data/labels/40_5.png matches
Binary file data/labels/63_3.png matches
Binary file data/labels/99_2.png matches
Binary file data/labels/40_6.png matches
Binary file data/labels/58_6.png matches
Binary file data/labels/119_3.png matches
Binary file data/labels/58_2.png matches
Binary file data/labels/69_4.png matches
Binary file data/labels/50_2.png matches
Binary file data/labels/109_7.png matches
Binary file data/labels/110_0.png matches
Binary file data/labels/50_0.png matches
Binary file data/labels/81_1.png matches
Binary file data/labels/37_7.png matches
Binary file data/labels/33_4.png matches
Binary file data/labels/54_2.png matches
Binary file data/labels/94_1.png matches
Binary file data/labels/102_3.png matches
Binary file data/labels/116_0.png matches
Binary file data/labels/48_6.png matches
Binary file data/labels/44_1.png matches
Binary file data/labels/87_1.png matches
Binary file data/labels/118_0.png matches
Binary file data/labels/117_4.png matches
data/labels/make_labels.py:5:font = 'futura-normal'
data/labels/make_labels.py:11:            os.system('convert -fill black -background white -bordercolor white -font %s -pointsize %d label:"\ " 32_%d.png'%(font,s,s/12-1))
data/labels/make_labels.py:13:            os.system('convert -fill black -background white -bordercolor white -font %s -pointsize %d label:"\@" 64_%d.png'%(font,s,s/12-1))
data/labels/make_labels.py:15:            os.system('convert -fill black -background white -bordercolor white -font %s -pointsize %d label:"\\\\\\\\" 92_%d.png'%(font,s,s/12-1))
data/labels/make_labels.py:19:            os.system("convert -fill black -background white -bordercolor white -font %s -pointsize %d label:%s \"%d_%d.png\""%(font,s,pipes.quote(word), ord(word),s/12-1))
Binary file data/labels/100_1.png matches
Binary file data/labels/35_3.png matches
Binary file data/labels/105_7.png matches
Binary file data/labels/90_4.png matches
Binary file data/labels/95_2.png matches
Binary file data/labels/105_1.png matches
Binary file data/labels/93_2.png matches
Binary file data/labels/109_4.png matches
Binary file data/labels/50_7.png matches
Binary file data/labels/51_7.png matches
Binary file data/labels/108_1.png matches
Binary file data/labels/111_7.png matches
Binary file data/labels/107_0.png matches
Binary file data/labels/67_4.png matches
Binary file data/labels/87_7.png matches
Binary file data/labels/46_7.png matches
Binary file data/labels/126_3.png matches
Binary file data/labels/36_1.png matches
Binary file data/labels/84_7.png matches
Binary file data/labels/37_0.png matches
Binary file data/labels/58_3.png matches
Binary file data/labels/66_7.png matches
Binary file data/labels/44_3.png matches
Binary file data/labels/82_2.png matches
Binary file data/labels/37_5.png matches
Binary file data/labels/80_6.png matches
Binary file data/labels/48_5.png matches
Binary file data/labels/37_3.png matches
Binary file data/labels/71_7.png matches
Binary file data/labels/94_5.png matches
Binary file data/labels/80_0.png matches
Binary file data/labels/55_3.png matches
Binary file data/labels/44_5.png matches
Binary file data/labels/124_2.png matches
Binary file data/labels/60_4.png matches
Binary file data/labels/105_3.png matches
Binary file data/labels/84_5.png matches
Binary file data/labels/65_6.png matches
Binary file data/labels/44_6.png matches
Binary file data/labels/38_5.png matches
Binary file data/labels/108_6.png matches
Binary file data/labels/39_3.png matches
Binary file data/labels/87_4.png matches
Binary file data/labels/52_4.png matches
Binary file data/labels/33_7.png matches
Binary file data/labels/103_4.png matches
Binary file data/labels/92_0.png matches
Binary file data/labels/57_7.png matches
Binary file data/labels/51_5.png matches
Binary file data/labels/79_6.png matches
Binary file data/labels/70_2.png matches
Binary file data/labels/83_5.png matches
Binary file data/labels/43_2.png matches
Binary file data/labels/120_1.png matches
Binary file data/labels/117_6.png matches
Binary file data/labels/85_4.png matches
Binary file data/labels/74_0.png matches
Binary file data/labels/85_3.png matches
Binary file data/labels/75_5.png matches
Binary file data/labels/69_0.png matches
Binary file data/labels/95_0.png matches
Binary file data/labels/67_6.png matches
Binary file data/labels/34_5.png matches
Binary file data/labels/34_6.png matches
Binary file data/labels/95_7.png matches
Binary file data/labels/93_6.png matches
Binary file data/labels/102_0.png matches
Binary file data/labels/72_3.png matches
Binary file data/labels/104_6.png matches
Binary file data/labels/84_3.png matches
Binary file data/labels/35_0.png matches
Binary file data/labels/125_4.png matches
Binary file data/labels/60_3.png matches
Binary file data/labels/39_5.png matches
Binary file data/labels/96_0.png matches
Binary file data/labels/68_4.png matches
Binary file data/labels/118_1.png matches
Binary file data/labels/125_7.png matches
Binary file data/labels/44_2.png matches
Binary file data/labels/106_3.png matches
Binary file data/labels/48_7.png matches
Binary file data/labels/53_3.png matches
Binary file data/labels/73_3.png matches
Binary file data/labels/57_5.png matches
Binary file data/labels/65_7.png matches
Binary file data/labels/84_4.png matches
Binary file data/labels/77_6.png matches
Binary file data/labels/56_4.png matches
Binary file data/labels/114_6.png matches
Binary file data/labels/83_2.png matches
Binary file data/labels/74_5.png matches
Binary file data/labels/124_1.png matches
Binary file data/labels/39_0.png matches
Binary file data/labels/125_1.png matches
Binary file data/labels/53_4.png matches
Binary file data/labels/90_0.png matches
Binary file data/labels/97_1.png matches
Binary file data/labels/40_2.png matches
Binary file data/labels/126_2.png matches
Binary file data/labels/61_6.png matches
Binary file data/labels/52_2.png matches
Binary file data/labels/86_4.png matches
Binary file data/labels/39_2.png matches
Binary file data/labels/79_0.png matches
Binary file data/labels/77_0.png matches
Binary file data/labels/42_2.png matches
Binary file data/labels/98_1.png matches
Binary file data/labels/83_6.png matches
Binary file data/labels/57_3.png matches
Binary file data/labels/88_2.png matches
Binary file data/labels/35_1.png matches
Binary file data/labels/99_0.png matches
Binary file data/labels/61_0.png matches
Binary file data/labels/73_7.png matches
Binary file data/labels/38_4.png matches
Binary file data/labels/67_0.png matches
Binary file data/labels/74_4.png matches
Binary file data/labels/107_5.png matches
Binary file data/labels/45_1.png matches
Binary file data/labels/93_5.png matches
Binary file data/labels/37_2.png matches
Binary file data/labels/79_1.png matches
Binary file data/labels/87_6.png matches
Binary file data/labels/122_5.png matches
Binary file data/labels/50_1.png matches
Binary file data/labels/62_2.png matches
Binary file data/labels/55_5.png matches
Binary file data/labels/59_0.png matches
Binary file data/labels/75_2.png matches
Binary file data/labels/111_1.png matches
Binary file data/labels/124_3.png matches
Binary file data/labels/108_2.png matches
Binary file data/labels/34_0.png matches
Binary file data/labels/121_0.png matches
Binary file data/labels/119_0.png matches
Binary file data/labels/63_4.png matches
Binary file data/labels/123_0.png matches
Binary file data/labels/57_1.png matches
Binary file data/labels/94_0.png matches
data/openimages.names:271:Wood-burning stove
data/openimages.names:560:Band-aid
data/9k.names:207:lamb's-quarter
data/9k.names:728:split-pea soup
data/9k.names:770:hard-boiled egg
data/9k.names:780:bacon-lettuce-tomato sandwich
data/9k.names:782:open-face sandwich
data/9k.names:807:ice-cream cake
data/9k.names:809:ice-cream sundae
data/9k.names:810:ice-cream cone
data/9k.names:828:water-soluble vitamin
data/9k.names:829:fat-soluble vitamin
data/9k.names:832:B-complex vitamin
data/9k.names:927:half-mast
data/9k.names:931:hole-in-the-wall
data/9k.names:1094:finger-painting
data/9k.names:1131:hula-hoop
data/9k.names:1282:high-rise
data/9k.names:1360:hotel-casino
data/9k.names:1587:dining-hall
data/9k.names:1688:fixer-upper
data/9k.names:1691:semi-detached house
data/9k.names:1732:stained-glass window
data/9k.names:1749:passe-partout
data/9k.names:1813:open-air market
data/9k.names:1860:after-shave
data/9k.names:1874:lip-gloss
data/9k.names:1941:in-line skate
data/9k.names:1984:point-and-shoot camera
data/9k.names:1986:motion-picture camera
data/9k.names:1990:X-ray film
data/9k.names:2002:first-aid kit
data/9k.names:2042:ping-pong ball
data/9k.names:2084:pay-phone
data/9k.names:2094:hi-fi
data/9k.names:2242:open-end wrench
data/9k.names:2288:battle-ax
data/9k.names:2355:table-tennis racquet
data/9k.names:2429:felt-tip pen
data/9k.names:2432:dining-room furniture
data/9k.names:2439:dining-room table
data/9k.names:2465:four-poster
data/9k.names:2476:table-tennis table
data/9k.names:2491:drop-leaf table
data/9k.names:2531:ladder-back
data/9k.names:2652:CD-ROM drive
data/9k.names:2701:free-reed instrument
data/9k.names:2706:beating-reed instrument
data/9k.names:2707:double-reed instrument
data/9k.names:2708:single-reed instrument
data/9k.names:2791:ink-jet printer
data/9k.names:2805:internal-combustion engine
data/9k.names:2839:hand-held computer
data/9k.names:2868:light-emitting diode
data/9k.names:2892:tea-strainer
data/9k.names:2912:golf-club head
data/9k.names:2973:grease-gun
data/9k.names:3033:four-wheel drive
data/9k.names:3090:ladder-back
data/9k.names:3165:wide-angle lens
data/9k.names:3202:field-emission microscope
data/9k.names:3291:twenty-two
data/9k.names:3462:electro-acoustic transducer
data/9k.names:3484:lead-acid battery
data/9k.names:3521:C-clamp
data/9k.names:3540:CD-ROM
data/9k.names:3541:CD-R
data/9k.names:3546:random-access memory
data/9k.names:3552:seventy-eight
data/9k.names:3568:jack-o'-lantern
data/9k.names:3579:night-light
data/9k.names:3614:walkie-talkie
data/9k.names:3636:bread-bin
data/9k.names:3689:roll-on
data/9k.names:3763:self-propelled vehicle
data/9k.names:3770:horse-drawn vehicle
data/9k.names:3795:diesel-electric locomotive
data/9k.names:3796:diesel-hydraulic locomotive
data/9k.names:3800:four-wheel drive
data/9k.names:3802:go-kart
data/9k.names:3841:used-car
data/9k.names:3861:bicycle-built-for-two
data/9k.names:3863:push-bike
data/9k.names:3869:four-wheeler
data/9k.names:4021:in-basket
data/9k.names:4022:hot-water bottle
data/9k.names:4055:safe-deposit
data/9k.names:4066:roll-on roll-off
data/9k.names:4101:heavier-than-air craft
data/9k.names:4103:lighter-than-air craft
data/9k.names:4129:hot-air balloon
data/9k.names:4198:man-of-war
data/9k.names:4232:high-definition television
data/9k.names:4233:three-way calling
data/9k.names:4311:flip-flop
data/9k.names:4368:lean-to
data/9k.names:4467:stair-carpet
data/9k.names:4483:water-base paint
data/9k.names:4491:tent-fly
data/9k.names:4593:fore-and-aft sail
data/9k.names:4664:fleur-de-lis
data/9k.names:4697:horse-trail
data/9k.names:4744:iced-tea spoon
data/9k.names:4793:ready-to-wear
data/9k.names:4797:slip-on
data/9k.names:4802:foul-weather gear
data/9k.names:4834:snap-brim hat
data/9k.names:4887:hand-me-down
data/9k.names:4932:roll-on
data/9k.names:4944:work-shirt
data/9k.names:4964:single-breasted jacket
data/9k.names:4967:swallow-tailed coat
data/9k.names:5011:double-breasted suit
data/9k.names:5013:single-breasted suit
data/9k.names:5016:three-piece suit
data/9k.names:5017:two-piece
data/9k.names:5023:G-string
data/9k.names:5057:knee-high
data/9k.names:5077:Afro-wig
data/9k.names:5102:deep-freeze
data/9k.names:5126:tumble-dryer
data/9k.names:5204:mother-in-law's tongue
data/9k.names:5225:hart's-tongue
data/9k.names:5246:black-eyed Susan
data/9k.names:5316:common four-o'clock
data/9k.names:5324:love-in-a-mist
data/9k.names:5412:short-spurred fragrant orchid
data/9k.names:5447:common lady's-slipper
data/9k.names:5452:purple-fringed orchid
data/9k.names:5504:long-head coneflower
data/9k.names:5573:mouse-ear chickweed
data/9k.names:5578:Joe-Pye weed
data/9k.names:5579:Joe-Pye weed
data/9k.names:5580:garden forget-me-not
data/9k.names:5597:harvest-lice
data/9k.names:5615:baby blue-eyes
data/9k.names:5628:forget-me-not
data/9k.names:5640:broad-leaved plantain
data/9k.names:5665:snow-in-summer
data/9k.names:5683:jack-in-the-pulpit
data/9k.names:5700:red-hot poker
data/9k.names:5720:bird's-foot violet
data/9k.names:5730:water-mint
data/9k.names:5805:black-eyed Susan
data/9k.names:5840:love-in-a-mist
data/9k.names:5861:castor-oil plant
data/9k.names:5983:bottle-tree
data/9k.names:5995:red silk-cotton tree
data/9k.names:6060:India-rubber tree
data/9k.names:6066:smooth-leaved elm
data/9k.names:6074:looking-glass plant
data/9k.names:6273:table-mountain pine
data/9k.names:6307:gumbo-limbo
data/9k.names:6363:cat's-ear
data/9k.names:6381:star-of-Bethlehem
data/9k.names:6386:blue-eyed grass
data/9k.names:6387:blackberry-lily
data/9k.names:6413:Turk's-cap
data/9k.names:6414:Turk's-cap
data/9k.names:6431:night-blooming cereus
data/9k.names:6432:night-blooming cereus
data/9k.names:6433:night-blooming cereus
data/9k.names:6458:creepy-crawly
data/9k.names:6538:spiny-finned fish
data/9k.names:6539:soft-finned fish
data/9k.names:6761:wood-frog
data/9k.names:6800:two-toed sloth
data/9k.names:6801:two-toed sloth
data/9k.names:6802:three-toed sloth
data/9k.names:6911:slender-tailed meerkat
data/9k.names:6948:Shih-Tzu
data/9k.names:6972:wire-haired fox terrier
data/9k.names:6986:soft-coated wheaten terrier
data/9k.names:7004:German short-haired pointer
data/9k.names:7017:flat-coated retriever
data/9k.names:7019:curly-coated retriever
data/9k.names:7031:black-and-tan coonhound
data/9k.names:7102:black-footed ferret
data/9k.names:7137:bottle-nosed whale
data/9k.names:7221:even-toed ungulate
data/9k.names:7222:odd-toed ungulate
data/9k.names:7249:black-tailed deer
data/9k.names:7296:dik-dik
data/9k.names:7426:soft-shelled turtle
data/9k.names:7502:whip-snake
data/9k.names:7543:side-blotched lizard
data/9k.names:7608:black-crowned night heron
data/9k.names:7609:yellow-crowned night heron
data/9k.names:7657:black-necked stilt
data/9k.names:7658:black-winged stilt
data/9k.names:7671:red-backed sandpiper
data/9k.names:7713:black-backed gull
data/9k.names:7724:red-necked grebe
data/9k.names:7726:pied-billed grebe
data/9k.names:7727:black-necked grebe
data/9k.names:7782:quack-quack
data/9k.names:7808:red-breasted merganser
data/9k.names:7866:red-eyed vireo
data/9k.names:7892:yellow-breasted chat
data/9k.names:7898:ruby-crowned kinglet
data/9k.names:7922:black-capped chickadee
data/9k.names:7969:dark-eyed junco
data/9k.names:7979:white-throated sparrow
data/9k.names:7982:white-crowned sparrow
data/9k.names:8004:red-winged blackbird
data/9k.names:8005:white-bellied swallow
data/9k.names:8016:red-breasted nuthatch
data/9k.names:8018:white-breasted nuthatch
data/9k.names:8034:yellow-shafted flicker
data/9k.names:8035:red-breasted sapsucker
data/9k.names:8036:yellow-bellied sapsucker
data/9k.names:8067:red-shouldered hawk
data/9k.names:8074:rough-legged hawk
data/9k.names:8087:white-tailed kite
data/9k.names:8088:swallow-tailed kite
data/9k.names:8111:long-eared owl
data/9k.names:8162:ring-necked pheasant
data/9k.names:8172:red-legged partridge
data/9k.names:8194:ring-necked parakeet
data/9k.names:8195:sulphur-crested cockatoo
data/9k.names:8224:soft-shell clam
data/9k.names:8258:Portuguese man-of-war
data/9k.names:8308:orb-weaving spider
data/9k.names:8359:seventeen-year locust
data/9k.names:8392:long-horned beetle
data/9k.names:8425:leaf-cutting bee
data/9k.names:8445:red-spotted purple
data/9k.names:8579:right-hander
data/9k.names:8606:serjeant-at-law
data/9k.names:8721:right-handed pitcher
data/9k.names:8729:fire-eater
data/9k.names:8737:dancing-master
data/9k.names:8820:concert-goer
data/9k.names:8841:mill-hand
data/9k.names:8961:Mexican-American
data/9k.names:9064:organ-grinder
data/9k.names:9096:fire-eater
data/9k.names:9112:skin-diver
data/9k.names:9162:father-in-law
data/9k.names:9168:in-law
data/9k.names:9175:great-niece
data/9k.names:9177:great-aunt
data/9k.names:9195:great-nephew
data/9k.names:9213:hen-of-the-woods
data/9k.names:9235:Jew's-ear
data/9k.names:9258:fairy-ring mushroom
data/9k.names:9411:soup-strainer
Binary file data/person.jpg matches
Binary file libdarknet.so matches
examples/dice.c:8:    float avg_loss = -1;
examples/dice.c:22:    printf("%d\n", plist->size);
examples/dice.c:27:        data train = load_data_old(paths, imgs, plist->size, labels, 6, net.w, net.h);
examples/dice.c:28:        printf("Loaded: %lf seconds\n", sec(clock()-time));
examples/dice.c:32:        if(avg_loss == -1) avg_loss = loss;
examples/dice.c:34:        printf("%d: %f, %f avg, %lf seconds, %ld images\n", i, loss, avg_loss, sec(clock()-time), *net.seen);
examples/dice.c:57:    int m = plist->size;
examples/voxel.c:17:            shift = best_3d_shift_r(l, r, -l.h/100, l.h/100);
examples/voxel.c:20:        image ls = crop_image(l, (l.w - w)/2, (l.h - h)/2, w, h);
examples/voxel.c:21:        image rs = crop_image(r, 105 + (r.w - w)/2, (r.h - h)/2 + shift, w, h);
examples/voxel.c:46:    float avg_loss = -1;
examples/voxel.c:58:    //int N = plist->size;
examples/voxel.c:67:    args.m = plist->size;
examples/voxel.c:81:        printf("Loaded: %lf seconds\n", sec(clock()-time));
examples/voxel.c:88:        printf("%d: %f, %f avg, %f rate, %lf seconds, %d images\n", i, loss, avg_loss, get_current_rate(net), sec(clock()-time), i*imgs);
examples/voxel.c:136:        printf("%s: Predicted in %f seconds.\n", input, sec(clock()-time));
examples/swag.c:11:    float avg_loss = -1;
examples/swag.c:21:    layer l = net.layers[net.n - 1];
examples/swag.c:28:    //int N = plist->size;
examples/swag.c:36:    args.m = plist->size;
examples/swag.c:53:        printf("Loaded: %lf seconds\n", sec(clock()-time));
examples/swag.c:60:        printf("%d: %f, %f avg, %f rate, %lf seconds, %d images\n", i, loss, avg_loss, get_current_rate(net), sec(clock()-time), i*imgs);
examples/detector-scipy-opencv.py:29:    res = sorted(res, key=lambda x: -x[1])
examples/detector-scipy-opencv.py:39:net = dn.load_net("cfg/tiny-yolo.cfg", "tiny-yolo.weights", 0)
examples/rnn.c:13:    *n = paths->size;
examples/rnn.c:16:    node *x = paths->front;
examples/rnn.c:18:        contents[i] = read_file((char *)x->val);
examples/rnn.c:19:        x = x->next;
examples/rnn.c:38:        d[count-1] = n;
examples/rnn.c:61:        d[count-1] = line;
examples/rnn.c:173:    float avg_loss = -1;
examples/rnn.c:176:    int inputs = net->inputs;
examples/rnn.c:177:    fprintf(stderr, "Learning Rate: %g, Momentum: %g, Decay: %g, Inputs: %d %d %d\n", net->learning_rate, net->momentum, net->decay, inputs, net->batch, net->time_steps);
examples/rnn.c:178:    int batch = net->batch;
examples/rnn.c:179:    int steps = net->time_steps;
examples/rnn.c:180:    if(clear) *net->seen = 0;
examples/rnn.c:181:    int i = (*net->seen)/net->batch;
examples/rnn.c:191:    while(get_current_batch(net) < net->max_batches){
examples/rnn.c:201:        copy_cpu(net->inputs*net->batch, p.x, 1, net->input, 1);
examples/rnn.c:202:        copy_cpu(net->truths*net->batch, p.y, 1, net->truth, 1);
examples/rnn.c:210:        fprintf(stderr, "%d: %f, %f avg, %f rate, %lf seconds, %f epochs\n", i, loss, avg_loss, get_current_rate(net), sec(clock()-time), (float) chars/size);
examples/rnn.c:258:    int inputs = net->inputs;
examples/rnn.c:261:    for(i = 0; i < net->n; ++i) net->layers[i].temperature = temp;
examples/rnn.c:274:    for(i = 0; i < len-1; ++i){
examples/rnn.c:281:    if(len) c = seed[len-1];
examples/rnn.c:312:    int inputs = net->inputs;
examples/rnn.c:315:    for(i = 0; i < net->n; ++i) net->layers[i].temperature = temp;
examples/rnn.c:357:    int inputs = net->inputs;
examples/rnn.c:360:    for(i = 0; i < net->n; ++i) net->layers[i].temperature = temp;
examples/rnn.c:392:    int inputs = net->inputs;
examples/rnn.c:431:        printf("%d %d Perplexity: %4.4f    Word Perplexity: %4.4f\n", count, words, pow(2, -sum/count), pow(2, -sum/words));
examples/rnn.c:441:    int inputs = net->inputs;
examples/rnn.c:469:        printf("%d BPC: %4.4f   Perplexity: %4.4f    Word Perplexity: %4.4f\n", count, -sum/count, pow(2, -sum/count), pow(2, -sum/words));
examples/rnn.c:479:    int inputs = net->inputs;
examples/rnn.c:507:        layer l = net->layers[0];
examples/rnn.c:525:    char *filename = find_char_arg(argc, argv, "-file", "data/shakespeare.txt");
examples/rnn.c:526:    char *seed = find_char_arg(argc, argv, "-seed", "\n\n");
examples/rnn.c:527:    int len = find_int_arg(argc, argv, "-len", 1000);
examples/rnn.c:528:    float temp = find_float_arg(argc, argv, "-temp", .7);
examples/rnn.c:529:    int rseed = find_int_arg(argc, argv, "-srand", time(0));
examples/rnn.c:530:    int clear = find_arg(argc, argv, "-clear");
examples/rnn.c:531:    int tokenized = find_arg(argc, argv, "-tokenized");
examples/rnn.c:532:    char *tokens = find_char_arg(argc, argv, "-tokens", 0);
examples/captcha.c:30:    float avg_loss = -1;
examples/captcha.c:34:    printf("Learning Rate: %g, Momentum: %g, Decay: %g\n", net->learning_rate, net->momentum, net->decay);
examples/captcha.c:36:    int i = *net->seen/imgs;
examples/captcha.c:46:    printf("%d\n", plist->size);
examples/captcha.c:53:    args.w = net->w;
examples/captcha.c:54:    args.h = net->h;
examples/captcha.c:58:    args.m = plist->size;
examples/captcha.c:78:        printf("Loaded: %lf seconds\n", sec(clock()-time));
examples/captcha.c:81:        if(avg_loss == -1) avg_loss = loss;
examples/captcha.c:83:        printf("%d: %f, %f avg, %lf seconds, %ld images\n", i, loss, avg_loss, sec(clock()-time), *net->seen);
examples/captcha.c:113:        image im = load_image_color(input, net->w, net->h);
examples/captcha.c:117:        //printf("%s: Predicted in %f seconds.\n", input, sec(clock()-time));
examples/captcha.c:136:    int N = plist->size;
examples/captcha.c:137:    int outputs = net->outputs;
examples/captcha.c:144:        image im = load_image_color(paths[i], net->w, net->h);
examples/captcha.c:147:        //printf("%s: Predicted in %f seconds.\n", input, sec(clock()-time));
examples/captcha.c:148:        int truth = -1;
examples/captcha.c:152:        if (truth == -1){
examples/captcha.c:171:   float avg_loss = -1;
examples/captcha.c:179:   printf("Learning Rate: %g, Momentum: %g, Decay: %g\n", net->learning_rate, net->momentum, net->decay);
examples/captcha.c:181:   int i = net->seen/imgs;
examples/captcha.c:184:   printf("%d\n", plist->size);
examples/captcha.c:189:   data train = load_data_captcha(paths, imgs, plist->size, 10, 200, 60);
examples/captcha.c:190:   translate_data_rows(train, -128);
examples/captcha.c:192:   printf("Loaded: %lf seconds\n", sec(clock()-time));
examples/captcha.c:195:   net->seen += imgs;
examples/captcha.c:196:   if(avg_loss == -1) avg_loss = loss;
examples/captcha.c:198:   printf("%d: %f, %f avg, %lf seconds, %d images\n", i, loss, avg_loss, sec(clock()-time), net->seen);
examples/captcha.c:237:float avg_loss = -1;
examples/captcha.c:245:printf("Learning Rate: %g, Momentum: %g, Decay: %g\n", net->learning_rate, net->momentum, net->decay);
examples/captcha.c:247:int i = net->seen/imgs;
examples/captcha.c:250:printf("%d\n", plist->size);
examples/captcha.c:255:    data train = load_data_captcha_encode(paths, imgs, plist->size, 300, 57);
examples/captcha.c:257:    printf("Loaded: %lf seconds\n", sec(clock()-time));
examples/captcha.c:260:    net->seen += imgs;
examples/captcha.c:261:    if(avg_loss == -1) avg_loss = loss;
examples/captcha.c:263:    printf("%d: %f, %f avg, %lf seconds, %d images\n", i, loss, avg_loss, sec(clock()-time), net->seen);
examples/captcha.c:285:    int imgs = plist->size;
examples/captcha.c:287:    translate_data_rows(valid, -128);
examples/captcha.c:326:        translate_image(im, -128);
examples/darknet.c:30:    gpu_index = -1;
examples/darknet.c:38:    int n = argc - 5;
examples/darknet.c:43:        for (j = 0; j < net->n; ++j)
examples/darknet.c:45:            layer l = net->layers[j];
examples/darknet.c:46:            layer out = sum->layers[j];
examples/darknet.c:67:    for (j = 0; j < net->n; ++j)
examples/darknet.c:69:        layer l = sum->layers[j];
examples/darknet.c:95:    for (i = 0; i < net->n; ++i)
examples/darknet.c:97:        layer l = net->layers[i];
examples/darknet.c:108:            ops += 2l * l.input_layer->inputs * l.input_layer->outputs;
examples/darknet.c:109:            ops += 2l * l.self_layer->inputs * l.self_layer->outputs;
examples/darknet.c:110:            ops += 2l * l.output_layer->inputs * l.output_layer->outputs;
examples/darknet.c:114:            ops += 2l * l.uz->inputs * l.uz->outputs;
examples/darknet.c:115:            ops += 2l * l.uh->inputs * l.uh->outputs;
examples/darknet.c:116:            ops += 2l * l.ur->inputs * l.ur->outputs;
examples/darknet.c:117:            ops += 2l * l.wz->inputs * l.wz->outputs;
examples/darknet.c:118:            ops += 2l * l.wh->inputs * l.wh->outputs;
examples/darknet.c:119:            ops += 2l * l.wr->inputs * l.wr->outputs;
examples/darknet.c:123:            ops += 2l * l.uf->inputs * l.uf->outputs;
examples/darknet.c:124:            ops += 2l * l.ui->inputs * l.ui->outputs;
examples/darknet.c:125:            ops += 2l * l.ug->inputs * l.ug->outputs;
examples/darknet.c:126:            ops += 2l * l.uo->inputs * l.uo->outputs;
examples/darknet.c:127:            ops += 2l * l.wf->inputs * l.wf->outputs;
examples/darknet.c:128:            ops += 2l * l.wi->inputs * l.wi->outputs;
examples/darknet.c:129:            ops += 2l * l.wg->inputs * l.wg->outputs;
examples/darknet.c:130:            ops += 2l * l.wo->inputs * l.wo->outputs;
examples/darknet.c:144:    image im = make_image(net->w, net->h, net->c * net->batch);
examples/darknet.c:149:    double t = what_time_is_it_now() - time;
examples/darknet.c:160:    gpu_index = -1;
examples/darknet.c:169:    gpu_index = -1;
examples/darknet.c:171:    int oldn = net->layers[net->n - 2].n;
examples/darknet.c:172:    int c = net->layers[net->n - 2].c;
examples/darknet.c:173:    scal_cpu(oldn * c, .1, net->layers[net->n - 2].weights, 1);
examples/darknet.c:174:    scal_cpu(oldn, 0, net->layers[net->n - 2].biases, 1);
examples/darknet.c:175:    net->layers[net->n - 2].n = 11921;
examples/darknet.c:176:    net->layers[net->n - 2].biases += 5;
examples/darknet.c:177:    net->layers[net->n - 2].weights += 5 * c;
examples/darknet.c:182:    net->layers[net->n - 2].biases -= 5;
examples/darknet.c:183:    net->layers[net->n - 2].weights -= 5 * c;
examples/darknet.c:184:    net->layers[net->n - 2].n = oldn;
examples/darknet.c:186:    layer l = net->layers[net->n - 2];
examples/darknet.c:191:    *net->seen = 0;
examples/darknet.c:197:    gpu_index = -1;
examples/darknet.c:201:        load_weights_upto(net, weightfile, 0, net->n);
examples/darknet.c:202:        load_weights_upto(net, weightfile, l, net->n);
examples/darknet.c:204:    *net->seen = 0;
examples/darknet.c:205:    save_weights_upto(net, outfile, net->n);
examples/darknet.c:210:    gpu_index = -1;
examples/darknet.c:217:    gpu_index = -1;
examples/darknet.c:219:    layer l = net->layers[n];
examples/darknet.c:231:        //printf("]%s\n", (i == l.n-1)?"":",");
examples/darknet.c:238:    gpu_index = -1;
examples/darknet.c:241:    for (i = 0; i < net->n; ++i)
examples/darknet.c:243:        layer l = net->layers[i];
examples/darknet.c:246:            rescale_weights(l, 2, -.5);
examples/darknet.c:255:    gpu_index = -1;
examples/darknet.c:258:    for (i = 0; i < net->n; ++i)
examples/darknet.c:260:        layer l = net->layers[i];
examples/darknet.c:272:    gpu_index = -1;
examples/darknet.c:275:    for (i = 0; i < net->n; ++i)
examples/darknet.c:277:        layer l = net->layers[i];
examples/darknet.c:315:    gpu_index = -1;
examples/darknet.c:318:    for (i = 0; i < net->n; ++i)
examples/darknet.c:320:        layer l = net->layers[i];
examples/darknet.c:323:            net->layers[i] = normalize_layer(l, l.n);
examples/darknet.c:327:            net->layers[i] = normalize_layer(l, l.outputs);
examples/darknet.c:331:            *l.input_z_layer = normalize_layer(*l.input_z_layer, l.input_z_layer->outputs);
examples/darknet.c:332:            *l.input_r_layer = normalize_layer(*l.input_r_layer, l.input_r_layer->outputs);
examples/darknet.c:333:            *l.input_h_layer = normalize_layer(*l.input_h_layer, l.input_h_layer->outputs);
examples/darknet.c:334:            *l.state_z_layer = normalize_layer(*l.state_z_layer, l.state_z_layer->outputs);
examples/darknet.c:335:            *l.state_r_layer = normalize_layer(*l.state_r_layer, l.state_r_layer->outputs);
examples/darknet.c:336:            *l.state_h_layer = normalize_layer(*l.state_h_layer, l.state_h_layer->outputs);
examples/darknet.c:337:            net->layers[i].batch_normalize = 1;
examples/darknet.c:345:    gpu_index = -1;
examples/darknet.c:348:    for (i = 0; i < net->n; ++i)
examples/darknet.c:350:        layer l = net->layers[i];
examples/darknet.c:378:    gpu_index = -1;
examples/darknet.c:381:    for (i = 0; i < net->n; ++i)
examples/darknet.c:383:        layer l = net->layers[i];
examples/darknet.c:387:            net->layers[i].batch_normalize = 0;
examples/darknet.c:392:            net->layers[i].batch_normalize = 0;
examples/darknet.c:402:            l.input_z_layer->batch_normalize = 0;
examples/darknet.c:403:            l.input_r_layer->batch_normalize = 0;
examples/darknet.c:404:            l.input_h_layer->batch_normalize = 0;
examples/darknet.c:405:            l.state_z_layer->batch_normalize = 0;
examples/darknet.c:406:            l.state_r_layer->batch_normalize = 0;
examples/darknet.c:407:            l.state_h_layer->batch_normalize = 0;
examples/darknet.c:408:            net->layers[i].batch_normalize = 0;
examples/darknet.c:417:    image *ims = get_weights(net->layers[0]);
examples/darknet.c:418:    int n = net->layers[0].n;
examples/darknet.c:430:            int dx = rand() % (w - r.w);
examples/darknet.c:431:            int dy = rand() % (h - r.h);
examples/darknet.c:481:    gpu_index = find_int_arg(argc, argv, "-i", 0);
examples/darknet.c:482:    if(find_arg(argc, argv, "-nogpu")) {
examples/darknet.c:483:        gpu_index = -1;
examples/darknet.c:487:    gpu_index = -1;
examples/darknet.c:545:        denseNetwork[k]->index_n = k;
examples/darknet.c:547:        resNetwork[k]->index_n = k+n_net;
examples/darknet.c:548:        vggNetwork[k] = (network *)load_network("cfg/vgg-16.cfg","vgg16.weights",0);
examples/darknet.c:549:        vggNetwork[k]->index_n = k+(n_net*2);
examples/darknet.c:551:        alexNetwork[k]->index_n = k+(n_net*3);
examples/darknet.c:558:        denseNetwork[k]->index_n = k;
examples/darknet.c:564:        resNetwork[k]->index_n = k + n_des;
examples/darknet.c:568:        vggNetwork[k] = (network *)load_network("cfg/vgg-16.cfg", "vgg-16.weights", 0);
examples/darknet.c:569:        vggNetwork[k]->index_n = k + n_des + n_res;
examples/darknet.c:574:        alexNetwork[k]->index_n = k + n_des + n_res + n_vgg;
examples/darknet.c:647:                printf("[%d] Densenet priority : ", denseNetwork[i]->index_n);
examples/darknet.c:659:                printf(" [%d] Resnet priority : ", resNetwork[i]->index_n);
examples/darknet.c:671:                printf(" [%d] Resnet priority : ", vggNetwork[i]->index_n);
examples/darknet.c:683:                printf(" [%d] Resnet priority : ", alexNetwork[i]->index_n);
examples/darknet.c:698:            net_input_des[i]->net = denseNetwork[i];
examples/darknet.c:699:            net_input_des[i]->input_path = input;
examples/darknet.c:700:            net_input_des[i]->names = names;
examples/darknet.c:701:            net_input_des[i]->netName = denseName;
examples/darknet.c:703:            net_input_des[i]->net->priority = d_pri[i];
examples/darknet.c:717:            net_input_res[i]->net = resNetwork[i];
examples/darknet.c:718:            net_input_res[i]->input_path = input;
examples/darknet.c:719:            net_input_res[i]->names = names;
examples/darknet.c:720:            net_input_res[i]->netName = resName;
examples/darknet.c:722:            net_input_res[i]->net->priority = r_pri[i];
examples/darknet.c:736:            net_input_vgg[i]->net = vggNetwork[i];
examples/darknet.c:737:            net_input_vgg[i]->input_path = input;
examples/darknet.c:738:            net_input_vgg[i]->names = names;
examples/darknet.c:739:            net_input_vgg[i]->netName = vggName;
examples/darknet.c:741:            net_input_vgg[i]->net->priority = v_pri[i];
examples/darknet.c:755:            net_input_alex[i]->net = alexNetwork[i];
examples/darknet.c:756:            net_input_alex[i]->input_path = input;
examples/darknet.c:757:            net_input_alex[i]->names = names;
examples/darknet.c:758:            net_input_alex[i]->netName = alexName;
examples/darknet.c:760:            net_input_alex[i]->net->priority = a_pri[i];
examples/darknet.c:792:	    pthread_join(thpool->threads[i]->pthread, NULL);
examples/darknet.c:797:        fprintf(fp, "\nexecution Time : %lf\n\n\n", what_time_is_it_now() - time);
examples/darknet.c:821:        float thresh = find_float_arg(argc, argv, "-thresh", .5);
examples/darknet.c:823:        char *outfile = find_char_arg(argc, argv, "-out", 0);
examples/darknet.c:824:        int fullscreen = find_arg(argc, argv, "-fullscreen");
examples/nightmare.c:5:// ./darknet nightmare cfg/extractor.recon.cfg ~/trained/yolo-coco.conv frame6.png -reconstruct -iters 500 -i 3 -lambda .1 -rate .01 -smooth 2
examples/nightmare.c:31:    //translate_image(orig, -1);
examples/nightmare.c:32:    net->n = max_layer + 1;
examples/nightmare.c:34:    int dx = rand()%16 - 8;
examples/nightmare.c:35:    int dy = rand()%16 - 8;
examples/nightmare.c:43:    layer last = net->layers[net->n-1];
examples/nightmare.c:44:    //net->layers[net->n - 1].activation = LINEAR;
examples/nightmare.c:49:    net->delta_gpu = cuda_make_array(delta.data, im.w*im.h*im.c);
examples/nightmare.c:50:    copy_cpu(net->inputs, im.data, 1, net->input, 1);
examples/nightmare.c:61:    cuda_pull_array(net->delta_gpu, delta.data, im.w*im.h*im.c);
examples/nightmare.c:62:    cuda_free(net->delta_gpu);
examples/nightmare.c:63:    net->delta_gpu = 0;
examples/nightmare.c:65:    printf("\nnet: %d %d %d im: %d %d %d\n", net->w, net->h, net->inputs, im.w, im.h, im.c);
examples/nightmare.c:66:    copy_cpu(net->inputs, im.data, 1, net->input, 1);
examples/nightmare.c:67:    net->delta = delta.data;
examples/nightmare.c:77:    image out = crop_image(resized, -dx, -dy, orig.w, orig.h);
examples/nightmare.c:88:    axpy_cpu(orig.w*orig.h*orig.c, -1, orig.data, 1, gray.data, 1);
examples/nightmare.c:122:                for(jj = j-num; jj <= j + num && jj < recon.h; ++jj){
examples/nightmare.c:124:                    for(ii = i-num; ii <= i + num && ii < recon.w; ++ii){
examples/nightmare.c:127:                        update.data[out_index] += lambda * (recon.data[in_index] - recon.data[out_index]);
examples/nightmare.c:143:        cuda_push_array(net->input_gpu, recon.data, recon.w*recon.h*recon.c);
examples/nightmare.c:144:        //cuda_push_array(net->truth_gpu, features, net->truths);
examples/nightmare.c:145:        net->delta_gpu = cuda_make_array(delta.data, delta.w*delta.h*delta.c);
examples/nightmare.c:149:        axpy_gpu(l.outputs, -1, l.output_gpu, 1, l.delta_gpu, 1);
examples/nightmare.c:152:        cuda_pull_array(net->delta_gpu, delta.data, delta.w*delta.h*delta.c);
examples/nightmare.c:154:        cuda_free(net->delta_gpu);
examples/nightmare.c:156:        net->input = recon.data;
examples/nightmare.c:157:        net->delta = delta.data;
examples/nightmare.c:158:        net->truth = features;
examples/nightmare.c:193:    int norm = find_int_arg(argc, argv, "-norm", 1);
examples/nightmare.c:194:    int rounds = find_int_arg(argc, argv, "-rounds", 1);
examples/nightmare.c:195:    int iters = find_int_arg(argc, argv, "-iters", 10);
examples/nightmare.c:196:    float rate = find_float_arg(argc, argv, "-rate", .04);
examples/nightmare.c:197:    float momentum = find_float_arg(argc, argv, "-momentum", .9);
examples/nightmare.c:198:    float lambda = find_float_arg(argc, argv, "-lambda", .01);
examples/nightmare.c:199:    char *prefix = find_char_arg(argc, argv, "-prefix", 0);
examples/nightmare.c:200:    int reconstruct = find_arg(argc, argv, "-reconstruct");
examples/nightmare.c:201:    int smooth_size = find_int_arg(argc, argv, "-smooth", 1);
examples/nightmare.c:214:        im = letterbox_image(im, net->w, net->h);
examples/nightmare.c:219:        image crop = crop_image(out_im, zz, zz, out_im.w-2*zz, out_im.h-2*zz);
examples/nightmare.c:232:            features[i] += rand_uniform(-.19, .19);
examples/nightmare.c:257:                int layer = max_layer + rand()%range - range/2;
examples/nightmare.c:279:        image crop = crop_image(im, im.w * (1. - zoom)/2., im.h * (1.-zoom)/2., im.w*zoom, im.h*zoom);
examples/nightmare.c:301:    int range = find_int_arg(argc, argv, "-range", 1);
examples/nightmare.c:302:    int norm = find_int_arg(argc, argv, "-norm", 1);
examples/nightmare.c:303:    int rounds = find_int_arg(argc, argv, "-rounds", 1);
examples/nightmare.c:304:    int iters = find_int_arg(argc, argv, "-iters", 10);
examples/nightmare.c:305:    int octaves = find_int_arg(argc, argv, "-octaves", 4);
examples/nightmare.c:306:    float zoom = find_float_arg(argc, argv, "-zoom", 1.);
examples/nightmare.c:307:    float rate = find_float_arg(argc, argv, "-rate", .04);
examples/nightmare.c:308:    float thresh = find_float_arg(argc, argv, "-thresh", 1.);
examples/nightmare.c:309:    float rotate = find_float_arg(argc, argv, "-rotate", 0);
examples/nightmare.c:310:    float momentum = find_float_arg(argc, argv, "-momentum", .9);
examples/nightmare.c:311:    float lambda = find_float_arg(argc, argv, "-lambda", .01);
examples/nightmare.c:312:    char *prefix = find_char_arg(argc, argv, "-prefix", 0);
examples/nightmare.c:313:    int reconstruct = find_arg(argc, argv, "-reconstruct");
examples/nightmare.c:314:    int smooth_size = find_int_arg(argc, argv, "-smooth", 1);
examples/nightmare.c:332:    //im = letterbox_image(im, net->w, net->h);
examples/nightmare.c:337:        net->n = max_layer;
examples/nightmare.c:338:        im = letterbox_image(im, net->w, net->h);
examples/nightmare.c:342:        if(net->layers[net->n-1].type == REGION){
examples/nightmare.c:344:            zero_objectness(net->layers[net->n-1]);
examples/nightmare.c:348:           image crop = crop_image(out_im, zz, zz, out_im.w-2*zz, out_im.h-2*zz);
examples/nightmare.c:360:        //features[i] += rand_uniform(-.19, .19);
examples/nightmare.c:381:                int layer = max_layer + rand()%range - range/2;
examples/nightmare.c:407:        image crop = crop_image(im, im.w * (1. - zoom)/2., im.h * (1.-zoom)/2., im.w*zoom, im.h*zoom);
examples/cifar.c:6:    float avg_loss = -1;
examples/cifar.c:10:    printf("Learning Rate: %g, Momentum: %g, Decay: %g\n", net->learning_rate, net->momentum, net->decay);
examples/cifar.c:17:    int epoch = (*net->seen)/N;
examples/cifar.c:19:    while(get_current_batch(net) < net->max_batches || net->max_batches == 0){
examples/cifar.c:23:        if(avg_loss == -1) avg_loss = loss;
examples/cifar.c:25:        printf("%ld, %.3f: %f, %f avg, %f rate, %lf seconds, %ld images\n", get_current_batch(net), (float)(*net->seen)/N, loss, avg_loss, get_current_rate(net), sec(clock()-time), *net->seen);
examples/cifar.c:26:        if(*net->seen/N > epoch){
examples/cifar.c:27:            epoch = *net->seen/N;
examples/cifar.c:51:    float avg_loss = -1;
examples/cifar.c:55:    printf("Learning Rate: %g, Momentum: %g, Decay: %g\n", net->learning_rate, net->momentum, net->decay);
examples/cifar.c:62:    int epoch = (*net->seen)/N;
examples/cifar.c:69:    scale_matrix(train.y, 1. - weight);
examples/cifar.c:72:    while(get_current_batch(net) < net->max_batches || net->max_batches == 0){
examples/cifar.c:76:        if(avg_loss == -1) avg_loss = loss;
examples/cifar.c:78:        printf("%ld, %.3f: %f, %f avg, %f rate, %lf seconds, %ld images\n", get_current_batch(net), (float)(*net->seen)/N, loss, avg_loss, get_current_rate(net), sec(clock()-time), *net->seen);
examples/cifar.c:79:        if(*net->seen/N > epoch){
examples/cifar.c:80:            epoch = *net->seen/N;
examples/cifar.c:108:    data test = load_cifar10_data("data/cifar/cifar-10-batches-bin/test_batch.bin");
examples/cifar.c:138:    data test = load_cifar10_data("data/cifar/cifar-10-batches-bin/test_batch.bin");
examples/cifar.c:145:    printf("top1: %f, %lf seconds, %d images\n", avg_acc, sec(clock()-time), test.X.rows);
examples/cifar.c:154:    data test = load_cifar10_data("data/cifar/cifar-10-batches-bin/test_batch.bin");
examples/cifar.c:176:    data test = load_cifar10_data("data/cifar/cifar-10-batches-bin/test_batch.bin");
examples/cifar.c:221:    data test = load_cifar10_data("data/cifar/cifar-10-batches-bin/test_batch.bin");
examples/lsd.c:20:    printf("Learning Rate: %g, Momentum: %g, Decay: %g\n", gnet->learning_rate, gnet->momentum, gnet->decay);
examples/lsd.c:21:    int imgs = gnet->batch*gnet->subdivisions;
examples/lsd.c:22:    int i = *gnet->seen/imgs;
examples/lsd.c:36:    targs.m = tlist->size;
examples/lsd.c:46:    sargs.m = slist->size;
examples/lsd.c:56:    float aloss_avg = -1;
examples/lsd.c:57:    float floss_avg = -1;
examples/lsd.c:59:    fnet->train=1;
examples/lsd.c:60:    int x_size = fnet->inputs*fnet->batch;
examples/lsd.c:61:    int y_size = fnet->truths*fnet->batch;
examples/lsd.c:66:    int ax_size = anet->inputs*anet->batch;
examples/lsd.c:67:    int ay_size = anet->truths*anet->batch;
examples/lsd.c:68:    fill_gpu(ay_size, .9, anet->truth_gpu, 1);
examples/lsd.c:69:    anet->delta_gpu = cuda_make_array(0, ax_size);
examples/lsd.c:70:    anet->train = 1;
examples/lsd.c:72:    int gx_size = gnet->inputs*gnet->batch;
examples/lsd.c:73:    int gy_size = gnet->truths*gnet->batch;
examples/lsd.c:79:    while (get_current_batch(gnet) < gnet->max_batches) {
examples/lsd.c:89:        printf("Loaded: %lf seconds\n", sec(clock()-time));
examples/lsd.c:96:        for(j = 0; j < fnet->subdivisions; ++j){
examples/lsd.c:97:            layer imlayer = gnet->layers[gnet->n - 1];
examples/lsd.c:98:            get_next_batch(train, fnet->batch, j*fnet->batch, X, y);
examples/lsd.c:102:            *gnet->seen += gnet->batch;
examples/lsd.c:105:            float *feats = fnet->layers[fnet->n - 2].output_gpu;
examples/lsd.c:109:            float *gen = gnet->layers[gnet->n-1].output_gpu;
examples/lsd.c:131:            //axpy_gpu(x_size, -1, imlayer.output_gpu, 1, delta, 1);
examples/lsd.c:139:            floss += get_network_cost(fnet) /(fnet->subdivisions*fnet->batch);
examples/lsd.c:142:            for(k = 0; k < gnet->batch; ++k){
examples/lsd.c:143:                int index = j*gnet->batch + k;
examples/lsd.c:152:        image sim = float_to_image(anet->w, anet->h, anet->c, style.X.vals[j]);
examples/lsd.c:175:        printf("%d: gen: %f, adv: %f | gen_avg: %f, adv_avg: %f, %f rate, %lf seconds, %d images\n", i, floss, aloss, floss_avg, aloss_avg, get_current_rate(gnet), sec(clock()-time), i*imgs);
examples/lsd.c:212:    for (i = 0; i < net->n; ++i) {
examples/lsd.c:213:        if (net->layers[i].out_c == 3) {
examples/lsd.c:214:            imlayer = net->layers[i];
examples/lsd.c:219:    printf("Learning Rate: %g, Momentum: %g, Decay: %g\n", net->learning_rate, net->momentum, net->decay);
examples/lsd.c:220:    int imgs = net->batch*net->subdivisions;
examples/lsd.c:221:    i = *net->seen/imgs;
examples/lsd.c:226:    //int N = plist->size;
examples/lsd.c:230:    args.w = net->w;
examples/lsd.c:231:    args.h = net->h;
examples/lsd.c:234:    args.m = plist->size;
examples/lsd.c:237:    args.min = net->min_crop;
examples/lsd.c:238:    args.max = net->max_crop;
examples/lsd.c:239:    args.angle = net->angle;
examples/lsd.c:240:    args.aspect = net->aspect;
examples/lsd.c:241:    args.exposure = net->exposure;
examples/lsd.c:242:    args.saturation = net->saturation;
examples/lsd.c:243:    args.hue = net->hue;
examples/lsd.c:244:    args.size = net->w;
examples/lsd.c:256:    int x_size = get_network_input_size(net)*net->batch;
examples/lsd.c:269:    int ay_size = get_network_output_size(anet)*anet->batch;
examples/lsd.c:279:    float aloss_avg = -1;
examples/lsd.c:280:    float gloss_avg = -1;
examples/lsd.c:284:    while (get_current_batch(net) < net->max_batches) {
examples/lsd.c:291:        printf("Loaded: %lf seconds\n", sec(clock()-time));
examples/lsd.c:295:            image gim = float_to_image(net->w, net->h, net->c, gray.X.vals[j]);
examples/lsd.c:299:            image yim = float_to_image(net->w, net->h, net->c, train.X.vals[j]);
examples/lsd.c:305:        for(j = 0; j < net->subdivisions; ++j){
examples/lsd.c:306:            get_next_batch(train, net->batch, j*net->batch, pixs, y);
examples/lsd.c:307:            get_next_batch(gray, net->batch, j*net->batch, graypixs, y);
examples/lsd.c:312:            image origi = float_to_image(net->w, net->h, 3, pixs);
examples/lsd.c:313:            image grayi = float_to_image(net->w, net->h, 3, graypixs);
examples/lsd.c:319:            *net->seen += net->batch;
examples/lsd.c:329:            scal_gpu(imlayer.outputs, .1, net->layers[net->n-1].delta_gpu, 1);
examples/lsd.c:336:            printf("features %f\n", cuda_mag_array(net->layers[net->n-1].delta_gpu, imlayer.outputs));
examples/lsd.c:340:            gloss += get_network_cost(net) /(net->subdivisions*net->batch);
examples/lsd.c:343:            for(k = 0; k < net->batch; ++k){
examples/lsd.c:344:                int index = j*net->batch + k;
examples/lsd.c:364:        printf("%d: gen: %f, adv: %f | gen_avg: %f, adv_avg: %f, %f rate, %lf seconds, %d images\n", i, gloss, aloss, gloss_avg, aloss_avg, get_current_rate(net), sec(clock()-time), i*imgs);
examples/lsd.c:392:    axpy_cpu(n, sin((1-s)*omega)/so, start, 1, out, 1);
examples/lsd.c:422:    for (i = 0; i < net->n; ++i) {
examples/lsd.c:423:        if (net->layers[i].out_c == 3) {
examples/lsd.c:429:    image start = random_unit_vector_image(net->w, net->h, net->c);
examples/lsd.c:430:    image end = random_unit_vector_image(net->w, net->h, net->c);
examples/lsd.c:431:        image im = make_image(net->w, net->h, net->c);
examples/lsd.c:444:            end = random_unit_vector_image(net->w, net->h, net->c);
examples/lsd.c:460:        printf("%s: Predicted in %f seconds.\n", input, sec(clock()-time));
examples/lsd.c:480:    imlayer = net->n-1;
examples/lsd.c:483:        image im = make_image(net->w, net->h, net->c);
examples/lsd.c:497:        printf("%s: Predicted in %f seconds.\n", input, sec(clock()-time));
examples/lsd.c:508:    for(i = 0; i < net->n; ++i){
examples/lsd.c:509:        if(net->layers[i].type == SHORTCUT){
examples/lsd.c:510:            net->layers[i].alpha = alpha;
examples/lsd.c:511:            net->layers[i].beta = beta;
examples/lsd.c:528:    layer imlayer = gnet->layers[gnet->n-1];
examples/lsd.c:530:    printf("Learning Rate: %g, Momentum: %g, Decay: %g\n", gnet->learning_rate, gnet->momentum, gnet->decay);
examples/lsd.c:531:    int imgs = gnet->batch*gnet->subdivisions;
examples/lsd.c:532:    i = *gnet->seen/imgs;
examples/lsd.c:542:    args.m = plist->size;
examples/lsd.c:553:    gnet->train = 1;
examples/lsd.c:554:    anet->train = 1;
examples/lsd.c:556:    int x_size = gnet->inputs*gnet->batch;
examples/lsd.c:557:    int y_size = gnet->truths*gnet->batch;
examples/lsd.c:560:    float aloss_avg = -1;
examples/lsd.c:562:    if (maxbatch == 0) maxbatch = gnet->max_batches;
examples/lsd.c:568:            float beta = 1 - alpha;
examples/lsd.c:581:        printf("Loaded: %lf seconds\n", sec(clock()-time));
examples/lsd.c:590:        for (j = 0; j < gnet->subdivisions; ++j) {
examples/lsd.c:591:            get_next_batch(train, gnet->batch, j*gnet->batch, gnet->truth, 0);
examples/lsd.c:594:                gnet->input[z] = rand_normal();
examples/lsd.c:597:               for(z = 0; z < gnet->batch; ++z){
examples/lsd.c:598:               float mag = mag_array(gnet->input + z*gnet->inputs, gnet->inputs);
examples/lsd.c:599:               scale_array(gnet->input + z*gnet->inputs, gnet->inputs, 1./mag);
examples/lsd.c:602:            *gnet->seen += gnet->batch;
examples/lsd.c:606:            fill_cpu(anet->truths*anet->batch, 1, anet->truth, 1);
examples/lsd.c:607:            copy_cpu(anet->inputs*anet->batch, imlayer.output, 1, anet->input, 1);
examples/lsd.c:608:            anet->delta_gpu = imerror;
examples/lsd.c:612:            //float genaloss = *anet->cost / anet->batch;
examples/lsd.c:615:            scal_gpu(imlayer.outputs*imlayer.batch, 0, gnet->layers[gnet->n-1].delta_gpu, 1);
examples/lsd.c:617:            axpy_gpu(imlayer.outputs*imlayer.batch, 1, imerror, 1, gnet->layers[gnet->n-1].delta_gpu, 1);
examples/lsd.c:621:            for(k = 0; k < gnet->batch; ++k){
examples/lsd.c:622:                int index = j*gnet->batch + k;
examples/lsd.c:623:                copy_cpu(gnet->outputs, gnet->output + k*gnet->outputs, 1, gen.X.vals[index], 1);
examples/lsd.c:633:            image im = float_to_image(anet->w, anet->h, anet->c, gen.X.vals[0]);
examples/lsd.c:634:            image im2 = float_to_image(anet->w, anet->h, anet->c, train.X.vals[0]);
examples/lsd.c:650:        printf("%d: adv: %f | adv_avg: %f, %f rate, %lf seconds, %d images\n", i, aloss, aloss_avg, get_current_rate(gnet), sec(clock()-time), i*imgs);
examples/lsd.c:682:    //float orig_rate = anet->learning_rate;
examples/lsd.c:686:    for (i = 0; i < gnet->n; ++i) {
examples/lsd.c:687:        if (gnet->layers[i].out_c == 3) {
examples/lsd.c:688:            imlayer = gnet->layers[i];
examples/lsd.c:693:    printf("Learning Rate: %g, Momentum: %g, Decay: %g\n", gnet->learning_rate, gnet->momentum, gnet->decay);
examples/lsd.c:694:    int imgs = gnet->batch*gnet->subdivisions;
examples/lsd.c:695:    i = *gnet->seen/imgs;
examples/lsd.c:700:    //int N = plist->size;
examples/lsd.c:706:    args.m = plist->size;
examples/lsd.c:717:    gnet->train = 1;
examples/lsd.c:718:    anet->train = 1;
examples/lsd.c:720:    int x_size = gnet->inputs*gnet->batch;
examples/lsd.c:721:    int y_size = gnet->truths*gnet->batch;
examples/lsd.c:724:    //int ay_size = anet->truths*anet->batch;
examples/lsd.c:726:    float aloss_avg = -1;
examples/lsd.c:730:    if (maxbatch == 0) maxbatch = gnet->max_batches;
examples/lsd.c:737:        //translate_data_rows(train, -.5);
examples/lsd.c:742:        printf("Loaded: %lf seconds\n", sec(clock()-time));
examples/lsd.c:751:        for(j = 0; j < gnet->subdivisions; ++j){
examples/lsd.c:752:            get_next_batch(train, gnet->batch, j*gnet->batch, gnet->truth, 0);
examples/lsd.c:755:                gnet->input[z] = rand_normal();
examples/lsd.c:757:            for(z = 0; z < gnet->batch; ++z){
examples/lsd.c:758:                float mag = mag_array(gnet->input + z*gnet->inputs, gnet->inputs);
examples/lsd.c:759:                scale_array(gnet->input + z*gnet->inputs, gnet->inputs, 1./mag);
examples/lsd.c:763:               printf("%f, ", gnet->input[z]);
examples/lsd.c:766:               printf("input: %f %f\n", mean_array(gnet->input, x_size), variance_array(gnet->input, x_size));
examples/lsd.c:769:            //cuda_push_array(gnet->input_gpu, gnet->input, x_size);
examples/lsd.c:770:            //cuda_push_array(gnet->truth_gpu, gnet->truth, y_size);
examples/lsd.c:771:            *gnet->seen += gnet->batch;
examples/lsd.c:775:            fill_cpu(anet->truths*anet->batch, 1, anet->truth, 1);
examples/lsd.c:776:            copy_cpu(anet->inputs*anet->batch, imlayer.output, 1, anet->input, 1);
examples/lsd.c:777:            anet->delta_gpu = imerror;
examples/lsd.c:781:            //float genaloss = *anet->cost / anet->batch;
examples/lsd.c:785:            scal_gpu(imlayer.outputs*imlayer.batch, 0, gnet->layers[gnet->n-1].delta_gpu, 1);
examples/lsd.c:788:            //printf("features %f\n", cuda_mag_array(gnet->layers[gnet->n-1].delta_gpu, imlayer.outputs*imlayer.batch));
examples/lsd.c:790:            axpy_gpu(imlayer.outputs*imlayer.batch, 1, imerror, 1, gnet->layers[gnet->n-1].delta_gpu, 1);
examples/lsd.c:795:               for(k = 0; k < gnet->n; ++k){
examples/lsd.c:796:               layer l = gnet->layers[k];
examples/lsd.c:802:            for(k = 0; k < gnet->batch; ++k){
examples/lsd.c:803:                int index = j*gnet->batch + k;
examples/lsd.c:804:                copy_cpu(gnet->outputs, gnet->output + k*gnet->outputs, 1, gen.X.vals[index], 1);
examples/lsd.c:819:            image im = float_to_image(anet->w, anet->h, anet->c, gen.X.vals[0]);
examples/lsd.c:820:            image im2 = float_to_image(anet->w, anet->h, anet->c, train.X.vals[0]);
examples/lsd.c:830:           anet->learning_rate = 0;
examples/lsd.c:832:           anet->learning_rate = orig_rate;
examples/lsd.c:844:        printf("%d: adv: %f | adv_avg: %f, %f rate, %lf seconds, %d images\n", i, aloss, aloss_avg, get_current_rate(gnet), sec(clock()-time), i*imgs);
examples/lsd.c:882:    for (i = 0; i < net->n; ++i) {
examples/lsd.c:883:        if (net->layers[i].out_c == 3) {
examples/lsd.c:884:            imlayer = net->layers[i];
examples/lsd.c:889:    printf("Learning Rate: %g, Momentum: %g, Decay: %g\n", net->learning_rate, net->momentum, net->decay);
examples/lsd.c:890:    int imgs = net->batch*net->subdivisions;
examples/lsd.c:891:    i = *net->seen/imgs;
examples/lsd.c:896:    //int N = plist->size;
examples/lsd.c:902:    args.m = plist->size;
examples/lsd.c:913:    int x_size = net->inputs*net->batch;
examples/lsd.c:915:    net->delta = 0;
examples/lsd.c:916:    net->train = 1;
examples/lsd.c:921:    //int ay_size = anet->outputs*anet->batch;
examples/lsd.c:922:    anet->delta = 0;
examples/lsd.c:923:    anet->train = 1;
examples/lsd.c:927:    float aloss_avg = -1;
examples/lsd.c:928:    float gloss_avg = -1;
examples/lsd.c:932:    while (get_current_batch(net) < net->max_batches) {
examples/lsd.c:939:        printf("Loaded: %lf seconds\n", sec(clock()-time));
examples/lsd.c:943:            image gim = float_to_image(net->w, net->h, net->c, gray.X.vals[j]);
examples/lsd.c:951:        for(j = 0; j < net->subdivisions; ++j){
examples/lsd.c:952:            get_next_batch(train, net->batch, j*net->batch, pixs, 0);
examples/lsd.c:953:            get_next_batch(gray, net->batch, j*net->batch, graypixs, 0);
examples/lsd.c:954:            cuda_push_array(net->input_gpu, graypixs, net->inputs*net->batch);
examples/lsd.c:955:            cuda_push_array(net->truth_gpu, pixs, net->truths*net->batch);
examples/lsd.c:957:               image origi = float_to_image(net->w, net->h, 3, pixs);
examples/lsd.c:958:               image grayi = float_to_image(net->w, net->h, 3, graypixs);
examples/lsd.c:963:            *net->seen += net->batch;
examples/lsd.c:967:            copy_gpu(anet->inputs*anet->batch, imlayer.output_gpu, 1, anet->input_gpu, 1);
examples/lsd.c:968:            fill_gpu(anet->inputs*anet->batch, .95, anet->truth_gpu, 1);
examples/lsd.c:969:            anet->delta_gpu = imerror;
examples/lsd.c:973:            scal_gpu(imlayer.outputs*imlayer.batch, 1./100., net->layers[net->n-1].delta_gpu, 1);
examples/lsd.c:978:            printf("features %f\n", cuda_mag_array(net->layers[net->n-1].delta_gpu, imlayer.outputs*imlayer.batch));
examples/lsd.c:980:            axpy_gpu(imlayer.outputs*imlayer.batch, 1, imerror, 1, net->layers[net->n-1].delta_gpu, 1);
examples/lsd.c:985:            gloss += *net->cost /(net->subdivisions*net->batch);
examples/lsd.c:987:            for(k = 0; k < net->batch; ++k){
examples/lsd.c:988:                int index = j*net->batch + k;
examples/lsd.c:1002:            image im = float_to_image(anet->w, anet->h, anet->c, gray.X.vals[0]);
examples/lsd.c:1003:            image im2 = float_to_image(anet->w, anet->h, anet->c, train.X.vals[0]);
examples/lsd.c:1015:        printf("%d: gen: %f, adv: %f | gen_avg: %f, adv_avg: %f, %f rate, %lf seconds, %d images\n", i, gloss, aloss, gloss_avg, aloss_avg, get_current_rate(net), sec(clock()-time), i*imgs);
examples/lsd.c:1050:if(clear) *net->seen = 0;
examples/lsd.c:1057:if(clear) *anet->seen = 0;
examples/lsd.c:1061:for (i = 0; i < net->n; ++i) {
examples/lsd.c:1062:if (net->layers[i].out_c == 3) {
examples/lsd.c:1063:imlayer = net->layers[i];
examples/lsd.c:1068:printf("Learning Rate: %g, Momentum: %g, Decay: %g\n", net->learning_rate, net->momentum, net->decay);
examples/lsd.c:1069:int imgs = net->batch*net->subdivisions;
examples/lsd.c:1070:i = *net->seen/imgs;
examples/lsd.c:1075://int N = plist->size;
examples/lsd.c:1079:args.w = net->w;
examples/lsd.c:1080:args.h = net->h;
examples/lsd.c:1083:args.m = plist->size;
examples/lsd.c:1086:args.min = net->min_crop;
examples/lsd.c:1087:args.max = net->max_crop;
examples/lsd.c:1088:args.angle = net->angle;
examples/lsd.c:1089:args.aspect = net->aspect;
examples/lsd.c:1090:args.exposure = net->exposure;
examples/lsd.c:1091:args.saturation = net->saturation;
examples/lsd.c:1092:args.hue = net->hue;
examples/lsd.c:1093:args.size = net->w;
examples/lsd.c:1105:int x_size = get_network_input_size(net)*net->batch;
examples/lsd.c:1106:int y_size = 1*net->batch;
examples/lsd.c:1117:int ay_size = get_network_output_size(anet)*anet->batch;
examples/lsd.c:1127:float aloss_avg = -1;
examples/lsd.c:1128:float gloss_avg = -1;
examples/lsd.c:1132:while (get_current_batch(net) < net->max_batches) {
examples/lsd.c:1139:    printf("Loaded: %lf seconds\n", sec(clock()-time));
examples/lsd.c:1145:    for(j = 0; j < net->subdivisions; ++j){
examples/lsd.c:1146:        get_next_batch(train, net->batch, j*net->batch, X, y);
examples/lsd.c:1148:        *net->seen += net->batch;
examples/lsd.c:1166:        gloss += get_network_cost(net) /(net->subdivisions*net->batch);
examples/lsd.c:1169:        for(k = 0; k < net->batch; ++k){
examples/lsd.c:1170:            int index = j*net->batch + k;
examples/lsd.c:1190:    printf("%d: gen: %f, adv: %f | gen_avg: %f, adv_avg: %f, %f rate, %lf seconds, %d images\n", i, gloss, aloss, gloss_avg, aloss_avg, get_current_rate(net), sec(clock()-time), i*imgs);
examples/lsd.c:1221:   float avg_loss = -1;
examples/lsd.c:1226:   if(clear) *net->seen = 0;
examples/lsd.c:1227:   printf("Learning Rate: %g, Momentum: %g, Decay: %g\n", net->learning_rate, net->momentum, net->decay);
examples/lsd.c:1228:   int imgs = net->batch*net->subdivisions;
examples/lsd.c:1229:   int i = *net->seen/imgs;
examples/lsd.c:1234://int N = plist->size;
examples/lsd.c:1238:args.w = net->w;
examples/lsd.c:1239:args.h = net->h;
examples/lsd.c:1242:args.m = plist->size;
examples/lsd.c:1245:args.min = net->min_crop;
examples/lsd.c:1246:args.max = net->max_crop;
examples/lsd.c:1247:args.angle = net->angle;
examples/lsd.c:1248:args.aspect = net->aspect;
examples/lsd.c:1249:args.exposure = net->exposure;
examples/lsd.c:1250:args.saturation = net->saturation;
examples/lsd.c:1251:args.hue = net->hue;
examples/lsd.c:1252:args.size = net->w;
examples/lsd.c:1261:while(get_current_batch(net) < net->max_batches){
examples/lsd.c:1268:printf("Loaded: %lf seconds\n", sec(clock()-time));
examples/lsd.c:1275:printf("%d: %f, %f avg, %f rate, %lf seconds, %d images\n", i, loss, avg_loss, get_current_rate(net), sec(clock()-time), i*imgs);
examples/lsd.c:1305:    for (i = 0; i < net->n; ++i) {
examples/lsd.c:1306:        if (net->layers[i].out_c == 3) {
examples/lsd.c:1324:        image resized = resize_min(im, net->w);
examples/lsd.c:1325:        image crop = crop_image(resized, (resized.w - net->w)/2, (resized.h - net->h)/2, net->w, net->h);
examples/lsd.c:1334:        printf("%s: Predicted in %f seconds.\n", input, sec(clock()-time));
examples/lsd.c:1354:    int clear = find_arg(argc, argv, "-clear");
examples/lsd.c:1355:    int display = find_arg(argc, argv, "-display");
examples/lsd.c:1356:    int batches = find_int_arg(argc, argv, "-b", 0);
examples/lsd.c:1357:    char *file = find_char_arg(argc, argv, "-file", "/home/pjreddie/data/imagenet/imagenet1k.train.list");
examples/super.c:10:    float avg_loss = -1;
examples/super.c:12:    printf("Learning Rate: %g, Momentum: %g, Decay: %g\n", net->learning_rate, net->momentum, net->decay);
examples/super.c:13:    int imgs = net->batch*net->subdivisions;
examples/super.c:14:    int i = *net->seen/imgs;
examples/super.c:19:    //int N = plist->size;
examples/super.c:23:    args.w = net->w;
examples/super.c:24:    args.h = net->h;
examples/super.c:28:    args.m = plist->size;
examples/super.c:35:    while(get_current_batch(net) < net->max_batches){
examples/super.c:42:        printf("Loaded: %lf seconds\n", sec(clock()-time));
examples/super.c:49:        printf("%d: %f, %f avg, %f rate, %lf seconds, %d images\n", i, loss, avg_loss, get_current_rate(net), sec(clock()-time), i*imgs);
examples/super.c:94:        printf("%s: Predicted in %f seconds.\n", input, sec(clock()-time));
examples/super.c:114:    int clear = find_arg(argc, argv, "-clear");
examples/go.c:91:    if (b[i+19*19]) return -1;
examples/go.c:105:        int player = b[0] - '0';
examples/go.c:106:        int result = b[1] - '0';
examples/go.c:137:    float avg_loss = -1;
examples/go.c:151:        nets[i]->learning_rate *= ngpus;
examples/go.c:154:    printf("Learning Rate: %g, Momentum: %g, Decay: %g\n", net->learning_rate, net->momentum, net->decay);
examples/go.c:164:    int epoch = (*net->seen)/N;
examples/go.c:165:    while(get_current_batch(net) < net->max_batches || net->max_batches == 0){
examples/go.c:168:        data train = random_go_moves(m, net->batch*net->subdivisions*ngpus);
examples/go.c:169:        printf("Loaded: %lf seconds\n", what_time_is_it_now() - time);
examples/go.c:184:        if(avg_loss == -1) avg_loss = loss;
examples/go.c:186:        printf("%ld, %.3f: %f, %f avg, %f rate, %lf seconds, %ld images\n", get_current_batch(net), (float)(*net->seen)/N, loss, avg_loss, get_current_rate(net), what_time_is_it_now()-time, *net->seen);
examples/go.c:187:        if(*net->seen/N > epoch){
examples/go.c:188:            epoch = *net->seen/N;
examples/go.c:221:    propagate_liberty(board, lib, visited, row-1, col, side);
examples/go.c:223:    propagate_liberty(board, lib, visited, row, col-1, side);
examples/go.c:237:                if ((i > 0)  && occupied(board,index - 1)) propagate_liberty(board, lib, visited, j, i-1, occupied(board,index-1));
examples/go.c:239:                if ((j > 0)  && occupied(board,index - 19)) propagate_liberty(board, lib, visited, j-1, i, occupied(board,index-19));
examples/go.c:256:        fprintf(stream, "%2d", (inverted) ? 19-j : j+1);
examples/go.c:276:            //if(board[index]*-swap > 0) fprintf(stream, "\u25C9 ");
examples/go.c:277:            //else if(board[index]*-swap < 0) fprintf(stream, "\u25EF ");
examples/go.c:279:            else if (occupied(board, index) ==-player) fprintf(stream, " O");
examples/go.c:293:        board[i+19*19*2] = 1-board[i+19*19*2];
examples/go.c:314:            rotate_image_cw(oim, -i);
examples/go.c:319:            rotate_image_cw(bim, -i);
examples/go.c:338:    remove_connected(b, lib, p, r-1, c);
examples/go.c:340:    remove_connected(b, lib, p, r, c-1);
examples/go.c:349:    remove_connected(b, l, -p, r+1, c);
examples/go.c:350:    remove_connected(b, l, -p, r-1, c);
examples/go.c:351:    remove_connected(b, l, -p, r, c+1);
examples/go.c:352:    remove_connected(b, l, -p, r, c-1);
examples/go.c:380:    free(root->board);
examples/go.c:382:        if(root->children[i]) free_mcts(root->children[i]);
examples/go.c:384:    free(root->children);
examples/go.c:385:    free(root->prior);
examples/go.c:386:    free(root->visit_count);
examples/go.c:387:    free(root->value);
examples/go.c:388:    free(root->mean);
examples/go.c:389:    free(root->prob);
examples/go.c:395:    int n = net->batch;
examples/go.c:406:        rotate_image_cw(im, -i);
examples/go.c:413:        rotate_image_cw(im, -i);
examples/go.c:427:    root->board = next;
examples/go.c:428:    root->children = calloc(19*19+1, sizeof(mcts_tree*));
examples/go.c:429:    root->prior = calloc(19*19 + 1, sizeof(float));
examples/go.c:430:    root->prob = calloc(19*19 + 1, sizeof(float));
examples/go.c:431:    root->mean = calloc(19*19 + 1, sizeof(float));
examples/go.c:432:    root->value = calloc(19*19 + 1, sizeof(float));
examples/go.c:433:    root->visit_count = calloc(19*19 + 1, sizeof(int));
examples/go.c:434:    root->total_count = 1;
examples/go.c:437:    copy_cpu(19*19+1, pred, 1, root->prior, 1);
examples/go.c:438:    float val = 2*pred[19*19 + 1] - 1;
examples/go.c:439:    root->result = val;
examples/go.c:441:        root->visit_count[i] = 0;
examples/go.c:442:        root->value[i] = 0;
examples/go.c:443:        root->mean[i] = val;
examples/go.c:445:            root->value[i] = -1;
examples/go.c:446:            root->mean[i] = -1;
examples/go.c:447:            root->prior[i] = 0;
examples/go.c:450:    //print_board(stderr, next, flip?-1:1, 0);
examples/go.c:463:    if(root->done) return -root->result;
examples/go.c:465:    float max = -1000;
examples/go.c:468:        root->prob[i] = root->mean[i] + cpuct*root->prior[i] * sqrt(root->total_count) / (1. + root->visit_count[i]);
examples/go.c:469:        if(root->prob[i] > max){
examples/go.c:470:            max = root->prob[i];
examples/go.c:476:    root->visit_count[i]++;
examples/go.c:477:    root->total_count++;
examples/go.c:478:    if (root->children[i]) {
examples/go.c:479:        val = select_mcts(root->children[i], net, root->board, cpuct);
examples/go.c:481:        if(max_i < 19*19 && !legal_go(root->board, prev, 1, max_i/19, max_i%19)) {
examples/go.c:482:            root->mean[i]  = -1;
examples/go.c:483:            root->value[i] = -1;
examples/go.c:484:            root->prior[i] = 0;
examples/go.c:485:            --root->total_count;
examples/go.c:490:            float *next = copy_board(root->board);
examples/go.c:495:            root->children[i] = expand(next, root->board, net);
examples/go.c:496:            val = -root->children[i]->result;
examples/go.c:498:                root->children[i]->pass = 1;
examples/go.c:499:                if (root->pass){
examples/go.c:500:                    root->children[i]->done = 1;
examples/go.c:505:    root->value[i] += val;
examples/go.c:506:    root->mean[i] = root->value[i]/root->visit_count[i];
examples/go.c:507:    return -val;
examples/go.c:516:    assert(compare_board(tree->board, board));
examples/go.c:518:        if (secs > 0 && (what_time_is_it_now() - t) > secs) break;
examples/go.c:519:        int max_i = max_int_index(tree->visit_count, 19*19+1);
examples/go.c:520:        if (tree->visit_count[max_i] >= n) break;
examples/go.c:524:    //fprintf(stderr, "%f Seconds\n", what_time_is_it_now() - t);
examples/go.c:530:    if(index < 0 || index > 19*19 || !tree || !tree->children[index]) {
examples/go.c:535:        tree = tree->children[index];
examples/go.c:536:        swap->children[index] = 0;
examples/go.c:557:        probs[i] = tree->visit_count[i];
examples/go.c:562:        sum += pow(tree->visit_count[i], 1./temp);
examples/go.c:565:        probs[i] = pow(tree->visit_count[i], 1./temp) / sum;
examples/go.c:571:    m.value = (tree->result+1.)/2.;
examples/go.c:572:    m.mcts  = (tree->mean[index]+1.)/2.;
examples/go.c:576:    print_board(stderr, tree->board, player, indexes);
examples/go.c:578:    fprintf(stderr, "%d %d, Result: %f, Prior: %f, Prob: %f, Mean Value: %f, Child Result: %f, Visited: %d\n", index/19, index%19, tree->result, tree->prior[index], probs[index], tree->mean[index], (tree->children[index])?tree->children[index]->result:0, tree->visit_count[index]);
examples/go.c:580:    fprintf(stderr, "%d %d, Result: %f, Prior: %f, Prob: %f, Mean Value: %f, Child Result: %f, Visited: %d\n", ind/19, ind%19, tree->result, tree->prior[ind], probs[ind], tree->mean[ind], (tree->children[ind])?tree->children[ind]->result:0, tree->visit_count[ind]);
examples/go.c:581:    ind = max_index(tree->prior, 19*19+1);
examples/go.c:582:    fprintf(stderr, "%d %d, Result: %f, Prior: %f, Prob: %f, Mean Value: %f, Child Result: %f, Visited: %d\n", ind/19, ind%19, tree->result, tree->prior[ind], probs[ind], tree->mean[ind], (tree->children[ind])?tree->children[ind]->result:0, tree->visit_count[ind]);
examples/go.c:595:   if(root->visit_count[i] > max_v){
examples/go.c:596:   max_v = root->visit_count[i];
examples/go.c:600:   fprintf(stderr, "%f Seconds\n", what_time_is_it_now() - t);
examples/go.c:601:   int ind = max_index(root->mean, 19*19+1);
examples/go.c:602:   fprintf(stderr, "%d %d, Result: %f, Prior: %f, Prob: %f, Mean Value: %f, Child Result: %f, Visited: %d\n", max_i/19, max_i%19, root->result, root->prior[max_i], root->prob[max_i], root->mean[max_i], (root->children[max_i])?root->children[max_i]->result:0, root->visit_count[max_i]);
examples/go.c:603:   fprintf(stderr, "%d %d, Result: %f, Prior: %f, Prob: %f, Mean Value: %f, Child Result: %f, Visited: %d\n", ind/19, ind%19, root->result, root->prior[ind], root->prob[ind], root->mean[ind], (root->children[ind])?root->children[ind]->result:0, root->visit_count[ind]);
examples/go.c:604:   ind = max_index(root->prior, 19*19+1);
examples/go.c:605:   fprintf(stderr, "%d %d, Result: %f, Prior: %f, Prob: %f, Mean Value: %f, Child Result: %f, Visited: %d\n", ind/19, ind%19, root->result, root->prior[ind], root->prob[ind], root->mean[ind], (root->children[ind])?root->children[ind]->result:0, root->visit_count[ind]);
examples/go.c:606:   if(root->result < -.9 && root->mean[max_i] < -.9) return -1000.f;
examples/go.c:608:   float val = root->result;
examples/go.c:616:    if (occupied(b,r*19 + c) == -p){
examples/go.c:630:    safe = safe || makes_safe_go(b, l, p, r-1, c);
examples/go.c:632:    safe = safe || makes_safe_go(b, l, p, r, c-1);
examples/go.c:683:if(result == -1000.f) return -2;
examples/go.c:703:if (!move[indexes[i]]) indexes[i] = -1;
examples/go.c:715:fprintf(stderr, "%d: %c %d, %.2f%%\n", i+1, col + 'A' + 1*(col > 7 && noi), (inverted)?19 - row : row+1, move[index]*100);
examples/go.c:719:if (row == 19) return -1;
examples/go.c:722:return -1; 
examples/go.c:728:if (index == 19*19) return -1;
examples/go.c:740:    printf("Learning Rate: %g, Momentum: %g, Decay: %g\n", net->learning_rate, net->momentum, net->decay);
examples/go.c:752:        int player = b[0] - '0';
examples/go.c:753:        //int result = b[1] - '0';
examples/go.c:775:            if(occupied(board,j*19 + i) == 1) fprintf(fp, "play black %c%d\n", 'A'+i+(i>=8), 19-j);
examples/go.c:776:            if(occupied(board,j*19 + i) == -1) fprintf(fp, "play white %c%d\n", 'A'+i+(i>=8), 19-j);
examples/go.c:804:    if (tree) count = tree->total_count;
examples/go.c:806:        if (what_time_is_it_now() - t > 120) break;
examples/go.c:809:    fprintf(stderr, "Pondered %d moves...\n", tree->total_count - count);
examples/go.c:878:                printf("=%s :-DDDD\n\n", ids);
examples/go.c:880:                printf("=%s 1.0. Want more DarkGo? You can find me on OGS, unlimited games, no waiting! https://online-go.com/user/view/434218\n\n", ids);
examples/go.c:913:                root = move_mcts(root, -1);
examples/go.c:928:            root = move_mcts(root, -1);
examples/go.c:934:            root = move_mcts(root, -1);
examples/go.c:957:            int player = (color[0] == 'b' || color[0] == 'B') ? 1 : -1;
examples/go.c:970:            if(c >= 'A' && c <= 'Z') c = c - 'A';
examples/go.c:971:            if(c >= 'a' && c <= 'z') c = c - 'a';
examples/go.c:972:            if(c >= 8) --c;
examples/go.c:973:            r = 19 - r;
examples/go.c:981:            if(root) fprintf(stderr, "Prior: %f\n", root->prior[r*19 + c]);
examples/go.c:982:            if(root) fprintf(stderr, "Mean: %f\n", root->mean[r*19 + c]);
examples/go.c:983:            if(root) fprintf(stderr, "Result: %f\n", root->result);
examples/go.c:985:            if(root) fprintf(stderr, "Visited: %d\n", root->total_count);
examples/go.c:996:                player = (color[0] == 'b' || color[0] == 'B') ? 1 : -1;
examples/go.c:1000:                player = -1;
examples/go.c:1009:            ponder_player = -player;
examples/go.c:1014:            fprintf(stderr, "%f Seconds\n", what_time_is_it_now() - t);
examples/go.c:1034:                row = 19 - row;
examples/go.c:1053:                FILE *p = popen("./gnugo --mode gtp < game.txt", "r");
examples/go.c:1066:        } else if (!strcmp(buff, "kgs-genmove_cleanup")){
examples/go.c:1069:            fprintf(stderr, "kgs-genmove_cleanup\n");
examples/go.c:1075:            fprintf(f, "%s kgs-genmove_cleanup %s\n", ids, type);
examples/go.c:1077:            FILE *p = popen("./gnugo --mode gtp < game.txt", "r");
examples/go.c:1123:                printf("%d: %c %d, %.2f%%\n", i+1, col + 'A' + 1*(col > 7 && noi), (inverted)?19 - row : row+1, move[index]*100);
examples/go.c:1137:            --picked;
examples/go.c:1149:                row = (inverted)?19 - row : row-1;
examples/go.c:1150:                col = c - 'A';
examples/go.c:1151:                if (col > 7 && noi) col -= 1;
examples/go.c:1158:                row = (inverted)?19 - row : row-1;
examples/go.c:1159:                col = c - 'A';
examples/go.c:1160:                if (col > 7 && noi) col -= 1;
examples/go.c:1162:                    int mc = (g == 'b') ? 1 : -1;
examples/go.c:1172:                row = (inverted)?19 - row : row-1;
examples/go.c:1173:                col = c - 'A';
examples/go.c:1174:                if (col > 7 && noi) col -= 1;
examples/go.c:1183:        color = -color;
examples/go.c:1194:    FILE *p = popen("./gnugo --mode gtp < game.txt", "r");
examples/go.c:1208:    if(player == 'W') score = -score;
examples/go.c:1249:            tree1 = move_mcts(tree1, -1);
examples/go.c:1250:            tree2 = move_mcts(tree2, -1);
examples/go.c:1316:        player = -player;
examples/go.c:1328:    char *gpu_list = find_char_arg(argc, argv, "-gpus", 0);
examples/go.c:1350:    int clear = find_arg(argc, argv, "-clear");
examples/go.c:1356:    int multi = find_arg(argc, argv, "-multi");
examples/go.c:1357:    int anon = find_arg(argc, argv, "-anon");
examples/go.c:1358:    int iters = find_int_arg(argc, argv, "-iters", 500);
examples/go.c:1359:    int resign = find_int_arg(argc, argv, "-resign", 175);
examples/go.c:1360:    float cpuct = find_float_arg(argc, argv, "-cpuct", 5);
examples/go.c:1361:    float temp = find_float_arg(argc, argv, "-temp", .1);
examples/go.c:1362:    float time = find_float_arg(argc, argv, "-time", 0);
examples/instance-segmenter.c:10:    float avg_loss = -1;
examples/instance-segmenter.c:24:        nets[i]->learning_rate *= ngpus;
examples/instance-segmenter.c:34:    int div = net->w/pred.w;
examples/instance-segmenter.c:35:    assert(pred.w * div == net->w);
examples/instance-segmenter.c:36:    assert(pred.h * div == net->h);
examples/instance-segmenter.c:38:    int imgs = net->batch * net->subdivisions * ngpus;
examples/instance-segmenter.c:40:    printf("Learning Rate: %g, Momentum: %g, Decay: %g\n", net->learning_rate, net->momentum, net->decay);
examples/instance-segmenter.c:48:    printf("%d\n", plist->size);
examples/instance-segmenter.c:49:    int N = plist->size;
examples/instance-segmenter.c:52:    args.w = net->w;
examples/instance-segmenter.c:53:    args.h = net->h;
examples/instance-segmenter.c:58:    args.min = net->min_crop;
examples/instance-segmenter.c:59:    args.max = net->max_crop;
examples/instance-segmenter.c:60:    args.angle = net->angle;
examples/instance-segmenter.c:61:    args.aspect = net->aspect;
examples/instance-segmenter.c:62:    args.exposure = net->exposure;
examples/instance-segmenter.c:63:    args.saturation = net->saturation;
examples/instance-segmenter.c:64:    args.hue = net->hue;
examples/instance-segmenter.c:65:    args.size = net->w;
examples/instance-segmenter.c:79:    int epoch = (*net->seen)/N;
examples/instance-segmenter.c:80:    while(get_current_batch(net) < net->max_batches || net->max_batches == 0){
examples/instance-segmenter.c:87:        printf("Loaded: %lf seconds\n", what_time_is_it_now()-time);
examples/instance-segmenter.c:101:            image tr = float_to_image(net->w/div, net->h/div, 80, train.y.vals[net->batch*(net->subdivisions-1)]);
examples/instance-segmenter.c:102:            image im = float_to_image(net->w, net->h, net->c, train.X.vals[net->batch*(net->subdivisions-1)]);
examples/instance-segmenter.c:117:        if(avg_loss == -1) avg_loss = loss;
examples/instance-segmenter.c:119:        printf("%ld, %.3f: %f, %f avg, %f rate, %lf seconds, %ld images\n", get_current_batch(net), (float)(*net->seen)/N, loss, avg_loss, get_current_rate(net), what_time_is_it_now()-time, *net->seen);
examples/instance-segmenter.c:121:        if(*net->seen/N > epoch){
examples/instance-segmenter.c:122:            epoch = *net->seen/N;
examples/instance-segmenter.c:138:    free_ptrs((void**)paths, plist->size);
examples/instance-segmenter.c:163:        image sized = letterbox_image(im, net->w, net->h);
examples/instance-segmenter.c:171:        printf("%s: Predicted in %f seconds.\n", input, sec(clock()-time));
examples/instance-segmenter.c:200:        image in_s = letterbox_image(in, net->w, net->h);
examples/instance-segmenter.c:232:    char *gpu_list = find_char_arg(argc, argv, "-gpus", 0);
examples/instance-segmenter.c:255:    int cam_index = find_int_arg(argc, argv, "-c", 0);
examples/instance-segmenter.c:256:    int clear = find_arg(argc, argv, "-clear");
examples/instance-segmenter.c:257:    int display = find_arg(argc, argv, "-display");
examples/segmenter.c:9:    float avg_loss = -1;
examples/segmenter.c:23:        nets[i]->learning_rate *= ngpus;
examples/segmenter.c:29:    int div = net->w/pred.w;
examples/segmenter.c:30:    assert(pred.w * div == net->w);
examples/segmenter.c:31:    assert(pred.h * div == net->h);
examples/segmenter.c:33:    int imgs = net->batch * net->subdivisions * ngpus;
examples/segmenter.c:35:    printf("Learning Rate: %g, Momentum: %g, Decay: %g\n", net->learning_rate, net->momentum, net->decay);
examples/segmenter.c:43:    printf("%d\n", plist->size);
examples/segmenter.c:44:    int N = plist->size;
examples/segmenter.c:47:    args.w = net->w;
examples/segmenter.c:48:    args.h = net->h;
examples/segmenter.c:52:    args.min = net->min_crop;
examples/segmenter.c:53:    args.max = net->max_crop;
examples/segmenter.c:54:    args.angle = net->angle;
examples/segmenter.c:55:    args.aspect = net->aspect;
examples/segmenter.c:56:    args.exposure = net->exposure;
examples/segmenter.c:57:    args.saturation = net->saturation;
examples/segmenter.c:58:    args.hue = net->hue;
examples/segmenter.c:59:    args.size = net->w;
examples/segmenter.c:73:    int epoch = (*net->seen)/N;
examples/segmenter.c:74:    while(get_current_batch(net) < net->max_batches || net->max_batches == 0){
examples/segmenter.c:81:        printf("Loaded: %lf seconds\n", what_time_is_it_now()-time);
examples/segmenter.c:95:            image tr = float_to_image(net->w/div, net->h/div, 80, train.y.vals[net->batch*(net->subdivisions-1)]);
examples/segmenter.c:96:            image im = float_to_image(net->w, net->h, net->c, train.X.vals[net->batch*(net->subdivisions-1)]);
examples/segmenter.c:105:        if(avg_loss == -1) avg_loss = loss;
examples/segmenter.c:107:        printf("%ld, %.3f: %f, %f avg, %f rate, %lf seconds, %ld images\n", get_current_batch(net), (float)(*net->seen)/N, loss, avg_loss, get_current_rate(net), what_time_is_it_now()-time, *net->seen);
examples/segmenter.c:109:        if(*net->seen/N > epoch){
examples/segmenter.c:110:            epoch = *net->seen/N;
examples/segmenter.c:126:    free_ptrs((void**)paths, plist->size);
examples/segmenter.c:151:        image sized = letterbox_image(im, net->w, net->h);
examples/segmenter.c:159:        printf("%s: Predicted in %f seconds.\n", input, sec(clock()-time));
examples/segmenter.c:188:        image in_s = letterbox_image(in, net->w, net->h);
examples/segmenter.c:220:    char *gpu_list = find_char_arg(argc, argv, "-gpus", 0);
examples/segmenter.c:243:    int cam_index = find_int_arg(argc, argv, "-c", 0);
examples/segmenter.c:244:    int clear = find_arg(argc, argv, "-clear");
examples/segmenter.c:245:    int display = find_arg(argc, argv, "-display");
examples/tag.c:6:    float avg_loss = -1;
examples/tag.c:11:    printf("Learning Rate: %g, Momentum: %g, Decay: %g\n", net->learning_rate, net->momentum, net->decay);
examples/tag.c:15:    printf("%d\n", plist->size);
examples/tag.c:16:    int N = plist->size;
examples/tag.c:23:    args.w = net->w;
examples/tag.c:24:    args.h = net->h;
examples/tag.c:26:    args.min = net->w;
examples/tag.c:27:    args.max = net->max_crop;
examples/tag.c:28:    args.size = net->w;
examples/tag.c:31:    args.classes = net->outputs;
examples/tag.c:37:    args.angle = net->angle;
examples/tag.c:38:    args.exposure = net->exposure;
examples/tag.c:39:    args.saturation = net->saturation;
examples/tag.c:40:    args.hue = net->hue;
examples/tag.c:42:    fprintf(stderr, "%d classes\n", net->outputs);
examples/tag.c:45:    int epoch = (*net->seen)/N;
examples/tag.c:46:    while(get_current_batch(net) < net->max_batches || net->max_batches == 0){
examples/tag.c:52:        printf("Loaded: %lf seconds\n", sec(clock()-time));
examples/tag.c:55:        if(avg_loss == -1) avg_loss = loss;
examples/tag.c:57:        printf("%ld, %.3f: %f, %f avg, %f rate, %lf seconds, %ld images\n", get_current_batch(net), (float)(*net->seen)/N, loss, avg_loss, get_current_rate(net), sec(clock()-time), *net->seen);
examples/tag.c:59:        if(*net->seen/N > epoch){
examples/tag.c:60:            epoch = *net->seen/N;
examples/tag.c:78:    free_ptrs((void**)paths, plist->size);
examples/tag.c:94:    int size = net->w;
examples/tag.c:114:        printf("%s: Predicted in %f seconds.\n", input, sec(clock()-time));
examples/tag.c:133:    int clear = find_arg(argc, argv, "-clear");
examples/detector.c:15:    float avg_loss = -1;
examples/detector.c:27:        nets[i]->learning_rate *= ngpus;
examples/detector.c:32:    int imgs = net->batch * net->subdivisions * ngpus;
examples/detector.c:33:    printf("Learning Rate: %g, Momentum: %g, Decay: %g\n", net->learning_rate, net->momentum, net->decay);
examples/detector.c:36:    layer l = net->layers[net->n - 1];
examples/detector.c:42:    //int N = plist->size;
examples/detector.c:49:    args.m = plist->size;
examples/detector.c:62:    while(get_current_batch(net) < net->max_batches){
examples/detector.c:66:            if (get_current_batch(net)+200 > net->max_batches) dim = 608;
examples/detector.c:99:           image im = float_to_image(net->w, net->h, 3, train.X.vals[zz]);
examples/detector.c:112:        printf("Loaded: %lf seconds\n", what_time_is_it_now()-time);
examples/detector.c:129:        printf("%ld: %f, %f avg, %f rate, %lf seconds, %d images\n", get_current_batch(net), loss, avg_loss, get_current_rate(net), what_time_is_it_now()-time, i*imgs);
examples/detector.c:170:        float xmin = dets[i].bbox.x - dets[i].bbox.w/2.;
examples/detector.c:172:        float ymin = dets[i].bbox.y - dets[i].bbox.h/2.;
examples/detector.c:182:        float bw = xmax - xmin;
examples/detector.c:183:        float bh = ymax - ymin;
examples/detector.c:195:        float xmin = dets[i].bbox.x - dets[i].bbox.w/2. + 1;
examples/detector.c:197:        float ymin = dets[i].bbox.y - dets[i].bbox.h/2. + 1;
examples/detector.c:216:        float xmin = dets[i].bbox.x - dets[i].bbox.w/2.;
examples/detector.c:218:        float ymin = dets[i].bbox.y - dets[i].bbox.h/2.;
examples/detector.c:248:    fprintf(stderr, "Learning Rate: %g, Momentum: %g, Decay: %g\n", net->learning_rate, net->momentum, net->decay);
examples/detector.c:254:    layer l = net->layers[net->n-1];
examples/detector.c:270:        if(!outfile) outfile = "imagenet-detection";
examples/detector.c:284:    int m = plist->size;
examples/detector.c:298:    image input = make_image(net->w, net->h, net->c*2);
examples/detector.c:301:    args.w = net->w;
examples/detector.c:302:    args.h = net->h;
examples/detector.c:315:        for(t = 0; t < nthreads && i+t-nthreads < m; ++t){
examples/detector.c:326:        for(t = 0; t < nthreads && i+t-nthreads < m; ++t){
examples/detector.c:327:            char *path = paths[i+t-nthreads];
examples/detector.c:329:            copy_cpu(net->w*net->h*net->c, val_resized[t].data, 1, input.data, 1);
examples/detector.c:331:            copy_cpu(net->w*net->h*net->c, val_resized[t].data, 1, input.data + net->w*net->h*net->c, 1);
examples/detector.c:342:                print_imagenet_detections(fp, i+t-nthreads+1, dets, num, classes, w, h);
examples/detector.c:356:        fseek(fp, -2, SEEK_CUR); 
examples/detector.c:360:    fprintf(stderr, "Total Detection Time: %f Seconds\n", what_time_is_it_now() - start);
examples/detector.c:378:    fprintf(stderr, "Learning Rate: %g, Momentum: %g, Decay: %g\n", net->learning_rate, net->momentum, net->decay);
examples/detector.c:384:    layer l = net->layers[net->n-1];
examples/detector.c:400:        if(!outfile) outfile = "imagenet-detection";
examples/detector.c:415:    int m = plist->size;
examples/detector.c:430:    args.w = net->w;
examples/detector.c:431:    args.h = net->h;
examples/detector.c:444:        for(t = 0; t < nthreads && i+t-nthreads < m; ++t){
examples/detector.c:455:        for(t = 0; t < nthreads && i+t-nthreads < m; ++t){
examples/detector.c:456:            char *path = paths[i+t-nthreads];
examples/detector.c:468:                print_imagenet_detections(fp, i+t-nthreads+1, dets, nboxes, classes, w, h);
examples/detector.c:482:        fseek(fp, -2, SEEK_CUR); 
examples/detector.c:486:    fprintf(stderr, "Total Detection Time: %f Seconds\n", what_time_is_it_now() - start);
examples/detector.c:493:    fprintf(stderr, "Learning Rate: %g, Momentum: %g, Decay: %g\n", net->learning_rate, net->momentum, net->decay);
examples/detector.c:499:    layer l = net->layers[net->n-1];
examples/detector.c:503:    int m = plist->size;
examples/detector.c:518:        image sized = resize_image(orig, net->w, net->h);
examples/detector.c:587:        image sized = letterbox_image(im, net->w, net->h);
examples/detector.c:588:        //image sized = resize_image(im, net->w, net->h);
examples/detector.c:589:        //image sized2 = resize_max(im, net->w);
examples/detector.c:590:        //image sized = crop_image(sized2, -((net->w - sized2.w)/2), -((net->h - sized2.h)/2), net->w, net->h);
examples/detector.c:592:        layer l = net->layers[net->n-1];
examples/detector.c:598:        printf("%s: Predicted in %f seconds.\n", input, what_time_is_it_now()-time);
examples/detector.c:659:        //image in_s = resize_image(in, net->w, net->h);
examples/detector.c:660:        image in_s = letterbox_image(in, net->w, net->h);
examples/detector.c:661:        layer l = net->layers[net->n-1];
examples/detector.c:673:                int left  = b.x-b.w/2.;
examples/detector.c:674:                int top   = b.y-b.h/2.;
examples/detector.c:733:        //image in_s = resize_image(in, net->w, net->h);
examples/detector.c:734:        image in_s = letterbox_image(in, net->w, net->h);
examples/detector.c:735:        layer l = net->layers[net->n-1];
examples/detector.c:750:                int dx  = b.x*in.w-size/2.;
examples/detector.c:751:                int dy  = b.y*in.h-size/2.;
examples/detector.c:782:    layer l = net->layers[net->n-1];
examples/detector.c:791:    char *prefix = find_char_arg(argc, argv, "-prefix", 0);
examples/detector.c:792:    float thresh = find_float_arg(argc, argv, "-thresh", .5);
examples/detector.c:793:    float hier_thresh = find_float_arg(argc, argv, "-hier", .5);
examples/detector.c:794:    int cam_index = find_int_arg(argc, argv, "-c", 0);
examples/detector.c:795:    int frame_skip = find_int_arg(argc, argv, "-s", 0);
examples/detector.c:796:    int avg = find_int_arg(argc, argv, "-avg", 3);
examples/detector.c:801:    char *gpu_list = find_char_arg(argc, argv, "-gpus", 0);
examples/detector.c:802:    char *outfile = find_char_arg(argc, argv, "-out", 0);
examples/detector.c:825:    int clear = find_arg(argc, argv, "-clear");
examples/detector.c:826:    int fullscreen = find_arg(argc, argv, "-fullscreen");
examples/detector.c:827:    int width = find_int_arg(argc, argv, "-w", 0);
examples/detector.c:828:    int height = find_int_arg(argc, argv, "-h", 0);
examples/detector.c:829:    int fps = find_int_arg(argc, argv, "-fps", 0);
examples/detector.c:830:    //int class = find_int_arg(argc, argv, "-class", 0);
examples/regressor.c:9:    float avg_loss = -1;
examples/regressor.c:23:        nets[i]->learning_rate *= ngpus;
examples/regressor.c:28:    int imgs = net->batch * net->subdivisions * ngpus;
examples/regressor.c:30:    printf("Learning Rate: %g, Momentum: %g, Decay: %g\n", net->learning_rate, net->momentum, net->decay);
examples/regressor.c:39:    printf("%d\n", plist->size);
examples/regressor.c:40:    int N = plist->size;
examples/regressor.c:44:    args.w = net->w;
examples/regressor.c:45:    args.h = net->h;
examples/regressor.c:49:    args.min = net->min_ratio*net->w;
examples/regressor.c:50:    args.max = net->max_ratio*net->w;
examples/regressor.c:51:    args.angle = net->angle;
examples/regressor.c:52:    args.aspect = net->aspect;
examples/regressor.c:53:    args.exposure = net->exposure;
examples/regressor.c:54:    args.saturation = net->saturation;
examples/regressor.c:55:    args.hue = net->hue;
examples/regressor.c:56:    args.size = net->w;
examples/regressor.c:69:    int epoch = (*net->seen)/N;
examples/regressor.c:70:    while(get_current_batch(net) < net->max_batches || net->max_batches == 0){
examples/regressor.c:77:        printf("Loaded: %lf seconds\n", sec(clock()-time));
examples/regressor.c:90:        if(avg_loss == -1) avg_loss = loss;
examples/regressor.c:92:        printf("%ld, %.3f: %f, %f avg, %f rate, %lf seconds, %ld images\n", get_current_batch(net), (float)(*net->seen)/N, loss, avg_loss, get_current_rate(net), sec(clock()-time), *net->seen);
examples/regressor.c:94:        if(*net->seen/N > epoch){
examples/regressor.c:95:            epoch = *net->seen/N;
examples/regressor.c:111:    free_ptrs((void**)paths, plist->size);
examples/regressor.c:136:        image sized = letterbox_image(im, net->w, net->h);
examples/regressor.c:142:        printf("%s: Predicted in %f seconds.\n", input, sec(clock()-time));
examples/regressor.c:172:        image crop = center_crop_image(in, net->w, net->h);
examples/regressor.c:206:    char *gpu_list = find_char_arg(argc, argv, "-gpus", 0);
examples/regressor.c:229:    int cam_index = find_int_arg(argc, argv, "-c", 0);
examples/regressor.c:230:    int clear = find_arg(argc, argv, "-clear");
examples/classifier.c:23:    float avg_loss = -1;
examples/classifier.c:38:        nets[i]->learning_rate *= ngpus;
examples/classifier.c:43:    int imgs = net->batch * net->subdivisions * ngpus;
examples/classifier.c:45:    printf("Learning Rate: %g, Momentum: %g, Decay: %g\n", net->learning_rate, net->momentum, net->decay);
examples/classifier.c:54:        net->hierarchy = read_tree(tree);
examples/classifier.c:64:    printf("%d\n", plist->size);
examples/classifier.c:65:    int N = plist->size;
examples/classifier.c:69:    args.w = net->w;
examples/classifier.c:70:    args.h = net->h;
examples/classifier.c:72:    args.hierarchy = net->hierarchy;
examples/classifier.c:74:    args.min = net->min_ratio * net->w;
examples/classifier.c:75:    args.max = net->max_ratio * net->w;
examples/classifier.c:77:    args.angle = net->angle;
examples/classifier.c:78:    args.aspect = net->aspect;
examples/classifier.c:79:    args.exposure = net->exposure;
examples/classifier.c:80:    args.saturation = net->saturation;
examples/classifier.c:81:    args.hue = net->hue;
examples/classifier.c:82:    args.size = net->w;
examples/classifier.c:105:    int epoch = (*net->seen) / N;
examples/classifier.c:106:    while (get_current_batch(net) < net->max_batches || net->max_batches == 0)
examples/classifier.c:108:        if (net->random && count++ % 40 == 0)
examples/classifier.c:112:            //if (get_current_batch(net)+200 > net->max_batches) dim = 608;
examples/classifier.c:118:            args.min = net->min_ratio * dim;
examples/classifier.c:119:            args.max = net->max_ratio * dim;
examples/classifier.c:139:        printf("Loaded: %lf seconds\n", what_time_is_it_now() - time);
examples/classifier.c:155:        if (avg_loss == -1)
examples/classifier.c:158:        printf("%ld, %.3f: %f, %f avg, %f rate, %lf seconds, %ld images\n", get_current_batch(net), (float)(*net->seen) / N, loss, avg_loss, get_current_rate(net), what_time_is_it_now() - time, *net->seen);
examples/classifier.c:160:        if (*net->seen / N > epoch)
examples/classifier.c:162:            epoch = *net->seen / N;
examples/classifier.c:182:    free_ptrs((void **)paths, plist->size);
examples/classifier.c:204:    int m = plist->size;
examples/classifier.c:211:    int num = (i + 1) * m / splits - i * m / splits;
examples/classifier.c:216:    args.w = net->w;
examples/classifier.c:217:    args.h = net->h;
examples/classifier.c:235:        num = (i + 1) * m / splits - i * m / splits;
examples/classifier.c:242:        printf("Loaded: %d images in %lf seconds\n", val.X.rows, sec(clock() - time));
examples/classifier.c:248:        printf("%d: top 1: %f, top %d: %f, %lf seconds, %d images\n", i, avg_acc / i, topk, avg_topk / i, sec(clock() - time), val.X.rows);
examples/classifier.c:271:    int m = plist->size;
examples/classifier.c:280:        int class = -1;
examples/classifier.c:290:        int w = net->w;
examples/classifier.c:291:        int h = net->h;
examples/classifier.c:295:        images[0] = crop_image(im, -shift, -shift, w, h);
examples/classifier.c:296:        images[1] = crop_image(im, shift, -shift, w, h);
examples/classifier.c:298:        images[3] = crop_image(im, -shift, shift, w, h);
examples/classifier.c:301:        images[5] = crop_image(im, -shift, -shift, w, h);
examples/classifier.c:302:        images[6] = crop_image(im, shift, -shift, w, h);
examples/classifier.c:304:        images[8] = crop_image(im, -shift, shift, w, h);
examples/classifier.c:310:            if (net->hierarchy)
examples/classifier.c:311:                hierarchy_predictions(p, net->outputs, net->hierarchy, 1, 1);
examples/classifier.c:348:    int m = plist->size;
examples/classifier.c:355:    int size = net->w;
examples/classifier.c:358:        int class = -1;
examples/classifier.c:375:        if (net->hierarchy)
examples/classifier.c:376:            hierarchy_predictions(pred, net->outputs, net->hierarchy, 1, 1);
examples/classifier.c:406:        change_leaves(net->hierarchy, leaf_list);
examples/classifier.c:415:    int m = plist->size;
examples/classifier.c:424:        int class = -1;
examples/classifier.c:435:        image crop = center_crop_image(im, net->w, net->h);
examples/classifier.c:441:        if (net->hierarchy)
examples/classifier.c:442:            hierarchy_predictions(pred, net->outputs, net->hierarchy, 1, 1);
examples/classifier.c:482:    int m = plist->size;
examples/classifier.c:491:        int class = -1;
examples/classifier.c:508:            if (net->hierarchy)
examples/classifier.c:509:                hierarchy_predictions(p, net->outputs, net->hierarchy, 1, 1);
examples/classifier.c:568:        image im = crop_image(r, (r.w - 224 - 1) / 2 + 1, (r.h - 224 - 1) / 2 + 1, 224, 224);
examples/classifier.c:582:        layer l = net->layers[layer_num];
examples/classifier.c:609:        printf("%s: Predicted in %f seconds.\n", input, sec(clock() - time));
examples/classifier.c:657:        image r = letterbox_image(im, net->w, net->h);
examples/classifier.c:666:        if (net->hierarchy)
examples/classifier.c:667:            hierarchy_predictions(predictions, net->outputs, net->hierarchy, 1, 1);
examples/classifier.c:668:        top_k(predictions, net->outputs, top, indexes);
examples/classifier.c:669:        fprintf(stderr, "%s: Predicted in %f seconds.\n", input, sec(clock() - time));
examples/classifier.c:673:            //if(net->hierarchy) printf("%d, %s: %f, parent: %s \n",index, names[index], predictions[index], (net->hierarchy->parent[index] >= 0) ? names[net->hierarchy->parent[index]] : "Root");
examples/classifier.c:695:    image im = load_image_color((char *)input->input_path, 0, 0);
examples/classifier.c:696:    network *net = input->net;
examples/classifier.c:703:        char **names = input->names;
examples/classifier.c:708:        image r = letterbox_image(im, net->w, net->h);
examples/classifier.c:713:        if (net->hierarchy)
examples/classifier.c:714:            hierarchy_predictions(predictions, net->outputs, net->hierarchy, 1, 1);
examples/classifier.c:718:        top_k(predictions, net->outputs, top, indexes);
examples/classifier.c:722:        fprintf(stderr, "[%d]network : %s: Predicted in %lf seconds.\n",net->index_n, input->netName, time2 - time);
examples/classifier.c:725:            fprintf(fp, "network : %s: Predicted in %lf seconds.\n", input->netName, time2 - time);
examples/classifier.c:737:            fprintf(fp, "--------[%d] end time : %lf ---------\n",net->index_n, what_time_is_it_now()-start_time);
examples/classifier.c:749:    fprintf(stderr, "free_networkd : %s, time : %lf \n", input->netName, what_time_is_it_now() - time);
examples/classifier.c:771:    int m = plist->size;
examples/classifier.c:777:        image resized = resize_min(im, net->w);
examples/classifier.c:778:        image crop = crop_image(resized, (resized.w - net->w) / 2, (resized.h - net->h) / 2, net->w, net->h);
examples/classifier.c:805:    int m = plist->size;
examples/classifier.c:814:        image r = letterbox_image(im, net->w, net->h);
examples/classifier.c:816:        if (net->hierarchy)
examples/classifier.c:817:            hierarchy_predictions(predictions, net->outputs, net->hierarchy, 1, 1);
examples/classifier.c:818:        top_k(predictions, net->outputs, top, indexes);
examples/classifier.c:830:        fprintf(stderr, "%lf seconds, %d images, %d total\n", what_time_is_it_now() - time, i + 1, m);
examples/classifier.c:848:    int m = plist->size;
examples/classifier.c:856:    args.w = net->w;
examples/classifier.c:857:    args.h = net->h;
examples/classifier.c:860:    args.n = net->batch;
examples/classifier.c:867:    for (curr = net->batch; curr < m; curr += net->batch)
examples/classifier.c:877:            if (curr + net->batch > m)
examples/classifier.c:878:                args.n = m - curr;
examples/classifier.c:881:        fprintf(stderr, "Loaded: %d images in %lf seconds\n", val.X.rows, sec(clock() - time));
examples/classifier.c:889:            //layer l = net->layers[target_layer];
examples/classifier.c:894:            printf("%s", paths[curr - net->batch + i]);
examples/classifier.c:904:        fprintf(stderr, "%lf seconds, %d images, %d total\n", sec(clock() - time), val.X.rows, curr);
examples/classifier.c:924:    int m = plist->size;
examples/classifier.c:930:        image resized = resize_min(im, net->w);
examples/classifier.c:931:        image crop = crop_image(resized, (resized.w - net->w) / 2, (resized.h - net->h) / 2, net->w, net->h);
examples/classifier.c:934:        if (net->hierarchy)
examples/classifier.c:935:            hierarchy_predictions(pred, net->outputs, net->hierarchy, 0, 1);
examples/classifier.c:990:        image in_s = resize_image(in, net->w, net->h);
examples/classifier.c:996:        int y2 = out.h - out.h / 20;
examples/classifier.c:999:        int h = y2 - y1 - 2 * border;
examples/classifier.c:1000:        int w = x2 - x1 - 2 * border;
examples/classifier.c:1019:        threat = roll * curr_threat + (1 - roll) * threat;
examples/classifier.c:1025:                           y1 + .02 * h - 2 * border,
examples/classifier.c:1030:                       y1 + .02 * h - 2 * border,
examples/classifier.c:1037:                           y1 + .42 * h - 2 * border,
examples/classifier.c:1042:                       y1 + .42 * h - 2 * border,
examples/classifier.c:1051:            float g = (ratio < .5) ? 1 : 1 - 2 * (ratio - .5);
examples/classifier.c:1052:            draw_box_width(out, x1 + border, y2 - border - i, x2 - border, y2 - border - i, 1, r, g, 0);
examples/classifier.c:1115:        image in_s = resize_image(in, net->w, net->h);
examples/classifier.c:1192:        //image in_s = resize_image(in, net->w, net->h);
examples/classifier.c:1193:        image in_s = letterbox_image(in, net->w, net->h);
examples/classifier.c:1196:        if (net->hierarchy)
examples/classifier.c:1197:            hierarchy_predictions(predictions, net->outputs, net->hierarchy, 1, 1);
examples/classifier.c:1242:    char *gpu_list = find_char_arg(argc, argv, "-gpus", 0);
examples/classifier.c:1246:    int cam_index = find_int_arg(argc, argv, "-c", 0);
examples/classifier.c:1247:    int top = find_int_arg(argc, argv, "-t", 0);
examples/classifier.c:1248:    int clear = find_arg(argc, argv, "-clear");
examples/classifier.c:1254:    int layer = layer_s ? atoi(layer_s) : -1;
examples/yolo.c:12:    float avg_loss = -1;
examples/yolo.c:14:    printf("Learning Rate: %g, Momentum: %g, Decay: %g\n", net->learning_rate, net->momentum, net->decay);
examples/yolo.c:15:    int imgs = net->batch*net->subdivisions;
examples/yolo.c:16:    int i = *net->seen/imgs;
examples/yolo.c:20:    layer l = net->layers[net->n - 1];
examples/yolo.c:27:    //int N = plist->size;
examples/yolo.c:31:    args.w = net->w;
examples/yolo.c:32:    args.h = net->h;
examples/yolo.c:35:    args.m = plist->size;
examples/yolo.c:42:    args.angle = net->angle;
examples/yolo.c:43:    args.exposure = net->exposure;
examples/yolo.c:44:    args.saturation = net->saturation;
examples/yolo.c:45:    args.hue = net->hue;
examples/yolo.c:50:    while(get_current_batch(net) < net->max_batches){
examples/yolo.c:57:        printf("Loaded: %lf seconds\n", sec(clock()-time));
examples/yolo.c:64:        printf("%d: %f, %f avg, %f rate, %lf seconds, %d images\n", i, loss, avg_loss, get_current_rate(net), sec(clock()-time), i*imgs);
examples/yolo.c:81:        float xmin = dets[i].bbox.x - dets[i].bbox.w/2.;
examples/yolo.c:83:        float ymin = dets[i].bbox.y - dets[i].bbox.h/2.;
examples/yolo.c:102:    fprintf(stderr, "Learning Rate: %g, Momentum: %g, Decay: %g\n", net->learning_rate, net->momentum, net->decay);
examples/yolo.c:111:    layer l = net->layers[net->n-1];
examples/yolo.c:122:    int m = plist->size;
examples/yolo.c:138:    args.w = net->w;
examples/yolo.c:139:    args.h = net->h;
examples/yolo.c:151:        for(t = 0; t < nthreads && i+t-nthreads < m; ++t){
examples/yolo.c:162:        for(t = 0; t < nthreads && i+t-nthreads < m; ++t){
examples/yolo.c:163:            char *path = paths[i+t-nthreads];
examples/yolo.c:179:    fprintf(stderr, "Total Detection Time: %f Seconds\n", (double)(time(0) - start));
examples/yolo.c:186:    fprintf(stderr, "Learning Rate: %g, Momentum: %g, Decay: %g\n", net->learning_rate, net->momentum, net->decay);
examples/yolo.c:193:    layer l = net->layers[net->n-1];
examples/yolo.c:205:    int m = plist->size;
examples/yolo.c:220:        image sized = resize_image(orig, net->w, net->h);
examples/yolo.c:269:    layer l = net->layers[net->n-1];
examples/yolo.c:287:        image sized = resize_image(im, net->w, net->h);
examples/yolo.c:291:        printf("%s: Predicted in %f seconds.\n", input, sec(clock()-time));
examples/yolo.c:309:    char *prefix = find_char_arg(argc, argv, "-prefix", 0);
examples/yolo.c:310:    float thresh = find_float_arg(argc, argv, "-thresh", .2);
examples/yolo.c:311:    int cam_index = find_int_arg(argc, argv, "-c", 0);
examples/yolo.c:312:    int frame_skip = find_int_arg(argc, argv, "-s", 0);
examples/yolo.c:318:    int avg = find_int_arg(argc, argv, "-avg", 1);
examples/coco.c:19:    float avg_loss = -1;
examples/coco.c:21:    printf("Learning Rate: %g, Momentum: %g, Decay: %g\n", net->learning_rate, net->momentum, net->decay);
examples/coco.c:22:    int imgs = net->batch*net->subdivisions;
examples/coco.c:23:    int i = *net->seen/imgs;
examples/coco.c:27:    layer l = net->layers[net->n - 1];
examples/coco.c:34:    //int N = plist->size;
examples/coco.c:38:    args.w = net->w;
examples/coco.c:39:    args.h = net->h;
examples/coco.c:42:    args.m = plist->size;
examples/coco.c:49:    args.angle = net->angle;
examples/coco.c:50:    args.exposure = net->exposure;
examples/coco.c:51:    args.saturation = net->saturation;
examples/coco.c:52:    args.hue = net->hue;
examples/coco.c:57:    while(get_current_batch(net) < net->max_batches){
examples/coco.c:64:        printf("Loaded: %lf seconds\n", sec(clock()-time));
examples/coco.c:67:           image im = float_to_image(net->w, net->h, 3, train.X.vals[113]);
examples/coco.c:79:        printf("%d: %f, %f avg, %f rate, %lf seconds, %d images\n", i, loss, avg_loss, get_current_rate(net), sec(clock()-time), i*imgs);
examples/coco.c:101:        float xmin = dets[i].bbox.x - dets[i].bbox.w/2.;
examples/coco.c:103:        float ymin = dets[i].bbox.y - dets[i].bbox.h/2.;
examples/coco.c:113:        float bw = xmax - xmin;
examples/coco.c:114:        float bh = ymax - ymin;
examples/coco.c:132:    fprintf(stderr, "Learning Rate: %g, Momentum: %g, Decay: %g\n", net->learning_rate, net->momentum, net->decay);
examples/coco.c:137:    //list *plist = get_paths("/home/pjreddie/data/people-art/test.txt");
examples/coco.c:141:    layer l = net->layers[net->n-1];
examples/coco.c:149:    int m = plist->size;
examples/coco.c:165:    args.w = net->w;
examples/coco.c:166:    args.h = net->h;
examples/coco.c:178:        for(t = 0; t < nthreads && i+t-nthreads < m; ++t){
examples/coco.c:189:        for(t = 0; t < nthreads && i+t-nthreads < m; ++t){
examples/coco.c:190:            char *path = paths[i+t-nthreads];
examples/coco.c:205:    fseek(fp, -2, SEEK_CUR); 
examples/coco.c:209:    fprintf(stderr, "Total Detection Time: %f Seconds\n", (double)(time(0) - start));
examples/coco.c:216:    fprintf(stderr, "Learning Rate: %g, Momentum: %g, Decay: %g\n", net->learning_rate, net->momentum, net->decay);
examples/coco.c:223:    layer l = net->layers[net->n-1];
examples/coco.c:235:    int m = plist->size;
examples/coco.c:250:        image sized = resize_image(orig, net->w, net->h);
examples/coco.c:298:    layer l = net->layers[net->n-1];
examples/coco.c:316:        image sized = resize_image(im, net->w, net->h);
examples/coco.c:320:        printf("%s: Predicted in %f seconds.\n", input, sec(clock()-time));
examples/coco.c:338:    char *prefix = find_char_arg(argc, argv, "-prefix", 0);
examples/coco.c:339:    float thresh = find_float_arg(argc, argv, "-thresh", .2);
examples/coco.c:340:    int cam_index = find_int_arg(argc, argv, "-c", 0);
examples/coco.c:341:    int frame_skip = find_int_arg(argc, argv, "-s", 0);
examples/coco.c:351:    int avg = find_int_arg(argc, argv, "-avg", 1);
examples/writing.c:7:    float avg_loss = -1;
examples/writing.c:19:    int N = plist->size;
examples/writing.c:43:        printf("Loaded %lf seconds\n",sec(clock()-time));
examples/writing.c:64:        if(avg_loss == -1) avg_loss = loss;
examples/writing.c:66:        printf("%ld, %.3f: %f, %f avg, %f rate, %lf seconds, %ld images\n", get_current_batch(net), (float)(*net.seen)/N, loss, avg_loss, get_current_rate(net), sec(clock()-time), *net.seen);
examples/writing.c:110:        printf("%s: Predicted in %f seconds.\n", input, sec(clock()-time));
examples/art.c:23:        image in_s = resize_image(in, net->w, net->h);
examples/art.c:54:    int cam_index = find_int_arg(argc, argv, "-c", 0);
examples/attention.c:9:    for(i = 0; i < d->y.rows; ++i){
examples/attention.c:10:        d->y.vals[i] = realloc(d->y.vals[i], (d->y.cols+n)*sizeof(float));
examples/attention.c:12:            d->y.vals[i][d->y.cols + j] = val;
examples/attention.c:15:    d->y.cols += n;
examples/attention.c:23:    float *X = calloc(net->batch*test.X.cols, sizeof(float));
examples/attention.c:24:    float *y = calloc(net->batch*test.y.cols, sizeof(float));
examples/attention.c:25:    for(i = 0; i < test.X.rows; i += net->batch){
examples/attention.c:26:        for(b = 0; b < net->batch; ++b){
examples/attention.c:33:        net->input = X;
examples/attention.c:34:        net->truth = y;
examples/attention.c:35:        net->train = 0;
examples/attention.c:36:        net->delta = 0;
examples/attention.c:40:        float *delta = net->layers[net->n-1].output;
examples/attention.c:41:        for(b = 0; b < net->batch; ++b){
examples/attention.c:44:            float err = sum_array(delta + b*net->outputs, net->outputs);
examples/attention.c:45:            pred.vals[i+b][0] = -err;
examples/attention.c:46:            //pred.vals[i+b][0] = 1-delta[b*net->outputs + t];
examples/attention.c:58:    float avg_cls_loss = -1;
examples/attention.c:59:    float avg_att_loss = -1;
examples/attention.c:73:        nets[i]->learning_rate *= ngpus;
examples/attention.c:78:    int imgs = net->batch * net->subdivisions * ngpus;
examples/attention.c:80:    printf("Learning Rate: %g, Momentum: %g, Decay: %g\n", net->learning_rate, net->momentum, net->decay);
examples/attention.c:91:    printf("%d\n", plist->size);
examples/attention.c:92:    int N = plist->size;
examples/attention.c:99:    args.w = divs*net->w/size;
examples/attention.c:100:    args.h = divs*net->h/size;
examples/attention.c:101:    args.size = divs*net->w/size;
examples/attention.c:103:    args.hierarchy = net->hierarchy;
examples/attention.c:105:    args.min = net->min_ratio*args.w;
examples/attention.c:106:    args.max = net->max_ratio*args.w;
examples/attention.c:107:    args.angle = net->angle;
examples/attention.c:108:    args.aspect = net->aspect;
examples/attention.c:109:    args.exposure = net->exposure;
examples/attention.c:110:    args.saturation = net->saturation;
examples/attention.c:111:    args.hue = net->hue;
examples/attention.c:126:    int epoch = (*net->seen)/N;
examples/attention.c:127:    while(get_current_batch(net) < net->max_batches || net->max_batches == 0){
examples/attention.c:133:        data resized = resize_data(train, net->w, net->h);
examples/attention.c:137:        printf("Loaded: %lf seconds\n", what_time_is_it_now()-time);
examples/attention.c:196:            printf("%f ", nets[0]->output[1000 + i]);
examples/attention.c:203:        if(avg_cls_loss == -1) avg_cls_loss = closs;
examples/attention.c:204:        if(avg_att_loss == -1) avg_att_loss = aloss;
examples/attention.c:208:        printf("%ld, %.3f: Att: %f, %f avg, Class: %f, %f avg, %f rate, %lf seconds, %ld images\n", get_current_batch(net), (float)(*net->seen)/N, aloss, avg_att_loss, closs, avg_cls_loss, get_current_rate(net), what_time_is_it_now()-time, *net->seen);
examples/attention.c:209:        if(*net->seen/N > epoch){
examples/attention.c:210:            epoch = *net->seen/N;
examples/attention.c:228:    free_ptrs((void**)paths, plist->size);
examples/attention.c:244:    if(leaf_list) change_leaves(net->hierarchy, leaf_list);
examples/attention.c:253:    int m = plist->size;
examples/attention.c:266:        int class = -1;
examples/attention.c:275:        image resized = resize_min(im, net->w*divs/size);
examples/attention.c:276:        image crop = crop_image(resized, (resized.w - net->w*divs/size)/2, (resized.h - net->h*divs/size)/2, net->w*divs/size, net->h*divs/size);
examples/attention.c:277:        image rcrop = resize_image(crop, net->w, net->h);
examples/attention.c:295:            int y = row * crop.h / divs - (net->h - crop.h/divs)/2;
examples/attention.c:296:            int x = col * crop.w / divs - (net->w - crop.w/divs)/2;
examples/attention.c:298:            image tile = crop_image(crop, x, y, net->w, net->h);
examples/attention.c:304:        if(net->hierarchy) hierarchy_predictions(pred, net->outputs, net->hierarchy, 1, 1);
examples/attention.c:341:    int m = plist->size;
examples/attention.c:349:        int class = -1;
examples/attention.c:363:            if(net->hierarchy) hierarchy_predictions(p, net->outputs, net->hierarchy, 1 , 1);
examples/attention.c:411:        image r = letterbox_image(im, net->w, net->h);
examples/attention.c:418:        if(net->hierarchy) hierarchy_predictions(predictions, net->outputs, net->hierarchy, 1, 1);
examples/attention.c:419:        top_k(predictions, net->outputs, top, indexes);
examples/attention.c:420:        fprintf(stderr, "%s: Predicted in %f seconds.\n", input, sec(clock()-time));
examples/attention.c:423:            //if(net->hierarchy) printf("%d, %s: %f, parent: %s \n",index, names[index], predictions[index], (net->hierarchy->parent[index] >= 0) ? names[net->hierarchy->parent[index]] : "Root");
examples/attention.c:441:    char *gpu_list = find_char_arg(argc, argv, "-gpus", 0);
examples/attention.c:446:    int top = find_int_arg(argc, argv, "-t", 0);
examples/attention.c:447:    int clear = find_arg(argc, argv, "-clear");
examples/detector.py:13:net = dn.load_net("cfg/yolo-thor.cfg", "/home/pjreddie/backup/yolo-thor_final.weights", 0)
examples/rnn_vid.c:29:        int index = rand() % (frames - steps - 2);
examples/rnn_vid.c:31:            --b;
examples/rnn_vid.c:78:    float avg_loss = -1;
examples/rnn_vid.c:88:    int N = plist->size;
examples/rnn_vid.c:95:    load_weights(&extractor, "/home/pjreddie/trained/yolo-coco.conv");
examples/rnn_vid.c:111:        fprintf(stderr, "%d: %f, %f avg, %f rate, %lf seconds\n", i, loss, avg_loss, get_current_rate(net), sec(clock()-time));
examples/rnn_vid.c:150:    load_weights(&extractor, "/home/pjreddie/trained/yolo-coco.conv");
examples/rnn_vid.c:172:            axpy_cpu(14*14*512, -1, feat, 1, next, 1);
