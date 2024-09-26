
kernel:     file format elf64-littleriscv


Disassembly of section .text:

0000000080000000 <_entry>:
    80000000:	0000a117          	auipc	sp,0xa
    80000004:	2c013103          	ld	sp,704(sp) # 8000a2c0 <_GLOBAL_OFFSET_TABLE_+0x20>
    80000008:	00001537          	lui	a0,0x1
    8000000c:	f14025f3          	csrr	a1,mhartid
    80000010:	00158593          	addi	a1,a1,1
    80000014:	02b50533          	mul	a0,a0,a1
    80000018:	00a10133          	add	sp,sp,a0
    8000001c:	0f1050ef          	jal	ra,8000590c <start>

0000000080000020 <spin>:
    80000020:	0000006f          	j	80000020 <spin>
	...

0000000080001000 <_ZN5Riscv14supervisorTrapEv>:
.global _ZN5Riscv14supervisorTrapEv
.type _ZN5Riscv14supervisorTrapEv, @function
.align 4

_ZN5Riscv14supervisorTrapEv:
    addi sp, sp, -256
    80001000:	f0010113          	addi	sp,sp,-256
    .irp index, 0,1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30,31
    sd x\index, \index * 8(sp)
    .endr
    80001004:	00013023          	sd	zero,0(sp)
    80001008:	00113423          	sd	ra,8(sp)
    8000100c:	00213823          	sd	sp,16(sp)
    80001010:	00313c23          	sd	gp,24(sp)
    80001014:	02413023          	sd	tp,32(sp)
    80001018:	02513423          	sd	t0,40(sp)
    8000101c:	02613823          	sd	t1,48(sp)
    80001020:	02713c23          	sd	t2,56(sp)
    80001024:	04813023          	sd	s0,64(sp)
    80001028:	04913423          	sd	s1,72(sp)
    8000102c:	04a13823          	sd	a0,80(sp)
    80001030:	04b13c23          	sd	a1,88(sp)
    80001034:	06c13023          	sd	a2,96(sp)
    80001038:	06d13423          	sd	a3,104(sp)
    8000103c:	06e13823          	sd	a4,112(sp)
    80001040:	06f13c23          	sd	a5,120(sp)
    80001044:	09013023          	sd	a6,128(sp)
    80001048:	09113423          	sd	a7,136(sp)
    8000104c:	09213823          	sd	s2,144(sp)
    80001050:	09313c23          	sd	s3,152(sp)
    80001054:	0b413023          	sd	s4,160(sp)
    80001058:	0b513423          	sd	s5,168(sp)
    8000105c:	0b613823          	sd	s6,176(sp)
    80001060:	0b713c23          	sd	s7,184(sp)
    80001064:	0d813023          	sd	s8,192(sp)
    80001068:	0d913423          	sd	s9,200(sp)
    8000106c:	0da13823          	sd	s10,208(sp)
    80001070:	0db13c23          	sd	s11,216(sp)
    80001074:	0fc13023          	sd	t3,224(sp)
    80001078:	0fd13423          	sd	t4,232(sp)
    8000107c:	0fe13823          	sd	t5,240(sp)
    80001080:	0ff13c23          	sd	t6,248(sp)

    call _ZN5Riscv21supervisorTrapHandlerEv
    80001084:	478010ef          	jal	ra,800024fc <_ZN5Riscv21supervisorTrapHandlerEv>

    .irp index, 0,1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30,31
    ld x\index, \index * 8(sp)
    .endr
    80001088:	00013003          	ld	zero,0(sp)
    8000108c:	00813083          	ld	ra,8(sp)
    80001090:	01013103          	ld	sp,16(sp)
    80001094:	01813183          	ld	gp,24(sp)
    80001098:	02013203          	ld	tp,32(sp)
    8000109c:	02813283          	ld	t0,40(sp)
    800010a0:	03013303          	ld	t1,48(sp)
    800010a4:	03813383          	ld	t2,56(sp)
    800010a8:	04013403          	ld	s0,64(sp)
    800010ac:	04813483          	ld	s1,72(sp)
    800010b0:	05013503          	ld	a0,80(sp)
    800010b4:	05813583          	ld	a1,88(sp)
    800010b8:	06013603          	ld	a2,96(sp)
    800010bc:	06813683          	ld	a3,104(sp)
    800010c0:	07013703          	ld	a4,112(sp)
    800010c4:	07813783          	ld	a5,120(sp)
    800010c8:	08013803          	ld	a6,128(sp)
    800010cc:	08813883          	ld	a7,136(sp)
    800010d0:	09013903          	ld	s2,144(sp)
    800010d4:	09813983          	ld	s3,152(sp)
    800010d8:	0a013a03          	ld	s4,160(sp)
    800010dc:	0a813a83          	ld	s5,168(sp)
    800010e0:	0b013b03          	ld	s6,176(sp)
    800010e4:	0b813b83          	ld	s7,184(sp)
    800010e8:	0c013c03          	ld	s8,192(sp)
    800010ec:	0c813c83          	ld	s9,200(sp)
    800010f0:	0d013d03          	ld	s10,208(sp)
    800010f4:	0d813d83          	ld	s11,216(sp)
    800010f8:	0e013e03          	ld	t3,224(sp)
    800010fc:	0e813e83          	ld	t4,232(sp)
    80001100:	0f013f03          	ld	t5,240(sp)
    80001104:	0f813f83          	ld	t6,248(sp)
    addi sp, sp, 256
    80001108:	10010113          	addi	sp,sp,256

    8000110c:	10200073          	sret

0000000080001110 <_ZN5Riscv16pushAllRegistersEv>:
.global _ZN5Riscv16pushAllRegistersEv
.type _ZN5Riscv16pushAllRegistersEv, @function
.align 4

_ZN5Riscv16pushAllRegistersEv:
    addi sp, sp, -256
    80001110:	f0010113          	addi	sp,sp,-256
    .irp index, 3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30,31
    sd x\index, \index * 8(sp)
    .endr
    80001114:	00313c23          	sd	gp,24(sp)
    80001118:	02413023          	sd	tp,32(sp)
    8000111c:	02513423          	sd	t0,40(sp)
    80001120:	02613823          	sd	t1,48(sp)
    80001124:	02713c23          	sd	t2,56(sp)
    80001128:	04813023          	sd	s0,64(sp)
    8000112c:	04913423          	sd	s1,72(sp)
    80001130:	04a13823          	sd	a0,80(sp)
    80001134:	04b13c23          	sd	a1,88(sp)
    80001138:	06c13023          	sd	a2,96(sp)
    8000113c:	06d13423          	sd	a3,104(sp)
    80001140:	06e13823          	sd	a4,112(sp)
    80001144:	06f13c23          	sd	a5,120(sp)
    80001148:	09013023          	sd	a6,128(sp)
    8000114c:	09113423          	sd	a7,136(sp)
    80001150:	09213823          	sd	s2,144(sp)
    80001154:	09313c23          	sd	s3,152(sp)
    80001158:	0b413023          	sd	s4,160(sp)
    8000115c:	0b513423          	sd	s5,168(sp)
    80001160:	0b613823          	sd	s6,176(sp)
    80001164:	0b713c23          	sd	s7,184(sp)
    80001168:	0d813023          	sd	s8,192(sp)
    8000116c:	0d913423          	sd	s9,200(sp)
    80001170:	0da13823          	sd	s10,208(sp)
    80001174:	0db13c23          	sd	s11,216(sp)
    80001178:	0fc13023          	sd	t3,224(sp)
    8000117c:	0fd13423          	sd	t4,232(sp)
    80001180:	0fe13823          	sd	t5,240(sp)
    80001184:	0ff13c23          	sd	t6,248(sp)
    ret
    80001188:	00008067          	ret
    8000118c:	00000013          	nop

0000000080001190 <_ZN5Riscv15popAllRegistersEv>:
.align 4

_ZN5Riscv15popAllRegistersEv:
    .irp index, 3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30,31
    ld x\index, \index * 8(sp)
    .endr
    80001190:	01813183          	ld	gp,24(sp)
    80001194:	02013203          	ld	tp,32(sp)
    80001198:	02813283          	ld	t0,40(sp)
    8000119c:	03013303          	ld	t1,48(sp)
    800011a0:	03813383          	ld	t2,56(sp)
    800011a4:	04013403          	ld	s0,64(sp)
    800011a8:	04813483          	ld	s1,72(sp)
    800011ac:	05013503          	ld	a0,80(sp)
    800011b0:	05813583          	ld	a1,88(sp)
    800011b4:	06013603          	ld	a2,96(sp)
    800011b8:	06813683          	ld	a3,104(sp)
    800011bc:	07013703          	ld	a4,112(sp)
    800011c0:	07813783          	ld	a5,120(sp)
    800011c4:	08013803          	ld	a6,128(sp)
    800011c8:	08813883          	ld	a7,136(sp)
    800011cc:	09013903          	ld	s2,144(sp)
    800011d0:	09813983          	ld	s3,152(sp)
    800011d4:	0a013a03          	ld	s4,160(sp)
    800011d8:	0a813a83          	ld	s5,168(sp)
    800011dc:	0b013b03          	ld	s6,176(sp)
    800011e0:	0b813b83          	ld	s7,184(sp)
    800011e4:	0c013c03          	ld	s8,192(sp)
    800011e8:	0c813c83          	ld	s9,200(sp)
    800011ec:	0d013d03          	ld	s10,208(sp)
    800011f0:	0d813d83          	ld	s11,216(sp)
    800011f4:	0e013e03          	ld	t3,224(sp)
    800011f8:	0e813e83          	ld	t4,232(sp)
    800011fc:	0f013f03          	ld	t5,240(sp)
    80001200:	0f813f83          	ld	t6,248(sp)
    addi sp, sp, 256
    80001204:	10010113          	addi	sp,sp,256
    80001208:	00008067          	ret

000000008000120c <_ZN12kernelThread13contextSwitchEPNS_7ContextES1_>:
.global _ZN12kernelThread13contextSwitchEPNS_7ContextES1_
.type _ZN12kernelThread13contextSwitchEPNS_7ContextES1_, @function
#.align 4

_ZN12kernelThread13contextSwitchEPNS_7ContextES1_:
    sd ra, 0 * 8(a0)
    8000120c:	00153023          	sd	ra,0(a0) # 1000 <_entry-0x7ffff000>
    sd sp, 1 * 8(a0)
    80001210:	00253423          	sd	sp,8(a0)

    ld ra, 0 * 8(a1)
    80001214:	0005b083          	ld	ra,0(a1)
    ld sp, 1 * 8(a1)
    80001218:	0085b103          	ld	sp,8(a1)

    8000121c:	00008067          	ret

0000000080001220 <copy_and_swap>:
# a1 holds expected value
# a2 holds desired value
# a0 holds return value, 0 if successful, !0 otherwise
.global copy_and_swap
copy_and_swap:
    lr.w t0, (a0)          # Load original value.
    80001220:	100522af          	lr.w	t0,(a0)
    bne t0, a1, fail       # Doesn’t match, so fail.
    80001224:	00b29a63          	bne	t0,a1,80001238 <fail>
    sc.w t0, a2, (a0)      # Try to update.
    80001228:	18c522af          	sc.w	t0,a2,(a0)
    bnez t0, copy_and_swap # Retry if store-conditional failed.
    8000122c:	fe029ae3          	bnez	t0,80001220 <copy_and_swap>
    li a0, 0               # Set return to success.
    80001230:	00000513          	li	a0,0
    jr ra                  # Return.
    80001234:	00008067          	ret

0000000080001238 <fail>:
    fail:
    li a0, 1               # Set return to failure.
    80001238:	00100513          	li	a0,1
    8000123c:	00008067          	ret

0000000080001240 <_Z9mem_allocm>:
 */

//-----CONSOLE-----

//  0x01
void* mem_alloc(size_t s){
    80001240:	fe010113          	addi	sp,sp,-32
    80001244:	00113c23          	sd	ra,24(sp)
    80001248:	00813823          	sd	s0,16(sp)
    8000124c:	02010413          	addi	s0,sp,32

    size_t numBlocks = (s + 16)/MEM_BLOCK_SIZE;
    80001250:	01050593          	addi	a1,a0,16
    80001254:	0065d593          	srli	a1,a1,0x6
    if(s % MEM_BLOCK_SIZE != 0){
    80001258:	03f57513          	andi	a0,a0,63
    8000125c:	00050463          	beqz	a0,80001264 <_Z9mem_allocm+0x24>
        numBlocks++;
    80001260:	00158593          	addi	a1,a1,1
    }

    Riscv::ecallWithOneArgument(0x01,(uint64)numBlocks);
    80001264:	00100513          	li	a0,1
    80001268:	00001097          	auipc	ra,0x1
    8000126c:	25c080e7          	jalr	604(ra) # 800024c4 <_ZN5Riscv20ecallWithOneArgumentEmm>
    __asm__ volatile ("mv a4, %[a4]" :: [a4] "r" (a4));
};

inline uint64 Riscv::getReturnValue(){
    uint64 volatile retValue;
    __asm__ volatile ("mv %[retValue], a0" : [retValue] "=r" (retValue));
    80001270:	00050793          	mv	a5,a0
    80001274:	fef43423          	sd	a5,-24(s0)
    return retValue;
    80001278:	fe843503          	ld	a0,-24(s0)

    return (void *)Riscv::getReturnValue();
};
    8000127c:	01813083          	ld	ra,24(sp)
    80001280:	01013403          	ld	s0,16(sp)
    80001284:	02010113          	addi	sp,sp,32
    80001288:	00008067          	ret

000000008000128c <_Z8mem_freePv>:

//  0x02

int mem_free(void* ptr){
    8000128c:	fe010113          	addi	sp,sp,-32
    80001290:	00113c23          	sd	ra,24(sp)
    80001294:	00813823          	sd	s0,16(sp)
    80001298:	02010413          	addi	s0,sp,32
    8000129c:	00050593          	mv	a1,a0

    Riscv::ecallWithOneArgument(0x02, (uint64)ptr);
    800012a0:	00200513          	li	a0,2
    800012a4:	00001097          	auipc	ra,0x1
    800012a8:	220080e7          	jalr	544(ra) # 800024c4 <_ZN5Riscv20ecallWithOneArgumentEmm>
    __asm__ volatile ("mv %[retValue], a0" : [retValue] "=r" (retValue));
    800012ac:	00050793          	mv	a5,a0
    800012b0:	fef43423          	sd	a5,-24(s0)
    return retValue;
    800012b4:	fe843503          	ld	a0,-24(s0)

    return (int)Riscv::getReturnValue();
};
    800012b8:	0005051b          	sext.w	a0,a0
    800012bc:	01813083          	ld	ra,24(sp)
    800012c0:	01013403          	ld	s0,16(sp)
    800012c4:	02010113          	addi	sp,sp,32
    800012c8:	00008067          	ret

00000000800012cc <_Z13thread_createPP12kernelThreadPFvPvES2_>:

//-----THREAD-----//

//  0x11    Thread constructor with args
int thread_create(thread_t* handle, void(*start_routine)(void*), void* arg){
    800012cc:	fc010113          	addi	sp,sp,-64
    800012d0:	02113c23          	sd	ra,56(sp)
    800012d4:	02813823          	sd	s0,48(sp)
    800012d8:	02913423          	sd	s1,40(sp)
    800012dc:	03213023          	sd	s2,32(sp)
    800012e0:	01313c23          	sd	s3,24(sp)
    800012e4:	04010413          	addi	s0,sp,64
    800012e8:	00050913          	mv	s2,a0
    800012ec:	00058493          	mv	s1,a1
    800012f0:	00060993          	mv	s3,a2
    void *stackPtr = nullptr;
    if(start_routine) {
    800012f4:	04058c63          	beqz	a1,8000134c <_Z13thread_createPP12kernelThreadPFvPvES2_+0x80>
        stackPtr = (uint64*)mem_alloc(DEFAULT_STACK_SIZE * sizeof(uint64));
    800012f8:	00008537          	lui	a0,0x8
    800012fc:	00000097          	auipc	ra,0x0
    80001300:	f44080e7          	jalr	-188(ra) # 80001240 <_Z9mem_allocm>
    80001304:	00050713          	mv	a4,a0
    }

    Riscv::ecallWithFourArguments(0x11, (uint64)handle, (uint64)start_routine, (uint64)arg, (uint64)stackPtr);
    80001308:	00098693          	mv	a3,s3
    8000130c:	00048613          	mv	a2,s1
    80001310:	00090593          	mv	a1,s2
    80001314:	01100513          	li	a0,17
    80001318:	00001097          	auipc	ra,0x1
    8000131c:	158080e7          	jalr	344(ra) # 80002470 <_ZN5Riscv22ecallWithFourArgumentsEmmmmm>
    __asm__ volatile ("mv %[retValue], a0" : [retValue] "=r" (retValue));
    80001320:	00050793          	mv	a5,a0
    80001324:	fcf43423          	sd	a5,-56(s0)
    return retValue;
    80001328:	fc843503          	ld	a0,-56(s0)

    return (int)Riscv::getReturnValue();
};
    8000132c:	0005051b          	sext.w	a0,a0
    80001330:	03813083          	ld	ra,56(sp)
    80001334:	03013403          	ld	s0,48(sp)
    80001338:	02813483          	ld	s1,40(sp)
    8000133c:	02013903          	ld	s2,32(sp)
    80001340:	01813983          	ld	s3,24(sp)
    80001344:	04010113          	addi	sp,sp,64
    80001348:	00008067          	ret
    void *stackPtr = nullptr;
    8000134c:	00000713          	li	a4,0
    80001350:	fb9ff06f          	j	80001308 <_Z13thread_createPP12kernelThreadPFvPvES2_+0x3c>

0000000080001354 <_Z11thread_exitv>:

//  0x12
int thread_exit(){
    80001354:	fe010113          	addi	sp,sp,-32
    80001358:	00113c23          	sd	ra,24(sp)
    8000135c:	00813823          	sd	s0,16(sp)
    80001360:	02010413          	addi	s0,sp,32
    Riscv::ecallWithoutArguments(0x12);
    80001364:	01200513          	li	a0,18
    80001368:	00001097          	auipc	ra,0x1
    8000136c:	178080e7          	jalr	376(ra) # 800024e0 <_ZN5Riscv21ecallWithoutArgumentsEm>
    __asm__ volatile ("mv %[retValue], a0" : [retValue] "=r" (retValue));
    80001370:	00050793          	mv	a5,a0
    80001374:	fef43423          	sd	a5,-24(s0)
    return retValue;
    80001378:	fe843503          	ld	a0,-24(s0)
    return (int)Riscv::getReturnValue();
};
    8000137c:	0005051b          	sext.w	a0,a0
    80001380:	01813083          	ld	ra,24(sp)
    80001384:	01013403          	ld	s0,16(sp)
    80001388:	02010113          	addi	sp,sp,32
    8000138c:	00008067          	ret

0000000080001390 <_Z15thread_dispatchv>:

//  0x13
void thread_dispatch(){
    80001390:	ff010113          	addi	sp,sp,-16
    80001394:	00113423          	sd	ra,8(sp)
    80001398:	00813023          	sd	s0,0(sp)
    8000139c:	01010413          	addi	s0,sp,16
    Riscv::ecallWithoutArguments(0x13);
    800013a0:	01300513          	li	a0,19
    800013a4:	00001097          	auipc	ra,0x1
    800013a8:	13c080e7          	jalr	316(ra) # 800024e0 <_ZN5Riscv21ecallWithoutArgumentsEm>
};
    800013ac:	00813083          	ld	ra,8(sp)
    800013b0:	00013403          	ld	s0,0(sp)
    800013b4:	01010113          	addi	sp,sp,16
    800013b8:	00008067          	ret

00000000800013bc <_Z12thread_startP12kernelThread>:

//  0x14
int thread_start(kernelThread *handle){
    800013bc:	fe010113          	addi	sp,sp,-32
    800013c0:	00113c23          	sd	ra,24(sp)
    800013c4:	00813823          	sd	s0,16(sp)
    800013c8:	02010413          	addi	s0,sp,32
    800013cc:	00050593          	mv	a1,a0
    Riscv::ecallWithOneArgument(0x14,(uint64)handle);
    800013d0:	01400513          	li	a0,20
    800013d4:	00001097          	auipc	ra,0x1
    800013d8:	0f0080e7          	jalr	240(ra) # 800024c4 <_ZN5Riscv20ecallWithOneArgumentEmm>
    __asm__ volatile ("mv %[retValue], a0" : [retValue] "=r" (retValue));
    800013dc:	00050793          	mv	a5,a0
    800013e0:	fef43423          	sd	a5,-24(s0)
    return retValue;
    800013e4:	fe843503          	ld	a0,-24(s0)
    return (int)Riscv::getReturnValue();
};
    800013e8:	0005051b          	sext.w	a0,a0
    800013ec:	01813083          	ld	ra,24(sp)
    800013f0:	01013403          	ld	s0,16(sp)
    800013f4:	02010113          	addi	sp,sp,32
    800013f8:	00008067          	ret

00000000800013fc <_Z8sem_openPP15kernelSemaphorej>:


//-----SEMAPHORE-----//

//  0x21
int sem_open(sem_t* handle, unsigned init){
    800013fc:	fe010113          	addi	sp,sp,-32
    80001400:	00113c23          	sd	ra,24(sp)
    80001404:	00813823          	sd	s0,16(sp)
    80001408:	02010413          	addi	s0,sp,32

    //if(*handle != nullptr) return -1;

    Riscv::ecallWithTwoArguments(0x21,(uint64)handle,(uint64)init);
    8000140c:	02059613          	slli	a2,a1,0x20
    80001410:	02065613          	srli	a2,a2,0x20
    80001414:	00050593          	mv	a1,a0
    80001418:	02100513          	li	a0,33
    8000141c:	00001097          	auipc	ra,0x1
    80001420:	08c080e7          	jalr	140(ra) # 800024a8 <_ZN5Riscv21ecallWithTwoArgumentsEmmm>
    __asm__ volatile ("mv %[retValue], a0" : [retValue] "=r" (retValue));
    80001424:	00050793          	mv	a5,a0
    80001428:	fef43423          	sd	a5,-24(s0)
    return retValue;
    8000142c:	fe843503          	ld	a0,-24(s0)

    return (int)Riscv::getReturnValue();

};
    80001430:	0005051b          	sext.w	a0,a0
    80001434:	01813083          	ld	ra,24(sp)
    80001438:	01013403          	ld	s0,16(sp)
    8000143c:	02010113          	addi	sp,sp,32
    80001440:	00008067          	ret

0000000080001444 <_Z9sem_closeP15kernelSemaphore>:

//  0x22
int sem_close(sem_t handle){
    80001444:	fe010113          	addi	sp,sp,-32
    80001448:	00113c23          	sd	ra,24(sp)
    8000144c:	00813823          	sd	s0,16(sp)
    80001450:	02010413          	addi	s0,sp,32
    80001454:	00050593          	mv	a1,a0

    Riscv::ecallWithOneArgument(0x22, (uint64)handle);
    80001458:	02200513          	li	a0,34
    8000145c:	00001097          	auipc	ra,0x1
    80001460:	068080e7          	jalr	104(ra) # 800024c4 <_ZN5Riscv20ecallWithOneArgumentEmm>
    __asm__ volatile ("mv %[retValue], a0" : [retValue] "=r" (retValue));
    80001464:	00050793          	mv	a5,a0
    80001468:	fef43423          	sd	a5,-24(s0)
    return retValue;
    8000146c:	fe843503          	ld	a0,-24(s0)

    return (int)Riscv::getReturnValue();

};
    80001470:	0005051b          	sext.w	a0,a0
    80001474:	01813083          	ld	ra,24(sp)
    80001478:	01013403          	ld	s0,16(sp)
    8000147c:	02010113          	addi	sp,sp,32
    80001480:	00008067          	ret

0000000080001484 <_Z8sem_waitP15kernelSemaphore>:

//  0x23
int sem_wait(sem_t id){

    if(id == nullptr) return -1;
    80001484:	04050263          	beqz	a0,800014c8 <_Z8sem_waitP15kernelSemaphore+0x44>
int sem_wait(sem_t id){
    80001488:	fe010113          	addi	sp,sp,-32
    8000148c:	00113c23          	sd	ra,24(sp)
    80001490:	00813823          	sd	s0,16(sp)
    80001494:	02010413          	addi	s0,sp,32
    80001498:	00050593          	mv	a1,a0

    Riscv::ecallWithOneArgument(0x23, (uint64)id);
    8000149c:	02300513          	li	a0,35
    800014a0:	00001097          	auipc	ra,0x1
    800014a4:	024080e7          	jalr	36(ra) # 800024c4 <_ZN5Riscv20ecallWithOneArgumentEmm>
    __asm__ volatile ("mv %[retValue], a0" : [retValue] "=r" (retValue));
    800014a8:	00050793          	mv	a5,a0
    800014ac:	fef43423          	sd	a5,-24(s0)
    return retValue;
    800014b0:	fe843503          	ld	a0,-24(s0)

    return (int)Riscv::getReturnValue();
    800014b4:	0005051b          	sext.w	a0,a0

};
    800014b8:	01813083          	ld	ra,24(sp)
    800014bc:	01013403          	ld	s0,16(sp)
    800014c0:	02010113          	addi	sp,sp,32
    800014c4:	00008067          	ret
    if(id == nullptr) return -1;
    800014c8:	fff00513          	li	a0,-1
};
    800014cc:	00008067          	ret

00000000800014d0 <_Z10sem_signalP15kernelSemaphore>:

//  0x24
int sem_signal(sem_t id){

    if(id == nullptr) return -1;
    800014d0:	04050263          	beqz	a0,80001514 <_Z10sem_signalP15kernelSemaphore+0x44>
int sem_signal(sem_t id){
    800014d4:	fe010113          	addi	sp,sp,-32
    800014d8:	00113c23          	sd	ra,24(sp)
    800014dc:	00813823          	sd	s0,16(sp)
    800014e0:	02010413          	addi	s0,sp,32
    800014e4:	00050593          	mv	a1,a0

    Riscv::ecallWithOneArgument(0x24,(uint64)id);
    800014e8:	02400513          	li	a0,36
    800014ec:	00001097          	auipc	ra,0x1
    800014f0:	fd8080e7          	jalr	-40(ra) # 800024c4 <_ZN5Riscv20ecallWithOneArgumentEmm>
    __asm__ volatile ("mv %[retValue], a0" : [retValue] "=r" (retValue));
    800014f4:	00050793          	mv	a5,a0
    800014f8:	fef43423          	sd	a5,-24(s0)
    return retValue;
    800014fc:	fe843503          	ld	a0,-24(s0)

    return (int)Riscv::getReturnValue();
    80001500:	0005051b          	sext.w	a0,a0

};
    80001504:	01813083          	ld	ra,24(sp)
    80001508:	01013403          	ld	s0,16(sp)
    8000150c:	02010113          	addi	sp,sp,32
    80001510:	00008067          	ret
    if(id == nullptr) return -1;
    80001514:	fff00513          	li	a0,-1
};
    80001518:	00008067          	ret

000000008000151c <_Z11sem_trywaitP15kernelSemaphore>:

//  0x26
int sem_trywait(sem_t id){

    if(id == nullptr) return -1;
    8000151c:	04050263          	beqz	a0,80001560 <_Z11sem_trywaitP15kernelSemaphore+0x44>
int sem_trywait(sem_t id){
    80001520:	fe010113          	addi	sp,sp,-32
    80001524:	00113c23          	sd	ra,24(sp)
    80001528:	00813823          	sd	s0,16(sp)
    8000152c:	02010413          	addi	s0,sp,32
    80001530:	00050593          	mv	a1,a0

    Riscv::ecallWithOneArgument(0x26, (uint64)id);
    80001534:	02600513          	li	a0,38
    80001538:	00001097          	auipc	ra,0x1
    8000153c:	f8c080e7          	jalr	-116(ra) # 800024c4 <_ZN5Riscv20ecallWithOneArgumentEmm>
    __asm__ volatile ("mv %[retValue], a0" : [retValue] "=r" (retValue));
    80001540:	00050793          	mv	a5,a0
    80001544:	fef43423          	sd	a5,-24(s0)
    return retValue;
    80001548:	fe843503          	ld	a0,-24(s0)

    return (int)Riscv::getReturnValue();
    8000154c:	0005051b          	sext.w	a0,a0
};
    80001550:	01813083          	ld	ra,24(sp)
    80001554:	01013403          	ld	s0,16(sp)
    80001558:	02010113          	addi	sp,sp,32
    8000155c:	00008067          	ret
    if(id == nullptr) return -1;
    80001560:	fff00513          	li	a0,-1
};
    80001564:	00008067          	ret

0000000080001568 <_Z4getcv>:

//-----CONSOLE-----//

//  0x41
char getc(){
    80001568:	fe010113          	addi	sp,sp,-32
    8000156c:	00113c23          	sd	ra,24(sp)
    80001570:	00813823          	sd	s0,16(sp)
    80001574:	02010413          	addi	s0,sp,32
    Riscv::ecallWithoutArguments(0x41);
    80001578:	04100513          	li	a0,65
    8000157c:	00001097          	auipc	ra,0x1
    80001580:	f64080e7          	jalr	-156(ra) # 800024e0 <_ZN5Riscv21ecallWithoutArgumentsEm>
    __asm__ volatile ("mv %[retValue], a0" : [retValue] "=r" (retValue));
    80001584:	00050793          	mv	a5,a0
    80001588:	fef43423          	sd	a5,-24(s0)
    return retValue;
    8000158c:	fe843503          	ld	a0,-24(s0)
    return (char)Riscv::getReturnValue();
};
    80001590:	0ff57513          	andi	a0,a0,255
    80001594:	01813083          	ld	ra,24(sp)
    80001598:	01013403          	ld	s0,16(sp)
    8000159c:	02010113          	addi	sp,sp,32
    800015a0:	00008067          	ret

00000000800015a4 <_Z4putcc>:

void putc(char c){
    800015a4:	ff010113          	addi	sp,sp,-16
    800015a8:	00113423          	sd	ra,8(sp)
    800015ac:	00813023          	sd	s0,0(sp)
    800015b0:	01010413          	addi	s0,sp,16
    800015b4:	00050593          	mv	a1,a0
    Riscv::ecallWithOneArgument(0x42, (uint64)c);
    800015b8:	04200513          	li	a0,66
    800015bc:	00001097          	auipc	ra,0x1
    800015c0:	f08080e7          	jalr	-248(ra) # 800024c4 <_ZN5Riscv20ecallWithOneArgumentEmm>
};
    800015c4:	00813083          	ld	ra,8(sp)
    800015c8:	00013403          	ld	s0,0(sp)
    800015cc:	01010113          	addi	sp,sp,16
    800015d0:	00008067          	ret

00000000800015d4 <_ZN12kernelThread13threadWrapperEv>:
   }else{
       return 0;
   }
};

void kernelThread::threadWrapper(){
    800015d4:	fe010113          	addi	sp,sp,-32
    800015d8:	00113c23          	sd	ra,24(sp)
    800015dc:	00813823          	sd	s0,16(sp)
    800015e0:	00913423          	sd	s1,8(sp)
    800015e4:	02010413          	addi	s0,sp,32
    Riscv::popSppSpie();
    800015e8:	00001097          	auipc	ra,0x1
    800015ec:	e68080e7          	jalr	-408(ra) # 80002450 <_ZN5Riscv10popSppSpieEv>
    running->body(running->arguments);
    800015f0:	00009497          	auipc	s1,0x9
    800015f4:	d3048493          	addi	s1,s1,-720 # 8000a320 <_ZN12kernelThread7runningE>
    800015f8:	0004b783          	ld	a5,0(s1)
    800015fc:	0187b703          	ld	a4,24(a5)
    80001600:	0207b503          	ld	a0,32(a5)
    80001604:	000700e7          	jalr	a4
    running->setFinished(true);
    80001608:	0004b783          	ld	a5,0(s1)
    bool isFinished() const {
        return finished;
    }

    void setFinished(bool finished) {
        kernelThread::finished = finished;
    8000160c:	00100713          	li	a4,1
    80001610:	02e78523          	sb	a4,42(a5)
    Riscv::ecallWithoutArguments(0x13);
    80001614:	01300513          	li	a0,19
    80001618:	00001097          	auipc	ra,0x1
    8000161c:	ec8080e7          	jalr	-312(ra) # 800024e0 <_ZN5Riscv21ecallWithoutArgumentsEm>
    //kernelThread::dispatchThread();
};
    80001620:	01813083          	ld	ra,24(sp)
    80001624:	01013403          	ld	s0,16(sp)
    80001628:	00813483          	ld	s1,8(sp)
    8000162c:	02010113          	addi	sp,sp,32
    80001630:	00008067          	ret

0000000080001634 <_ZN12kernelThread12createThreadEPPS_PFvPvES2_Pm>:
int kernelThread::createThread(kernelThread **handle, Body body, void *args, uint64 *stack) {
    80001634:	fc010113          	addi	sp,sp,-64
    80001638:	02113c23          	sd	ra,56(sp)
    8000163c:	02813823          	sd	s0,48(sp)
    80001640:	02913423          	sd	s1,40(sp)
    80001644:	03213023          	sd	s2,32(sp)
    80001648:	01313c23          	sd	s3,24(sp)
    8000164c:	01413823          	sd	s4,16(sp)
    80001650:	01513423          	sd	s5,8(sp)
    80001654:	04010413          	addi	s0,sp,64
    80001658:	00050993          	mv	s3,a0
    8000165c:	00058913          	mv	s2,a1
    80001660:	00060a93          	mv	s5,a2
    80001664:	00068a13          	mv	s4,a3
   *handle = new kernelThread(body, args, stack);
    80001668:	03000513          	li	a0,48
    8000166c:	00001097          	auipc	ra,0x1
    80001670:	abc080e7          	jalr	-1348(ra) # 80002128 <_Znwm>
    80001674:	00050493          	mv	s1,a0
    bool finished;

    friend class Riscv;

    explicit kernelThread(Body body, void *args, uint64 *stack){
        this->arguments = args;
    80001678:	03553023          	sd	s5,32(a0) # 8020 <_entry-0x7fff7fe0>
        this->body = body;
    8000167c:	01253c23          	sd	s2,24(a0)

        if (body != nullptr){
    80001680:	04090663          	beqz	s2,800016cc <_ZN12kernelThread12createThreadEPPS_PFvPvES2_Pm+0x98>
            this->stack = stack;
    80001684:	01453823          	sd	s4,16(a0)
        } else{
            this->stack = nullptr;
        }

        this->finished = false;
    80001688:	02048523          	sb	zero,42(s1)
        this->blocked = false;
    8000168c:	020484a3          	sb	zero,41(s1)
        this->ready = true;
    80001690:	00100793          	li	a5,1
    80001694:	02f48423          	sb	a5,40(s1)

        context.ra = (uint64) &threadWrapper;
    80001698:	00000797          	auipc	a5,0x0
    8000169c:	f3c78793          	addi	a5,a5,-196 # 800015d4 <_ZN12kernelThread13threadWrapperEv>
    800016a0:	00f4b023          	sd	a5,0(s1)
        if(stack != nullptr){
    800016a4:	020a0863          	beqz	s4,800016d4 <_ZN12kernelThread12createThreadEPPS_PFvPvES2_Pm+0xa0>
            context.sp = (uint64) &(this->stack[DEFAULT_STACK_SIZE]);
    800016a8:	0104b783          	ld	a5,16(s1)
    800016ac:	00008737          	lui	a4,0x8
    800016b0:	00e787b3          	add	a5,a5,a4
    800016b4:	00f4b423          	sd	a5,8(s1)
        } else {
            context.sp = 0;
        }

        if (body != nullptr){
    800016b8:	02090263          	beqz	s2,800016dc <_ZN12kernelThread12createThreadEPPS_PFvPvES2_Pm+0xa8>
                this->setReady(true);
                Scheduler::putInScheduler(this);
    800016bc:	00048513          	mv	a0,s1
    800016c0:	00001097          	auipc	ra,0x1
    800016c4:	2a8080e7          	jalr	680(ra) # 80002968 <_ZN9Scheduler14putInSchedulerEP12kernelThread>
    800016c8:	0140006f          	j	800016dc <_ZN12kernelThread12createThreadEPPS_PFvPvES2_Pm+0xa8>
            this->stack = nullptr;
    800016cc:	00053823          	sd	zero,16(a0)
    800016d0:	fb9ff06f          	j	80001688 <_ZN12kernelThread12createThreadEPPS_PFvPvES2_Pm+0x54>
            context.sp = 0;
    800016d4:	0004b423          	sd	zero,8(s1)
    800016d8:	fe1ff06f          	j	800016b8 <_ZN12kernelThread12createThreadEPPS_PFvPvES2_Pm+0x84>
    800016dc:	0099b023          	sd	s1,0(s3)
   if(handle == nullptr){
    800016e0:	02098663          	beqz	s3,8000170c <_ZN12kernelThread12createThreadEPPS_PFvPvES2_Pm+0xd8>
       return 0;
    800016e4:	00000513          	li	a0,0
};
    800016e8:	03813083          	ld	ra,56(sp)
    800016ec:	03013403          	ld	s0,48(sp)
    800016f0:	02813483          	ld	s1,40(sp)
    800016f4:	02013903          	ld	s2,32(sp)
    800016f8:	01813983          	ld	s3,24(sp)
    800016fc:	01013a03          	ld	s4,16(sp)
    80001700:	00813a83          	ld	s5,8(sp)
    80001704:	04010113          	addi	sp,sp,64
    80001708:	00008067          	ret
       return -1;
    8000170c:	fff00513          	li	a0,-1
    80001710:	fd9ff06f          	j	800016e8 <_ZN12kernelThread12createThreadEPPS_PFvPvES2_Pm+0xb4>
    80001714:	00050913          	mv	s2,a0
   *handle = new kernelThread(body, args, stack);
    80001718:	00048513          	mv	a0,s1
    8000171c:	00001097          	auipc	ra,0x1
    80001720:	8e4080e7          	jalr	-1820(ra) # 80002000 <_ZdlPv>
    80001724:	00090513          	mv	a0,s2
    80001728:	0000a097          	auipc	ra,0xa
    8000172c:	d20080e7          	jalr	-736(ra) # 8000b448 <_Unwind_Resume>

0000000080001730 <_ZN12kernelThread14dispatchThreadEv>:
    Riscv::pushAllRegisters();
    kernelThread::dispatchThread();
    Riscv::popAllRegisters();
};

void kernelThread::dispatchThread(){
    80001730:	fe010113          	addi	sp,sp,-32
    80001734:	00113c23          	sd	ra,24(sp)
    80001738:	00813823          	sd	s0,16(sp)
    8000173c:	00913423          	sd	s1,8(sp)
    80001740:	02010413          	addi	s0,sp,32
    kernelThread *oldThread = running;
    80001744:	00009497          	auipc	s1,0x9
    80001748:	bdc4b483          	ld	s1,-1060(s1) # 8000a320 <_ZN12kernelThread7runningE>
        return blocked;
    8000174c:	0294c783          	lbu	a5,41(s1)
    if(!oldThread->isBlocked()){
    80001750:	00079663          	bnez	a5,8000175c <_ZN12kernelThread14dispatchThreadEv+0x2c>
        return finished;
    80001754:	02a4c783          	lbu	a5,42(s1)
        if(!oldThread->isFinished()){
    80001758:	02078c63          	beqz	a5,80001790 <_ZN12kernelThread14dispatchThreadEv+0x60>
            oldThread->setReady(true);
            Scheduler::putInScheduler(oldThread);
        }
    }
    running = Scheduler::getFromScheduler();
    8000175c:	00001097          	auipc	ra,0x1
    80001760:	164080e7          	jalr	356(ra) # 800028c0 <_ZN9Scheduler16getFromSchedulerEv>
    80001764:	00050593          	mv	a1,a0
    80001768:	00009797          	auipc	a5,0x9
    8000176c:	baa7bc23          	sd	a0,-1096(a5) # 8000a320 <_ZN12kernelThread7runningE>
    kernelThread::contextSwitch(&oldThread->context, &running->context);
    80001770:	00048513          	mv	a0,s1
    80001774:	00000097          	auipc	ra,0x0
    80001778:	a98080e7          	jalr	-1384(ra) # 8000120c <_ZN12kernelThread13contextSwitchEPNS_7ContextES1_>
};
    8000177c:	01813083          	ld	ra,24(sp)
    80001780:	01013403          	ld	s0,16(sp)
    80001784:	00813483          	ld	s1,8(sp)
    80001788:	02010113          	addi	sp,sp,32
    8000178c:	00008067          	ret
        kernelThread::ready = ready;
    80001790:	00100793          	li	a5,1
    80001794:	02f48423          	sb	a5,40(s1)
            Scheduler::putInScheduler(oldThread);
    80001798:	00048513          	mv	a0,s1
    8000179c:	00001097          	auipc	ra,0x1
    800017a0:	1cc080e7          	jalr	460(ra) # 80002968 <_ZN9Scheduler14putInSchedulerEP12kernelThread>
    800017a4:	fb9ff06f          	j	8000175c <_ZN12kernelThread14dispatchThreadEv+0x2c>

00000000800017a8 <_ZN12kernelThread5yieldEv>:
void kernelThread::yield() {
    800017a8:	ff010113          	addi	sp,sp,-16
    800017ac:	00113423          	sd	ra,8(sp)
    800017b0:	00813023          	sd	s0,0(sp)
    800017b4:	01010413          	addi	s0,sp,16
    Riscv::pushAllRegisters();
    800017b8:	00000097          	auipc	ra,0x0
    800017bc:	958080e7          	jalr	-1704(ra) # 80001110 <_ZN5Riscv16pushAllRegistersEv>
    kernelThread::dispatchThread();
    800017c0:	00000097          	auipc	ra,0x0
    800017c4:	f70080e7          	jalr	-144(ra) # 80001730 <_ZN12kernelThread14dispatchThreadEv>
    Riscv::popAllRegisters();
    800017c8:	00000097          	auipc	ra,0x0
    800017cc:	9c8080e7          	jalr	-1592(ra) # 80001190 <_ZN5Riscv15popAllRegistersEv>
};
    800017d0:	00813083          	ld	ra,8(sp)
    800017d4:	00013403          	ld	s0,0(sp)
    800017d8:	01010113          	addi	sp,sp,16
    800017dc:	00008067          	ret

00000000800017e0 <_ZN12kernelThread10threadExitEv>:

int kernelThread::threadExit() {
    800017e0:	ff010113          	addi	sp,sp,-16
    800017e4:	00113423          	sd	ra,8(sp)
    800017e8:	00813023          	sd	s0,0(sp)
    800017ec:	01010413          	addi	s0,sp,16
    running->setReady(false);
    800017f0:	00009797          	auipc	a5,0x9
    800017f4:	b307b783          	ld	a5,-1232(a5) # 8000a320 <_ZN12kernelThread7runningE>
    800017f8:	02078423          	sb	zero,40(a5)
        kernelThread::finished = finished;
    800017fc:	00100713          	li	a4,1
    80001800:	02e78523          	sb	a4,42(a5)
        kernelThread::blocked = blocked;
    80001804:	020784a3          	sb	zero,41(a5)
    running->setFinished(true);
    running->setBlocked(false);
    kernelThread::dispatchThread();
    80001808:	00000097          	auipc	ra,0x0
    8000180c:	f28080e7          	jalr	-216(ra) # 80001730 <_ZN12kernelThread14dispatchThreadEv>
    return 0;
};
    80001810:	00000513          	li	a0,0
    80001814:	00813083          	ld	ra,8(sp)
    80001818:	00013403          	ld	s0,0(sp)
    8000181c:	01010113          	addi	sp,sp,16
    80001820:	00008067          	ret

0000000080001824 <_ZN12kernelThread12deleteThreadEPS_>:

int kernelThread::deleteThread(kernelThread *handle) {
    80001824:	fe010113          	addi	sp,sp,-32
    80001828:	00113c23          	sd	ra,24(sp)
    8000182c:	00813823          	sd	s0,16(sp)
    80001830:	00913423          	sd	s1,8(sp)
    80001834:	02010413          	addi	s0,sp,32
    80001838:	00050493          	mv	s1,a0
    kernelThread::threadExit();
    8000183c:	00000097          	auipc	ra,0x0
    80001840:	fa4080e7          	jalr	-92(ra) # 800017e0 <_ZN12kernelThread10threadExitEv>
    delete handle;
    80001844:	02048063          	beqz	s1,80001864 <_ZN12kernelThread12deleteThreadEPS_+0x40>
        delete stack;
    80001848:	0104b503          	ld	a0,16(s1)
    8000184c:	00050663          	beqz	a0,80001858 <_ZN12kernelThread12deleteThreadEPS_+0x34>
    80001850:	00000097          	auipc	ra,0x0
    80001854:	7b0080e7          	jalr	1968(ra) # 80002000 <_ZdlPv>
    80001858:	00048513          	mv	a0,s1
    8000185c:	00000097          	auipc	ra,0x0
    80001860:	7a4080e7          	jalr	1956(ra) # 80002000 <_ZdlPv>
    return 0;
};
    80001864:	00000513          	li	a0,0
    80001868:	01813083          	ld	ra,24(sp)
    8000186c:	01013403          	ld	s0,16(sp)
    80001870:	00813483          	ld	s1,8(sp)
    80001874:	02010113          	addi	sp,sp,32
    80001878:	00008067          	ret

000000008000187c <_ZN12kernelThread11startThreadEPS_>:

int kernelThread::startThread(kernelThread *handle) {
    8000187c:	ff010113          	addi	sp,sp,-16
    80001880:	00813423          	sd	s0,8(sp)
    80001884:	01010413          	addi	s0,sp,16
        return finished;
    80001888:	02a54783          	lbu	a5,42(a0)
    if(handle->isFinished()){
    8000188c:	02079063          	bnez	a5,800018ac <_ZN12kernelThread11startThreadEPS_+0x30>
        kernelThread::blocked = blocked;
    80001890:	020504a3          	sb	zero,41(a0)
        kernelThread::ready = ready;
    80001894:	00100793          	li	a5,1
    80001898:	02f50423          	sb	a5,40(a0)
        return -1;
    }else{
        handle->setBlocked(false);  //IN SEMAPHORE
        handle->setReady(true);
        //Scheduler::putInScheduler(handle);
        return 0;
    8000189c:	00000513          	li	a0,0
    }
    800018a0:	00813403          	ld	s0,8(sp)
    800018a4:	01010113          	addi	sp,sp,16
    800018a8:	00008067          	ret
        return -1;
    800018ac:	fff00513          	li	a0,-1
    800018b0:	ff1ff06f          	j	800018a0 <_ZN12kernelThread11startThreadEPS_+0x24>

00000000800018b4 <_ZN15kernelSemaphore15createSemaphoreEPPS_j>:
#include "../h/kernelSemaphore.hpp"

int kernelSemaphore::createSemaphore(kernelSemaphore** handle, unsigned init){
    800018b4:	fe010113          	addi	sp,sp,-32
    800018b8:	00113c23          	sd	ra,24(sp)
    800018bc:	00813823          	sd	s0,16(sp)
    800018c0:	00913423          	sd	s1,8(sp)
    800018c4:	01213023          	sd	s2,0(sp)
    800018c8:	02010413          	addi	s0,sp,32
    800018cc:	00050493          	mv	s1,a0
    800018d0:	00058913          	mv	s2,a1
    *handle = new kernelSemaphore(init);
    800018d4:	01800513          	li	a0,24
    800018d8:	00001097          	auipc	ra,0x1
    800018dc:	850080e7          	jalr	-1968(ra) # 80002128 <_Znwm>
    Elem* tail;

public:

    List(){
        head = nullptr;
    800018e0:	00053423          	sd	zero,8(a0)
        tail = nullptr;
    800018e4:	00053823          	sd	zero,16(a0)
class kernelSemaphore{

private:

    kernelSemaphore(unsigned init = 1) {
        semValue = (int)init;
    800018e8:	01252023          	sw	s2,0(a0)
    800018ec:	00a4b023          	sd	a0,0(s1)
    if(handle == nullptr) return -1;
    800018f0:	02048063          	beqz	s1,80001910 <_ZN15kernelSemaphore15createSemaphoreEPPS_j+0x5c>
    else return 0;
    800018f4:	00000513          	li	a0,0
};
    800018f8:	01813083          	ld	ra,24(sp)
    800018fc:	01013403          	ld	s0,16(sp)
    80001900:	00813483          	ld	s1,8(sp)
    80001904:	00013903          	ld	s2,0(sp)
    80001908:	02010113          	addi	sp,sp,32
    8000190c:	00008067          	ret
    if(handle == nullptr) return -1;
    80001910:	fff00513          	li	a0,-1
    80001914:	fe5ff06f          	j	800018f8 <_ZN15kernelSemaphore15createSemaphoreEPPS_j+0x44>

0000000080001918 <_ZN15kernelSemaphore15deleteSemaphoreEPS_>:

int kernelSemaphore::deleteSemaphore(kernelSemaphore *handle){
    80001918:	fd010113          	addi	sp,sp,-48
    8000191c:	02113423          	sd	ra,40(sp)
    80001920:	02813023          	sd	s0,32(sp)
    80001924:	00913c23          	sd	s1,24(sp)
    80001928:	01213823          	sd	s2,16(sp)
    8000192c:	01313423          	sd	s3,8(sp)
    80001930:	03010413          	addi	s0,sp,48
    80001934:	00050493          	mv	s1,a0
    if(handle == nullptr){
    80001938:	06051463          	bnez	a0,800019a0 <_ZN15kernelSemaphore15deleteSemaphoreEPS_+0x88>
        return -1;
    8000193c:	fff00513          	li	a0,-1
    80001940:	0bc0006f          	j	800019fc <_ZN15kernelSemaphore15deleteSemaphoreEPS_+0xe4>
    T* removeFirst(){
        if(head == nullptr) return nullptr;
        Elem *elem = head;
        head = head->next;
        if(head == nullptr){
            tail = nullptr;
    80001944:	0004b823          	sd	zero,16(s1)
    80001948:	0740006f          	j	800019bc <_ZN15kernelSemaphore15deleteSemaphoreEPS_+0xa4>

    MemoryAllocator(const MemoryAllocator&) = delete;
    MemoryAllocator& operator=(const MemoryAllocator&) = delete;

    static MemoryAllocator& getInstance(){
        static MemoryAllocator instance;
    8000194c:	00009517          	auipc	a0,0x9
    80001950:	9e450513          	addi	a0,a0,-1564 # 8000a330 <_ZZN15MemoryAllocator11getInstanceEvE8instance>
    80001954:	00000097          	auipc	ra,0x0
    80001958:	3ac080e7          	jalr	940(ra) # 80001d00 <_ZN15MemoryAllocatorC1Ev>
    8000195c:	00100793          	li	a5,1
    80001960:	00009717          	auipc	a4,0x9
    80001964:	9cf70423          	sb	a5,-1592(a4) # 8000a328 <_ZGVZN15MemoryAllocator11getInstanceEvE8instance>
        }
        T *ret = elem->data;
        //delete elem;
        MemoryAllocator::getInstance().mem_free(elem);
    80001968:	00090593          	mv	a1,s2
    8000196c:	00009517          	auipc	a0,0x9
    80001970:	9c450513          	addi	a0,a0,-1596 # 8000a330 <_ZZN15MemoryAllocator11getInstanceEvE8instance>
    80001974:	00000097          	auipc	ra,0x0
    80001978:	538080e7          	jalr	1336(ra) # 80001eac <_ZN15MemoryAllocator8mem_freeEPv>
        kernelThread::blocked = blocked;
    8000197c:	020984a3          	sb	zero,41(s3)
        kernelThread::ready = ready;
    80001980:	00100793          	li	a5,1
    80001984:	02f98423          	sb	a5,40(s3)
    while(handle->semValue < 0){
        kernelThread *blocked = handle->blockedThreads.removeFirst();
        //blocked->startThread(blocked);
        blocked->setBlocked(false);
        blocked->setReady(true);
        Scheduler::putInScheduler(blocked);
    80001988:	00098513          	mv	a0,s3
    8000198c:	00001097          	auipc	ra,0x1
    80001990:	fdc080e7          	jalr	-36(ra) # 80002968 <_ZN9Scheduler14putInSchedulerEP12kernelThread>
        handle->semValue++;
    80001994:	0004a783          	lw	a5,0(s1)
    80001998:	0017879b          	addiw	a5,a5,1
    8000199c:	00f4a023          	sw	a5,0(s1)
    while(handle->semValue < 0){
    800019a0:	0004a783          	lw	a5,0(s1)
    800019a4:	0207da63          	bgez	a5,800019d8 <_ZN15kernelSemaphore15deleteSemaphoreEPS_+0xc0>
        if(head == nullptr) return nullptr;
    800019a8:	0084b903          	ld	s2,8(s1)
    800019ac:	02090263          	beqz	s2,800019d0 <_ZN15kernelSemaphore15deleteSemaphoreEPS_+0xb8>
        head = head->next;
    800019b0:	00893783          	ld	a5,8(s2)
    800019b4:	00f4b423          	sd	a5,8(s1)
        if(head == nullptr){
    800019b8:	f80786e3          	beqz	a5,80001944 <_ZN15kernelSemaphore15deleteSemaphoreEPS_+0x2c>
        T *ret = elem->data;
    800019bc:	00093983          	ld	s3,0(s2)
    800019c0:	00009797          	auipc	a5,0x9
    800019c4:	9687c783          	lbu	a5,-1688(a5) # 8000a328 <_ZGVZN15MemoryAllocator11getInstanceEvE8instance>
    800019c8:	fa0790e3          	bnez	a5,80001968 <_ZN15kernelSemaphore15deleteSemaphoreEPS_+0x50>
    800019cc:	f81ff06f          	j	8000194c <_ZN15kernelSemaphore15deleteSemaphoreEPS_+0x34>
        if(head == nullptr) return nullptr;
    800019d0:	00090993          	mv	s3,s2
    800019d4:	fa9ff06f          	j	8000197c <_ZN15kernelSemaphore15deleteSemaphoreEPS_+0x64>
    800019d8:	00009797          	auipc	a5,0x9
    800019dc:	9507c783          	lbu	a5,-1712(a5) # 8000a328 <_ZGVZN15MemoryAllocator11getInstanceEvE8instance>
    800019e0:	02078c63          	beqz	a5,80001a18 <_ZN15kernelSemaphore15deleteSemaphoreEPS_+0x100>
    }

    MemoryAllocator::getInstance().mem_free(handle);
    800019e4:	00048593          	mv	a1,s1
    800019e8:	00009517          	auipc	a0,0x9
    800019ec:	94850513          	addi	a0,a0,-1720 # 8000a330 <_ZZN15MemoryAllocator11getInstanceEvE8instance>
    800019f0:	00000097          	auipc	ra,0x0
    800019f4:	4bc080e7          	jalr	1212(ra) # 80001eac <_ZN15MemoryAllocator8mem_freeEPv>

    return 0;
    800019f8:	00000513          	li	a0,0
};
    800019fc:	02813083          	ld	ra,40(sp)
    80001a00:	02013403          	ld	s0,32(sp)
    80001a04:	01813483          	ld	s1,24(sp)
    80001a08:	01013903          	ld	s2,16(sp)
    80001a0c:	00813983          	ld	s3,8(sp)
    80001a10:	03010113          	addi	sp,sp,48
    80001a14:	00008067          	ret
    80001a18:	00009517          	auipc	a0,0x9
    80001a1c:	91850513          	addi	a0,a0,-1768 # 8000a330 <_ZZN15MemoryAllocator11getInstanceEvE8instance>
    80001a20:	00000097          	auipc	ra,0x0
    80001a24:	2e0080e7          	jalr	736(ra) # 80001d00 <_ZN15MemoryAllocatorC1Ev>
    80001a28:	00100793          	li	a5,1
    80001a2c:	00009717          	auipc	a4,0x9
    80001a30:	8ef70e23          	sb	a5,-1796(a4) # 8000a328 <_ZGVZN15MemoryAllocator11getInstanceEvE8instance>
    80001a34:	fb1ff06f          	j	800019e4 <_ZN15kernelSemaphore15deleteSemaphoreEPS_+0xcc>

0000000080001a38 <_ZN15kernelSemaphore6signalEv>:

int kernelSemaphore::signal(){
    ++semValue;
    80001a38:	00052783          	lw	a5,0(a0)
    80001a3c:	0017879b          	addiw	a5,a5,1
    80001a40:	0007871b          	sext.w	a4,a5
    80001a44:	00f52023          	sw	a5,0(a0)
    if(semValue <= 0){
    80001a48:	00e05663          	blez	a4,80001a54 <_ZN15kernelSemaphore6signalEv+0x1c>
        //blocked->startThread(blocked);
        blocked->setBlocked(false);
        blocked->setReady(true);
        Scheduler::putInScheduler(blocked);
    }
    return 0;
    80001a4c:	00000513          	li	a0,0
};
    80001a50:	00008067          	ret
int kernelSemaphore::signal(){
    80001a54:	fe010113          	addi	sp,sp,-32
    80001a58:	00113c23          	sd	ra,24(sp)
    80001a5c:	00813823          	sd	s0,16(sp)
    80001a60:	00913423          	sd	s1,8(sp)
    80001a64:	01213023          	sd	s2,0(sp)
    80001a68:	02010413          	addi	s0,sp,32
    80001a6c:	00853903          	ld	s2,8(a0)
    80001a70:	08090a63          	beqz	s2,80001b04 <_ZN15kernelSemaphore6signalEv+0xcc>
        head = head->next;
    80001a74:	00893783          	ld	a5,8(s2)
    80001a78:	00f53423          	sd	a5,8(a0)
        if(head == nullptr){
    80001a7c:	06078063          	beqz	a5,80001adc <_ZN15kernelSemaphore6signalEv+0xa4>
        T *ret = elem->data;
    80001a80:	00093483          	ld	s1,0(s2)
    80001a84:	00009797          	auipc	a5,0x9
    80001a88:	8a47c783          	lbu	a5,-1884(a5) # 8000a328 <_ZGVZN15MemoryAllocator11getInstanceEvE8instance>
    80001a8c:	04078c63          	beqz	a5,80001ae4 <_ZN15kernelSemaphore6signalEv+0xac>
        MemoryAllocator::getInstance().mem_free(elem);
    80001a90:	00090593          	mv	a1,s2
    80001a94:	00009517          	auipc	a0,0x9
    80001a98:	89c50513          	addi	a0,a0,-1892 # 8000a330 <_ZZN15MemoryAllocator11getInstanceEvE8instance>
    80001a9c:	00000097          	auipc	ra,0x0
    80001aa0:	410080e7          	jalr	1040(ra) # 80001eac <_ZN15MemoryAllocator8mem_freeEPv>
        if(blocked == nullptr) return -1;
    80001aa4:	06048463          	beqz	s1,80001b0c <_ZN15kernelSemaphore6signalEv+0xd4>
        kernelThread::blocked = blocked;
    80001aa8:	020484a3          	sb	zero,41(s1)
        kernelThread::ready = ready;
    80001aac:	00100793          	li	a5,1
    80001ab0:	02f48423          	sb	a5,40(s1)
        Scheduler::putInScheduler(blocked);
    80001ab4:	00048513          	mv	a0,s1
    80001ab8:	00001097          	auipc	ra,0x1
    80001abc:	eb0080e7          	jalr	-336(ra) # 80002968 <_ZN9Scheduler14putInSchedulerEP12kernelThread>
    return 0;
    80001ac0:	00000513          	li	a0,0
};
    80001ac4:	01813083          	ld	ra,24(sp)
    80001ac8:	01013403          	ld	s0,16(sp)
    80001acc:	00813483          	ld	s1,8(sp)
    80001ad0:	00013903          	ld	s2,0(sp)
    80001ad4:	02010113          	addi	sp,sp,32
    80001ad8:	00008067          	ret
            tail = nullptr;
    80001adc:	00053823          	sd	zero,16(a0)
    80001ae0:	fa1ff06f          	j	80001a80 <_ZN15kernelSemaphore6signalEv+0x48>
    80001ae4:	00009517          	auipc	a0,0x9
    80001ae8:	84c50513          	addi	a0,a0,-1972 # 8000a330 <_ZZN15MemoryAllocator11getInstanceEvE8instance>
    80001aec:	00000097          	auipc	ra,0x0
    80001af0:	214080e7          	jalr	532(ra) # 80001d00 <_ZN15MemoryAllocatorC1Ev>
    80001af4:	00100793          	li	a5,1
    80001af8:	00009717          	auipc	a4,0x9
    80001afc:	82f70823          	sb	a5,-2000(a4) # 8000a328 <_ZGVZN15MemoryAllocator11getInstanceEvE8instance>
    80001b00:	f91ff06f          	j	80001a90 <_ZN15kernelSemaphore6signalEv+0x58>
        if(head == nullptr) return nullptr;
    80001b04:	00090493          	mv	s1,s2
    80001b08:	f9dff06f          	j	80001aa4 <_ZN15kernelSemaphore6signalEv+0x6c>
        if(blocked == nullptr) return -1;
    80001b0c:	fff00513          	li	a0,-1
    80001b10:	fb5ff06f          	j	80001ac4 <_ZN15kernelSemaphore6signalEv+0x8c>

0000000080001b14 <_ZN15kernelSemaphore4waitEv>:

int kernelSemaphore::wait(){
    this->semValue--;
    80001b14:	00052783          	lw	a5,0(a0)
    80001b18:	fff7879b          	addiw	a5,a5,-1
    80001b1c:	00f52023          	sw	a5,0(a0)
    if(semValue < 0){
    80001b20:	02079713          	slli	a4,a5,0x20
    80001b24:	00074663          	bltz	a4,80001b30 <_ZN15kernelSemaphore4waitEv+0x1c>
        kernelThread::contextSwitch(&current->context, &kernelThread::running->context);
        */
        kernelThread::dispatchThread();
    }
    return 0;
};
    80001b28:	00000513          	li	a0,0
    80001b2c:	00008067          	ret
int kernelSemaphore::wait(){
    80001b30:	fd010113          	addi	sp,sp,-48
    80001b34:	02113423          	sd	ra,40(sp)
    80001b38:	02813023          	sd	s0,32(sp)
    80001b3c:	00913c23          	sd	s1,24(sp)
    80001b40:	01213823          	sd	s2,16(sp)
    80001b44:	01313423          	sd	s3,8(sp)
    80001b48:	03010413          	addi	s0,sp,48
    80001b4c:	00050493          	mv	s1,a0
        kernelThread::running->setReady(false);
    80001b50:	00008797          	auipc	a5,0x8
    80001b54:	7687b783          	ld	a5,1896(a5) # 8000a2b8 <_GLOBAL_OFFSET_TABLE_+0x18>
    80001b58:	0007b903          	ld	s2,0(a5)
    80001b5c:	02090423          	sb	zero,40(s2)
        kernelThread::blocked = blocked;
    80001b60:	00100793          	li	a5,1
    80001b64:	02f904a3          	sb	a5,41(s2)
        blockedThreads.addLast(kernelThread::running);
    80001b68:	00850993          	addi	s3,a0,8
    80001b6c:	00008797          	auipc	a5,0x8
    80001b70:	7bc7c783          	lbu	a5,1980(a5) # 8000a328 <_ZGVZN15MemoryAllocator11getInstanceEvE8instance>
    80001b74:	04078c63          	beqz	a5,80001bcc <_ZN15kernelSemaphore4waitEv+0xb8>
        Elem *newElem = (Elem*)(MemoryAllocator::getInstance().mem_alloc(size));
    80001b78:	00100593          	li	a1,1
    80001b7c:	00008517          	auipc	a0,0x8
    80001b80:	7b450513          	addi	a0,a0,1972 # 8000a330 <_ZZN15MemoryAllocator11getInstanceEvE8instance>
    80001b84:	00000097          	auipc	ra,0x0
    80001b88:	1d8080e7          	jalr	472(ra) # 80001d5c <_ZN15MemoryAllocator9mem_allocEm>
        newElem->next = nullptr;
    80001b8c:	00053423          	sd	zero,8(a0)
        newElem->data = data;
    80001b90:	01253023          	sd	s2,0(a0)
        if(tail == nullptr){
    80001b94:	0089b783          	ld	a5,8(s3)
    80001b98:	04078a63          	beqz	a5,80001bec <_ZN15kernelSemaphore4waitEv+0xd8>
            tail->next = newElem;
    80001b9c:	00a7b423          	sd	a0,8(a5)
            tail = newElem;
    80001ba0:	00a9b423          	sd	a0,8(s3)
        kernelThread::dispatchThread();
    80001ba4:	00000097          	auipc	ra,0x0
    80001ba8:	b8c080e7          	jalr	-1140(ra) # 80001730 <_ZN12kernelThread14dispatchThreadEv>
};
    80001bac:	00000513          	li	a0,0
    80001bb0:	02813083          	ld	ra,40(sp)
    80001bb4:	02013403          	ld	s0,32(sp)
    80001bb8:	01813483          	ld	s1,24(sp)
    80001bbc:	01013903          	ld	s2,16(sp)
    80001bc0:	00813983          	ld	s3,8(sp)
    80001bc4:	03010113          	addi	sp,sp,48
    80001bc8:	00008067          	ret
    80001bcc:	00008517          	auipc	a0,0x8
    80001bd0:	76450513          	addi	a0,a0,1892 # 8000a330 <_ZZN15MemoryAllocator11getInstanceEvE8instance>
    80001bd4:	00000097          	auipc	ra,0x0
    80001bd8:	12c080e7          	jalr	300(ra) # 80001d00 <_ZN15MemoryAllocatorC1Ev>
    80001bdc:	00100793          	li	a5,1
    80001be0:	00008717          	auipc	a4,0x8
    80001be4:	74f70423          	sb	a5,1864(a4) # 8000a328 <_ZGVZN15MemoryAllocator11getInstanceEvE8instance>
    80001be8:	f91ff06f          	j	80001b78 <_ZN15kernelSemaphore4waitEv+0x64>
            tail = newElem;
    80001bec:	00a9b423          	sd	a0,8(s3)
            head = newElem;
    80001bf0:	00a4b423          	sd	a0,8(s1)
    80001bf4:	fb1ff06f          	j	80001ba4 <_ZN15kernelSemaphore4waitEv+0x90>

0000000080001bf8 <_ZN15kernelSemaphore7tryWaitEv>:

int kernelSemaphore::tryWait(){
    80001bf8:	ff010113          	addi	sp,sp,-16
    80001bfc:	00813423          	sd	s0,8(sp)
    80001c00:	01010413          	addi	s0,sp,16
    if(semValue >= 1){
    80001c04:	00052783          	lw	a5,0(a0)
    80001c08:	00f05e63          	blez	a5,80001c24 <_ZN15kernelSemaphore7tryWaitEv+0x2c>
        --semValue;
    80001c0c:	fff7879b          	addiw	a5,a5,-1
    80001c10:	00f52023          	sw	a5,0(a0)
        return 1;
    80001c14:	00100513          	li	a0,1
        //SUCCESS
    }else{
        return 0;
        //ALREADY TAKEN
    }
    80001c18:	00813403          	ld	s0,8(sp)
    80001c1c:	01010113          	addi	sp,sp,16
    80001c20:	00008067          	ret
        return 0;
    80001c24:	00000513          	li	a0,0
    80001c28:	ff1ff06f          	j	80001c18 <_ZN15kernelSemaphore7tryWaitEv+0x20>

0000000080001c2c <_Z15userMainWrapperPv>:
#include "../h/riscv.hpp"
//#include "../javniTestovi/userMain.cpp"

extern void userMain();

void userMainWrapper(void *arg){
    80001c2c:	ff010113          	addi	sp,sp,-16
    80001c30:	00113423          	sd	ra,8(sp)
    80001c34:	00813023          	sd	s0,0(sp)
    80001c38:	01010413          	addi	s0,sp,16
    userMain();
    80001c3c:	00003097          	auipc	ra,0x3
    80001c40:	1f0080e7          	jalr	496(ra) # 80004e2c <_Z8userMainv>
}
    80001c44:	00813083          	ld	ra,8(sp)
    80001c48:	00013403          	ld	s0,0(sp)
    80001c4c:	01010113          	addi	sp,sp,16
    80001c50:	00008067          	ret

0000000080001c54 <main>:

int main () {
    80001c54:	fe010113          	addi	sp,sp,-32
    80001c58:	00113c23          	sd	ra,24(sp)
    80001c5c:	00813823          	sd	s0,16(sp)
    80001c60:	02010413          	addi	s0,sp,32

    Riscv::w_stvec((uint64) &Riscv::supervisorTrap);
    80001c64:	00008797          	auipc	a5,0x8
    80001c68:	64c7b783          	ld	a5,1612(a5) # 8000a2b0 <_GLOBAL_OFFSET_TABLE_+0x10>
    __asm__ volatile ("csrw stvec, %[stvec]" :: [stvec] "r" (stvec));
    80001c6c:	10579073          	csrw	stvec,a5
    __asm__ volatile ("csrs sstatus, %[mask]" :: [mask] "r" (mask));
    80001c70:	00200793          	li	a5,2
    80001c74:	1007a073          	csrs	sstatus,a5
    Riscv::ms_sstatus(Riscv::SSTATUS_SIE);

    //MAIN nit
    kernelThread* mainThread;
    kernelThread::createThread(
    80001c78:	00000693          	li	a3,0
    80001c7c:	00000613          	li	a2,0
    80001c80:	00000593          	li	a1,0
    80001c84:	fe840513          	addi	a0,s0,-24
    80001c88:	00000097          	auipc	ra,0x0
    80001c8c:	9ac080e7          	jalr	-1620(ra) # 80001634 <_ZN12kernelThread12createThreadEPPS_PFvPvES2_Pm>
            &mainThread,
            nullptr,
            nullptr,
            nullptr);
    kernelThread::running = mainThread;
    80001c90:	00008797          	auipc	a5,0x8
    80001c94:	6287b783          	ld	a5,1576(a5) # 8000a2b8 <_GLOBAL_OFFSET_TABLE_+0x18>
    80001c98:	fe843703          	ld	a4,-24(s0)
    80001c9c:	00e7b023          	sd	a4,0(a5)
            &userMainThread,
            userMainWrapper,
            nullptr,
            stack_ptr);
*/
    Riscv::ecallWithoutArguments(0x50);
    80001ca0:	05000513          	li	a0,80
    80001ca4:	00001097          	auipc	ra,0x1
    80001ca8:	83c080e7          	jalr	-1988(ra) # 800024e0 <_ZN5Riscv21ecallWithoutArgumentsEm>

    kernelThread* userMainThread;
    thread_create(&userMainThread,userMainWrapper,nullptr);
    80001cac:	00000613          	li	a2,0
    80001cb0:	00000597          	auipc	a1,0x0
    80001cb4:	f7c58593          	addi	a1,a1,-132 # 80001c2c <_Z15userMainWrapperPv>
    80001cb8:	fe040513          	addi	a0,s0,-32
    80001cbc:	fffff097          	auipc	ra,0xfffff
    80001cc0:	610080e7          	jalr	1552(ra) # 800012cc <_Z13thread_createPP12kernelThreadPFvPvES2_>


    while(!userMainThread->isFinished()){
    80001cc4:	fe043783          	ld	a5,-32(s0)
        return finished;
    80001cc8:	02a7c783          	lbu	a5,42(a5)
    80001ccc:	00079863          	bnez	a5,80001cdc <main+0x88>
        //printStr("\nPonovo u main-u\n\n");
        thread_dispatch();
    80001cd0:	fffff097          	auipc	ra,0xfffff
    80001cd4:	6c0080e7          	jalr	1728(ra) # 80001390 <_Z15thread_dispatchv>
    80001cd8:	fedff06f          	j	80001cc4 <main+0x70>
    }
    
    printStr("Dosao do kraja!\n");
    80001cdc:	00006517          	auipc	a0,0x6
    80001ce0:	34450513          	addi	a0,a0,836 # 80008020 <CONSOLE_STATUS+0x10>
    80001ce4:	00000097          	auipc	ra,0x0
    80001ce8:	698080e7          	jalr	1688(ra) # 8000237c <_Z8printStrPKc>

    return 0;

};
    80001cec:	00000513          	li	a0,0
    80001cf0:	01813083          	ld	ra,24(sp)
    80001cf4:	01013403          	ld	s0,16(sp)
    80001cf8:	02010113          	addi	sp,sp,32
    80001cfc:	00008067          	ret

0000000080001d00 <_ZN15MemoryAllocatorC1Ev>:
#include "../h/memoryAllocator.hpp"


MemoryAllocator::MemoryAllocator(){
    80001d00:	ff010113          	addi	sp,sp,-16
    80001d04:	00813423          	sd	s0,8(sp)
    80001d08:	01010413          	addi	s0,sp,16
    freeMemoryHead = (FreeMemoryBlock*)HEAP_START_ADDR;
    80001d0c:	00008797          	auipc	a5,0x8
    80001d10:	59c7b783          	ld	a5,1436(a5) # 8000a2a8 <_GLOBAL_OFFSET_TABLE_+0x8>
    80001d14:	0007b703          	ld	a4,0(a5)
    80001d18:	00e53023          	sd	a4,0(a0)
    freeMemoryHead->size = (size_t)(HEAP_END_ADDR) - (size_t)(HEAP_START_ADDR) - sizeof(MemoryAllocator);
    80001d1c:	00008797          	auipc	a5,0x8
    80001d20:	5ac7b783          	ld	a5,1452(a5) # 8000a2c8 <_GLOBAL_OFFSET_TABLE_+0x28>
    80001d24:	0007b783          	ld	a5,0(a5)
    80001d28:	40e787b3          	sub	a5,a5,a4
    80001d2c:	ff878793          	addi	a5,a5,-8
    80001d30:	00f73823          	sd	a5,16(a4)
    freeMemoryHead->free = true;
    80001d34:	00053783          	ld	a5,0(a0)
    80001d38:	00100713          	li	a4,1
    80001d3c:	00e78c23          	sb	a4,24(a5)
    freeMemoryHead->next = nullptr;
    80001d40:	00053783          	ld	a5,0(a0)
    80001d44:	0007b023          	sd	zero,0(a5)
    freeMemoryHead->prev = nullptr;
    80001d48:	00053783          	ld	a5,0(a0)
    80001d4c:	0007b423          	sd	zero,8(a5)
};
    80001d50:	00813403          	ld	s0,8(sp)
    80001d54:	01010113          	addi	sp,sp,16
    80001d58:	00008067          	ret

0000000080001d5c <_ZN15MemoryAllocator9mem_allocEm>:

void *MemoryAllocator::mem_alloc(size_t size){
    80001d5c:	ff010113          	addi	sp,sp,-16
    80001d60:	00813423          	sd	s0,8(sp)
    80001d64:	01010413          	addi	s0,sp,16
    
    //prebaci u velicinu u bajtovima
    size_t sizeInBytes = size * MEM_BLOCK_SIZE;
    80001d68:	00659593          	slli	a1,a1,0x6
    if(size % MEM_BLOCK_SIZE != 0){
        sizeInBytes += MEM_BLOCK_SIZE;
    }
*/
    //provera
    if(sizeInBytes == 0){
    80001d6c:	0a058a63          	beqz	a1,80001e20 <_ZN15MemoryAllocator9mem_allocEm+0xc4>
        return nullptr;
    }

    if(sizeInBytes > (size_t)(HEAP_END_ADDR) - ((size_t)(HEAP_START_ADDR) + sizeof(MemoryAllocator))){
    80001d70:	00008797          	auipc	a5,0x8
    80001d74:	5587b783          	ld	a5,1368(a5) # 8000a2c8 <_GLOBAL_OFFSET_TABLE_+0x28>
    80001d78:	0007b783          	ld	a5,0(a5)
    80001d7c:	00008717          	auipc	a4,0x8
    80001d80:	52c73703          	ld	a4,1324(a4) # 8000a2a8 <_GLOBAL_OFFSET_TABLE_+0x8>
    80001d84:	00073703          	ld	a4,0(a4)
    80001d88:	40e787b3          	sub	a5,a5,a4
    80001d8c:	ff878793          	addi	a5,a5,-8
    80001d90:	08b7ec63          	bltu	a5,a1,80001e28 <_ZN15MemoryAllocator9mem_allocEm+0xcc>
        return nullptr;
    }

    FreeMemoryBlock* current = freeMemoryHead;
    80001d94:	00053503          	ld	a0,0(a0)
    80001d98:	0080006f          	j	80001da0 <_ZN15MemoryAllocator9mem_allocEm+0x44>

    while(current){
        if(current->size >= sizeInBytes && current->free == true){
            break;
        }else{
            current = current->next;
    80001d9c:	00053503          	ld	a0,0(a0)
    while(current){
    80001da0:	00050a63          	beqz	a0,80001db4 <_ZN15MemoryAllocator9mem_allocEm+0x58>
        if(current->size >= sizeInBytes && current->free == true){
    80001da4:	01053783          	ld	a5,16(a0)
    80001da8:	feb7eae3          	bltu	a5,a1,80001d9c <_ZN15MemoryAllocator9mem_allocEm+0x40>
    80001dac:	01854783          	lbu	a5,24(a0)
    80001db0:	fe0786e3          	beqz	a5,80001d9c <_ZN15MemoryAllocator9mem_allocEm+0x40>
        }
        
    }

    if(current == nullptr) return nullptr;
    80001db4:	00050c63          	beqz	a0,80001dcc <_ZN15MemoryAllocator9mem_allocEm+0x70>

    //proveri da li je zauzet ceo blok
    if(current->size <= sizeInBytes + MEM_BLOCK_SIZE + sizeof(FreeMemoryBlock)){
    80001db8:	01053703          	ld	a4,16(a0)
    80001dbc:	06058793          	addi	a5,a1,96
    80001dc0:	00e7ec63          	bltu	a5,a4,80001dd8 <_ZN15MemoryAllocator9mem_allocEm+0x7c>
        //JESTE ZAUZETO CELO
        current->free = false;
    80001dc4:	00050c23          	sb	zero,24(a0)
        current->next = newFreeBlock;
        current->size = sizeInBytes;
        current->free = false;
    }

    return (void*)((size_t)current + sizeof(FreeMemoryBlock));
    80001dc8:	02050513          	addi	a0,a0,32
};
    80001dcc:	00813403          	ld	s0,8(sp)
    80001dd0:	01010113          	addi	sp,sp,16
    80001dd4:	00008067          	ret
        FreeMemoryBlock* newFreeBlock = (FreeMemoryBlock*)((size_t)current + sizeInBytes + sizeof(FreeMemoryBlock));
    80001dd8:	00b507b3          	add	a5,a0,a1
    80001ddc:	02078713          	addi	a4,a5,32
        newFreeBlock->next = current->next;
    80001de0:	00053683          	ld	a3,0(a0)
    80001de4:	02d7b023          	sd	a3,32(a5)
        newFreeBlock->prev = current;
    80001de8:	00a73423          	sd	a0,8(a4)
        newFreeBlock->free = true;
    80001dec:	00100793          	li	a5,1
    80001df0:	00f70c23          	sb	a5,24(a4)
        newFreeBlock->size = current->size - sizeInBytes - sizeof(FreeMemoryBlock);
    80001df4:	01053783          	ld	a5,16(a0)
    80001df8:	40b787b3          	sub	a5,a5,a1
    80001dfc:	fe078793          	addi	a5,a5,-32
    80001e00:	00f73823          	sd	a5,16(a4)
        if(current->next){
    80001e04:	00053783          	ld	a5,0(a0)
    80001e08:	00078463          	beqz	a5,80001e10 <_ZN15MemoryAllocator9mem_allocEm+0xb4>
            newFreeBlock->next->prev = newFreeBlock;
    80001e0c:	00e6b423          	sd	a4,8(a3)
        current->next = newFreeBlock;
    80001e10:	00e53023          	sd	a4,0(a0)
        current->size = sizeInBytes;
    80001e14:	00b53823          	sd	a1,16(a0)
        current->free = false;
    80001e18:	00050c23          	sb	zero,24(a0)
    80001e1c:	fadff06f          	j	80001dc8 <_ZN15MemoryAllocator9mem_allocEm+0x6c>
        return nullptr;
    80001e20:	00000513          	li	a0,0
    80001e24:	fa9ff06f          	j	80001dcc <_ZN15MemoryAllocator9mem_allocEm+0x70>
        return nullptr;
    80001e28:	00000513          	li	a0,0
    80001e2c:	fa1ff06f          	j	80001dcc <_ZN15MemoryAllocator9mem_allocEm+0x70>

0000000080001e30 <_ZN15MemoryAllocator9tryToJoinEPNS_15FreeMemoryBlockE>:

//  K2 sempte,bar 2015
// mem_free + tryToJoin

int MemoryAllocator::tryToJoin(FreeMemoryBlock* freeBlock){
    80001e30:	ff010113          	addi	sp,sp,-16
    80001e34:	00813423          	sd	s0,8(sp)
    80001e38:	01010413          	addi	s0,sp,16
    if(freeBlock->free == false){
    80001e3c:	0185c783          	lbu	a5,24(a1)
    80001e40:	04078663          	beqz	a5,80001e8c <_ZN15MemoryAllocator9tryToJoinEPNS_15FreeMemoryBlockE+0x5c>
        return 0;
    }
    if(freeBlock == nullptr){
    80001e44:	04058863          	beqz	a1,80001e94 <_ZN15MemoryAllocator9tryToJoinEPNS_15FreeMemoryBlockE+0x64>
        return 0;
    }
    if(freeBlock->next == nullptr){
    80001e48:	0005b703          	ld	a4,0(a1)
    80001e4c:	04070863          	beqz	a4,80001e9c <_ZN15MemoryAllocator9tryToJoinEPNS_15FreeMemoryBlockE+0x6c>
        return 0;
    }
    if(freeBlock->next->free == true){
    80001e50:	01874783          	lbu	a5,24(a4)
    80001e54:	04078863          	beqz	a5,80001ea4 <_ZN15MemoryAllocator9tryToJoinEPNS_15FreeMemoryBlockE+0x74>
        freeBlock->size += freeBlock->next->size + sizeof(FreeMemoryBlock);
    80001e58:	01073783          	ld	a5,16(a4)
    80001e5c:	0105b683          	ld	a3,16(a1)
    80001e60:	00d787b3          	add	a5,a5,a3
    80001e64:	02078793          	addi	a5,a5,32
    80001e68:	00f5b823          	sd	a5,16(a1)
        freeBlock->next = freeBlock->next->next;
    80001e6c:	00073783          	ld	a5,0(a4)
    80001e70:	00f5b023          	sd	a5,0(a1)
        if(freeBlock->next){
    80001e74:	00078463          	beqz	a5,80001e7c <_ZN15MemoryAllocator9tryToJoinEPNS_15FreeMemoryBlockE+0x4c>
            freeBlock->next->prev = freeBlock;
    80001e78:	00b7b423          	sd	a1,8(a5)
        }
        //freeBlock->next = nullptr;
        //freeBlock->prev = nullptr;
        return 0;
    80001e7c:	00000513          	li	a0,0
    }
    return -1;
    
};
    80001e80:	00813403          	ld	s0,8(sp)
    80001e84:	01010113          	addi	sp,sp,16
    80001e88:	00008067          	ret
        return 0;
    80001e8c:	00000513          	li	a0,0
    80001e90:	ff1ff06f          	j	80001e80 <_ZN15MemoryAllocator9tryToJoinEPNS_15FreeMemoryBlockE+0x50>
        return 0;
    80001e94:	00000513          	li	a0,0
    80001e98:	fe9ff06f          	j	80001e80 <_ZN15MemoryAllocator9tryToJoinEPNS_15FreeMemoryBlockE+0x50>
        return 0;
    80001e9c:	00000513          	li	a0,0
    80001ea0:	fe1ff06f          	j	80001e80 <_ZN15MemoryAllocator9tryToJoinEPNS_15FreeMemoryBlockE+0x50>
    return -1;
    80001ea4:	fff00513          	li	a0,-1
    80001ea8:	fd9ff06f          	j	80001e80 <_ZN15MemoryAllocator9tryToJoinEPNS_15FreeMemoryBlockE+0x50>

0000000080001eac <_ZN15MemoryAllocator8mem_freeEPv>:


int MemoryAllocator::mem_free(void* ptr){

    //check everything
    if(ptr == nullptr) return -1;
    80001eac:	0c058063          	beqz	a1,80001f6c <_ZN15MemoryAllocator8mem_freeEPv+0xc0>
int MemoryAllocator::mem_free(void* ptr){
    80001eb0:	fe010113          	addi	sp,sp,-32
    80001eb4:	00113c23          	sd	ra,24(sp)
    80001eb8:	00813823          	sd	s0,16(sp)
    80001ebc:	00913423          	sd	s1,8(sp)
    80001ec0:	01213023          	sd	s2,0(sp)
    80001ec4:	02010413          	addi	s0,sp,32
    80001ec8:	00050913          	mv	s2,a0
    if((size_t)ptr > (size_t)HEAP_END_ADDR) return -1;
    80001ecc:	00008717          	auipc	a4,0x8
    80001ed0:	3fc73703          	ld	a4,1020(a4) # 8000a2c8 <_GLOBAL_OFFSET_TABLE_+0x28>
    80001ed4:	00073703          	ld	a4,0(a4)
    80001ed8:	08b76e63          	bltu	a4,a1,80001f74 <_ZN15MemoryAllocator8mem_freeEPv+0xc8>
    if((size_t)ptr < (size_t)HEAP_START_ADDR) return -1;
    80001edc:	00008717          	auipc	a4,0x8
    80001ee0:	3cc73703          	ld	a4,972(a4) # 8000a2a8 <_GLOBAL_OFFSET_TABLE_+0x8>
    80001ee4:	00073703          	ld	a4,0(a4)
    80001ee8:	08e5ea63          	bltu	a1,a4,80001f7c <_ZN15MemoryAllocator8mem_freeEPv+0xd0>
    
    FreeMemoryBlock* addr = (FreeMemoryBlock*)((size_t)ptr - sizeof(FreeMemoryBlock));
    80001eec:	fe058593          	addi	a1,a1,-32

    if(freeMemoryHead == nullptr){
    80001ef0:	00053483          	ld	s1,0(a0)
    80001ef4:	00048a63          	beqz	s1,80001f08 <_ZN15MemoryAllocator8mem_freeEPv+0x5c>
        return 0;
    }

    FreeMemoryBlock* temp = freeMemoryHead;

    while(temp && temp < addr){
    80001ef8:	00048e63          	beqz	s1,80001f14 <_ZN15MemoryAllocator8mem_freeEPv+0x68>
    80001efc:	00b4fc63          	bgeu	s1,a1,80001f14 <_ZN15MemoryAllocator8mem_freeEPv+0x68>
        temp = temp->next;
    80001f00:	0004b483          	ld	s1,0(s1)
    while(temp && temp < addr){
    80001f04:	ff5ff06f          	j	80001ef8 <_ZN15MemoryAllocator8mem_freeEPv+0x4c>
        freeMemoryHead = addr;
    80001f08:	00b53023          	sd	a1,0(a0)
        return 0;
    80001f0c:	00000513          	li	a0,0
    80001f10:	0440006f          	j	80001f54 <_ZN15MemoryAllocator8mem_freeEPv+0xa8>
    }

    if(temp->free == true){
    80001f14:	0184c783          	lbu	a5,24(s1)
    80001f18:	06079663          	bnez	a5,80001f84 <_ZN15MemoryAllocator8mem_freeEPv+0xd8>
        return -1;
    }
    //insert new free mem block after cur;

    temp->free = true;
    80001f1c:	00100793          	li	a5,1
    80001f20:	00f48c23          	sb	a5,24(s1)

    //try to join
    if(temp->next){
    80001f24:	0004b783          	ld	a5,0(s1)
    80001f28:	00078a63          	beqz	a5,80001f3c <_ZN15MemoryAllocator8mem_freeEPv+0x90>
        tryToJoin(temp);
    80001f2c:	00048593          	mv	a1,s1
    80001f30:	00090513          	mv	a0,s2
    80001f34:	00000097          	auipc	ra,0x0
    80001f38:	efc080e7          	jalr	-260(ra) # 80001e30 <_ZN15MemoryAllocator9tryToJoinEPNS_15FreeMemoryBlockE>
    }
    if(temp->prev) {
    80001f3c:	0084b583          	ld	a1,8(s1)
    80001f40:	04058663          	beqz	a1,80001f8c <_ZN15MemoryAllocator8mem_freeEPv+0xe0>
        tryToJoin(temp->prev);
    80001f44:	00090513          	mv	a0,s2
    80001f48:	00000097          	auipc	ra,0x0
    80001f4c:	ee8080e7          	jalr	-280(ra) # 80001e30 <_ZN15MemoryAllocator9tryToJoinEPNS_15FreeMemoryBlockE>
    }

    return 0;
    80001f50:	00000513          	li	a0,0
}
    80001f54:	01813083          	ld	ra,24(sp)
    80001f58:	01013403          	ld	s0,16(sp)
    80001f5c:	00813483          	ld	s1,8(sp)
    80001f60:	00013903          	ld	s2,0(sp)
    80001f64:	02010113          	addi	sp,sp,32
    80001f68:	00008067          	ret
    if(ptr == nullptr) return -1;
    80001f6c:	fff00513          	li	a0,-1
}
    80001f70:	00008067          	ret
    if((size_t)ptr > (size_t)HEAP_END_ADDR) return -1;
    80001f74:	fff00513          	li	a0,-1
    80001f78:	fddff06f          	j	80001f54 <_ZN15MemoryAllocator8mem_freeEPv+0xa8>
    if((size_t)ptr < (size_t)HEAP_START_ADDR) return -1;
    80001f7c:	fff00513          	li	a0,-1
    80001f80:	fd5ff06f          	j	80001f54 <_ZN15MemoryAllocator8mem_freeEPv+0xa8>
        return -1;
    80001f84:	fff00513          	li	a0,-1
    80001f88:	fcdff06f          	j	80001f54 <_ZN15MemoryAllocator8mem_freeEPv+0xa8>
    return 0;
    80001f8c:	00000513          	li	a0,0
    80001f90:	fc5ff06f          	j	80001f54 <_ZN15MemoryAllocator8mem_freeEPv+0xa8>

0000000080001f94 <_ZN6Thread15functionWrapperEPv>:
    thread_start(this->myHandle); //potentially create
    return 0;
};

void Thread::functionWrapper(void *thread) {
    if(thread != nullptr){
    80001f94:	02050863          	beqz	a0,80001fc4 <_ZN6Thread15functionWrapperEPv+0x30>
void Thread::functionWrapper(void *thread) {
    80001f98:	ff010113          	addi	sp,sp,-16
    80001f9c:	00113423          	sd	ra,8(sp)
    80001fa0:	00813023          	sd	s0,0(sp)
    80001fa4:	01010413          	addi	s0,sp,16
        ((Thread*)thread)->run();
    80001fa8:	00053783          	ld	a5,0(a0)
    80001fac:	0107b783          	ld	a5,16(a5)
    80001fb0:	000780e7          	jalr	a5
    }
};
    80001fb4:	00813083          	ld	ra,8(sp)
    80001fb8:	00013403          	ld	s0,0(sp)
    80001fbc:	01010113          	addi	sp,sp,16
    80001fc0:	00008067          	ret
    80001fc4:	00008067          	ret

0000000080001fc8 <_ZN9SemaphoreD1Ev>:
Semaphore::Semaphore(unsigned init){
    this->myHandle = nullptr;
    sem_open(&myHandle, init);
};

Semaphore::~Semaphore(){
    80001fc8:	ff010113          	addi	sp,sp,-16
    80001fcc:	00113423          	sd	ra,8(sp)
    80001fd0:	00813023          	sd	s0,0(sp)
    80001fd4:	01010413          	addi	s0,sp,16
    80001fd8:	00008797          	auipc	a5,0x8
    80001fdc:	18878793          	addi	a5,a5,392 # 8000a160 <_ZTV9Semaphore+0x10>
    80001fe0:	00f53023          	sd	a5,0(a0)
    sem_close(this->myHandle);
    80001fe4:	00853503          	ld	a0,8(a0)
    80001fe8:	fffff097          	auipc	ra,0xfffff
    80001fec:	45c080e7          	jalr	1116(ra) # 80001444 <_Z9sem_closeP15kernelSemaphore>
};
    80001ff0:	00813083          	ld	ra,8(sp)
    80001ff4:	00013403          	ld	s0,0(sp)
    80001ff8:	01010113          	addi	sp,sp,16
    80001ffc:	00008067          	ret

0000000080002000 <_ZdlPv>:
void operator delete(void *p) noexcept {
    80002000:	ff010113          	addi	sp,sp,-16
    80002004:	00113423          	sd	ra,8(sp)
    80002008:	00813023          	sd	s0,0(sp)
    8000200c:	01010413          	addi	s0,sp,16
    mem_free(p);
    80002010:	fffff097          	auipc	ra,0xfffff
    80002014:	27c080e7          	jalr	636(ra) # 8000128c <_Z8mem_freePv>
};
    80002018:	00813083          	ld	ra,8(sp)
    8000201c:	00013403          	ld	s0,0(sp)
    80002020:	01010113          	addi	sp,sp,16
    80002024:	00008067          	ret

0000000080002028 <_ZN6ThreadD1Ev>:
Thread::~Thread(){
    80002028:	fe010113          	addi	sp,sp,-32
    8000202c:	00113c23          	sd	ra,24(sp)
    80002030:	00813823          	sd	s0,16(sp)
    80002034:	00913423          	sd	s1,8(sp)
    80002038:	02010413          	addi	s0,sp,32
    8000203c:	00008797          	auipc	a5,0x8
    80002040:	0fc78793          	addi	a5,a5,252 # 8000a138 <_ZTV6Thread+0x10>
    80002044:	00f53023          	sd	a5,0(a0)
    delete myHandle;
    80002048:	00853483          	ld	s1,8(a0)
    8000204c:	02048063          	beqz	s1,8000206c <_ZN6ThreadD1Ev+0x44>
    static int deleteThread(kernelThread *handle);

    ~kernelThread(){
        //MemoryAllocator::getInstance().mem_free(stack);
        //mem_free(stack);
        delete stack;
    80002050:	0104b503          	ld	a0,16(s1)
    80002054:	00050663          	beqz	a0,80002060 <_ZN6ThreadD1Ev+0x38>
    80002058:	00000097          	auipc	ra,0x0
    8000205c:	fa8080e7          	jalr	-88(ra) # 80002000 <_ZdlPv>
    80002060:	00048513          	mv	a0,s1
    80002064:	00000097          	auipc	ra,0x0
    80002068:	f9c080e7          	jalr	-100(ra) # 80002000 <_ZdlPv>
};
    8000206c:	01813083          	ld	ra,24(sp)
    80002070:	01013403          	ld	s0,16(sp)
    80002074:	00813483          	ld	s1,8(sp)
    80002078:	02010113          	addi	sp,sp,32
    8000207c:	00008067          	ret

0000000080002080 <_ZN6ThreadD0Ev>:
Thread::~Thread(){
    80002080:	fe010113          	addi	sp,sp,-32
    80002084:	00113c23          	sd	ra,24(sp)
    80002088:	00813823          	sd	s0,16(sp)
    8000208c:	00913423          	sd	s1,8(sp)
    80002090:	02010413          	addi	s0,sp,32
    80002094:	00050493          	mv	s1,a0
};
    80002098:	00000097          	auipc	ra,0x0
    8000209c:	f90080e7          	jalr	-112(ra) # 80002028 <_ZN6ThreadD1Ev>
    800020a0:	00048513          	mv	a0,s1
    800020a4:	00000097          	auipc	ra,0x0
    800020a8:	f5c080e7          	jalr	-164(ra) # 80002000 <_ZdlPv>
    800020ac:	01813083          	ld	ra,24(sp)
    800020b0:	01013403          	ld	s0,16(sp)
    800020b4:	00813483          	ld	s1,8(sp)
    800020b8:	02010113          	addi	sp,sp,32
    800020bc:	00008067          	ret

00000000800020c0 <_ZN9SemaphoreD0Ev>:
Semaphore::~Semaphore(){
    800020c0:	fe010113          	addi	sp,sp,-32
    800020c4:	00113c23          	sd	ra,24(sp)
    800020c8:	00813823          	sd	s0,16(sp)
    800020cc:	00913423          	sd	s1,8(sp)
    800020d0:	02010413          	addi	s0,sp,32
    800020d4:	00050493          	mv	s1,a0
};
    800020d8:	00000097          	auipc	ra,0x0
    800020dc:	ef0080e7          	jalr	-272(ra) # 80001fc8 <_ZN9SemaphoreD1Ev>
    800020e0:	00048513          	mv	a0,s1
    800020e4:	00000097          	auipc	ra,0x0
    800020e8:	f1c080e7          	jalr	-228(ra) # 80002000 <_ZdlPv>
    800020ec:	01813083          	ld	ra,24(sp)
    800020f0:	01013403          	ld	s0,16(sp)
    800020f4:	00813483          	ld	s1,8(sp)
    800020f8:	02010113          	addi	sp,sp,32
    800020fc:	00008067          	ret

0000000080002100 <_ZdaPv>:
void operator delete[](void *p) noexcept {
    80002100:	ff010113          	addi	sp,sp,-16
    80002104:	00113423          	sd	ra,8(sp)
    80002108:	00813023          	sd	s0,0(sp)
    8000210c:	01010413          	addi	s0,sp,16
    mem_free(p);
    80002110:	fffff097          	auipc	ra,0xfffff
    80002114:	17c080e7          	jalr	380(ra) # 8000128c <_Z8mem_freePv>
};
    80002118:	00813083          	ld	ra,8(sp)
    8000211c:	00013403          	ld	s0,0(sp)
    80002120:	01010113          	addi	sp,sp,16
    80002124:	00008067          	ret

0000000080002128 <_Znwm>:
void *operator new(size_t n){
    80002128:	ff010113          	addi	sp,sp,-16
    8000212c:	00113423          	sd	ra,8(sp)
    80002130:	00813023          	sd	s0,0(sp)
    80002134:	01010413          	addi	s0,sp,16
    return mem_alloc(n);
    80002138:	fffff097          	auipc	ra,0xfffff
    8000213c:	108080e7          	jalr	264(ra) # 80001240 <_Z9mem_allocm>
};
    80002140:	00813083          	ld	ra,8(sp)
    80002144:	00013403          	ld	s0,0(sp)
    80002148:	01010113          	addi	sp,sp,16
    8000214c:	00008067          	ret

0000000080002150 <_Znam>:
void *operator new[](size_t n){
    80002150:	ff010113          	addi	sp,sp,-16
    80002154:	00113423          	sd	ra,8(sp)
    80002158:	00813023          	sd	s0,0(sp)
    8000215c:	01010413          	addi	s0,sp,16
    return mem_alloc(n);
    80002160:	fffff097          	auipc	ra,0xfffff
    80002164:	0e0080e7          	jalr	224(ra) # 80001240 <_Z9mem_allocm>
}
    80002168:	00813083          	ld	ra,8(sp)
    8000216c:	00013403          	ld	s0,0(sp)
    80002170:	01010113          	addi	sp,sp,16
    80002174:	00008067          	ret

0000000080002178 <_ZN6ThreadC1EPFvPvES0_>:
Thread::Thread(void (*body)(void*), void *arg) {
    80002178:	ff010113          	addi	sp,sp,-16
    8000217c:	00113423          	sd	ra,8(sp)
    80002180:	00813023          	sd	s0,0(sp)
    80002184:	01010413          	addi	s0,sp,16
    80002188:	00008797          	auipc	a5,0x8
    8000218c:	fb078793          	addi	a5,a5,-80 # 8000a138 <_ZTV6Thread+0x10>
    80002190:	00f53023          	sd	a5,0(a0)
    myHandle = nullptr;
    80002194:	00053423          	sd	zero,8(a0)
    thread_create(&myHandle, body, arg);    //mozda u thread_start
    80002198:	00850513          	addi	a0,a0,8
    8000219c:	fffff097          	auipc	ra,0xfffff
    800021a0:	130080e7          	jalr	304(ra) # 800012cc <_Z13thread_createPP12kernelThreadPFvPvES2_>
};
    800021a4:	00813083          	ld	ra,8(sp)
    800021a8:	00013403          	ld	s0,0(sp)
    800021ac:	01010113          	addi	sp,sp,16
    800021b0:	00008067          	ret

00000000800021b4 <_ZN6Thread8dispatchEv>:
void Thread::dispatch() {
    800021b4:	ff010113          	addi	sp,sp,-16
    800021b8:	00113423          	sd	ra,8(sp)
    800021bc:	00813023          	sd	s0,0(sp)
    800021c0:	01010413          	addi	s0,sp,16
    thread_dispatch();
    800021c4:	fffff097          	auipc	ra,0xfffff
    800021c8:	1cc080e7          	jalr	460(ra) # 80001390 <_Z15thread_dispatchv>
};
    800021cc:	00813083          	ld	ra,8(sp)
    800021d0:	00013403          	ld	s0,0(sp)
    800021d4:	01010113          	addi	sp,sp,16
    800021d8:	00008067          	ret

00000000800021dc <_ZN6Thread5startEv>:
int Thread::start() {
    800021dc:	ff010113          	addi	sp,sp,-16
    800021e0:	00113423          	sd	ra,8(sp)
    800021e4:	00813023          	sd	s0,0(sp)
    800021e8:	01010413          	addi	s0,sp,16
    thread_start(this->myHandle); //potentially create
    800021ec:	00853503          	ld	a0,8(a0)
    800021f0:	fffff097          	auipc	ra,0xfffff
    800021f4:	1cc080e7          	jalr	460(ra) # 800013bc <_Z12thread_startP12kernelThread>
};
    800021f8:	00000513          	li	a0,0
    800021fc:	00813083          	ld	ra,8(sp)
    80002200:	00013403          	ld	s0,0(sp)
    80002204:	01010113          	addi	sp,sp,16
    80002208:	00008067          	ret

000000008000220c <_ZN6ThreadC1Ev>:
Thread::Thread() {
    8000220c:	ff010113          	addi	sp,sp,-16
    80002210:	00113423          	sd	ra,8(sp)
    80002214:	00813023          	sd	s0,0(sp)
    80002218:	01010413          	addi	s0,sp,16
    8000221c:	00008797          	auipc	a5,0x8
    80002220:	f1c78793          	addi	a5,a5,-228 # 8000a138 <_ZTV6Thread+0x10>
    80002224:	00f53023          	sd	a5,0(a0)
    myHandle = nullptr;
    80002228:	00053423          	sd	zero,8(a0)
    thread_create(&myHandle, &functionWrapper, (void *)this);
    8000222c:	00050613          	mv	a2,a0
    80002230:	00000597          	auipc	a1,0x0
    80002234:	d6458593          	addi	a1,a1,-668 # 80001f94 <_ZN6Thread15functionWrapperEPv>
    80002238:	00850513          	addi	a0,a0,8
    8000223c:	fffff097          	auipc	ra,0xfffff
    80002240:	090080e7          	jalr	144(ra) # 800012cc <_Z13thread_createPP12kernelThreadPFvPvES2_>
};
    80002244:	00813083          	ld	ra,8(sp)
    80002248:	00013403          	ld	s0,0(sp)
    8000224c:	01010113          	addi	sp,sp,16
    80002250:	00008067          	ret

0000000080002254 <_ZN9SemaphoreC1Ej>:
Semaphore::Semaphore(unsigned init){
    80002254:	ff010113          	addi	sp,sp,-16
    80002258:	00113423          	sd	ra,8(sp)
    8000225c:	00813023          	sd	s0,0(sp)
    80002260:	01010413          	addi	s0,sp,16
    80002264:	00008797          	auipc	a5,0x8
    80002268:	efc78793          	addi	a5,a5,-260 # 8000a160 <_ZTV9Semaphore+0x10>
    8000226c:	00f53023          	sd	a5,0(a0)
    this->myHandle = nullptr;
    80002270:	00053423          	sd	zero,8(a0)
    sem_open(&myHandle, init);
    80002274:	00850513          	addi	a0,a0,8
    80002278:	fffff097          	auipc	ra,0xfffff
    8000227c:	184080e7          	jalr	388(ra) # 800013fc <_Z8sem_openPP15kernelSemaphorej>
};
    80002280:	00813083          	ld	ra,8(sp)
    80002284:	00013403          	ld	s0,0(sp)
    80002288:	01010113          	addi	sp,sp,16
    8000228c:	00008067          	ret

0000000080002290 <_ZN9Semaphore6signalEv>:

int Semaphore::signal(){
    80002290:	ff010113          	addi	sp,sp,-16
    80002294:	00113423          	sd	ra,8(sp)
    80002298:	00813023          	sd	s0,0(sp)
    8000229c:	01010413          	addi	s0,sp,16
    int retVal = sem_signal(this->myHandle);
    800022a0:	00853503          	ld	a0,8(a0)
    800022a4:	fffff097          	auipc	ra,0xfffff
    800022a8:	22c080e7          	jalr	556(ra) # 800014d0 <_Z10sem_signalP15kernelSemaphore>
    return retVal;
};
    800022ac:	00813083          	ld	ra,8(sp)
    800022b0:	00013403          	ld	s0,0(sp)
    800022b4:	01010113          	addi	sp,sp,16
    800022b8:	00008067          	ret

00000000800022bc <_ZN9Semaphore4waitEv>:

int Semaphore::wait(){
    800022bc:	ff010113          	addi	sp,sp,-16
    800022c0:	00113423          	sd	ra,8(sp)
    800022c4:	00813023          	sd	s0,0(sp)
    800022c8:	01010413          	addi	s0,sp,16
    int retVal = sem_wait(this->myHandle);
    800022cc:	00853503          	ld	a0,8(a0)
    800022d0:	fffff097          	auipc	ra,0xfffff
    800022d4:	1b4080e7          	jalr	436(ra) # 80001484 <_Z8sem_waitP15kernelSemaphore>
    return retVal;
};
    800022d8:	00813083          	ld	ra,8(sp)
    800022dc:	00013403          	ld	s0,0(sp)
    800022e0:	01010113          	addi	sp,sp,16
    800022e4:	00008067          	ret

00000000800022e8 <_ZN9Semaphore7tryWaitEv>:

int Semaphore::tryWait(){
    800022e8:	ff010113          	addi	sp,sp,-16
    800022ec:	00113423          	sd	ra,8(sp)
    800022f0:	00813023          	sd	s0,0(sp)
    800022f4:	01010413          	addi	s0,sp,16
    int retVal = sem_trywait(this->myHandle);
    800022f8:	00853503          	ld	a0,8(a0)
    800022fc:	fffff097          	auipc	ra,0xfffff
    80002300:	220080e7          	jalr	544(ra) # 8000151c <_Z11sem_trywaitP15kernelSemaphore>
    return retVal;
};
    80002304:	00813083          	ld	ra,8(sp)
    80002308:	00013403          	ld	s0,0(sp)
    8000230c:	01010113          	addi	sp,sp,16
    80002310:	00008067          	ret

0000000080002314 <_ZN7Console4getcEv>:

char Console::getc() {
    80002314:	ff010113          	addi	sp,sp,-16
    80002318:	00113423          	sd	ra,8(sp)
    8000231c:	00813023          	sd	s0,0(sp)
    80002320:	01010413          	addi	s0,sp,16
    return ::getc();
    80002324:	fffff097          	auipc	ra,0xfffff
    80002328:	244080e7          	jalr	580(ra) # 80001568 <_Z4getcv>
};
    8000232c:	00813083          	ld	ra,8(sp)
    80002330:	00013403          	ld	s0,0(sp)
    80002334:	01010113          	addi	sp,sp,16
    80002338:	00008067          	ret

000000008000233c <_ZN7Console4putcEc>:

void Console::putc(char c) {
    8000233c:	ff010113          	addi	sp,sp,-16
    80002340:	00113423          	sd	ra,8(sp)
    80002344:	00813023          	sd	s0,0(sp)
    80002348:	01010413          	addi	s0,sp,16
    ::putc(c);
    8000234c:	fffff097          	auipc	ra,0xfffff
    80002350:	258080e7          	jalr	600(ra) # 800015a4 <_Z4putcc>
    80002354:	00813083          	ld	ra,8(sp)
    80002358:	00013403          	ld	s0,0(sp)
    8000235c:	01010113          	addi	sp,sp,16
    80002360:	00008067          	ret

0000000080002364 <_ZN6Thread3runEv>:
    //ASYNCH
    //static int sleep(time_t);

protected:
    Thread();
    virtual void run(){}
    80002364:	ff010113          	addi	sp,sp,-16
    80002368:	00813423          	sd	s0,8(sp)
    8000236c:	01010413          	addi	s0,sp,16
    80002370:	00813403          	ld	s0,8(sp)
    80002374:	01010113          	addi	sp,sp,16
    80002378:	00008067          	ret

000000008000237c <_Z8printStrPKc>:
// Created by os on 5/30/24.
//
#include "../h/printMethods.hpp"
#include "../lib/console.h"

void printStr(char const *string){
    8000237c:	fe010113          	addi	sp,sp,-32
    80002380:	00113c23          	sd	ra,24(sp)
    80002384:	00813823          	sd	s0,16(sp)
    80002388:	00913423          	sd	s1,8(sp)
    8000238c:	02010413          	addi	s0,sp,32
    80002390:	00050493          	mv	s1,a0
    while(*string != '\0'){
    80002394:	0004c503          	lbu	a0,0(s1)
    80002398:	00050a63          	beqz	a0,800023ac <_Z8printStrPKc+0x30>
        __putc(*string);
    8000239c:	00005097          	auipc	ra,0x5
    800023a0:	630080e7          	jalr	1584(ra) # 800079cc <__putc>
        string++;
    800023a4:	00148493          	addi	s1,s1,1
    while(*string != '\0'){
    800023a8:	fedff06f          	j	80002394 <_Z8printStrPKc+0x18>
    }
}
    800023ac:	01813083          	ld	ra,24(sp)
    800023b0:	01013403          	ld	s0,16(sp)
    800023b4:	00813483          	ld	s1,8(sp)
    800023b8:	02010113          	addi	sp,sp,32
    800023bc:	00008067          	ret

00000000800023c0 <_Z12printIntegerm>:

void printInteger(uint64 integer){
    800023c0:	fd010113          	addi	sp,sp,-48
    800023c4:	02113423          	sd	ra,40(sp)
    800023c8:	02813023          	sd	s0,32(sp)
    800023cc:	00913c23          	sd	s1,24(sp)
    800023d0:	03010413          	addi	s0,sp,48
    //if it is negative
    if(integer < 0){
        neg = 1;
        x = -integer;
    } else{
        x = integer;
    800023d4:	0005051b          	sext.w	a0,a0
    }

    i = 0 ;
    800023d8:	00000493          	li	s1,0
    do{
        buf[i++] = digits[x % 10];
    800023dc:	00a00613          	li	a2,10
    800023e0:	02c5773b          	remuw	a4,a0,a2
    800023e4:	02071693          	slli	a3,a4,0x20
    800023e8:	0206d693          	srli	a3,a3,0x20
    800023ec:	00006717          	auipc	a4,0x6
    800023f0:	c4c70713          	addi	a4,a4,-948 # 80008038 <_ZZ12printIntegermE6digits>
    800023f4:	00d70733          	add	a4,a4,a3
    800023f8:	00074703          	lbu	a4,0(a4)
    800023fc:	fe040693          	addi	a3,s0,-32
    80002400:	009687b3          	add	a5,a3,s1
    80002404:	0014849b          	addiw	s1,s1,1
    80002408:	fee78823          	sb	a4,-16(a5)
    } while ((x /= 10) != 0);
    8000240c:	0005071b          	sext.w	a4,a0
    80002410:	02c5553b          	divuw	a0,a0,a2
    80002414:	00900793          	li	a5,9
    80002418:	fce7e2e3          	bltu	a5,a4,800023dc <_Z12printIntegerm+0x1c>

    if(neg){
        buf[i++] = '-';
    }

    while(--i >= 0){
    8000241c:	fff4849b          	addiw	s1,s1,-1
    80002420:	0004ce63          	bltz	s1,8000243c <_Z12printIntegerm+0x7c>
        __putc(buf[i]);
    80002424:	fe040793          	addi	a5,s0,-32
    80002428:	009787b3          	add	a5,a5,s1
    8000242c:	ff07c503          	lbu	a0,-16(a5)
    80002430:	00005097          	auipc	ra,0x5
    80002434:	59c080e7          	jalr	1436(ra) # 800079cc <__putc>
    80002438:	fe5ff06f          	j	8000241c <_Z12printIntegerm+0x5c>
    }

}
    8000243c:	02813083          	ld	ra,40(sp)
    80002440:	02013403          	ld	s0,32(sp)
    80002444:	01813483          	ld	s1,24(sp)
    80002448:	03010113          	addi	sp,sp,48
    8000244c:	00008067          	ret

0000000080002450 <_ZN5Riscv10popSppSpieEv>:
#include "../h/riscv.hpp"

void Riscv::popSppSpie(){
    80002450:	ff010113          	addi	sp,sp,-16
    80002454:	00813423          	sd	s0,8(sp)
    80002458:	01010413          	addi	s0,sp,16
    __asm__ volatile ("csrw sepc, ra");
    8000245c:	14109073          	csrw	sepc,ra
    __asm__ volatile ("sret");
    80002460:	10200073          	sret
};
    80002464:	00813403          	ld	s0,8(sp)
    80002468:	01010113          	addi	sp,sp,16
    8000246c:	00008067          	ret

0000000080002470 <_ZN5Riscv22ecallWithFourArgumentsEmmmmm>:

//  -----ECALL-----

void Riscv::ecallWithFourArguments(uint64 a0, uint64 a1, uint64 a2, uint64 a3, uint64 a4) {
    80002470:	ff010113          	addi	sp,sp,-16
    80002474:	00813423          	sd	s0,8(sp)
    80002478:	01010413          	addi	s0,sp,16
    __asm__ volatile("ecall");
    8000247c:	00000073          	ecall
};
    80002480:	00813403          	ld	s0,8(sp)
    80002484:	01010113          	addi	sp,sp,16
    80002488:	00008067          	ret

000000008000248c <_ZN5Riscv23ecallWithThreeArgumentsEmmmm>:
void Riscv::ecallWithThreeArguments(uint64 a0, uint64 a1, uint64 a2, uint64 a3) {
    8000248c:	ff010113          	addi	sp,sp,-16
    80002490:	00813423          	sd	s0,8(sp)
    80002494:	01010413          	addi	s0,sp,16
    __asm__ volatile("ecall");
    80002498:	00000073          	ecall
};
    8000249c:	00813403          	ld	s0,8(sp)
    800024a0:	01010113          	addi	sp,sp,16
    800024a4:	00008067          	ret

00000000800024a8 <_ZN5Riscv21ecallWithTwoArgumentsEmmm>:
void Riscv::ecallWithTwoArguments(uint64 a0, uint64 a1, uint64 a2) {
    800024a8:	ff010113          	addi	sp,sp,-16
    800024ac:	00813423          	sd	s0,8(sp)
    800024b0:	01010413          	addi	s0,sp,16
    __asm__ volatile("ecall");
    800024b4:	00000073          	ecall
};
    800024b8:	00813403          	ld	s0,8(sp)
    800024bc:	01010113          	addi	sp,sp,16
    800024c0:	00008067          	ret

00000000800024c4 <_ZN5Riscv20ecallWithOneArgumentEmm>:
void Riscv::ecallWithOneArgument(uint64 a0, uint64 a1) {
    800024c4:	ff010113          	addi	sp,sp,-16
    800024c8:	00813423          	sd	s0,8(sp)
    800024cc:	01010413          	addi	s0,sp,16
    __asm__ volatile("ecall");
    800024d0:	00000073          	ecall
};
    800024d4:	00813403          	ld	s0,8(sp)
    800024d8:	01010113          	addi	sp,sp,16
    800024dc:	00008067          	ret

00000000800024e0 <_ZN5Riscv21ecallWithoutArgumentsEm>:
void Riscv::ecallWithoutArguments(uint64 a0) {
    800024e0:	ff010113          	addi	sp,sp,-16
    800024e4:	00813423          	sd	s0,8(sp)
    800024e8:	01010413          	addi	s0,sp,16
    __asm__ volatile("ecall");
    800024ec:	00000073          	ecall
};
    800024f0:	00813403          	ld	s0,8(sp)
    800024f4:	01010113          	addi	sp,sp,16
    800024f8:	00008067          	ret

00000000800024fc <_ZN5Riscv21supervisorTrapHandlerEv>:

extern "C" void Riscv::supervisorTrapHandler(){
    800024fc:	fa010113          	addi	sp,sp,-96
    80002500:	04113c23          	sd	ra,88(sp)
    80002504:	04813823          	sd	s0,80(sp)
    80002508:	04913423          	sd	s1,72(sp)
    8000250c:	05213023          	sd	s2,64(sp)
    80002510:	03313c23          	sd	s3,56(sp)
    80002514:	03413823          	sd	s4,48(sp)
    80002518:	06010413          	addi	s0,sp,96
};

//registers a0 - a4
inline uint64 Riscv::r_a0(){
    uint64 volatile registerValue;
    __asm__ volatile ("mv %[a0], a0" : [a0] "=r" (registerValue));
    8000251c:	00050793          	mv	a5,a0
    80002520:	fcf43423          	sd	a5,-56(s0)
    return registerValue;
    80002524:	fc843903          	ld	s2,-56(s0)
};
inline uint64 Riscv::r_a1(){
    uint64 volatile registerValue;
    __asm__ volatile ("mv %[a1], a1" : [a1] "=r" (registerValue));
    80002528:	00058793          	mv	a5,a1
    8000252c:	fcf43023          	sd	a5,-64(s0)
    return registerValue;
    80002530:	fc043983          	ld	s3,-64(s0)
};
inline uint64 Riscv::r_a2(){
    uint64 volatile registerValue;
    __asm__ volatile ("mv %[a2], a2" : [a2] "=r" (registerValue));
    80002534:	00060793          	mv	a5,a2
    80002538:	faf43c23          	sd	a5,-72(s0)
    return registerValue;
    8000253c:	fb843583          	ld	a1,-72(s0)
};
inline uint64 Riscv::r_a3(){
    uint64 volatile registerValue;
    __asm__ volatile ("mv %[a3], a3" : [a3] "=r" (registerValue));
    80002540:	00068793          	mv	a5,a3
    80002544:	faf43823          	sd	a5,-80(s0)
    return registerValue;
    80002548:	fb043603          	ld	a2,-80(s0)
};
inline uint64 Riscv::r_a4(){
    uint64 volatile registerValue;
    __asm__ volatile ("mv %[a4], a4" : [a4] "=r" (registerValue));
    8000254c:	00070793          	mv	a5,a4
    80002550:	faf43423          	sd	a5,-88(s0)
    return registerValue;
    80002554:	fa843683          	ld	a3,-88(s0)
    __asm__ volatile ("csrr %[scause], scause" : [scause] "=r" (scause));
    80002558:	142027f3          	csrr	a5,scause
    8000255c:	faf43023          	sd	a5,-96(s0)
    return scause;
    80002560:	fa043483          	ld	s1,-96(s0)
    uint64 arg4 = Riscv::r_a4();

    uint64 scause = r_scause();

    //if ecall happen from user or privilige
    if(scause == 0x8 || scause == 0x9){
    80002564:	ff848713          	addi	a4,s1,-8
    80002568:	00100793          	li	a5,1
    8000256c:	0ee7f463          	bgeu	a5,a4,80002654 <_ZN5Riscv21supervisorTrapHandlerEv+0x158>
        }

        Riscv::w_sstatus(sstatus);
        Riscv::w_sepc(sepc);

    } else if(scause == 0x8000000000000001UL){
    80002570:	fff00793          	li	a5,-1
    80002574:	03f79793          	slli	a5,a5,0x3f
    80002578:	00178793          	addi	a5,a5,1
    8000257c:	2ef48263          	beq	s1,a5,80002860 <_ZN5Riscv21supervisorTrapHandlerEv+0x364>
        //interrupted
        mc_sip(SIP_SSIP);
    }else if(scause == 0x8000000000000009UL){
    80002580:	fff00793          	li	a5,-1
    80002584:	03f79793          	slli	a5,a5,0x3f
    80002588:	00978793          	addi	a5,a5,9
    8000258c:	2ef48063          	beq	s1,a5,8000286c <_ZN5Riscv21supervisorTrapHandlerEv+0x370>
        mc_sip(SIP_SSIP);
    }else{
        //unexpected error
        //print scause, sepc and stval
        //uint64 sepc = Riscv::r_sepc();
        printStr("Scause: ");
    80002590:	00006517          	auipc	a0,0x6
    80002594:	ac850513          	addi	a0,a0,-1336 # 80008058 <_ZZ12printIntegermE6digits+0x20>
    80002598:	00000097          	auipc	ra,0x0
    8000259c:	de4080e7          	jalr	-540(ra) # 8000237c <_Z8printStrPKc>
        printInteger((uint64)scause);
    800025a0:	00048513          	mv	a0,s1
    800025a4:	00000097          	auipc	ra,0x0
    800025a8:	e1c080e7          	jalr	-484(ra) # 800023c0 <_Z12printIntegerm>
        printStr("\n");
    800025ac:	00006517          	auipc	a0,0x6
    800025b0:	00c50513          	addi	a0,a0,12 # 800085b8 <_ZZ12printIntegermE6digits+0x580>
    800025b4:	00000097          	auipc	ra,0x0
    800025b8:	dc8080e7          	jalr	-568(ra) # 8000237c <_Z8printStrPKc>
        printStr("Sepc: ");
    800025bc:	00006517          	auipc	a0,0x6
    800025c0:	aac50513          	addi	a0,a0,-1364 # 80008068 <_ZZ12printIntegermE6digits+0x30>
    800025c4:	00000097          	auipc	ra,0x0
    800025c8:	db8080e7          	jalr	-584(ra) # 8000237c <_Z8printStrPKc>
    __asm__ volatile ("csrr %[sepc], sepc" : [sepc] "=r" (sepc));
    800025cc:	14102573          	csrr	a0,sepc
        printInteger((uint64) r_sepc());
    800025d0:	00000097          	auipc	ra,0x0
    800025d4:	df0080e7          	jalr	-528(ra) # 800023c0 <_Z12printIntegerm>
        printStr("\n");
    800025d8:	00006517          	auipc	a0,0x6
    800025dc:	fe050513          	addi	a0,a0,-32 # 800085b8 <_ZZ12printIntegermE6digits+0x580>
    800025e0:	00000097          	auipc	ra,0x0
    800025e4:	d9c080e7          	jalr	-612(ra) # 8000237c <_Z8printStrPKc>
        printStr("Sstatus: ");
    800025e8:	00006517          	auipc	a0,0x6
    800025ec:	a8850513          	addi	a0,a0,-1400 # 80008070 <_ZZ12printIntegermE6digits+0x38>
    800025f0:	00000097          	auipc	ra,0x0
    800025f4:	d8c080e7          	jalr	-628(ra) # 8000237c <_Z8printStrPKc>
    __asm__ volatile ("csrr %[sstatus], sstatus" : [sstatus] "=r" (sstatus));
    800025f8:	10002573          	csrr	a0,sstatus
        printInteger((uint64) r_sstatus());
    800025fc:	00000097          	auipc	ra,0x0
    80002600:	dc4080e7          	jalr	-572(ra) # 800023c0 <_Z12printIntegerm>
        printStr("\n");
    80002604:	00006517          	auipc	a0,0x6
    80002608:	fb450513          	addi	a0,a0,-76 # 800085b8 <_ZZ12printIntegermE6digits+0x580>
    8000260c:	00000097          	auipc	ra,0x0
    80002610:	d70080e7          	jalr	-656(ra) # 8000237c <_Z8printStrPKc>
        printStr("A0: ");
    80002614:	00006517          	auipc	a0,0x6
    80002618:	a6c50513          	addi	a0,a0,-1428 # 80008080 <_ZZ12printIntegermE6digits+0x48>
    8000261c:	00000097          	auipc	ra,0x0
    80002620:	d60080e7          	jalr	-672(ra) # 8000237c <_Z8printStrPKc>
        printInteger((uint64) arg0);
    80002624:	00090513          	mv	a0,s2
    80002628:	00000097          	auipc	ra,0x0
    8000262c:	d98080e7          	jalr	-616(ra) # 800023c0 <_Z12printIntegerm>
        printStr("\n");
    80002630:	00006517          	auipc	a0,0x6
    80002634:	f8850513          	addi	a0,a0,-120 # 800085b8 <_ZZ12printIntegermE6digits+0x580>
    80002638:	00000097          	auipc	ra,0x0
    8000263c:	d44080e7          	jalr	-700(ra) # 8000237c <_Z8printStrPKc>
        printStr("\n");
    80002640:	00006517          	auipc	a0,0x6
    80002644:	f7850513          	addi	a0,a0,-136 # 800085b8 <_ZZ12printIntegermE6digits+0x580>
    80002648:	00000097          	auipc	ra,0x0
    8000264c:	d34080e7          	jalr	-716(ra) # 8000237c <_Z8printStrPKc>
    80002650:	0600006f          	j	800026b0 <_ZN5Riscv21supervisorTrapHandlerEv+0x1b4>
    80002654:	10002a73          	csrr	s4,sstatus
    __asm__ volatile ("csrr %[sepc], sepc" : [sepc] "=r" (sepc));
    80002658:	141024f3          	csrr	s1,sepc
        uint64 sepc = r_sepc() + 4;
    8000265c:	00448493          	addi	s1,s1,4
        switch(arg0){
    80002660:	05000793          	li	a5,80
    80002664:	1d27e663          	bltu	a5,s2,80002830 <_ZN5Riscv21supervisorTrapHandlerEv+0x334>
    80002668:	00291713          	slli	a4,s2,0x2
    8000266c:	00006517          	auipc	a0,0x6
    80002670:	a1c50513          	addi	a0,a0,-1508 # 80008088 <_ZZ12printIntegermE6digits+0x50>
    80002674:	00a70733          	add	a4,a4,a0
    80002678:	00072783          	lw	a5,0(a4)
    8000267c:	00a787b3          	add	a5,a5,a0
    80002680:	00078067          	jr	a5
    80002684:	00008797          	auipc	a5,0x8
    80002688:	ca47c783          	lbu	a5,-860(a5) # 8000a328 <_ZGVZN15MemoryAllocator11getInstanceEvE8instance>
    8000268c:	04078263          	beqz	a5,800026d0 <_ZN5Riscv21supervisorTrapHandlerEv+0x1d4>
                void* ptr = MemoryAllocator::getInstance().mem_alloc((size_t)arg1);
    80002690:	00098593          	mv	a1,s3
    80002694:	00008517          	auipc	a0,0x8
    80002698:	c9c50513          	addi	a0,a0,-868 # 8000a330 <_ZZN15MemoryAllocator11getInstanceEvE8instance>
    8000269c:	fffff097          	auipc	ra,0xfffff
    800026a0:	6c0080e7          	jalr	1728(ra) # 80001d5c <_ZN15MemoryAllocator9mem_allocEm>
    __asm__ volatile("sd %[retVal], 10 * 8(fp)" ::[retVal] "r" (retVal));
    800026a4:	04a43823          	sd	a0,80(s0)
    __asm__ volatile ("csrw sstatus, %[sstatus]" :: [sstatus] "r" (sstatus));
    800026a8:	100a1073          	csrw	sstatus,s4
    __asm__ volatile ("csrw sepc, %[sepc]" :: [sepc] "r" (sepc));
    800026ac:	14149073          	csrw	sepc,s1
    }

    800026b0:	05813083          	ld	ra,88(sp)
    800026b4:	05013403          	ld	s0,80(sp)
    800026b8:	04813483          	ld	s1,72(sp)
    800026bc:	04013903          	ld	s2,64(sp)
    800026c0:	03813983          	ld	s3,56(sp)
    800026c4:	03013a03          	ld	s4,48(sp)
    800026c8:	06010113          	addi	sp,sp,96
    800026cc:	00008067          	ret
    800026d0:	00008517          	auipc	a0,0x8
    800026d4:	c6050513          	addi	a0,a0,-928 # 8000a330 <_ZZN15MemoryAllocator11getInstanceEvE8instance>
    800026d8:	fffff097          	auipc	ra,0xfffff
    800026dc:	628080e7          	jalr	1576(ra) # 80001d00 <_ZN15MemoryAllocatorC1Ev>
    800026e0:	00100793          	li	a5,1
    800026e4:	00008717          	auipc	a4,0x8
    800026e8:	c4f70223          	sb	a5,-956(a4) # 8000a328 <_ZGVZN15MemoryAllocator11getInstanceEvE8instance>
    800026ec:	fa5ff06f          	j	80002690 <_ZN5Riscv21supervisorTrapHandlerEv+0x194>
    800026f0:	00008797          	auipc	a5,0x8
    800026f4:	c387c783          	lbu	a5,-968(a5) # 8000a328 <_ZGVZN15MemoryAllocator11getInstanceEvE8instance>
    800026f8:	02078063          	beqz	a5,80002718 <_ZN5Riscv21supervisorTrapHandlerEv+0x21c>
                int ret = MemoryAllocator::getInstance().mem_free((void*)arg1);
    800026fc:	00098593          	mv	a1,s3
    80002700:	00008517          	auipc	a0,0x8
    80002704:	c3050513          	addi	a0,a0,-976 # 8000a330 <_ZZN15MemoryAllocator11getInstanceEvE8instance>
    80002708:	fffff097          	auipc	ra,0xfffff
    8000270c:	7a4080e7          	jalr	1956(ra) # 80001eac <_ZN15MemoryAllocator8mem_freeEPv>
    __asm__ volatile("sd %[retVal], 10 * 8(fp)" ::[retVal] "r" (retVal));
    80002710:	04a43823          	sd	a0,80(s0)
};
    80002714:	f95ff06f          	j	800026a8 <_ZN5Riscv21supervisorTrapHandlerEv+0x1ac>
    80002718:	00008517          	auipc	a0,0x8
    8000271c:	c1850513          	addi	a0,a0,-1000 # 8000a330 <_ZZN15MemoryAllocator11getInstanceEvE8instance>
    80002720:	fffff097          	auipc	ra,0xfffff
    80002724:	5e0080e7          	jalr	1504(ra) # 80001d00 <_ZN15MemoryAllocatorC1Ev>
    80002728:	00100793          	li	a5,1
    8000272c:	00008717          	auipc	a4,0x8
    80002730:	bef70e23          	sb	a5,-1028(a4) # 8000a328 <_ZGVZN15MemoryAllocator11getInstanceEvE8instance>
    80002734:	fc9ff06f          	j	800026fc <_ZN5Riscv21supervisorTrapHandlerEv+0x200>
                 kernelThread::createThread(    //write thread handle!
    80002738:	00098513          	mv	a0,s3
    8000273c:	fffff097          	auipc	ra,0xfffff
    80002740:	ef8080e7          	jalr	-264(ra) # 80001634 <_ZN12kernelThread12createThreadEPPS_PFvPvES2_Pm>
                if(*hadnle == nullptr){
    80002744:	0009b783          	ld	a5,0(s3)
    80002748:	00078863          	beqz	a5,80002758 <_ZN5Riscv21supervisorTrapHandlerEv+0x25c>
    __asm__ volatile("sd %[retVal], 10 * 8(fp)" ::[retVal] "r" (retVal));
    8000274c:	00000793          	li	a5,0
    80002750:	04f43823          	sd	a5,80(s0)
};
    80002754:	f55ff06f          	j	800026a8 <_ZN5Riscv21supervisorTrapHandlerEv+0x1ac>
    __asm__ volatile("sd %[retVal], 10 * 8(fp)" ::[retVal] "r" (retVal));
    80002758:	fff00793          	li	a5,-1
    8000275c:	04f43823          	sd	a5,80(s0)
};
    80002760:	f49ff06f          	j	800026a8 <_ZN5Riscv21supervisorTrapHandlerEv+0x1ac>
                int retVal = kernelThread::threadExit();
    80002764:	fffff097          	auipc	ra,0xfffff
    80002768:	07c080e7          	jalr	124(ra) # 800017e0 <_ZN12kernelThread10threadExitEv>
    __asm__ volatile("sd %[retVal], 10 * 8(fp)" ::[retVal] "r" (retVal));
    8000276c:	04a43823          	sd	a0,80(s0)
};
    80002770:	f39ff06f          	j	800026a8 <_ZN5Riscv21supervisorTrapHandlerEv+0x1ac>
                kernelThread::dispatchThread();
    80002774:	fffff097          	auipc	ra,0xfffff
    80002778:	fbc080e7          	jalr	-68(ra) # 80001730 <_ZN12kernelThread14dispatchThreadEv>
                break;
    8000277c:	f2dff06f          	j	800026a8 <_ZN5Riscv21supervisorTrapHandlerEv+0x1ac>
                int retVal = kernelThread::startThread(handle);
    80002780:	00098513          	mv	a0,s3
    80002784:	fffff097          	auipc	ra,0xfffff
    80002788:	0f8080e7          	jalr	248(ra) # 8000187c <_ZN12kernelThread11startThreadEPS_>
    __asm__ volatile("sd %[retVal], 10 * 8(fp)" ::[retVal] "r" (retVal));
    8000278c:	04a43823          	sd	a0,80(s0)
};
    80002790:	f19ff06f          	j	800026a8 <_ZN5Riscv21supervisorTrapHandlerEv+0x1ac>
                int retValue = kernelSemaphore::createSemaphore(handle, (unsigned)arg2);
    80002794:	0005859b          	sext.w	a1,a1
    80002798:	00098513          	mv	a0,s3
    8000279c:	fffff097          	auipc	ra,0xfffff
    800027a0:	118080e7          	jalr	280(ra) # 800018b4 <_ZN15kernelSemaphore15createSemaphoreEPPS_j>
    __asm__ volatile("sd %[retVal], 10 * 8(fp)" ::[retVal] "r" (retVal));
    800027a4:	04a43823          	sd	a0,80(s0)
};
    800027a8:	f01ff06f          	j	800026a8 <_ZN5Riscv21supervisorTrapHandlerEv+0x1ac>
                int retVal = handle->deleteSemaphore(handle);
    800027ac:	00098513          	mv	a0,s3
    800027b0:	fffff097          	auipc	ra,0xfffff
    800027b4:	168080e7          	jalr	360(ra) # 80001918 <_ZN15kernelSemaphore15deleteSemaphoreEPS_>
    __asm__ volatile("sd %[retVal], 10 * 8(fp)" ::[retVal] "r" (retVal));
    800027b8:	04a43823          	sd	a0,80(s0)
};
    800027bc:	eedff06f          	j	800026a8 <_ZN5Riscv21supervisorTrapHandlerEv+0x1ac>
                int retVal = handle->wait();
    800027c0:	00098513          	mv	a0,s3
    800027c4:	fffff097          	auipc	ra,0xfffff
    800027c8:	350080e7          	jalr	848(ra) # 80001b14 <_ZN15kernelSemaphore4waitEv>
    __asm__ volatile("sd %[retVal], 10 * 8(fp)" ::[retVal] "r" (retVal));
    800027cc:	04a43823          	sd	a0,80(s0)
};
    800027d0:	ed9ff06f          	j	800026a8 <_ZN5Riscv21supervisorTrapHandlerEv+0x1ac>
                int retVal = handle->signal();
    800027d4:	00098513          	mv	a0,s3
    800027d8:	fffff097          	auipc	ra,0xfffff
    800027dc:	260080e7          	jalr	608(ra) # 80001a38 <_ZN15kernelSemaphore6signalEv>
    __asm__ volatile("sd %[retVal], 10 * 8(fp)" ::[retVal] "r" (retVal));
    800027e0:	04a43823          	sd	a0,80(s0)
};
    800027e4:	ec5ff06f          	j	800026a8 <_ZN5Riscv21supervisorTrapHandlerEv+0x1ac>
                int retVal = handle->tryWait();
    800027e8:	00098513          	mv	a0,s3
    800027ec:	fffff097          	auipc	ra,0xfffff
    800027f0:	40c080e7          	jalr	1036(ra) # 80001bf8 <_ZN15kernelSemaphore7tryWaitEv>
    __asm__ volatile("sd %[retVal], 10 * 8(fp)" ::[retVal] "r" (retVal));
    800027f4:	04a43823          	sd	a0,80(s0)
};
    800027f8:	eb1ff06f          	j	800026a8 <_ZN5Riscv21supervisorTrapHandlerEv+0x1ac>
                char c = __getc();
    800027fc:	00005097          	auipc	ra,0x5
    80002800:	20c080e7          	jalr	524(ra) # 80007a08 <__getc>
    __asm__ volatile("sd %[retVal], 10 * 8(fp)" ::[retVal] "r" (retVal));
    80002804:	04a43823          	sd	a0,80(s0)
};
    80002808:	ea1ff06f          	j	800026a8 <_ZN5Riscv21supervisorTrapHandlerEv+0x1ac>
                __putc(c);
    8000280c:	0ff9f513          	andi	a0,s3,255
    80002810:	00005097          	auipc	ra,0x5
    80002814:	1bc080e7          	jalr	444(ra) # 800079cc <__putc>
            break;
    80002818:	e91ff06f          	j	800026a8 <_ZN5Riscv21supervisorTrapHandlerEv+0x1ac>
    __asm__ volatile ("csrr %[sstatus], sstatus" : [sstatus] "=r" (sstatus));
    8000281c:	100027f3          	csrr	a5,sstatus
                statusReg &= ~(1<<8);
    80002820:	eff7f793          	andi	a5,a5,-257
    __asm__ volatile ("csrw sstatus, %[sstatus]" :: [sstatus] "r" (sstatus));
    80002824:	10079073          	csrw	sstatus,a5
    __asm__ volatile ("csrw sepc, %[sepc]" :: [sepc] "r" (sepc));
    80002828:	14149073          	csrw	sepc,s1
                return;
    8000282c:	e85ff06f          	j	800026b0 <_ZN5Riscv21supervisorTrapHandlerEv+0x1b4>
                printStr("Vrednost AO: ");
    80002830:	00006517          	auipc	a0,0x6
    80002834:	81850513          	addi	a0,a0,-2024 # 80008048 <_ZZ12printIntegermE6digits+0x10>
    80002838:	00000097          	auipc	ra,0x0
    8000283c:	b44080e7          	jalr	-1212(ra) # 8000237c <_Z8printStrPKc>
                printInteger(arg0);
    80002840:	00090513          	mv	a0,s2
    80002844:	00000097          	auipc	ra,0x0
    80002848:	b7c080e7          	jalr	-1156(ra) # 800023c0 <_Z12printIntegerm>
                printStr("\n");
    8000284c:	00006517          	auipc	a0,0x6
    80002850:	d6c50513          	addi	a0,a0,-660 # 800085b8 <_ZZ12printIntegermE6digits+0x580>
    80002854:	00000097          	auipc	ra,0x0
    80002858:	b28080e7          	jalr	-1240(ra) # 8000237c <_Z8printStrPKc>
                break;
    8000285c:	e4dff06f          	j	800026a8 <_ZN5Riscv21supervisorTrapHandlerEv+0x1ac>
    __asm__ volatile ("csrc sip, %[mask]" :: [mask] "r" (mask));
    80002860:	00200793          	li	a5,2
    80002864:	1447b073          	csrc	sip,a5
};
    80002868:	e49ff06f          	j	800026b0 <_ZN5Riscv21supervisorTrapHandlerEv+0x1b4>
        console_handler();
    8000286c:	00005097          	auipc	ra,0x5
    80002870:	1d4080e7          	jalr	468(ra) # 80007a40 <console_handler>
    __asm__ volatile ("csrc sip, %[mask]" :: [mask] "r" (mask));
    80002874:	00200793          	li	a5,2
    80002878:	1447b073          	csrc	sip,a5
};
    8000287c:	e35ff06f          	j	800026b0 <_ZN5Riscv21supervisorTrapHandlerEv+0x1b4>

0000000080002880 <_Z41__static_initialization_and_destruction_0ii>:
    return readyThreadQueue.removeFirst();
}

void Scheduler::putInScheduler(kernelThread *thread) {
    readyThreadQueue.addLast(thread);
}
    80002880:	ff010113          	addi	sp,sp,-16
    80002884:	00813423          	sd	s0,8(sp)
    80002888:	01010413          	addi	s0,sp,16
    8000288c:	00100793          	li	a5,1
    80002890:	00f50863          	beq	a0,a5,800028a0 <_Z41__static_initialization_and_destruction_0ii+0x20>
    80002894:	00813403          	ld	s0,8(sp)
    80002898:	01010113          	addi	sp,sp,16
    8000289c:	00008067          	ret
    800028a0:	000107b7          	lui	a5,0x10
    800028a4:	fff78793          	addi	a5,a5,-1 # ffff <_entry-0x7fff0001>
    800028a8:	fef596e3          	bne	a1,a5,80002894 <_Z41__static_initialization_and_destruction_0ii+0x14>
        head = nullptr;
    800028ac:	00008797          	auipc	a5,0x8
    800028b0:	a8c78793          	addi	a5,a5,-1396 # 8000a338 <_ZN9Scheduler16readyThreadQueueE>
    800028b4:	0007b023          	sd	zero,0(a5)
        tail = nullptr;
    800028b8:	0007b423          	sd	zero,8(a5)
    800028bc:	fd9ff06f          	j	80002894 <_Z41__static_initialization_and_destruction_0ii+0x14>

00000000800028c0 <_ZN9Scheduler16getFromSchedulerEv>:
kernelThread *Scheduler::getFromScheduler() {
    800028c0:	fe010113          	addi	sp,sp,-32
    800028c4:	00113c23          	sd	ra,24(sp)
    800028c8:	00813823          	sd	s0,16(sp)
    800028cc:	00913423          	sd	s1,8(sp)
    800028d0:	01213023          	sd	s2,0(sp)
    800028d4:	02010413          	addi	s0,sp,32
        if(head == nullptr) return nullptr;
    800028d8:	00008497          	auipc	s1,0x8
    800028dc:	a604b483          	ld	s1,-1440(s1) # 8000a338 <_ZN9Scheduler16readyThreadQueueE>
    800028e0:	08048063          	beqz	s1,80002960 <_ZN9Scheduler16getFromSchedulerEv+0xa0>
        head = head->next;
    800028e4:	0084b783          	ld	a5,8(s1)
    800028e8:	00008717          	auipc	a4,0x8
    800028ec:	a4f73823          	sd	a5,-1456(a4) # 8000a338 <_ZN9Scheduler16readyThreadQueueE>
        if(head == nullptr){
    800028f0:	04078263          	beqz	a5,80002934 <_ZN9Scheduler16getFromSchedulerEv+0x74>
        T *ret = elem->data;
    800028f4:	0004b903          	ld	s2,0(s1)
    800028f8:	00008797          	auipc	a5,0x8
    800028fc:	a307c783          	lbu	a5,-1488(a5) # 8000a328 <_ZGVZN15MemoryAllocator11getInstanceEvE8instance>
    80002900:	04078063          	beqz	a5,80002940 <_ZN9Scheduler16getFromSchedulerEv+0x80>
        MemoryAllocator::getInstance().mem_free(elem);
    80002904:	00048593          	mv	a1,s1
    80002908:	00008517          	auipc	a0,0x8
    8000290c:	a2850513          	addi	a0,a0,-1496 # 8000a330 <_ZZN15MemoryAllocator11getInstanceEvE8instance>
    80002910:	fffff097          	auipc	ra,0xfffff
    80002914:	59c080e7          	jalr	1436(ra) # 80001eac <_ZN15MemoryAllocator8mem_freeEPv>
}
    80002918:	00090513          	mv	a0,s2
    8000291c:	01813083          	ld	ra,24(sp)
    80002920:	01013403          	ld	s0,16(sp)
    80002924:	00813483          	ld	s1,8(sp)
    80002928:	00013903          	ld	s2,0(sp)
    8000292c:	02010113          	addi	sp,sp,32
    80002930:	00008067          	ret
            tail = nullptr;
    80002934:	00008797          	auipc	a5,0x8
    80002938:	a007b623          	sd	zero,-1524(a5) # 8000a340 <_ZN9Scheduler16readyThreadQueueE+0x8>
    8000293c:	fb9ff06f          	j	800028f4 <_ZN9Scheduler16getFromSchedulerEv+0x34>
    80002940:	00008517          	auipc	a0,0x8
    80002944:	9f050513          	addi	a0,a0,-1552 # 8000a330 <_ZZN15MemoryAllocator11getInstanceEvE8instance>
    80002948:	fffff097          	auipc	ra,0xfffff
    8000294c:	3b8080e7          	jalr	952(ra) # 80001d00 <_ZN15MemoryAllocatorC1Ev>
    80002950:	00100793          	li	a5,1
    80002954:	00008717          	auipc	a4,0x8
    80002958:	9cf70a23          	sb	a5,-1580(a4) # 8000a328 <_ZGVZN15MemoryAllocator11getInstanceEvE8instance>
    8000295c:	fa9ff06f          	j	80002904 <_ZN9Scheduler16getFromSchedulerEv+0x44>
        if(head == nullptr) return nullptr;
    80002960:	00048913          	mv	s2,s1
    return readyThreadQueue.removeFirst();
    80002964:	fb5ff06f          	j	80002918 <_ZN9Scheduler16getFromSchedulerEv+0x58>

0000000080002968 <_ZN9Scheduler14putInSchedulerEP12kernelThread>:
void Scheduler::putInScheduler(kernelThread *thread) {
    80002968:	fe010113          	addi	sp,sp,-32
    8000296c:	00113c23          	sd	ra,24(sp)
    80002970:	00813823          	sd	s0,16(sp)
    80002974:	00913423          	sd	s1,8(sp)
    80002978:	02010413          	addi	s0,sp,32
    8000297c:	00050493          	mv	s1,a0
    80002980:	00008797          	auipc	a5,0x8
    80002984:	9a87c783          	lbu	a5,-1624(a5) # 8000a328 <_ZGVZN15MemoryAllocator11getInstanceEvE8instance>
    80002988:	04078663          	beqz	a5,800029d4 <_ZN9Scheduler14putInSchedulerEP12kernelThread+0x6c>
        Elem *newElem = (Elem*)(MemoryAllocator::getInstance().mem_alloc(size));
    8000298c:	00100593          	li	a1,1
    80002990:	00008517          	auipc	a0,0x8
    80002994:	9a050513          	addi	a0,a0,-1632 # 8000a330 <_ZZN15MemoryAllocator11getInstanceEvE8instance>
    80002998:	fffff097          	auipc	ra,0xfffff
    8000299c:	3c4080e7          	jalr	964(ra) # 80001d5c <_ZN15MemoryAllocator9mem_allocEm>
        newElem->next = nullptr;
    800029a0:	00053423          	sd	zero,8(a0)
        newElem->data = data;
    800029a4:	00953023          	sd	s1,0(a0)
        if(tail == nullptr){
    800029a8:	00008797          	auipc	a5,0x8
    800029ac:	9987b783          	ld	a5,-1640(a5) # 8000a340 <_ZN9Scheduler16readyThreadQueueE+0x8>
    800029b0:	04078263          	beqz	a5,800029f4 <_ZN9Scheduler14putInSchedulerEP12kernelThread+0x8c>
            tail->next = newElem;
    800029b4:	00a7b423          	sd	a0,8(a5)
            tail = newElem;
    800029b8:	00008797          	auipc	a5,0x8
    800029bc:	98a7b423          	sd	a0,-1656(a5) # 8000a340 <_ZN9Scheduler16readyThreadQueueE+0x8>
}
    800029c0:	01813083          	ld	ra,24(sp)
    800029c4:	01013403          	ld	s0,16(sp)
    800029c8:	00813483          	ld	s1,8(sp)
    800029cc:	02010113          	addi	sp,sp,32
    800029d0:	00008067          	ret
    800029d4:	00008517          	auipc	a0,0x8
    800029d8:	95c50513          	addi	a0,a0,-1700 # 8000a330 <_ZZN15MemoryAllocator11getInstanceEvE8instance>
    800029dc:	fffff097          	auipc	ra,0xfffff
    800029e0:	324080e7          	jalr	804(ra) # 80001d00 <_ZN15MemoryAllocatorC1Ev>
    800029e4:	00100793          	li	a5,1
    800029e8:	00008717          	auipc	a4,0x8
    800029ec:	94f70023          	sb	a5,-1728(a4) # 8000a328 <_ZGVZN15MemoryAllocator11getInstanceEvE8instance>
    800029f0:	f9dff06f          	j	8000298c <_ZN9Scheduler14putInSchedulerEP12kernelThread+0x24>
            tail = newElem;
    800029f4:	00008797          	auipc	a5,0x8
    800029f8:	94478793          	addi	a5,a5,-1724 # 8000a338 <_ZN9Scheduler16readyThreadQueueE>
    800029fc:	00a7b423          	sd	a0,8(a5)
            head = newElem;
    80002a00:	00a7b023          	sd	a0,0(a5)
    80002a04:	fbdff06f          	j	800029c0 <_ZN9Scheduler14putInSchedulerEP12kernelThread+0x58>

0000000080002a08 <_GLOBAL__sub_I__ZN9Scheduler16readyThreadQueueE>:
    80002a08:	ff010113          	addi	sp,sp,-16
    80002a0c:	00113423          	sd	ra,8(sp)
    80002a10:	00813023          	sd	s0,0(sp)
    80002a14:	01010413          	addi	s0,sp,16
    80002a18:	000105b7          	lui	a1,0x10
    80002a1c:	fff58593          	addi	a1,a1,-1 # ffff <_entry-0x7fff0001>
    80002a20:	00100513          	li	a0,1
    80002a24:	00000097          	auipc	ra,0x0
    80002a28:	e5c080e7          	jalr	-420(ra) # 80002880 <_Z41__static_initialization_and_destruction_0ii>
    80002a2c:	00813083          	ld	ra,8(sp)
    80002a30:	00013403          	ld	s0,0(sp)
    80002a34:	01010113          	addi	sp,sp,16
    80002a38:	00008067          	ret

0000000080002a3c <_ZL16producerKeyboardPv>:
    sem_t wait;
};

static volatile int threadEnd = 0;

static void producerKeyboard(void *arg) {
    80002a3c:	fe010113          	addi	sp,sp,-32
    80002a40:	00113c23          	sd	ra,24(sp)
    80002a44:	00813823          	sd	s0,16(sp)
    80002a48:	00913423          	sd	s1,8(sp)
    80002a4c:	01213023          	sd	s2,0(sp)
    80002a50:	02010413          	addi	s0,sp,32
    80002a54:	00050493          	mv	s1,a0
    struct thread_data *data = (struct thread_data *) arg;

    int key;
    int i = 0;
    80002a58:	00000913          	li	s2,0
    80002a5c:	00c0006f          	j	80002a68 <_ZL16producerKeyboardPv+0x2c>
    while ((key = getc()) != 0x1b) {
        data->buffer->put(key);
        i++;

        if (i % (10 * data->id) == 0) {
            thread_dispatch();
    80002a60:	fffff097          	auipc	ra,0xfffff
    80002a64:	930080e7          	jalr	-1744(ra) # 80001390 <_Z15thread_dispatchv>
    while ((key = getc()) != 0x1b) {
    80002a68:	fffff097          	auipc	ra,0xfffff
    80002a6c:	b00080e7          	jalr	-1280(ra) # 80001568 <_Z4getcv>
    80002a70:	0005059b          	sext.w	a1,a0
    80002a74:	01b00793          	li	a5,27
    80002a78:	02f58a63          	beq	a1,a5,80002aac <_ZL16producerKeyboardPv+0x70>
        data->buffer->put(key);
    80002a7c:	0084b503          	ld	a0,8(s1)
    80002a80:	00003097          	auipc	ra,0x3
    80002a84:	c08080e7          	jalr	-1016(ra) # 80005688 <_ZN6Buffer3putEi>
        i++;
    80002a88:	0019071b          	addiw	a4,s2,1
    80002a8c:	0007091b          	sext.w	s2,a4
        if (i % (10 * data->id) == 0) {
    80002a90:	0004a683          	lw	a3,0(s1)
    80002a94:	0026979b          	slliw	a5,a3,0x2
    80002a98:	00d787bb          	addw	a5,a5,a3
    80002a9c:	0017979b          	slliw	a5,a5,0x1
    80002aa0:	02f767bb          	remw	a5,a4,a5
    80002aa4:	fc0792e3          	bnez	a5,80002a68 <_ZL16producerKeyboardPv+0x2c>
    80002aa8:	fb9ff06f          	j	80002a60 <_ZL16producerKeyboardPv+0x24>
        }
    }

    threadEnd = 1;
    80002aac:	00100793          	li	a5,1
    80002ab0:	00008717          	auipc	a4,0x8
    80002ab4:	88f72c23          	sw	a5,-1896(a4) # 8000a348 <_ZL9threadEnd>
    data->buffer->put('!');
    80002ab8:	02100593          	li	a1,33
    80002abc:	0084b503          	ld	a0,8(s1)
    80002ac0:	00003097          	auipc	ra,0x3
    80002ac4:	bc8080e7          	jalr	-1080(ra) # 80005688 <_ZN6Buffer3putEi>

    sem_signal(data->wait);
    80002ac8:	0104b503          	ld	a0,16(s1)
    80002acc:	fffff097          	auipc	ra,0xfffff
    80002ad0:	a04080e7          	jalr	-1532(ra) # 800014d0 <_Z10sem_signalP15kernelSemaphore>
}
    80002ad4:	01813083          	ld	ra,24(sp)
    80002ad8:	01013403          	ld	s0,16(sp)
    80002adc:	00813483          	ld	s1,8(sp)
    80002ae0:	00013903          	ld	s2,0(sp)
    80002ae4:	02010113          	addi	sp,sp,32
    80002ae8:	00008067          	ret

0000000080002aec <_ZL8producerPv>:

static void producer(void *arg) {
    80002aec:	fe010113          	addi	sp,sp,-32
    80002af0:	00113c23          	sd	ra,24(sp)
    80002af4:	00813823          	sd	s0,16(sp)
    80002af8:	00913423          	sd	s1,8(sp)
    80002afc:	01213023          	sd	s2,0(sp)
    80002b00:	02010413          	addi	s0,sp,32
    80002b04:	00050493          	mv	s1,a0
    struct thread_data *data = (struct thread_data *) arg;

    int i = 0;
    80002b08:	00000913          	li	s2,0
    80002b0c:	00c0006f          	j	80002b18 <_ZL8producerPv+0x2c>
    while (!threadEnd) {
        data->buffer->put(data->id + '0');
        i++;

        if (i % (10 * data->id) == 0) {
            thread_dispatch();
    80002b10:	fffff097          	auipc	ra,0xfffff
    80002b14:	880080e7          	jalr	-1920(ra) # 80001390 <_Z15thread_dispatchv>
    while (!threadEnd) {
    80002b18:	00008797          	auipc	a5,0x8
    80002b1c:	8307a783          	lw	a5,-2000(a5) # 8000a348 <_ZL9threadEnd>
    80002b20:	02079e63          	bnez	a5,80002b5c <_ZL8producerPv+0x70>
        data->buffer->put(data->id + '0');
    80002b24:	0004a583          	lw	a1,0(s1)
    80002b28:	0305859b          	addiw	a1,a1,48
    80002b2c:	0084b503          	ld	a0,8(s1)
    80002b30:	00003097          	auipc	ra,0x3
    80002b34:	b58080e7          	jalr	-1192(ra) # 80005688 <_ZN6Buffer3putEi>
        i++;
    80002b38:	0019071b          	addiw	a4,s2,1
    80002b3c:	0007091b          	sext.w	s2,a4
        if (i % (10 * data->id) == 0) {
    80002b40:	0004a683          	lw	a3,0(s1)
    80002b44:	0026979b          	slliw	a5,a3,0x2
    80002b48:	00d787bb          	addw	a5,a5,a3
    80002b4c:	0017979b          	slliw	a5,a5,0x1
    80002b50:	02f767bb          	remw	a5,a4,a5
    80002b54:	fc0792e3          	bnez	a5,80002b18 <_ZL8producerPv+0x2c>
    80002b58:	fb9ff06f          	j	80002b10 <_ZL8producerPv+0x24>
        }
    }

    sem_signal(data->wait);
    80002b5c:	0104b503          	ld	a0,16(s1)
    80002b60:	fffff097          	auipc	ra,0xfffff
    80002b64:	970080e7          	jalr	-1680(ra) # 800014d0 <_Z10sem_signalP15kernelSemaphore>
}
    80002b68:	01813083          	ld	ra,24(sp)
    80002b6c:	01013403          	ld	s0,16(sp)
    80002b70:	00813483          	ld	s1,8(sp)
    80002b74:	00013903          	ld	s2,0(sp)
    80002b78:	02010113          	addi	sp,sp,32
    80002b7c:	00008067          	ret

0000000080002b80 <_ZL8consumerPv>:

static void consumer(void *arg) {
    80002b80:	fd010113          	addi	sp,sp,-48
    80002b84:	02113423          	sd	ra,40(sp)
    80002b88:	02813023          	sd	s0,32(sp)
    80002b8c:	00913c23          	sd	s1,24(sp)
    80002b90:	01213823          	sd	s2,16(sp)
    80002b94:	01313423          	sd	s3,8(sp)
    80002b98:	03010413          	addi	s0,sp,48
    80002b9c:	00050913          	mv	s2,a0
    struct thread_data *data = (struct thread_data *) arg;

    int i = 0;
    80002ba0:	00000993          	li	s3,0
    80002ba4:	01c0006f          	j	80002bc0 <_ZL8consumerPv+0x40>
        i++;

        putc(key);

        if (i % (5 * data->id) == 0) {
            thread_dispatch();
    80002ba8:	ffffe097          	auipc	ra,0xffffe
    80002bac:	7e8080e7          	jalr	2024(ra) # 80001390 <_Z15thread_dispatchv>
    80002bb0:	0500006f          	j	80002c00 <_ZL8consumerPv+0x80>
        }

        if (i % 80 == 0) {
            putc('\n');
    80002bb4:	00a00513          	li	a0,10
    80002bb8:	fffff097          	auipc	ra,0xfffff
    80002bbc:	9ec080e7          	jalr	-1556(ra) # 800015a4 <_Z4putcc>
    while (!threadEnd) {
    80002bc0:	00007797          	auipc	a5,0x7
    80002bc4:	7887a783          	lw	a5,1928(a5) # 8000a348 <_ZL9threadEnd>
    80002bc8:	06079063          	bnez	a5,80002c28 <_ZL8consumerPv+0xa8>
        int key = data->buffer->get();
    80002bcc:	00893503          	ld	a0,8(s2)
    80002bd0:	00003097          	auipc	ra,0x3
    80002bd4:	b48080e7          	jalr	-1208(ra) # 80005718 <_ZN6Buffer3getEv>
        i++;
    80002bd8:	0019849b          	addiw	s1,s3,1
    80002bdc:	0004899b          	sext.w	s3,s1
        putc(key);
    80002be0:	0ff57513          	andi	a0,a0,255
    80002be4:	fffff097          	auipc	ra,0xfffff
    80002be8:	9c0080e7          	jalr	-1600(ra) # 800015a4 <_Z4putcc>
        if (i % (5 * data->id) == 0) {
    80002bec:	00092703          	lw	a4,0(s2)
    80002bf0:	0027179b          	slliw	a5,a4,0x2
    80002bf4:	00e787bb          	addw	a5,a5,a4
    80002bf8:	02f4e7bb          	remw	a5,s1,a5
    80002bfc:	fa0786e3          	beqz	a5,80002ba8 <_ZL8consumerPv+0x28>
        if (i % 80 == 0) {
    80002c00:	05000793          	li	a5,80
    80002c04:	02f4e4bb          	remw	s1,s1,a5
    80002c08:	fa049ce3          	bnez	s1,80002bc0 <_ZL8consumerPv+0x40>
    80002c0c:	fa9ff06f          	j	80002bb4 <_ZL8consumerPv+0x34>
        }
    }

    while (data->buffer->getCnt() > 0) {
        int key = data->buffer->get();
    80002c10:	00893503          	ld	a0,8(s2)
    80002c14:	00003097          	auipc	ra,0x3
    80002c18:	b04080e7          	jalr	-1276(ra) # 80005718 <_ZN6Buffer3getEv>
        putc(key);
    80002c1c:	0ff57513          	andi	a0,a0,255
    80002c20:	fffff097          	auipc	ra,0xfffff
    80002c24:	984080e7          	jalr	-1660(ra) # 800015a4 <_Z4putcc>
    while (data->buffer->getCnt() > 0) {
    80002c28:	00893503          	ld	a0,8(s2)
    80002c2c:	00003097          	auipc	ra,0x3
    80002c30:	b78080e7          	jalr	-1160(ra) # 800057a4 <_ZN6Buffer6getCntEv>
    80002c34:	fca04ee3          	bgtz	a0,80002c10 <_ZL8consumerPv+0x90>
    }

    sem_signal(data->wait);
    80002c38:	01093503          	ld	a0,16(s2)
    80002c3c:	fffff097          	auipc	ra,0xfffff
    80002c40:	894080e7          	jalr	-1900(ra) # 800014d0 <_Z10sem_signalP15kernelSemaphore>
}
    80002c44:	02813083          	ld	ra,40(sp)
    80002c48:	02013403          	ld	s0,32(sp)
    80002c4c:	01813483          	ld	s1,24(sp)
    80002c50:	01013903          	ld	s2,16(sp)
    80002c54:	00813983          	ld	s3,8(sp)
    80002c58:	03010113          	addi	sp,sp,48
    80002c5c:	00008067          	ret

0000000080002c60 <_Z22producerConsumer_C_APIv>:

void producerConsumer_C_API() {
    80002c60:	f9010113          	addi	sp,sp,-112
    80002c64:	06113423          	sd	ra,104(sp)
    80002c68:	06813023          	sd	s0,96(sp)
    80002c6c:	04913c23          	sd	s1,88(sp)
    80002c70:	05213823          	sd	s2,80(sp)
    80002c74:	05313423          	sd	s3,72(sp)
    80002c78:	05413023          	sd	s4,64(sp)
    80002c7c:	03513c23          	sd	s5,56(sp)
    80002c80:	03613823          	sd	s6,48(sp)
    80002c84:	07010413          	addi	s0,sp,112
        sem_wait(waitForAll);
    }

    sem_close(waitForAll);

    delete buffer;
    80002c88:	00010b13          	mv	s6,sp
    printString("Unesite broj proizvodjaca?\n");
    80002c8c:	00005517          	auipc	a0,0x5
    80002c90:	54450513          	addi	a0,a0,1348 # 800081d0 <_ZZ12printIntegermE6digits+0x198>
    80002c94:	00002097          	auipc	ra,0x2
    80002c98:	ad0080e7          	jalr	-1328(ra) # 80004764 <_Z11printStringPKc>
    getString(input, 30);
    80002c9c:	01e00593          	li	a1,30
    80002ca0:	fa040493          	addi	s1,s0,-96
    80002ca4:	00048513          	mv	a0,s1
    80002ca8:	00002097          	auipc	ra,0x2
    80002cac:	b44080e7          	jalr	-1212(ra) # 800047ec <_Z9getStringPci>
    threadNum = stringToInt(input);
    80002cb0:	00048513          	mv	a0,s1
    80002cb4:	00002097          	auipc	ra,0x2
    80002cb8:	c10080e7          	jalr	-1008(ra) # 800048c4 <_Z11stringToIntPKc>
    80002cbc:	00050913          	mv	s2,a0
    printString("Unesite velicinu bafera?\n");
    80002cc0:	00005517          	auipc	a0,0x5
    80002cc4:	53050513          	addi	a0,a0,1328 # 800081f0 <_ZZ12printIntegermE6digits+0x1b8>
    80002cc8:	00002097          	auipc	ra,0x2
    80002ccc:	a9c080e7          	jalr	-1380(ra) # 80004764 <_Z11printStringPKc>
    getString(input, 30);
    80002cd0:	01e00593          	li	a1,30
    80002cd4:	00048513          	mv	a0,s1
    80002cd8:	00002097          	auipc	ra,0x2
    80002cdc:	b14080e7          	jalr	-1260(ra) # 800047ec <_Z9getStringPci>
    n = stringToInt(input);
    80002ce0:	00048513          	mv	a0,s1
    80002ce4:	00002097          	auipc	ra,0x2
    80002ce8:	be0080e7          	jalr	-1056(ra) # 800048c4 <_Z11stringToIntPKc>
    80002cec:	00050493          	mv	s1,a0
    printString("Broj proizvodjaca "); printInt(threadNum);
    80002cf0:	00005517          	auipc	a0,0x5
    80002cf4:	52050513          	addi	a0,a0,1312 # 80008210 <_ZZ12printIntegermE6digits+0x1d8>
    80002cf8:	00002097          	auipc	ra,0x2
    80002cfc:	a6c080e7          	jalr	-1428(ra) # 80004764 <_Z11printStringPKc>
    80002d00:	00000613          	li	a2,0
    80002d04:	00a00593          	li	a1,10
    80002d08:	00090513          	mv	a0,s2
    80002d0c:	00002097          	auipc	ra,0x2
    80002d10:	c08080e7          	jalr	-1016(ra) # 80004914 <_Z8printIntiii>
    printString(" i velicina bafera "); printInt(n);
    80002d14:	00005517          	auipc	a0,0x5
    80002d18:	51450513          	addi	a0,a0,1300 # 80008228 <_ZZ12printIntegermE6digits+0x1f0>
    80002d1c:	00002097          	auipc	ra,0x2
    80002d20:	a48080e7          	jalr	-1464(ra) # 80004764 <_Z11printStringPKc>
    80002d24:	00000613          	li	a2,0
    80002d28:	00a00593          	li	a1,10
    80002d2c:	00048513          	mv	a0,s1
    80002d30:	00002097          	auipc	ra,0x2
    80002d34:	be4080e7          	jalr	-1052(ra) # 80004914 <_Z8printIntiii>
    printString(".\n");
    80002d38:	00005517          	auipc	a0,0x5
    80002d3c:	50850513          	addi	a0,a0,1288 # 80008240 <_ZZ12printIntegermE6digits+0x208>
    80002d40:	00002097          	auipc	ra,0x2
    80002d44:	a24080e7          	jalr	-1500(ra) # 80004764 <_Z11printStringPKc>
    if(threadNum > n) {
    80002d48:	0324c463          	blt	s1,s2,80002d70 <_Z22producerConsumer_C_APIv+0x110>
    } else if (threadNum < 1) {
    80002d4c:	03205c63          	blez	s2,80002d84 <_Z22producerConsumer_C_APIv+0x124>
    Buffer *buffer = new Buffer(n);
    80002d50:	03800513          	li	a0,56
    80002d54:	fffff097          	auipc	ra,0xfffff
    80002d58:	3d4080e7          	jalr	980(ra) # 80002128 <_Znwm>
    80002d5c:	00050a13          	mv	s4,a0
    80002d60:	00048593          	mv	a1,s1
    80002d64:	00002097          	auipc	ra,0x2
    80002d68:	7f8080e7          	jalr	2040(ra) # 8000555c <_ZN6BufferC1Ei>
    80002d6c:	0300006f          	j	80002d9c <_Z22producerConsumer_C_APIv+0x13c>
        printString("Broj proizvodjaca ne sme biti manji od velicine bafera!\n");
    80002d70:	00005517          	auipc	a0,0x5
    80002d74:	4d850513          	addi	a0,a0,1240 # 80008248 <_ZZ12printIntegermE6digits+0x210>
    80002d78:	00002097          	auipc	ra,0x2
    80002d7c:	9ec080e7          	jalr	-1556(ra) # 80004764 <_Z11printStringPKc>
        return;
    80002d80:	0140006f          	j	80002d94 <_Z22producerConsumer_C_APIv+0x134>
        printString("Broj proizvodjaca mora biti veci od nula!\n");
    80002d84:	00005517          	auipc	a0,0x5
    80002d88:	50450513          	addi	a0,a0,1284 # 80008288 <_ZZ12printIntegermE6digits+0x250>
    80002d8c:	00002097          	auipc	ra,0x2
    80002d90:	9d8080e7          	jalr	-1576(ra) # 80004764 <_Z11printStringPKc>
        return;
    80002d94:	000b0113          	mv	sp,s6
    80002d98:	1500006f          	j	80002ee8 <_Z22producerConsumer_C_APIv+0x288>
    sem_open(&waitForAll, 0);
    80002d9c:	00000593          	li	a1,0
    80002da0:	00007517          	auipc	a0,0x7
    80002da4:	5b050513          	addi	a0,a0,1456 # 8000a350 <_ZL10waitForAll>
    80002da8:	ffffe097          	auipc	ra,0xffffe
    80002dac:	654080e7          	jalr	1620(ra) # 800013fc <_Z8sem_openPP15kernelSemaphorej>
    thread_t threads[threadNum];
    80002db0:	00391793          	slli	a5,s2,0x3
    80002db4:	00f78793          	addi	a5,a5,15
    80002db8:	ff07f793          	andi	a5,a5,-16
    80002dbc:	40f10133          	sub	sp,sp,a5
    80002dc0:	00010a93          	mv	s5,sp
    struct thread_data data[threadNum + 1];
    80002dc4:	0019071b          	addiw	a4,s2,1
    80002dc8:	00171793          	slli	a5,a4,0x1
    80002dcc:	00e787b3          	add	a5,a5,a4
    80002dd0:	00379793          	slli	a5,a5,0x3
    80002dd4:	00f78793          	addi	a5,a5,15
    80002dd8:	ff07f793          	andi	a5,a5,-16
    80002ddc:	40f10133          	sub	sp,sp,a5
    80002de0:	00010993          	mv	s3,sp
    data[threadNum].id = threadNum;
    80002de4:	00191613          	slli	a2,s2,0x1
    80002de8:	012607b3          	add	a5,a2,s2
    80002dec:	00379793          	slli	a5,a5,0x3
    80002df0:	00f987b3          	add	a5,s3,a5
    80002df4:	0127a023          	sw	s2,0(a5)
    data[threadNum].buffer = buffer;
    80002df8:	0147b423          	sd	s4,8(a5)
    data[threadNum].wait = waitForAll;
    80002dfc:	00007717          	auipc	a4,0x7
    80002e00:	55473703          	ld	a4,1364(a4) # 8000a350 <_ZL10waitForAll>
    80002e04:	00e7b823          	sd	a4,16(a5)
    thread_create(&consumerThread, consumer, data + threadNum);
    80002e08:	00078613          	mv	a2,a5
    80002e0c:	00000597          	auipc	a1,0x0
    80002e10:	d7458593          	addi	a1,a1,-652 # 80002b80 <_ZL8consumerPv>
    80002e14:	f9840513          	addi	a0,s0,-104
    80002e18:	ffffe097          	auipc	ra,0xffffe
    80002e1c:	4b4080e7          	jalr	1204(ra) # 800012cc <_Z13thread_createPP12kernelThreadPFvPvES2_>
    for (int i = 0; i < threadNum; i++) {
    80002e20:	00000493          	li	s1,0
    80002e24:	0280006f          	j	80002e4c <_Z22producerConsumer_C_APIv+0x1ec>
        thread_create(threads + i,
    80002e28:	00000597          	auipc	a1,0x0
    80002e2c:	c1458593          	addi	a1,a1,-1004 # 80002a3c <_ZL16producerKeyboardPv>
                      data + i);
    80002e30:	00179613          	slli	a2,a5,0x1
    80002e34:	00f60633          	add	a2,a2,a5
    80002e38:	00361613          	slli	a2,a2,0x3
        thread_create(threads + i,
    80002e3c:	00c98633          	add	a2,s3,a2
    80002e40:	ffffe097          	auipc	ra,0xffffe
    80002e44:	48c080e7          	jalr	1164(ra) # 800012cc <_Z13thread_createPP12kernelThreadPFvPvES2_>
    for (int i = 0; i < threadNum; i++) {
    80002e48:	0014849b          	addiw	s1,s1,1
    80002e4c:	0524d263          	bge	s1,s2,80002e90 <_Z22producerConsumer_C_APIv+0x230>
        data[i].id = i;
    80002e50:	00149793          	slli	a5,s1,0x1
    80002e54:	009787b3          	add	a5,a5,s1
    80002e58:	00379793          	slli	a5,a5,0x3
    80002e5c:	00f987b3          	add	a5,s3,a5
    80002e60:	0097a023          	sw	s1,0(a5)
        data[i].buffer = buffer;
    80002e64:	0147b423          	sd	s4,8(a5)
        data[i].wait = waitForAll;
    80002e68:	00007717          	auipc	a4,0x7
    80002e6c:	4e873703          	ld	a4,1256(a4) # 8000a350 <_ZL10waitForAll>
    80002e70:	00e7b823          	sd	a4,16(a5)
        thread_create(threads + i,
    80002e74:	00048793          	mv	a5,s1
    80002e78:	00349513          	slli	a0,s1,0x3
    80002e7c:	00aa8533          	add	a0,s5,a0
    80002e80:	fa9054e3          	blez	s1,80002e28 <_Z22producerConsumer_C_APIv+0x1c8>
    80002e84:	00000597          	auipc	a1,0x0
    80002e88:	c6858593          	addi	a1,a1,-920 # 80002aec <_ZL8producerPv>
    80002e8c:	fa5ff06f          	j	80002e30 <_Z22producerConsumer_C_APIv+0x1d0>
    thread_dispatch();
    80002e90:	ffffe097          	auipc	ra,0xffffe
    80002e94:	500080e7          	jalr	1280(ra) # 80001390 <_Z15thread_dispatchv>
    for (int i = 0; i <= threadNum; i++) {
    80002e98:	00000493          	li	s1,0
    80002e9c:	00994e63          	blt	s2,s1,80002eb8 <_Z22producerConsumer_C_APIv+0x258>
        sem_wait(waitForAll);
    80002ea0:	00007517          	auipc	a0,0x7
    80002ea4:	4b053503          	ld	a0,1200(a0) # 8000a350 <_ZL10waitForAll>
    80002ea8:	ffffe097          	auipc	ra,0xffffe
    80002eac:	5dc080e7          	jalr	1500(ra) # 80001484 <_Z8sem_waitP15kernelSemaphore>
    for (int i = 0; i <= threadNum; i++) {
    80002eb0:	0014849b          	addiw	s1,s1,1
    80002eb4:	fe9ff06f          	j	80002e9c <_Z22producerConsumer_C_APIv+0x23c>
    sem_close(waitForAll);
    80002eb8:	00007517          	auipc	a0,0x7
    80002ebc:	49853503          	ld	a0,1176(a0) # 8000a350 <_ZL10waitForAll>
    80002ec0:	ffffe097          	auipc	ra,0xffffe
    80002ec4:	584080e7          	jalr	1412(ra) # 80001444 <_Z9sem_closeP15kernelSemaphore>
    delete buffer;
    80002ec8:	000a0e63          	beqz	s4,80002ee4 <_Z22producerConsumer_C_APIv+0x284>
    80002ecc:	000a0513          	mv	a0,s4
    80002ed0:	00003097          	auipc	ra,0x3
    80002ed4:	95c080e7          	jalr	-1700(ra) # 8000582c <_ZN6BufferD1Ev>
    80002ed8:	000a0513          	mv	a0,s4
    80002edc:	fffff097          	auipc	ra,0xfffff
    80002ee0:	124080e7          	jalr	292(ra) # 80002000 <_ZdlPv>
    80002ee4:	000b0113          	mv	sp,s6

}
    80002ee8:	f9040113          	addi	sp,s0,-112
    80002eec:	06813083          	ld	ra,104(sp)
    80002ef0:	06013403          	ld	s0,96(sp)
    80002ef4:	05813483          	ld	s1,88(sp)
    80002ef8:	05013903          	ld	s2,80(sp)
    80002efc:	04813983          	ld	s3,72(sp)
    80002f00:	04013a03          	ld	s4,64(sp)
    80002f04:	03813a83          	ld	s5,56(sp)
    80002f08:	03013b03          	ld	s6,48(sp)
    80002f0c:	07010113          	addi	sp,sp,112
    80002f10:	00008067          	ret
    80002f14:	00050493          	mv	s1,a0
    Buffer *buffer = new Buffer(n);
    80002f18:	000a0513          	mv	a0,s4
    80002f1c:	fffff097          	auipc	ra,0xfffff
    80002f20:	0e4080e7          	jalr	228(ra) # 80002000 <_ZdlPv>
    80002f24:	00048513          	mv	a0,s1
    80002f28:	00008097          	auipc	ra,0x8
    80002f2c:	520080e7          	jalr	1312(ra) # 8000b448 <_Unwind_Resume>

0000000080002f30 <_ZL9fibonaccim>:
static volatile bool finishedA = false;
static volatile bool finishedB = false;
static volatile bool finishedC = false;
static volatile bool finishedD = false;

static uint64 fibonacci(uint64 n) {
    80002f30:	fe010113          	addi	sp,sp,-32
    80002f34:	00113c23          	sd	ra,24(sp)
    80002f38:	00813823          	sd	s0,16(sp)
    80002f3c:	00913423          	sd	s1,8(sp)
    80002f40:	01213023          	sd	s2,0(sp)
    80002f44:	02010413          	addi	s0,sp,32
    80002f48:	00050493          	mv	s1,a0
    if (n == 0 || n == 1) { return n; }
    80002f4c:	00100793          	li	a5,1
    80002f50:	02a7f863          	bgeu	a5,a0,80002f80 <_ZL9fibonaccim+0x50>
    if (n % 10 == 0) { thread_dispatch(); }
    80002f54:	00a00793          	li	a5,10
    80002f58:	02f577b3          	remu	a5,a0,a5
    80002f5c:	02078e63          	beqz	a5,80002f98 <_ZL9fibonaccim+0x68>
    return fibonacci(n - 1) + fibonacci(n - 2);
    80002f60:	fff48513          	addi	a0,s1,-1
    80002f64:	00000097          	auipc	ra,0x0
    80002f68:	fcc080e7          	jalr	-52(ra) # 80002f30 <_ZL9fibonaccim>
    80002f6c:	00050913          	mv	s2,a0
    80002f70:	ffe48513          	addi	a0,s1,-2
    80002f74:	00000097          	auipc	ra,0x0
    80002f78:	fbc080e7          	jalr	-68(ra) # 80002f30 <_ZL9fibonaccim>
    80002f7c:	00a90533          	add	a0,s2,a0
}
    80002f80:	01813083          	ld	ra,24(sp)
    80002f84:	01013403          	ld	s0,16(sp)
    80002f88:	00813483          	ld	s1,8(sp)
    80002f8c:	00013903          	ld	s2,0(sp)
    80002f90:	02010113          	addi	sp,sp,32
    80002f94:	00008067          	ret
    if (n % 10 == 0) { thread_dispatch(); }
    80002f98:	ffffe097          	auipc	ra,0xffffe
    80002f9c:	3f8080e7          	jalr	1016(ra) # 80001390 <_Z15thread_dispatchv>
    80002fa0:	fc1ff06f          	j	80002f60 <_ZL9fibonaccim+0x30>

0000000080002fa4 <_ZN7WorkerA11workerBodyAEPv>:
    void run() override {
        workerBodyD(nullptr);
    }
};

void WorkerA::workerBodyA(void *arg) {
    80002fa4:	fe010113          	addi	sp,sp,-32
    80002fa8:	00113c23          	sd	ra,24(sp)
    80002fac:	00813823          	sd	s0,16(sp)
    80002fb0:	00913423          	sd	s1,8(sp)
    80002fb4:	01213023          	sd	s2,0(sp)
    80002fb8:	02010413          	addi	s0,sp,32
    for (uint64 i = 0; i < 10; i++) {
    80002fbc:	00000913          	li	s2,0
    80002fc0:	0380006f          	j	80002ff8 <_ZN7WorkerA11workerBodyAEPv+0x54>
        printString("A: i="); printInt(i); printString("\n");
        for (uint64 j = 0; j < 10000; j++) {
            for (uint64 k = 0; k < 30000; k++) { /* busy wait */ }
            thread_dispatch();
    80002fc4:	ffffe097          	auipc	ra,0xffffe
    80002fc8:	3cc080e7          	jalr	972(ra) # 80001390 <_Z15thread_dispatchv>
        for (uint64 j = 0; j < 10000; j++) {
    80002fcc:	00148493          	addi	s1,s1,1
    80002fd0:	000027b7          	lui	a5,0x2
    80002fd4:	70f78793          	addi	a5,a5,1807 # 270f <_entry-0x7fffd8f1>
    80002fd8:	0097ee63          	bltu	a5,s1,80002ff4 <_ZN7WorkerA11workerBodyAEPv+0x50>
            for (uint64 k = 0; k < 30000; k++) { /* busy wait */ }
    80002fdc:	00000713          	li	a4,0
    80002fe0:	000077b7          	lui	a5,0x7
    80002fe4:	52f78793          	addi	a5,a5,1327 # 752f <_entry-0x7fff8ad1>
    80002fe8:	fce7eee3          	bltu	a5,a4,80002fc4 <_ZN7WorkerA11workerBodyAEPv+0x20>
    80002fec:	00170713          	addi	a4,a4,1
    80002ff0:	ff1ff06f          	j	80002fe0 <_ZN7WorkerA11workerBodyAEPv+0x3c>
    for (uint64 i = 0; i < 10; i++) {
    80002ff4:	00190913          	addi	s2,s2,1
    80002ff8:	00900793          	li	a5,9
    80002ffc:	0527e063          	bltu	a5,s2,8000303c <_ZN7WorkerA11workerBodyAEPv+0x98>
        printString("A: i="); printInt(i); printString("\n");
    80003000:	00005517          	auipc	a0,0x5
    80003004:	2b850513          	addi	a0,a0,696 # 800082b8 <_ZZ12printIntegermE6digits+0x280>
    80003008:	00001097          	auipc	ra,0x1
    8000300c:	75c080e7          	jalr	1884(ra) # 80004764 <_Z11printStringPKc>
    80003010:	00000613          	li	a2,0
    80003014:	00a00593          	li	a1,10
    80003018:	0009051b          	sext.w	a0,s2
    8000301c:	00002097          	auipc	ra,0x2
    80003020:	8f8080e7          	jalr	-1800(ra) # 80004914 <_Z8printIntiii>
    80003024:	00005517          	auipc	a0,0x5
    80003028:	59450513          	addi	a0,a0,1428 # 800085b8 <_ZZ12printIntegermE6digits+0x580>
    8000302c:	00001097          	auipc	ra,0x1
    80003030:	738080e7          	jalr	1848(ra) # 80004764 <_Z11printStringPKc>
        for (uint64 j = 0; j < 10000; j++) {
    80003034:	00000493          	li	s1,0
    80003038:	f99ff06f          	j	80002fd0 <_ZN7WorkerA11workerBodyAEPv+0x2c>
        }
    }
    printString("A finished!\n");
    8000303c:	00005517          	auipc	a0,0x5
    80003040:	28450513          	addi	a0,a0,644 # 800082c0 <_ZZ12printIntegermE6digits+0x288>
    80003044:	00001097          	auipc	ra,0x1
    80003048:	720080e7          	jalr	1824(ra) # 80004764 <_Z11printStringPKc>
    finishedA = true;
    8000304c:	00100793          	li	a5,1
    80003050:	00007717          	auipc	a4,0x7
    80003054:	30f70423          	sb	a5,776(a4) # 8000a358 <_ZL9finishedA>
}
    80003058:	01813083          	ld	ra,24(sp)
    8000305c:	01013403          	ld	s0,16(sp)
    80003060:	00813483          	ld	s1,8(sp)
    80003064:	00013903          	ld	s2,0(sp)
    80003068:	02010113          	addi	sp,sp,32
    8000306c:	00008067          	ret

0000000080003070 <_ZN7WorkerB11workerBodyBEPv>:

void WorkerB::workerBodyB(void *arg) {
    80003070:	fe010113          	addi	sp,sp,-32
    80003074:	00113c23          	sd	ra,24(sp)
    80003078:	00813823          	sd	s0,16(sp)
    8000307c:	00913423          	sd	s1,8(sp)
    80003080:	01213023          	sd	s2,0(sp)
    80003084:	02010413          	addi	s0,sp,32
    for (uint64 i = 0; i < 16; i++) {
    80003088:	00000913          	li	s2,0
    8000308c:	0380006f          	j	800030c4 <_ZN7WorkerB11workerBodyBEPv+0x54>
        printString("B: i="); printInt(i); printString("\n");
        for (uint64 j = 0; j < 10000; j++) {
            for (uint64 k = 0; k < 30000; k++) { /* busy wait */ }
            thread_dispatch();
    80003090:	ffffe097          	auipc	ra,0xffffe
    80003094:	300080e7          	jalr	768(ra) # 80001390 <_Z15thread_dispatchv>
        for (uint64 j = 0; j < 10000; j++) {
    80003098:	00148493          	addi	s1,s1,1
    8000309c:	000027b7          	lui	a5,0x2
    800030a0:	70f78793          	addi	a5,a5,1807 # 270f <_entry-0x7fffd8f1>
    800030a4:	0097ee63          	bltu	a5,s1,800030c0 <_ZN7WorkerB11workerBodyBEPv+0x50>
            for (uint64 k = 0; k < 30000; k++) { /* busy wait */ }
    800030a8:	00000713          	li	a4,0
    800030ac:	000077b7          	lui	a5,0x7
    800030b0:	52f78793          	addi	a5,a5,1327 # 752f <_entry-0x7fff8ad1>
    800030b4:	fce7eee3          	bltu	a5,a4,80003090 <_ZN7WorkerB11workerBodyBEPv+0x20>
    800030b8:	00170713          	addi	a4,a4,1
    800030bc:	ff1ff06f          	j	800030ac <_ZN7WorkerB11workerBodyBEPv+0x3c>
    for (uint64 i = 0; i < 16; i++) {
    800030c0:	00190913          	addi	s2,s2,1
    800030c4:	00f00793          	li	a5,15
    800030c8:	0527e063          	bltu	a5,s2,80003108 <_ZN7WorkerB11workerBodyBEPv+0x98>
        printString("B: i="); printInt(i); printString("\n");
    800030cc:	00005517          	auipc	a0,0x5
    800030d0:	20450513          	addi	a0,a0,516 # 800082d0 <_ZZ12printIntegermE6digits+0x298>
    800030d4:	00001097          	auipc	ra,0x1
    800030d8:	690080e7          	jalr	1680(ra) # 80004764 <_Z11printStringPKc>
    800030dc:	00000613          	li	a2,0
    800030e0:	00a00593          	li	a1,10
    800030e4:	0009051b          	sext.w	a0,s2
    800030e8:	00002097          	auipc	ra,0x2
    800030ec:	82c080e7          	jalr	-2004(ra) # 80004914 <_Z8printIntiii>
    800030f0:	00005517          	auipc	a0,0x5
    800030f4:	4c850513          	addi	a0,a0,1224 # 800085b8 <_ZZ12printIntegermE6digits+0x580>
    800030f8:	00001097          	auipc	ra,0x1
    800030fc:	66c080e7          	jalr	1644(ra) # 80004764 <_Z11printStringPKc>
        for (uint64 j = 0; j < 10000; j++) {
    80003100:	00000493          	li	s1,0
    80003104:	f99ff06f          	j	8000309c <_ZN7WorkerB11workerBodyBEPv+0x2c>
        }
    }
    printString("B finished!\n");
    80003108:	00005517          	auipc	a0,0x5
    8000310c:	1d050513          	addi	a0,a0,464 # 800082d8 <_ZZ12printIntegermE6digits+0x2a0>
    80003110:	00001097          	auipc	ra,0x1
    80003114:	654080e7          	jalr	1620(ra) # 80004764 <_Z11printStringPKc>
    finishedB = true;
    80003118:	00100793          	li	a5,1
    8000311c:	00007717          	auipc	a4,0x7
    80003120:	22f70ea3          	sb	a5,573(a4) # 8000a359 <_ZL9finishedB>
    thread_dispatch();
    80003124:	ffffe097          	auipc	ra,0xffffe
    80003128:	26c080e7          	jalr	620(ra) # 80001390 <_Z15thread_dispatchv>
}
    8000312c:	01813083          	ld	ra,24(sp)
    80003130:	01013403          	ld	s0,16(sp)
    80003134:	00813483          	ld	s1,8(sp)
    80003138:	00013903          	ld	s2,0(sp)
    8000313c:	02010113          	addi	sp,sp,32
    80003140:	00008067          	ret

0000000080003144 <_ZN7WorkerC11workerBodyCEPv>:

void WorkerC::workerBodyC(void *arg) {
    80003144:	fe010113          	addi	sp,sp,-32
    80003148:	00113c23          	sd	ra,24(sp)
    8000314c:	00813823          	sd	s0,16(sp)
    80003150:	00913423          	sd	s1,8(sp)
    80003154:	01213023          	sd	s2,0(sp)
    80003158:	02010413          	addi	s0,sp,32
    uint8 i = 0;
    8000315c:	00000493          	li	s1,0
    80003160:	0400006f          	j	800031a0 <_ZN7WorkerC11workerBodyCEPv+0x5c>
    for (; i < 3; i++) {
        printString("C: i="); printInt(i); printString("\n");
    80003164:	00005517          	auipc	a0,0x5
    80003168:	18450513          	addi	a0,a0,388 # 800082e8 <_ZZ12printIntegermE6digits+0x2b0>
    8000316c:	00001097          	auipc	ra,0x1
    80003170:	5f8080e7          	jalr	1528(ra) # 80004764 <_Z11printStringPKc>
    80003174:	00000613          	li	a2,0
    80003178:	00a00593          	li	a1,10
    8000317c:	00048513          	mv	a0,s1
    80003180:	00001097          	auipc	ra,0x1
    80003184:	794080e7          	jalr	1940(ra) # 80004914 <_Z8printIntiii>
    80003188:	00005517          	auipc	a0,0x5
    8000318c:	43050513          	addi	a0,a0,1072 # 800085b8 <_ZZ12printIntegermE6digits+0x580>
    80003190:	00001097          	auipc	ra,0x1
    80003194:	5d4080e7          	jalr	1492(ra) # 80004764 <_Z11printStringPKc>
    for (; i < 3; i++) {
    80003198:	0014849b          	addiw	s1,s1,1
    8000319c:	0ff4f493          	andi	s1,s1,255
    800031a0:	00200793          	li	a5,2
    800031a4:	fc97f0e3          	bgeu	a5,s1,80003164 <_ZN7WorkerC11workerBodyCEPv+0x20>
    }

    printString("C: dispatch\n");
    800031a8:	00005517          	auipc	a0,0x5
    800031ac:	14850513          	addi	a0,a0,328 # 800082f0 <_ZZ12printIntegermE6digits+0x2b8>
    800031b0:	00001097          	auipc	ra,0x1
    800031b4:	5b4080e7          	jalr	1460(ra) # 80004764 <_Z11printStringPKc>
    __asm__ ("li t1, 7");
    800031b8:	00700313          	li	t1,7
    thread_dispatch();
    800031bc:	ffffe097          	auipc	ra,0xffffe
    800031c0:	1d4080e7          	jalr	468(ra) # 80001390 <_Z15thread_dispatchv>

    uint64 t1 = 0;
    __asm__ ("mv %[t1], t1" : [t1] "=r"(t1));
    800031c4:	00030913          	mv	s2,t1

    printString("C: t1="); printInt(t1); printString("\n");
    800031c8:	00005517          	auipc	a0,0x5
    800031cc:	13850513          	addi	a0,a0,312 # 80008300 <_ZZ12printIntegermE6digits+0x2c8>
    800031d0:	00001097          	auipc	ra,0x1
    800031d4:	594080e7          	jalr	1428(ra) # 80004764 <_Z11printStringPKc>
    800031d8:	00000613          	li	a2,0
    800031dc:	00a00593          	li	a1,10
    800031e0:	0009051b          	sext.w	a0,s2
    800031e4:	00001097          	auipc	ra,0x1
    800031e8:	730080e7          	jalr	1840(ra) # 80004914 <_Z8printIntiii>
    800031ec:	00005517          	auipc	a0,0x5
    800031f0:	3cc50513          	addi	a0,a0,972 # 800085b8 <_ZZ12printIntegermE6digits+0x580>
    800031f4:	00001097          	auipc	ra,0x1
    800031f8:	570080e7          	jalr	1392(ra) # 80004764 <_Z11printStringPKc>

    uint64 result = fibonacci(12);
    800031fc:	00c00513          	li	a0,12
    80003200:	00000097          	auipc	ra,0x0
    80003204:	d30080e7          	jalr	-720(ra) # 80002f30 <_ZL9fibonaccim>
    80003208:	00050913          	mv	s2,a0
    printString("C: fibonaci="); printInt(result); printString("\n");
    8000320c:	00005517          	auipc	a0,0x5
    80003210:	0fc50513          	addi	a0,a0,252 # 80008308 <_ZZ12printIntegermE6digits+0x2d0>
    80003214:	00001097          	auipc	ra,0x1
    80003218:	550080e7          	jalr	1360(ra) # 80004764 <_Z11printStringPKc>
    8000321c:	00000613          	li	a2,0
    80003220:	00a00593          	li	a1,10
    80003224:	0009051b          	sext.w	a0,s2
    80003228:	00001097          	auipc	ra,0x1
    8000322c:	6ec080e7          	jalr	1772(ra) # 80004914 <_Z8printIntiii>
    80003230:	00005517          	auipc	a0,0x5
    80003234:	38850513          	addi	a0,a0,904 # 800085b8 <_ZZ12printIntegermE6digits+0x580>
    80003238:	00001097          	auipc	ra,0x1
    8000323c:	52c080e7          	jalr	1324(ra) # 80004764 <_Z11printStringPKc>
    80003240:	0400006f          	j	80003280 <_ZN7WorkerC11workerBodyCEPv+0x13c>

    for (; i < 6; i++) {
        printString("C: i="); printInt(i); printString("\n");
    80003244:	00005517          	auipc	a0,0x5
    80003248:	0a450513          	addi	a0,a0,164 # 800082e8 <_ZZ12printIntegermE6digits+0x2b0>
    8000324c:	00001097          	auipc	ra,0x1
    80003250:	518080e7          	jalr	1304(ra) # 80004764 <_Z11printStringPKc>
    80003254:	00000613          	li	a2,0
    80003258:	00a00593          	li	a1,10
    8000325c:	00048513          	mv	a0,s1
    80003260:	00001097          	auipc	ra,0x1
    80003264:	6b4080e7          	jalr	1716(ra) # 80004914 <_Z8printIntiii>
    80003268:	00005517          	auipc	a0,0x5
    8000326c:	35050513          	addi	a0,a0,848 # 800085b8 <_ZZ12printIntegermE6digits+0x580>
    80003270:	00001097          	auipc	ra,0x1
    80003274:	4f4080e7          	jalr	1268(ra) # 80004764 <_Z11printStringPKc>
    for (; i < 6; i++) {
    80003278:	0014849b          	addiw	s1,s1,1
    8000327c:	0ff4f493          	andi	s1,s1,255
    80003280:	00500793          	li	a5,5
    80003284:	fc97f0e3          	bgeu	a5,s1,80003244 <_ZN7WorkerC11workerBodyCEPv+0x100>
    }

    printString("C finished!\n");
    80003288:	00005517          	auipc	a0,0x5
    8000328c:	09050513          	addi	a0,a0,144 # 80008318 <_ZZ12printIntegermE6digits+0x2e0>
    80003290:	00001097          	auipc	ra,0x1
    80003294:	4d4080e7          	jalr	1236(ra) # 80004764 <_Z11printStringPKc>
    finishedC = true;
    80003298:	00100793          	li	a5,1
    8000329c:	00007717          	auipc	a4,0x7
    800032a0:	0af70f23          	sb	a5,190(a4) # 8000a35a <_ZL9finishedC>
    thread_dispatch();
    800032a4:	ffffe097          	auipc	ra,0xffffe
    800032a8:	0ec080e7          	jalr	236(ra) # 80001390 <_Z15thread_dispatchv>
}
    800032ac:	01813083          	ld	ra,24(sp)
    800032b0:	01013403          	ld	s0,16(sp)
    800032b4:	00813483          	ld	s1,8(sp)
    800032b8:	00013903          	ld	s2,0(sp)
    800032bc:	02010113          	addi	sp,sp,32
    800032c0:	00008067          	ret

00000000800032c4 <_ZN7WorkerD11workerBodyDEPv>:

void WorkerD::workerBodyD(void* arg) {
    800032c4:	fe010113          	addi	sp,sp,-32
    800032c8:	00113c23          	sd	ra,24(sp)
    800032cc:	00813823          	sd	s0,16(sp)
    800032d0:	00913423          	sd	s1,8(sp)
    800032d4:	01213023          	sd	s2,0(sp)
    800032d8:	02010413          	addi	s0,sp,32
    uint8 i = 10;
    800032dc:	00a00493          	li	s1,10
    800032e0:	0400006f          	j	80003320 <_ZN7WorkerD11workerBodyDEPv+0x5c>
    for (; i < 13; i++) {
        printString("D: i="); printInt(i); printString("\n");
    800032e4:	00005517          	auipc	a0,0x5
    800032e8:	04450513          	addi	a0,a0,68 # 80008328 <_ZZ12printIntegermE6digits+0x2f0>
    800032ec:	00001097          	auipc	ra,0x1
    800032f0:	478080e7          	jalr	1144(ra) # 80004764 <_Z11printStringPKc>
    800032f4:	00000613          	li	a2,0
    800032f8:	00a00593          	li	a1,10
    800032fc:	00048513          	mv	a0,s1
    80003300:	00001097          	auipc	ra,0x1
    80003304:	614080e7          	jalr	1556(ra) # 80004914 <_Z8printIntiii>
    80003308:	00005517          	auipc	a0,0x5
    8000330c:	2b050513          	addi	a0,a0,688 # 800085b8 <_ZZ12printIntegermE6digits+0x580>
    80003310:	00001097          	auipc	ra,0x1
    80003314:	454080e7          	jalr	1108(ra) # 80004764 <_Z11printStringPKc>
    for (; i < 13; i++) {
    80003318:	0014849b          	addiw	s1,s1,1
    8000331c:	0ff4f493          	andi	s1,s1,255
    80003320:	00c00793          	li	a5,12
    80003324:	fc97f0e3          	bgeu	a5,s1,800032e4 <_ZN7WorkerD11workerBodyDEPv+0x20>
    }

    printString("D: dispatch\n");
    80003328:	00005517          	auipc	a0,0x5
    8000332c:	00850513          	addi	a0,a0,8 # 80008330 <_ZZ12printIntegermE6digits+0x2f8>
    80003330:	00001097          	auipc	ra,0x1
    80003334:	434080e7          	jalr	1076(ra) # 80004764 <_Z11printStringPKc>
    __asm__ ("li t1, 5");
    80003338:	00500313          	li	t1,5
    thread_dispatch();
    8000333c:	ffffe097          	auipc	ra,0xffffe
    80003340:	054080e7          	jalr	84(ra) # 80001390 <_Z15thread_dispatchv>

    uint64 result = fibonacci(16);
    80003344:	01000513          	li	a0,16
    80003348:	00000097          	auipc	ra,0x0
    8000334c:	be8080e7          	jalr	-1048(ra) # 80002f30 <_ZL9fibonaccim>
    80003350:	00050913          	mv	s2,a0
    printString("D: fibonaci="); printInt(result); printString("\n");
    80003354:	00005517          	auipc	a0,0x5
    80003358:	fec50513          	addi	a0,a0,-20 # 80008340 <_ZZ12printIntegermE6digits+0x308>
    8000335c:	00001097          	auipc	ra,0x1
    80003360:	408080e7          	jalr	1032(ra) # 80004764 <_Z11printStringPKc>
    80003364:	00000613          	li	a2,0
    80003368:	00a00593          	li	a1,10
    8000336c:	0009051b          	sext.w	a0,s2
    80003370:	00001097          	auipc	ra,0x1
    80003374:	5a4080e7          	jalr	1444(ra) # 80004914 <_Z8printIntiii>
    80003378:	00005517          	auipc	a0,0x5
    8000337c:	24050513          	addi	a0,a0,576 # 800085b8 <_ZZ12printIntegermE6digits+0x580>
    80003380:	00001097          	auipc	ra,0x1
    80003384:	3e4080e7          	jalr	996(ra) # 80004764 <_Z11printStringPKc>
    80003388:	0400006f          	j	800033c8 <_ZN7WorkerD11workerBodyDEPv+0x104>

    for (; i < 16; i++) {
        printString("D: i="); printInt(i); printString("\n");
    8000338c:	00005517          	auipc	a0,0x5
    80003390:	f9c50513          	addi	a0,a0,-100 # 80008328 <_ZZ12printIntegermE6digits+0x2f0>
    80003394:	00001097          	auipc	ra,0x1
    80003398:	3d0080e7          	jalr	976(ra) # 80004764 <_Z11printStringPKc>
    8000339c:	00000613          	li	a2,0
    800033a0:	00a00593          	li	a1,10
    800033a4:	00048513          	mv	a0,s1
    800033a8:	00001097          	auipc	ra,0x1
    800033ac:	56c080e7          	jalr	1388(ra) # 80004914 <_Z8printIntiii>
    800033b0:	00005517          	auipc	a0,0x5
    800033b4:	20850513          	addi	a0,a0,520 # 800085b8 <_ZZ12printIntegermE6digits+0x580>
    800033b8:	00001097          	auipc	ra,0x1
    800033bc:	3ac080e7          	jalr	940(ra) # 80004764 <_Z11printStringPKc>
    for (; i < 16; i++) {
    800033c0:	0014849b          	addiw	s1,s1,1
    800033c4:	0ff4f493          	andi	s1,s1,255
    800033c8:	00f00793          	li	a5,15
    800033cc:	fc97f0e3          	bgeu	a5,s1,8000338c <_ZN7WorkerD11workerBodyDEPv+0xc8>
    }

    printString("D finished!\n");
    800033d0:	00005517          	auipc	a0,0x5
    800033d4:	f8050513          	addi	a0,a0,-128 # 80008350 <_ZZ12printIntegermE6digits+0x318>
    800033d8:	00001097          	auipc	ra,0x1
    800033dc:	38c080e7          	jalr	908(ra) # 80004764 <_Z11printStringPKc>
    finishedD = true;
    800033e0:	00100793          	li	a5,1
    800033e4:	00007717          	auipc	a4,0x7
    800033e8:	f6f70ba3          	sb	a5,-137(a4) # 8000a35b <_ZL9finishedD>
    thread_dispatch();
    800033ec:	ffffe097          	auipc	ra,0xffffe
    800033f0:	fa4080e7          	jalr	-92(ra) # 80001390 <_Z15thread_dispatchv>
}
    800033f4:	01813083          	ld	ra,24(sp)
    800033f8:	01013403          	ld	s0,16(sp)
    800033fc:	00813483          	ld	s1,8(sp)
    80003400:	00013903          	ld	s2,0(sp)
    80003404:	02010113          	addi	sp,sp,32
    80003408:	00008067          	ret

000000008000340c <_Z20Threads_CPP_API_testv>:


void Threads_CPP_API_test() {
    8000340c:	fc010113          	addi	sp,sp,-64
    80003410:	02113c23          	sd	ra,56(sp)
    80003414:	02813823          	sd	s0,48(sp)
    80003418:	02913423          	sd	s1,40(sp)
    8000341c:	03213023          	sd	s2,32(sp)
    80003420:	04010413          	addi	s0,sp,64
    Thread* threads[4];

    threads[0] = new WorkerA();
    80003424:	02000513          	li	a0,32
    80003428:	fffff097          	auipc	ra,0xfffff
    8000342c:	d00080e7          	jalr	-768(ra) # 80002128 <_Znwm>
    80003430:	00050493          	mv	s1,a0
    WorkerA():Thread() {}
    80003434:	fffff097          	auipc	ra,0xfffff
    80003438:	dd8080e7          	jalr	-552(ra) # 8000220c <_ZN6ThreadC1Ev>
    8000343c:	00007797          	auipc	a5,0x7
    80003440:	d4478793          	addi	a5,a5,-700 # 8000a180 <_ZTV7WorkerA+0x10>
    80003444:	00f4b023          	sd	a5,0(s1)
    threads[0] = new WorkerA();
    80003448:	fc943023          	sd	s1,-64(s0)
    printString("ThreadA created\n");
    8000344c:	00005517          	auipc	a0,0x5
    80003450:	f1450513          	addi	a0,a0,-236 # 80008360 <_ZZ12printIntegermE6digits+0x328>
    80003454:	00001097          	auipc	ra,0x1
    80003458:	310080e7          	jalr	784(ra) # 80004764 <_Z11printStringPKc>

    threads[1] = new WorkerB();
    8000345c:	02000513          	li	a0,32
    80003460:	fffff097          	auipc	ra,0xfffff
    80003464:	cc8080e7          	jalr	-824(ra) # 80002128 <_Znwm>
    80003468:	00050493          	mv	s1,a0
    WorkerB():Thread() {}
    8000346c:	fffff097          	auipc	ra,0xfffff
    80003470:	da0080e7          	jalr	-608(ra) # 8000220c <_ZN6ThreadC1Ev>
    80003474:	00007797          	auipc	a5,0x7
    80003478:	d3478793          	addi	a5,a5,-716 # 8000a1a8 <_ZTV7WorkerB+0x10>
    8000347c:	00f4b023          	sd	a5,0(s1)
    threads[1] = new WorkerB();
    80003480:	fc943423          	sd	s1,-56(s0)
    printString("ThreadB created\n");
    80003484:	00005517          	auipc	a0,0x5
    80003488:	ef450513          	addi	a0,a0,-268 # 80008378 <_ZZ12printIntegermE6digits+0x340>
    8000348c:	00001097          	auipc	ra,0x1
    80003490:	2d8080e7          	jalr	728(ra) # 80004764 <_Z11printStringPKc>

    threads[2] = new WorkerC();
    80003494:	02000513          	li	a0,32
    80003498:	fffff097          	auipc	ra,0xfffff
    8000349c:	c90080e7          	jalr	-880(ra) # 80002128 <_Znwm>
    800034a0:	00050493          	mv	s1,a0
    WorkerC():Thread() {}
    800034a4:	fffff097          	auipc	ra,0xfffff
    800034a8:	d68080e7          	jalr	-664(ra) # 8000220c <_ZN6ThreadC1Ev>
    800034ac:	00007797          	auipc	a5,0x7
    800034b0:	d2478793          	addi	a5,a5,-732 # 8000a1d0 <_ZTV7WorkerC+0x10>
    800034b4:	00f4b023          	sd	a5,0(s1)
    threads[2] = new WorkerC();
    800034b8:	fc943823          	sd	s1,-48(s0)
    printString("ThreadC created\n");
    800034bc:	00005517          	auipc	a0,0x5
    800034c0:	ed450513          	addi	a0,a0,-300 # 80008390 <_ZZ12printIntegermE6digits+0x358>
    800034c4:	00001097          	auipc	ra,0x1
    800034c8:	2a0080e7          	jalr	672(ra) # 80004764 <_Z11printStringPKc>

    threads[3] = new WorkerD();
    800034cc:	02000513          	li	a0,32
    800034d0:	fffff097          	auipc	ra,0xfffff
    800034d4:	c58080e7          	jalr	-936(ra) # 80002128 <_Znwm>
    800034d8:	00050493          	mv	s1,a0
    WorkerD():Thread() {}
    800034dc:	fffff097          	auipc	ra,0xfffff
    800034e0:	d30080e7          	jalr	-720(ra) # 8000220c <_ZN6ThreadC1Ev>
    800034e4:	00007797          	auipc	a5,0x7
    800034e8:	d1478793          	addi	a5,a5,-748 # 8000a1f8 <_ZTV7WorkerD+0x10>
    800034ec:	00f4b023          	sd	a5,0(s1)
    threads[3] = new WorkerD();
    800034f0:	fc943c23          	sd	s1,-40(s0)
    printString("ThreadD created\n");
    800034f4:	00005517          	auipc	a0,0x5
    800034f8:	eb450513          	addi	a0,a0,-332 # 800083a8 <_ZZ12printIntegermE6digits+0x370>
    800034fc:	00001097          	auipc	ra,0x1
    80003500:	268080e7          	jalr	616(ra) # 80004764 <_Z11printStringPKc>

    for(int i=0; i<4; i++) {
    80003504:	00000493          	li	s1,0
    80003508:	00300793          	li	a5,3
    8000350c:	0297c663          	blt	a5,s1,80003538 <_Z20Threads_CPP_API_testv+0x12c>
        threads[i]->start();
    80003510:	00349793          	slli	a5,s1,0x3
    80003514:	fe040713          	addi	a4,s0,-32
    80003518:	00f707b3          	add	a5,a4,a5
    8000351c:	fe07b503          	ld	a0,-32(a5)
    80003520:	fffff097          	auipc	ra,0xfffff
    80003524:	cbc080e7          	jalr	-836(ra) # 800021dc <_ZN6Thread5startEv>
    for(int i=0; i<4; i++) {
    80003528:	0014849b          	addiw	s1,s1,1
    8000352c:	fddff06f          	j	80003508 <_Z20Threads_CPP_API_testv+0xfc>
    }

    while (!(finishedA && finishedB && finishedC && finishedD)) {
        Thread::dispatch();
    80003530:	fffff097          	auipc	ra,0xfffff
    80003534:	c84080e7          	jalr	-892(ra) # 800021b4 <_ZN6Thread8dispatchEv>
    while (!(finishedA && finishedB && finishedC && finishedD)) {
    80003538:	00007797          	auipc	a5,0x7
    8000353c:	e207c783          	lbu	a5,-480(a5) # 8000a358 <_ZL9finishedA>
    80003540:	fe0788e3          	beqz	a5,80003530 <_Z20Threads_CPP_API_testv+0x124>
    80003544:	00007797          	auipc	a5,0x7
    80003548:	e157c783          	lbu	a5,-491(a5) # 8000a359 <_ZL9finishedB>
    8000354c:	fe0782e3          	beqz	a5,80003530 <_Z20Threads_CPP_API_testv+0x124>
    80003550:	00007797          	auipc	a5,0x7
    80003554:	e0a7c783          	lbu	a5,-502(a5) # 8000a35a <_ZL9finishedC>
    80003558:	fc078ce3          	beqz	a5,80003530 <_Z20Threads_CPP_API_testv+0x124>
    8000355c:	00007797          	auipc	a5,0x7
    80003560:	dff7c783          	lbu	a5,-513(a5) # 8000a35b <_ZL9finishedD>
    80003564:	fc0786e3          	beqz	a5,80003530 <_Z20Threads_CPP_API_testv+0x124>
    }

    printString("Zavrsili sa izvrsavanjem!\n");
    80003568:	00005517          	auipc	a0,0x5
    8000356c:	e5850513          	addi	a0,a0,-424 # 800083c0 <_ZZ12printIntegermE6digits+0x388>
    80003570:	00001097          	auipc	ra,0x1
    80003574:	1f4080e7          	jalr	500(ra) # 80004764 <_Z11printStringPKc>

    for (auto thread: threads) {
    80003578:	fc040493          	addi	s1,s0,-64
    8000357c:	0180006f          	j	80003594 <_Z20Threads_CPP_API_testv+0x188>
        printString("Brisanje neke niti! \n");
        delete thread;
        printString("Zavresno brisanje neke niti");
    80003580:	00005517          	auipc	a0,0x5
    80003584:	e7850513          	addi	a0,a0,-392 # 800083f8 <_ZZ12printIntegermE6digits+0x3c0>
    80003588:	00001097          	auipc	ra,0x1
    8000358c:	1dc080e7          	jalr	476(ra) # 80004764 <_Z11printStringPKc>
    for (auto thread: threads) {
    80003590:	00848493          	addi	s1,s1,8
    80003594:	fe040793          	addi	a5,s0,-32
    80003598:	02f48863          	beq	s1,a5,800035c8 <_Z20Threads_CPP_API_testv+0x1bc>
    8000359c:	0004b903          	ld	s2,0(s1)
        printString("Brisanje neke niti! \n");
    800035a0:	00005517          	auipc	a0,0x5
    800035a4:	e4050513          	addi	a0,a0,-448 # 800083e0 <_ZZ12printIntegermE6digits+0x3a8>
    800035a8:	00001097          	auipc	ra,0x1
    800035ac:	1bc080e7          	jalr	444(ra) # 80004764 <_Z11printStringPKc>
        delete thread;
    800035b0:	fc0908e3          	beqz	s2,80003580 <_Z20Threads_CPP_API_testv+0x174>
    800035b4:	00093783          	ld	a5,0(s2)
    800035b8:	0087b783          	ld	a5,8(a5)
    800035bc:	00090513          	mv	a0,s2
    800035c0:	000780e7          	jalr	a5
    800035c4:	fbdff06f          	j	80003580 <_Z20Threads_CPP_API_testv+0x174>
    }

    printString("Pobrisane niti!\n");
    800035c8:	00005517          	auipc	a0,0x5
    800035cc:	e5050513          	addi	a0,a0,-432 # 80008418 <_ZZ12printIntegermE6digits+0x3e0>
    800035d0:	00001097          	auipc	ra,0x1
    800035d4:	194080e7          	jalr	404(ra) # 80004764 <_Z11printStringPKc>
}
    800035d8:	03813083          	ld	ra,56(sp)
    800035dc:	03013403          	ld	s0,48(sp)
    800035e0:	02813483          	ld	s1,40(sp)
    800035e4:	02013903          	ld	s2,32(sp)
    800035e8:	04010113          	addi	sp,sp,64
    800035ec:	00008067          	ret
    800035f0:	00050913          	mv	s2,a0
    threads[0] = new WorkerA();
    800035f4:	00048513          	mv	a0,s1
    800035f8:	fffff097          	auipc	ra,0xfffff
    800035fc:	a08080e7          	jalr	-1528(ra) # 80002000 <_ZdlPv>
    80003600:	00090513          	mv	a0,s2
    80003604:	00008097          	auipc	ra,0x8
    80003608:	e44080e7          	jalr	-444(ra) # 8000b448 <_Unwind_Resume>
    8000360c:	00050913          	mv	s2,a0
    threads[1] = new WorkerB();
    80003610:	00048513          	mv	a0,s1
    80003614:	fffff097          	auipc	ra,0xfffff
    80003618:	9ec080e7          	jalr	-1556(ra) # 80002000 <_ZdlPv>
    8000361c:	00090513          	mv	a0,s2
    80003620:	00008097          	auipc	ra,0x8
    80003624:	e28080e7          	jalr	-472(ra) # 8000b448 <_Unwind_Resume>
    80003628:	00050913          	mv	s2,a0
    threads[2] = new WorkerC();
    8000362c:	00048513          	mv	a0,s1
    80003630:	fffff097          	auipc	ra,0xfffff
    80003634:	9d0080e7          	jalr	-1584(ra) # 80002000 <_ZdlPv>
    80003638:	00090513          	mv	a0,s2
    8000363c:	00008097          	auipc	ra,0x8
    80003640:	e0c080e7          	jalr	-500(ra) # 8000b448 <_Unwind_Resume>
    80003644:	00050913          	mv	s2,a0
    threads[3] = new WorkerD();
    80003648:	00048513          	mv	a0,s1
    8000364c:	fffff097          	auipc	ra,0xfffff
    80003650:	9b4080e7          	jalr	-1612(ra) # 80002000 <_ZdlPv>
    80003654:	00090513          	mv	a0,s2
    80003658:	00008097          	auipc	ra,0x8
    8000365c:	df0080e7          	jalr	-528(ra) # 8000b448 <_Unwind_Resume>

0000000080003660 <_ZN7WorkerAD1Ev>:
class WorkerA: public Thread {
    80003660:	ff010113          	addi	sp,sp,-16
    80003664:	00113423          	sd	ra,8(sp)
    80003668:	00813023          	sd	s0,0(sp)
    8000366c:	01010413          	addi	s0,sp,16
    80003670:	00007797          	auipc	a5,0x7
    80003674:	b1078793          	addi	a5,a5,-1264 # 8000a180 <_ZTV7WorkerA+0x10>
    80003678:	00f53023          	sd	a5,0(a0)
    8000367c:	fffff097          	auipc	ra,0xfffff
    80003680:	9ac080e7          	jalr	-1620(ra) # 80002028 <_ZN6ThreadD1Ev>
    80003684:	00813083          	ld	ra,8(sp)
    80003688:	00013403          	ld	s0,0(sp)
    8000368c:	01010113          	addi	sp,sp,16
    80003690:	00008067          	ret

0000000080003694 <_ZN7WorkerAD0Ev>:
    80003694:	fe010113          	addi	sp,sp,-32
    80003698:	00113c23          	sd	ra,24(sp)
    8000369c:	00813823          	sd	s0,16(sp)
    800036a0:	00913423          	sd	s1,8(sp)
    800036a4:	02010413          	addi	s0,sp,32
    800036a8:	00050493          	mv	s1,a0
    800036ac:	00007797          	auipc	a5,0x7
    800036b0:	ad478793          	addi	a5,a5,-1324 # 8000a180 <_ZTV7WorkerA+0x10>
    800036b4:	00f53023          	sd	a5,0(a0)
    800036b8:	fffff097          	auipc	ra,0xfffff
    800036bc:	970080e7          	jalr	-1680(ra) # 80002028 <_ZN6ThreadD1Ev>
    800036c0:	00048513          	mv	a0,s1
    800036c4:	fffff097          	auipc	ra,0xfffff
    800036c8:	93c080e7          	jalr	-1732(ra) # 80002000 <_ZdlPv>
    800036cc:	01813083          	ld	ra,24(sp)
    800036d0:	01013403          	ld	s0,16(sp)
    800036d4:	00813483          	ld	s1,8(sp)
    800036d8:	02010113          	addi	sp,sp,32
    800036dc:	00008067          	ret

00000000800036e0 <_ZN7WorkerBD1Ev>:
class WorkerB: public Thread {
    800036e0:	ff010113          	addi	sp,sp,-16
    800036e4:	00113423          	sd	ra,8(sp)
    800036e8:	00813023          	sd	s0,0(sp)
    800036ec:	01010413          	addi	s0,sp,16
    800036f0:	00007797          	auipc	a5,0x7
    800036f4:	ab878793          	addi	a5,a5,-1352 # 8000a1a8 <_ZTV7WorkerB+0x10>
    800036f8:	00f53023          	sd	a5,0(a0)
    800036fc:	fffff097          	auipc	ra,0xfffff
    80003700:	92c080e7          	jalr	-1748(ra) # 80002028 <_ZN6ThreadD1Ev>
    80003704:	00813083          	ld	ra,8(sp)
    80003708:	00013403          	ld	s0,0(sp)
    8000370c:	01010113          	addi	sp,sp,16
    80003710:	00008067          	ret

0000000080003714 <_ZN7WorkerBD0Ev>:
    80003714:	fe010113          	addi	sp,sp,-32
    80003718:	00113c23          	sd	ra,24(sp)
    8000371c:	00813823          	sd	s0,16(sp)
    80003720:	00913423          	sd	s1,8(sp)
    80003724:	02010413          	addi	s0,sp,32
    80003728:	00050493          	mv	s1,a0
    8000372c:	00007797          	auipc	a5,0x7
    80003730:	a7c78793          	addi	a5,a5,-1412 # 8000a1a8 <_ZTV7WorkerB+0x10>
    80003734:	00f53023          	sd	a5,0(a0)
    80003738:	fffff097          	auipc	ra,0xfffff
    8000373c:	8f0080e7          	jalr	-1808(ra) # 80002028 <_ZN6ThreadD1Ev>
    80003740:	00048513          	mv	a0,s1
    80003744:	fffff097          	auipc	ra,0xfffff
    80003748:	8bc080e7          	jalr	-1860(ra) # 80002000 <_ZdlPv>
    8000374c:	01813083          	ld	ra,24(sp)
    80003750:	01013403          	ld	s0,16(sp)
    80003754:	00813483          	ld	s1,8(sp)
    80003758:	02010113          	addi	sp,sp,32
    8000375c:	00008067          	ret

0000000080003760 <_ZN7WorkerCD1Ev>:
class WorkerC: public Thread {
    80003760:	ff010113          	addi	sp,sp,-16
    80003764:	00113423          	sd	ra,8(sp)
    80003768:	00813023          	sd	s0,0(sp)
    8000376c:	01010413          	addi	s0,sp,16
    80003770:	00007797          	auipc	a5,0x7
    80003774:	a6078793          	addi	a5,a5,-1440 # 8000a1d0 <_ZTV7WorkerC+0x10>
    80003778:	00f53023          	sd	a5,0(a0)
    8000377c:	fffff097          	auipc	ra,0xfffff
    80003780:	8ac080e7          	jalr	-1876(ra) # 80002028 <_ZN6ThreadD1Ev>
    80003784:	00813083          	ld	ra,8(sp)
    80003788:	00013403          	ld	s0,0(sp)
    8000378c:	01010113          	addi	sp,sp,16
    80003790:	00008067          	ret

0000000080003794 <_ZN7WorkerCD0Ev>:
    80003794:	fe010113          	addi	sp,sp,-32
    80003798:	00113c23          	sd	ra,24(sp)
    8000379c:	00813823          	sd	s0,16(sp)
    800037a0:	00913423          	sd	s1,8(sp)
    800037a4:	02010413          	addi	s0,sp,32
    800037a8:	00050493          	mv	s1,a0
    800037ac:	00007797          	auipc	a5,0x7
    800037b0:	a2478793          	addi	a5,a5,-1500 # 8000a1d0 <_ZTV7WorkerC+0x10>
    800037b4:	00f53023          	sd	a5,0(a0)
    800037b8:	fffff097          	auipc	ra,0xfffff
    800037bc:	870080e7          	jalr	-1936(ra) # 80002028 <_ZN6ThreadD1Ev>
    800037c0:	00048513          	mv	a0,s1
    800037c4:	fffff097          	auipc	ra,0xfffff
    800037c8:	83c080e7          	jalr	-1988(ra) # 80002000 <_ZdlPv>
    800037cc:	01813083          	ld	ra,24(sp)
    800037d0:	01013403          	ld	s0,16(sp)
    800037d4:	00813483          	ld	s1,8(sp)
    800037d8:	02010113          	addi	sp,sp,32
    800037dc:	00008067          	ret

00000000800037e0 <_ZN7WorkerDD1Ev>:
class WorkerD: public Thread {
    800037e0:	ff010113          	addi	sp,sp,-16
    800037e4:	00113423          	sd	ra,8(sp)
    800037e8:	00813023          	sd	s0,0(sp)
    800037ec:	01010413          	addi	s0,sp,16
    800037f0:	00007797          	auipc	a5,0x7
    800037f4:	a0878793          	addi	a5,a5,-1528 # 8000a1f8 <_ZTV7WorkerD+0x10>
    800037f8:	00f53023          	sd	a5,0(a0)
    800037fc:	fffff097          	auipc	ra,0xfffff
    80003800:	82c080e7          	jalr	-2004(ra) # 80002028 <_ZN6ThreadD1Ev>
    80003804:	00813083          	ld	ra,8(sp)
    80003808:	00013403          	ld	s0,0(sp)
    8000380c:	01010113          	addi	sp,sp,16
    80003810:	00008067          	ret

0000000080003814 <_ZN7WorkerDD0Ev>:
    80003814:	fe010113          	addi	sp,sp,-32
    80003818:	00113c23          	sd	ra,24(sp)
    8000381c:	00813823          	sd	s0,16(sp)
    80003820:	00913423          	sd	s1,8(sp)
    80003824:	02010413          	addi	s0,sp,32
    80003828:	00050493          	mv	s1,a0
    8000382c:	00007797          	auipc	a5,0x7
    80003830:	9cc78793          	addi	a5,a5,-1588 # 8000a1f8 <_ZTV7WorkerD+0x10>
    80003834:	00f53023          	sd	a5,0(a0)
    80003838:	ffffe097          	auipc	ra,0xffffe
    8000383c:	7f0080e7          	jalr	2032(ra) # 80002028 <_ZN6ThreadD1Ev>
    80003840:	00048513          	mv	a0,s1
    80003844:	ffffe097          	auipc	ra,0xffffe
    80003848:	7bc080e7          	jalr	1980(ra) # 80002000 <_ZdlPv>
    8000384c:	01813083          	ld	ra,24(sp)
    80003850:	01013403          	ld	s0,16(sp)
    80003854:	00813483          	ld	s1,8(sp)
    80003858:	02010113          	addi	sp,sp,32
    8000385c:	00008067          	ret

0000000080003860 <_ZN7WorkerA3runEv>:
    void run() override {
    80003860:	ff010113          	addi	sp,sp,-16
    80003864:	00113423          	sd	ra,8(sp)
    80003868:	00813023          	sd	s0,0(sp)
    8000386c:	01010413          	addi	s0,sp,16
        workerBodyA(nullptr);
    80003870:	00000593          	li	a1,0
    80003874:	fffff097          	auipc	ra,0xfffff
    80003878:	730080e7          	jalr	1840(ra) # 80002fa4 <_ZN7WorkerA11workerBodyAEPv>
    }
    8000387c:	00813083          	ld	ra,8(sp)
    80003880:	00013403          	ld	s0,0(sp)
    80003884:	01010113          	addi	sp,sp,16
    80003888:	00008067          	ret

000000008000388c <_ZN7WorkerB3runEv>:
    void run() override {
    8000388c:	ff010113          	addi	sp,sp,-16
    80003890:	00113423          	sd	ra,8(sp)
    80003894:	00813023          	sd	s0,0(sp)
    80003898:	01010413          	addi	s0,sp,16
        workerBodyB(nullptr);
    8000389c:	00000593          	li	a1,0
    800038a0:	fffff097          	auipc	ra,0xfffff
    800038a4:	7d0080e7          	jalr	2000(ra) # 80003070 <_ZN7WorkerB11workerBodyBEPv>
    }
    800038a8:	00813083          	ld	ra,8(sp)
    800038ac:	00013403          	ld	s0,0(sp)
    800038b0:	01010113          	addi	sp,sp,16
    800038b4:	00008067          	ret

00000000800038b8 <_ZN7WorkerC3runEv>:
    void run() override {
    800038b8:	ff010113          	addi	sp,sp,-16
    800038bc:	00113423          	sd	ra,8(sp)
    800038c0:	00813023          	sd	s0,0(sp)
    800038c4:	01010413          	addi	s0,sp,16
        workerBodyC(nullptr);
    800038c8:	00000593          	li	a1,0
    800038cc:	00000097          	auipc	ra,0x0
    800038d0:	878080e7          	jalr	-1928(ra) # 80003144 <_ZN7WorkerC11workerBodyCEPv>
    }
    800038d4:	00813083          	ld	ra,8(sp)
    800038d8:	00013403          	ld	s0,0(sp)
    800038dc:	01010113          	addi	sp,sp,16
    800038e0:	00008067          	ret

00000000800038e4 <_ZN7WorkerD3runEv>:
    void run() override {
    800038e4:	ff010113          	addi	sp,sp,-16
    800038e8:	00113423          	sd	ra,8(sp)
    800038ec:	00813023          	sd	s0,0(sp)
    800038f0:	01010413          	addi	s0,sp,16
        workerBodyD(nullptr);
    800038f4:	00000593          	li	a1,0
    800038f8:	00000097          	auipc	ra,0x0
    800038fc:	9cc080e7          	jalr	-1588(ra) # 800032c4 <_ZN7WorkerD11workerBodyDEPv>
    }
    80003900:	00813083          	ld	ra,8(sp)
    80003904:	00013403          	ld	s0,0(sp)
    80003908:	01010113          	addi	sp,sp,16
    8000390c:	00008067          	ret

0000000080003910 <_ZL9fibonaccim>:
static volatile bool finishedA = false;
static volatile bool finishedB = false;
static volatile bool finishedC = false;
static volatile bool finishedD = false;

static uint64 fibonacci(uint64 n) {
    80003910:	fe010113          	addi	sp,sp,-32
    80003914:	00113c23          	sd	ra,24(sp)
    80003918:	00813823          	sd	s0,16(sp)
    8000391c:	00913423          	sd	s1,8(sp)
    80003920:	01213023          	sd	s2,0(sp)
    80003924:	02010413          	addi	s0,sp,32
    80003928:	00050493          	mv	s1,a0
    if (n == 0 || n == 1) { return n; }
    8000392c:	00100793          	li	a5,1
    80003930:	02a7f863          	bgeu	a5,a0,80003960 <_ZL9fibonaccim+0x50>
    if (n % 10 == 0) { thread_dispatch(); }
    80003934:	00a00793          	li	a5,10
    80003938:	02f577b3          	remu	a5,a0,a5
    8000393c:	02078e63          	beqz	a5,80003978 <_ZL9fibonaccim+0x68>
    return fibonacci(n - 1) + fibonacci(n - 2);
    80003940:	fff48513          	addi	a0,s1,-1
    80003944:	00000097          	auipc	ra,0x0
    80003948:	fcc080e7          	jalr	-52(ra) # 80003910 <_ZL9fibonaccim>
    8000394c:	00050913          	mv	s2,a0
    80003950:	ffe48513          	addi	a0,s1,-2
    80003954:	00000097          	auipc	ra,0x0
    80003958:	fbc080e7          	jalr	-68(ra) # 80003910 <_ZL9fibonaccim>
    8000395c:	00a90533          	add	a0,s2,a0
}
    80003960:	01813083          	ld	ra,24(sp)
    80003964:	01013403          	ld	s0,16(sp)
    80003968:	00813483          	ld	s1,8(sp)
    8000396c:	00013903          	ld	s2,0(sp)
    80003970:	02010113          	addi	sp,sp,32
    80003974:	00008067          	ret
    if (n % 10 == 0) { thread_dispatch(); }
    80003978:	ffffe097          	auipc	ra,0xffffe
    8000397c:	a18080e7          	jalr	-1512(ra) # 80001390 <_Z15thread_dispatchv>
    80003980:	fc1ff06f          	j	80003940 <_ZL9fibonaccim+0x30>

0000000080003984 <_ZL11workerBodyDPv>:
    printString("C finished!\n");
    finishedC = true;
    thread_dispatch();
}

static void workerBodyD(void* arg) {
    80003984:	fe010113          	addi	sp,sp,-32
    80003988:	00113c23          	sd	ra,24(sp)
    8000398c:	00813823          	sd	s0,16(sp)
    80003990:	00913423          	sd	s1,8(sp)
    80003994:	01213023          	sd	s2,0(sp)
    80003998:	02010413          	addi	s0,sp,32
    uint8 i = 10;
    8000399c:	00a00493          	li	s1,10
    800039a0:	0400006f          	j	800039e0 <_ZL11workerBodyDPv+0x5c>
    for (; i < 13; i++) {
        printString("D: i="); printInt(i); printString("\n");
    800039a4:	00005517          	auipc	a0,0x5
    800039a8:	98450513          	addi	a0,a0,-1660 # 80008328 <_ZZ12printIntegermE6digits+0x2f0>
    800039ac:	00001097          	auipc	ra,0x1
    800039b0:	db8080e7          	jalr	-584(ra) # 80004764 <_Z11printStringPKc>
    800039b4:	00000613          	li	a2,0
    800039b8:	00a00593          	li	a1,10
    800039bc:	00048513          	mv	a0,s1
    800039c0:	00001097          	auipc	ra,0x1
    800039c4:	f54080e7          	jalr	-172(ra) # 80004914 <_Z8printIntiii>
    800039c8:	00005517          	auipc	a0,0x5
    800039cc:	bf050513          	addi	a0,a0,-1040 # 800085b8 <_ZZ12printIntegermE6digits+0x580>
    800039d0:	00001097          	auipc	ra,0x1
    800039d4:	d94080e7          	jalr	-620(ra) # 80004764 <_Z11printStringPKc>
    for (; i < 13; i++) {
    800039d8:	0014849b          	addiw	s1,s1,1
    800039dc:	0ff4f493          	andi	s1,s1,255
    800039e0:	00c00793          	li	a5,12
    800039e4:	fc97f0e3          	bgeu	a5,s1,800039a4 <_ZL11workerBodyDPv+0x20>
    }


    __asm__ ("li t1, 5");
    800039e8:	00500313          	li	t1,5
    thread_dispatch();
    800039ec:	ffffe097          	auipc	ra,0xffffe
    800039f0:	9a4080e7          	jalr	-1628(ra) # 80001390 <_Z15thread_dispatchv>

    uint64 result = fibonacci(16);
    800039f4:	01000513          	li	a0,16
    800039f8:	00000097          	auipc	ra,0x0
    800039fc:	f18080e7          	jalr	-232(ra) # 80003910 <_ZL9fibonaccim>
    80003a00:	00050913          	mv	s2,a0
    printString("D: fibonaci="); printInt(result); printString("\n");
    80003a04:	00005517          	auipc	a0,0x5
    80003a08:	93c50513          	addi	a0,a0,-1732 # 80008340 <_ZZ12printIntegermE6digits+0x308>
    80003a0c:	00001097          	auipc	ra,0x1
    80003a10:	d58080e7          	jalr	-680(ra) # 80004764 <_Z11printStringPKc>
    80003a14:	00000613          	li	a2,0
    80003a18:	00a00593          	li	a1,10
    80003a1c:	0009051b          	sext.w	a0,s2
    80003a20:	00001097          	auipc	ra,0x1
    80003a24:	ef4080e7          	jalr	-268(ra) # 80004914 <_Z8printIntiii>
    80003a28:	00005517          	auipc	a0,0x5
    80003a2c:	b9050513          	addi	a0,a0,-1136 # 800085b8 <_ZZ12printIntegermE6digits+0x580>
    80003a30:	00001097          	auipc	ra,0x1
    80003a34:	d34080e7          	jalr	-716(ra) # 80004764 <_Z11printStringPKc>
    80003a38:	0400006f          	j	80003a78 <_ZL11workerBodyDPv+0xf4>

    for (; i < 16; i++) {
        printString("D: i="); printInt(i); printString("\n");
    80003a3c:	00005517          	auipc	a0,0x5
    80003a40:	8ec50513          	addi	a0,a0,-1812 # 80008328 <_ZZ12printIntegermE6digits+0x2f0>
    80003a44:	00001097          	auipc	ra,0x1
    80003a48:	d20080e7          	jalr	-736(ra) # 80004764 <_Z11printStringPKc>
    80003a4c:	00000613          	li	a2,0
    80003a50:	00a00593          	li	a1,10
    80003a54:	00048513          	mv	a0,s1
    80003a58:	00001097          	auipc	ra,0x1
    80003a5c:	ebc080e7          	jalr	-324(ra) # 80004914 <_Z8printIntiii>
    80003a60:	00005517          	auipc	a0,0x5
    80003a64:	b5850513          	addi	a0,a0,-1192 # 800085b8 <_ZZ12printIntegermE6digits+0x580>
    80003a68:	00001097          	auipc	ra,0x1
    80003a6c:	cfc080e7          	jalr	-772(ra) # 80004764 <_Z11printStringPKc>
    for (; i < 16; i++) {
    80003a70:	0014849b          	addiw	s1,s1,1
    80003a74:	0ff4f493          	andi	s1,s1,255
    80003a78:	00f00793          	li	a5,15
    80003a7c:	fc97f0e3          	bgeu	a5,s1,80003a3c <_ZL11workerBodyDPv+0xb8>
    }

    printString("D finished!\n");
    80003a80:	00005517          	auipc	a0,0x5
    80003a84:	8d050513          	addi	a0,a0,-1840 # 80008350 <_ZZ12printIntegermE6digits+0x318>
    80003a88:	00001097          	auipc	ra,0x1
    80003a8c:	cdc080e7          	jalr	-804(ra) # 80004764 <_Z11printStringPKc>
    finishedD = true;
    80003a90:	00100793          	li	a5,1
    80003a94:	00007717          	auipc	a4,0x7
    80003a98:	8cf70423          	sb	a5,-1848(a4) # 8000a35c <_ZL9finishedD>
    thread_dispatch();
    80003a9c:	ffffe097          	auipc	ra,0xffffe
    80003aa0:	8f4080e7          	jalr	-1804(ra) # 80001390 <_Z15thread_dispatchv>
}
    80003aa4:	01813083          	ld	ra,24(sp)
    80003aa8:	01013403          	ld	s0,16(sp)
    80003aac:	00813483          	ld	s1,8(sp)
    80003ab0:	00013903          	ld	s2,0(sp)
    80003ab4:	02010113          	addi	sp,sp,32
    80003ab8:	00008067          	ret

0000000080003abc <_ZL11workerBodyCPv>:
static void workerBodyC(void* arg) {
    80003abc:	fe010113          	addi	sp,sp,-32
    80003ac0:	00113c23          	sd	ra,24(sp)
    80003ac4:	00813823          	sd	s0,16(sp)
    80003ac8:	00913423          	sd	s1,8(sp)
    80003acc:	01213023          	sd	s2,0(sp)
    80003ad0:	02010413          	addi	s0,sp,32
    uint8 i = 0;
    80003ad4:	00000493          	li	s1,0
    80003ad8:	0400006f          	j	80003b18 <_ZL11workerBodyCPv+0x5c>
        printString("C: i="); printInt(i); printString("\n");
    80003adc:	00005517          	auipc	a0,0x5
    80003ae0:	80c50513          	addi	a0,a0,-2036 # 800082e8 <_ZZ12printIntegermE6digits+0x2b0>
    80003ae4:	00001097          	auipc	ra,0x1
    80003ae8:	c80080e7          	jalr	-896(ra) # 80004764 <_Z11printStringPKc>
    80003aec:	00000613          	li	a2,0
    80003af0:	00a00593          	li	a1,10
    80003af4:	00048513          	mv	a0,s1
    80003af8:	00001097          	auipc	ra,0x1
    80003afc:	e1c080e7          	jalr	-484(ra) # 80004914 <_Z8printIntiii>
    80003b00:	00005517          	auipc	a0,0x5
    80003b04:	ab850513          	addi	a0,a0,-1352 # 800085b8 <_ZZ12printIntegermE6digits+0x580>
    80003b08:	00001097          	auipc	ra,0x1
    80003b0c:	c5c080e7          	jalr	-932(ra) # 80004764 <_Z11printStringPKc>
    for (; i < 3; i++) {
    80003b10:	0014849b          	addiw	s1,s1,1
    80003b14:	0ff4f493          	andi	s1,s1,255
    80003b18:	00200793          	li	a5,2
    80003b1c:	fc97f0e3          	bgeu	a5,s1,80003adc <_ZL11workerBodyCPv+0x20>
    printString("C: dispatch\n");
    80003b20:	00004517          	auipc	a0,0x4
    80003b24:	7d050513          	addi	a0,a0,2000 # 800082f0 <_ZZ12printIntegermE6digits+0x2b8>
    80003b28:	00001097          	auipc	ra,0x1
    80003b2c:	c3c080e7          	jalr	-964(ra) # 80004764 <_Z11printStringPKc>
    __asm__ ("li t1, 7");
    80003b30:	00700313          	li	t1,7
    thread_dispatch();
    80003b34:	ffffe097          	auipc	ra,0xffffe
    80003b38:	85c080e7          	jalr	-1956(ra) # 80001390 <_Z15thread_dispatchv>
    __asm__ ("mv %[t1], t1" : [t1] "=r"(t1));
    80003b3c:	00030913          	mv	s2,t1
    printString("C: t1="); printInt(t1); printString("\n");
    80003b40:	00004517          	auipc	a0,0x4
    80003b44:	7c050513          	addi	a0,a0,1984 # 80008300 <_ZZ12printIntegermE6digits+0x2c8>
    80003b48:	00001097          	auipc	ra,0x1
    80003b4c:	c1c080e7          	jalr	-996(ra) # 80004764 <_Z11printStringPKc>
    80003b50:	00000613          	li	a2,0
    80003b54:	00a00593          	li	a1,10
    80003b58:	0009051b          	sext.w	a0,s2
    80003b5c:	00001097          	auipc	ra,0x1
    80003b60:	db8080e7          	jalr	-584(ra) # 80004914 <_Z8printIntiii>
    80003b64:	00005517          	auipc	a0,0x5
    80003b68:	a5450513          	addi	a0,a0,-1452 # 800085b8 <_ZZ12printIntegermE6digits+0x580>
    80003b6c:	00001097          	auipc	ra,0x1
    80003b70:	bf8080e7          	jalr	-1032(ra) # 80004764 <_Z11printStringPKc>
    uint64 result = fibonacci(12);
    80003b74:	00c00513          	li	a0,12
    80003b78:	00000097          	auipc	ra,0x0
    80003b7c:	d98080e7          	jalr	-616(ra) # 80003910 <_ZL9fibonaccim>
    80003b80:	00050913          	mv	s2,a0
    printString("C: fibonaci="); printInt(result); printString("\n");
    80003b84:	00004517          	auipc	a0,0x4
    80003b88:	78450513          	addi	a0,a0,1924 # 80008308 <_ZZ12printIntegermE6digits+0x2d0>
    80003b8c:	00001097          	auipc	ra,0x1
    80003b90:	bd8080e7          	jalr	-1064(ra) # 80004764 <_Z11printStringPKc>
    80003b94:	00000613          	li	a2,0
    80003b98:	00a00593          	li	a1,10
    80003b9c:	0009051b          	sext.w	a0,s2
    80003ba0:	00001097          	auipc	ra,0x1
    80003ba4:	d74080e7          	jalr	-652(ra) # 80004914 <_Z8printIntiii>
    80003ba8:	00005517          	auipc	a0,0x5
    80003bac:	a1050513          	addi	a0,a0,-1520 # 800085b8 <_ZZ12printIntegermE6digits+0x580>
    80003bb0:	00001097          	auipc	ra,0x1
    80003bb4:	bb4080e7          	jalr	-1100(ra) # 80004764 <_Z11printStringPKc>
    80003bb8:	0400006f          	j	80003bf8 <_ZL11workerBodyCPv+0x13c>
        printString("C: i="); printInt(i); printString("\n");
    80003bbc:	00004517          	auipc	a0,0x4
    80003bc0:	72c50513          	addi	a0,a0,1836 # 800082e8 <_ZZ12printIntegermE6digits+0x2b0>
    80003bc4:	00001097          	auipc	ra,0x1
    80003bc8:	ba0080e7          	jalr	-1120(ra) # 80004764 <_Z11printStringPKc>
    80003bcc:	00000613          	li	a2,0
    80003bd0:	00a00593          	li	a1,10
    80003bd4:	00048513          	mv	a0,s1
    80003bd8:	00001097          	auipc	ra,0x1
    80003bdc:	d3c080e7          	jalr	-708(ra) # 80004914 <_Z8printIntiii>
    80003be0:	00005517          	auipc	a0,0x5
    80003be4:	9d850513          	addi	a0,a0,-1576 # 800085b8 <_ZZ12printIntegermE6digits+0x580>
    80003be8:	00001097          	auipc	ra,0x1
    80003bec:	b7c080e7          	jalr	-1156(ra) # 80004764 <_Z11printStringPKc>
    for (; i < 6; i++) {
    80003bf0:	0014849b          	addiw	s1,s1,1
    80003bf4:	0ff4f493          	andi	s1,s1,255
    80003bf8:	00500793          	li	a5,5
    80003bfc:	fc97f0e3          	bgeu	a5,s1,80003bbc <_ZL11workerBodyCPv+0x100>
    printString("C finished!\n");
    80003c00:	00004517          	auipc	a0,0x4
    80003c04:	71850513          	addi	a0,a0,1816 # 80008318 <_ZZ12printIntegermE6digits+0x2e0>
    80003c08:	00001097          	auipc	ra,0x1
    80003c0c:	b5c080e7          	jalr	-1188(ra) # 80004764 <_Z11printStringPKc>
    finishedC = true;
    80003c10:	00100793          	li	a5,1
    80003c14:	00006717          	auipc	a4,0x6
    80003c18:	74f704a3          	sb	a5,1865(a4) # 8000a35d <_ZL9finishedC>
    thread_dispatch();
    80003c1c:	ffffd097          	auipc	ra,0xffffd
    80003c20:	774080e7          	jalr	1908(ra) # 80001390 <_Z15thread_dispatchv>
}
    80003c24:	01813083          	ld	ra,24(sp)
    80003c28:	01013403          	ld	s0,16(sp)
    80003c2c:	00813483          	ld	s1,8(sp)
    80003c30:	00013903          	ld	s2,0(sp)
    80003c34:	02010113          	addi	sp,sp,32
    80003c38:	00008067          	ret

0000000080003c3c <_ZL11workerBodyBPv>:
static void workerBodyB(void* arg) {
    80003c3c:	fe010113          	addi	sp,sp,-32
    80003c40:	00113c23          	sd	ra,24(sp)
    80003c44:	00813823          	sd	s0,16(sp)
    80003c48:	00913423          	sd	s1,8(sp)
    80003c4c:	01213023          	sd	s2,0(sp)
    80003c50:	02010413          	addi	s0,sp,32
    for (uint64 i = 0; i < 16; i++) {
    80003c54:	00000913          	li	s2,0
    80003c58:	0380006f          	j	80003c90 <_ZL11workerBodyBPv+0x54>
            thread_dispatch();
    80003c5c:	ffffd097          	auipc	ra,0xffffd
    80003c60:	734080e7          	jalr	1844(ra) # 80001390 <_Z15thread_dispatchv>
        for (uint64 j = 0; j < 10000; j++) {
    80003c64:	00148493          	addi	s1,s1,1
    80003c68:	000027b7          	lui	a5,0x2
    80003c6c:	70f78793          	addi	a5,a5,1807 # 270f <_entry-0x7fffd8f1>
    80003c70:	0097ee63          	bltu	a5,s1,80003c8c <_ZL11workerBodyBPv+0x50>
            for (uint64 k = 0; k < 30000; k++) { /* busy wait */ }
    80003c74:	00000713          	li	a4,0
    80003c78:	000077b7          	lui	a5,0x7
    80003c7c:	52f78793          	addi	a5,a5,1327 # 752f <_entry-0x7fff8ad1>
    80003c80:	fce7eee3          	bltu	a5,a4,80003c5c <_ZL11workerBodyBPv+0x20>
    80003c84:	00170713          	addi	a4,a4,1
    80003c88:	ff1ff06f          	j	80003c78 <_ZL11workerBodyBPv+0x3c>
    for (uint64 i = 0; i < 16; i++) {
    80003c8c:	00190913          	addi	s2,s2,1
    80003c90:	00f00793          	li	a5,15
    80003c94:	0527e063          	bltu	a5,s2,80003cd4 <_ZL11workerBodyBPv+0x98>
        printString("B: i="); printInt(i); printString("\n");
    80003c98:	00004517          	auipc	a0,0x4
    80003c9c:	63850513          	addi	a0,a0,1592 # 800082d0 <_ZZ12printIntegermE6digits+0x298>
    80003ca0:	00001097          	auipc	ra,0x1
    80003ca4:	ac4080e7          	jalr	-1340(ra) # 80004764 <_Z11printStringPKc>
    80003ca8:	00000613          	li	a2,0
    80003cac:	00a00593          	li	a1,10
    80003cb0:	0009051b          	sext.w	a0,s2
    80003cb4:	00001097          	auipc	ra,0x1
    80003cb8:	c60080e7          	jalr	-928(ra) # 80004914 <_Z8printIntiii>
    80003cbc:	00005517          	auipc	a0,0x5
    80003cc0:	8fc50513          	addi	a0,a0,-1796 # 800085b8 <_ZZ12printIntegermE6digits+0x580>
    80003cc4:	00001097          	auipc	ra,0x1
    80003cc8:	aa0080e7          	jalr	-1376(ra) # 80004764 <_Z11printStringPKc>
        for (uint64 j = 0; j < 10000; j++) {
    80003ccc:	00000493          	li	s1,0
    80003cd0:	f99ff06f          	j	80003c68 <_ZL11workerBodyBPv+0x2c>
    printString("B finished!\n");
    80003cd4:	00004517          	auipc	a0,0x4
    80003cd8:	60450513          	addi	a0,a0,1540 # 800082d8 <_ZZ12printIntegermE6digits+0x2a0>
    80003cdc:	00001097          	auipc	ra,0x1
    80003ce0:	a88080e7          	jalr	-1400(ra) # 80004764 <_Z11printStringPKc>
    finishedB = true;
    80003ce4:	00100793          	li	a5,1
    80003ce8:	00006717          	auipc	a4,0x6
    80003cec:	66f70b23          	sb	a5,1654(a4) # 8000a35e <_ZL9finishedB>
    thread_dispatch();
    80003cf0:	ffffd097          	auipc	ra,0xffffd
    80003cf4:	6a0080e7          	jalr	1696(ra) # 80001390 <_Z15thread_dispatchv>
}
    80003cf8:	01813083          	ld	ra,24(sp)
    80003cfc:	01013403          	ld	s0,16(sp)
    80003d00:	00813483          	ld	s1,8(sp)
    80003d04:	00013903          	ld	s2,0(sp)
    80003d08:	02010113          	addi	sp,sp,32
    80003d0c:	00008067          	ret

0000000080003d10 <_ZL11workerBodyAPv>:
static void workerBodyA(void* arg) {
    80003d10:	fe010113          	addi	sp,sp,-32
    80003d14:	00113c23          	sd	ra,24(sp)
    80003d18:	00813823          	sd	s0,16(sp)
    80003d1c:	00913423          	sd	s1,8(sp)
    80003d20:	01213023          	sd	s2,0(sp)
    80003d24:	02010413          	addi	s0,sp,32
    for (uint64 i = 0; i < 10; i++) {
    80003d28:	00000913          	li	s2,0
    80003d2c:	0380006f          	j	80003d64 <_ZL11workerBodyAPv+0x54>
            thread_dispatch();
    80003d30:	ffffd097          	auipc	ra,0xffffd
    80003d34:	660080e7          	jalr	1632(ra) # 80001390 <_Z15thread_dispatchv>
        for (uint64 j = 0; j < 10000; j++) {
    80003d38:	00148493          	addi	s1,s1,1
    80003d3c:	000027b7          	lui	a5,0x2
    80003d40:	70f78793          	addi	a5,a5,1807 # 270f <_entry-0x7fffd8f1>
    80003d44:	0097ee63          	bltu	a5,s1,80003d60 <_ZL11workerBodyAPv+0x50>
            for (uint64 k = 0; k < 30000; k++) { /* busy wait*/}
    80003d48:	00000713          	li	a4,0
    80003d4c:	000077b7          	lui	a5,0x7
    80003d50:	52f78793          	addi	a5,a5,1327 # 752f <_entry-0x7fff8ad1>
    80003d54:	fce7eee3          	bltu	a5,a4,80003d30 <_ZL11workerBodyAPv+0x20>
    80003d58:	00170713          	addi	a4,a4,1
    80003d5c:	ff1ff06f          	j	80003d4c <_ZL11workerBodyAPv+0x3c>
    for (uint64 i = 0; i < 10; i++) {
    80003d60:	00190913          	addi	s2,s2,1
    80003d64:	00900793          	li	a5,9
    80003d68:	0527e063          	bltu	a5,s2,80003da8 <_ZL11workerBodyAPv+0x98>
        printString("A: i="); printInt(i); printString("\n");
    80003d6c:	00004517          	auipc	a0,0x4
    80003d70:	54c50513          	addi	a0,a0,1356 # 800082b8 <_ZZ12printIntegermE6digits+0x280>
    80003d74:	00001097          	auipc	ra,0x1
    80003d78:	9f0080e7          	jalr	-1552(ra) # 80004764 <_Z11printStringPKc>
    80003d7c:	00000613          	li	a2,0
    80003d80:	00a00593          	li	a1,10
    80003d84:	0009051b          	sext.w	a0,s2
    80003d88:	00001097          	auipc	ra,0x1
    80003d8c:	b8c080e7          	jalr	-1140(ra) # 80004914 <_Z8printIntiii>
    80003d90:	00005517          	auipc	a0,0x5
    80003d94:	82850513          	addi	a0,a0,-2008 # 800085b8 <_ZZ12printIntegermE6digits+0x580>
    80003d98:	00001097          	auipc	ra,0x1
    80003d9c:	9cc080e7          	jalr	-1588(ra) # 80004764 <_Z11printStringPKc>
        for (uint64 j = 0; j < 10000; j++) {
    80003da0:	00000493          	li	s1,0
    80003da4:	f99ff06f          	j	80003d3c <_ZL11workerBodyAPv+0x2c>
    printString("A finished!\n");
    80003da8:	00004517          	auipc	a0,0x4
    80003dac:	51850513          	addi	a0,a0,1304 # 800082c0 <_ZZ12printIntegermE6digits+0x288>
    80003db0:	00001097          	auipc	ra,0x1
    80003db4:	9b4080e7          	jalr	-1612(ra) # 80004764 <_Z11printStringPKc>
    finishedA = true;
    80003db8:	00100793          	li	a5,1
    80003dbc:	00006717          	auipc	a4,0x6
    80003dc0:	5af701a3          	sb	a5,1443(a4) # 8000a35f <_ZL9finishedA>
}
    80003dc4:	01813083          	ld	ra,24(sp)
    80003dc8:	01013403          	ld	s0,16(sp)
    80003dcc:	00813483          	ld	s1,8(sp)
    80003dd0:	00013903          	ld	s2,0(sp)
    80003dd4:	02010113          	addi	sp,sp,32
    80003dd8:	00008067          	ret

0000000080003ddc <_Z18Threads_C_API_testv>:


void Threads_C_API_test() {
    80003ddc:	fd010113          	addi	sp,sp,-48
    80003de0:	02113423          	sd	ra,40(sp)
    80003de4:	02813023          	sd	s0,32(sp)
    80003de8:	03010413          	addi	s0,sp,48
    thread_t threads[4];
    thread_create(&threads[0], workerBodyA, nullptr);
    80003dec:	00000613          	li	a2,0
    80003df0:	00000597          	auipc	a1,0x0
    80003df4:	f2058593          	addi	a1,a1,-224 # 80003d10 <_ZL11workerBodyAPv>
    80003df8:	fd040513          	addi	a0,s0,-48
    80003dfc:	ffffd097          	auipc	ra,0xffffd
    80003e00:	4d0080e7          	jalr	1232(ra) # 800012cc <_Z13thread_createPP12kernelThreadPFvPvES2_>
    printString("ThreadA created\n");
    80003e04:	00004517          	auipc	a0,0x4
    80003e08:	55c50513          	addi	a0,a0,1372 # 80008360 <_ZZ12printIntegermE6digits+0x328>
    80003e0c:	00001097          	auipc	ra,0x1
    80003e10:	958080e7          	jalr	-1704(ra) # 80004764 <_Z11printStringPKc>

    thread_create(&threads[1], workerBodyB, nullptr);
    80003e14:	00000613          	li	a2,0
    80003e18:	00000597          	auipc	a1,0x0
    80003e1c:	e2458593          	addi	a1,a1,-476 # 80003c3c <_ZL11workerBodyBPv>
    80003e20:	fd840513          	addi	a0,s0,-40
    80003e24:	ffffd097          	auipc	ra,0xffffd
    80003e28:	4a8080e7          	jalr	1192(ra) # 800012cc <_Z13thread_createPP12kernelThreadPFvPvES2_>
    printString("ThreadB created\n");
    80003e2c:	00004517          	auipc	a0,0x4
    80003e30:	54c50513          	addi	a0,a0,1356 # 80008378 <_ZZ12printIntegermE6digits+0x340>
    80003e34:	00001097          	auipc	ra,0x1
    80003e38:	930080e7          	jalr	-1744(ra) # 80004764 <_Z11printStringPKc>

    thread_create(&threads[2], workerBodyC, nullptr);
    80003e3c:	00000613          	li	a2,0
    80003e40:	00000597          	auipc	a1,0x0
    80003e44:	c7c58593          	addi	a1,a1,-900 # 80003abc <_ZL11workerBodyCPv>
    80003e48:	fe040513          	addi	a0,s0,-32
    80003e4c:	ffffd097          	auipc	ra,0xffffd
    80003e50:	480080e7          	jalr	1152(ra) # 800012cc <_Z13thread_createPP12kernelThreadPFvPvES2_>
    printString("ThreadC created\n");
    80003e54:	00004517          	auipc	a0,0x4
    80003e58:	53c50513          	addi	a0,a0,1340 # 80008390 <_ZZ12printIntegermE6digits+0x358>
    80003e5c:	00001097          	auipc	ra,0x1
    80003e60:	908080e7          	jalr	-1784(ra) # 80004764 <_Z11printStringPKc>

    thread_create(&threads[3], workerBodyD, nullptr);
    80003e64:	00000613          	li	a2,0
    80003e68:	00000597          	auipc	a1,0x0
    80003e6c:	b1c58593          	addi	a1,a1,-1252 # 80003984 <_ZL11workerBodyDPv>
    80003e70:	fe840513          	addi	a0,s0,-24
    80003e74:	ffffd097          	auipc	ra,0xffffd
    80003e78:	458080e7          	jalr	1112(ra) # 800012cc <_Z13thread_createPP12kernelThreadPFvPvES2_>
    printString("ThreadD created\n");
    80003e7c:	00004517          	auipc	a0,0x4
    80003e80:	52c50513          	addi	a0,a0,1324 # 800083a8 <_ZZ12printIntegermE6digits+0x370>
    80003e84:	00001097          	auipc	ra,0x1
    80003e88:	8e0080e7          	jalr	-1824(ra) # 80004764 <_Z11printStringPKc>
    80003e8c:	00c0006f          	j	80003e98 <_Z18Threads_C_API_testv+0xbc>

    while (!(finishedA && finishedB && finishedC && finishedD)) {
        thread_dispatch();
    80003e90:	ffffd097          	auipc	ra,0xffffd
    80003e94:	500080e7          	jalr	1280(ra) # 80001390 <_Z15thread_dispatchv>
    while (!(finishedA && finishedB && finishedC && finishedD)) {
    80003e98:	00006797          	auipc	a5,0x6
    80003e9c:	4c77c783          	lbu	a5,1223(a5) # 8000a35f <_ZL9finishedA>
    80003ea0:	fe0788e3          	beqz	a5,80003e90 <_Z18Threads_C_API_testv+0xb4>
    80003ea4:	00006797          	auipc	a5,0x6
    80003ea8:	4ba7c783          	lbu	a5,1210(a5) # 8000a35e <_ZL9finishedB>
    80003eac:	fe0782e3          	beqz	a5,80003e90 <_Z18Threads_C_API_testv+0xb4>
    80003eb0:	00006797          	auipc	a5,0x6
    80003eb4:	4ad7c783          	lbu	a5,1197(a5) # 8000a35d <_ZL9finishedC>
    80003eb8:	fc078ce3          	beqz	a5,80003e90 <_Z18Threads_C_API_testv+0xb4>
    80003ebc:	00006797          	auipc	a5,0x6
    80003ec0:	4a07c783          	lbu	a5,1184(a5) # 8000a35c <_ZL9finishedD>
    80003ec4:	fc0786e3          	beqz	a5,80003e90 <_Z18Threads_C_API_testv+0xb4>
    }

}
    80003ec8:	02813083          	ld	ra,40(sp)
    80003ecc:	02013403          	ld	s0,32(sp)
    80003ed0:	03010113          	addi	sp,sp,48
    80003ed4:	00008067          	ret

0000000080003ed8 <_ZN16ProducerKeyboard16producerKeyboardEPv>:
    void run() override {
        producerKeyboard(td);
    }
};

void ProducerKeyboard::producerKeyboard(void *arg) {
    80003ed8:	fd010113          	addi	sp,sp,-48
    80003edc:	02113423          	sd	ra,40(sp)
    80003ee0:	02813023          	sd	s0,32(sp)
    80003ee4:	00913c23          	sd	s1,24(sp)
    80003ee8:	01213823          	sd	s2,16(sp)
    80003eec:	01313423          	sd	s3,8(sp)
    80003ef0:	03010413          	addi	s0,sp,48
    80003ef4:	00050993          	mv	s3,a0
    80003ef8:	00058493          	mv	s1,a1
    struct thread_data *data = (struct thread_data *) arg;

    int key;
    int i = 0;
    80003efc:	00000913          	li	s2,0
    80003f00:	00c0006f          	j	80003f0c <_ZN16ProducerKeyboard16producerKeyboardEPv+0x34>
    while ((key = getc()) != 0x1b) {
        data->buffer->put(key);
        i++;

        if (i % (10 * data->id) == 0) {
            Thread::dispatch();
    80003f04:	ffffe097          	auipc	ra,0xffffe
    80003f08:	2b0080e7          	jalr	688(ra) # 800021b4 <_ZN6Thread8dispatchEv>
    while ((key = getc()) != 0x1b) {
    80003f0c:	ffffd097          	auipc	ra,0xffffd
    80003f10:	65c080e7          	jalr	1628(ra) # 80001568 <_Z4getcv>
    80003f14:	0005059b          	sext.w	a1,a0
    80003f18:	01b00793          	li	a5,27
    80003f1c:	02f58a63          	beq	a1,a5,80003f50 <_ZN16ProducerKeyboard16producerKeyboardEPv+0x78>
        data->buffer->put(key);
    80003f20:	0084b503          	ld	a0,8(s1)
    80003f24:	00001097          	auipc	ra,0x1
    80003f28:	c64080e7          	jalr	-924(ra) # 80004b88 <_ZN9BufferCPP3putEi>
        i++;
    80003f2c:	0019071b          	addiw	a4,s2,1
    80003f30:	0007091b          	sext.w	s2,a4
        if (i % (10 * data->id) == 0) {
    80003f34:	0004a683          	lw	a3,0(s1)
    80003f38:	0026979b          	slliw	a5,a3,0x2
    80003f3c:	00d787bb          	addw	a5,a5,a3
    80003f40:	0017979b          	slliw	a5,a5,0x1
    80003f44:	02f767bb          	remw	a5,a4,a5
    80003f48:	fc0792e3          	bnez	a5,80003f0c <_ZN16ProducerKeyboard16producerKeyboardEPv+0x34>
    80003f4c:	fb9ff06f          	j	80003f04 <_ZN16ProducerKeyboard16producerKeyboardEPv+0x2c>
        }
    }

    threadEnd = 1;
    80003f50:	00100793          	li	a5,1
    80003f54:	00006717          	auipc	a4,0x6
    80003f58:	40f72623          	sw	a5,1036(a4) # 8000a360 <_ZL9threadEnd>
    td->buffer->put('!');
    80003f5c:	0209b783          	ld	a5,32(s3)
    80003f60:	02100593          	li	a1,33
    80003f64:	0087b503          	ld	a0,8(a5)
    80003f68:	00001097          	auipc	ra,0x1
    80003f6c:	c20080e7          	jalr	-992(ra) # 80004b88 <_ZN9BufferCPP3putEi>

    data->wait->signal();
    80003f70:	0104b503          	ld	a0,16(s1)
    80003f74:	ffffe097          	auipc	ra,0xffffe
    80003f78:	31c080e7          	jalr	796(ra) # 80002290 <_ZN9Semaphore6signalEv>
}
    80003f7c:	02813083          	ld	ra,40(sp)
    80003f80:	02013403          	ld	s0,32(sp)
    80003f84:	01813483          	ld	s1,24(sp)
    80003f88:	01013903          	ld	s2,16(sp)
    80003f8c:	00813983          	ld	s3,8(sp)
    80003f90:	03010113          	addi	sp,sp,48
    80003f94:	00008067          	ret

0000000080003f98 <_ZN12ProducerSync8producerEPv>:
    void run() override {
        producer(td);
    }
};

void ProducerSync::producer(void *arg) {
    80003f98:	fe010113          	addi	sp,sp,-32
    80003f9c:	00113c23          	sd	ra,24(sp)
    80003fa0:	00813823          	sd	s0,16(sp)
    80003fa4:	00913423          	sd	s1,8(sp)
    80003fa8:	01213023          	sd	s2,0(sp)
    80003fac:	02010413          	addi	s0,sp,32
    80003fb0:	00058493          	mv	s1,a1
    struct thread_data *data = (struct thread_data *) arg;

    int i = 0;
    80003fb4:	00000913          	li	s2,0
    80003fb8:	00c0006f          	j	80003fc4 <_ZN12ProducerSync8producerEPv+0x2c>
    while (!threadEnd) {
        data->buffer->put(data->id + '0');
        i++;

        if (i % (10 * data->id) == 0) {
            Thread::dispatch();
    80003fbc:	ffffe097          	auipc	ra,0xffffe
    80003fc0:	1f8080e7          	jalr	504(ra) # 800021b4 <_ZN6Thread8dispatchEv>
    while (!threadEnd) {
    80003fc4:	00006797          	auipc	a5,0x6
    80003fc8:	39c7a783          	lw	a5,924(a5) # 8000a360 <_ZL9threadEnd>
    80003fcc:	02079e63          	bnez	a5,80004008 <_ZN12ProducerSync8producerEPv+0x70>
        data->buffer->put(data->id + '0');
    80003fd0:	0004a583          	lw	a1,0(s1)
    80003fd4:	0305859b          	addiw	a1,a1,48
    80003fd8:	0084b503          	ld	a0,8(s1)
    80003fdc:	00001097          	auipc	ra,0x1
    80003fe0:	bac080e7          	jalr	-1108(ra) # 80004b88 <_ZN9BufferCPP3putEi>
        i++;
    80003fe4:	0019071b          	addiw	a4,s2,1
    80003fe8:	0007091b          	sext.w	s2,a4
        if (i % (10 * data->id) == 0) {
    80003fec:	0004a683          	lw	a3,0(s1)
    80003ff0:	0026979b          	slliw	a5,a3,0x2
    80003ff4:	00d787bb          	addw	a5,a5,a3
    80003ff8:	0017979b          	slliw	a5,a5,0x1
    80003ffc:	02f767bb          	remw	a5,a4,a5
    80004000:	fc0792e3          	bnez	a5,80003fc4 <_ZN12ProducerSync8producerEPv+0x2c>
    80004004:	fb9ff06f          	j	80003fbc <_ZN12ProducerSync8producerEPv+0x24>
        }
    }

    data->wait->signal();
    80004008:	0104b503          	ld	a0,16(s1)
    8000400c:	ffffe097          	auipc	ra,0xffffe
    80004010:	284080e7          	jalr	644(ra) # 80002290 <_ZN9Semaphore6signalEv>
}
    80004014:	01813083          	ld	ra,24(sp)
    80004018:	01013403          	ld	s0,16(sp)
    8000401c:	00813483          	ld	s1,8(sp)
    80004020:	00013903          	ld	s2,0(sp)
    80004024:	02010113          	addi	sp,sp,32
    80004028:	00008067          	ret

000000008000402c <_ZN12ConsumerSync8consumerEPv>:
    void run() override {
        consumer(td);
    }
};

void ConsumerSync::consumer(void *arg) {
    8000402c:	fd010113          	addi	sp,sp,-48
    80004030:	02113423          	sd	ra,40(sp)
    80004034:	02813023          	sd	s0,32(sp)
    80004038:	00913c23          	sd	s1,24(sp)
    8000403c:	01213823          	sd	s2,16(sp)
    80004040:	01313423          	sd	s3,8(sp)
    80004044:	01413023          	sd	s4,0(sp)
    80004048:	03010413          	addi	s0,sp,48
    8000404c:	00050993          	mv	s3,a0
    80004050:	00058913          	mv	s2,a1
    struct thread_data *data = (struct thread_data *) arg;

    int i = 0;
    80004054:	00000a13          	li	s4,0
    80004058:	01c0006f          	j	80004074 <_ZN12ConsumerSync8consumerEPv+0x48>
        i++;

        putc(key);

        if (i % (5 * data->id) == 0) {
            Thread::dispatch();
    8000405c:	ffffe097          	auipc	ra,0xffffe
    80004060:	158080e7          	jalr	344(ra) # 800021b4 <_ZN6Thread8dispatchEv>
    80004064:	0500006f          	j	800040b4 <_ZN12ConsumerSync8consumerEPv+0x88>
        }

        if (i % 80 == 0) {
            putc('\n');
    80004068:	00a00513          	li	a0,10
    8000406c:	ffffd097          	auipc	ra,0xffffd
    80004070:	538080e7          	jalr	1336(ra) # 800015a4 <_Z4putcc>
    while (!threadEnd) {
    80004074:	00006797          	auipc	a5,0x6
    80004078:	2ec7a783          	lw	a5,748(a5) # 8000a360 <_ZL9threadEnd>
    8000407c:	06079263          	bnez	a5,800040e0 <_ZN12ConsumerSync8consumerEPv+0xb4>
        int key = data->buffer->get();
    80004080:	00893503          	ld	a0,8(s2)
    80004084:	00001097          	auipc	ra,0x1
    80004088:	b94080e7          	jalr	-1132(ra) # 80004c18 <_ZN9BufferCPP3getEv>
        i++;
    8000408c:	001a049b          	addiw	s1,s4,1
    80004090:	00048a1b          	sext.w	s4,s1
        putc(key);
    80004094:	0ff57513          	andi	a0,a0,255
    80004098:	ffffd097          	auipc	ra,0xffffd
    8000409c:	50c080e7          	jalr	1292(ra) # 800015a4 <_Z4putcc>
        if (i % (5 * data->id) == 0) {
    800040a0:	00092703          	lw	a4,0(s2)
    800040a4:	0027179b          	slliw	a5,a4,0x2
    800040a8:	00e787bb          	addw	a5,a5,a4
    800040ac:	02f4e7bb          	remw	a5,s1,a5
    800040b0:	fa0786e3          	beqz	a5,8000405c <_ZN12ConsumerSync8consumerEPv+0x30>
        if (i % 80 == 0) {
    800040b4:	05000793          	li	a5,80
    800040b8:	02f4e4bb          	remw	s1,s1,a5
    800040bc:	fa049ce3          	bnez	s1,80004074 <_ZN12ConsumerSync8consumerEPv+0x48>
    800040c0:	fa9ff06f          	j	80004068 <_ZN12ConsumerSync8consumerEPv+0x3c>
        }
    }


    while (td->buffer->getCnt() > 0) {
        int key = td->buffer->get();
    800040c4:	0209b783          	ld	a5,32(s3)
    800040c8:	0087b503          	ld	a0,8(a5)
    800040cc:	00001097          	auipc	ra,0x1
    800040d0:	b4c080e7          	jalr	-1204(ra) # 80004c18 <_ZN9BufferCPP3getEv>
        Console::putc(key);
    800040d4:	0ff57513          	andi	a0,a0,255
    800040d8:	ffffe097          	auipc	ra,0xffffe
    800040dc:	264080e7          	jalr	612(ra) # 8000233c <_ZN7Console4putcEc>
    while (td->buffer->getCnt() > 0) {
    800040e0:	0209b783          	ld	a5,32(s3)
    800040e4:	0087b503          	ld	a0,8(a5)
    800040e8:	00001097          	auipc	ra,0x1
    800040ec:	bbc080e7          	jalr	-1092(ra) # 80004ca4 <_ZN9BufferCPP6getCntEv>
    800040f0:	fca04ae3          	bgtz	a0,800040c4 <_ZN12ConsumerSync8consumerEPv+0x98>
    }

    data->wait->signal();
    800040f4:	01093503          	ld	a0,16(s2)
    800040f8:	ffffe097          	auipc	ra,0xffffe
    800040fc:	198080e7          	jalr	408(ra) # 80002290 <_ZN9Semaphore6signalEv>
}
    80004100:	02813083          	ld	ra,40(sp)
    80004104:	02013403          	ld	s0,32(sp)
    80004108:	01813483          	ld	s1,24(sp)
    8000410c:	01013903          	ld	s2,16(sp)
    80004110:	00813983          	ld	s3,8(sp)
    80004114:	00013a03          	ld	s4,0(sp)
    80004118:	03010113          	addi	sp,sp,48
    8000411c:	00008067          	ret

0000000080004120 <_Z29producerConsumer_CPP_Sync_APIv>:

void producerConsumer_CPP_Sync_API() {
    80004120:	f8010113          	addi	sp,sp,-128
    80004124:	06113c23          	sd	ra,120(sp)
    80004128:	06813823          	sd	s0,112(sp)
    8000412c:	06913423          	sd	s1,104(sp)
    80004130:	07213023          	sd	s2,96(sp)
    80004134:	05313c23          	sd	s3,88(sp)
    80004138:	05413823          	sd	s4,80(sp)
    8000413c:	05513423          	sd	s5,72(sp)
    80004140:	05613023          	sd	s6,64(sp)
    80004144:	03713c23          	sd	s7,56(sp)
    80004148:	03813823          	sd	s8,48(sp)
    8000414c:	03913423          	sd	s9,40(sp)
    80004150:	08010413          	addi	s0,sp,128
    for (int i = 0; i < threadNum; i++) {
        delete threads[i];
    }
    delete consumerThread;
    delete waitForAll;
    delete buffer;
    80004154:	00010b93          	mv	s7,sp
    printString("Unesite broj proizvodjaca?\n");
    80004158:	00004517          	auipc	a0,0x4
    8000415c:	07850513          	addi	a0,a0,120 # 800081d0 <_ZZ12printIntegermE6digits+0x198>
    80004160:	00000097          	auipc	ra,0x0
    80004164:	604080e7          	jalr	1540(ra) # 80004764 <_Z11printStringPKc>
    getString(input, 30);
    80004168:	01e00593          	li	a1,30
    8000416c:	f8040493          	addi	s1,s0,-128
    80004170:	00048513          	mv	a0,s1
    80004174:	00000097          	auipc	ra,0x0
    80004178:	678080e7          	jalr	1656(ra) # 800047ec <_Z9getStringPci>
    threadNum = stringToInt(input);
    8000417c:	00048513          	mv	a0,s1
    80004180:	00000097          	auipc	ra,0x0
    80004184:	744080e7          	jalr	1860(ra) # 800048c4 <_Z11stringToIntPKc>
    80004188:	00050913          	mv	s2,a0
    printString("Unesite velicinu bafera?\n");
    8000418c:	00004517          	auipc	a0,0x4
    80004190:	06450513          	addi	a0,a0,100 # 800081f0 <_ZZ12printIntegermE6digits+0x1b8>
    80004194:	00000097          	auipc	ra,0x0
    80004198:	5d0080e7          	jalr	1488(ra) # 80004764 <_Z11printStringPKc>
    getString(input, 30);
    8000419c:	01e00593          	li	a1,30
    800041a0:	00048513          	mv	a0,s1
    800041a4:	00000097          	auipc	ra,0x0
    800041a8:	648080e7          	jalr	1608(ra) # 800047ec <_Z9getStringPci>
    n = stringToInt(input);
    800041ac:	00048513          	mv	a0,s1
    800041b0:	00000097          	auipc	ra,0x0
    800041b4:	714080e7          	jalr	1812(ra) # 800048c4 <_Z11stringToIntPKc>
    800041b8:	00050493          	mv	s1,a0
    printString("Broj proizvodjaca "); printInt(threadNum);
    800041bc:	00004517          	auipc	a0,0x4
    800041c0:	05450513          	addi	a0,a0,84 # 80008210 <_ZZ12printIntegermE6digits+0x1d8>
    800041c4:	00000097          	auipc	ra,0x0
    800041c8:	5a0080e7          	jalr	1440(ra) # 80004764 <_Z11printStringPKc>
    800041cc:	00000613          	li	a2,0
    800041d0:	00a00593          	li	a1,10
    800041d4:	00090513          	mv	a0,s2
    800041d8:	00000097          	auipc	ra,0x0
    800041dc:	73c080e7          	jalr	1852(ra) # 80004914 <_Z8printIntiii>
    printString(" i velicina bafera "); printInt(n);
    800041e0:	00004517          	auipc	a0,0x4
    800041e4:	04850513          	addi	a0,a0,72 # 80008228 <_ZZ12printIntegermE6digits+0x1f0>
    800041e8:	00000097          	auipc	ra,0x0
    800041ec:	57c080e7          	jalr	1404(ra) # 80004764 <_Z11printStringPKc>
    800041f0:	00000613          	li	a2,0
    800041f4:	00a00593          	li	a1,10
    800041f8:	00048513          	mv	a0,s1
    800041fc:	00000097          	auipc	ra,0x0
    80004200:	718080e7          	jalr	1816(ra) # 80004914 <_Z8printIntiii>
    printString(".\n");
    80004204:	00004517          	auipc	a0,0x4
    80004208:	03c50513          	addi	a0,a0,60 # 80008240 <_ZZ12printIntegermE6digits+0x208>
    8000420c:	00000097          	auipc	ra,0x0
    80004210:	558080e7          	jalr	1368(ra) # 80004764 <_Z11printStringPKc>
    if(threadNum > n) {
    80004214:	0324c463          	blt	s1,s2,8000423c <_Z29producerConsumer_CPP_Sync_APIv+0x11c>
    } else if (threadNum < 1) {
    80004218:	03205c63          	blez	s2,80004250 <_Z29producerConsumer_CPP_Sync_APIv+0x130>
    BufferCPP *buffer = new BufferCPP(n);
    8000421c:	03800513          	li	a0,56
    80004220:	ffffe097          	auipc	ra,0xffffe
    80004224:	f08080e7          	jalr	-248(ra) # 80002128 <_Znwm>
    80004228:	00050a93          	mv	s5,a0
    8000422c:	00048593          	mv	a1,s1
    80004230:	00001097          	auipc	ra,0x1
    80004234:	804080e7          	jalr	-2044(ra) # 80004a34 <_ZN9BufferCPPC1Ei>
    80004238:	0300006f          	j	80004268 <_Z29producerConsumer_CPP_Sync_APIv+0x148>
        printString("Broj proizvodjaca ne sme biti manji od velicine bafera!\n");
    8000423c:	00004517          	auipc	a0,0x4
    80004240:	00c50513          	addi	a0,a0,12 # 80008248 <_ZZ12printIntegermE6digits+0x210>
    80004244:	00000097          	auipc	ra,0x0
    80004248:	520080e7          	jalr	1312(ra) # 80004764 <_Z11printStringPKc>
        return;
    8000424c:	0140006f          	j	80004260 <_Z29producerConsumer_CPP_Sync_APIv+0x140>
        printString("Broj proizvodjaca mora biti veci od nula!\n");
    80004250:	00004517          	auipc	a0,0x4
    80004254:	03850513          	addi	a0,a0,56 # 80008288 <_ZZ12printIntegermE6digits+0x250>
    80004258:	00000097          	auipc	ra,0x0
    8000425c:	50c080e7          	jalr	1292(ra) # 80004764 <_Z11printStringPKc>
        return;
    80004260:	000b8113          	mv	sp,s7
    80004264:	2380006f          	j	8000449c <_Z29producerConsumer_CPP_Sync_APIv+0x37c>
    waitForAll = new Semaphore(0);
    80004268:	01000513          	li	a0,16
    8000426c:	ffffe097          	auipc	ra,0xffffe
    80004270:	ebc080e7          	jalr	-324(ra) # 80002128 <_Znwm>
    80004274:	00050493          	mv	s1,a0
    80004278:	00000593          	li	a1,0
    8000427c:	ffffe097          	auipc	ra,0xffffe
    80004280:	fd8080e7          	jalr	-40(ra) # 80002254 <_ZN9SemaphoreC1Ej>
    80004284:	00006797          	auipc	a5,0x6
    80004288:	0e97b223          	sd	s1,228(a5) # 8000a368 <_ZL10waitForAll>
    Thread* threads[threadNum];
    8000428c:	00391793          	slli	a5,s2,0x3
    80004290:	00f78793          	addi	a5,a5,15
    80004294:	ff07f793          	andi	a5,a5,-16
    80004298:	40f10133          	sub	sp,sp,a5
    8000429c:	00010993          	mv	s3,sp
    struct thread_data data[threadNum + 1];
    800042a0:	0019071b          	addiw	a4,s2,1
    800042a4:	00171793          	slli	a5,a4,0x1
    800042a8:	00e787b3          	add	a5,a5,a4
    800042ac:	00379793          	slli	a5,a5,0x3
    800042b0:	00f78793          	addi	a5,a5,15
    800042b4:	ff07f793          	andi	a5,a5,-16
    800042b8:	40f10133          	sub	sp,sp,a5
    800042bc:	00010a13          	mv	s4,sp
    data[threadNum].id = threadNum;
    800042c0:	00191c13          	slli	s8,s2,0x1
    800042c4:	012c07b3          	add	a5,s8,s2
    800042c8:	00379793          	slli	a5,a5,0x3
    800042cc:	00fa07b3          	add	a5,s4,a5
    800042d0:	0127a023          	sw	s2,0(a5)
    data[threadNum].buffer = buffer;
    800042d4:	0157b423          	sd	s5,8(a5)
    data[threadNum].wait = waitForAll;
    800042d8:	0097b823          	sd	s1,16(a5)
    consumerThread = new ConsumerSync(data+threadNum);
    800042dc:	02800513          	li	a0,40
    800042e0:	ffffe097          	auipc	ra,0xffffe
    800042e4:	e48080e7          	jalr	-440(ra) # 80002128 <_Znwm>
    800042e8:	00050b13          	mv	s6,a0
    800042ec:	012c0c33          	add	s8,s8,s2
    800042f0:	003c1c13          	slli	s8,s8,0x3
    800042f4:	018a0c33          	add	s8,s4,s8
    ConsumerSync(thread_data* _td):Thread(), td(_td) {}
    800042f8:	ffffe097          	auipc	ra,0xffffe
    800042fc:	f14080e7          	jalr	-236(ra) # 8000220c <_ZN6ThreadC1Ev>
    80004300:	00006797          	auipc	a5,0x6
    80004304:	f7078793          	addi	a5,a5,-144 # 8000a270 <_ZTV12ConsumerSync+0x10>
    80004308:	00fb3023          	sd	a5,0(s6)
    8000430c:	038b3023          	sd	s8,32(s6)
    consumerThread->start();
    80004310:	000b0513          	mv	a0,s6
    80004314:	ffffe097          	auipc	ra,0xffffe
    80004318:	ec8080e7          	jalr	-312(ra) # 800021dc <_ZN6Thread5startEv>
    for (int i = 0; i < threadNum; i++) {
    8000431c:	00000493          	li	s1,0
    80004320:	0380006f          	j	80004358 <_Z29producerConsumer_CPP_Sync_APIv+0x238>
    ProducerSync(thread_data* _td):Thread(), td(_td) {}
    80004324:	00006797          	auipc	a5,0x6
    80004328:	f2478793          	addi	a5,a5,-220 # 8000a248 <_ZTV12ProducerSync+0x10>
    8000432c:	00fcb023          	sd	a5,0(s9)
    80004330:	038cb023          	sd	s8,32(s9)
            threads[i] = new ProducerSync(data+i);
    80004334:	00349793          	slli	a5,s1,0x3
    80004338:	00f987b3          	add	a5,s3,a5
    8000433c:	0197b023          	sd	s9,0(a5)
        threads[i]->start();
    80004340:	00349793          	slli	a5,s1,0x3
    80004344:	00f987b3          	add	a5,s3,a5
    80004348:	0007b503          	ld	a0,0(a5)
    8000434c:	ffffe097          	auipc	ra,0xffffe
    80004350:	e90080e7          	jalr	-368(ra) # 800021dc <_ZN6Thread5startEv>
    for (int i = 0; i < threadNum; i++) {
    80004354:	0014849b          	addiw	s1,s1,1
    80004358:	0b24d063          	bge	s1,s2,800043f8 <_Z29producerConsumer_CPP_Sync_APIv+0x2d8>
        data[i].id = i;
    8000435c:	00149793          	slli	a5,s1,0x1
    80004360:	009787b3          	add	a5,a5,s1
    80004364:	00379793          	slli	a5,a5,0x3
    80004368:	00fa07b3          	add	a5,s4,a5
    8000436c:	0097a023          	sw	s1,0(a5)
        data[i].buffer = buffer;
    80004370:	0157b423          	sd	s5,8(a5)
        data[i].wait = waitForAll;
    80004374:	00006717          	auipc	a4,0x6
    80004378:	ff473703          	ld	a4,-12(a4) # 8000a368 <_ZL10waitForAll>
    8000437c:	00e7b823          	sd	a4,16(a5)
        if(i>0) {
    80004380:	02905863          	blez	s1,800043b0 <_Z29producerConsumer_CPP_Sync_APIv+0x290>
            threads[i] = new ProducerSync(data+i);
    80004384:	02800513          	li	a0,40
    80004388:	ffffe097          	auipc	ra,0xffffe
    8000438c:	da0080e7          	jalr	-608(ra) # 80002128 <_Znwm>
    80004390:	00050c93          	mv	s9,a0
    80004394:	00149c13          	slli	s8,s1,0x1
    80004398:	009c0c33          	add	s8,s8,s1
    8000439c:	003c1c13          	slli	s8,s8,0x3
    800043a0:	018a0c33          	add	s8,s4,s8
    ProducerSync(thread_data* _td):Thread(), td(_td) {}
    800043a4:	ffffe097          	auipc	ra,0xffffe
    800043a8:	e68080e7          	jalr	-408(ra) # 8000220c <_ZN6ThreadC1Ev>
    800043ac:	f79ff06f          	j	80004324 <_Z29producerConsumer_CPP_Sync_APIv+0x204>
            threads[i] = new ProducerKeyboard(data+i);
    800043b0:	02800513          	li	a0,40
    800043b4:	ffffe097          	auipc	ra,0xffffe
    800043b8:	d74080e7          	jalr	-652(ra) # 80002128 <_Znwm>
    800043bc:	00050c93          	mv	s9,a0
    800043c0:	00149c13          	slli	s8,s1,0x1
    800043c4:	009c0c33          	add	s8,s8,s1
    800043c8:	003c1c13          	slli	s8,s8,0x3
    800043cc:	018a0c33          	add	s8,s4,s8
    ProducerKeyboard(thread_data* _td):Thread(), td(_td) {}
    800043d0:	ffffe097          	auipc	ra,0xffffe
    800043d4:	e3c080e7          	jalr	-452(ra) # 8000220c <_ZN6ThreadC1Ev>
    800043d8:	00006797          	auipc	a5,0x6
    800043dc:	e4878793          	addi	a5,a5,-440 # 8000a220 <_ZTV16ProducerKeyboard+0x10>
    800043e0:	00fcb023          	sd	a5,0(s9)
    800043e4:	038cb023          	sd	s8,32(s9)
            threads[i] = new ProducerKeyboard(data+i);
    800043e8:	00349793          	slli	a5,s1,0x3
    800043ec:	00f987b3          	add	a5,s3,a5
    800043f0:	0197b023          	sd	s9,0(a5)
    800043f4:	f4dff06f          	j	80004340 <_Z29producerConsumer_CPP_Sync_APIv+0x220>
    Thread::dispatch();
    800043f8:	ffffe097          	auipc	ra,0xffffe
    800043fc:	dbc080e7          	jalr	-580(ra) # 800021b4 <_ZN6Thread8dispatchEv>
    for (int i = 0; i <= threadNum; i++) {
    80004400:	00000493          	li	s1,0
    80004404:	00994e63          	blt	s2,s1,80004420 <_Z29producerConsumer_CPP_Sync_APIv+0x300>
        waitForAll->wait();
    80004408:	00006517          	auipc	a0,0x6
    8000440c:	f6053503          	ld	a0,-160(a0) # 8000a368 <_ZL10waitForAll>
    80004410:	ffffe097          	auipc	ra,0xffffe
    80004414:	eac080e7          	jalr	-340(ra) # 800022bc <_ZN9Semaphore4waitEv>
    for (int i = 0; i <= threadNum; i++) {
    80004418:	0014849b          	addiw	s1,s1,1
    8000441c:	fe9ff06f          	j	80004404 <_Z29producerConsumer_CPP_Sync_APIv+0x2e4>
    for (int i = 0; i < threadNum; i++) {
    80004420:	00000493          	li	s1,0
    80004424:	0080006f          	j	8000442c <_Z29producerConsumer_CPP_Sync_APIv+0x30c>
    80004428:	0014849b          	addiw	s1,s1,1
    8000442c:	0324d263          	bge	s1,s2,80004450 <_Z29producerConsumer_CPP_Sync_APIv+0x330>
        delete threads[i];
    80004430:	00349793          	slli	a5,s1,0x3
    80004434:	00f987b3          	add	a5,s3,a5
    80004438:	0007b503          	ld	a0,0(a5)
    8000443c:	fe0506e3          	beqz	a0,80004428 <_Z29producerConsumer_CPP_Sync_APIv+0x308>
    80004440:	00053783          	ld	a5,0(a0)
    80004444:	0087b783          	ld	a5,8(a5)
    80004448:	000780e7          	jalr	a5
    8000444c:	fddff06f          	j	80004428 <_Z29producerConsumer_CPP_Sync_APIv+0x308>
    delete consumerThread;
    80004450:	000b0a63          	beqz	s6,80004464 <_Z29producerConsumer_CPP_Sync_APIv+0x344>
    80004454:	000b3783          	ld	a5,0(s6)
    80004458:	0087b783          	ld	a5,8(a5)
    8000445c:	000b0513          	mv	a0,s6
    80004460:	000780e7          	jalr	a5
    delete waitForAll;
    80004464:	00006517          	auipc	a0,0x6
    80004468:	f0453503          	ld	a0,-252(a0) # 8000a368 <_ZL10waitForAll>
    8000446c:	00050863          	beqz	a0,8000447c <_Z29producerConsumer_CPP_Sync_APIv+0x35c>
    80004470:	00053783          	ld	a5,0(a0)
    80004474:	0087b783          	ld	a5,8(a5)
    80004478:	000780e7          	jalr	a5
    delete buffer;
    8000447c:	000a8e63          	beqz	s5,80004498 <_Z29producerConsumer_CPP_Sync_APIv+0x378>
    80004480:	000a8513          	mv	a0,s5
    80004484:	00001097          	auipc	ra,0x1
    80004488:	8a8080e7          	jalr	-1880(ra) # 80004d2c <_ZN9BufferCPPD1Ev>
    8000448c:	000a8513          	mv	a0,s5
    80004490:	ffffe097          	auipc	ra,0xffffe
    80004494:	b70080e7          	jalr	-1168(ra) # 80002000 <_ZdlPv>
    80004498:	000b8113          	mv	sp,s7

}
    8000449c:	f8040113          	addi	sp,s0,-128
    800044a0:	07813083          	ld	ra,120(sp)
    800044a4:	07013403          	ld	s0,112(sp)
    800044a8:	06813483          	ld	s1,104(sp)
    800044ac:	06013903          	ld	s2,96(sp)
    800044b0:	05813983          	ld	s3,88(sp)
    800044b4:	05013a03          	ld	s4,80(sp)
    800044b8:	04813a83          	ld	s5,72(sp)
    800044bc:	04013b03          	ld	s6,64(sp)
    800044c0:	03813b83          	ld	s7,56(sp)
    800044c4:	03013c03          	ld	s8,48(sp)
    800044c8:	02813c83          	ld	s9,40(sp)
    800044cc:	08010113          	addi	sp,sp,128
    800044d0:	00008067          	ret
    800044d4:	00050493          	mv	s1,a0
    BufferCPP *buffer = new BufferCPP(n);
    800044d8:	000a8513          	mv	a0,s5
    800044dc:	ffffe097          	auipc	ra,0xffffe
    800044e0:	b24080e7          	jalr	-1244(ra) # 80002000 <_ZdlPv>
    800044e4:	00048513          	mv	a0,s1
    800044e8:	00007097          	auipc	ra,0x7
    800044ec:	f60080e7          	jalr	-160(ra) # 8000b448 <_Unwind_Resume>
    800044f0:	00050913          	mv	s2,a0
    waitForAll = new Semaphore(0);
    800044f4:	00048513          	mv	a0,s1
    800044f8:	ffffe097          	auipc	ra,0xffffe
    800044fc:	b08080e7          	jalr	-1272(ra) # 80002000 <_ZdlPv>
    80004500:	00090513          	mv	a0,s2
    80004504:	00007097          	auipc	ra,0x7
    80004508:	f44080e7          	jalr	-188(ra) # 8000b448 <_Unwind_Resume>
    8000450c:	00050493          	mv	s1,a0
    consumerThread = new ConsumerSync(data+threadNum);
    80004510:	000b0513          	mv	a0,s6
    80004514:	ffffe097          	auipc	ra,0xffffe
    80004518:	aec080e7          	jalr	-1300(ra) # 80002000 <_ZdlPv>
    8000451c:	00048513          	mv	a0,s1
    80004520:	00007097          	auipc	ra,0x7
    80004524:	f28080e7          	jalr	-216(ra) # 8000b448 <_Unwind_Resume>
    80004528:	00050493          	mv	s1,a0
            threads[i] = new ProducerSync(data+i);
    8000452c:	000c8513          	mv	a0,s9
    80004530:	ffffe097          	auipc	ra,0xffffe
    80004534:	ad0080e7          	jalr	-1328(ra) # 80002000 <_ZdlPv>
    80004538:	00048513          	mv	a0,s1
    8000453c:	00007097          	auipc	ra,0x7
    80004540:	f0c080e7          	jalr	-244(ra) # 8000b448 <_Unwind_Resume>
    80004544:	00050493          	mv	s1,a0
            threads[i] = new ProducerKeyboard(data+i);
    80004548:	000c8513          	mv	a0,s9
    8000454c:	ffffe097          	auipc	ra,0xffffe
    80004550:	ab4080e7          	jalr	-1356(ra) # 80002000 <_ZdlPv>
    80004554:	00048513          	mv	a0,s1
    80004558:	00007097          	auipc	ra,0x7
    8000455c:	ef0080e7          	jalr	-272(ra) # 8000b448 <_Unwind_Resume>

0000000080004560 <_ZN12ConsumerSyncD1Ev>:
class ConsumerSync:public Thread {
    80004560:	ff010113          	addi	sp,sp,-16
    80004564:	00113423          	sd	ra,8(sp)
    80004568:	00813023          	sd	s0,0(sp)
    8000456c:	01010413          	addi	s0,sp,16
    80004570:	00006797          	auipc	a5,0x6
    80004574:	d0078793          	addi	a5,a5,-768 # 8000a270 <_ZTV12ConsumerSync+0x10>
    80004578:	00f53023          	sd	a5,0(a0)
    8000457c:	ffffe097          	auipc	ra,0xffffe
    80004580:	aac080e7          	jalr	-1364(ra) # 80002028 <_ZN6ThreadD1Ev>
    80004584:	00813083          	ld	ra,8(sp)
    80004588:	00013403          	ld	s0,0(sp)
    8000458c:	01010113          	addi	sp,sp,16
    80004590:	00008067          	ret

0000000080004594 <_ZN12ConsumerSyncD0Ev>:
    80004594:	fe010113          	addi	sp,sp,-32
    80004598:	00113c23          	sd	ra,24(sp)
    8000459c:	00813823          	sd	s0,16(sp)
    800045a0:	00913423          	sd	s1,8(sp)
    800045a4:	02010413          	addi	s0,sp,32
    800045a8:	00050493          	mv	s1,a0
    800045ac:	00006797          	auipc	a5,0x6
    800045b0:	cc478793          	addi	a5,a5,-828 # 8000a270 <_ZTV12ConsumerSync+0x10>
    800045b4:	00f53023          	sd	a5,0(a0)
    800045b8:	ffffe097          	auipc	ra,0xffffe
    800045bc:	a70080e7          	jalr	-1424(ra) # 80002028 <_ZN6ThreadD1Ev>
    800045c0:	00048513          	mv	a0,s1
    800045c4:	ffffe097          	auipc	ra,0xffffe
    800045c8:	a3c080e7          	jalr	-1476(ra) # 80002000 <_ZdlPv>
    800045cc:	01813083          	ld	ra,24(sp)
    800045d0:	01013403          	ld	s0,16(sp)
    800045d4:	00813483          	ld	s1,8(sp)
    800045d8:	02010113          	addi	sp,sp,32
    800045dc:	00008067          	ret

00000000800045e0 <_ZN12ProducerSyncD1Ev>:
class ProducerSync:public Thread {
    800045e0:	ff010113          	addi	sp,sp,-16
    800045e4:	00113423          	sd	ra,8(sp)
    800045e8:	00813023          	sd	s0,0(sp)
    800045ec:	01010413          	addi	s0,sp,16
    800045f0:	00006797          	auipc	a5,0x6
    800045f4:	c5878793          	addi	a5,a5,-936 # 8000a248 <_ZTV12ProducerSync+0x10>
    800045f8:	00f53023          	sd	a5,0(a0)
    800045fc:	ffffe097          	auipc	ra,0xffffe
    80004600:	a2c080e7          	jalr	-1492(ra) # 80002028 <_ZN6ThreadD1Ev>
    80004604:	00813083          	ld	ra,8(sp)
    80004608:	00013403          	ld	s0,0(sp)
    8000460c:	01010113          	addi	sp,sp,16
    80004610:	00008067          	ret

0000000080004614 <_ZN12ProducerSyncD0Ev>:
    80004614:	fe010113          	addi	sp,sp,-32
    80004618:	00113c23          	sd	ra,24(sp)
    8000461c:	00813823          	sd	s0,16(sp)
    80004620:	00913423          	sd	s1,8(sp)
    80004624:	02010413          	addi	s0,sp,32
    80004628:	00050493          	mv	s1,a0
    8000462c:	00006797          	auipc	a5,0x6
    80004630:	c1c78793          	addi	a5,a5,-996 # 8000a248 <_ZTV12ProducerSync+0x10>
    80004634:	00f53023          	sd	a5,0(a0)
    80004638:	ffffe097          	auipc	ra,0xffffe
    8000463c:	9f0080e7          	jalr	-1552(ra) # 80002028 <_ZN6ThreadD1Ev>
    80004640:	00048513          	mv	a0,s1
    80004644:	ffffe097          	auipc	ra,0xffffe
    80004648:	9bc080e7          	jalr	-1604(ra) # 80002000 <_ZdlPv>
    8000464c:	01813083          	ld	ra,24(sp)
    80004650:	01013403          	ld	s0,16(sp)
    80004654:	00813483          	ld	s1,8(sp)
    80004658:	02010113          	addi	sp,sp,32
    8000465c:	00008067          	ret

0000000080004660 <_ZN16ProducerKeyboardD1Ev>:
class ProducerKeyboard:public Thread {
    80004660:	ff010113          	addi	sp,sp,-16
    80004664:	00113423          	sd	ra,8(sp)
    80004668:	00813023          	sd	s0,0(sp)
    8000466c:	01010413          	addi	s0,sp,16
    80004670:	00006797          	auipc	a5,0x6
    80004674:	bb078793          	addi	a5,a5,-1104 # 8000a220 <_ZTV16ProducerKeyboard+0x10>
    80004678:	00f53023          	sd	a5,0(a0)
    8000467c:	ffffe097          	auipc	ra,0xffffe
    80004680:	9ac080e7          	jalr	-1620(ra) # 80002028 <_ZN6ThreadD1Ev>
    80004684:	00813083          	ld	ra,8(sp)
    80004688:	00013403          	ld	s0,0(sp)
    8000468c:	01010113          	addi	sp,sp,16
    80004690:	00008067          	ret

0000000080004694 <_ZN16ProducerKeyboardD0Ev>:
    80004694:	fe010113          	addi	sp,sp,-32
    80004698:	00113c23          	sd	ra,24(sp)
    8000469c:	00813823          	sd	s0,16(sp)
    800046a0:	00913423          	sd	s1,8(sp)
    800046a4:	02010413          	addi	s0,sp,32
    800046a8:	00050493          	mv	s1,a0
    800046ac:	00006797          	auipc	a5,0x6
    800046b0:	b7478793          	addi	a5,a5,-1164 # 8000a220 <_ZTV16ProducerKeyboard+0x10>
    800046b4:	00f53023          	sd	a5,0(a0)
    800046b8:	ffffe097          	auipc	ra,0xffffe
    800046bc:	970080e7          	jalr	-1680(ra) # 80002028 <_ZN6ThreadD1Ev>
    800046c0:	00048513          	mv	a0,s1
    800046c4:	ffffe097          	auipc	ra,0xffffe
    800046c8:	93c080e7          	jalr	-1732(ra) # 80002000 <_ZdlPv>
    800046cc:	01813083          	ld	ra,24(sp)
    800046d0:	01013403          	ld	s0,16(sp)
    800046d4:	00813483          	ld	s1,8(sp)
    800046d8:	02010113          	addi	sp,sp,32
    800046dc:	00008067          	ret

00000000800046e0 <_ZN16ProducerKeyboard3runEv>:
    void run() override {
    800046e0:	ff010113          	addi	sp,sp,-16
    800046e4:	00113423          	sd	ra,8(sp)
    800046e8:	00813023          	sd	s0,0(sp)
    800046ec:	01010413          	addi	s0,sp,16
        producerKeyboard(td);
    800046f0:	02053583          	ld	a1,32(a0)
    800046f4:	fffff097          	auipc	ra,0xfffff
    800046f8:	7e4080e7          	jalr	2020(ra) # 80003ed8 <_ZN16ProducerKeyboard16producerKeyboardEPv>
    }
    800046fc:	00813083          	ld	ra,8(sp)
    80004700:	00013403          	ld	s0,0(sp)
    80004704:	01010113          	addi	sp,sp,16
    80004708:	00008067          	ret

000000008000470c <_ZN12ProducerSync3runEv>:
    void run() override {
    8000470c:	ff010113          	addi	sp,sp,-16
    80004710:	00113423          	sd	ra,8(sp)
    80004714:	00813023          	sd	s0,0(sp)
    80004718:	01010413          	addi	s0,sp,16
        producer(td);
    8000471c:	02053583          	ld	a1,32(a0)
    80004720:	00000097          	auipc	ra,0x0
    80004724:	878080e7          	jalr	-1928(ra) # 80003f98 <_ZN12ProducerSync8producerEPv>
    }
    80004728:	00813083          	ld	ra,8(sp)
    8000472c:	00013403          	ld	s0,0(sp)
    80004730:	01010113          	addi	sp,sp,16
    80004734:	00008067          	ret

0000000080004738 <_ZN12ConsumerSync3runEv>:
    void run() override {
    80004738:	ff010113          	addi	sp,sp,-16
    8000473c:	00113423          	sd	ra,8(sp)
    80004740:	00813023          	sd	s0,0(sp)
    80004744:	01010413          	addi	s0,sp,16
        consumer(td);
    80004748:	02053583          	ld	a1,32(a0)
    8000474c:	00000097          	auipc	ra,0x0
    80004750:	8e0080e7          	jalr	-1824(ra) # 8000402c <_ZN12ConsumerSync8consumerEPv>
    }
    80004754:	00813083          	ld	ra,8(sp)
    80004758:	00013403          	ld	s0,0(sp)
    8000475c:	01010113          	addi	sp,sp,16
    80004760:	00008067          	ret

0000000080004764 <_Z11printStringPKc>:

#define LOCK() while(copy_and_swap(lockPrint, 0, 1)) thread_dispatch()
#define UNLOCK() while(copy_and_swap(lockPrint, 1, 0))

void printString(char const *string)
{
    80004764:	fe010113          	addi	sp,sp,-32
    80004768:	00113c23          	sd	ra,24(sp)
    8000476c:	00813823          	sd	s0,16(sp)
    80004770:	00913423          	sd	s1,8(sp)
    80004774:	02010413          	addi	s0,sp,32
    80004778:	00050493          	mv	s1,a0
    LOCK();
    8000477c:	00100613          	li	a2,1
    80004780:	00000593          	li	a1,0
    80004784:	00006517          	auipc	a0,0x6
    80004788:	bec50513          	addi	a0,a0,-1044 # 8000a370 <lockPrint>
    8000478c:	ffffd097          	auipc	ra,0xffffd
    80004790:	a94080e7          	jalr	-1388(ra) # 80001220 <copy_and_swap>
    80004794:	00050863          	beqz	a0,800047a4 <_Z11printStringPKc+0x40>
    80004798:	ffffd097          	auipc	ra,0xffffd
    8000479c:	bf8080e7          	jalr	-1032(ra) # 80001390 <_Z15thread_dispatchv>
    800047a0:	fddff06f          	j	8000477c <_Z11printStringPKc+0x18>
    while (*string != '\0')
    800047a4:	0004c503          	lbu	a0,0(s1)
    800047a8:	00050a63          	beqz	a0,800047bc <_Z11printStringPKc+0x58>
    {
        putc(*string);
    800047ac:	ffffd097          	auipc	ra,0xffffd
    800047b0:	df8080e7          	jalr	-520(ra) # 800015a4 <_Z4putcc>
        string++;
    800047b4:	00148493          	addi	s1,s1,1
    while (*string != '\0')
    800047b8:	fedff06f          	j	800047a4 <_Z11printStringPKc+0x40>
    }
    UNLOCK();
    800047bc:	00000613          	li	a2,0
    800047c0:	00100593          	li	a1,1
    800047c4:	00006517          	auipc	a0,0x6
    800047c8:	bac50513          	addi	a0,a0,-1108 # 8000a370 <lockPrint>
    800047cc:	ffffd097          	auipc	ra,0xffffd
    800047d0:	a54080e7          	jalr	-1452(ra) # 80001220 <copy_and_swap>
    800047d4:	fe0514e3          	bnez	a0,800047bc <_Z11printStringPKc+0x58>
}
    800047d8:	01813083          	ld	ra,24(sp)
    800047dc:	01013403          	ld	s0,16(sp)
    800047e0:	00813483          	ld	s1,8(sp)
    800047e4:	02010113          	addi	sp,sp,32
    800047e8:	00008067          	ret

00000000800047ec <_Z9getStringPci>:

char* getString(char *buf, int max) {
    800047ec:	fd010113          	addi	sp,sp,-48
    800047f0:	02113423          	sd	ra,40(sp)
    800047f4:	02813023          	sd	s0,32(sp)
    800047f8:	00913c23          	sd	s1,24(sp)
    800047fc:	01213823          	sd	s2,16(sp)
    80004800:	01313423          	sd	s3,8(sp)
    80004804:	01413023          	sd	s4,0(sp)
    80004808:	03010413          	addi	s0,sp,48
    8000480c:	00050993          	mv	s3,a0
    80004810:	00058a13          	mv	s4,a1
    LOCK();
    80004814:	00100613          	li	a2,1
    80004818:	00000593          	li	a1,0
    8000481c:	00006517          	auipc	a0,0x6
    80004820:	b5450513          	addi	a0,a0,-1196 # 8000a370 <lockPrint>
    80004824:	ffffd097          	auipc	ra,0xffffd
    80004828:	9fc080e7          	jalr	-1540(ra) # 80001220 <copy_and_swap>
    8000482c:	00050863          	beqz	a0,8000483c <_Z9getStringPci+0x50>
    80004830:	ffffd097          	auipc	ra,0xffffd
    80004834:	b60080e7          	jalr	-1184(ra) # 80001390 <_Z15thread_dispatchv>
    80004838:	fddff06f          	j	80004814 <_Z9getStringPci+0x28>
    int i, cc;
    char c;

    for(i=0; i+1 < max; ){
    8000483c:	00000913          	li	s2,0
    80004840:	00090493          	mv	s1,s2
    80004844:	0019091b          	addiw	s2,s2,1
    80004848:	03495a63          	bge	s2,s4,8000487c <_Z9getStringPci+0x90>
        cc = getc();
    8000484c:	ffffd097          	auipc	ra,0xffffd
    80004850:	d1c080e7          	jalr	-740(ra) # 80001568 <_Z4getcv>
        if(cc < 1)
    80004854:	02050463          	beqz	a0,8000487c <_Z9getStringPci+0x90>
            break;
        c = cc;
        buf[i++] = c;
    80004858:	009984b3          	add	s1,s3,s1
    8000485c:	00a48023          	sb	a0,0(s1)
        if(c == '\n' || c == '\r')
    80004860:	00a00793          	li	a5,10
    80004864:	00f50a63          	beq	a0,a5,80004878 <_Z9getStringPci+0x8c>
    80004868:	00d00793          	li	a5,13
    8000486c:	fcf51ae3          	bne	a0,a5,80004840 <_Z9getStringPci+0x54>
        buf[i++] = c;
    80004870:	00090493          	mv	s1,s2
    80004874:	0080006f          	j	8000487c <_Z9getStringPci+0x90>
    80004878:	00090493          	mv	s1,s2
            break;
    }
    buf[i] = '\0';
    8000487c:	009984b3          	add	s1,s3,s1
    80004880:	00048023          	sb	zero,0(s1)

    UNLOCK();
    80004884:	00000613          	li	a2,0
    80004888:	00100593          	li	a1,1
    8000488c:	00006517          	auipc	a0,0x6
    80004890:	ae450513          	addi	a0,a0,-1308 # 8000a370 <lockPrint>
    80004894:	ffffd097          	auipc	ra,0xffffd
    80004898:	98c080e7          	jalr	-1652(ra) # 80001220 <copy_and_swap>
    8000489c:	fe0514e3          	bnez	a0,80004884 <_Z9getStringPci+0x98>
    return buf;
}
    800048a0:	00098513          	mv	a0,s3
    800048a4:	02813083          	ld	ra,40(sp)
    800048a8:	02013403          	ld	s0,32(sp)
    800048ac:	01813483          	ld	s1,24(sp)
    800048b0:	01013903          	ld	s2,16(sp)
    800048b4:	00813983          	ld	s3,8(sp)
    800048b8:	00013a03          	ld	s4,0(sp)
    800048bc:	03010113          	addi	sp,sp,48
    800048c0:	00008067          	ret

00000000800048c4 <_Z11stringToIntPKc>:

int stringToInt(const char *s) {
    800048c4:	ff010113          	addi	sp,sp,-16
    800048c8:	00813423          	sd	s0,8(sp)
    800048cc:	01010413          	addi	s0,sp,16
    800048d0:	00050693          	mv	a3,a0
    int n;

    n = 0;
    800048d4:	00000513          	li	a0,0
    while ('0' <= *s && *s <= '9')
    800048d8:	0006c603          	lbu	a2,0(a3)
    800048dc:	fd06071b          	addiw	a4,a2,-48
    800048e0:	0ff77713          	andi	a4,a4,255
    800048e4:	00900793          	li	a5,9
    800048e8:	02e7e063          	bltu	a5,a4,80004908 <_Z11stringToIntPKc+0x44>
        n = n * 10 + *s++ - '0';
    800048ec:	0025179b          	slliw	a5,a0,0x2
    800048f0:	00a787bb          	addw	a5,a5,a0
    800048f4:	0017979b          	slliw	a5,a5,0x1
    800048f8:	00168693          	addi	a3,a3,1
    800048fc:	00c787bb          	addw	a5,a5,a2
    80004900:	fd07851b          	addiw	a0,a5,-48
    while ('0' <= *s && *s <= '9')
    80004904:	fd5ff06f          	j	800048d8 <_Z11stringToIntPKc+0x14>
    return n;
}
    80004908:	00813403          	ld	s0,8(sp)
    8000490c:	01010113          	addi	sp,sp,16
    80004910:	00008067          	ret

0000000080004914 <_Z8printIntiii>:

char digits[] = "0123456789ABCDEF";

void printInt(int xx, int base, int sgn)
{
    80004914:	fc010113          	addi	sp,sp,-64
    80004918:	02113c23          	sd	ra,56(sp)
    8000491c:	02813823          	sd	s0,48(sp)
    80004920:	02913423          	sd	s1,40(sp)
    80004924:	03213023          	sd	s2,32(sp)
    80004928:	01313c23          	sd	s3,24(sp)
    8000492c:	04010413          	addi	s0,sp,64
    80004930:	00050493          	mv	s1,a0
    80004934:	00058913          	mv	s2,a1
    80004938:	00060993          	mv	s3,a2
    LOCK();
    8000493c:	00100613          	li	a2,1
    80004940:	00000593          	li	a1,0
    80004944:	00006517          	auipc	a0,0x6
    80004948:	a2c50513          	addi	a0,a0,-1492 # 8000a370 <lockPrint>
    8000494c:	ffffd097          	auipc	ra,0xffffd
    80004950:	8d4080e7          	jalr	-1836(ra) # 80001220 <copy_and_swap>
    80004954:	00050863          	beqz	a0,80004964 <_Z8printIntiii+0x50>
    80004958:	ffffd097          	auipc	ra,0xffffd
    8000495c:	a38080e7          	jalr	-1480(ra) # 80001390 <_Z15thread_dispatchv>
    80004960:	fddff06f          	j	8000493c <_Z8printIntiii+0x28>
    char buf[16];
    int i, neg;
    uint x;

    neg = 0;
    if(sgn && xx < 0){
    80004964:	00098463          	beqz	s3,8000496c <_Z8printIntiii+0x58>
    80004968:	0804c463          	bltz	s1,800049f0 <_Z8printIntiii+0xdc>
        neg = 1;
        x = -xx;
    } else {
        x = xx;
    8000496c:	0004851b          	sext.w	a0,s1
    neg = 0;
    80004970:	00000593          	li	a1,0
    }

    i = 0;
    80004974:	00000493          	li	s1,0
    do{
        buf[i++] = digits[x % base];
    80004978:	0009079b          	sext.w	a5,s2
    8000497c:	0325773b          	remuw	a4,a0,s2
    80004980:	00048613          	mv	a2,s1
    80004984:	0014849b          	addiw	s1,s1,1
    80004988:	02071693          	slli	a3,a4,0x20
    8000498c:	0206d693          	srli	a3,a3,0x20
    80004990:	00006717          	auipc	a4,0x6
    80004994:	8f870713          	addi	a4,a4,-1800 # 8000a288 <digits>
    80004998:	00d70733          	add	a4,a4,a3
    8000499c:	00074683          	lbu	a3,0(a4)
    800049a0:	fd040713          	addi	a4,s0,-48
    800049a4:	00c70733          	add	a4,a4,a2
    800049a8:	fed70823          	sb	a3,-16(a4)
    }while((x /= base) != 0);
    800049ac:	0005071b          	sext.w	a4,a0
    800049b0:	0325553b          	divuw	a0,a0,s2
    800049b4:	fcf772e3          	bgeu	a4,a5,80004978 <_Z8printIntiii+0x64>
    if(neg)
    800049b8:	00058c63          	beqz	a1,800049d0 <_Z8printIntiii+0xbc>
        buf[i++] = '-';
    800049bc:	fd040793          	addi	a5,s0,-48
    800049c0:	009784b3          	add	s1,a5,s1
    800049c4:	02d00793          	li	a5,45
    800049c8:	fef48823          	sb	a5,-16(s1)
    800049cc:	0026049b          	addiw	s1,a2,2

    while(--i >= 0)
    800049d0:	fff4849b          	addiw	s1,s1,-1
    800049d4:	0204c463          	bltz	s1,800049fc <_Z8printIntiii+0xe8>
        putc(buf[i]);
    800049d8:	fd040793          	addi	a5,s0,-48
    800049dc:	009787b3          	add	a5,a5,s1
    800049e0:	ff07c503          	lbu	a0,-16(a5)
    800049e4:	ffffd097          	auipc	ra,0xffffd
    800049e8:	bc0080e7          	jalr	-1088(ra) # 800015a4 <_Z4putcc>
    800049ec:	fe5ff06f          	j	800049d0 <_Z8printIntiii+0xbc>
        x = -xx;
    800049f0:	4090053b          	negw	a0,s1
        neg = 1;
    800049f4:	00100593          	li	a1,1
        x = -xx;
    800049f8:	f7dff06f          	j	80004974 <_Z8printIntiii+0x60>

    UNLOCK();
    800049fc:	00000613          	li	a2,0
    80004a00:	00100593          	li	a1,1
    80004a04:	00006517          	auipc	a0,0x6
    80004a08:	96c50513          	addi	a0,a0,-1684 # 8000a370 <lockPrint>
    80004a0c:	ffffd097          	auipc	ra,0xffffd
    80004a10:	814080e7          	jalr	-2028(ra) # 80001220 <copy_and_swap>
    80004a14:	fe0514e3          	bnez	a0,800049fc <_Z8printIntiii+0xe8>
    80004a18:	03813083          	ld	ra,56(sp)
    80004a1c:	03013403          	ld	s0,48(sp)
    80004a20:	02813483          	ld	s1,40(sp)
    80004a24:	02013903          	ld	s2,32(sp)
    80004a28:	01813983          	ld	s3,24(sp)
    80004a2c:	04010113          	addi	sp,sp,64
    80004a30:	00008067          	ret

0000000080004a34 <_ZN9BufferCPPC1Ei>:
#include "buffer_CPP_API.hpp"

BufferCPP::BufferCPP(int _cap) : cap(_cap + 1), head(0), tail(0) {
    80004a34:	fd010113          	addi	sp,sp,-48
    80004a38:	02113423          	sd	ra,40(sp)
    80004a3c:	02813023          	sd	s0,32(sp)
    80004a40:	00913c23          	sd	s1,24(sp)
    80004a44:	01213823          	sd	s2,16(sp)
    80004a48:	01313423          	sd	s3,8(sp)
    80004a4c:	03010413          	addi	s0,sp,48
    80004a50:	00050493          	mv	s1,a0
    80004a54:	00058913          	mv	s2,a1
    80004a58:	0015879b          	addiw	a5,a1,1
    80004a5c:	0007851b          	sext.w	a0,a5
    80004a60:	00f4a023          	sw	a5,0(s1)
    80004a64:	0004a823          	sw	zero,16(s1)
    80004a68:	0004aa23          	sw	zero,20(s1)
    buffer = (int *)mem_alloc(sizeof(int) * cap);
    80004a6c:	00251513          	slli	a0,a0,0x2
    80004a70:	ffffc097          	auipc	ra,0xffffc
    80004a74:	7d0080e7          	jalr	2000(ra) # 80001240 <_Z9mem_allocm>
    80004a78:	00a4b423          	sd	a0,8(s1)
    itemAvailable = new Semaphore(0);
    80004a7c:	01000513          	li	a0,16
    80004a80:	ffffd097          	auipc	ra,0xffffd
    80004a84:	6a8080e7          	jalr	1704(ra) # 80002128 <_Znwm>
    80004a88:	00050993          	mv	s3,a0
    80004a8c:	00000593          	li	a1,0
    80004a90:	ffffd097          	auipc	ra,0xffffd
    80004a94:	7c4080e7          	jalr	1988(ra) # 80002254 <_ZN9SemaphoreC1Ej>
    80004a98:	0334b023          	sd	s3,32(s1)
    spaceAvailable = new Semaphore(_cap);
    80004a9c:	01000513          	li	a0,16
    80004aa0:	ffffd097          	auipc	ra,0xffffd
    80004aa4:	688080e7          	jalr	1672(ra) # 80002128 <_Znwm>
    80004aa8:	00050993          	mv	s3,a0
    80004aac:	00090593          	mv	a1,s2
    80004ab0:	ffffd097          	auipc	ra,0xffffd
    80004ab4:	7a4080e7          	jalr	1956(ra) # 80002254 <_ZN9SemaphoreC1Ej>
    80004ab8:	0134bc23          	sd	s3,24(s1)
    mutexHead = new Semaphore(1);
    80004abc:	01000513          	li	a0,16
    80004ac0:	ffffd097          	auipc	ra,0xffffd
    80004ac4:	668080e7          	jalr	1640(ra) # 80002128 <_Znwm>
    80004ac8:	00050913          	mv	s2,a0
    80004acc:	00100593          	li	a1,1
    80004ad0:	ffffd097          	auipc	ra,0xffffd
    80004ad4:	784080e7          	jalr	1924(ra) # 80002254 <_ZN9SemaphoreC1Ej>
    80004ad8:	0324b423          	sd	s2,40(s1)
    mutexTail = new Semaphore(1);
    80004adc:	01000513          	li	a0,16
    80004ae0:	ffffd097          	auipc	ra,0xffffd
    80004ae4:	648080e7          	jalr	1608(ra) # 80002128 <_Znwm>
    80004ae8:	00050913          	mv	s2,a0
    80004aec:	00100593          	li	a1,1
    80004af0:	ffffd097          	auipc	ra,0xffffd
    80004af4:	764080e7          	jalr	1892(ra) # 80002254 <_ZN9SemaphoreC1Ej>
    80004af8:	0324b823          	sd	s2,48(s1)
}
    80004afc:	02813083          	ld	ra,40(sp)
    80004b00:	02013403          	ld	s0,32(sp)
    80004b04:	01813483          	ld	s1,24(sp)
    80004b08:	01013903          	ld	s2,16(sp)
    80004b0c:	00813983          	ld	s3,8(sp)
    80004b10:	03010113          	addi	sp,sp,48
    80004b14:	00008067          	ret
    80004b18:	00050493          	mv	s1,a0
    itemAvailable = new Semaphore(0);
    80004b1c:	00098513          	mv	a0,s3
    80004b20:	ffffd097          	auipc	ra,0xffffd
    80004b24:	4e0080e7          	jalr	1248(ra) # 80002000 <_ZdlPv>
    80004b28:	00048513          	mv	a0,s1
    80004b2c:	00007097          	auipc	ra,0x7
    80004b30:	91c080e7          	jalr	-1764(ra) # 8000b448 <_Unwind_Resume>
    80004b34:	00050493          	mv	s1,a0
    spaceAvailable = new Semaphore(_cap);
    80004b38:	00098513          	mv	a0,s3
    80004b3c:	ffffd097          	auipc	ra,0xffffd
    80004b40:	4c4080e7          	jalr	1220(ra) # 80002000 <_ZdlPv>
    80004b44:	00048513          	mv	a0,s1
    80004b48:	00007097          	auipc	ra,0x7
    80004b4c:	900080e7          	jalr	-1792(ra) # 8000b448 <_Unwind_Resume>
    80004b50:	00050493          	mv	s1,a0
    mutexHead = new Semaphore(1);
    80004b54:	00090513          	mv	a0,s2
    80004b58:	ffffd097          	auipc	ra,0xffffd
    80004b5c:	4a8080e7          	jalr	1192(ra) # 80002000 <_ZdlPv>
    80004b60:	00048513          	mv	a0,s1
    80004b64:	00007097          	auipc	ra,0x7
    80004b68:	8e4080e7          	jalr	-1820(ra) # 8000b448 <_Unwind_Resume>
    80004b6c:	00050493          	mv	s1,a0
    mutexTail = new Semaphore(1);
    80004b70:	00090513          	mv	a0,s2
    80004b74:	ffffd097          	auipc	ra,0xffffd
    80004b78:	48c080e7          	jalr	1164(ra) # 80002000 <_ZdlPv>
    80004b7c:	00048513          	mv	a0,s1
    80004b80:	00007097          	auipc	ra,0x7
    80004b84:	8c8080e7          	jalr	-1848(ra) # 8000b448 <_Unwind_Resume>

0000000080004b88 <_ZN9BufferCPP3putEi>:
    delete mutexTail;
    delete mutexHead;

}

void BufferCPP::put(int val) {
    80004b88:	fe010113          	addi	sp,sp,-32
    80004b8c:	00113c23          	sd	ra,24(sp)
    80004b90:	00813823          	sd	s0,16(sp)
    80004b94:	00913423          	sd	s1,8(sp)
    80004b98:	01213023          	sd	s2,0(sp)
    80004b9c:	02010413          	addi	s0,sp,32
    80004ba0:	00050493          	mv	s1,a0
    80004ba4:	00058913          	mv	s2,a1
    spaceAvailable->wait();
    80004ba8:	01853503          	ld	a0,24(a0)
    80004bac:	ffffd097          	auipc	ra,0xffffd
    80004bb0:	710080e7          	jalr	1808(ra) # 800022bc <_ZN9Semaphore4waitEv>

    mutexTail->wait();
    80004bb4:	0304b503          	ld	a0,48(s1)
    80004bb8:	ffffd097          	auipc	ra,0xffffd
    80004bbc:	704080e7          	jalr	1796(ra) # 800022bc <_ZN9Semaphore4waitEv>
    buffer[tail] = val;
    80004bc0:	0084b783          	ld	a5,8(s1)
    80004bc4:	0144a703          	lw	a4,20(s1)
    80004bc8:	00271713          	slli	a4,a4,0x2
    80004bcc:	00e787b3          	add	a5,a5,a4
    80004bd0:	0127a023          	sw	s2,0(a5)
    tail = (tail + 1) % cap;
    80004bd4:	0144a783          	lw	a5,20(s1)
    80004bd8:	0017879b          	addiw	a5,a5,1
    80004bdc:	0004a703          	lw	a4,0(s1)
    80004be0:	02e7e7bb          	remw	a5,a5,a4
    80004be4:	00f4aa23          	sw	a5,20(s1)
    mutexTail->signal();
    80004be8:	0304b503          	ld	a0,48(s1)
    80004bec:	ffffd097          	auipc	ra,0xffffd
    80004bf0:	6a4080e7          	jalr	1700(ra) # 80002290 <_ZN9Semaphore6signalEv>

    itemAvailable->signal();
    80004bf4:	0204b503          	ld	a0,32(s1)
    80004bf8:	ffffd097          	auipc	ra,0xffffd
    80004bfc:	698080e7          	jalr	1688(ra) # 80002290 <_ZN9Semaphore6signalEv>

}
    80004c00:	01813083          	ld	ra,24(sp)
    80004c04:	01013403          	ld	s0,16(sp)
    80004c08:	00813483          	ld	s1,8(sp)
    80004c0c:	00013903          	ld	s2,0(sp)
    80004c10:	02010113          	addi	sp,sp,32
    80004c14:	00008067          	ret

0000000080004c18 <_ZN9BufferCPP3getEv>:

int BufferCPP::get() {
    80004c18:	fe010113          	addi	sp,sp,-32
    80004c1c:	00113c23          	sd	ra,24(sp)
    80004c20:	00813823          	sd	s0,16(sp)
    80004c24:	00913423          	sd	s1,8(sp)
    80004c28:	01213023          	sd	s2,0(sp)
    80004c2c:	02010413          	addi	s0,sp,32
    80004c30:	00050493          	mv	s1,a0
    itemAvailable->wait();
    80004c34:	02053503          	ld	a0,32(a0)
    80004c38:	ffffd097          	auipc	ra,0xffffd
    80004c3c:	684080e7          	jalr	1668(ra) # 800022bc <_ZN9Semaphore4waitEv>

    mutexHead->wait();
    80004c40:	0284b503          	ld	a0,40(s1)
    80004c44:	ffffd097          	auipc	ra,0xffffd
    80004c48:	678080e7          	jalr	1656(ra) # 800022bc <_ZN9Semaphore4waitEv>

    int ret = buffer[head];
    80004c4c:	0084b703          	ld	a4,8(s1)
    80004c50:	0104a783          	lw	a5,16(s1)
    80004c54:	00279693          	slli	a3,a5,0x2
    80004c58:	00d70733          	add	a4,a4,a3
    80004c5c:	00072903          	lw	s2,0(a4)
    head = (head + 1) % cap;
    80004c60:	0017879b          	addiw	a5,a5,1
    80004c64:	0004a703          	lw	a4,0(s1)
    80004c68:	02e7e7bb          	remw	a5,a5,a4
    80004c6c:	00f4a823          	sw	a5,16(s1)
    mutexHead->signal();
    80004c70:	0284b503          	ld	a0,40(s1)
    80004c74:	ffffd097          	auipc	ra,0xffffd
    80004c78:	61c080e7          	jalr	1564(ra) # 80002290 <_ZN9Semaphore6signalEv>

    spaceAvailable->signal();
    80004c7c:	0184b503          	ld	a0,24(s1)
    80004c80:	ffffd097          	auipc	ra,0xffffd
    80004c84:	610080e7          	jalr	1552(ra) # 80002290 <_ZN9Semaphore6signalEv>

    return ret;
}
    80004c88:	00090513          	mv	a0,s2
    80004c8c:	01813083          	ld	ra,24(sp)
    80004c90:	01013403          	ld	s0,16(sp)
    80004c94:	00813483          	ld	s1,8(sp)
    80004c98:	00013903          	ld	s2,0(sp)
    80004c9c:	02010113          	addi	sp,sp,32
    80004ca0:	00008067          	ret

0000000080004ca4 <_ZN9BufferCPP6getCntEv>:

int BufferCPP::getCnt() {
    80004ca4:	fe010113          	addi	sp,sp,-32
    80004ca8:	00113c23          	sd	ra,24(sp)
    80004cac:	00813823          	sd	s0,16(sp)
    80004cb0:	00913423          	sd	s1,8(sp)
    80004cb4:	01213023          	sd	s2,0(sp)
    80004cb8:	02010413          	addi	s0,sp,32
    80004cbc:	00050493          	mv	s1,a0
    int ret;

    mutexHead->wait();
    80004cc0:	02853503          	ld	a0,40(a0)
    80004cc4:	ffffd097          	auipc	ra,0xffffd
    80004cc8:	5f8080e7          	jalr	1528(ra) # 800022bc <_ZN9Semaphore4waitEv>
    mutexTail->wait();
    80004ccc:	0304b503          	ld	a0,48(s1)
    80004cd0:	ffffd097          	auipc	ra,0xffffd
    80004cd4:	5ec080e7          	jalr	1516(ra) # 800022bc <_ZN9Semaphore4waitEv>

    if (tail >= head) {
    80004cd8:	0144a783          	lw	a5,20(s1)
    80004cdc:	0104a903          	lw	s2,16(s1)
    80004ce0:	0327ce63          	blt	a5,s2,80004d1c <_ZN9BufferCPP6getCntEv+0x78>
        ret = tail - head;
    80004ce4:	4127893b          	subw	s2,a5,s2
    } else {
        ret = cap - head + tail;
    }

    mutexTail->signal();
    80004ce8:	0304b503          	ld	a0,48(s1)
    80004cec:	ffffd097          	auipc	ra,0xffffd
    80004cf0:	5a4080e7          	jalr	1444(ra) # 80002290 <_ZN9Semaphore6signalEv>
    mutexHead->signal();
    80004cf4:	0284b503          	ld	a0,40(s1)
    80004cf8:	ffffd097          	auipc	ra,0xffffd
    80004cfc:	598080e7          	jalr	1432(ra) # 80002290 <_ZN9Semaphore6signalEv>

    return ret;
}
    80004d00:	00090513          	mv	a0,s2
    80004d04:	01813083          	ld	ra,24(sp)
    80004d08:	01013403          	ld	s0,16(sp)
    80004d0c:	00813483          	ld	s1,8(sp)
    80004d10:	00013903          	ld	s2,0(sp)
    80004d14:	02010113          	addi	sp,sp,32
    80004d18:	00008067          	ret
        ret = cap - head + tail;
    80004d1c:	0004a703          	lw	a4,0(s1)
    80004d20:	4127093b          	subw	s2,a4,s2
    80004d24:	00f9093b          	addw	s2,s2,a5
    80004d28:	fc1ff06f          	j	80004ce8 <_ZN9BufferCPP6getCntEv+0x44>

0000000080004d2c <_ZN9BufferCPPD1Ev>:
BufferCPP::~BufferCPP() {
    80004d2c:	fe010113          	addi	sp,sp,-32
    80004d30:	00113c23          	sd	ra,24(sp)
    80004d34:	00813823          	sd	s0,16(sp)
    80004d38:	00913423          	sd	s1,8(sp)
    80004d3c:	02010413          	addi	s0,sp,32
    80004d40:	00050493          	mv	s1,a0
    Console::putc('\n');
    80004d44:	00a00513          	li	a0,10
    80004d48:	ffffd097          	auipc	ra,0xffffd
    80004d4c:	5f4080e7          	jalr	1524(ra) # 8000233c <_ZN7Console4putcEc>
    printString("Buffer deleted!\n");
    80004d50:	00003517          	auipc	a0,0x3
    80004d54:	6e050513          	addi	a0,a0,1760 # 80008430 <_ZZ12printIntegermE6digits+0x3f8>
    80004d58:	00000097          	auipc	ra,0x0
    80004d5c:	a0c080e7          	jalr	-1524(ra) # 80004764 <_Z11printStringPKc>
    while (getCnt()) {
    80004d60:	00048513          	mv	a0,s1
    80004d64:	00000097          	auipc	ra,0x0
    80004d68:	f40080e7          	jalr	-192(ra) # 80004ca4 <_ZN9BufferCPP6getCntEv>
    80004d6c:	02050c63          	beqz	a0,80004da4 <_ZN9BufferCPPD1Ev+0x78>
        char ch = buffer[head];
    80004d70:	0084b783          	ld	a5,8(s1)
    80004d74:	0104a703          	lw	a4,16(s1)
    80004d78:	00271713          	slli	a4,a4,0x2
    80004d7c:	00e787b3          	add	a5,a5,a4
        Console::putc(ch);
    80004d80:	0007c503          	lbu	a0,0(a5)
    80004d84:	ffffd097          	auipc	ra,0xffffd
    80004d88:	5b8080e7          	jalr	1464(ra) # 8000233c <_ZN7Console4putcEc>
        head = (head + 1) % cap;
    80004d8c:	0104a783          	lw	a5,16(s1)
    80004d90:	0017879b          	addiw	a5,a5,1
    80004d94:	0004a703          	lw	a4,0(s1)
    80004d98:	02e7e7bb          	remw	a5,a5,a4
    80004d9c:	00f4a823          	sw	a5,16(s1)
    while (getCnt()) {
    80004da0:	fc1ff06f          	j	80004d60 <_ZN9BufferCPPD1Ev+0x34>
    Console::putc('!');
    80004da4:	02100513          	li	a0,33
    80004da8:	ffffd097          	auipc	ra,0xffffd
    80004dac:	594080e7          	jalr	1428(ra) # 8000233c <_ZN7Console4putcEc>
    Console::putc('\n');
    80004db0:	00a00513          	li	a0,10
    80004db4:	ffffd097          	auipc	ra,0xffffd
    80004db8:	588080e7          	jalr	1416(ra) # 8000233c <_ZN7Console4putcEc>
    mem_free(buffer);
    80004dbc:	0084b503          	ld	a0,8(s1)
    80004dc0:	ffffc097          	auipc	ra,0xffffc
    80004dc4:	4cc080e7          	jalr	1228(ra) # 8000128c <_Z8mem_freePv>
    delete itemAvailable;
    80004dc8:	0204b503          	ld	a0,32(s1)
    80004dcc:	00050863          	beqz	a0,80004ddc <_ZN9BufferCPPD1Ev+0xb0>
    80004dd0:	00053783          	ld	a5,0(a0)
    80004dd4:	0087b783          	ld	a5,8(a5)
    80004dd8:	000780e7          	jalr	a5
    delete spaceAvailable;
    80004ddc:	0184b503          	ld	a0,24(s1)
    80004de0:	00050863          	beqz	a0,80004df0 <_ZN9BufferCPPD1Ev+0xc4>
    80004de4:	00053783          	ld	a5,0(a0)
    80004de8:	0087b783          	ld	a5,8(a5)
    80004dec:	000780e7          	jalr	a5
    delete mutexTail;
    80004df0:	0304b503          	ld	a0,48(s1)
    80004df4:	00050863          	beqz	a0,80004e04 <_ZN9BufferCPPD1Ev+0xd8>
    80004df8:	00053783          	ld	a5,0(a0)
    80004dfc:	0087b783          	ld	a5,8(a5)
    80004e00:	000780e7          	jalr	a5
    delete mutexHead;
    80004e04:	0284b503          	ld	a0,40(s1)
    80004e08:	00050863          	beqz	a0,80004e18 <_ZN9BufferCPPD1Ev+0xec>
    80004e0c:	00053783          	ld	a5,0(a0)
    80004e10:	0087b783          	ld	a5,8(a5)
    80004e14:	000780e7          	jalr	a5
}
    80004e18:	01813083          	ld	ra,24(sp)
    80004e1c:	01013403          	ld	s0,16(sp)
    80004e20:	00813483          	ld	s1,8(sp)
    80004e24:	02010113          	addi	sp,sp,32
    80004e28:	00008067          	ret

0000000080004e2c <_Z8userMainv>:
#include "../test/ConsumerProducer_CPP_API_test.hpp"
#include "System_Mode_test.hpp"

#endif

void userMain() {
    80004e2c:	fe010113          	addi	sp,sp,-32
    80004e30:	00113c23          	sd	ra,24(sp)
    80004e34:	00813823          	sd	s0,16(sp)
    80004e38:	00913423          	sd	s1,8(sp)
    80004e3c:	01213023          	sd	s2,0(sp)
    80004e40:	02010413          	addi	s0,sp,32
    printString("Unesite broj testa? [1-7]\n");
    80004e44:	00003517          	auipc	a0,0x3
    80004e48:	60450513          	addi	a0,a0,1540 # 80008448 <_ZZ12printIntegermE6digits+0x410>
    80004e4c:	00000097          	auipc	ra,0x0
    80004e50:	918080e7          	jalr	-1768(ra) # 80004764 <_Z11printStringPKc>
    int test = getc() - '0';
    80004e54:	ffffc097          	auipc	ra,0xffffc
    80004e58:	714080e7          	jalr	1812(ra) # 80001568 <_Z4getcv>
    80004e5c:	00050913          	mv	s2,a0
    80004e60:	fd05049b          	addiw	s1,a0,-48
    getc(); // Enter posle broja
    80004e64:	ffffc097          	auipc	ra,0xffffc
    80004e68:	704080e7          	jalr	1796(ra) # 80001568 <_Z4getcv>
            printString("Nije navedeno da je zadatak 3 implementiran\n");
            return;
        }
    }

    if (test >= 5 && test <= 6) {
    80004e6c:	fcb9091b          	addiw	s2,s2,-53
    80004e70:	00100793          	li	a5,1
    80004e74:	0327f463          	bgeu	a5,s2,80004e9c <_Z8userMainv+0x70>
            printString("Nije navedeno da je zadatak 4 implementiran\n");
            return;
        }
    }

    switch (test) {
    80004e78:	00700793          	li	a5,7
    80004e7c:	0e97e263          	bltu	a5,s1,80004f60 <_Z8userMainv+0x134>
    80004e80:	00249493          	slli	s1,s1,0x2
    80004e84:	00003717          	auipc	a4,0x3
    80004e88:	7dc70713          	addi	a4,a4,2012 # 80008660 <_ZZ12printIntegermE6digits+0x628>
    80004e8c:	00e484b3          	add	s1,s1,a4
    80004e90:	0004a783          	lw	a5,0(s1)
    80004e94:	00e787b3          	add	a5,a5,a4
    80004e98:	00078067          	jr	a5
            printString("Nije navedeno da je zadatak 4 implementiran\n");
    80004e9c:	00003517          	auipc	a0,0x3
    80004ea0:	5cc50513          	addi	a0,a0,1484 # 80008468 <_ZZ12printIntegermE6digits+0x430>
    80004ea4:	00000097          	auipc	ra,0x0
    80004ea8:	8c0080e7          	jalr	-1856(ra) # 80004764 <_Z11printStringPKc>
#endif
            break;
        default:
            printString("Niste uneli odgovarajuci broj za test\n");
    }
    80004eac:	01813083          	ld	ra,24(sp)
    80004eb0:	01013403          	ld	s0,16(sp)
    80004eb4:	00813483          	ld	s1,8(sp)
    80004eb8:	00013903          	ld	s2,0(sp)
    80004ebc:	02010113          	addi	sp,sp,32
    80004ec0:	00008067          	ret
            Threads_C_API_test();
    80004ec4:	fffff097          	auipc	ra,0xfffff
    80004ec8:	f18080e7          	jalr	-232(ra) # 80003ddc <_Z18Threads_C_API_testv>
            printString("TEST 1 (zadatak 2, niti C API i sinhrona promena konteksta)\n");
    80004ecc:	00003517          	auipc	a0,0x3
    80004ed0:	5cc50513          	addi	a0,a0,1484 # 80008498 <_ZZ12printIntegermE6digits+0x460>
    80004ed4:	00000097          	auipc	ra,0x0
    80004ed8:	890080e7          	jalr	-1904(ra) # 80004764 <_Z11printStringPKc>
            break;
    80004edc:	fd1ff06f          	j	80004eac <_Z8userMainv+0x80>
            Threads_CPP_API_test();
    80004ee0:	ffffe097          	auipc	ra,0xffffe
    80004ee4:	52c080e7          	jalr	1324(ra) # 8000340c <_Z20Threads_CPP_API_testv>
            printString("TEST 2 (zadatak 2., niti CPP API i sinhrona promena konteksta)\n");
    80004ee8:	00003517          	auipc	a0,0x3
    80004eec:	5f050513          	addi	a0,a0,1520 # 800084d8 <_ZZ12printIntegermE6digits+0x4a0>
    80004ef0:	00000097          	auipc	ra,0x0
    80004ef4:	874080e7          	jalr	-1932(ra) # 80004764 <_Z11printStringPKc>
            break;
    80004ef8:	fb5ff06f          	j	80004eac <_Z8userMainv+0x80>
            producerConsumer_C_API();
    80004efc:	ffffe097          	auipc	ra,0xffffe
    80004f00:	d64080e7          	jalr	-668(ra) # 80002c60 <_Z22producerConsumer_C_APIv>
            printString("TEST 3 (zadatak 3., kompletan C API sa semaforima, sinhrona promena konteksta)\n");
    80004f04:	00003517          	auipc	a0,0x3
    80004f08:	61450513          	addi	a0,a0,1556 # 80008518 <_ZZ12printIntegermE6digits+0x4e0>
    80004f0c:	00000097          	auipc	ra,0x0
    80004f10:	858080e7          	jalr	-1960(ra) # 80004764 <_Z11printStringPKc>
            break;
    80004f14:	f99ff06f          	j	80004eac <_Z8userMainv+0x80>
            producerConsumer_CPP_Sync_API();
    80004f18:	fffff097          	auipc	ra,0xfffff
    80004f1c:	208080e7          	jalr	520(ra) # 80004120 <_Z29producerConsumer_CPP_Sync_APIv>
            printString("TEST 4 (zadatak 3., kompletan CPP API sa semaforima, sinhrona promena konteksta)\n");
    80004f20:	00003517          	auipc	a0,0x3
    80004f24:	64850513          	addi	a0,a0,1608 # 80008568 <_ZZ12printIntegermE6digits+0x530>
    80004f28:	00000097          	auipc	ra,0x0
    80004f2c:	83c080e7          	jalr	-1988(ra) # 80004764 <_Z11printStringPKc>
            break;
    80004f30:	f7dff06f          	j	80004eac <_Z8userMainv+0x80>
            System_Mode_test();
    80004f34:	00000097          	auipc	ra,0x0
    80004f38:	52c080e7          	jalr	1324(ra) # 80005460 <_Z16System_Mode_testv>
            printString("Test se nije uspesno zavrsio\n");
    80004f3c:	00003517          	auipc	a0,0x3
    80004f40:	68450513          	addi	a0,a0,1668 # 800085c0 <_ZZ12printIntegermE6digits+0x588>
    80004f44:	00000097          	auipc	ra,0x0
    80004f48:	820080e7          	jalr	-2016(ra) # 80004764 <_Z11printStringPKc>
            printString("TEST 7 (zadatak 2., testiranje da li se korisnicki kod izvrsava u korisnickom rezimu)\n");
    80004f4c:	00003517          	auipc	a0,0x3
    80004f50:	69450513          	addi	a0,a0,1684 # 800085e0 <_ZZ12printIntegermE6digits+0x5a8>
    80004f54:	00000097          	auipc	ra,0x0
    80004f58:	810080e7          	jalr	-2032(ra) # 80004764 <_Z11printStringPKc>
            break;
    80004f5c:	f51ff06f          	j	80004eac <_Z8userMainv+0x80>
            printString("Niste uneli odgovarajuci broj za test\n");
    80004f60:	00003517          	auipc	a0,0x3
    80004f64:	6d850513          	addi	a0,a0,1752 # 80008638 <_ZZ12printIntegermE6digits+0x600>
    80004f68:	fffff097          	auipc	ra,0xfffff
    80004f6c:	7fc080e7          	jalr	2044(ra) # 80004764 <_Z11printStringPKc>
    80004f70:	f3dff06f          	j	80004eac <_Z8userMainv+0x80>

0000000080004f74 <_ZL9fibonaccim>:
static volatile bool finishedA = false;
static volatile bool finishedB = false;
static volatile bool finishedC = false;
static volatile bool finishedD = false;

static uint64 fibonacci(uint64 n) {
    80004f74:	fe010113          	addi	sp,sp,-32
    80004f78:	00113c23          	sd	ra,24(sp)
    80004f7c:	00813823          	sd	s0,16(sp)
    80004f80:	00913423          	sd	s1,8(sp)
    80004f84:	01213023          	sd	s2,0(sp)
    80004f88:	02010413          	addi	s0,sp,32
    80004f8c:	00050493          	mv	s1,a0
    if (n == 0 || n == 1) { return n; }
    80004f90:	00100793          	li	a5,1
    80004f94:	02a7f863          	bgeu	a5,a0,80004fc4 <_ZL9fibonaccim+0x50>
    if (n % 10 == 0) { thread_dispatch(); }
    80004f98:	00a00793          	li	a5,10
    80004f9c:	02f577b3          	remu	a5,a0,a5
    80004fa0:	02078e63          	beqz	a5,80004fdc <_ZL9fibonaccim+0x68>
    return fibonacci(n - 1) + fibonacci(n - 2);
    80004fa4:	fff48513          	addi	a0,s1,-1
    80004fa8:	00000097          	auipc	ra,0x0
    80004fac:	fcc080e7          	jalr	-52(ra) # 80004f74 <_ZL9fibonaccim>
    80004fb0:	00050913          	mv	s2,a0
    80004fb4:	ffe48513          	addi	a0,s1,-2
    80004fb8:	00000097          	auipc	ra,0x0
    80004fbc:	fbc080e7          	jalr	-68(ra) # 80004f74 <_ZL9fibonaccim>
    80004fc0:	00a90533          	add	a0,s2,a0
}
    80004fc4:	01813083          	ld	ra,24(sp)
    80004fc8:	01013403          	ld	s0,16(sp)
    80004fcc:	00813483          	ld	s1,8(sp)
    80004fd0:	00013903          	ld	s2,0(sp)
    80004fd4:	02010113          	addi	sp,sp,32
    80004fd8:	00008067          	ret
    if (n % 10 == 0) { thread_dispatch(); }
    80004fdc:	ffffc097          	auipc	ra,0xffffc
    80004fe0:	3b4080e7          	jalr	948(ra) # 80001390 <_Z15thread_dispatchv>
    80004fe4:	fc1ff06f          	j	80004fa4 <_ZL9fibonaccim+0x30>

0000000080004fe8 <_ZL11workerBodyDPv>:
    printString("A finished!\n");
    finishedC = true;
    thread_dispatch();
}

static void workerBodyD(void* arg) {
    80004fe8:	fe010113          	addi	sp,sp,-32
    80004fec:	00113c23          	sd	ra,24(sp)
    80004ff0:	00813823          	sd	s0,16(sp)
    80004ff4:	00913423          	sd	s1,8(sp)
    80004ff8:	01213023          	sd	s2,0(sp)
    80004ffc:	02010413          	addi	s0,sp,32
    uint8 i = 10;
    80005000:	00a00493          	li	s1,10
    80005004:	0400006f          	j	80005044 <_ZL11workerBodyDPv+0x5c>
    for (; i < 13; i++) {
        printString("D: i="); printInt(i); printString("\n");
    80005008:	00003517          	auipc	a0,0x3
    8000500c:	32050513          	addi	a0,a0,800 # 80008328 <_ZZ12printIntegermE6digits+0x2f0>
    80005010:	fffff097          	auipc	ra,0xfffff
    80005014:	754080e7          	jalr	1876(ra) # 80004764 <_Z11printStringPKc>
    80005018:	00000613          	li	a2,0
    8000501c:	00a00593          	li	a1,10
    80005020:	00048513          	mv	a0,s1
    80005024:	00000097          	auipc	ra,0x0
    80005028:	8f0080e7          	jalr	-1808(ra) # 80004914 <_Z8printIntiii>
    8000502c:	00003517          	auipc	a0,0x3
    80005030:	58c50513          	addi	a0,a0,1420 # 800085b8 <_ZZ12printIntegermE6digits+0x580>
    80005034:	fffff097          	auipc	ra,0xfffff
    80005038:	730080e7          	jalr	1840(ra) # 80004764 <_Z11printStringPKc>
    for (; i < 13; i++) {
    8000503c:	0014849b          	addiw	s1,s1,1
    80005040:	0ff4f493          	andi	s1,s1,255
    80005044:	00c00793          	li	a5,12
    80005048:	fc97f0e3          	bgeu	a5,s1,80005008 <_ZL11workerBodyDPv+0x20>
    }

    printString("D: dispatch\n");
    8000504c:	00003517          	auipc	a0,0x3
    80005050:	2e450513          	addi	a0,a0,740 # 80008330 <_ZZ12printIntegermE6digits+0x2f8>
    80005054:	fffff097          	auipc	ra,0xfffff
    80005058:	710080e7          	jalr	1808(ra) # 80004764 <_Z11printStringPKc>
    __asm__ ("li t1, 5");
    8000505c:	00500313          	li	t1,5
    thread_dispatch();
    80005060:	ffffc097          	auipc	ra,0xffffc
    80005064:	330080e7          	jalr	816(ra) # 80001390 <_Z15thread_dispatchv>

    uint64 result = fibonacci(16);
    80005068:	01000513          	li	a0,16
    8000506c:	00000097          	auipc	ra,0x0
    80005070:	f08080e7          	jalr	-248(ra) # 80004f74 <_ZL9fibonaccim>
    80005074:	00050913          	mv	s2,a0
    printString("D: fibonaci="); printInt(result); printString("\n");
    80005078:	00003517          	auipc	a0,0x3
    8000507c:	2c850513          	addi	a0,a0,712 # 80008340 <_ZZ12printIntegermE6digits+0x308>
    80005080:	fffff097          	auipc	ra,0xfffff
    80005084:	6e4080e7          	jalr	1764(ra) # 80004764 <_Z11printStringPKc>
    80005088:	00000613          	li	a2,0
    8000508c:	00a00593          	li	a1,10
    80005090:	0009051b          	sext.w	a0,s2
    80005094:	00000097          	auipc	ra,0x0
    80005098:	880080e7          	jalr	-1920(ra) # 80004914 <_Z8printIntiii>
    8000509c:	00003517          	auipc	a0,0x3
    800050a0:	51c50513          	addi	a0,a0,1308 # 800085b8 <_ZZ12printIntegermE6digits+0x580>
    800050a4:	fffff097          	auipc	ra,0xfffff
    800050a8:	6c0080e7          	jalr	1728(ra) # 80004764 <_Z11printStringPKc>
    800050ac:	0400006f          	j	800050ec <_ZL11workerBodyDPv+0x104>

    for (; i < 16; i++) {
        printString("D: i="); printInt(i); printString("\n");
    800050b0:	00003517          	auipc	a0,0x3
    800050b4:	27850513          	addi	a0,a0,632 # 80008328 <_ZZ12printIntegermE6digits+0x2f0>
    800050b8:	fffff097          	auipc	ra,0xfffff
    800050bc:	6ac080e7          	jalr	1708(ra) # 80004764 <_Z11printStringPKc>
    800050c0:	00000613          	li	a2,0
    800050c4:	00a00593          	li	a1,10
    800050c8:	00048513          	mv	a0,s1
    800050cc:	00000097          	auipc	ra,0x0
    800050d0:	848080e7          	jalr	-1976(ra) # 80004914 <_Z8printIntiii>
    800050d4:	00003517          	auipc	a0,0x3
    800050d8:	4e450513          	addi	a0,a0,1252 # 800085b8 <_ZZ12printIntegermE6digits+0x580>
    800050dc:	fffff097          	auipc	ra,0xfffff
    800050e0:	688080e7          	jalr	1672(ra) # 80004764 <_Z11printStringPKc>
    for (; i < 16; i++) {
    800050e4:	0014849b          	addiw	s1,s1,1
    800050e8:	0ff4f493          	andi	s1,s1,255
    800050ec:	00f00793          	li	a5,15
    800050f0:	fc97f0e3          	bgeu	a5,s1,800050b0 <_ZL11workerBodyDPv+0xc8>
    }

    printString("D finished!\n");
    800050f4:	00003517          	auipc	a0,0x3
    800050f8:	25c50513          	addi	a0,a0,604 # 80008350 <_ZZ12printIntegermE6digits+0x318>
    800050fc:	fffff097          	auipc	ra,0xfffff
    80005100:	668080e7          	jalr	1640(ra) # 80004764 <_Z11printStringPKc>
    finishedD = true;
    80005104:	00100793          	li	a5,1
    80005108:	00005717          	auipc	a4,0x5
    8000510c:	26f70823          	sb	a5,624(a4) # 8000a378 <_ZL9finishedD>
    thread_dispatch();
    80005110:	ffffc097          	auipc	ra,0xffffc
    80005114:	280080e7          	jalr	640(ra) # 80001390 <_Z15thread_dispatchv>
}
    80005118:	01813083          	ld	ra,24(sp)
    8000511c:	01013403          	ld	s0,16(sp)
    80005120:	00813483          	ld	s1,8(sp)
    80005124:	00013903          	ld	s2,0(sp)
    80005128:	02010113          	addi	sp,sp,32
    8000512c:	00008067          	ret

0000000080005130 <_ZL11workerBodyCPv>:
static void workerBodyC(void* arg) {
    80005130:	fe010113          	addi	sp,sp,-32
    80005134:	00113c23          	sd	ra,24(sp)
    80005138:	00813823          	sd	s0,16(sp)
    8000513c:	00913423          	sd	s1,8(sp)
    80005140:	01213023          	sd	s2,0(sp)
    80005144:	02010413          	addi	s0,sp,32
    uint8 i = 0;
    80005148:	00000493          	li	s1,0
    8000514c:	0400006f          	j	8000518c <_ZL11workerBodyCPv+0x5c>
        printString("C: i="); printInt(i); printString("\n");
    80005150:	00003517          	auipc	a0,0x3
    80005154:	19850513          	addi	a0,a0,408 # 800082e8 <_ZZ12printIntegermE6digits+0x2b0>
    80005158:	fffff097          	auipc	ra,0xfffff
    8000515c:	60c080e7          	jalr	1548(ra) # 80004764 <_Z11printStringPKc>
    80005160:	00000613          	li	a2,0
    80005164:	00a00593          	li	a1,10
    80005168:	00048513          	mv	a0,s1
    8000516c:	fffff097          	auipc	ra,0xfffff
    80005170:	7a8080e7          	jalr	1960(ra) # 80004914 <_Z8printIntiii>
    80005174:	00003517          	auipc	a0,0x3
    80005178:	44450513          	addi	a0,a0,1092 # 800085b8 <_ZZ12printIntegermE6digits+0x580>
    8000517c:	fffff097          	auipc	ra,0xfffff
    80005180:	5e8080e7          	jalr	1512(ra) # 80004764 <_Z11printStringPKc>
    for (; i < 3; i++) {
    80005184:	0014849b          	addiw	s1,s1,1
    80005188:	0ff4f493          	andi	s1,s1,255
    8000518c:	00200793          	li	a5,2
    80005190:	fc97f0e3          	bgeu	a5,s1,80005150 <_ZL11workerBodyCPv+0x20>
    printString("C: dispatch\n");
    80005194:	00003517          	auipc	a0,0x3
    80005198:	15c50513          	addi	a0,a0,348 # 800082f0 <_ZZ12printIntegermE6digits+0x2b8>
    8000519c:	fffff097          	auipc	ra,0xfffff
    800051a0:	5c8080e7          	jalr	1480(ra) # 80004764 <_Z11printStringPKc>
    __asm__ ("li t1, 7");
    800051a4:	00700313          	li	t1,7
    thread_dispatch();
    800051a8:	ffffc097          	auipc	ra,0xffffc
    800051ac:	1e8080e7          	jalr	488(ra) # 80001390 <_Z15thread_dispatchv>
    __asm__ ("mv %[t1], t1" : [t1] "=r"(t1));
    800051b0:	00030913          	mv	s2,t1
    printString("C: t1="); printInt(t1); printString("\n");
    800051b4:	00003517          	auipc	a0,0x3
    800051b8:	14c50513          	addi	a0,a0,332 # 80008300 <_ZZ12printIntegermE6digits+0x2c8>
    800051bc:	fffff097          	auipc	ra,0xfffff
    800051c0:	5a8080e7          	jalr	1448(ra) # 80004764 <_Z11printStringPKc>
    800051c4:	00000613          	li	a2,0
    800051c8:	00a00593          	li	a1,10
    800051cc:	0009051b          	sext.w	a0,s2
    800051d0:	fffff097          	auipc	ra,0xfffff
    800051d4:	744080e7          	jalr	1860(ra) # 80004914 <_Z8printIntiii>
    800051d8:	00003517          	auipc	a0,0x3
    800051dc:	3e050513          	addi	a0,a0,992 # 800085b8 <_ZZ12printIntegermE6digits+0x580>
    800051e0:	fffff097          	auipc	ra,0xfffff
    800051e4:	584080e7          	jalr	1412(ra) # 80004764 <_Z11printStringPKc>
    uint64 result = fibonacci(12);
    800051e8:	00c00513          	li	a0,12
    800051ec:	00000097          	auipc	ra,0x0
    800051f0:	d88080e7          	jalr	-632(ra) # 80004f74 <_ZL9fibonaccim>
    800051f4:	00050913          	mv	s2,a0
    printString("C: fibonaci="); printInt(result); printString("\n");
    800051f8:	00003517          	auipc	a0,0x3
    800051fc:	11050513          	addi	a0,a0,272 # 80008308 <_ZZ12printIntegermE6digits+0x2d0>
    80005200:	fffff097          	auipc	ra,0xfffff
    80005204:	564080e7          	jalr	1380(ra) # 80004764 <_Z11printStringPKc>
    80005208:	00000613          	li	a2,0
    8000520c:	00a00593          	li	a1,10
    80005210:	0009051b          	sext.w	a0,s2
    80005214:	fffff097          	auipc	ra,0xfffff
    80005218:	700080e7          	jalr	1792(ra) # 80004914 <_Z8printIntiii>
    8000521c:	00003517          	auipc	a0,0x3
    80005220:	39c50513          	addi	a0,a0,924 # 800085b8 <_ZZ12printIntegermE6digits+0x580>
    80005224:	fffff097          	auipc	ra,0xfffff
    80005228:	540080e7          	jalr	1344(ra) # 80004764 <_Z11printStringPKc>
    8000522c:	0400006f          	j	8000526c <_ZL11workerBodyCPv+0x13c>
        printString("C: i="); printInt(i); printString("\n");
    80005230:	00003517          	auipc	a0,0x3
    80005234:	0b850513          	addi	a0,a0,184 # 800082e8 <_ZZ12printIntegermE6digits+0x2b0>
    80005238:	fffff097          	auipc	ra,0xfffff
    8000523c:	52c080e7          	jalr	1324(ra) # 80004764 <_Z11printStringPKc>
    80005240:	00000613          	li	a2,0
    80005244:	00a00593          	li	a1,10
    80005248:	00048513          	mv	a0,s1
    8000524c:	fffff097          	auipc	ra,0xfffff
    80005250:	6c8080e7          	jalr	1736(ra) # 80004914 <_Z8printIntiii>
    80005254:	00003517          	auipc	a0,0x3
    80005258:	36450513          	addi	a0,a0,868 # 800085b8 <_ZZ12printIntegermE6digits+0x580>
    8000525c:	fffff097          	auipc	ra,0xfffff
    80005260:	508080e7          	jalr	1288(ra) # 80004764 <_Z11printStringPKc>
    for (; i < 6; i++) {
    80005264:	0014849b          	addiw	s1,s1,1
    80005268:	0ff4f493          	andi	s1,s1,255
    8000526c:	00500793          	li	a5,5
    80005270:	fc97f0e3          	bgeu	a5,s1,80005230 <_ZL11workerBodyCPv+0x100>
    printString("A finished!\n");
    80005274:	00003517          	auipc	a0,0x3
    80005278:	04c50513          	addi	a0,a0,76 # 800082c0 <_ZZ12printIntegermE6digits+0x288>
    8000527c:	fffff097          	auipc	ra,0xfffff
    80005280:	4e8080e7          	jalr	1256(ra) # 80004764 <_Z11printStringPKc>
    finishedC = true;
    80005284:	00100793          	li	a5,1
    80005288:	00005717          	auipc	a4,0x5
    8000528c:	0ef708a3          	sb	a5,241(a4) # 8000a379 <_ZL9finishedC>
    thread_dispatch();
    80005290:	ffffc097          	auipc	ra,0xffffc
    80005294:	100080e7          	jalr	256(ra) # 80001390 <_Z15thread_dispatchv>
}
    80005298:	01813083          	ld	ra,24(sp)
    8000529c:	01013403          	ld	s0,16(sp)
    800052a0:	00813483          	ld	s1,8(sp)
    800052a4:	00013903          	ld	s2,0(sp)
    800052a8:	02010113          	addi	sp,sp,32
    800052ac:	00008067          	ret

00000000800052b0 <_ZL11workerBodyBPv>:
static void workerBodyB(void* arg) {
    800052b0:	fe010113          	addi	sp,sp,-32
    800052b4:	00113c23          	sd	ra,24(sp)
    800052b8:	00813823          	sd	s0,16(sp)
    800052bc:	00913423          	sd	s1,8(sp)
    800052c0:	01213023          	sd	s2,0(sp)
    800052c4:	02010413          	addi	s0,sp,32
    for (uint64 i = 0; i < 16; i++) {
    800052c8:	00000913          	li	s2,0
    800052cc:	0400006f          	j	8000530c <_ZL11workerBodyBPv+0x5c>
            thread_dispatch();
    800052d0:	ffffc097          	auipc	ra,0xffffc
    800052d4:	0c0080e7          	jalr	192(ra) # 80001390 <_Z15thread_dispatchv>
        for (uint64 j = 0; j < 10000; j++) {
    800052d8:	00148493          	addi	s1,s1,1
    800052dc:	000027b7          	lui	a5,0x2
    800052e0:	70f78793          	addi	a5,a5,1807 # 270f <_entry-0x7fffd8f1>
    800052e4:	0097ee63          	bltu	a5,s1,80005300 <_ZL11workerBodyBPv+0x50>
            for (uint64 k = 0; k < 30000; k++) { /* busy wait */ }
    800052e8:	00000713          	li	a4,0
    800052ec:	000077b7          	lui	a5,0x7
    800052f0:	52f78793          	addi	a5,a5,1327 # 752f <_entry-0x7fff8ad1>
    800052f4:	fce7eee3          	bltu	a5,a4,800052d0 <_ZL11workerBodyBPv+0x20>
    800052f8:	00170713          	addi	a4,a4,1
    800052fc:	ff1ff06f          	j	800052ec <_ZL11workerBodyBPv+0x3c>
        if (i == 10) {
    80005300:	00a00793          	li	a5,10
    80005304:	04f90663          	beq	s2,a5,80005350 <_ZL11workerBodyBPv+0xa0>
    for (uint64 i = 0; i < 16; i++) {
    80005308:	00190913          	addi	s2,s2,1
    8000530c:	00f00793          	li	a5,15
    80005310:	0527e463          	bltu	a5,s2,80005358 <_ZL11workerBodyBPv+0xa8>
        printString("B: i="); printInt(i); printString("\n");
    80005314:	00003517          	auipc	a0,0x3
    80005318:	fbc50513          	addi	a0,a0,-68 # 800082d0 <_ZZ12printIntegermE6digits+0x298>
    8000531c:	fffff097          	auipc	ra,0xfffff
    80005320:	448080e7          	jalr	1096(ra) # 80004764 <_Z11printStringPKc>
    80005324:	00000613          	li	a2,0
    80005328:	00a00593          	li	a1,10
    8000532c:	0009051b          	sext.w	a0,s2
    80005330:	fffff097          	auipc	ra,0xfffff
    80005334:	5e4080e7          	jalr	1508(ra) # 80004914 <_Z8printIntiii>
    80005338:	00003517          	auipc	a0,0x3
    8000533c:	28050513          	addi	a0,a0,640 # 800085b8 <_ZZ12printIntegermE6digits+0x580>
    80005340:	fffff097          	auipc	ra,0xfffff
    80005344:	424080e7          	jalr	1060(ra) # 80004764 <_Z11printStringPKc>
        for (uint64 j = 0; j < 10000; j++) {
    80005348:	00000493          	li	s1,0
    8000534c:	f91ff06f          	j	800052dc <_ZL11workerBodyBPv+0x2c>
            asm volatile("csrr t6, sepc");
    80005350:	14102ff3          	csrr	t6,sepc
    80005354:	fb5ff06f          	j	80005308 <_ZL11workerBodyBPv+0x58>
    printString("B finished!\n");
    80005358:	00003517          	auipc	a0,0x3
    8000535c:	f8050513          	addi	a0,a0,-128 # 800082d8 <_ZZ12printIntegermE6digits+0x2a0>
    80005360:	fffff097          	auipc	ra,0xfffff
    80005364:	404080e7          	jalr	1028(ra) # 80004764 <_Z11printStringPKc>
    finishedB = true;
    80005368:	00100793          	li	a5,1
    8000536c:	00005717          	auipc	a4,0x5
    80005370:	00f70723          	sb	a5,14(a4) # 8000a37a <_ZL9finishedB>
    thread_dispatch();
    80005374:	ffffc097          	auipc	ra,0xffffc
    80005378:	01c080e7          	jalr	28(ra) # 80001390 <_Z15thread_dispatchv>
}
    8000537c:	01813083          	ld	ra,24(sp)
    80005380:	01013403          	ld	s0,16(sp)
    80005384:	00813483          	ld	s1,8(sp)
    80005388:	00013903          	ld	s2,0(sp)
    8000538c:	02010113          	addi	sp,sp,32
    80005390:	00008067          	ret

0000000080005394 <_ZL11workerBodyAPv>:
static void workerBodyA(void* arg) {
    80005394:	fe010113          	addi	sp,sp,-32
    80005398:	00113c23          	sd	ra,24(sp)
    8000539c:	00813823          	sd	s0,16(sp)
    800053a0:	00913423          	sd	s1,8(sp)
    800053a4:	01213023          	sd	s2,0(sp)
    800053a8:	02010413          	addi	s0,sp,32
    for (uint64 i = 0; i < 10; i++) {
    800053ac:	00000913          	li	s2,0
    800053b0:	0380006f          	j	800053e8 <_ZL11workerBodyAPv+0x54>
            thread_dispatch();
    800053b4:	ffffc097          	auipc	ra,0xffffc
    800053b8:	fdc080e7          	jalr	-36(ra) # 80001390 <_Z15thread_dispatchv>
        for (uint64 j = 0; j < 10000; j++) {
    800053bc:	00148493          	addi	s1,s1,1
    800053c0:	000027b7          	lui	a5,0x2
    800053c4:	70f78793          	addi	a5,a5,1807 # 270f <_entry-0x7fffd8f1>
    800053c8:	0097ee63          	bltu	a5,s1,800053e4 <_ZL11workerBodyAPv+0x50>
            for (uint64 k = 0; k < 30000; k++) { /* busy wait */ }
    800053cc:	00000713          	li	a4,0
    800053d0:	000077b7          	lui	a5,0x7
    800053d4:	52f78793          	addi	a5,a5,1327 # 752f <_entry-0x7fff8ad1>
    800053d8:	fce7eee3          	bltu	a5,a4,800053b4 <_ZL11workerBodyAPv+0x20>
    800053dc:	00170713          	addi	a4,a4,1
    800053e0:	ff1ff06f          	j	800053d0 <_ZL11workerBodyAPv+0x3c>
    for (uint64 i = 0; i < 10; i++) {
    800053e4:	00190913          	addi	s2,s2,1
    800053e8:	00900793          	li	a5,9
    800053ec:	0527e063          	bltu	a5,s2,8000542c <_ZL11workerBodyAPv+0x98>
        printString("A: i="); printInt(i); printString("\n");
    800053f0:	00003517          	auipc	a0,0x3
    800053f4:	ec850513          	addi	a0,a0,-312 # 800082b8 <_ZZ12printIntegermE6digits+0x280>
    800053f8:	fffff097          	auipc	ra,0xfffff
    800053fc:	36c080e7          	jalr	876(ra) # 80004764 <_Z11printStringPKc>
    80005400:	00000613          	li	a2,0
    80005404:	00a00593          	li	a1,10
    80005408:	0009051b          	sext.w	a0,s2
    8000540c:	fffff097          	auipc	ra,0xfffff
    80005410:	508080e7          	jalr	1288(ra) # 80004914 <_Z8printIntiii>
    80005414:	00003517          	auipc	a0,0x3
    80005418:	1a450513          	addi	a0,a0,420 # 800085b8 <_ZZ12printIntegermE6digits+0x580>
    8000541c:	fffff097          	auipc	ra,0xfffff
    80005420:	348080e7          	jalr	840(ra) # 80004764 <_Z11printStringPKc>
        for (uint64 j = 0; j < 10000; j++) {
    80005424:	00000493          	li	s1,0
    80005428:	f99ff06f          	j	800053c0 <_ZL11workerBodyAPv+0x2c>
    printString("A finished!\n");
    8000542c:	00003517          	auipc	a0,0x3
    80005430:	e9450513          	addi	a0,a0,-364 # 800082c0 <_ZZ12printIntegermE6digits+0x288>
    80005434:	fffff097          	auipc	ra,0xfffff
    80005438:	330080e7          	jalr	816(ra) # 80004764 <_Z11printStringPKc>
    finishedA = true;
    8000543c:	00100793          	li	a5,1
    80005440:	00005717          	auipc	a4,0x5
    80005444:	f2f70da3          	sb	a5,-197(a4) # 8000a37b <_ZL9finishedA>
}
    80005448:	01813083          	ld	ra,24(sp)
    8000544c:	01013403          	ld	s0,16(sp)
    80005450:	00813483          	ld	s1,8(sp)
    80005454:	00013903          	ld	s2,0(sp)
    80005458:	02010113          	addi	sp,sp,32
    8000545c:	00008067          	ret

0000000080005460 <_Z16System_Mode_testv>:


void System_Mode_test() {
    80005460:	fd010113          	addi	sp,sp,-48
    80005464:	02113423          	sd	ra,40(sp)
    80005468:	02813023          	sd	s0,32(sp)
    8000546c:	03010413          	addi	s0,sp,48
    thread_t threads[4];
    thread_create(&threads[0], workerBodyA, nullptr);
    80005470:	00000613          	li	a2,0
    80005474:	00000597          	auipc	a1,0x0
    80005478:	f2058593          	addi	a1,a1,-224 # 80005394 <_ZL11workerBodyAPv>
    8000547c:	fd040513          	addi	a0,s0,-48
    80005480:	ffffc097          	auipc	ra,0xffffc
    80005484:	e4c080e7          	jalr	-436(ra) # 800012cc <_Z13thread_createPP12kernelThreadPFvPvES2_>
    printString("ThreadA created\n");
    80005488:	00003517          	auipc	a0,0x3
    8000548c:	ed850513          	addi	a0,a0,-296 # 80008360 <_ZZ12printIntegermE6digits+0x328>
    80005490:	fffff097          	auipc	ra,0xfffff
    80005494:	2d4080e7          	jalr	724(ra) # 80004764 <_Z11printStringPKc>

    thread_create(&threads[1], workerBodyB, nullptr);
    80005498:	00000613          	li	a2,0
    8000549c:	00000597          	auipc	a1,0x0
    800054a0:	e1458593          	addi	a1,a1,-492 # 800052b0 <_ZL11workerBodyBPv>
    800054a4:	fd840513          	addi	a0,s0,-40
    800054a8:	ffffc097          	auipc	ra,0xffffc
    800054ac:	e24080e7          	jalr	-476(ra) # 800012cc <_Z13thread_createPP12kernelThreadPFvPvES2_>
    printString("ThreadB created\n");
    800054b0:	00003517          	auipc	a0,0x3
    800054b4:	ec850513          	addi	a0,a0,-312 # 80008378 <_ZZ12printIntegermE6digits+0x340>
    800054b8:	fffff097          	auipc	ra,0xfffff
    800054bc:	2ac080e7          	jalr	684(ra) # 80004764 <_Z11printStringPKc>

    thread_create(&threads[2], workerBodyC, nullptr);
    800054c0:	00000613          	li	a2,0
    800054c4:	00000597          	auipc	a1,0x0
    800054c8:	c6c58593          	addi	a1,a1,-916 # 80005130 <_ZL11workerBodyCPv>
    800054cc:	fe040513          	addi	a0,s0,-32
    800054d0:	ffffc097          	auipc	ra,0xffffc
    800054d4:	dfc080e7          	jalr	-516(ra) # 800012cc <_Z13thread_createPP12kernelThreadPFvPvES2_>
    printString("ThreadC created\n");
    800054d8:	00003517          	auipc	a0,0x3
    800054dc:	eb850513          	addi	a0,a0,-328 # 80008390 <_ZZ12printIntegermE6digits+0x358>
    800054e0:	fffff097          	auipc	ra,0xfffff
    800054e4:	284080e7          	jalr	644(ra) # 80004764 <_Z11printStringPKc>

    thread_create(&threads[3], workerBodyD, nullptr);
    800054e8:	00000613          	li	a2,0
    800054ec:	00000597          	auipc	a1,0x0
    800054f0:	afc58593          	addi	a1,a1,-1284 # 80004fe8 <_ZL11workerBodyDPv>
    800054f4:	fe840513          	addi	a0,s0,-24
    800054f8:	ffffc097          	auipc	ra,0xffffc
    800054fc:	dd4080e7          	jalr	-556(ra) # 800012cc <_Z13thread_createPP12kernelThreadPFvPvES2_>
    printString("ThreadD created\n");
    80005500:	00003517          	auipc	a0,0x3
    80005504:	ea850513          	addi	a0,a0,-344 # 800083a8 <_ZZ12printIntegermE6digits+0x370>
    80005508:	fffff097          	auipc	ra,0xfffff
    8000550c:	25c080e7          	jalr	604(ra) # 80004764 <_Z11printStringPKc>
    80005510:	00c0006f          	j	8000551c <_Z16System_Mode_testv+0xbc>

    while (!(finishedA && finishedB && finishedC && finishedD)) {
        thread_dispatch();
    80005514:	ffffc097          	auipc	ra,0xffffc
    80005518:	e7c080e7          	jalr	-388(ra) # 80001390 <_Z15thread_dispatchv>
    while (!(finishedA && finishedB && finishedC && finishedD)) {
    8000551c:	00005797          	auipc	a5,0x5
    80005520:	e5f7c783          	lbu	a5,-417(a5) # 8000a37b <_ZL9finishedA>
    80005524:	fe0788e3          	beqz	a5,80005514 <_Z16System_Mode_testv+0xb4>
    80005528:	00005797          	auipc	a5,0x5
    8000552c:	e527c783          	lbu	a5,-430(a5) # 8000a37a <_ZL9finishedB>
    80005530:	fe0782e3          	beqz	a5,80005514 <_Z16System_Mode_testv+0xb4>
    80005534:	00005797          	auipc	a5,0x5
    80005538:	e457c783          	lbu	a5,-443(a5) # 8000a379 <_ZL9finishedC>
    8000553c:	fc078ce3          	beqz	a5,80005514 <_Z16System_Mode_testv+0xb4>
    80005540:	00005797          	auipc	a5,0x5
    80005544:	e387c783          	lbu	a5,-456(a5) # 8000a378 <_ZL9finishedD>
    80005548:	fc0786e3          	beqz	a5,80005514 <_Z16System_Mode_testv+0xb4>
    }

}
    8000554c:	02813083          	ld	ra,40(sp)
    80005550:	02013403          	ld	s0,32(sp)
    80005554:	03010113          	addi	sp,sp,48
    80005558:	00008067          	ret

000000008000555c <_ZN6BufferC1Ei>:
#include "buffer.hpp"

Buffer::Buffer(int _cap) : cap(_cap + 1), head(0), tail(0) {
    8000555c:	fe010113          	addi	sp,sp,-32
    80005560:	00113c23          	sd	ra,24(sp)
    80005564:	00813823          	sd	s0,16(sp)
    80005568:	00913423          	sd	s1,8(sp)
    8000556c:	01213023          	sd	s2,0(sp)
    80005570:	02010413          	addi	s0,sp,32
    80005574:	00050493          	mv	s1,a0
    80005578:	00058913          	mv	s2,a1
    8000557c:	0015879b          	addiw	a5,a1,1
    80005580:	0007851b          	sext.w	a0,a5
    80005584:	00f4a023          	sw	a5,0(s1)
    80005588:	0004a823          	sw	zero,16(s1)
    8000558c:	0004aa23          	sw	zero,20(s1)
    buffer = (int *)mem_alloc(sizeof(int) * cap);
    80005590:	00251513          	slli	a0,a0,0x2
    80005594:	ffffc097          	auipc	ra,0xffffc
    80005598:	cac080e7          	jalr	-852(ra) # 80001240 <_Z9mem_allocm>
    8000559c:	00a4b423          	sd	a0,8(s1)
    sem_open(&itemAvailable, 0);
    800055a0:	00000593          	li	a1,0
    800055a4:	02048513          	addi	a0,s1,32
    800055a8:	ffffc097          	auipc	ra,0xffffc
    800055ac:	e54080e7          	jalr	-428(ra) # 800013fc <_Z8sem_openPP15kernelSemaphorej>
    sem_open(&spaceAvailable, _cap);
    800055b0:	00090593          	mv	a1,s2
    800055b4:	01848513          	addi	a0,s1,24
    800055b8:	ffffc097          	auipc	ra,0xffffc
    800055bc:	e44080e7          	jalr	-444(ra) # 800013fc <_Z8sem_openPP15kernelSemaphorej>
    sem_open(&mutexHead, 1);
    800055c0:	00100593          	li	a1,1
    800055c4:	02848513          	addi	a0,s1,40
    800055c8:	ffffc097          	auipc	ra,0xffffc
    800055cc:	e34080e7          	jalr	-460(ra) # 800013fc <_Z8sem_openPP15kernelSemaphorej>
    sem_open(&mutexTail, 1);
    800055d0:	00100593          	li	a1,1
    800055d4:	03048513          	addi	a0,s1,48
    800055d8:	ffffc097          	auipc	ra,0xffffc
    800055dc:	e24080e7          	jalr	-476(ra) # 800013fc <_Z8sem_openPP15kernelSemaphorej>
    printInt((uint64)itemAvailable);
    800055e0:	00000613          	li	a2,0
    800055e4:	00a00593          	li	a1,10
    800055e8:	0204a503          	lw	a0,32(s1)
    800055ec:	fffff097          	auipc	ra,0xfffff
    800055f0:	328080e7          	jalr	808(ra) # 80004914 <_Z8printIntiii>
    printString("\n");
    800055f4:	00003517          	auipc	a0,0x3
    800055f8:	fc450513          	addi	a0,a0,-60 # 800085b8 <_ZZ12printIntegermE6digits+0x580>
    800055fc:	fffff097          	auipc	ra,0xfffff
    80005600:	168080e7          	jalr	360(ra) # 80004764 <_Z11printStringPKc>
    printInt((uint64)spaceAvailable);
    80005604:	00000613          	li	a2,0
    80005608:	00a00593          	li	a1,10
    8000560c:	0184a503          	lw	a0,24(s1)
    80005610:	fffff097          	auipc	ra,0xfffff
    80005614:	304080e7          	jalr	772(ra) # 80004914 <_Z8printIntiii>
    printString("\n");
    80005618:	00003517          	auipc	a0,0x3
    8000561c:	fa050513          	addi	a0,a0,-96 # 800085b8 <_ZZ12printIntegermE6digits+0x580>
    80005620:	fffff097          	auipc	ra,0xfffff
    80005624:	144080e7          	jalr	324(ra) # 80004764 <_Z11printStringPKc>
    printInt((uint64)mutexHead);
    80005628:	00000613          	li	a2,0
    8000562c:	00a00593          	li	a1,10
    80005630:	0284a503          	lw	a0,40(s1)
    80005634:	fffff097          	auipc	ra,0xfffff
    80005638:	2e0080e7          	jalr	736(ra) # 80004914 <_Z8printIntiii>
    printString("\n");
    8000563c:	00003517          	auipc	a0,0x3
    80005640:	f7c50513          	addi	a0,a0,-132 # 800085b8 <_ZZ12printIntegermE6digits+0x580>
    80005644:	fffff097          	auipc	ra,0xfffff
    80005648:	120080e7          	jalr	288(ra) # 80004764 <_Z11printStringPKc>
    printInt((uint64)mutexTail);
    8000564c:	00000613          	li	a2,0
    80005650:	00a00593          	li	a1,10
    80005654:	0304a503          	lw	a0,48(s1)
    80005658:	fffff097          	auipc	ra,0xfffff
    8000565c:	2bc080e7          	jalr	700(ra) # 80004914 <_Z8printIntiii>
    printString("\n");
    80005660:	00003517          	auipc	a0,0x3
    80005664:	f5850513          	addi	a0,a0,-168 # 800085b8 <_ZZ12printIntegermE6digits+0x580>
    80005668:	fffff097          	auipc	ra,0xfffff
    8000566c:	0fc080e7          	jalr	252(ra) # 80004764 <_Z11printStringPKc>

}
    80005670:	01813083          	ld	ra,24(sp)
    80005674:	01013403          	ld	s0,16(sp)
    80005678:	00813483          	ld	s1,8(sp)
    8000567c:	00013903          	ld	s2,0(sp)
    80005680:	02010113          	addi	sp,sp,32
    80005684:	00008067          	ret

0000000080005688 <_ZN6Buffer3putEi>:
    sem_close(spaceAvailable);
    sem_close(mutexTail);
    sem_close(mutexHead);
}

void Buffer::put(int val) {
    80005688:	fe010113          	addi	sp,sp,-32
    8000568c:	00113c23          	sd	ra,24(sp)
    80005690:	00813823          	sd	s0,16(sp)
    80005694:	00913423          	sd	s1,8(sp)
    80005698:	01213023          	sd	s2,0(sp)
    8000569c:	02010413          	addi	s0,sp,32
    800056a0:	00050493          	mv	s1,a0
    800056a4:	00058913          	mv	s2,a1
    sem_wait(spaceAvailable);
    800056a8:	01853503          	ld	a0,24(a0)
    800056ac:	ffffc097          	auipc	ra,0xffffc
    800056b0:	dd8080e7          	jalr	-552(ra) # 80001484 <_Z8sem_waitP15kernelSemaphore>

    sem_wait(mutexTail);
    800056b4:	0304b503          	ld	a0,48(s1)
    800056b8:	ffffc097          	auipc	ra,0xffffc
    800056bc:	dcc080e7          	jalr	-564(ra) # 80001484 <_Z8sem_waitP15kernelSemaphore>
    buffer[tail] = val;
    800056c0:	0084b783          	ld	a5,8(s1)
    800056c4:	0144a703          	lw	a4,20(s1)
    800056c8:	00271713          	slli	a4,a4,0x2
    800056cc:	00e787b3          	add	a5,a5,a4
    800056d0:	0127a023          	sw	s2,0(a5)
    tail = (tail + 1) % cap;
    800056d4:	0144a783          	lw	a5,20(s1)
    800056d8:	0017879b          	addiw	a5,a5,1
    800056dc:	0004a703          	lw	a4,0(s1)
    800056e0:	02e7e7bb          	remw	a5,a5,a4
    800056e4:	00f4aa23          	sw	a5,20(s1)
    sem_signal(mutexTail);
    800056e8:	0304b503          	ld	a0,48(s1)
    800056ec:	ffffc097          	auipc	ra,0xffffc
    800056f0:	de4080e7          	jalr	-540(ra) # 800014d0 <_Z10sem_signalP15kernelSemaphore>

    sem_signal(itemAvailable);
    800056f4:	0204b503          	ld	a0,32(s1)
    800056f8:	ffffc097          	auipc	ra,0xffffc
    800056fc:	dd8080e7          	jalr	-552(ra) # 800014d0 <_Z10sem_signalP15kernelSemaphore>

}
    80005700:	01813083          	ld	ra,24(sp)
    80005704:	01013403          	ld	s0,16(sp)
    80005708:	00813483          	ld	s1,8(sp)
    8000570c:	00013903          	ld	s2,0(sp)
    80005710:	02010113          	addi	sp,sp,32
    80005714:	00008067          	ret

0000000080005718 <_ZN6Buffer3getEv>:

int Buffer::get() {
    80005718:	fe010113          	addi	sp,sp,-32
    8000571c:	00113c23          	sd	ra,24(sp)
    80005720:	00813823          	sd	s0,16(sp)
    80005724:	00913423          	sd	s1,8(sp)
    80005728:	01213023          	sd	s2,0(sp)
    8000572c:	02010413          	addi	s0,sp,32
    80005730:	00050493          	mv	s1,a0
    sem_wait(itemAvailable);
    80005734:	02053503          	ld	a0,32(a0)
    80005738:	ffffc097          	auipc	ra,0xffffc
    8000573c:	d4c080e7          	jalr	-692(ra) # 80001484 <_Z8sem_waitP15kernelSemaphore>

    sem_wait(mutexHead);
    80005740:	0284b503          	ld	a0,40(s1)
    80005744:	ffffc097          	auipc	ra,0xffffc
    80005748:	d40080e7          	jalr	-704(ra) # 80001484 <_Z8sem_waitP15kernelSemaphore>

    int ret = buffer[head];
    8000574c:	0084b703          	ld	a4,8(s1)
    80005750:	0104a783          	lw	a5,16(s1)
    80005754:	00279693          	slli	a3,a5,0x2
    80005758:	00d70733          	add	a4,a4,a3
    8000575c:	00072903          	lw	s2,0(a4)
    head = (head + 1) % cap;
    80005760:	0017879b          	addiw	a5,a5,1
    80005764:	0004a703          	lw	a4,0(s1)
    80005768:	02e7e7bb          	remw	a5,a5,a4
    8000576c:	00f4a823          	sw	a5,16(s1)
    sem_signal(mutexHead);
    80005770:	0284b503          	ld	a0,40(s1)
    80005774:	ffffc097          	auipc	ra,0xffffc
    80005778:	d5c080e7          	jalr	-676(ra) # 800014d0 <_Z10sem_signalP15kernelSemaphore>

    sem_signal(spaceAvailable);
    8000577c:	0184b503          	ld	a0,24(s1)
    80005780:	ffffc097          	auipc	ra,0xffffc
    80005784:	d50080e7          	jalr	-688(ra) # 800014d0 <_Z10sem_signalP15kernelSemaphore>

    return ret;
}
    80005788:	00090513          	mv	a0,s2
    8000578c:	01813083          	ld	ra,24(sp)
    80005790:	01013403          	ld	s0,16(sp)
    80005794:	00813483          	ld	s1,8(sp)
    80005798:	00013903          	ld	s2,0(sp)
    8000579c:	02010113          	addi	sp,sp,32
    800057a0:	00008067          	ret

00000000800057a4 <_ZN6Buffer6getCntEv>:

int Buffer::getCnt() {
    800057a4:	fe010113          	addi	sp,sp,-32
    800057a8:	00113c23          	sd	ra,24(sp)
    800057ac:	00813823          	sd	s0,16(sp)
    800057b0:	00913423          	sd	s1,8(sp)
    800057b4:	01213023          	sd	s2,0(sp)
    800057b8:	02010413          	addi	s0,sp,32
    800057bc:	00050493          	mv	s1,a0
    int ret;

    sem_wait(mutexHead);
    800057c0:	02853503          	ld	a0,40(a0)
    800057c4:	ffffc097          	auipc	ra,0xffffc
    800057c8:	cc0080e7          	jalr	-832(ra) # 80001484 <_Z8sem_waitP15kernelSemaphore>
    sem_wait(mutexTail);
    800057cc:	0304b503          	ld	a0,48(s1)
    800057d0:	ffffc097          	auipc	ra,0xffffc
    800057d4:	cb4080e7          	jalr	-844(ra) # 80001484 <_Z8sem_waitP15kernelSemaphore>

    if (tail >= head) {
    800057d8:	0144a783          	lw	a5,20(s1)
    800057dc:	0104a903          	lw	s2,16(s1)
    800057e0:	0327ce63          	blt	a5,s2,8000581c <_ZN6Buffer6getCntEv+0x78>
        ret = tail - head;
    800057e4:	4127893b          	subw	s2,a5,s2
    } else {
        ret = cap - head + tail;
    }

    sem_signal(mutexTail);
    800057e8:	0304b503          	ld	a0,48(s1)
    800057ec:	ffffc097          	auipc	ra,0xffffc
    800057f0:	ce4080e7          	jalr	-796(ra) # 800014d0 <_Z10sem_signalP15kernelSemaphore>
    sem_signal(mutexHead);
    800057f4:	0284b503          	ld	a0,40(s1)
    800057f8:	ffffc097          	auipc	ra,0xffffc
    800057fc:	cd8080e7          	jalr	-808(ra) # 800014d0 <_Z10sem_signalP15kernelSemaphore>

    return ret;
}
    80005800:	00090513          	mv	a0,s2
    80005804:	01813083          	ld	ra,24(sp)
    80005808:	01013403          	ld	s0,16(sp)
    8000580c:	00813483          	ld	s1,8(sp)
    80005810:	00013903          	ld	s2,0(sp)
    80005814:	02010113          	addi	sp,sp,32
    80005818:	00008067          	ret
        ret = cap - head + tail;
    8000581c:	0004a703          	lw	a4,0(s1)
    80005820:	4127093b          	subw	s2,a4,s2
    80005824:	00f9093b          	addw	s2,s2,a5
    80005828:	fc1ff06f          	j	800057e8 <_ZN6Buffer6getCntEv+0x44>

000000008000582c <_ZN6BufferD1Ev>:
Buffer::~Buffer() {
    8000582c:	fe010113          	addi	sp,sp,-32
    80005830:	00113c23          	sd	ra,24(sp)
    80005834:	00813823          	sd	s0,16(sp)
    80005838:	00913423          	sd	s1,8(sp)
    8000583c:	02010413          	addi	s0,sp,32
    80005840:	00050493          	mv	s1,a0
    putc('\n');
    80005844:	00a00513          	li	a0,10
    80005848:	ffffc097          	auipc	ra,0xffffc
    8000584c:	d5c080e7          	jalr	-676(ra) # 800015a4 <_Z4putcc>
    printString("Buffer deleted!\n");
    80005850:	00003517          	auipc	a0,0x3
    80005854:	be050513          	addi	a0,a0,-1056 # 80008430 <_ZZ12printIntegermE6digits+0x3f8>
    80005858:	fffff097          	auipc	ra,0xfffff
    8000585c:	f0c080e7          	jalr	-244(ra) # 80004764 <_Z11printStringPKc>
    while (getCnt() > 0) {
    80005860:	00048513          	mv	a0,s1
    80005864:	00000097          	auipc	ra,0x0
    80005868:	f40080e7          	jalr	-192(ra) # 800057a4 <_ZN6Buffer6getCntEv>
    8000586c:	02a05c63          	blez	a0,800058a4 <_ZN6BufferD1Ev+0x78>
        char ch = buffer[head];
    80005870:	0084b783          	ld	a5,8(s1)
    80005874:	0104a703          	lw	a4,16(s1)
    80005878:	00271713          	slli	a4,a4,0x2
    8000587c:	00e787b3          	add	a5,a5,a4
        putc(ch);
    80005880:	0007c503          	lbu	a0,0(a5)
    80005884:	ffffc097          	auipc	ra,0xffffc
    80005888:	d20080e7          	jalr	-736(ra) # 800015a4 <_Z4putcc>
        head = (head + 1) % cap;
    8000588c:	0104a783          	lw	a5,16(s1)
    80005890:	0017879b          	addiw	a5,a5,1
    80005894:	0004a703          	lw	a4,0(s1)
    80005898:	02e7e7bb          	remw	a5,a5,a4
    8000589c:	00f4a823          	sw	a5,16(s1)
    while (getCnt() > 0) {
    800058a0:	fc1ff06f          	j	80005860 <_ZN6BufferD1Ev+0x34>
    putc('!');
    800058a4:	02100513          	li	a0,33
    800058a8:	ffffc097          	auipc	ra,0xffffc
    800058ac:	cfc080e7          	jalr	-772(ra) # 800015a4 <_Z4putcc>
    putc('\n');
    800058b0:	00a00513          	li	a0,10
    800058b4:	ffffc097          	auipc	ra,0xffffc
    800058b8:	cf0080e7          	jalr	-784(ra) # 800015a4 <_Z4putcc>
    mem_free(buffer);
    800058bc:	0084b503          	ld	a0,8(s1)
    800058c0:	ffffc097          	auipc	ra,0xffffc
    800058c4:	9cc080e7          	jalr	-1588(ra) # 8000128c <_Z8mem_freePv>
    sem_close(itemAvailable);
    800058c8:	0204b503          	ld	a0,32(s1)
    800058cc:	ffffc097          	auipc	ra,0xffffc
    800058d0:	b78080e7          	jalr	-1160(ra) # 80001444 <_Z9sem_closeP15kernelSemaphore>
    sem_close(spaceAvailable);
    800058d4:	0184b503          	ld	a0,24(s1)
    800058d8:	ffffc097          	auipc	ra,0xffffc
    800058dc:	b6c080e7          	jalr	-1172(ra) # 80001444 <_Z9sem_closeP15kernelSemaphore>
    sem_close(mutexTail);
    800058e0:	0304b503          	ld	a0,48(s1)
    800058e4:	ffffc097          	auipc	ra,0xffffc
    800058e8:	b60080e7          	jalr	-1184(ra) # 80001444 <_Z9sem_closeP15kernelSemaphore>
    sem_close(mutexHead);
    800058ec:	0284b503          	ld	a0,40(s1)
    800058f0:	ffffc097          	auipc	ra,0xffffc
    800058f4:	b54080e7          	jalr	-1196(ra) # 80001444 <_Z9sem_closeP15kernelSemaphore>
}
    800058f8:	01813083          	ld	ra,24(sp)
    800058fc:	01013403          	ld	s0,16(sp)
    80005900:	00813483          	ld	s1,8(sp)
    80005904:	02010113          	addi	sp,sp,32
    80005908:	00008067          	ret

000000008000590c <start>:
    8000590c:	ff010113          	addi	sp,sp,-16
    80005910:	00813423          	sd	s0,8(sp)
    80005914:	01010413          	addi	s0,sp,16
    80005918:	300027f3          	csrr	a5,mstatus
    8000591c:	ffffe737          	lui	a4,0xffffe
    80005920:	7ff70713          	addi	a4,a4,2047 # ffffffffffffe7ff <end+0xffffffff7fff321f>
    80005924:	00e7f7b3          	and	a5,a5,a4
    80005928:	00001737          	lui	a4,0x1
    8000592c:	80070713          	addi	a4,a4,-2048 # 800 <_entry-0x7ffff800>
    80005930:	00e7e7b3          	or	a5,a5,a4
    80005934:	30079073          	csrw	mstatus,a5
    80005938:	00000797          	auipc	a5,0x0
    8000593c:	16078793          	addi	a5,a5,352 # 80005a98 <system_main>
    80005940:	34179073          	csrw	mepc,a5
    80005944:	00000793          	li	a5,0
    80005948:	18079073          	csrw	satp,a5
    8000594c:	000107b7          	lui	a5,0x10
    80005950:	fff78793          	addi	a5,a5,-1 # ffff <_entry-0x7fff0001>
    80005954:	30279073          	csrw	medeleg,a5
    80005958:	30379073          	csrw	mideleg,a5
    8000595c:	104027f3          	csrr	a5,sie
    80005960:	2227e793          	ori	a5,a5,546
    80005964:	10479073          	csrw	sie,a5
    80005968:	fff00793          	li	a5,-1
    8000596c:	00a7d793          	srli	a5,a5,0xa
    80005970:	3b079073          	csrw	pmpaddr0,a5
    80005974:	00f00793          	li	a5,15
    80005978:	3a079073          	csrw	pmpcfg0,a5
    8000597c:	f14027f3          	csrr	a5,mhartid
    80005980:	0200c737          	lui	a4,0x200c
    80005984:	ff873583          	ld	a1,-8(a4) # 200bff8 <_entry-0x7dff4008>
    80005988:	0007869b          	sext.w	a3,a5
    8000598c:	00269713          	slli	a4,a3,0x2
    80005990:	000f4637          	lui	a2,0xf4
    80005994:	24060613          	addi	a2,a2,576 # f4240 <_entry-0x7ff0bdc0>
    80005998:	00d70733          	add	a4,a4,a3
    8000599c:	0037979b          	slliw	a5,a5,0x3
    800059a0:	020046b7          	lui	a3,0x2004
    800059a4:	00d787b3          	add	a5,a5,a3
    800059a8:	00c585b3          	add	a1,a1,a2
    800059ac:	00371693          	slli	a3,a4,0x3
    800059b0:	00005717          	auipc	a4,0x5
    800059b4:	9d070713          	addi	a4,a4,-1584 # 8000a380 <timer_scratch>
    800059b8:	00b7b023          	sd	a1,0(a5)
    800059bc:	00d70733          	add	a4,a4,a3
    800059c0:	00f73c23          	sd	a5,24(a4)
    800059c4:	02c73023          	sd	a2,32(a4)
    800059c8:	34071073          	csrw	mscratch,a4
    800059cc:	00000797          	auipc	a5,0x0
    800059d0:	6e478793          	addi	a5,a5,1764 # 800060b0 <timervec>
    800059d4:	30579073          	csrw	mtvec,a5
    800059d8:	300027f3          	csrr	a5,mstatus
    800059dc:	0087e793          	ori	a5,a5,8
    800059e0:	30079073          	csrw	mstatus,a5
    800059e4:	304027f3          	csrr	a5,mie
    800059e8:	0807e793          	ori	a5,a5,128
    800059ec:	30479073          	csrw	mie,a5
    800059f0:	f14027f3          	csrr	a5,mhartid
    800059f4:	0007879b          	sext.w	a5,a5
    800059f8:	00078213          	mv	tp,a5
    800059fc:	30200073          	mret
    80005a00:	00813403          	ld	s0,8(sp)
    80005a04:	01010113          	addi	sp,sp,16
    80005a08:	00008067          	ret

0000000080005a0c <timerinit>:
    80005a0c:	ff010113          	addi	sp,sp,-16
    80005a10:	00813423          	sd	s0,8(sp)
    80005a14:	01010413          	addi	s0,sp,16
    80005a18:	f14027f3          	csrr	a5,mhartid
    80005a1c:	0200c737          	lui	a4,0x200c
    80005a20:	ff873583          	ld	a1,-8(a4) # 200bff8 <_entry-0x7dff4008>
    80005a24:	0007869b          	sext.w	a3,a5
    80005a28:	00269713          	slli	a4,a3,0x2
    80005a2c:	000f4637          	lui	a2,0xf4
    80005a30:	24060613          	addi	a2,a2,576 # f4240 <_entry-0x7ff0bdc0>
    80005a34:	00d70733          	add	a4,a4,a3
    80005a38:	0037979b          	slliw	a5,a5,0x3
    80005a3c:	020046b7          	lui	a3,0x2004
    80005a40:	00d787b3          	add	a5,a5,a3
    80005a44:	00c585b3          	add	a1,a1,a2
    80005a48:	00371693          	slli	a3,a4,0x3
    80005a4c:	00005717          	auipc	a4,0x5
    80005a50:	93470713          	addi	a4,a4,-1740 # 8000a380 <timer_scratch>
    80005a54:	00b7b023          	sd	a1,0(a5)
    80005a58:	00d70733          	add	a4,a4,a3
    80005a5c:	00f73c23          	sd	a5,24(a4)
    80005a60:	02c73023          	sd	a2,32(a4)
    80005a64:	34071073          	csrw	mscratch,a4
    80005a68:	00000797          	auipc	a5,0x0
    80005a6c:	64878793          	addi	a5,a5,1608 # 800060b0 <timervec>
    80005a70:	30579073          	csrw	mtvec,a5
    80005a74:	300027f3          	csrr	a5,mstatus
    80005a78:	0087e793          	ori	a5,a5,8
    80005a7c:	30079073          	csrw	mstatus,a5
    80005a80:	304027f3          	csrr	a5,mie
    80005a84:	0807e793          	ori	a5,a5,128
    80005a88:	30479073          	csrw	mie,a5
    80005a8c:	00813403          	ld	s0,8(sp)
    80005a90:	01010113          	addi	sp,sp,16
    80005a94:	00008067          	ret

0000000080005a98 <system_main>:
    80005a98:	fe010113          	addi	sp,sp,-32
    80005a9c:	00813823          	sd	s0,16(sp)
    80005aa0:	00913423          	sd	s1,8(sp)
    80005aa4:	00113c23          	sd	ra,24(sp)
    80005aa8:	02010413          	addi	s0,sp,32
    80005aac:	00000097          	auipc	ra,0x0
    80005ab0:	0c4080e7          	jalr	196(ra) # 80005b70 <cpuid>
    80005ab4:	00005497          	auipc	s1,0x5
    80005ab8:	83c48493          	addi	s1,s1,-1988 # 8000a2f0 <started>
    80005abc:	02050263          	beqz	a0,80005ae0 <system_main+0x48>
    80005ac0:	0004a783          	lw	a5,0(s1)
    80005ac4:	0007879b          	sext.w	a5,a5
    80005ac8:	fe078ce3          	beqz	a5,80005ac0 <system_main+0x28>
    80005acc:	0ff0000f          	fence
    80005ad0:	00003517          	auipc	a0,0x3
    80005ad4:	be050513          	addi	a0,a0,-1056 # 800086b0 <_ZZ12printIntegermE6digits+0x678>
    80005ad8:	00001097          	auipc	ra,0x1
    80005adc:	a74080e7          	jalr	-1420(ra) # 8000654c <panic>
    80005ae0:	00001097          	auipc	ra,0x1
    80005ae4:	9c8080e7          	jalr	-1592(ra) # 800064a8 <consoleinit>
    80005ae8:	00001097          	auipc	ra,0x1
    80005aec:	154080e7          	jalr	340(ra) # 80006c3c <printfinit>
    80005af0:	00003517          	auipc	a0,0x3
    80005af4:	ac850513          	addi	a0,a0,-1336 # 800085b8 <_ZZ12printIntegermE6digits+0x580>
    80005af8:	00001097          	auipc	ra,0x1
    80005afc:	ab0080e7          	jalr	-1360(ra) # 800065a8 <__printf>
    80005b00:	00003517          	auipc	a0,0x3
    80005b04:	b8050513          	addi	a0,a0,-1152 # 80008680 <_ZZ12printIntegermE6digits+0x648>
    80005b08:	00001097          	auipc	ra,0x1
    80005b0c:	aa0080e7          	jalr	-1376(ra) # 800065a8 <__printf>
    80005b10:	00003517          	auipc	a0,0x3
    80005b14:	aa850513          	addi	a0,a0,-1368 # 800085b8 <_ZZ12printIntegermE6digits+0x580>
    80005b18:	00001097          	auipc	ra,0x1
    80005b1c:	a90080e7          	jalr	-1392(ra) # 800065a8 <__printf>
    80005b20:	00001097          	auipc	ra,0x1
    80005b24:	4a8080e7          	jalr	1192(ra) # 80006fc8 <kinit>
    80005b28:	00000097          	auipc	ra,0x0
    80005b2c:	148080e7          	jalr	328(ra) # 80005c70 <trapinit>
    80005b30:	00000097          	auipc	ra,0x0
    80005b34:	16c080e7          	jalr	364(ra) # 80005c9c <trapinithart>
    80005b38:	00000097          	auipc	ra,0x0
    80005b3c:	5b8080e7          	jalr	1464(ra) # 800060f0 <plicinit>
    80005b40:	00000097          	auipc	ra,0x0
    80005b44:	5d8080e7          	jalr	1496(ra) # 80006118 <plicinithart>
    80005b48:	00000097          	auipc	ra,0x0
    80005b4c:	078080e7          	jalr	120(ra) # 80005bc0 <userinit>
    80005b50:	0ff0000f          	fence
    80005b54:	00100793          	li	a5,1
    80005b58:	00003517          	auipc	a0,0x3
    80005b5c:	b4050513          	addi	a0,a0,-1216 # 80008698 <_ZZ12printIntegermE6digits+0x660>
    80005b60:	00f4a023          	sw	a5,0(s1)
    80005b64:	00001097          	auipc	ra,0x1
    80005b68:	a44080e7          	jalr	-1468(ra) # 800065a8 <__printf>
    80005b6c:	0000006f          	j	80005b6c <system_main+0xd4>

0000000080005b70 <cpuid>:
    80005b70:	ff010113          	addi	sp,sp,-16
    80005b74:	00813423          	sd	s0,8(sp)
    80005b78:	01010413          	addi	s0,sp,16
    80005b7c:	00020513          	mv	a0,tp
    80005b80:	00813403          	ld	s0,8(sp)
    80005b84:	0005051b          	sext.w	a0,a0
    80005b88:	01010113          	addi	sp,sp,16
    80005b8c:	00008067          	ret

0000000080005b90 <mycpu>:
    80005b90:	ff010113          	addi	sp,sp,-16
    80005b94:	00813423          	sd	s0,8(sp)
    80005b98:	01010413          	addi	s0,sp,16
    80005b9c:	00020793          	mv	a5,tp
    80005ba0:	00813403          	ld	s0,8(sp)
    80005ba4:	0007879b          	sext.w	a5,a5
    80005ba8:	00779793          	slli	a5,a5,0x7
    80005bac:	00006517          	auipc	a0,0x6
    80005bb0:	80450513          	addi	a0,a0,-2044 # 8000b3b0 <cpus>
    80005bb4:	00f50533          	add	a0,a0,a5
    80005bb8:	01010113          	addi	sp,sp,16
    80005bbc:	00008067          	ret

0000000080005bc0 <userinit>:
    80005bc0:	ff010113          	addi	sp,sp,-16
    80005bc4:	00813423          	sd	s0,8(sp)
    80005bc8:	01010413          	addi	s0,sp,16
    80005bcc:	00813403          	ld	s0,8(sp)
    80005bd0:	01010113          	addi	sp,sp,16
    80005bd4:	ffffc317          	auipc	t1,0xffffc
    80005bd8:	08030067          	jr	128(t1) # 80001c54 <main>

0000000080005bdc <either_copyout>:
    80005bdc:	ff010113          	addi	sp,sp,-16
    80005be0:	00813023          	sd	s0,0(sp)
    80005be4:	00113423          	sd	ra,8(sp)
    80005be8:	01010413          	addi	s0,sp,16
    80005bec:	02051663          	bnez	a0,80005c18 <either_copyout+0x3c>
    80005bf0:	00058513          	mv	a0,a1
    80005bf4:	00060593          	mv	a1,a2
    80005bf8:	0006861b          	sext.w	a2,a3
    80005bfc:	00002097          	auipc	ra,0x2
    80005c00:	c58080e7          	jalr	-936(ra) # 80007854 <__memmove>
    80005c04:	00813083          	ld	ra,8(sp)
    80005c08:	00013403          	ld	s0,0(sp)
    80005c0c:	00000513          	li	a0,0
    80005c10:	01010113          	addi	sp,sp,16
    80005c14:	00008067          	ret
    80005c18:	00003517          	auipc	a0,0x3
    80005c1c:	ac050513          	addi	a0,a0,-1344 # 800086d8 <_ZZ12printIntegermE6digits+0x6a0>
    80005c20:	00001097          	auipc	ra,0x1
    80005c24:	92c080e7          	jalr	-1748(ra) # 8000654c <panic>

0000000080005c28 <either_copyin>:
    80005c28:	ff010113          	addi	sp,sp,-16
    80005c2c:	00813023          	sd	s0,0(sp)
    80005c30:	00113423          	sd	ra,8(sp)
    80005c34:	01010413          	addi	s0,sp,16
    80005c38:	02059463          	bnez	a1,80005c60 <either_copyin+0x38>
    80005c3c:	00060593          	mv	a1,a2
    80005c40:	0006861b          	sext.w	a2,a3
    80005c44:	00002097          	auipc	ra,0x2
    80005c48:	c10080e7          	jalr	-1008(ra) # 80007854 <__memmove>
    80005c4c:	00813083          	ld	ra,8(sp)
    80005c50:	00013403          	ld	s0,0(sp)
    80005c54:	00000513          	li	a0,0
    80005c58:	01010113          	addi	sp,sp,16
    80005c5c:	00008067          	ret
    80005c60:	00003517          	auipc	a0,0x3
    80005c64:	aa050513          	addi	a0,a0,-1376 # 80008700 <_ZZ12printIntegermE6digits+0x6c8>
    80005c68:	00001097          	auipc	ra,0x1
    80005c6c:	8e4080e7          	jalr	-1820(ra) # 8000654c <panic>

0000000080005c70 <trapinit>:
    80005c70:	ff010113          	addi	sp,sp,-16
    80005c74:	00813423          	sd	s0,8(sp)
    80005c78:	01010413          	addi	s0,sp,16
    80005c7c:	00813403          	ld	s0,8(sp)
    80005c80:	00003597          	auipc	a1,0x3
    80005c84:	aa858593          	addi	a1,a1,-1368 # 80008728 <_ZZ12printIntegermE6digits+0x6f0>
    80005c88:	00005517          	auipc	a0,0x5
    80005c8c:	7a850513          	addi	a0,a0,1960 # 8000b430 <tickslock>
    80005c90:	01010113          	addi	sp,sp,16
    80005c94:	00001317          	auipc	t1,0x1
    80005c98:	5c430067          	jr	1476(t1) # 80007258 <initlock>

0000000080005c9c <trapinithart>:
    80005c9c:	ff010113          	addi	sp,sp,-16
    80005ca0:	00813423          	sd	s0,8(sp)
    80005ca4:	01010413          	addi	s0,sp,16
    80005ca8:	00000797          	auipc	a5,0x0
    80005cac:	2f878793          	addi	a5,a5,760 # 80005fa0 <kernelvec>
    80005cb0:	10579073          	csrw	stvec,a5
    80005cb4:	00813403          	ld	s0,8(sp)
    80005cb8:	01010113          	addi	sp,sp,16
    80005cbc:	00008067          	ret

0000000080005cc0 <usertrap>:
    80005cc0:	ff010113          	addi	sp,sp,-16
    80005cc4:	00813423          	sd	s0,8(sp)
    80005cc8:	01010413          	addi	s0,sp,16
    80005ccc:	00813403          	ld	s0,8(sp)
    80005cd0:	01010113          	addi	sp,sp,16
    80005cd4:	00008067          	ret

0000000080005cd8 <usertrapret>:
    80005cd8:	ff010113          	addi	sp,sp,-16
    80005cdc:	00813423          	sd	s0,8(sp)
    80005ce0:	01010413          	addi	s0,sp,16
    80005ce4:	00813403          	ld	s0,8(sp)
    80005ce8:	01010113          	addi	sp,sp,16
    80005cec:	00008067          	ret

0000000080005cf0 <kerneltrap>:
    80005cf0:	fe010113          	addi	sp,sp,-32
    80005cf4:	00813823          	sd	s0,16(sp)
    80005cf8:	00113c23          	sd	ra,24(sp)
    80005cfc:	00913423          	sd	s1,8(sp)
    80005d00:	02010413          	addi	s0,sp,32
    80005d04:	142025f3          	csrr	a1,scause
    80005d08:	100027f3          	csrr	a5,sstatus
    80005d0c:	0027f793          	andi	a5,a5,2
    80005d10:	10079c63          	bnez	a5,80005e28 <kerneltrap+0x138>
    80005d14:	142027f3          	csrr	a5,scause
    80005d18:	0207ce63          	bltz	a5,80005d54 <kerneltrap+0x64>
    80005d1c:	00003517          	auipc	a0,0x3
    80005d20:	a5450513          	addi	a0,a0,-1452 # 80008770 <_ZZ12printIntegermE6digits+0x738>
    80005d24:	00001097          	auipc	ra,0x1
    80005d28:	884080e7          	jalr	-1916(ra) # 800065a8 <__printf>
    80005d2c:	141025f3          	csrr	a1,sepc
    80005d30:	14302673          	csrr	a2,stval
    80005d34:	00003517          	auipc	a0,0x3
    80005d38:	a4c50513          	addi	a0,a0,-1460 # 80008780 <_ZZ12printIntegermE6digits+0x748>
    80005d3c:	00001097          	auipc	ra,0x1
    80005d40:	86c080e7          	jalr	-1940(ra) # 800065a8 <__printf>
    80005d44:	00003517          	auipc	a0,0x3
    80005d48:	a5450513          	addi	a0,a0,-1452 # 80008798 <_ZZ12printIntegermE6digits+0x760>
    80005d4c:	00001097          	auipc	ra,0x1
    80005d50:	800080e7          	jalr	-2048(ra) # 8000654c <panic>
    80005d54:	0ff7f713          	andi	a4,a5,255
    80005d58:	00900693          	li	a3,9
    80005d5c:	04d70063          	beq	a4,a3,80005d9c <kerneltrap+0xac>
    80005d60:	fff00713          	li	a4,-1
    80005d64:	03f71713          	slli	a4,a4,0x3f
    80005d68:	00170713          	addi	a4,a4,1
    80005d6c:	fae798e3          	bne	a5,a4,80005d1c <kerneltrap+0x2c>
    80005d70:	00000097          	auipc	ra,0x0
    80005d74:	e00080e7          	jalr	-512(ra) # 80005b70 <cpuid>
    80005d78:	06050663          	beqz	a0,80005de4 <kerneltrap+0xf4>
    80005d7c:	144027f3          	csrr	a5,sip
    80005d80:	ffd7f793          	andi	a5,a5,-3
    80005d84:	14479073          	csrw	sip,a5
    80005d88:	01813083          	ld	ra,24(sp)
    80005d8c:	01013403          	ld	s0,16(sp)
    80005d90:	00813483          	ld	s1,8(sp)
    80005d94:	02010113          	addi	sp,sp,32
    80005d98:	00008067          	ret
    80005d9c:	00000097          	auipc	ra,0x0
    80005da0:	3c8080e7          	jalr	968(ra) # 80006164 <plic_claim>
    80005da4:	00a00793          	li	a5,10
    80005da8:	00050493          	mv	s1,a0
    80005dac:	06f50863          	beq	a0,a5,80005e1c <kerneltrap+0x12c>
    80005db0:	fc050ce3          	beqz	a0,80005d88 <kerneltrap+0x98>
    80005db4:	00050593          	mv	a1,a0
    80005db8:	00003517          	auipc	a0,0x3
    80005dbc:	99850513          	addi	a0,a0,-1640 # 80008750 <_ZZ12printIntegermE6digits+0x718>
    80005dc0:	00000097          	auipc	ra,0x0
    80005dc4:	7e8080e7          	jalr	2024(ra) # 800065a8 <__printf>
    80005dc8:	01013403          	ld	s0,16(sp)
    80005dcc:	01813083          	ld	ra,24(sp)
    80005dd0:	00048513          	mv	a0,s1
    80005dd4:	00813483          	ld	s1,8(sp)
    80005dd8:	02010113          	addi	sp,sp,32
    80005ddc:	00000317          	auipc	t1,0x0
    80005de0:	3c030067          	jr	960(t1) # 8000619c <plic_complete>
    80005de4:	00005517          	auipc	a0,0x5
    80005de8:	64c50513          	addi	a0,a0,1612 # 8000b430 <tickslock>
    80005dec:	00001097          	auipc	ra,0x1
    80005df0:	490080e7          	jalr	1168(ra) # 8000727c <acquire>
    80005df4:	00004717          	auipc	a4,0x4
    80005df8:	50070713          	addi	a4,a4,1280 # 8000a2f4 <ticks>
    80005dfc:	00072783          	lw	a5,0(a4)
    80005e00:	00005517          	auipc	a0,0x5
    80005e04:	63050513          	addi	a0,a0,1584 # 8000b430 <tickslock>
    80005e08:	0017879b          	addiw	a5,a5,1
    80005e0c:	00f72023          	sw	a5,0(a4)
    80005e10:	00001097          	auipc	ra,0x1
    80005e14:	538080e7          	jalr	1336(ra) # 80007348 <release>
    80005e18:	f65ff06f          	j	80005d7c <kerneltrap+0x8c>
    80005e1c:	00001097          	auipc	ra,0x1
    80005e20:	094080e7          	jalr	148(ra) # 80006eb0 <uartintr>
    80005e24:	fa5ff06f          	j	80005dc8 <kerneltrap+0xd8>
    80005e28:	00003517          	auipc	a0,0x3
    80005e2c:	90850513          	addi	a0,a0,-1784 # 80008730 <_ZZ12printIntegermE6digits+0x6f8>
    80005e30:	00000097          	auipc	ra,0x0
    80005e34:	71c080e7          	jalr	1820(ra) # 8000654c <panic>

0000000080005e38 <clockintr>:
    80005e38:	fe010113          	addi	sp,sp,-32
    80005e3c:	00813823          	sd	s0,16(sp)
    80005e40:	00913423          	sd	s1,8(sp)
    80005e44:	00113c23          	sd	ra,24(sp)
    80005e48:	02010413          	addi	s0,sp,32
    80005e4c:	00005497          	auipc	s1,0x5
    80005e50:	5e448493          	addi	s1,s1,1508 # 8000b430 <tickslock>
    80005e54:	00048513          	mv	a0,s1
    80005e58:	00001097          	auipc	ra,0x1
    80005e5c:	424080e7          	jalr	1060(ra) # 8000727c <acquire>
    80005e60:	00004717          	auipc	a4,0x4
    80005e64:	49470713          	addi	a4,a4,1172 # 8000a2f4 <ticks>
    80005e68:	00072783          	lw	a5,0(a4)
    80005e6c:	01013403          	ld	s0,16(sp)
    80005e70:	01813083          	ld	ra,24(sp)
    80005e74:	00048513          	mv	a0,s1
    80005e78:	0017879b          	addiw	a5,a5,1
    80005e7c:	00813483          	ld	s1,8(sp)
    80005e80:	00f72023          	sw	a5,0(a4)
    80005e84:	02010113          	addi	sp,sp,32
    80005e88:	00001317          	auipc	t1,0x1
    80005e8c:	4c030067          	jr	1216(t1) # 80007348 <release>

0000000080005e90 <devintr>:
    80005e90:	142027f3          	csrr	a5,scause
    80005e94:	00000513          	li	a0,0
    80005e98:	0007c463          	bltz	a5,80005ea0 <devintr+0x10>
    80005e9c:	00008067          	ret
    80005ea0:	fe010113          	addi	sp,sp,-32
    80005ea4:	00813823          	sd	s0,16(sp)
    80005ea8:	00113c23          	sd	ra,24(sp)
    80005eac:	00913423          	sd	s1,8(sp)
    80005eb0:	02010413          	addi	s0,sp,32
    80005eb4:	0ff7f713          	andi	a4,a5,255
    80005eb8:	00900693          	li	a3,9
    80005ebc:	04d70c63          	beq	a4,a3,80005f14 <devintr+0x84>
    80005ec0:	fff00713          	li	a4,-1
    80005ec4:	03f71713          	slli	a4,a4,0x3f
    80005ec8:	00170713          	addi	a4,a4,1
    80005ecc:	00e78c63          	beq	a5,a4,80005ee4 <devintr+0x54>
    80005ed0:	01813083          	ld	ra,24(sp)
    80005ed4:	01013403          	ld	s0,16(sp)
    80005ed8:	00813483          	ld	s1,8(sp)
    80005edc:	02010113          	addi	sp,sp,32
    80005ee0:	00008067          	ret
    80005ee4:	00000097          	auipc	ra,0x0
    80005ee8:	c8c080e7          	jalr	-884(ra) # 80005b70 <cpuid>
    80005eec:	06050663          	beqz	a0,80005f58 <devintr+0xc8>
    80005ef0:	144027f3          	csrr	a5,sip
    80005ef4:	ffd7f793          	andi	a5,a5,-3
    80005ef8:	14479073          	csrw	sip,a5
    80005efc:	01813083          	ld	ra,24(sp)
    80005f00:	01013403          	ld	s0,16(sp)
    80005f04:	00813483          	ld	s1,8(sp)
    80005f08:	00200513          	li	a0,2
    80005f0c:	02010113          	addi	sp,sp,32
    80005f10:	00008067          	ret
    80005f14:	00000097          	auipc	ra,0x0
    80005f18:	250080e7          	jalr	592(ra) # 80006164 <plic_claim>
    80005f1c:	00a00793          	li	a5,10
    80005f20:	00050493          	mv	s1,a0
    80005f24:	06f50663          	beq	a0,a5,80005f90 <devintr+0x100>
    80005f28:	00100513          	li	a0,1
    80005f2c:	fa0482e3          	beqz	s1,80005ed0 <devintr+0x40>
    80005f30:	00048593          	mv	a1,s1
    80005f34:	00003517          	auipc	a0,0x3
    80005f38:	81c50513          	addi	a0,a0,-2020 # 80008750 <_ZZ12printIntegermE6digits+0x718>
    80005f3c:	00000097          	auipc	ra,0x0
    80005f40:	66c080e7          	jalr	1644(ra) # 800065a8 <__printf>
    80005f44:	00048513          	mv	a0,s1
    80005f48:	00000097          	auipc	ra,0x0
    80005f4c:	254080e7          	jalr	596(ra) # 8000619c <plic_complete>
    80005f50:	00100513          	li	a0,1
    80005f54:	f7dff06f          	j	80005ed0 <devintr+0x40>
    80005f58:	00005517          	auipc	a0,0x5
    80005f5c:	4d850513          	addi	a0,a0,1240 # 8000b430 <tickslock>
    80005f60:	00001097          	auipc	ra,0x1
    80005f64:	31c080e7          	jalr	796(ra) # 8000727c <acquire>
    80005f68:	00004717          	auipc	a4,0x4
    80005f6c:	38c70713          	addi	a4,a4,908 # 8000a2f4 <ticks>
    80005f70:	00072783          	lw	a5,0(a4)
    80005f74:	00005517          	auipc	a0,0x5
    80005f78:	4bc50513          	addi	a0,a0,1212 # 8000b430 <tickslock>
    80005f7c:	0017879b          	addiw	a5,a5,1
    80005f80:	00f72023          	sw	a5,0(a4)
    80005f84:	00001097          	auipc	ra,0x1
    80005f88:	3c4080e7          	jalr	964(ra) # 80007348 <release>
    80005f8c:	f65ff06f          	j	80005ef0 <devintr+0x60>
    80005f90:	00001097          	auipc	ra,0x1
    80005f94:	f20080e7          	jalr	-224(ra) # 80006eb0 <uartintr>
    80005f98:	fadff06f          	j	80005f44 <devintr+0xb4>
    80005f9c:	0000                	unimp
	...

0000000080005fa0 <kernelvec>:
    80005fa0:	f0010113          	addi	sp,sp,-256
    80005fa4:	00113023          	sd	ra,0(sp)
    80005fa8:	00213423          	sd	sp,8(sp)
    80005fac:	00313823          	sd	gp,16(sp)
    80005fb0:	00413c23          	sd	tp,24(sp)
    80005fb4:	02513023          	sd	t0,32(sp)
    80005fb8:	02613423          	sd	t1,40(sp)
    80005fbc:	02713823          	sd	t2,48(sp)
    80005fc0:	02813c23          	sd	s0,56(sp)
    80005fc4:	04913023          	sd	s1,64(sp)
    80005fc8:	04a13423          	sd	a0,72(sp)
    80005fcc:	04b13823          	sd	a1,80(sp)
    80005fd0:	04c13c23          	sd	a2,88(sp)
    80005fd4:	06d13023          	sd	a3,96(sp)
    80005fd8:	06e13423          	sd	a4,104(sp)
    80005fdc:	06f13823          	sd	a5,112(sp)
    80005fe0:	07013c23          	sd	a6,120(sp)
    80005fe4:	09113023          	sd	a7,128(sp)
    80005fe8:	09213423          	sd	s2,136(sp)
    80005fec:	09313823          	sd	s3,144(sp)
    80005ff0:	09413c23          	sd	s4,152(sp)
    80005ff4:	0b513023          	sd	s5,160(sp)
    80005ff8:	0b613423          	sd	s6,168(sp)
    80005ffc:	0b713823          	sd	s7,176(sp)
    80006000:	0b813c23          	sd	s8,184(sp)
    80006004:	0d913023          	sd	s9,192(sp)
    80006008:	0da13423          	sd	s10,200(sp)
    8000600c:	0db13823          	sd	s11,208(sp)
    80006010:	0dc13c23          	sd	t3,216(sp)
    80006014:	0fd13023          	sd	t4,224(sp)
    80006018:	0fe13423          	sd	t5,232(sp)
    8000601c:	0ff13823          	sd	t6,240(sp)
    80006020:	cd1ff0ef          	jal	ra,80005cf0 <kerneltrap>
    80006024:	00013083          	ld	ra,0(sp)
    80006028:	00813103          	ld	sp,8(sp)
    8000602c:	01013183          	ld	gp,16(sp)
    80006030:	02013283          	ld	t0,32(sp)
    80006034:	02813303          	ld	t1,40(sp)
    80006038:	03013383          	ld	t2,48(sp)
    8000603c:	03813403          	ld	s0,56(sp)
    80006040:	04013483          	ld	s1,64(sp)
    80006044:	04813503          	ld	a0,72(sp)
    80006048:	05013583          	ld	a1,80(sp)
    8000604c:	05813603          	ld	a2,88(sp)
    80006050:	06013683          	ld	a3,96(sp)
    80006054:	06813703          	ld	a4,104(sp)
    80006058:	07013783          	ld	a5,112(sp)
    8000605c:	07813803          	ld	a6,120(sp)
    80006060:	08013883          	ld	a7,128(sp)
    80006064:	08813903          	ld	s2,136(sp)
    80006068:	09013983          	ld	s3,144(sp)
    8000606c:	09813a03          	ld	s4,152(sp)
    80006070:	0a013a83          	ld	s5,160(sp)
    80006074:	0a813b03          	ld	s6,168(sp)
    80006078:	0b013b83          	ld	s7,176(sp)
    8000607c:	0b813c03          	ld	s8,184(sp)
    80006080:	0c013c83          	ld	s9,192(sp)
    80006084:	0c813d03          	ld	s10,200(sp)
    80006088:	0d013d83          	ld	s11,208(sp)
    8000608c:	0d813e03          	ld	t3,216(sp)
    80006090:	0e013e83          	ld	t4,224(sp)
    80006094:	0e813f03          	ld	t5,232(sp)
    80006098:	0f013f83          	ld	t6,240(sp)
    8000609c:	10010113          	addi	sp,sp,256
    800060a0:	10200073          	sret
    800060a4:	00000013          	nop
    800060a8:	00000013          	nop
    800060ac:	00000013          	nop

00000000800060b0 <timervec>:
    800060b0:	34051573          	csrrw	a0,mscratch,a0
    800060b4:	00b53023          	sd	a1,0(a0)
    800060b8:	00c53423          	sd	a2,8(a0)
    800060bc:	00d53823          	sd	a3,16(a0)
    800060c0:	01853583          	ld	a1,24(a0)
    800060c4:	02053603          	ld	a2,32(a0)
    800060c8:	0005b683          	ld	a3,0(a1)
    800060cc:	00c686b3          	add	a3,a3,a2
    800060d0:	00d5b023          	sd	a3,0(a1)
    800060d4:	00200593          	li	a1,2
    800060d8:	14459073          	csrw	sip,a1
    800060dc:	01053683          	ld	a3,16(a0)
    800060e0:	00853603          	ld	a2,8(a0)
    800060e4:	00053583          	ld	a1,0(a0)
    800060e8:	34051573          	csrrw	a0,mscratch,a0
    800060ec:	30200073          	mret

00000000800060f0 <plicinit>:
    800060f0:	ff010113          	addi	sp,sp,-16
    800060f4:	00813423          	sd	s0,8(sp)
    800060f8:	01010413          	addi	s0,sp,16
    800060fc:	00813403          	ld	s0,8(sp)
    80006100:	0c0007b7          	lui	a5,0xc000
    80006104:	00100713          	li	a4,1
    80006108:	02e7a423          	sw	a4,40(a5) # c000028 <_entry-0x73ffffd8>
    8000610c:	00e7a223          	sw	a4,4(a5)
    80006110:	01010113          	addi	sp,sp,16
    80006114:	00008067          	ret

0000000080006118 <plicinithart>:
    80006118:	ff010113          	addi	sp,sp,-16
    8000611c:	00813023          	sd	s0,0(sp)
    80006120:	00113423          	sd	ra,8(sp)
    80006124:	01010413          	addi	s0,sp,16
    80006128:	00000097          	auipc	ra,0x0
    8000612c:	a48080e7          	jalr	-1464(ra) # 80005b70 <cpuid>
    80006130:	0085171b          	slliw	a4,a0,0x8
    80006134:	0c0027b7          	lui	a5,0xc002
    80006138:	00e787b3          	add	a5,a5,a4
    8000613c:	40200713          	li	a4,1026
    80006140:	08e7a023          	sw	a4,128(a5) # c002080 <_entry-0x73ffdf80>
    80006144:	00813083          	ld	ra,8(sp)
    80006148:	00013403          	ld	s0,0(sp)
    8000614c:	00d5151b          	slliw	a0,a0,0xd
    80006150:	0c2017b7          	lui	a5,0xc201
    80006154:	00a78533          	add	a0,a5,a0
    80006158:	00052023          	sw	zero,0(a0)
    8000615c:	01010113          	addi	sp,sp,16
    80006160:	00008067          	ret

0000000080006164 <plic_claim>:
    80006164:	ff010113          	addi	sp,sp,-16
    80006168:	00813023          	sd	s0,0(sp)
    8000616c:	00113423          	sd	ra,8(sp)
    80006170:	01010413          	addi	s0,sp,16
    80006174:	00000097          	auipc	ra,0x0
    80006178:	9fc080e7          	jalr	-1540(ra) # 80005b70 <cpuid>
    8000617c:	00813083          	ld	ra,8(sp)
    80006180:	00013403          	ld	s0,0(sp)
    80006184:	00d5151b          	slliw	a0,a0,0xd
    80006188:	0c2017b7          	lui	a5,0xc201
    8000618c:	00a78533          	add	a0,a5,a0
    80006190:	00452503          	lw	a0,4(a0)
    80006194:	01010113          	addi	sp,sp,16
    80006198:	00008067          	ret

000000008000619c <plic_complete>:
    8000619c:	fe010113          	addi	sp,sp,-32
    800061a0:	00813823          	sd	s0,16(sp)
    800061a4:	00913423          	sd	s1,8(sp)
    800061a8:	00113c23          	sd	ra,24(sp)
    800061ac:	02010413          	addi	s0,sp,32
    800061b0:	00050493          	mv	s1,a0
    800061b4:	00000097          	auipc	ra,0x0
    800061b8:	9bc080e7          	jalr	-1604(ra) # 80005b70 <cpuid>
    800061bc:	01813083          	ld	ra,24(sp)
    800061c0:	01013403          	ld	s0,16(sp)
    800061c4:	00d5179b          	slliw	a5,a0,0xd
    800061c8:	0c201737          	lui	a4,0xc201
    800061cc:	00f707b3          	add	a5,a4,a5
    800061d0:	0097a223          	sw	s1,4(a5) # c201004 <_entry-0x73dfeffc>
    800061d4:	00813483          	ld	s1,8(sp)
    800061d8:	02010113          	addi	sp,sp,32
    800061dc:	00008067          	ret

00000000800061e0 <consolewrite>:
    800061e0:	fb010113          	addi	sp,sp,-80
    800061e4:	04813023          	sd	s0,64(sp)
    800061e8:	04113423          	sd	ra,72(sp)
    800061ec:	02913c23          	sd	s1,56(sp)
    800061f0:	03213823          	sd	s2,48(sp)
    800061f4:	03313423          	sd	s3,40(sp)
    800061f8:	03413023          	sd	s4,32(sp)
    800061fc:	01513c23          	sd	s5,24(sp)
    80006200:	05010413          	addi	s0,sp,80
    80006204:	06c05c63          	blez	a2,8000627c <consolewrite+0x9c>
    80006208:	00060993          	mv	s3,a2
    8000620c:	00050a13          	mv	s4,a0
    80006210:	00058493          	mv	s1,a1
    80006214:	00000913          	li	s2,0
    80006218:	fff00a93          	li	s5,-1
    8000621c:	01c0006f          	j	80006238 <consolewrite+0x58>
    80006220:	fbf44503          	lbu	a0,-65(s0)
    80006224:	0019091b          	addiw	s2,s2,1
    80006228:	00148493          	addi	s1,s1,1
    8000622c:	00001097          	auipc	ra,0x1
    80006230:	a9c080e7          	jalr	-1380(ra) # 80006cc8 <uartputc>
    80006234:	03298063          	beq	s3,s2,80006254 <consolewrite+0x74>
    80006238:	00048613          	mv	a2,s1
    8000623c:	00100693          	li	a3,1
    80006240:	000a0593          	mv	a1,s4
    80006244:	fbf40513          	addi	a0,s0,-65
    80006248:	00000097          	auipc	ra,0x0
    8000624c:	9e0080e7          	jalr	-1568(ra) # 80005c28 <either_copyin>
    80006250:	fd5518e3          	bne	a0,s5,80006220 <consolewrite+0x40>
    80006254:	04813083          	ld	ra,72(sp)
    80006258:	04013403          	ld	s0,64(sp)
    8000625c:	03813483          	ld	s1,56(sp)
    80006260:	02813983          	ld	s3,40(sp)
    80006264:	02013a03          	ld	s4,32(sp)
    80006268:	01813a83          	ld	s5,24(sp)
    8000626c:	00090513          	mv	a0,s2
    80006270:	03013903          	ld	s2,48(sp)
    80006274:	05010113          	addi	sp,sp,80
    80006278:	00008067          	ret
    8000627c:	00000913          	li	s2,0
    80006280:	fd5ff06f          	j	80006254 <consolewrite+0x74>

0000000080006284 <consoleread>:
    80006284:	f9010113          	addi	sp,sp,-112
    80006288:	06813023          	sd	s0,96(sp)
    8000628c:	04913c23          	sd	s1,88(sp)
    80006290:	05213823          	sd	s2,80(sp)
    80006294:	05313423          	sd	s3,72(sp)
    80006298:	05413023          	sd	s4,64(sp)
    8000629c:	03513c23          	sd	s5,56(sp)
    800062a0:	03613823          	sd	s6,48(sp)
    800062a4:	03713423          	sd	s7,40(sp)
    800062a8:	03813023          	sd	s8,32(sp)
    800062ac:	06113423          	sd	ra,104(sp)
    800062b0:	01913c23          	sd	s9,24(sp)
    800062b4:	07010413          	addi	s0,sp,112
    800062b8:	00060b93          	mv	s7,a2
    800062bc:	00050913          	mv	s2,a0
    800062c0:	00058c13          	mv	s8,a1
    800062c4:	00060b1b          	sext.w	s6,a2
    800062c8:	00005497          	auipc	s1,0x5
    800062cc:	19048493          	addi	s1,s1,400 # 8000b458 <cons>
    800062d0:	00400993          	li	s3,4
    800062d4:	fff00a13          	li	s4,-1
    800062d8:	00a00a93          	li	s5,10
    800062dc:	05705e63          	blez	s7,80006338 <consoleread+0xb4>
    800062e0:	09c4a703          	lw	a4,156(s1)
    800062e4:	0984a783          	lw	a5,152(s1)
    800062e8:	0007071b          	sext.w	a4,a4
    800062ec:	08e78463          	beq	a5,a4,80006374 <consoleread+0xf0>
    800062f0:	07f7f713          	andi	a4,a5,127
    800062f4:	00e48733          	add	a4,s1,a4
    800062f8:	01874703          	lbu	a4,24(a4) # c201018 <_entry-0x73dfefe8>
    800062fc:	0017869b          	addiw	a3,a5,1
    80006300:	08d4ac23          	sw	a3,152(s1)
    80006304:	00070c9b          	sext.w	s9,a4
    80006308:	0b370663          	beq	a4,s3,800063b4 <consoleread+0x130>
    8000630c:	00100693          	li	a3,1
    80006310:	f9f40613          	addi	a2,s0,-97
    80006314:	000c0593          	mv	a1,s8
    80006318:	00090513          	mv	a0,s2
    8000631c:	f8e40fa3          	sb	a4,-97(s0)
    80006320:	00000097          	auipc	ra,0x0
    80006324:	8bc080e7          	jalr	-1860(ra) # 80005bdc <either_copyout>
    80006328:	01450863          	beq	a0,s4,80006338 <consoleread+0xb4>
    8000632c:	001c0c13          	addi	s8,s8,1
    80006330:	fffb8b9b          	addiw	s7,s7,-1
    80006334:	fb5c94e3          	bne	s9,s5,800062dc <consoleread+0x58>
    80006338:	000b851b          	sext.w	a0,s7
    8000633c:	06813083          	ld	ra,104(sp)
    80006340:	06013403          	ld	s0,96(sp)
    80006344:	05813483          	ld	s1,88(sp)
    80006348:	05013903          	ld	s2,80(sp)
    8000634c:	04813983          	ld	s3,72(sp)
    80006350:	04013a03          	ld	s4,64(sp)
    80006354:	03813a83          	ld	s5,56(sp)
    80006358:	02813b83          	ld	s7,40(sp)
    8000635c:	02013c03          	ld	s8,32(sp)
    80006360:	01813c83          	ld	s9,24(sp)
    80006364:	40ab053b          	subw	a0,s6,a0
    80006368:	03013b03          	ld	s6,48(sp)
    8000636c:	07010113          	addi	sp,sp,112
    80006370:	00008067          	ret
    80006374:	00001097          	auipc	ra,0x1
    80006378:	1d8080e7          	jalr	472(ra) # 8000754c <push_on>
    8000637c:	0984a703          	lw	a4,152(s1)
    80006380:	09c4a783          	lw	a5,156(s1)
    80006384:	0007879b          	sext.w	a5,a5
    80006388:	fef70ce3          	beq	a4,a5,80006380 <consoleread+0xfc>
    8000638c:	00001097          	auipc	ra,0x1
    80006390:	234080e7          	jalr	564(ra) # 800075c0 <pop_on>
    80006394:	0984a783          	lw	a5,152(s1)
    80006398:	07f7f713          	andi	a4,a5,127
    8000639c:	00e48733          	add	a4,s1,a4
    800063a0:	01874703          	lbu	a4,24(a4)
    800063a4:	0017869b          	addiw	a3,a5,1
    800063a8:	08d4ac23          	sw	a3,152(s1)
    800063ac:	00070c9b          	sext.w	s9,a4
    800063b0:	f5371ee3          	bne	a4,s3,8000630c <consoleread+0x88>
    800063b4:	000b851b          	sext.w	a0,s7
    800063b8:	f96bf2e3          	bgeu	s7,s6,8000633c <consoleread+0xb8>
    800063bc:	08f4ac23          	sw	a5,152(s1)
    800063c0:	f7dff06f          	j	8000633c <consoleread+0xb8>

00000000800063c4 <consputc>:
    800063c4:	10000793          	li	a5,256
    800063c8:	00f50663          	beq	a0,a5,800063d4 <consputc+0x10>
    800063cc:	00001317          	auipc	t1,0x1
    800063d0:	9f430067          	jr	-1548(t1) # 80006dc0 <uartputc_sync>
    800063d4:	ff010113          	addi	sp,sp,-16
    800063d8:	00113423          	sd	ra,8(sp)
    800063dc:	00813023          	sd	s0,0(sp)
    800063e0:	01010413          	addi	s0,sp,16
    800063e4:	00800513          	li	a0,8
    800063e8:	00001097          	auipc	ra,0x1
    800063ec:	9d8080e7          	jalr	-1576(ra) # 80006dc0 <uartputc_sync>
    800063f0:	02000513          	li	a0,32
    800063f4:	00001097          	auipc	ra,0x1
    800063f8:	9cc080e7          	jalr	-1588(ra) # 80006dc0 <uartputc_sync>
    800063fc:	00013403          	ld	s0,0(sp)
    80006400:	00813083          	ld	ra,8(sp)
    80006404:	00800513          	li	a0,8
    80006408:	01010113          	addi	sp,sp,16
    8000640c:	00001317          	auipc	t1,0x1
    80006410:	9b430067          	jr	-1612(t1) # 80006dc0 <uartputc_sync>

0000000080006414 <consoleintr>:
    80006414:	fe010113          	addi	sp,sp,-32
    80006418:	00813823          	sd	s0,16(sp)
    8000641c:	00913423          	sd	s1,8(sp)
    80006420:	01213023          	sd	s2,0(sp)
    80006424:	00113c23          	sd	ra,24(sp)
    80006428:	02010413          	addi	s0,sp,32
    8000642c:	00005917          	auipc	s2,0x5
    80006430:	02c90913          	addi	s2,s2,44 # 8000b458 <cons>
    80006434:	00050493          	mv	s1,a0
    80006438:	00090513          	mv	a0,s2
    8000643c:	00001097          	auipc	ra,0x1
    80006440:	e40080e7          	jalr	-448(ra) # 8000727c <acquire>
    80006444:	02048c63          	beqz	s1,8000647c <consoleintr+0x68>
    80006448:	0a092783          	lw	a5,160(s2)
    8000644c:	09892703          	lw	a4,152(s2)
    80006450:	07f00693          	li	a3,127
    80006454:	40e7873b          	subw	a4,a5,a4
    80006458:	02e6e263          	bltu	a3,a4,8000647c <consoleintr+0x68>
    8000645c:	00d00713          	li	a4,13
    80006460:	04e48063          	beq	s1,a4,800064a0 <consoleintr+0x8c>
    80006464:	07f7f713          	andi	a4,a5,127
    80006468:	00e90733          	add	a4,s2,a4
    8000646c:	0017879b          	addiw	a5,a5,1
    80006470:	0af92023          	sw	a5,160(s2)
    80006474:	00970c23          	sb	s1,24(a4)
    80006478:	08f92e23          	sw	a5,156(s2)
    8000647c:	01013403          	ld	s0,16(sp)
    80006480:	01813083          	ld	ra,24(sp)
    80006484:	00813483          	ld	s1,8(sp)
    80006488:	00013903          	ld	s2,0(sp)
    8000648c:	00005517          	auipc	a0,0x5
    80006490:	fcc50513          	addi	a0,a0,-52 # 8000b458 <cons>
    80006494:	02010113          	addi	sp,sp,32
    80006498:	00001317          	auipc	t1,0x1
    8000649c:	eb030067          	jr	-336(t1) # 80007348 <release>
    800064a0:	00a00493          	li	s1,10
    800064a4:	fc1ff06f          	j	80006464 <consoleintr+0x50>

00000000800064a8 <consoleinit>:
    800064a8:	fe010113          	addi	sp,sp,-32
    800064ac:	00113c23          	sd	ra,24(sp)
    800064b0:	00813823          	sd	s0,16(sp)
    800064b4:	00913423          	sd	s1,8(sp)
    800064b8:	02010413          	addi	s0,sp,32
    800064bc:	00005497          	auipc	s1,0x5
    800064c0:	f9c48493          	addi	s1,s1,-100 # 8000b458 <cons>
    800064c4:	00048513          	mv	a0,s1
    800064c8:	00002597          	auipc	a1,0x2
    800064cc:	2e058593          	addi	a1,a1,736 # 800087a8 <_ZZ12printIntegermE6digits+0x770>
    800064d0:	00001097          	auipc	ra,0x1
    800064d4:	d88080e7          	jalr	-632(ra) # 80007258 <initlock>
    800064d8:	00000097          	auipc	ra,0x0
    800064dc:	7ac080e7          	jalr	1964(ra) # 80006c84 <uartinit>
    800064e0:	01813083          	ld	ra,24(sp)
    800064e4:	01013403          	ld	s0,16(sp)
    800064e8:	00000797          	auipc	a5,0x0
    800064ec:	d9c78793          	addi	a5,a5,-612 # 80006284 <consoleread>
    800064f0:	0af4bc23          	sd	a5,184(s1)
    800064f4:	00000797          	auipc	a5,0x0
    800064f8:	cec78793          	addi	a5,a5,-788 # 800061e0 <consolewrite>
    800064fc:	0cf4b023          	sd	a5,192(s1)
    80006500:	00813483          	ld	s1,8(sp)
    80006504:	02010113          	addi	sp,sp,32
    80006508:	00008067          	ret

000000008000650c <console_read>:
    8000650c:	ff010113          	addi	sp,sp,-16
    80006510:	00813423          	sd	s0,8(sp)
    80006514:	01010413          	addi	s0,sp,16
    80006518:	00813403          	ld	s0,8(sp)
    8000651c:	00005317          	auipc	t1,0x5
    80006520:	ff433303          	ld	t1,-12(t1) # 8000b510 <devsw+0x10>
    80006524:	01010113          	addi	sp,sp,16
    80006528:	00030067          	jr	t1

000000008000652c <console_write>:
    8000652c:	ff010113          	addi	sp,sp,-16
    80006530:	00813423          	sd	s0,8(sp)
    80006534:	01010413          	addi	s0,sp,16
    80006538:	00813403          	ld	s0,8(sp)
    8000653c:	00005317          	auipc	t1,0x5
    80006540:	fdc33303          	ld	t1,-36(t1) # 8000b518 <devsw+0x18>
    80006544:	01010113          	addi	sp,sp,16
    80006548:	00030067          	jr	t1

000000008000654c <panic>:
    8000654c:	fe010113          	addi	sp,sp,-32
    80006550:	00113c23          	sd	ra,24(sp)
    80006554:	00813823          	sd	s0,16(sp)
    80006558:	00913423          	sd	s1,8(sp)
    8000655c:	02010413          	addi	s0,sp,32
    80006560:	00050493          	mv	s1,a0
    80006564:	00002517          	auipc	a0,0x2
    80006568:	24c50513          	addi	a0,a0,588 # 800087b0 <_ZZ12printIntegermE6digits+0x778>
    8000656c:	00005797          	auipc	a5,0x5
    80006570:	0407a623          	sw	zero,76(a5) # 8000b5b8 <pr+0x18>
    80006574:	00000097          	auipc	ra,0x0
    80006578:	034080e7          	jalr	52(ra) # 800065a8 <__printf>
    8000657c:	00048513          	mv	a0,s1
    80006580:	00000097          	auipc	ra,0x0
    80006584:	028080e7          	jalr	40(ra) # 800065a8 <__printf>
    80006588:	00002517          	auipc	a0,0x2
    8000658c:	03050513          	addi	a0,a0,48 # 800085b8 <_ZZ12printIntegermE6digits+0x580>
    80006590:	00000097          	auipc	ra,0x0
    80006594:	018080e7          	jalr	24(ra) # 800065a8 <__printf>
    80006598:	00100793          	li	a5,1
    8000659c:	00004717          	auipc	a4,0x4
    800065a0:	d4f72e23          	sw	a5,-676(a4) # 8000a2f8 <panicked>
    800065a4:	0000006f          	j	800065a4 <panic+0x58>

00000000800065a8 <__printf>:
    800065a8:	f3010113          	addi	sp,sp,-208
    800065ac:	08813023          	sd	s0,128(sp)
    800065b0:	07313423          	sd	s3,104(sp)
    800065b4:	09010413          	addi	s0,sp,144
    800065b8:	05813023          	sd	s8,64(sp)
    800065bc:	08113423          	sd	ra,136(sp)
    800065c0:	06913c23          	sd	s1,120(sp)
    800065c4:	07213823          	sd	s2,112(sp)
    800065c8:	07413023          	sd	s4,96(sp)
    800065cc:	05513c23          	sd	s5,88(sp)
    800065d0:	05613823          	sd	s6,80(sp)
    800065d4:	05713423          	sd	s7,72(sp)
    800065d8:	03913c23          	sd	s9,56(sp)
    800065dc:	03a13823          	sd	s10,48(sp)
    800065e0:	03b13423          	sd	s11,40(sp)
    800065e4:	00005317          	auipc	t1,0x5
    800065e8:	fbc30313          	addi	t1,t1,-68 # 8000b5a0 <pr>
    800065ec:	01832c03          	lw	s8,24(t1)
    800065f0:	00b43423          	sd	a1,8(s0)
    800065f4:	00c43823          	sd	a2,16(s0)
    800065f8:	00d43c23          	sd	a3,24(s0)
    800065fc:	02e43023          	sd	a4,32(s0)
    80006600:	02f43423          	sd	a5,40(s0)
    80006604:	03043823          	sd	a6,48(s0)
    80006608:	03143c23          	sd	a7,56(s0)
    8000660c:	00050993          	mv	s3,a0
    80006610:	4a0c1663          	bnez	s8,80006abc <__printf+0x514>
    80006614:	60098c63          	beqz	s3,80006c2c <__printf+0x684>
    80006618:	0009c503          	lbu	a0,0(s3)
    8000661c:	00840793          	addi	a5,s0,8
    80006620:	f6f43c23          	sd	a5,-136(s0)
    80006624:	00000493          	li	s1,0
    80006628:	22050063          	beqz	a0,80006848 <__printf+0x2a0>
    8000662c:	00002a37          	lui	s4,0x2
    80006630:	00018ab7          	lui	s5,0x18
    80006634:	000f4b37          	lui	s6,0xf4
    80006638:	00989bb7          	lui	s7,0x989
    8000663c:	70fa0a13          	addi	s4,s4,1807 # 270f <_entry-0x7fffd8f1>
    80006640:	69fa8a93          	addi	s5,s5,1695 # 1869f <_entry-0x7ffe7961>
    80006644:	23fb0b13          	addi	s6,s6,575 # f423f <_entry-0x7ff0bdc1>
    80006648:	67fb8b93          	addi	s7,s7,1663 # 98967f <_entry-0x7f676981>
    8000664c:	00148c9b          	addiw	s9,s1,1
    80006650:	02500793          	li	a5,37
    80006654:	01998933          	add	s2,s3,s9
    80006658:	38f51263          	bne	a0,a5,800069dc <__printf+0x434>
    8000665c:	00094783          	lbu	a5,0(s2)
    80006660:	00078c9b          	sext.w	s9,a5
    80006664:	1e078263          	beqz	a5,80006848 <__printf+0x2a0>
    80006668:	0024849b          	addiw	s1,s1,2
    8000666c:	07000713          	li	a4,112
    80006670:	00998933          	add	s2,s3,s1
    80006674:	38e78a63          	beq	a5,a4,80006a08 <__printf+0x460>
    80006678:	20f76863          	bltu	a4,a5,80006888 <__printf+0x2e0>
    8000667c:	42a78863          	beq	a5,a0,80006aac <__printf+0x504>
    80006680:	06400713          	li	a4,100
    80006684:	40e79663          	bne	a5,a4,80006a90 <__printf+0x4e8>
    80006688:	f7843783          	ld	a5,-136(s0)
    8000668c:	0007a603          	lw	a2,0(a5)
    80006690:	00878793          	addi	a5,a5,8
    80006694:	f6f43c23          	sd	a5,-136(s0)
    80006698:	42064a63          	bltz	a2,80006acc <__printf+0x524>
    8000669c:	00a00713          	li	a4,10
    800066a0:	02e677bb          	remuw	a5,a2,a4
    800066a4:	00002d97          	auipc	s11,0x2
    800066a8:	134d8d93          	addi	s11,s11,308 # 800087d8 <digits>
    800066ac:	00900593          	li	a1,9
    800066b0:	0006051b          	sext.w	a0,a2
    800066b4:	00000c93          	li	s9,0
    800066b8:	02079793          	slli	a5,a5,0x20
    800066bc:	0207d793          	srli	a5,a5,0x20
    800066c0:	00fd87b3          	add	a5,s11,a5
    800066c4:	0007c783          	lbu	a5,0(a5)
    800066c8:	02e656bb          	divuw	a3,a2,a4
    800066cc:	f8f40023          	sb	a5,-128(s0)
    800066d0:	14c5d863          	bge	a1,a2,80006820 <__printf+0x278>
    800066d4:	06300593          	li	a1,99
    800066d8:	00100c93          	li	s9,1
    800066dc:	02e6f7bb          	remuw	a5,a3,a4
    800066e0:	02079793          	slli	a5,a5,0x20
    800066e4:	0207d793          	srli	a5,a5,0x20
    800066e8:	00fd87b3          	add	a5,s11,a5
    800066ec:	0007c783          	lbu	a5,0(a5)
    800066f0:	02e6d73b          	divuw	a4,a3,a4
    800066f4:	f8f400a3          	sb	a5,-127(s0)
    800066f8:	12a5f463          	bgeu	a1,a0,80006820 <__printf+0x278>
    800066fc:	00a00693          	li	a3,10
    80006700:	00900593          	li	a1,9
    80006704:	02d777bb          	remuw	a5,a4,a3
    80006708:	02079793          	slli	a5,a5,0x20
    8000670c:	0207d793          	srli	a5,a5,0x20
    80006710:	00fd87b3          	add	a5,s11,a5
    80006714:	0007c503          	lbu	a0,0(a5)
    80006718:	02d757bb          	divuw	a5,a4,a3
    8000671c:	f8a40123          	sb	a0,-126(s0)
    80006720:	48e5f263          	bgeu	a1,a4,80006ba4 <__printf+0x5fc>
    80006724:	06300513          	li	a0,99
    80006728:	02d7f5bb          	remuw	a1,a5,a3
    8000672c:	02059593          	slli	a1,a1,0x20
    80006730:	0205d593          	srli	a1,a1,0x20
    80006734:	00bd85b3          	add	a1,s11,a1
    80006738:	0005c583          	lbu	a1,0(a1)
    8000673c:	02d7d7bb          	divuw	a5,a5,a3
    80006740:	f8b401a3          	sb	a1,-125(s0)
    80006744:	48e57263          	bgeu	a0,a4,80006bc8 <__printf+0x620>
    80006748:	3e700513          	li	a0,999
    8000674c:	02d7f5bb          	remuw	a1,a5,a3
    80006750:	02059593          	slli	a1,a1,0x20
    80006754:	0205d593          	srli	a1,a1,0x20
    80006758:	00bd85b3          	add	a1,s11,a1
    8000675c:	0005c583          	lbu	a1,0(a1)
    80006760:	02d7d7bb          	divuw	a5,a5,a3
    80006764:	f8b40223          	sb	a1,-124(s0)
    80006768:	46e57663          	bgeu	a0,a4,80006bd4 <__printf+0x62c>
    8000676c:	02d7f5bb          	remuw	a1,a5,a3
    80006770:	02059593          	slli	a1,a1,0x20
    80006774:	0205d593          	srli	a1,a1,0x20
    80006778:	00bd85b3          	add	a1,s11,a1
    8000677c:	0005c583          	lbu	a1,0(a1)
    80006780:	02d7d7bb          	divuw	a5,a5,a3
    80006784:	f8b402a3          	sb	a1,-123(s0)
    80006788:	46ea7863          	bgeu	s4,a4,80006bf8 <__printf+0x650>
    8000678c:	02d7f5bb          	remuw	a1,a5,a3
    80006790:	02059593          	slli	a1,a1,0x20
    80006794:	0205d593          	srli	a1,a1,0x20
    80006798:	00bd85b3          	add	a1,s11,a1
    8000679c:	0005c583          	lbu	a1,0(a1)
    800067a0:	02d7d7bb          	divuw	a5,a5,a3
    800067a4:	f8b40323          	sb	a1,-122(s0)
    800067a8:	3eeaf863          	bgeu	s5,a4,80006b98 <__printf+0x5f0>
    800067ac:	02d7f5bb          	remuw	a1,a5,a3
    800067b0:	02059593          	slli	a1,a1,0x20
    800067b4:	0205d593          	srli	a1,a1,0x20
    800067b8:	00bd85b3          	add	a1,s11,a1
    800067bc:	0005c583          	lbu	a1,0(a1)
    800067c0:	02d7d7bb          	divuw	a5,a5,a3
    800067c4:	f8b403a3          	sb	a1,-121(s0)
    800067c8:	42eb7e63          	bgeu	s6,a4,80006c04 <__printf+0x65c>
    800067cc:	02d7f5bb          	remuw	a1,a5,a3
    800067d0:	02059593          	slli	a1,a1,0x20
    800067d4:	0205d593          	srli	a1,a1,0x20
    800067d8:	00bd85b3          	add	a1,s11,a1
    800067dc:	0005c583          	lbu	a1,0(a1)
    800067e0:	02d7d7bb          	divuw	a5,a5,a3
    800067e4:	f8b40423          	sb	a1,-120(s0)
    800067e8:	42ebfc63          	bgeu	s7,a4,80006c20 <__printf+0x678>
    800067ec:	02079793          	slli	a5,a5,0x20
    800067f0:	0207d793          	srli	a5,a5,0x20
    800067f4:	00fd8db3          	add	s11,s11,a5
    800067f8:	000dc703          	lbu	a4,0(s11)
    800067fc:	00a00793          	li	a5,10
    80006800:	00900c93          	li	s9,9
    80006804:	f8e404a3          	sb	a4,-119(s0)
    80006808:	00065c63          	bgez	a2,80006820 <__printf+0x278>
    8000680c:	f9040713          	addi	a4,s0,-112
    80006810:	00f70733          	add	a4,a4,a5
    80006814:	02d00693          	li	a3,45
    80006818:	fed70823          	sb	a3,-16(a4)
    8000681c:	00078c93          	mv	s9,a5
    80006820:	f8040793          	addi	a5,s0,-128
    80006824:	01978cb3          	add	s9,a5,s9
    80006828:	f7f40d13          	addi	s10,s0,-129
    8000682c:	000cc503          	lbu	a0,0(s9)
    80006830:	fffc8c93          	addi	s9,s9,-1
    80006834:	00000097          	auipc	ra,0x0
    80006838:	b90080e7          	jalr	-1136(ra) # 800063c4 <consputc>
    8000683c:	ffac98e3          	bne	s9,s10,8000682c <__printf+0x284>
    80006840:	00094503          	lbu	a0,0(s2)
    80006844:	e00514e3          	bnez	a0,8000664c <__printf+0xa4>
    80006848:	1a0c1663          	bnez	s8,800069f4 <__printf+0x44c>
    8000684c:	08813083          	ld	ra,136(sp)
    80006850:	08013403          	ld	s0,128(sp)
    80006854:	07813483          	ld	s1,120(sp)
    80006858:	07013903          	ld	s2,112(sp)
    8000685c:	06813983          	ld	s3,104(sp)
    80006860:	06013a03          	ld	s4,96(sp)
    80006864:	05813a83          	ld	s5,88(sp)
    80006868:	05013b03          	ld	s6,80(sp)
    8000686c:	04813b83          	ld	s7,72(sp)
    80006870:	04013c03          	ld	s8,64(sp)
    80006874:	03813c83          	ld	s9,56(sp)
    80006878:	03013d03          	ld	s10,48(sp)
    8000687c:	02813d83          	ld	s11,40(sp)
    80006880:	0d010113          	addi	sp,sp,208
    80006884:	00008067          	ret
    80006888:	07300713          	li	a4,115
    8000688c:	1ce78a63          	beq	a5,a4,80006a60 <__printf+0x4b8>
    80006890:	07800713          	li	a4,120
    80006894:	1ee79e63          	bne	a5,a4,80006a90 <__printf+0x4e8>
    80006898:	f7843783          	ld	a5,-136(s0)
    8000689c:	0007a703          	lw	a4,0(a5)
    800068a0:	00878793          	addi	a5,a5,8
    800068a4:	f6f43c23          	sd	a5,-136(s0)
    800068a8:	28074263          	bltz	a4,80006b2c <__printf+0x584>
    800068ac:	00002d97          	auipc	s11,0x2
    800068b0:	f2cd8d93          	addi	s11,s11,-212 # 800087d8 <digits>
    800068b4:	00f77793          	andi	a5,a4,15
    800068b8:	00fd87b3          	add	a5,s11,a5
    800068bc:	0007c683          	lbu	a3,0(a5)
    800068c0:	00f00613          	li	a2,15
    800068c4:	0007079b          	sext.w	a5,a4
    800068c8:	f8d40023          	sb	a3,-128(s0)
    800068cc:	0047559b          	srliw	a1,a4,0x4
    800068d0:	0047569b          	srliw	a3,a4,0x4
    800068d4:	00000c93          	li	s9,0
    800068d8:	0ee65063          	bge	a2,a4,800069b8 <__printf+0x410>
    800068dc:	00f6f693          	andi	a3,a3,15
    800068e0:	00dd86b3          	add	a3,s11,a3
    800068e4:	0006c683          	lbu	a3,0(a3) # 2004000 <_entry-0x7dffc000>
    800068e8:	0087d79b          	srliw	a5,a5,0x8
    800068ec:	00100c93          	li	s9,1
    800068f0:	f8d400a3          	sb	a3,-127(s0)
    800068f4:	0cb67263          	bgeu	a2,a1,800069b8 <__printf+0x410>
    800068f8:	00f7f693          	andi	a3,a5,15
    800068fc:	00dd86b3          	add	a3,s11,a3
    80006900:	0006c583          	lbu	a1,0(a3)
    80006904:	00f00613          	li	a2,15
    80006908:	0047d69b          	srliw	a3,a5,0x4
    8000690c:	f8b40123          	sb	a1,-126(s0)
    80006910:	0047d593          	srli	a1,a5,0x4
    80006914:	28f67e63          	bgeu	a2,a5,80006bb0 <__printf+0x608>
    80006918:	00f6f693          	andi	a3,a3,15
    8000691c:	00dd86b3          	add	a3,s11,a3
    80006920:	0006c503          	lbu	a0,0(a3)
    80006924:	0087d813          	srli	a6,a5,0x8
    80006928:	0087d69b          	srliw	a3,a5,0x8
    8000692c:	f8a401a3          	sb	a0,-125(s0)
    80006930:	28b67663          	bgeu	a2,a1,80006bbc <__printf+0x614>
    80006934:	00f6f693          	andi	a3,a3,15
    80006938:	00dd86b3          	add	a3,s11,a3
    8000693c:	0006c583          	lbu	a1,0(a3)
    80006940:	00c7d513          	srli	a0,a5,0xc
    80006944:	00c7d69b          	srliw	a3,a5,0xc
    80006948:	f8b40223          	sb	a1,-124(s0)
    8000694c:	29067a63          	bgeu	a2,a6,80006be0 <__printf+0x638>
    80006950:	00f6f693          	andi	a3,a3,15
    80006954:	00dd86b3          	add	a3,s11,a3
    80006958:	0006c583          	lbu	a1,0(a3)
    8000695c:	0107d813          	srli	a6,a5,0x10
    80006960:	0107d69b          	srliw	a3,a5,0x10
    80006964:	f8b402a3          	sb	a1,-123(s0)
    80006968:	28a67263          	bgeu	a2,a0,80006bec <__printf+0x644>
    8000696c:	00f6f693          	andi	a3,a3,15
    80006970:	00dd86b3          	add	a3,s11,a3
    80006974:	0006c683          	lbu	a3,0(a3)
    80006978:	0147d79b          	srliw	a5,a5,0x14
    8000697c:	f8d40323          	sb	a3,-122(s0)
    80006980:	21067663          	bgeu	a2,a6,80006b8c <__printf+0x5e4>
    80006984:	02079793          	slli	a5,a5,0x20
    80006988:	0207d793          	srli	a5,a5,0x20
    8000698c:	00fd8db3          	add	s11,s11,a5
    80006990:	000dc683          	lbu	a3,0(s11)
    80006994:	00800793          	li	a5,8
    80006998:	00700c93          	li	s9,7
    8000699c:	f8d403a3          	sb	a3,-121(s0)
    800069a0:	00075c63          	bgez	a4,800069b8 <__printf+0x410>
    800069a4:	f9040713          	addi	a4,s0,-112
    800069a8:	00f70733          	add	a4,a4,a5
    800069ac:	02d00693          	li	a3,45
    800069b0:	fed70823          	sb	a3,-16(a4)
    800069b4:	00078c93          	mv	s9,a5
    800069b8:	f8040793          	addi	a5,s0,-128
    800069bc:	01978cb3          	add	s9,a5,s9
    800069c0:	f7f40d13          	addi	s10,s0,-129
    800069c4:	000cc503          	lbu	a0,0(s9)
    800069c8:	fffc8c93          	addi	s9,s9,-1
    800069cc:	00000097          	auipc	ra,0x0
    800069d0:	9f8080e7          	jalr	-1544(ra) # 800063c4 <consputc>
    800069d4:	ff9d18e3          	bne	s10,s9,800069c4 <__printf+0x41c>
    800069d8:	0100006f          	j	800069e8 <__printf+0x440>
    800069dc:	00000097          	auipc	ra,0x0
    800069e0:	9e8080e7          	jalr	-1560(ra) # 800063c4 <consputc>
    800069e4:	000c8493          	mv	s1,s9
    800069e8:	00094503          	lbu	a0,0(s2)
    800069ec:	c60510e3          	bnez	a0,8000664c <__printf+0xa4>
    800069f0:	e40c0ee3          	beqz	s8,8000684c <__printf+0x2a4>
    800069f4:	00005517          	auipc	a0,0x5
    800069f8:	bac50513          	addi	a0,a0,-1108 # 8000b5a0 <pr>
    800069fc:	00001097          	auipc	ra,0x1
    80006a00:	94c080e7          	jalr	-1716(ra) # 80007348 <release>
    80006a04:	e49ff06f          	j	8000684c <__printf+0x2a4>
    80006a08:	f7843783          	ld	a5,-136(s0)
    80006a0c:	03000513          	li	a0,48
    80006a10:	01000d13          	li	s10,16
    80006a14:	00878713          	addi	a4,a5,8
    80006a18:	0007bc83          	ld	s9,0(a5)
    80006a1c:	f6e43c23          	sd	a4,-136(s0)
    80006a20:	00000097          	auipc	ra,0x0
    80006a24:	9a4080e7          	jalr	-1628(ra) # 800063c4 <consputc>
    80006a28:	07800513          	li	a0,120
    80006a2c:	00000097          	auipc	ra,0x0
    80006a30:	998080e7          	jalr	-1640(ra) # 800063c4 <consputc>
    80006a34:	00002d97          	auipc	s11,0x2
    80006a38:	da4d8d93          	addi	s11,s11,-604 # 800087d8 <digits>
    80006a3c:	03ccd793          	srli	a5,s9,0x3c
    80006a40:	00fd87b3          	add	a5,s11,a5
    80006a44:	0007c503          	lbu	a0,0(a5)
    80006a48:	fffd0d1b          	addiw	s10,s10,-1
    80006a4c:	004c9c93          	slli	s9,s9,0x4
    80006a50:	00000097          	auipc	ra,0x0
    80006a54:	974080e7          	jalr	-1676(ra) # 800063c4 <consputc>
    80006a58:	fe0d12e3          	bnez	s10,80006a3c <__printf+0x494>
    80006a5c:	f8dff06f          	j	800069e8 <__printf+0x440>
    80006a60:	f7843783          	ld	a5,-136(s0)
    80006a64:	0007bc83          	ld	s9,0(a5)
    80006a68:	00878793          	addi	a5,a5,8
    80006a6c:	f6f43c23          	sd	a5,-136(s0)
    80006a70:	000c9a63          	bnez	s9,80006a84 <__printf+0x4dc>
    80006a74:	1080006f          	j	80006b7c <__printf+0x5d4>
    80006a78:	001c8c93          	addi	s9,s9,1
    80006a7c:	00000097          	auipc	ra,0x0
    80006a80:	948080e7          	jalr	-1720(ra) # 800063c4 <consputc>
    80006a84:	000cc503          	lbu	a0,0(s9)
    80006a88:	fe0518e3          	bnez	a0,80006a78 <__printf+0x4d0>
    80006a8c:	f5dff06f          	j	800069e8 <__printf+0x440>
    80006a90:	02500513          	li	a0,37
    80006a94:	00000097          	auipc	ra,0x0
    80006a98:	930080e7          	jalr	-1744(ra) # 800063c4 <consputc>
    80006a9c:	000c8513          	mv	a0,s9
    80006aa0:	00000097          	auipc	ra,0x0
    80006aa4:	924080e7          	jalr	-1756(ra) # 800063c4 <consputc>
    80006aa8:	f41ff06f          	j	800069e8 <__printf+0x440>
    80006aac:	02500513          	li	a0,37
    80006ab0:	00000097          	auipc	ra,0x0
    80006ab4:	914080e7          	jalr	-1772(ra) # 800063c4 <consputc>
    80006ab8:	f31ff06f          	j	800069e8 <__printf+0x440>
    80006abc:	00030513          	mv	a0,t1
    80006ac0:	00000097          	auipc	ra,0x0
    80006ac4:	7bc080e7          	jalr	1980(ra) # 8000727c <acquire>
    80006ac8:	b4dff06f          	j	80006614 <__printf+0x6c>
    80006acc:	40c0053b          	negw	a0,a2
    80006ad0:	00a00713          	li	a4,10
    80006ad4:	02e576bb          	remuw	a3,a0,a4
    80006ad8:	00002d97          	auipc	s11,0x2
    80006adc:	d00d8d93          	addi	s11,s11,-768 # 800087d8 <digits>
    80006ae0:	ff700593          	li	a1,-9
    80006ae4:	02069693          	slli	a3,a3,0x20
    80006ae8:	0206d693          	srli	a3,a3,0x20
    80006aec:	00dd86b3          	add	a3,s11,a3
    80006af0:	0006c683          	lbu	a3,0(a3)
    80006af4:	02e557bb          	divuw	a5,a0,a4
    80006af8:	f8d40023          	sb	a3,-128(s0)
    80006afc:	10b65e63          	bge	a2,a1,80006c18 <__printf+0x670>
    80006b00:	06300593          	li	a1,99
    80006b04:	02e7f6bb          	remuw	a3,a5,a4
    80006b08:	02069693          	slli	a3,a3,0x20
    80006b0c:	0206d693          	srli	a3,a3,0x20
    80006b10:	00dd86b3          	add	a3,s11,a3
    80006b14:	0006c683          	lbu	a3,0(a3)
    80006b18:	02e7d73b          	divuw	a4,a5,a4
    80006b1c:	00200793          	li	a5,2
    80006b20:	f8d400a3          	sb	a3,-127(s0)
    80006b24:	bca5ece3          	bltu	a1,a0,800066fc <__printf+0x154>
    80006b28:	ce5ff06f          	j	8000680c <__printf+0x264>
    80006b2c:	40e007bb          	negw	a5,a4
    80006b30:	00002d97          	auipc	s11,0x2
    80006b34:	ca8d8d93          	addi	s11,s11,-856 # 800087d8 <digits>
    80006b38:	00f7f693          	andi	a3,a5,15
    80006b3c:	00dd86b3          	add	a3,s11,a3
    80006b40:	0006c583          	lbu	a1,0(a3)
    80006b44:	ff100613          	li	a2,-15
    80006b48:	0047d69b          	srliw	a3,a5,0x4
    80006b4c:	f8b40023          	sb	a1,-128(s0)
    80006b50:	0047d59b          	srliw	a1,a5,0x4
    80006b54:	0ac75e63          	bge	a4,a2,80006c10 <__printf+0x668>
    80006b58:	00f6f693          	andi	a3,a3,15
    80006b5c:	00dd86b3          	add	a3,s11,a3
    80006b60:	0006c603          	lbu	a2,0(a3)
    80006b64:	00f00693          	li	a3,15
    80006b68:	0087d79b          	srliw	a5,a5,0x8
    80006b6c:	f8c400a3          	sb	a2,-127(s0)
    80006b70:	d8b6e4e3          	bltu	a3,a1,800068f8 <__printf+0x350>
    80006b74:	00200793          	li	a5,2
    80006b78:	e2dff06f          	j	800069a4 <__printf+0x3fc>
    80006b7c:	00002c97          	auipc	s9,0x2
    80006b80:	c3cc8c93          	addi	s9,s9,-964 # 800087b8 <_ZZ12printIntegermE6digits+0x780>
    80006b84:	02800513          	li	a0,40
    80006b88:	ef1ff06f          	j	80006a78 <__printf+0x4d0>
    80006b8c:	00700793          	li	a5,7
    80006b90:	00600c93          	li	s9,6
    80006b94:	e0dff06f          	j	800069a0 <__printf+0x3f8>
    80006b98:	00700793          	li	a5,7
    80006b9c:	00600c93          	li	s9,6
    80006ba0:	c69ff06f          	j	80006808 <__printf+0x260>
    80006ba4:	00300793          	li	a5,3
    80006ba8:	00200c93          	li	s9,2
    80006bac:	c5dff06f          	j	80006808 <__printf+0x260>
    80006bb0:	00300793          	li	a5,3
    80006bb4:	00200c93          	li	s9,2
    80006bb8:	de9ff06f          	j	800069a0 <__printf+0x3f8>
    80006bbc:	00400793          	li	a5,4
    80006bc0:	00300c93          	li	s9,3
    80006bc4:	dddff06f          	j	800069a0 <__printf+0x3f8>
    80006bc8:	00400793          	li	a5,4
    80006bcc:	00300c93          	li	s9,3
    80006bd0:	c39ff06f          	j	80006808 <__printf+0x260>
    80006bd4:	00500793          	li	a5,5
    80006bd8:	00400c93          	li	s9,4
    80006bdc:	c2dff06f          	j	80006808 <__printf+0x260>
    80006be0:	00500793          	li	a5,5
    80006be4:	00400c93          	li	s9,4
    80006be8:	db9ff06f          	j	800069a0 <__printf+0x3f8>
    80006bec:	00600793          	li	a5,6
    80006bf0:	00500c93          	li	s9,5
    80006bf4:	dadff06f          	j	800069a0 <__printf+0x3f8>
    80006bf8:	00600793          	li	a5,6
    80006bfc:	00500c93          	li	s9,5
    80006c00:	c09ff06f          	j	80006808 <__printf+0x260>
    80006c04:	00800793          	li	a5,8
    80006c08:	00700c93          	li	s9,7
    80006c0c:	bfdff06f          	j	80006808 <__printf+0x260>
    80006c10:	00100793          	li	a5,1
    80006c14:	d91ff06f          	j	800069a4 <__printf+0x3fc>
    80006c18:	00100793          	li	a5,1
    80006c1c:	bf1ff06f          	j	8000680c <__printf+0x264>
    80006c20:	00900793          	li	a5,9
    80006c24:	00800c93          	li	s9,8
    80006c28:	be1ff06f          	j	80006808 <__printf+0x260>
    80006c2c:	00002517          	auipc	a0,0x2
    80006c30:	b9450513          	addi	a0,a0,-1132 # 800087c0 <_ZZ12printIntegermE6digits+0x788>
    80006c34:	00000097          	auipc	ra,0x0
    80006c38:	918080e7          	jalr	-1768(ra) # 8000654c <panic>

0000000080006c3c <printfinit>:
    80006c3c:	fe010113          	addi	sp,sp,-32
    80006c40:	00813823          	sd	s0,16(sp)
    80006c44:	00913423          	sd	s1,8(sp)
    80006c48:	00113c23          	sd	ra,24(sp)
    80006c4c:	02010413          	addi	s0,sp,32
    80006c50:	00005497          	auipc	s1,0x5
    80006c54:	95048493          	addi	s1,s1,-1712 # 8000b5a0 <pr>
    80006c58:	00048513          	mv	a0,s1
    80006c5c:	00002597          	auipc	a1,0x2
    80006c60:	b7458593          	addi	a1,a1,-1164 # 800087d0 <_ZZ12printIntegermE6digits+0x798>
    80006c64:	00000097          	auipc	ra,0x0
    80006c68:	5f4080e7          	jalr	1524(ra) # 80007258 <initlock>
    80006c6c:	01813083          	ld	ra,24(sp)
    80006c70:	01013403          	ld	s0,16(sp)
    80006c74:	0004ac23          	sw	zero,24(s1)
    80006c78:	00813483          	ld	s1,8(sp)
    80006c7c:	02010113          	addi	sp,sp,32
    80006c80:	00008067          	ret

0000000080006c84 <uartinit>:
    80006c84:	ff010113          	addi	sp,sp,-16
    80006c88:	00813423          	sd	s0,8(sp)
    80006c8c:	01010413          	addi	s0,sp,16
    80006c90:	100007b7          	lui	a5,0x10000
    80006c94:	000780a3          	sb	zero,1(a5) # 10000001 <_entry-0x6fffffff>
    80006c98:	f8000713          	li	a4,-128
    80006c9c:	00e781a3          	sb	a4,3(a5)
    80006ca0:	00300713          	li	a4,3
    80006ca4:	00e78023          	sb	a4,0(a5)
    80006ca8:	000780a3          	sb	zero,1(a5)
    80006cac:	00e781a3          	sb	a4,3(a5)
    80006cb0:	00700693          	li	a3,7
    80006cb4:	00d78123          	sb	a3,2(a5)
    80006cb8:	00e780a3          	sb	a4,1(a5)
    80006cbc:	00813403          	ld	s0,8(sp)
    80006cc0:	01010113          	addi	sp,sp,16
    80006cc4:	00008067          	ret

0000000080006cc8 <uartputc>:
    80006cc8:	00003797          	auipc	a5,0x3
    80006ccc:	6307a783          	lw	a5,1584(a5) # 8000a2f8 <panicked>
    80006cd0:	00078463          	beqz	a5,80006cd8 <uartputc+0x10>
    80006cd4:	0000006f          	j	80006cd4 <uartputc+0xc>
    80006cd8:	fd010113          	addi	sp,sp,-48
    80006cdc:	02813023          	sd	s0,32(sp)
    80006ce0:	00913c23          	sd	s1,24(sp)
    80006ce4:	01213823          	sd	s2,16(sp)
    80006ce8:	01313423          	sd	s3,8(sp)
    80006cec:	02113423          	sd	ra,40(sp)
    80006cf0:	03010413          	addi	s0,sp,48
    80006cf4:	00003917          	auipc	s2,0x3
    80006cf8:	60c90913          	addi	s2,s2,1548 # 8000a300 <uart_tx_r>
    80006cfc:	00093783          	ld	a5,0(s2)
    80006d00:	00003497          	auipc	s1,0x3
    80006d04:	60848493          	addi	s1,s1,1544 # 8000a308 <uart_tx_w>
    80006d08:	0004b703          	ld	a4,0(s1)
    80006d0c:	02078693          	addi	a3,a5,32
    80006d10:	00050993          	mv	s3,a0
    80006d14:	02e69c63          	bne	a3,a4,80006d4c <uartputc+0x84>
    80006d18:	00001097          	auipc	ra,0x1
    80006d1c:	834080e7          	jalr	-1996(ra) # 8000754c <push_on>
    80006d20:	00093783          	ld	a5,0(s2)
    80006d24:	0004b703          	ld	a4,0(s1)
    80006d28:	02078793          	addi	a5,a5,32
    80006d2c:	00e79463          	bne	a5,a4,80006d34 <uartputc+0x6c>
    80006d30:	0000006f          	j	80006d30 <uartputc+0x68>
    80006d34:	00001097          	auipc	ra,0x1
    80006d38:	88c080e7          	jalr	-1908(ra) # 800075c0 <pop_on>
    80006d3c:	00093783          	ld	a5,0(s2)
    80006d40:	0004b703          	ld	a4,0(s1)
    80006d44:	02078693          	addi	a3,a5,32
    80006d48:	fce688e3          	beq	a3,a4,80006d18 <uartputc+0x50>
    80006d4c:	01f77693          	andi	a3,a4,31
    80006d50:	00005597          	auipc	a1,0x5
    80006d54:	87058593          	addi	a1,a1,-1936 # 8000b5c0 <uart_tx_buf>
    80006d58:	00d586b3          	add	a3,a1,a3
    80006d5c:	00170713          	addi	a4,a4,1
    80006d60:	01368023          	sb	s3,0(a3)
    80006d64:	00e4b023          	sd	a4,0(s1)
    80006d68:	10000637          	lui	a2,0x10000
    80006d6c:	02f71063          	bne	a4,a5,80006d8c <uartputc+0xc4>
    80006d70:	0340006f          	j	80006da4 <uartputc+0xdc>
    80006d74:	00074703          	lbu	a4,0(a4)
    80006d78:	00f93023          	sd	a5,0(s2)
    80006d7c:	00e60023          	sb	a4,0(a2) # 10000000 <_entry-0x70000000>
    80006d80:	00093783          	ld	a5,0(s2)
    80006d84:	0004b703          	ld	a4,0(s1)
    80006d88:	00f70e63          	beq	a4,a5,80006da4 <uartputc+0xdc>
    80006d8c:	00564683          	lbu	a3,5(a2)
    80006d90:	01f7f713          	andi	a4,a5,31
    80006d94:	00e58733          	add	a4,a1,a4
    80006d98:	0206f693          	andi	a3,a3,32
    80006d9c:	00178793          	addi	a5,a5,1
    80006da0:	fc069ae3          	bnez	a3,80006d74 <uartputc+0xac>
    80006da4:	02813083          	ld	ra,40(sp)
    80006da8:	02013403          	ld	s0,32(sp)
    80006dac:	01813483          	ld	s1,24(sp)
    80006db0:	01013903          	ld	s2,16(sp)
    80006db4:	00813983          	ld	s3,8(sp)
    80006db8:	03010113          	addi	sp,sp,48
    80006dbc:	00008067          	ret

0000000080006dc0 <uartputc_sync>:
    80006dc0:	ff010113          	addi	sp,sp,-16
    80006dc4:	00813423          	sd	s0,8(sp)
    80006dc8:	01010413          	addi	s0,sp,16
    80006dcc:	00003717          	auipc	a4,0x3
    80006dd0:	52c72703          	lw	a4,1324(a4) # 8000a2f8 <panicked>
    80006dd4:	02071663          	bnez	a4,80006e00 <uartputc_sync+0x40>
    80006dd8:	00050793          	mv	a5,a0
    80006ddc:	100006b7          	lui	a3,0x10000
    80006de0:	0056c703          	lbu	a4,5(a3) # 10000005 <_entry-0x6ffffffb>
    80006de4:	02077713          	andi	a4,a4,32
    80006de8:	fe070ce3          	beqz	a4,80006de0 <uartputc_sync+0x20>
    80006dec:	0ff7f793          	andi	a5,a5,255
    80006df0:	00f68023          	sb	a5,0(a3)
    80006df4:	00813403          	ld	s0,8(sp)
    80006df8:	01010113          	addi	sp,sp,16
    80006dfc:	00008067          	ret
    80006e00:	0000006f          	j	80006e00 <uartputc_sync+0x40>

0000000080006e04 <uartstart>:
    80006e04:	ff010113          	addi	sp,sp,-16
    80006e08:	00813423          	sd	s0,8(sp)
    80006e0c:	01010413          	addi	s0,sp,16
    80006e10:	00003617          	auipc	a2,0x3
    80006e14:	4f060613          	addi	a2,a2,1264 # 8000a300 <uart_tx_r>
    80006e18:	00003517          	auipc	a0,0x3
    80006e1c:	4f050513          	addi	a0,a0,1264 # 8000a308 <uart_tx_w>
    80006e20:	00063783          	ld	a5,0(a2)
    80006e24:	00053703          	ld	a4,0(a0)
    80006e28:	04f70263          	beq	a4,a5,80006e6c <uartstart+0x68>
    80006e2c:	100005b7          	lui	a1,0x10000
    80006e30:	00004817          	auipc	a6,0x4
    80006e34:	79080813          	addi	a6,a6,1936 # 8000b5c0 <uart_tx_buf>
    80006e38:	01c0006f          	j	80006e54 <uartstart+0x50>
    80006e3c:	0006c703          	lbu	a4,0(a3)
    80006e40:	00f63023          	sd	a5,0(a2)
    80006e44:	00e58023          	sb	a4,0(a1) # 10000000 <_entry-0x70000000>
    80006e48:	00063783          	ld	a5,0(a2)
    80006e4c:	00053703          	ld	a4,0(a0)
    80006e50:	00f70e63          	beq	a4,a5,80006e6c <uartstart+0x68>
    80006e54:	01f7f713          	andi	a4,a5,31
    80006e58:	00e806b3          	add	a3,a6,a4
    80006e5c:	0055c703          	lbu	a4,5(a1)
    80006e60:	00178793          	addi	a5,a5,1
    80006e64:	02077713          	andi	a4,a4,32
    80006e68:	fc071ae3          	bnez	a4,80006e3c <uartstart+0x38>
    80006e6c:	00813403          	ld	s0,8(sp)
    80006e70:	01010113          	addi	sp,sp,16
    80006e74:	00008067          	ret

0000000080006e78 <uartgetc>:
    80006e78:	ff010113          	addi	sp,sp,-16
    80006e7c:	00813423          	sd	s0,8(sp)
    80006e80:	01010413          	addi	s0,sp,16
    80006e84:	10000737          	lui	a4,0x10000
    80006e88:	00574783          	lbu	a5,5(a4) # 10000005 <_entry-0x6ffffffb>
    80006e8c:	0017f793          	andi	a5,a5,1
    80006e90:	00078c63          	beqz	a5,80006ea8 <uartgetc+0x30>
    80006e94:	00074503          	lbu	a0,0(a4)
    80006e98:	0ff57513          	andi	a0,a0,255
    80006e9c:	00813403          	ld	s0,8(sp)
    80006ea0:	01010113          	addi	sp,sp,16
    80006ea4:	00008067          	ret
    80006ea8:	fff00513          	li	a0,-1
    80006eac:	ff1ff06f          	j	80006e9c <uartgetc+0x24>

0000000080006eb0 <uartintr>:
    80006eb0:	100007b7          	lui	a5,0x10000
    80006eb4:	0057c783          	lbu	a5,5(a5) # 10000005 <_entry-0x6ffffffb>
    80006eb8:	0017f793          	andi	a5,a5,1
    80006ebc:	0a078463          	beqz	a5,80006f64 <uartintr+0xb4>
    80006ec0:	fe010113          	addi	sp,sp,-32
    80006ec4:	00813823          	sd	s0,16(sp)
    80006ec8:	00913423          	sd	s1,8(sp)
    80006ecc:	00113c23          	sd	ra,24(sp)
    80006ed0:	02010413          	addi	s0,sp,32
    80006ed4:	100004b7          	lui	s1,0x10000
    80006ed8:	0004c503          	lbu	a0,0(s1) # 10000000 <_entry-0x70000000>
    80006edc:	0ff57513          	andi	a0,a0,255
    80006ee0:	fffff097          	auipc	ra,0xfffff
    80006ee4:	534080e7          	jalr	1332(ra) # 80006414 <consoleintr>
    80006ee8:	0054c783          	lbu	a5,5(s1)
    80006eec:	0017f793          	andi	a5,a5,1
    80006ef0:	fe0794e3          	bnez	a5,80006ed8 <uartintr+0x28>
    80006ef4:	00003617          	auipc	a2,0x3
    80006ef8:	40c60613          	addi	a2,a2,1036 # 8000a300 <uart_tx_r>
    80006efc:	00003517          	auipc	a0,0x3
    80006f00:	40c50513          	addi	a0,a0,1036 # 8000a308 <uart_tx_w>
    80006f04:	00063783          	ld	a5,0(a2)
    80006f08:	00053703          	ld	a4,0(a0)
    80006f0c:	04f70263          	beq	a4,a5,80006f50 <uartintr+0xa0>
    80006f10:	100005b7          	lui	a1,0x10000
    80006f14:	00004817          	auipc	a6,0x4
    80006f18:	6ac80813          	addi	a6,a6,1708 # 8000b5c0 <uart_tx_buf>
    80006f1c:	01c0006f          	j	80006f38 <uartintr+0x88>
    80006f20:	0006c703          	lbu	a4,0(a3)
    80006f24:	00f63023          	sd	a5,0(a2)
    80006f28:	00e58023          	sb	a4,0(a1) # 10000000 <_entry-0x70000000>
    80006f2c:	00063783          	ld	a5,0(a2)
    80006f30:	00053703          	ld	a4,0(a0)
    80006f34:	00f70e63          	beq	a4,a5,80006f50 <uartintr+0xa0>
    80006f38:	01f7f713          	andi	a4,a5,31
    80006f3c:	00e806b3          	add	a3,a6,a4
    80006f40:	0055c703          	lbu	a4,5(a1)
    80006f44:	00178793          	addi	a5,a5,1
    80006f48:	02077713          	andi	a4,a4,32
    80006f4c:	fc071ae3          	bnez	a4,80006f20 <uartintr+0x70>
    80006f50:	01813083          	ld	ra,24(sp)
    80006f54:	01013403          	ld	s0,16(sp)
    80006f58:	00813483          	ld	s1,8(sp)
    80006f5c:	02010113          	addi	sp,sp,32
    80006f60:	00008067          	ret
    80006f64:	00003617          	auipc	a2,0x3
    80006f68:	39c60613          	addi	a2,a2,924 # 8000a300 <uart_tx_r>
    80006f6c:	00003517          	auipc	a0,0x3
    80006f70:	39c50513          	addi	a0,a0,924 # 8000a308 <uart_tx_w>
    80006f74:	00063783          	ld	a5,0(a2)
    80006f78:	00053703          	ld	a4,0(a0)
    80006f7c:	04f70263          	beq	a4,a5,80006fc0 <uartintr+0x110>
    80006f80:	100005b7          	lui	a1,0x10000
    80006f84:	00004817          	auipc	a6,0x4
    80006f88:	63c80813          	addi	a6,a6,1596 # 8000b5c0 <uart_tx_buf>
    80006f8c:	01c0006f          	j	80006fa8 <uartintr+0xf8>
    80006f90:	0006c703          	lbu	a4,0(a3)
    80006f94:	00f63023          	sd	a5,0(a2)
    80006f98:	00e58023          	sb	a4,0(a1) # 10000000 <_entry-0x70000000>
    80006f9c:	00063783          	ld	a5,0(a2)
    80006fa0:	00053703          	ld	a4,0(a0)
    80006fa4:	02f70063          	beq	a4,a5,80006fc4 <uartintr+0x114>
    80006fa8:	01f7f713          	andi	a4,a5,31
    80006fac:	00e806b3          	add	a3,a6,a4
    80006fb0:	0055c703          	lbu	a4,5(a1)
    80006fb4:	00178793          	addi	a5,a5,1
    80006fb8:	02077713          	andi	a4,a4,32
    80006fbc:	fc071ae3          	bnez	a4,80006f90 <uartintr+0xe0>
    80006fc0:	00008067          	ret
    80006fc4:	00008067          	ret

0000000080006fc8 <kinit>:
    80006fc8:	fc010113          	addi	sp,sp,-64
    80006fcc:	02913423          	sd	s1,40(sp)
    80006fd0:	fffff7b7          	lui	a5,0xfffff
    80006fd4:	00005497          	auipc	s1,0x5
    80006fd8:	60b48493          	addi	s1,s1,1547 # 8000c5df <end+0xfff>
    80006fdc:	02813823          	sd	s0,48(sp)
    80006fe0:	01313c23          	sd	s3,24(sp)
    80006fe4:	00f4f4b3          	and	s1,s1,a5
    80006fe8:	02113c23          	sd	ra,56(sp)
    80006fec:	03213023          	sd	s2,32(sp)
    80006ff0:	01413823          	sd	s4,16(sp)
    80006ff4:	01513423          	sd	s5,8(sp)
    80006ff8:	04010413          	addi	s0,sp,64
    80006ffc:	000017b7          	lui	a5,0x1
    80007000:	01100993          	li	s3,17
    80007004:	00f487b3          	add	a5,s1,a5
    80007008:	01b99993          	slli	s3,s3,0x1b
    8000700c:	06f9e063          	bltu	s3,a5,8000706c <kinit+0xa4>
    80007010:	00004a97          	auipc	s5,0x4
    80007014:	5d0a8a93          	addi	s5,s5,1488 # 8000b5e0 <end>
    80007018:	0754ec63          	bltu	s1,s5,80007090 <kinit+0xc8>
    8000701c:	0734fa63          	bgeu	s1,s3,80007090 <kinit+0xc8>
    80007020:	00088a37          	lui	s4,0x88
    80007024:	fffa0a13          	addi	s4,s4,-1 # 87fff <_entry-0x7ff78001>
    80007028:	00003917          	auipc	s2,0x3
    8000702c:	2e890913          	addi	s2,s2,744 # 8000a310 <kmem>
    80007030:	00ca1a13          	slli	s4,s4,0xc
    80007034:	0140006f          	j	80007048 <kinit+0x80>
    80007038:	000017b7          	lui	a5,0x1
    8000703c:	00f484b3          	add	s1,s1,a5
    80007040:	0554e863          	bltu	s1,s5,80007090 <kinit+0xc8>
    80007044:	0534f663          	bgeu	s1,s3,80007090 <kinit+0xc8>
    80007048:	00001637          	lui	a2,0x1
    8000704c:	00100593          	li	a1,1
    80007050:	00048513          	mv	a0,s1
    80007054:	00000097          	auipc	ra,0x0
    80007058:	5e4080e7          	jalr	1508(ra) # 80007638 <__memset>
    8000705c:	00093783          	ld	a5,0(s2)
    80007060:	00f4b023          	sd	a5,0(s1)
    80007064:	00993023          	sd	s1,0(s2)
    80007068:	fd4498e3          	bne	s1,s4,80007038 <kinit+0x70>
    8000706c:	03813083          	ld	ra,56(sp)
    80007070:	03013403          	ld	s0,48(sp)
    80007074:	02813483          	ld	s1,40(sp)
    80007078:	02013903          	ld	s2,32(sp)
    8000707c:	01813983          	ld	s3,24(sp)
    80007080:	01013a03          	ld	s4,16(sp)
    80007084:	00813a83          	ld	s5,8(sp)
    80007088:	04010113          	addi	sp,sp,64
    8000708c:	00008067          	ret
    80007090:	00001517          	auipc	a0,0x1
    80007094:	76050513          	addi	a0,a0,1888 # 800087f0 <digits+0x18>
    80007098:	fffff097          	auipc	ra,0xfffff
    8000709c:	4b4080e7          	jalr	1204(ra) # 8000654c <panic>

00000000800070a0 <freerange>:
    800070a0:	fc010113          	addi	sp,sp,-64
    800070a4:	000017b7          	lui	a5,0x1
    800070a8:	02913423          	sd	s1,40(sp)
    800070ac:	fff78493          	addi	s1,a5,-1 # fff <_entry-0x7ffff001>
    800070b0:	009504b3          	add	s1,a0,s1
    800070b4:	fffff537          	lui	a0,0xfffff
    800070b8:	02813823          	sd	s0,48(sp)
    800070bc:	02113c23          	sd	ra,56(sp)
    800070c0:	03213023          	sd	s2,32(sp)
    800070c4:	01313c23          	sd	s3,24(sp)
    800070c8:	01413823          	sd	s4,16(sp)
    800070cc:	01513423          	sd	s5,8(sp)
    800070d0:	01613023          	sd	s6,0(sp)
    800070d4:	04010413          	addi	s0,sp,64
    800070d8:	00a4f4b3          	and	s1,s1,a0
    800070dc:	00f487b3          	add	a5,s1,a5
    800070e0:	06f5e463          	bltu	a1,a5,80007148 <freerange+0xa8>
    800070e4:	00004a97          	auipc	s5,0x4
    800070e8:	4fca8a93          	addi	s5,s5,1276 # 8000b5e0 <end>
    800070ec:	0954e263          	bltu	s1,s5,80007170 <freerange+0xd0>
    800070f0:	01100993          	li	s3,17
    800070f4:	01b99993          	slli	s3,s3,0x1b
    800070f8:	0734fc63          	bgeu	s1,s3,80007170 <freerange+0xd0>
    800070fc:	00058a13          	mv	s4,a1
    80007100:	00003917          	auipc	s2,0x3
    80007104:	21090913          	addi	s2,s2,528 # 8000a310 <kmem>
    80007108:	00002b37          	lui	s6,0x2
    8000710c:	0140006f          	j	80007120 <freerange+0x80>
    80007110:	000017b7          	lui	a5,0x1
    80007114:	00f484b3          	add	s1,s1,a5
    80007118:	0554ec63          	bltu	s1,s5,80007170 <freerange+0xd0>
    8000711c:	0534fa63          	bgeu	s1,s3,80007170 <freerange+0xd0>
    80007120:	00001637          	lui	a2,0x1
    80007124:	00100593          	li	a1,1
    80007128:	00048513          	mv	a0,s1
    8000712c:	00000097          	auipc	ra,0x0
    80007130:	50c080e7          	jalr	1292(ra) # 80007638 <__memset>
    80007134:	00093703          	ld	a4,0(s2)
    80007138:	016487b3          	add	a5,s1,s6
    8000713c:	00e4b023          	sd	a4,0(s1)
    80007140:	00993023          	sd	s1,0(s2)
    80007144:	fcfa76e3          	bgeu	s4,a5,80007110 <freerange+0x70>
    80007148:	03813083          	ld	ra,56(sp)
    8000714c:	03013403          	ld	s0,48(sp)
    80007150:	02813483          	ld	s1,40(sp)
    80007154:	02013903          	ld	s2,32(sp)
    80007158:	01813983          	ld	s3,24(sp)
    8000715c:	01013a03          	ld	s4,16(sp)
    80007160:	00813a83          	ld	s5,8(sp)
    80007164:	00013b03          	ld	s6,0(sp)
    80007168:	04010113          	addi	sp,sp,64
    8000716c:	00008067          	ret
    80007170:	00001517          	auipc	a0,0x1
    80007174:	68050513          	addi	a0,a0,1664 # 800087f0 <digits+0x18>
    80007178:	fffff097          	auipc	ra,0xfffff
    8000717c:	3d4080e7          	jalr	980(ra) # 8000654c <panic>

0000000080007180 <kfree>:
    80007180:	fe010113          	addi	sp,sp,-32
    80007184:	00813823          	sd	s0,16(sp)
    80007188:	00113c23          	sd	ra,24(sp)
    8000718c:	00913423          	sd	s1,8(sp)
    80007190:	02010413          	addi	s0,sp,32
    80007194:	03451793          	slli	a5,a0,0x34
    80007198:	04079c63          	bnez	a5,800071f0 <kfree+0x70>
    8000719c:	00004797          	auipc	a5,0x4
    800071a0:	44478793          	addi	a5,a5,1092 # 8000b5e0 <end>
    800071a4:	00050493          	mv	s1,a0
    800071a8:	04f56463          	bltu	a0,a5,800071f0 <kfree+0x70>
    800071ac:	01100793          	li	a5,17
    800071b0:	01b79793          	slli	a5,a5,0x1b
    800071b4:	02f57e63          	bgeu	a0,a5,800071f0 <kfree+0x70>
    800071b8:	00001637          	lui	a2,0x1
    800071bc:	00100593          	li	a1,1
    800071c0:	00000097          	auipc	ra,0x0
    800071c4:	478080e7          	jalr	1144(ra) # 80007638 <__memset>
    800071c8:	00003797          	auipc	a5,0x3
    800071cc:	14878793          	addi	a5,a5,328 # 8000a310 <kmem>
    800071d0:	0007b703          	ld	a4,0(a5)
    800071d4:	01813083          	ld	ra,24(sp)
    800071d8:	01013403          	ld	s0,16(sp)
    800071dc:	00e4b023          	sd	a4,0(s1)
    800071e0:	0097b023          	sd	s1,0(a5)
    800071e4:	00813483          	ld	s1,8(sp)
    800071e8:	02010113          	addi	sp,sp,32
    800071ec:	00008067          	ret
    800071f0:	00001517          	auipc	a0,0x1
    800071f4:	60050513          	addi	a0,a0,1536 # 800087f0 <digits+0x18>
    800071f8:	fffff097          	auipc	ra,0xfffff
    800071fc:	354080e7          	jalr	852(ra) # 8000654c <panic>

0000000080007200 <kalloc>:
    80007200:	fe010113          	addi	sp,sp,-32
    80007204:	00813823          	sd	s0,16(sp)
    80007208:	00913423          	sd	s1,8(sp)
    8000720c:	00113c23          	sd	ra,24(sp)
    80007210:	02010413          	addi	s0,sp,32
    80007214:	00003797          	auipc	a5,0x3
    80007218:	0fc78793          	addi	a5,a5,252 # 8000a310 <kmem>
    8000721c:	0007b483          	ld	s1,0(a5)
    80007220:	02048063          	beqz	s1,80007240 <kalloc+0x40>
    80007224:	0004b703          	ld	a4,0(s1)
    80007228:	00001637          	lui	a2,0x1
    8000722c:	00500593          	li	a1,5
    80007230:	00048513          	mv	a0,s1
    80007234:	00e7b023          	sd	a4,0(a5)
    80007238:	00000097          	auipc	ra,0x0
    8000723c:	400080e7          	jalr	1024(ra) # 80007638 <__memset>
    80007240:	01813083          	ld	ra,24(sp)
    80007244:	01013403          	ld	s0,16(sp)
    80007248:	00048513          	mv	a0,s1
    8000724c:	00813483          	ld	s1,8(sp)
    80007250:	02010113          	addi	sp,sp,32
    80007254:	00008067          	ret

0000000080007258 <initlock>:
    80007258:	ff010113          	addi	sp,sp,-16
    8000725c:	00813423          	sd	s0,8(sp)
    80007260:	01010413          	addi	s0,sp,16
    80007264:	00813403          	ld	s0,8(sp)
    80007268:	00b53423          	sd	a1,8(a0)
    8000726c:	00052023          	sw	zero,0(a0)
    80007270:	00053823          	sd	zero,16(a0)
    80007274:	01010113          	addi	sp,sp,16
    80007278:	00008067          	ret

000000008000727c <acquire>:
    8000727c:	fe010113          	addi	sp,sp,-32
    80007280:	00813823          	sd	s0,16(sp)
    80007284:	00913423          	sd	s1,8(sp)
    80007288:	00113c23          	sd	ra,24(sp)
    8000728c:	01213023          	sd	s2,0(sp)
    80007290:	02010413          	addi	s0,sp,32
    80007294:	00050493          	mv	s1,a0
    80007298:	10002973          	csrr	s2,sstatus
    8000729c:	100027f3          	csrr	a5,sstatus
    800072a0:	ffd7f793          	andi	a5,a5,-3
    800072a4:	10079073          	csrw	sstatus,a5
    800072a8:	fffff097          	auipc	ra,0xfffff
    800072ac:	8e8080e7          	jalr	-1816(ra) # 80005b90 <mycpu>
    800072b0:	07852783          	lw	a5,120(a0)
    800072b4:	06078e63          	beqz	a5,80007330 <acquire+0xb4>
    800072b8:	fffff097          	auipc	ra,0xfffff
    800072bc:	8d8080e7          	jalr	-1832(ra) # 80005b90 <mycpu>
    800072c0:	07852783          	lw	a5,120(a0)
    800072c4:	0004a703          	lw	a4,0(s1)
    800072c8:	0017879b          	addiw	a5,a5,1
    800072cc:	06f52c23          	sw	a5,120(a0)
    800072d0:	04071063          	bnez	a4,80007310 <acquire+0x94>
    800072d4:	00100713          	li	a4,1
    800072d8:	00070793          	mv	a5,a4
    800072dc:	0cf4a7af          	amoswap.w.aq	a5,a5,(s1)
    800072e0:	0007879b          	sext.w	a5,a5
    800072e4:	fe079ae3          	bnez	a5,800072d8 <acquire+0x5c>
    800072e8:	0ff0000f          	fence
    800072ec:	fffff097          	auipc	ra,0xfffff
    800072f0:	8a4080e7          	jalr	-1884(ra) # 80005b90 <mycpu>
    800072f4:	01813083          	ld	ra,24(sp)
    800072f8:	01013403          	ld	s0,16(sp)
    800072fc:	00a4b823          	sd	a0,16(s1)
    80007300:	00013903          	ld	s2,0(sp)
    80007304:	00813483          	ld	s1,8(sp)
    80007308:	02010113          	addi	sp,sp,32
    8000730c:	00008067          	ret
    80007310:	0104b903          	ld	s2,16(s1)
    80007314:	fffff097          	auipc	ra,0xfffff
    80007318:	87c080e7          	jalr	-1924(ra) # 80005b90 <mycpu>
    8000731c:	faa91ce3          	bne	s2,a0,800072d4 <acquire+0x58>
    80007320:	00001517          	auipc	a0,0x1
    80007324:	4d850513          	addi	a0,a0,1240 # 800087f8 <digits+0x20>
    80007328:	fffff097          	auipc	ra,0xfffff
    8000732c:	224080e7          	jalr	548(ra) # 8000654c <panic>
    80007330:	00195913          	srli	s2,s2,0x1
    80007334:	fffff097          	auipc	ra,0xfffff
    80007338:	85c080e7          	jalr	-1956(ra) # 80005b90 <mycpu>
    8000733c:	00197913          	andi	s2,s2,1
    80007340:	07252e23          	sw	s2,124(a0)
    80007344:	f75ff06f          	j	800072b8 <acquire+0x3c>

0000000080007348 <release>:
    80007348:	fe010113          	addi	sp,sp,-32
    8000734c:	00813823          	sd	s0,16(sp)
    80007350:	00113c23          	sd	ra,24(sp)
    80007354:	00913423          	sd	s1,8(sp)
    80007358:	01213023          	sd	s2,0(sp)
    8000735c:	02010413          	addi	s0,sp,32
    80007360:	00052783          	lw	a5,0(a0)
    80007364:	00079a63          	bnez	a5,80007378 <release+0x30>
    80007368:	00001517          	auipc	a0,0x1
    8000736c:	49850513          	addi	a0,a0,1176 # 80008800 <digits+0x28>
    80007370:	fffff097          	auipc	ra,0xfffff
    80007374:	1dc080e7          	jalr	476(ra) # 8000654c <panic>
    80007378:	01053903          	ld	s2,16(a0)
    8000737c:	00050493          	mv	s1,a0
    80007380:	fffff097          	auipc	ra,0xfffff
    80007384:	810080e7          	jalr	-2032(ra) # 80005b90 <mycpu>
    80007388:	fea910e3          	bne	s2,a0,80007368 <release+0x20>
    8000738c:	0004b823          	sd	zero,16(s1)
    80007390:	0ff0000f          	fence
    80007394:	0f50000f          	fence	iorw,ow
    80007398:	0804a02f          	amoswap.w	zero,zero,(s1)
    8000739c:	ffffe097          	auipc	ra,0xffffe
    800073a0:	7f4080e7          	jalr	2036(ra) # 80005b90 <mycpu>
    800073a4:	100027f3          	csrr	a5,sstatus
    800073a8:	0027f793          	andi	a5,a5,2
    800073ac:	04079a63          	bnez	a5,80007400 <release+0xb8>
    800073b0:	07852783          	lw	a5,120(a0)
    800073b4:	02f05e63          	blez	a5,800073f0 <release+0xa8>
    800073b8:	fff7871b          	addiw	a4,a5,-1
    800073bc:	06e52c23          	sw	a4,120(a0)
    800073c0:	00071c63          	bnez	a4,800073d8 <release+0x90>
    800073c4:	07c52783          	lw	a5,124(a0)
    800073c8:	00078863          	beqz	a5,800073d8 <release+0x90>
    800073cc:	100027f3          	csrr	a5,sstatus
    800073d0:	0027e793          	ori	a5,a5,2
    800073d4:	10079073          	csrw	sstatus,a5
    800073d8:	01813083          	ld	ra,24(sp)
    800073dc:	01013403          	ld	s0,16(sp)
    800073e0:	00813483          	ld	s1,8(sp)
    800073e4:	00013903          	ld	s2,0(sp)
    800073e8:	02010113          	addi	sp,sp,32
    800073ec:	00008067          	ret
    800073f0:	00001517          	auipc	a0,0x1
    800073f4:	43050513          	addi	a0,a0,1072 # 80008820 <digits+0x48>
    800073f8:	fffff097          	auipc	ra,0xfffff
    800073fc:	154080e7          	jalr	340(ra) # 8000654c <panic>
    80007400:	00001517          	auipc	a0,0x1
    80007404:	40850513          	addi	a0,a0,1032 # 80008808 <digits+0x30>
    80007408:	fffff097          	auipc	ra,0xfffff
    8000740c:	144080e7          	jalr	324(ra) # 8000654c <panic>

0000000080007410 <holding>:
    80007410:	00052783          	lw	a5,0(a0)
    80007414:	00079663          	bnez	a5,80007420 <holding+0x10>
    80007418:	00000513          	li	a0,0
    8000741c:	00008067          	ret
    80007420:	fe010113          	addi	sp,sp,-32
    80007424:	00813823          	sd	s0,16(sp)
    80007428:	00913423          	sd	s1,8(sp)
    8000742c:	00113c23          	sd	ra,24(sp)
    80007430:	02010413          	addi	s0,sp,32
    80007434:	01053483          	ld	s1,16(a0)
    80007438:	ffffe097          	auipc	ra,0xffffe
    8000743c:	758080e7          	jalr	1880(ra) # 80005b90 <mycpu>
    80007440:	01813083          	ld	ra,24(sp)
    80007444:	01013403          	ld	s0,16(sp)
    80007448:	40a48533          	sub	a0,s1,a0
    8000744c:	00153513          	seqz	a0,a0
    80007450:	00813483          	ld	s1,8(sp)
    80007454:	02010113          	addi	sp,sp,32
    80007458:	00008067          	ret

000000008000745c <push_off>:
    8000745c:	fe010113          	addi	sp,sp,-32
    80007460:	00813823          	sd	s0,16(sp)
    80007464:	00113c23          	sd	ra,24(sp)
    80007468:	00913423          	sd	s1,8(sp)
    8000746c:	02010413          	addi	s0,sp,32
    80007470:	100024f3          	csrr	s1,sstatus
    80007474:	100027f3          	csrr	a5,sstatus
    80007478:	ffd7f793          	andi	a5,a5,-3
    8000747c:	10079073          	csrw	sstatus,a5
    80007480:	ffffe097          	auipc	ra,0xffffe
    80007484:	710080e7          	jalr	1808(ra) # 80005b90 <mycpu>
    80007488:	07852783          	lw	a5,120(a0)
    8000748c:	02078663          	beqz	a5,800074b8 <push_off+0x5c>
    80007490:	ffffe097          	auipc	ra,0xffffe
    80007494:	700080e7          	jalr	1792(ra) # 80005b90 <mycpu>
    80007498:	07852783          	lw	a5,120(a0)
    8000749c:	01813083          	ld	ra,24(sp)
    800074a0:	01013403          	ld	s0,16(sp)
    800074a4:	0017879b          	addiw	a5,a5,1
    800074a8:	06f52c23          	sw	a5,120(a0)
    800074ac:	00813483          	ld	s1,8(sp)
    800074b0:	02010113          	addi	sp,sp,32
    800074b4:	00008067          	ret
    800074b8:	0014d493          	srli	s1,s1,0x1
    800074bc:	ffffe097          	auipc	ra,0xffffe
    800074c0:	6d4080e7          	jalr	1748(ra) # 80005b90 <mycpu>
    800074c4:	0014f493          	andi	s1,s1,1
    800074c8:	06952e23          	sw	s1,124(a0)
    800074cc:	fc5ff06f          	j	80007490 <push_off+0x34>

00000000800074d0 <pop_off>:
    800074d0:	ff010113          	addi	sp,sp,-16
    800074d4:	00813023          	sd	s0,0(sp)
    800074d8:	00113423          	sd	ra,8(sp)
    800074dc:	01010413          	addi	s0,sp,16
    800074e0:	ffffe097          	auipc	ra,0xffffe
    800074e4:	6b0080e7          	jalr	1712(ra) # 80005b90 <mycpu>
    800074e8:	100027f3          	csrr	a5,sstatus
    800074ec:	0027f793          	andi	a5,a5,2
    800074f0:	04079663          	bnez	a5,8000753c <pop_off+0x6c>
    800074f4:	07852783          	lw	a5,120(a0)
    800074f8:	02f05a63          	blez	a5,8000752c <pop_off+0x5c>
    800074fc:	fff7871b          	addiw	a4,a5,-1
    80007500:	06e52c23          	sw	a4,120(a0)
    80007504:	00071c63          	bnez	a4,8000751c <pop_off+0x4c>
    80007508:	07c52783          	lw	a5,124(a0)
    8000750c:	00078863          	beqz	a5,8000751c <pop_off+0x4c>
    80007510:	100027f3          	csrr	a5,sstatus
    80007514:	0027e793          	ori	a5,a5,2
    80007518:	10079073          	csrw	sstatus,a5
    8000751c:	00813083          	ld	ra,8(sp)
    80007520:	00013403          	ld	s0,0(sp)
    80007524:	01010113          	addi	sp,sp,16
    80007528:	00008067          	ret
    8000752c:	00001517          	auipc	a0,0x1
    80007530:	2f450513          	addi	a0,a0,756 # 80008820 <digits+0x48>
    80007534:	fffff097          	auipc	ra,0xfffff
    80007538:	018080e7          	jalr	24(ra) # 8000654c <panic>
    8000753c:	00001517          	auipc	a0,0x1
    80007540:	2cc50513          	addi	a0,a0,716 # 80008808 <digits+0x30>
    80007544:	fffff097          	auipc	ra,0xfffff
    80007548:	008080e7          	jalr	8(ra) # 8000654c <panic>

000000008000754c <push_on>:
    8000754c:	fe010113          	addi	sp,sp,-32
    80007550:	00813823          	sd	s0,16(sp)
    80007554:	00113c23          	sd	ra,24(sp)
    80007558:	00913423          	sd	s1,8(sp)
    8000755c:	02010413          	addi	s0,sp,32
    80007560:	100024f3          	csrr	s1,sstatus
    80007564:	100027f3          	csrr	a5,sstatus
    80007568:	0027e793          	ori	a5,a5,2
    8000756c:	10079073          	csrw	sstatus,a5
    80007570:	ffffe097          	auipc	ra,0xffffe
    80007574:	620080e7          	jalr	1568(ra) # 80005b90 <mycpu>
    80007578:	07852783          	lw	a5,120(a0)
    8000757c:	02078663          	beqz	a5,800075a8 <push_on+0x5c>
    80007580:	ffffe097          	auipc	ra,0xffffe
    80007584:	610080e7          	jalr	1552(ra) # 80005b90 <mycpu>
    80007588:	07852783          	lw	a5,120(a0)
    8000758c:	01813083          	ld	ra,24(sp)
    80007590:	01013403          	ld	s0,16(sp)
    80007594:	0017879b          	addiw	a5,a5,1
    80007598:	06f52c23          	sw	a5,120(a0)
    8000759c:	00813483          	ld	s1,8(sp)
    800075a0:	02010113          	addi	sp,sp,32
    800075a4:	00008067          	ret
    800075a8:	0014d493          	srli	s1,s1,0x1
    800075ac:	ffffe097          	auipc	ra,0xffffe
    800075b0:	5e4080e7          	jalr	1508(ra) # 80005b90 <mycpu>
    800075b4:	0014f493          	andi	s1,s1,1
    800075b8:	06952e23          	sw	s1,124(a0)
    800075bc:	fc5ff06f          	j	80007580 <push_on+0x34>

00000000800075c0 <pop_on>:
    800075c0:	ff010113          	addi	sp,sp,-16
    800075c4:	00813023          	sd	s0,0(sp)
    800075c8:	00113423          	sd	ra,8(sp)
    800075cc:	01010413          	addi	s0,sp,16
    800075d0:	ffffe097          	auipc	ra,0xffffe
    800075d4:	5c0080e7          	jalr	1472(ra) # 80005b90 <mycpu>
    800075d8:	100027f3          	csrr	a5,sstatus
    800075dc:	0027f793          	andi	a5,a5,2
    800075e0:	04078463          	beqz	a5,80007628 <pop_on+0x68>
    800075e4:	07852783          	lw	a5,120(a0)
    800075e8:	02f05863          	blez	a5,80007618 <pop_on+0x58>
    800075ec:	fff7879b          	addiw	a5,a5,-1
    800075f0:	06f52c23          	sw	a5,120(a0)
    800075f4:	07853783          	ld	a5,120(a0)
    800075f8:	00079863          	bnez	a5,80007608 <pop_on+0x48>
    800075fc:	100027f3          	csrr	a5,sstatus
    80007600:	ffd7f793          	andi	a5,a5,-3
    80007604:	10079073          	csrw	sstatus,a5
    80007608:	00813083          	ld	ra,8(sp)
    8000760c:	00013403          	ld	s0,0(sp)
    80007610:	01010113          	addi	sp,sp,16
    80007614:	00008067          	ret
    80007618:	00001517          	auipc	a0,0x1
    8000761c:	23050513          	addi	a0,a0,560 # 80008848 <digits+0x70>
    80007620:	fffff097          	auipc	ra,0xfffff
    80007624:	f2c080e7          	jalr	-212(ra) # 8000654c <panic>
    80007628:	00001517          	auipc	a0,0x1
    8000762c:	20050513          	addi	a0,a0,512 # 80008828 <digits+0x50>
    80007630:	fffff097          	auipc	ra,0xfffff
    80007634:	f1c080e7          	jalr	-228(ra) # 8000654c <panic>

0000000080007638 <__memset>:
    80007638:	ff010113          	addi	sp,sp,-16
    8000763c:	00813423          	sd	s0,8(sp)
    80007640:	01010413          	addi	s0,sp,16
    80007644:	1a060e63          	beqz	a2,80007800 <__memset+0x1c8>
    80007648:	40a007b3          	neg	a5,a0
    8000764c:	0077f793          	andi	a5,a5,7
    80007650:	00778693          	addi	a3,a5,7
    80007654:	00b00813          	li	a6,11
    80007658:	0ff5f593          	andi	a1,a1,255
    8000765c:	fff6071b          	addiw	a4,a2,-1
    80007660:	1b06e663          	bltu	a3,a6,8000780c <__memset+0x1d4>
    80007664:	1cd76463          	bltu	a4,a3,8000782c <__memset+0x1f4>
    80007668:	1a078e63          	beqz	a5,80007824 <__memset+0x1ec>
    8000766c:	00b50023          	sb	a1,0(a0)
    80007670:	00100713          	li	a4,1
    80007674:	1ae78463          	beq	a5,a4,8000781c <__memset+0x1e4>
    80007678:	00b500a3          	sb	a1,1(a0)
    8000767c:	00200713          	li	a4,2
    80007680:	1ae78a63          	beq	a5,a4,80007834 <__memset+0x1fc>
    80007684:	00b50123          	sb	a1,2(a0)
    80007688:	00300713          	li	a4,3
    8000768c:	18e78463          	beq	a5,a4,80007814 <__memset+0x1dc>
    80007690:	00b501a3          	sb	a1,3(a0)
    80007694:	00400713          	li	a4,4
    80007698:	1ae78263          	beq	a5,a4,8000783c <__memset+0x204>
    8000769c:	00b50223          	sb	a1,4(a0)
    800076a0:	00500713          	li	a4,5
    800076a4:	1ae78063          	beq	a5,a4,80007844 <__memset+0x20c>
    800076a8:	00b502a3          	sb	a1,5(a0)
    800076ac:	00700713          	li	a4,7
    800076b0:	18e79e63          	bne	a5,a4,8000784c <__memset+0x214>
    800076b4:	00b50323          	sb	a1,6(a0)
    800076b8:	00700e93          	li	t4,7
    800076bc:	00859713          	slli	a4,a1,0x8
    800076c0:	00e5e733          	or	a4,a1,a4
    800076c4:	01059e13          	slli	t3,a1,0x10
    800076c8:	01c76e33          	or	t3,a4,t3
    800076cc:	01859313          	slli	t1,a1,0x18
    800076d0:	006e6333          	or	t1,t3,t1
    800076d4:	02059893          	slli	a7,a1,0x20
    800076d8:	40f60e3b          	subw	t3,a2,a5
    800076dc:	011368b3          	or	a7,t1,a7
    800076e0:	02859813          	slli	a6,a1,0x28
    800076e4:	0108e833          	or	a6,a7,a6
    800076e8:	03059693          	slli	a3,a1,0x30
    800076ec:	003e589b          	srliw	a7,t3,0x3
    800076f0:	00d866b3          	or	a3,a6,a3
    800076f4:	03859713          	slli	a4,a1,0x38
    800076f8:	00389813          	slli	a6,a7,0x3
    800076fc:	00f507b3          	add	a5,a0,a5
    80007700:	00e6e733          	or	a4,a3,a4
    80007704:	000e089b          	sext.w	a7,t3
    80007708:	00f806b3          	add	a3,a6,a5
    8000770c:	00e7b023          	sd	a4,0(a5)
    80007710:	00878793          	addi	a5,a5,8
    80007714:	fed79ce3          	bne	a5,a3,8000770c <__memset+0xd4>
    80007718:	ff8e7793          	andi	a5,t3,-8
    8000771c:	0007871b          	sext.w	a4,a5
    80007720:	01d787bb          	addw	a5,a5,t4
    80007724:	0ce88e63          	beq	a7,a4,80007800 <__memset+0x1c8>
    80007728:	00f50733          	add	a4,a0,a5
    8000772c:	00b70023          	sb	a1,0(a4)
    80007730:	0017871b          	addiw	a4,a5,1
    80007734:	0cc77663          	bgeu	a4,a2,80007800 <__memset+0x1c8>
    80007738:	00e50733          	add	a4,a0,a4
    8000773c:	00b70023          	sb	a1,0(a4)
    80007740:	0027871b          	addiw	a4,a5,2
    80007744:	0ac77e63          	bgeu	a4,a2,80007800 <__memset+0x1c8>
    80007748:	00e50733          	add	a4,a0,a4
    8000774c:	00b70023          	sb	a1,0(a4)
    80007750:	0037871b          	addiw	a4,a5,3
    80007754:	0ac77663          	bgeu	a4,a2,80007800 <__memset+0x1c8>
    80007758:	00e50733          	add	a4,a0,a4
    8000775c:	00b70023          	sb	a1,0(a4)
    80007760:	0047871b          	addiw	a4,a5,4
    80007764:	08c77e63          	bgeu	a4,a2,80007800 <__memset+0x1c8>
    80007768:	00e50733          	add	a4,a0,a4
    8000776c:	00b70023          	sb	a1,0(a4)
    80007770:	0057871b          	addiw	a4,a5,5
    80007774:	08c77663          	bgeu	a4,a2,80007800 <__memset+0x1c8>
    80007778:	00e50733          	add	a4,a0,a4
    8000777c:	00b70023          	sb	a1,0(a4)
    80007780:	0067871b          	addiw	a4,a5,6
    80007784:	06c77e63          	bgeu	a4,a2,80007800 <__memset+0x1c8>
    80007788:	00e50733          	add	a4,a0,a4
    8000778c:	00b70023          	sb	a1,0(a4)
    80007790:	0077871b          	addiw	a4,a5,7
    80007794:	06c77663          	bgeu	a4,a2,80007800 <__memset+0x1c8>
    80007798:	00e50733          	add	a4,a0,a4
    8000779c:	00b70023          	sb	a1,0(a4)
    800077a0:	0087871b          	addiw	a4,a5,8
    800077a4:	04c77e63          	bgeu	a4,a2,80007800 <__memset+0x1c8>
    800077a8:	00e50733          	add	a4,a0,a4
    800077ac:	00b70023          	sb	a1,0(a4)
    800077b0:	0097871b          	addiw	a4,a5,9
    800077b4:	04c77663          	bgeu	a4,a2,80007800 <__memset+0x1c8>
    800077b8:	00e50733          	add	a4,a0,a4
    800077bc:	00b70023          	sb	a1,0(a4)
    800077c0:	00a7871b          	addiw	a4,a5,10
    800077c4:	02c77e63          	bgeu	a4,a2,80007800 <__memset+0x1c8>
    800077c8:	00e50733          	add	a4,a0,a4
    800077cc:	00b70023          	sb	a1,0(a4)
    800077d0:	00b7871b          	addiw	a4,a5,11
    800077d4:	02c77663          	bgeu	a4,a2,80007800 <__memset+0x1c8>
    800077d8:	00e50733          	add	a4,a0,a4
    800077dc:	00b70023          	sb	a1,0(a4)
    800077e0:	00c7871b          	addiw	a4,a5,12
    800077e4:	00c77e63          	bgeu	a4,a2,80007800 <__memset+0x1c8>
    800077e8:	00e50733          	add	a4,a0,a4
    800077ec:	00b70023          	sb	a1,0(a4)
    800077f0:	00d7879b          	addiw	a5,a5,13
    800077f4:	00c7f663          	bgeu	a5,a2,80007800 <__memset+0x1c8>
    800077f8:	00f507b3          	add	a5,a0,a5
    800077fc:	00b78023          	sb	a1,0(a5)
    80007800:	00813403          	ld	s0,8(sp)
    80007804:	01010113          	addi	sp,sp,16
    80007808:	00008067          	ret
    8000780c:	00b00693          	li	a3,11
    80007810:	e55ff06f          	j	80007664 <__memset+0x2c>
    80007814:	00300e93          	li	t4,3
    80007818:	ea5ff06f          	j	800076bc <__memset+0x84>
    8000781c:	00100e93          	li	t4,1
    80007820:	e9dff06f          	j	800076bc <__memset+0x84>
    80007824:	00000e93          	li	t4,0
    80007828:	e95ff06f          	j	800076bc <__memset+0x84>
    8000782c:	00000793          	li	a5,0
    80007830:	ef9ff06f          	j	80007728 <__memset+0xf0>
    80007834:	00200e93          	li	t4,2
    80007838:	e85ff06f          	j	800076bc <__memset+0x84>
    8000783c:	00400e93          	li	t4,4
    80007840:	e7dff06f          	j	800076bc <__memset+0x84>
    80007844:	00500e93          	li	t4,5
    80007848:	e75ff06f          	j	800076bc <__memset+0x84>
    8000784c:	00600e93          	li	t4,6
    80007850:	e6dff06f          	j	800076bc <__memset+0x84>

0000000080007854 <__memmove>:
    80007854:	ff010113          	addi	sp,sp,-16
    80007858:	00813423          	sd	s0,8(sp)
    8000785c:	01010413          	addi	s0,sp,16
    80007860:	0e060863          	beqz	a2,80007950 <__memmove+0xfc>
    80007864:	fff6069b          	addiw	a3,a2,-1
    80007868:	0006881b          	sext.w	a6,a3
    8000786c:	0ea5e863          	bltu	a1,a0,8000795c <__memmove+0x108>
    80007870:	00758713          	addi	a4,a1,7
    80007874:	00a5e7b3          	or	a5,a1,a0
    80007878:	40a70733          	sub	a4,a4,a0
    8000787c:	0077f793          	andi	a5,a5,7
    80007880:	00f73713          	sltiu	a4,a4,15
    80007884:	00174713          	xori	a4,a4,1
    80007888:	0017b793          	seqz	a5,a5
    8000788c:	00e7f7b3          	and	a5,a5,a4
    80007890:	10078863          	beqz	a5,800079a0 <__memmove+0x14c>
    80007894:	00900793          	li	a5,9
    80007898:	1107f463          	bgeu	a5,a6,800079a0 <__memmove+0x14c>
    8000789c:	0036581b          	srliw	a6,a2,0x3
    800078a0:	fff8081b          	addiw	a6,a6,-1
    800078a4:	02081813          	slli	a6,a6,0x20
    800078a8:	01d85893          	srli	a7,a6,0x1d
    800078ac:	00858813          	addi	a6,a1,8
    800078b0:	00058793          	mv	a5,a1
    800078b4:	00050713          	mv	a4,a0
    800078b8:	01088833          	add	a6,a7,a6
    800078bc:	0007b883          	ld	a7,0(a5)
    800078c0:	00878793          	addi	a5,a5,8
    800078c4:	00870713          	addi	a4,a4,8
    800078c8:	ff173c23          	sd	a7,-8(a4)
    800078cc:	ff0798e3          	bne	a5,a6,800078bc <__memmove+0x68>
    800078d0:	ff867713          	andi	a4,a2,-8
    800078d4:	02071793          	slli	a5,a4,0x20
    800078d8:	0207d793          	srli	a5,a5,0x20
    800078dc:	00f585b3          	add	a1,a1,a5
    800078e0:	40e686bb          	subw	a3,a3,a4
    800078e4:	00f507b3          	add	a5,a0,a5
    800078e8:	06e60463          	beq	a2,a4,80007950 <__memmove+0xfc>
    800078ec:	0005c703          	lbu	a4,0(a1)
    800078f0:	00e78023          	sb	a4,0(a5)
    800078f4:	04068e63          	beqz	a3,80007950 <__memmove+0xfc>
    800078f8:	0015c603          	lbu	a2,1(a1)
    800078fc:	00100713          	li	a4,1
    80007900:	00c780a3          	sb	a2,1(a5)
    80007904:	04e68663          	beq	a3,a4,80007950 <__memmove+0xfc>
    80007908:	0025c603          	lbu	a2,2(a1)
    8000790c:	00200713          	li	a4,2
    80007910:	00c78123          	sb	a2,2(a5)
    80007914:	02e68e63          	beq	a3,a4,80007950 <__memmove+0xfc>
    80007918:	0035c603          	lbu	a2,3(a1)
    8000791c:	00300713          	li	a4,3
    80007920:	00c781a3          	sb	a2,3(a5)
    80007924:	02e68663          	beq	a3,a4,80007950 <__memmove+0xfc>
    80007928:	0045c603          	lbu	a2,4(a1)
    8000792c:	00400713          	li	a4,4
    80007930:	00c78223          	sb	a2,4(a5)
    80007934:	00e68e63          	beq	a3,a4,80007950 <__memmove+0xfc>
    80007938:	0055c603          	lbu	a2,5(a1)
    8000793c:	00500713          	li	a4,5
    80007940:	00c782a3          	sb	a2,5(a5)
    80007944:	00e68663          	beq	a3,a4,80007950 <__memmove+0xfc>
    80007948:	0065c703          	lbu	a4,6(a1)
    8000794c:	00e78323          	sb	a4,6(a5)
    80007950:	00813403          	ld	s0,8(sp)
    80007954:	01010113          	addi	sp,sp,16
    80007958:	00008067          	ret
    8000795c:	02061713          	slli	a4,a2,0x20
    80007960:	02075713          	srli	a4,a4,0x20
    80007964:	00e587b3          	add	a5,a1,a4
    80007968:	f0f574e3          	bgeu	a0,a5,80007870 <__memmove+0x1c>
    8000796c:	02069613          	slli	a2,a3,0x20
    80007970:	02065613          	srli	a2,a2,0x20
    80007974:	fff64613          	not	a2,a2
    80007978:	00e50733          	add	a4,a0,a4
    8000797c:	00c78633          	add	a2,a5,a2
    80007980:	fff7c683          	lbu	a3,-1(a5)
    80007984:	fff78793          	addi	a5,a5,-1
    80007988:	fff70713          	addi	a4,a4,-1
    8000798c:	00d70023          	sb	a3,0(a4)
    80007990:	fec798e3          	bne	a5,a2,80007980 <__memmove+0x12c>
    80007994:	00813403          	ld	s0,8(sp)
    80007998:	01010113          	addi	sp,sp,16
    8000799c:	00008067          	ret
    800079a0:	02069713          	slli	a4,a3,0x20
    800079a4:	02075713          	srli	a4,a4,0x20
    800079a8:	00170713          	addi	a4,a4,1
    800079ac:	00e50733          	add	a4,a0,a4
    800079b0:	00050793          	mv	a5,a0
    800079b4:	0005c683          	lbu	a3,0(a1)
    800079b8:	00178793          	addi	a5,a5,1
    800079bc:	00158593          	addi	a1,a1,1
    800079c0:	fed78fa3          	sb	a3,-1(a5)
    800079c4:	fee798e3          	bne	a5,a4,800079b4 <__memmove+0x160>
    800079c8:	f89ff06f          	j	80007950 <__memmove+0xfc>

00000000800079cc <__putc>:
    800079cc:	fe010113          	addi	sp,sp,-32
    800079d0:	00813823          	sd	s0,16(sp)
    800079d4:	00113c23          	sd	ra,24(sp)
    800079d8:	02010413          	addi	s0,sp,32
    800079dc:	00050793          	mv	a5,a0
    800079e0:	fef40593          	addi	a1,s0,-17
    800079e4:	00100613          	li	a2,1
    800079e8:	00000513          	li	a0,0
    800079ec:	fef407a3          	sb	a5,-17(s0)
    800079f0:	fffff097          	auipc	ra,0xfffff
    800079f4:	b3c080e7          	jalr	-1220(ra) # 8000652c <console_write>
    800079f8:	01813083          	ld	ra,24(sp)
    800079fc:	01013403          	ld	s0,16(sp)
    80007a00:	02010113          	addi	sp,sp,32
    80007a04:	00008067          	ret

0000000080007a08 <__getc>:
    80007a08:	fe010113          	addi	sp,sp,-32
    80007a0c:	00813823          	sd	s0,16(sp)
    80007a10:	00113c23          	sd	ra,24(sp)
    80007a14:	02010413          	addi	s0,sp,32
    80007a18:	fe840593          	addi	a1,s0,-24
    80007a1c:	00100613          	li	a2,1
    80007a20:	00000513          	li	a0,0
    80007a24:	fffff097          	auipc	ra,0xfffff
    80007a28:	ae8080e7          	jalr	-1304(ra) # 8000650c <console_read>
    80007a2c:	fe844503          	lbu	a0,-24(s0)
    80007a30:	01813083          	ld	ra,24(sp)
    80007a34:	01013403          	ld	s0,16(sp)
    80007a38:	02010113          	addi	sp,sp,32
    80007a3c:	00008067          	ret

0000000080007a40 <console_handler>:
    80007a40:	fe010113          	addi	sp,sp,-32
    80007a44:	00813823          	sd	s0,16(sp)
    80007a48:	00113c23          	sd	ra,24(sp)
    80007a4c:	00913423          	sd	s1,8(sp)
    80007a50:	02010413          	addi	s0,sp,32
    80007a54:	14202773          	csrr	a4,scause
    80007a58:	100027f3          	csrr	a5,sstatus
    80007a5c:	0027f793          	andi	a5,a5,2
    80007a60:	06079e63          	bnez	a5,80007adc <console_handler+0x9c>
    80007a64:	00074c63          	bltz	a4,80007a7c <console_handler+0x3c>
    80007a68:	01813083          	ld	ra,24(sp)
    80007a6c:	01013403          	ld	s0,16(sp)
    80007a70:	00813483          	ld	s1,8(sp)
    80007a74:	02010113          	addi	sp,sp,32
    80007a78:	00008067          	ret
    80007a7c:	0ff77713          	andi	a4,a4,255
    80007a80:	00900793          	li	a5,9
    80007a84:	fef712e3          	bne	a4,a5,80007a68 <console_handler+0x28>
    80007a88:	ffffe097          	auipc	ra,0xffffe
    80007a8c:	6dc080e7          	jalr	1756(ra) # 80006164 <plic_claim>
    80007a90:	00a00793          	li	a5,10
    80007a94:	00050493          	mv	s1,a0
    80007a98:	02f50c63          	beq	a0,a5,80007ad0 <console_handler+0x90>
    80007a9c:	fc0506e3          	beqz	a0,80007a68 <console_handler+0x28>
    80007aa0:	00050593          	mv	a1,a0
    80007aa4:	00001517          	auipc	a0,0x1
    80007aa8:	cac50513          	addi	a0,a0,-852 # 80008750 <_ZZ12printIntegermE6digits+0x718>
    80007aac:	fffff097          	auipc	ra,0xfffff
    80007ab0:	afc080e7          	jalr	-1284(ra) # 800065a8 <__printf>
    80007ab4:	01013403          	ld	s0,16(sp)
    80007ab8:	01813083          	ld	ra,24(sp)
    80007abc:	00048513          	mv	a0,s1
    80007ac0:	00813483          	ld	s1,8(sp)
    80007ac4:	02010113          	addi	sp,sp,32
    80007ac8:	ffffe317          	auipc	t1,0xffffe
    80007acc:	6d430067          	jr	1748(t1) # 8000619c <plic_complete>
    80007ad0:	fffff097          	auipc	ra,0xfffff
    80007ad4:	3e0080e7          	jalr	992(ra) # 80006eb0 <uartintr>
    80007ad8:	fddff06f          	j	80007ab4 <console_handler+0x74>
    80007adc:	00001517          	auipc	a0,0x1
    80007ae0:	d7450513          	addi	a0,a0,-652 # 80008850 <digits+0x78>
    80007ae4:	fffff097          	auipc	ra,0xfffff
    80007ae8:	a68080e7          	jalr	-1432(ra) # 8000654c <panic>
	...
