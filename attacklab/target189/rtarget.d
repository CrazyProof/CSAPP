
rtarget:     file format elf64-x86-64


Disassembly of section .text:

0000000000808000 <_start>:
  808000:	31 ed                	xor    %ebp,%ebp
  808002:	49 89 d1             	mov    %rdx,%r9
  808005:	5e                   	pop    %rsi
  808006:	48 89 e2             	mov    %rsp,%rdx
  808009:	48 83 e4 f0          	and    $0xfffffffffffffff0,%rsp
  80800d:	50                   	push   %rax
  80800e:	54                   	push   %rsp
  80800f:	49 c7 c0 b0 a0 80 00 	mov    $0x80a0b0,%r8
  808016:	48 c7 c1 40 a0 80 00 	mov    $0x80a040,%rcx
  80801d:	48 c7 c7 81 82 80 00 	mov    $0x808281,%rdi
  808024:	ff 15 c6 3f 20 00    	callq  *0x203fc6(%rip)        # a0bff0 <__libc_start_main@GLIBC_2.2.5>
  80802a:	f4                   	hlt    
  80802b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

0000000000808030 <_dl_relocate_static_pie>:
  808030:	f3 c3                	repz retq 
  808032:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
  808039:	00 00 00 
  80803c:	0f 1f 40 00          	nopl   0x0(%rax)

0000000000808040 <deregister_tm_clones>:
  808040:	55                   	push   %rbp
  808041:	b8 98 c4 a0 00       	mov    $0xa0c498,%eax
  808046:	48 3d 98 c4 a0 00    	cmp    $0xa0c498,%rax
  80804c:	48 89 e5             	mov    %rsp,%rbp
  80804f:	74 17                	je     808068 <deregister_tm_clones+0x28>
  808051:	b8 00 00 00 00       	mov    $0x0,%eax
  808056:	48 85 c0             	test   %rax,%rax
  808059:	74 0d                	je     808068 <deregister_tm_clones+0x28>
  80805b:	5d                   	pop    %rbp
  80805c:	bf 98 c4 a0 00       	mov    $0xa0c498,%edi
  808061:	ff e0                	jmpq   *%rax
  808063:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
  808068:	5d                   	pop    %rbp
  808069:	c3                   	retq   
  80806a:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)

0000000000808070 <register_tm_clones>:
  808070:	be 98 c4 a0 00       	mov    $0xa0c498,%esi
  808075:	55                   	push   %rbp
  808076:	48 81 ee 98 c4 a0 00 	sub    $0xa0c498,%rsi
  80807d:	48 89 e5             	mov    %rsp,%rbp
  808080:	48 c1 fe 03          	sar    $0x3,%rsi
  808084:	48 89 f0             	mov    %rsi,%rax
  808087:	48 c1 e8 3f          	shr    $0x3f,%rax
  80808b:	48 01 c6             	add    %rax,%rsi
  80808e:	48 d1 fe             	sar    %rsi
  808091:	74 15                	je     8080a8 <register_tm_clones+0x38>
  808093:	b8 00 00 00 00       	mov    $0x0,%eax
  808098:	48 85 c0             	test   %rax,%rax
  80809b:	74 0b                	je     8080a8 <register_tm_clones+0x38>
  80809d:	5d                   	pop    %rbp
  80809e:	bf 98 c4 a0 00       	mov    $0xa0c498,%edi
  8080a3:	ff e0                	jmpq   *%rax
  8080a5:	0f 1f 00             	nopl   (%rax)
  8080a8:	5d                   	pop    %rbp
  8080a9:	c3                   	retq   
  8080aa:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)

00000000008080b0 <__do_global_dtors_aux>:
  8080b0:	80 3d 11 44 20 00 00 	cmpb   $0x0,0x204411(%rip)        # a0c4c8 <completed.7698>
  8080b7:	75 17                	jne    8080d0 <__do_global_dtors_aux+0x20>
  8080b9:	55                   	push   %rbp
  8080ba:	48 89 e5             	mov    %rsp,%rbp
  8080bd:	e8 7e ff ff ff       	callq  808040 <deregister_tm_clones>
  8080c2:	c6 05 ff 43 20 00 01 	movb   $0x1,0x2043ff(%rip)        # a0c4c8 <completed.7698>
  8080c9:	5d                   	pop    %rbp
  8080ca:	c3                   	retq   
  8080cb:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
  8080d0:	f3 c3                	repz retq 
  8080d2:	0f 1f 40 00          	nopl   0x0(%rax)
  8080d6:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
  8080dd:	00 00 00 

00000000008080e0 <frame_dummy>:
  8080e0:	55                   	push   %rbp
  8080e1:	48 89 e5             	mov    %rsp,%rbp
  8080e4:	5d                   	pop    %rbp
  8080e5:	eb 89                	jmp    808070 <register_tm_clones>

00000000008080e7 <usage>:
  8080e7:	48 83 ec 08          	sub    $0x8,%rsp
  8080eb:	48 89 fa             	mov    %rdi,%rdx
  8080ee:	83 3d 13 44 20 00 00 	cmpl   $0x0,0x204413(%rip)        # a0c508 <is_checker>
  8080f5:	74 50                	je     808147 <usage+0x60>
  8080f7:	48 8d 35 ca 1f 00 00 	lea    0x1fca(%rip),%rsi        # 80a0c8 <_IO_stdin_used+0x8>
  8080fe:	bf 01 00 00 00       	mov    $0x1,%edi
  808103:	b8 00 00 00 00       	mov    $0x0,%eax
  808108:	e8 d3 8c bf ff       	callq  400de0 <__printf_chk@plt>
  80810d:	48 8d 3d ec 1f 00 00 	lea    0x1fec(%rip),%rdi        # 80a100 <_IO_stdin_used+0x40>
  808114:	e8 a7 8b bf ff       	callq  400cc0 <puts@plt>
  808119:	48 8d 3d e0 20 00 00 	lea    0x20e0(%rip),%rdi        # 80a200 <_IO_stdin_used+0x140>
  808120:	e8 9b 8b bf ff       	callq  400cc0 <puts@plt>
  808125:	48 8d 3d fc 1f 00 00 	lea    0x1ffc(%rip),%rdi        # 80a128 <_IO_stdin_used+0x68>
  80812c:	e8 8f 8b bf ff       	callq  400cc0 <puts@plt>
  808131:	48 8d 3d e2 20 00 00 	lea    0x20e2(%rip),%rdi        # 80a21a <_IO_stdin_used+0x15a>
  808138:	e8 83 8b bf ff       	callq  400cc0 <puts@plt>
  80813d:	bf 00 00 00 00       	mov    $0x0,%edi
  808142:	e8 d9 8c bf ff       	callq  400e20 <exit@plt>
  808147:	48 8d 35 e8 20 00 00 	lea    0x20e8(%rip),%rsi        # 80a236 <_IO_stdin_used+0x176>
  80814e:	bf 01 00 00 00       	mov    $0x1,%edi
  808153:	b8 00 00 00 00       	mov    $0x0,%eax
  808158:	e8 83 8c bf ff       	callq  400de0 <__printf_chk@plt>
  80815d:	48 8d 3d ec 1f 00 00 	lea    0x1fec(%rip),%rdi        # 80a150 <_IO_stdin_used+0x90>
  808164:	e8 57 8b bf ff       	callq  400cc0 <puts@plt>
  808169:	48 8d 3d 08 20 00 00 	lea    0x2008(%rip),%rdi        # 80a178 <_IO_stdin_used+0xb8>
  808170:	e8 4b 8b bf ff       	callq  400cc0 <puts@plt>
  808175:	48 8d 3d d8 20 00 00 	lea    0x20d8(%rip),%rdi        # 80a254 <_IO_stdin_used+0x194>
  80817c:	e8 3f 8b bf ff       	callq  400cc0 <puts@plt>
  808181:	eb ba                	jmp    80813d <usage+0x56>

0000000000808183 <initialize_target>:
  808183:	55                   	push   %rbp
  808184:	53                   	push   %rbx
  808185:	48 81 ec 18 20 00 00 	sub    $0x2018,%rsp
  80818c:	89 f5                	mov    %esi,%ebp
  80818e:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
  808195:	00 00 
  808197:	48 89 84 24 08 20 00 	mov    %rax,0x2008(%rsp)
  80819e:	00 
  80819f:	31 c0                	xor    %eax,%eax
  8081a1:	89 3d 51 43 20 00    	mov    %edi,0x204351(%rip)        # a0c4f8 <check_level>
  8081a7:	8b 3d 83 3f 20 00    	mov    0x203f83(%rip),%edi        # a0c130 <target_id>
  8081ad:	e8 61 1e 00 00       	callq  80a013 <gencookie>
  8081b2:	89 05 4c 43 20 00    	mov    %eax,0x20434c(%rip)        # a0c504 <cookie>
  8081b8:	89 c7                	mov    %eax,%edi
  8081ba:	e8 54 1e 00 00       	callq  80a013 <gencookie>
  8081bf:	89 05 3b 43 20 00    	mov    %eax,0x20433b(%rip)        # a0c500 <authkey>
  8081c5:	8b 05 65 3f 20 00    	mov    0x203f65(%rip),%eax        # a0c130 <target_id>
  8081cb:	8d 78 01             	lea    0x1(%rax),%edi
  8081ce:	e8 bd 8a bf ff       	callq  400c90 <srandom@plt>
  8081d3:	e8 c8 8b bf ff       	callq  400da0 <random@plt>
  8081d8:	89 c7                	mov    %eax,%edi
  8081da:	e8 8d 02 00 00       	callq  80846c <scramble>
  8081df:	89 c3                	mov    %eax,%ebx
  8081e1:	85 ed                	test   %ebp,%ebp
  8081e3:	75 50                	jne    808235 <initialize_target+0xb2>
  8081e5:	b8 00 00 00 00       	mov    $0x0,%eax
  8081ea:	01 d8                	add    %ebx,%eax
  8081ec:	0f b7 c0             	movzwl %ax,%eax
  8081ef:	8d 04 c5 00 01 00 00 	lea    0x100(,%rax,8),%eax
  8081f6:	89 c0                	mov    %eax,%eax
  8081f8:	48 89 05 91 42 20 00 	mov    %rax,0x204291(%rip)        # a0c490 <buf_offset>
  8081ff:	c6 05 2a 4f 20 00 72 	movb   $0x72,0x204f2a(%rip)        # a0d130 <target_prefix>
  808206:	83 3d 7b 42 20 00 00 	cmpl   $0x0,0x20427b(%rip)        # a0c488 <notify>
  80820d:	74 09                	je     808218 <initialize_target+0x95>
  80820f:	83 3d f2 42 20 00 00 	cmpl   $0x0,0x2042f2(%rip)        # a0c508 <is_checker>
  808216:	74 35                	je     80824d <initialize_target+0xca>
  808218:	48 8b 84 24 08 20 00 	mov    0x2008(%rsp),%rax
  80821f:	00 
  808220:	64 48 33 04 25 28 00 	xor    %fs:0x28,%rax
  808227:	00 00 
  808229:	75 51                	jne    80827c <initialize_target+0xf9>
  80822b:	48 81 c4 18 20 00 00 	add    $0x2018,%rsp
  808232:	5b                   	pop    %rbx
  808233:	5d                   	pop    %rbp
  808234:	c3                   	retq   
  808235:	bf 00 00 00 00       	mov    $0x0,%edi
  80823a:	e8 51 8b bf ff       	callq  400d90 <time@plt>
  80823f:	89 c7                	mov    %eax,%edi
  808241:	e8 4a 8a bf ff       	callq  400c90 <srandom@plt>
  808246:	e8 55 8b bf ff       	callq  400da0 <random@plt>
  80824b:	eb 9d                	jmp    8081ea <initialize_target+0x67>
  80824d:	48 89 e7             	mov    %rsp,%rdi
  808250:	e8 ee 1a 00 00       	callq  809d43 <init_driver>
  808255:	85 c0                	test   %eax,%eax
  808257:	79 bf                	jns    808218 <initialize_target+0x95>
  808259:	48 89 e2             	mov    %rsp,%rdx
  80825c:	48 8d 35 45 1f 00 00 	lea    0x1f45(%rip),%rsi        # 80a1a8 <_IO_stdin_used+0xe8>
  808263:	bf 01 00 00 00       	mov    $0x1,%edi
  808268:	b8 00 00 00 00       	mov    $0x0,%eax
  80826d:	e8 6e 8b bf ff       	callq  400de0 <__printf_chk@plt>
  808272:	bf 08 00 00 00       	mov    $0x8,%edi
  808277:	e8 a4 8b bf ff       	callq  400e20 <exit@plt>
  80827c:	e8 5f 8a bf ff       	callq  400ce0 <__stack_chk_fail@plt>

0000000000808281 <main>:
  808281:	41 56                	push   %r14
  808283:	41 55                	push   %r13
  808285:	41 54                	push   %r12
  808287:	55                   	push   %rbp
  808288:	53                   	push   %rbx
  808289:	41 89 fc             	mov    %edi,%r12d
  80828c:	48 89 f3             	mov    %rsi,%rbx
  80828f:	48 c7 c6 4a 90 80 00 	mov    $0x80904a,%rsi
  808296:	bf 0b 00 00 00       	mov    $0xb,%edi
  80829b:	e8 a0 8a bf ff       	callq  400d40 <signal@plt>
  8082a0:	48 c7 c6 f6 8f 80 00 	mov    $0x808ff6,%rsi
  8082a7:	bf 07 00 00 00       	mov    $0x7,%edi
  8082ac:	e8 8f 8a bf ff       	callq  400d40 <signal@plt>
  8082b1:	48 c7 c6 9e 90 80 00 	mov    $0x80909e,%rsi
  8082b8:	bf 04 00 00 00       	mov    $0x4,%edi
  8082bd:	e8 7e 8a bf ff       	callq  400d40 <signal@plt>
  8082c2:	83 3d 3f 42 20 00 00 	cmpl   $0x0,0x20423f(%rip)        # a0c508 <is_checker>
  8082c9:	75 26                	jne    8082f1 <main+0x70>
  8082cb:	48 8d 2d 9b 1f 00 00 	lea    0x1f9b(%rip),%rbp        # 80a26d <_IO_stdin_used+0x1ad>
  8082d2:	48 8b 05 c7 41 20 00 	mov    0x2041c7(%rip),%rax        # a0c4a0 <stdin@@GLIBC_2.2.5>
  8082d9:	48 89 05 10 42 20 00 	mov    %rax,0x204210(%rip)        # a0c4f0 <infile>
  8082e0:	41 bd 00 00 00 00    	mov    $0x0,%r13d
  8082e6:	41 be 00 00 00 00    	mov    $0x0,%r14d
  8082ec:	e9 8d 00 00 00       	jmpq   80837e <main+0xfd>
  8082f1:	48 c7 c6 f2 90 80 00 	mov    $0x8090f2,%rsi
  8082f8:	bf 0e 00 00 00       	mov    $0xe,%edi
  8082fd:	e8 3e 8a bf ff       	callq  400d40 <signal@plt>
  808302:	bf 05 00 00 00       	mov    $0x5,%edi
  808307:	e8 04 8a bf ff       	callq  400d10 <alarm@plt>
  80830c:	48 8d 2d 5f 1f 00 00 	lea    0x1f5f(%rip),%rbp        # 80a272 <_IO_stdin_used+0x1b2>
  808313:	eb bd                	jmp    8082d2 <main+0x51>
  808315:	48 8b 3b             	mov    (%rbx),%rdi
  808318:	e8 ca fd ff ff       	callq  8080e7 <usage>
  80831d:	48 8d 35 c1 21 00 00 	lea    0x21c1(%rip),%rsi        # 80a4e5 <_IO_stdin_used+0x425>
  808324:	48 8b 3d 7d 41 20 00 	mov    0x20417d(%rip),%rdi        # a0c4a8 <optarg@@GLIBC_2.2.5>
  80832b:	e8 c0 8a bf ff       	callq  400df0 <fopen@plt>
  808330:	48 89 05 b9 41 20 00 	mov    %rax,0x2041b9(%rip)        # a0c4f0 <infile>
  808337:	48 85 c0             	test   %rax,%rax
  80833a:	75 42                	jne    80837e <main+0xfd>
  80833c:	48 8b 0d 65 41 20 00 	mov    0x204165(%rip),%rcx        # a0c4a8 <optarg@@GLIBC_2.2.5>
  808343:	48 8d 15 30 1f 00 00 	lea    0x1f30(%rip),%rdx        # 80a27a <_IO_stdin_used+0x1ba>
  80834a:	be 01 00 00 00       	mov    $0x1,%esi
  80834f:	48 8b 3d 6a 41 20 00 	mov    0x20416a(%rip),%rdi        # a0c4c0 <stderr@@GLIBC_2.2.5>
  808356:	e8 e5 8a bf ff       	callq  400e40 <__fprintf_chk@plt>
  80835b:	b8 01 00 00 00       	mov    $0x1,%eax
  808360:	e9 d9 00 00 00       	jmpq   80843e <main+0x1bd>
  808365:	ba 10 00 00 00       	mov    $0x10,%edx
  80836a:	be 00 00 00 00       	mov    $0x0,%esi
  80836f:	48 8b 3d 32 41 20 00 	mov    0x204132(%rip),%rdi        # a0c4a8 <optarg@@GLIBC_2.2.5>
  808376:	e8 95 8a bf ff       	callq  400e10 <strtoul@plt>
  80837b:	41 89 c6             	mov    %eax,%r14d
  80837e:	48 89 ea             	mov    %rbp,%rdx
  808381:	48 89 de             	mov    %rbx,%rsi
  808384:	44 89 e7             	mov    %r12d,%edi
  808387:	e8 74 8a bf ff       	callq  400e00 <getopt@plt>
  80838c:	3c ff                	cmp    $0xff,%al
  80838e:	74 62                	je     8083f2 <main+0x171>
  808390:	0f be d0             	movsbl %al,%edx
  808393:	83 e8 61             	sub    $0x61,%eax
  808396:	3c 10                	cmp    $0x10,%al
  808398:	77 3a                	ja     8083d4 <main+0x153>
  80839a:	0f b6 c0             	movzbl %al,%eax
  80839d:	48 8d 0d 14 1f 00 00 	lea    0x1f14(%rip),%rcx        # 80a2b8 <_IO_stdin_used+0x1f8>
  8083a4:	48 63 04 81          	movslq (%rcx,%rax,4),%rax
  8083a8:	48 01 c8             	add    %rcx,%rax
  8083ab:	ff e0                	jmpq   *%rax
  8083ad:	ba 0a 00 00 00       	mov    $0xa,%edx
  8083b2:	be 00 00 00 00       	mov    $0x0,%esi
  8083b7:	48 8b 3d ea 40 20 00 	mov    0x2040ea(%rip),%rdi        # a0c4a8 <optarg@@GLIBC_2.2.5>
  8083be:	e8 ad 89 bf ff       	callq  400d70 <strtol@plt>
  8083c3:	41 89 c5             	mov    %eax,%r13d
  8083c6:	eb b6                	jmp    80837e <main+0xfd>
  8083c8:	c7 05 b6 40 20 00 00 	movl   $0x0,0x2040b6(%rip)        # a0c488 <notify>
  8083cf:	00 00 00 
  8083d2:	eb aa                	jmp    80837e <main+0xfd>
  8083d4:	48 8d 35 bc 1e 00 00 	lea    0x1ebc(%rip),%rsi        # 80a297 <_IO_stdin_used+0x1d7>
  8083db:	bf 01 00 00 00       	mov    $0x1,%edi
  8083e0:	b8 00 00 00 00       	mov    $0x0,%eax
  8083e5:	e8 f6 89 bf ff       	callq  400de0 <__printf_chk@plt>
  8083ea:	48 8b 3b             	mov    (%rbx),%rdi
  8083ed:	e8 f5 fc ff ff       	callq  8080e7 <usage>
  8083f2:	be 01 00 00 00       	mov    $0x1,%esi
  8083f7:	44 89 ef             	mov    %r13d,%edi
  8083fa:	e8 84 fd ff ff       	callq  808183 <initialize_target>
  8083ff:	83 3d 02 41 20 00 00 	cmpl   $0x0,0x204102(%rip)        # a0c508 <is_checker>
  808406:	74 09                	je     808411 <main+0x190>
  808408:	44 39 35 f1 40 20 00 	cmp    %r14d,0x2040f1(%rip)        # a0c500 <authkey>
  80840f:	75 36                	jne    808447 <main+0x1c6>
  808411:	8b 15 ed 40 20 00    	mov    0x2040ed(%rip),%edx        # a0c504 <cookie>
  808417:	48 8d 35 8c 1e 00 00 	lea    0x1e8c(%rip),%rsi        # 80a2aa <_IO_stdin_used+0x1ea>
  80841e:	bf 01 00 00 00       	mov    $0x1,%edi
  808423:	b8 00 00 00 00       	mov    $0x0,%eax
  808428:	e8 b3 89 bf ff       	callq  400de0 <__printf_chk@plt>
  80842d:	48 8b 3d 5c 40 20 00 	mov    0x20405c(%rip),%rdi        # a0c490 <buf_offset>
  808434:	e8 10 0d 00 00       	callq  809149 <launch>
  808439:	b8 00 00 00 00       	mov    $0x0,%eax
  80843e:	5b                   	pop    %rbx
  80843f:	5d                   	pop    %rbp
  808440:	41 5c                	pop    %r12
  808442:	41 5d                	pop    %r13
  808444:	41 5e                	pop    %r14
  808446:	c3                   	retq   
  808447:	44 89 f2             	mov    %r14d,%edx
  80844a:	48 8d 35 7f 1d 00 00 	lea    0x1d7f(%rip),%rsi        # 80a1d0 <_IO_stdin_used+0x110>
  808451:	bf 01 00 00 00       	mov    $0x1,%edi
  808456:	b8 00 00 00 00       	mov    $0x0,%eax
  80845b:	e8 80 89 bf ff       	callq  400de0 <__printf_chk@plt>
  808460:	b8 00 00 00 00       	mov    $0x0,%eax
  808465:	e8 e5 07 00 00       	callq  808c4f <check_fail>
  80846a:	eb a5                	jmp    808411 <main+0x190>

000000000080846c <scramble>:
  80846c:	48 83 ec 38          	sub    $0x38,%rsp
  808470:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
  808477:	00 00 
  808479:	48 89 44 24 28       	mov    %rax,0x28(%rsp)
  80847e:	31 c0                	xor    %eax,%eax
  808480:	eb 10                	jmp    808492 <scramble+0x26>
  808482:	69 d0 66 50 00 00    	imul   $0x5066,%eax,%edx
  808488:	01 fa                	add    %edi,%edx
  80848a:	89 c1                	mov    %eax,%ecx
  80848c:	89 14 8c             	mov    %edx,(%rsp,%rcx,4)
  80848f:	83 c0 01             	add    $0x1,%eax
  808492:	83 f8 09             	cmp    $0x9,%eax
  808495:	76 eb                	jbe    808482 <scramble+0x16>
  808497:	8b 44 24 14          	mov    0x14(%rsp),%eax
  80849b:	69 c0 ab 00 00 00    	imul   $0xab,%eax,%eax
  8084a1:	89 44 24 14          	mov    %eax,0x14(%rsp)
  8084a5:	8b 44 24 04          	mov    0x4(%rsp),%eax
  8084a9:	69 c0 d5 9b 00 00    	imul   $0x9bd5,%eax,%eax
  8084af:	89 44 24 04          	mov    %eax,0x4(%rsp)
  8084b3:	8b 44 24 0c          	mov    0xc(%rsp),%eax
  8084b7:	69 c0 3c f1 00 00    	imul   $0xf13c,%eax,%eax
  8084bd:	89 44 24 0c          	mov    %eax,0xc(%rsp)
  8084c1:	8b 44 24 0c          	mov    0xc(%rsp),%eax
  8084c5:	69 c0 d3 e3 00 00    	imul   $0xe3d3,%eax,%eax
  8084cb:	89 44 24 0c          	mov    %eax,0xc(%rsp)
  8084cf:	8b 44 24 1c          	mov    0x1c(%rsp),%eax
  8084d3:	69 c0 e7 fb 00 00    	imul   $0xfbe7,%eax,%eax
  8084d9:	89 44 24 1c          	mov    %eax,0x1c(%rsp)
  8084dd:	8b 44 24 08          	mov    0x8(%rsp),%eax
  8084e1:	69 c0 2a ff 00 00    	imul   $0xff2a,%eax,%eax
  8084e7:	89 44 24 08          	mov    %eax,0x8(%rsp)
  8084eb:	8b 44 24 0c          	mov    0xc(%rsp),%eax
  8084ef:	69 c0 71 15 00 00    	imul   $0x1571,%eax,%eax
  8084f5:	89 44 24 0c          	mov    %eax,0xc(%rsp)
  8084f9:	8b 44 24 20          	mov    0x20(%rsp),%eax
  8084fd:	69 c0 3b e4 00 00    	imul   $0xe43b,%eax,%eax
  808503:	89 44 24 20          	mov    %eax,0x20(%rsp)
  808507:	8b 44 24 08          	mov    0x8(%rsp),%eax
  80850b:	69 c0 4f f4 00 00    	imul   $0xf44f,%eax,%eax
  808511:	89 44 24 08          	mov    %eax,0x8(%rsp)
  808515:	8b 44 24 10          	mov    0x10(%rsp),%eax
  808519:	69 c0 c4 21 00 00    	imul   $0x21c4,%eax,%eax
  80851f:	89 44 24 10          	mov    %eax,0x10(%rsp)
  808523:	8b 44 24 1c          	mov    0x1c(%rsp),%eax
  808527:	69 c0 52 a8 00 00    	imul   $0xa852,%eax,%eax
  80852d:	89 44 24 1c          	mov    %eax,0x1c(%rsp)
  808531:	8b 04 24             	mov    (%rsp),%eax
  808534:	69 c0 be e2 00 00    	imul   $0xe2be,%eax,%eax
  80853a:	89 04 24             	mov    %eax,(%rsp)
  80853d:	8b 44 24 1c          	mov    0x1c(%rsp),%eax
  808541:	69 c0 58 5e 00 00    	imul   $0x5e58,%eax,%eax
  808547:	89 44 24 1c          	mov    %eax,0x1c(%rsp)
  80854b:	8b 44 24 04          	mov    0x4(%rsp),%eax
  80854f:	69 c0 50 81 00 00    	imul   $0x8150,%eax,%eax
  808555:	89 44 24 04          	mov    %eax,0x4(%rsp)
  808559:	8b 04 24             	mov    (%rsp),%eax
  80855c:	69 c0 e7 6e 00 00    	imul   $0x6ee7,%eax,%eax
  808562:	89 04 24             	mov    %eax,(%rsp)
  808565:	8b 44 24 10          	mov    0x10(%rsp),%eax
  808569:	69 c0 15 fb 00 00    	imul   $0xfb15,%eax,%eax
  80856f:	89 44 24 10          	mov    %eax,0x10(%rsp)
  808573:	8b 44 24 10          	mov    0x10(%rsp),%eax
  808577:	69 c0 bb 82 00 00    	imul   $0x82bb,%eax,%eax
  80857d:	89 44 24 10          	mov    %eax,0x10(%rsp)
  808581:	8b 44 24 04          	mov    0x4(%rsp),%eax
  808585:	69 c0 ed fb 00 00    	imul   $0xfbed,%eax,%eax
  80858b:	89 44 24 04          	mov    %eax,0x4(%rsp)
  80858f:	8b 44 24 0c          	mov    0xc(%rsp),%eax
  808593:	69 c0 ca fa 00 00    	imul   $0xfaca,%eax,%eax
  808599:	89 44 24 0c          	mov    %eax,0xc(%rsp)
  80859d:	8b 44 24 14          	mov    0x14(%rsp),%eax
  8085a1:	69 c0 1a ca 00 00    	imul   $0xca1a,%eax,%eax
  8085a7:	89 44 24 14          	mov    %eax,0x14(%rsp)
  8085ab:	8b 44 24 1c          	mov    0x1c(%rsp),%eax
  8085af:	69 c0 f6 c9 00 00    	imul   $0xc9f6,%eax,%eax
  8085b5:	89 44 24 1c          	mov    %eax,0x1c(%rsp)
  8085b9:	8b 44 24 1c          	mov    0x1c(%rsp),%eax
  8085bd:	69 c0 93 74 00 00    	imul   $0x7493,%eax,%eax
  8085c3:	89 44 24 1c          	mov    %eax,0x1c(%rsp)
  8085c7:	8b 44 24 24          	mov    0x24(%rsp),%eax
  8085cb:	69 c0 a0 8b 00 00    	imul   $0x8ba0,%eax,%eax
  8085d1:	89 44 24 24          	mov    %eax,0x24(%rsp)
  8085d5:	8b 44 24 0c          	mov    0xc(%rsp),%eax
  8085d9:	69 c0 66 70 00 00    	imul   $0x7066,%eax,%eax
  8085df:	89 44 24 0c          	mov    %eax,0xc(%rsp)
  8085e3:	8b 44 24 18          	mov    0x18(%rsp),%eax
  8085e7:	69 c0 41 d8 00 00    	imul   $0xd841,%eax,%eax
  8085ed:	89 44 24 18          	mov    %eax,0x18(%rsp)
  8085f1:	8b 44 24 18          	mov    0x18(%rsp),%eax
  8085f5:	69 c0 b9 3b 00 00    	imul   $0x3bb9,%eax,%eax
  8085fb:	89 44 24 18          	mov    %eax,0x18(%rsp)
  8085ff:	8b 44 24 1c          	mov    0x1c(%rsp),%eax
  808603:	69 c0 15 24 00 00    	imul   $0x2415,%eax,%eax
  808609:	89 44 24 1c          	mov    %eax,0x1c(%rsp)
  80860d:	8b 44 24 10          	mov    0x10(%rsp),%eax
  808611:	69 c0 0e 3c 00 00    	imul   $0x3c0e,%eax,%eax
  808617:	89 44 24 10          	mov    %eax,0x10(%rsp)
  80861b:	8b 44 24 18          	mov    0x18(%rsp),%eax
  80861f:	69 c0 06 34 00 00    	imul   $0x3406,%eax,%eax
  808625:	89 44 24 18          	mov    %eax,0x18(%rsp)
  808629:	8b 44 24 0c          	mov    0xc(%rsp),%eax
  80862d:	69 c0 1d 2d 00 00    	imul   $0x2d1d,%eax,%eax
  808633:	89 44 24 0c          	mov    %eax,0xc(%rsp)
  808637:	8b 44 24 1c          	mov    0x1c(%rsp),%eax
  80863b:	69 c0 4c bd 00 00    	imul   $0xbd4c,%eax,%eax
  808641:	89 44 24 1c          	mov    %eax,0x1c(%rsp)
  808645:	8b 44 24 14          	mov    0x14(%rsp),%eax
  808649:	69 c0 7f 12 00 00    	imul   $0x127f,%eax,%eax
  80864f:	89 44 24 14          	mov    %eax,0x14(%rsp)
  808653:	8b 44 24 10          	mov    0x10(%rsp),%eax
  808657:	69 c0 1d bf 00 00    	imul   $0xbf1d,%eax,%eax
  80865d:	89 44 24 10          	mov    %eax,0x10(%rsp)
  808661:	8b 44 24 14          	mov    0x14(%rsp),%eax
  808665:	69 c0 ff b3 00 00    	imul   $0xb3ff,%eax,%eax
  80866b:	89 44 24 14          	mov    %eax,0x14(%rsp)
  80866f:	8b 44 24 0c          	mov    0xc(%rsp),%eax
  808673:	69 c0 2d ee 00 00    	imul   $0xee2d,%eax,%eax
  808679:	89 44 24 0c          	mov    %eax,0xc(%rsp)
  80867d:	8b 04 24             	mov    (%rsp),%eax
  808680:	69 c0 98 b0 00 00    	imul   $0xb098,%eax,%eax
  808686:	89 04 24             	mov    %eax,(%rsp)
  808689:	8b 44 24 20          	mov    0x20(%rsp),%eax
  80868d:	69 c0 5e 47 00 00    	imul   $0x475e,%eax,%eax
  808693:	89 44 24 20          	mov    %eax,0x20(%rsp)
  808697:	8b 44 24 08          	mov    0x8(%rsp),%eax
  80869b:	69 c0 8b 97 00 00    	imul   $0x978b,%eax,%eax
  8086a1:	89 44 24 08          	mov    %eax,0x8(%rsp)
  8086a5:	8b 44 24 24          	mov    0x24(%rsp),%eax
  8086a9:	69 c0 fb 7d 00 00    	imul   $0x7dfb,%eax,%eax
  8086af:	89 44 24 24          	mov    %eax,0x24(%rsp)
  8086b3:	8b 44 24 08          	mov    0x8(%rsp),%eax
  8086b7:	69 c0 ed 52 00 00    	imul   $0x52ed,%eax,%eax
  8086bd:	89 44 24 08          	mov    %eax,0x8(%rsp)
  8086c1:	8b 44 24 08          	mov    0x8(%rsp),%eax
  8086c5:	69 c0 1c 9a 00 00    	imul   $0x9a1c,%eax,%eax
  8086cb:	89 44 24 08          	mov    %eax,0x8(%rsp)
  8086cf:	8b 44 24 0c          	mov    0xc(%rsp),%eax
  8086d3:	69 c0 d0 d6 00 00    	imul   $0xd6d0,%eax,%eax
  8086d9:	89 44 24 0c          	mov    %eax,0xc(%rsp)
  8086dd:	8b 44 24 1c          	mov    0x1c(%rsp),%eax
  8086e1:	69 c0 1d ad 00 00    	imul   $0xad1d,%eax,%eax
  8086e7:	89 44 24 1c          	mov    %eax,0x1c(%rsp)
  8086eb:	8b 44 24 14          	mov    0x14(%rsp),%eax
  8086ef:	69 c0 9f 40 00 00    	imul   $0x409f,%eax,%eax
  8086f5:	89 44 24 14          	mov    %eax,0x14(%rsp)
  8086f9:	8b 44 24 14          	mov    0x14(%rsp),%eax
  8086fd:	69 c0 3d d0 00 00    	imul   $0xd03d,%eax,%eax
  808703:	89 44 24 14          	mov    %eax,0x14(%rsp)
  808707:	8b 44 24 10          	mov    0x10(%rsp),%eax
  80870b:	69 c0 10 84 00 00    	imul   $0x8410,%eax,%eax
  808711:	89 44 24 10          	mov    %eax,0x10(%rsp)
  808715:	8b 44 24 24          	mov    0x24(%rsp),%eax
  808719:	69 c0 f0 95 00 00    	imul   $0x95f0,%eax,%eax
  80871f:	89 44 24 24          	mov    %eax,0x24(%rsp)
  808723:	8b 44 24 24          	mov    0x24(%rsp),%eax
  808727:	69 c0 91 cd 00 00    	imul   $0xcd91,%eax,%eax
  80872d:	89 44 24 24          	mov    %eax,0x24(%rsp)
  808731:	8b 44 24 20          	mov    0x20(%rsp),%eax
  808735:	69 c0 fc a4 00 00    	imul   $0xa4fc,%eax,%eax
  80873b:	89 44 24 20          	mov    %eax,0x20(%rsp)
  80873f:	8b 44 24 14          	mov    0x14(%rsp),%eax
  808743:	69 c0 f5 0e 00 00    	imul   $0xef5,%eax,%eax
  808749:	89 44 24 14          	mov    %eax,0x14(%rsp)
  80874d:	8b 44 24 14          	mov    0x14(%rsp),%eax
  808751:	69 c0 aa ff 00 00    	imul   $0xffaa,%eax,%eax
  808757:	89 44 24 14          	mov    %eax,0x14(%rsp)
  80875b:	8b 44 24 10          	mov    0x10(%rsp),%eax
  80875f:	69 c0 4d 4b 00 00    	imul   $0x4b4d,%eax,%eax
  808765:	89 44 24 10          	mov    %eax,0x10(%rsp)
  808769:	8b 44 24 1c          	mov    0x1c(%rsp),%eax
  80876d:	69 c0 b9 e4 00 00    	imul   $0xe4b9,%eax,%eax
  808773:	89 44 24 1c          	mov    %eax,0x1c(%rsp)
  808777:	8b 44 24 18          	mov    0x18(%rsp),%eax
  80877b:	69 c0 07 1a 00 00    	imul   $0x1a07,%eax,%eax
  808781:	89 44 24 18          	mov    %eax,0x18(%rsp)
  808785:	8b 44 24 08          	mov    0x8(%rsp),%eax
  808789:	69 c0 ca ea 00 00    	imul   $0xeaca,%eax,%eax
  80878f:	89 44 24 08          	mov    %eax,0x8(%rsp)
  808793:	8b 44 24 10          	mov    0x10(%rsp),%eax
  808797:	69 c0 f1 b8 00 00    	imul   $0xb8f1,%eax,%eax
  80879d:	89 44 24 10          	mov    %eax,0x10(%rsp)
  8087a1:	8b 44 24 1c          	mov    0x1c(%rsp),%eax
  8087a5:	69 c0 9b fb 00 00    	imul   $0xfb9b,%eax,%eax
  8087ab:	89 44 24 1c          	mov    %eax,0x1c(%rsp)
  8087af:	8b 04 24             	mov    (%rsp),%eax
  8087b2:	69 c0 18 43 00 00    	imul   $0x4318,%eax,%eax
  8087b8:	89 04 24             	mov    %eax,(%rsp)
  8087bb:	8b 44 24 1c          	mov    0x1c(%rsp),%eax
  8087bf:	69 c0 a0 a2 00 00    	imul   $0xa2a0,%eax,%eax
  8087c5:	89 44 24 1c          	mov    %eax,0x1c(%rsp)
  8087c9:	8b 44 24 08          	mov    0x8(%rsp),%eax
  8087cd:	69 c0 dc 89 00 00    	imul   $0x89dc,%eax,%eax
  8087d3:	89 44 24 08          	mov    %eax,0x8(%rsp)
  8087d7:	8b 44 24 20          	mov    0x20(%rsp),%eax
  8087db:	69 c0 74 f1 00 00    	imul   $0xf174,%eax,%eax
  8087e1:	89 44 24 20          	mov    %eax,0x20(%rsp)
  8087e5:	8b 44 24 20          	mov    0x20(%rsp),%eax
  8087e9:	6b c0 68             	imul   $0x68,%eax,%eax
  8087ec:	89 44 24 20          	mov    %eax,0x20(%rsp)
  8087f0:	8b 44 24 24          	mov    0x24(%rsp),%eax
  8087f4:	69 c0 7c a4 00 00    	imul   $0xa47c,%eax,%eax
  8087fa:	89 44 24 24          	mov    %eax,0x24(%rsp)
  8087fe:	8b 44 24 18          	mov    0x18(%rsp),%eax
  808802:	69 c0 72 dc 00 00    	imul   $0xdc72,%eax,%eax
  808808:	89 44 24 18          	mov    %eax,0x18(%rsp)
  80880c:	8b 44 24 0c          	mov    0xc(%rsp),%eax
  808810:	69 c0 8a 4f 00 00    	imul   $0x4f8a,%eax,%eax
  808816:	89 44 24 0c          	mov    %eax,0xc(%rsp)
  80881a:	8b 44 24 10          	mov    0x10(%rsp),%eax
  80881e:	69 c0 a1 dc 00 00    	imul   $0xdca1,%eax,%eax
  808824:	89 44 24 10          	mov    %eax,0x10(%rsp)
  808828:	8b 44 24 24          	mov    0x24(%rsp),%eax
  80882c:	69 c0 f4 aa 00 00    	imul   $0xaaf4,%eax,%eax
  808832:	89 44 24 24          	mov    %eax,0x24(%rsp)
  808836:	8b 44 24 20          	mov    0x20(%rsp),%eax
  80883a:	69 c0 3c 96 00 00    	imul   $0x963c,%eax,%eax
  808840:	89 44 24 20          	mov    %eax,0x20(%rsp)
  808844:	8b 44 24 1c          	mov    0x1c(%rsp),%eax
  808848:	69 c0 c8 0a 00 00    	imul   $0xac8,%eax,%eax
  80884e:	89 44 24 1c          	mov    %eax,0x1c(%rsp)
  808852:	8b 44 24 10          	mov    0x10(%rsp),%eax
  808856:	69 c0 62 f2 00 00    	imul   $0xf262,%eax,%eax
  80885c:	89 44 24 10          	mov    %eax,0x10(%rsp)
  808860:	8b 44 24 14          	mov    0x14(%rsp),%eax
  808864:	69 c0 38 1d 00 00    	imul   $0x1d38,%eax,%eax
  80886a:	89 44 24 14          	mov    %eax,0x14(%rsp)
  80886e:	8b 44 24 04          	mov    0x4(%rsp),%eax
  808872:	69 c0 79 7a 00 00    	imul   $0x7a79,%eax,%eax
  808878:	89 44 24 04          	mov    %eax,0x4(%rsp)
  80887c:	8b 44 24 04          	mov    0x4(%rsp),%eax
  808880:	69 c0 15 3b 00 00    	imul   $0x3b15,%eax,%eax
  808886:	89 44 24 04          	mov    %eax,0x4(%rsp)
  80888a:	ba 00 00 00 00       	mov    $0x0,%edx
  80888f:	b8 00 00 00 00       	mov    $0x0,%eax
  808894:	eb 0a                	jmp    8088a0 <scramble+0x434>
  808896:	89 d1                	mov    %edx,%ecx
  808898:	8b 0c 8c             	mov    (%rsp,%rcx,4),%ecx
  80889b:	01 c8                	add    %ecx,%eax
  80889d:	83 c2 01             	add    $0x1,%edx
  8088a0:	83 fa 09             	cmp    $0x9,%edx
  8088a3:	76 f1                	jbe    808896 <scramble+0x42a>
  8088a5:	48 8b 74 24 28       	mov    0x28(%rsp),%rsi
  8088aa:	64 48 33 34 25 28 00 	xor    %fs:0x28,%rsi
  8088b1:	00 00 
  8088b3:	75 05                	jne    8088ba <scramble+0x44e>
  8088b5:	48 83 c4 38          	add    $0x38,%rsp
  8088b9:	c3                   	retq   
  8088ba:	e8 21 84 bf ff       	callq  400ce0 <__stack_chk_fail@plt>

00000000008088bf <getbuf>:
  8088bf:	48 83 ec 18          	sub    $0x18,%rsp
  8088c3:	48 89 e7             	mov    %rsp,%rdi
  8088c6:	e8 bc 03 00 00       	callq  808c87 <Gets>
  8088cb:	b8 01 00 00 00       	mov    $0x1,%eax
  8088d0:	48 83 c4 18          	add    $0x18,%rsp
  8088d4:	c3                   	retq   

00000000008088d5 <touch1>:
  8088d5:	48 83 ec 08          	sub    $0x8,%rsp
  8088d9:	c7 05 19 3c 20 00 01 	movl   $0x1,0x203c19(%rip)        # a0c4fc <vlevel>
  8088e0:	00 00 00 
  8088e3:	48 8d 3d 51 1a 00 00 	lea    0x1a51(%rip),%rdi        # 80a33b <_IO_stdin_used+0x27b>
  8088ea:	e8 d1 83 bf ff       	callq  400cc0 <puts@plt>
  8088ef:	bf 01 00 00 00       	mov    $0x1,%edi
  8088f4:	e8 05 06 00 00       	callq  808efe <validate>
  8088f9:	bf 00 00 00 00       	mov    $0x0,%edi
  8088fe:	e8 1d 85 bf ff       	callq  400e20 <exit@plt>

0000000000808903 <touch2>:
  808903:	48 83 ec 08          	sub    $0x8,%rsp
  808907:	89 fa                	mov    %edi,%edx
  808909:	c7 05 e9 3b 20 00 02 	movl   $0x2,0x203be9(%rip)        # a0c4fc <vlevel>
  808910:	00 00 00 
  808913:	39 3d eb 3b 20 00    	cmp    %edi,0x203beb(%rip)        # a0c504 <cookie>
  808919:	74 2a                	je     808945 <touch2+0x42>
  80891b:	48 8d 35 66 1a 00 00 	lea    0x1a66(%rip),%rsi        # 80a388 <_IO_stdin_used+0x2c8>
  808922:	bf 01 00 00 00       	mov    $0x1,%edi
  808927:	b8 00 00 00 00       	mov    $0x0,%eax
  80892c:	e8 af 84 bf ff       	callq  400de0 <__printf_chk@plt>
  808931:	bf 02 00 00 00       	mov    $0x2,%edi
  808936:	e8 93 06 00 00       	callq  808fce <fail>
  80893b:	bf 00 00 00 00       	mov    $0x0,%edi
  808940:	e8 db 84 bf ff       	callq  400e20 <exit@plt>
  808945:	48 8d 35 14 1a 00 00 	lea    0x1a14(%rip),%rsi        # 80a360 <_IO_stdin_used+0x2a0>
  80894c:	bf 01 00 00 00       	mov    $0x1,%edi
  808951:	b8 00 00 00 00       	mov    $0x0,%eax
  808956:	e8 85 84 bf ff       	callq  400de0 <__printf_chk@plt>
  80895b:	bf 02 00 00 00       	mov    $0x2,%edi
  808960:	e8 99 05 00 00       	callq  808efe <validate>
  808965:	eb d4                	jmp    80893b <touch2+0x38>

0000000000808967 <hexmatch>:
  808967:	41 54                	push   %r12
  808969:	55                   	push   %rbp
  80896a:	53                   	push   %rbx
  80896b:	48 83 c4 80          	add    $0xffffffffffffff80,%rsp
  80896f:	89 fd                	mov    %edi,%ebp
  808971:	48 89 f3             	mov    %rsi,%rbx
  808974:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
  80897b:	00 00 
  80897d:	48 89 44 24 78       	mov    %rax,0x78(%rsp)
  808982:	31 c0                	xor    %eax,%eax
  808984:	e8 17 84 bf ff       	callq  400da0 <random@plt>
  808989:	48 89 c1             	mov    %rax,%rcx
  80898c:	48 ba 0b d7 a3 70 3d 	movabs $0xa3d70a3d70a3d70b,%rdx
  808993:	0a d7 a3 
  808996:	48 f7 ea             	imul   %rdx
  808999:	48 01 ca             	add    %rcx,%rdx
  80899c:	48 c1 fa 06          	sar    $0x6,%rdx
  8089a0:	48 89 c8             	mov    %rcx,%rax
  8089a3:	48 c1 f8 3f          	sar    $0x3f,%rax
  8089a7:	48 29 c2             	sub    %rax,%rdx
  8089aa:	48 8d 04 92          	lea    (%rdx,%rdx,4),%rax
  8089ae:	48 8d 14 80          	lea    (%rax,%rax,4),%rdx
  8089b2:	48 8d 04 95 00 00 00 	lea    0x0(,%rdx,4),%rax
  8089b9:	00 
  8089ba:	48 29 c1             	sub    %rax,%rcx
  8089bd:	4c 8d 24 0c          	lea    (%rsp,%rcx,1),%r12
  8089c1:	41 89 e8             	mov    %ebp,%r8d
  8089c4:	48 8d 0d 8d 19 00 00 	lea    0x198d(%rip),%rcx        # 80a358 <_IO_stdin_used+0x298>
  8089cb:	48 c7 c2 ff ff ff ff 	mov    $0xffffffffffffffff,%rdx
  8089d2:	be 01 00 00 00       	mov    $0x1,%esi
  8089d7:	4c 89 e7             	mov    %r12,%rdi
  8089da:	b8 00 00 00 00       	mov    $0x0,%eax
  8089df:	e8 6c 84 bf ff       	callq  400e50 <__sprintf_chk@plt>
  8089e4:	ba 09 00 00 00       	mov    $0x9,%edx
  8089e9:	4c 89 e6             	mov    %r12,%rsi
  8089ec:	48 89 df             	mov    %rbx,%rdi
  8089ef:	e8 ac 82 bf ff       	callq  400ca0 <strncmp@plt>
  8089f4:	85 c0                	test   %eax,%eax
  8089f6:	0f 94 c0             	sete   %al
  8089f9:	48 8b 5c 24 78       	mov    0x78(%rsp),%rbx
  8089fe:	64 48 33 1c 25 28 00 	xor    %fs:0x28,%rbx
  808a05:	00 00 
  808a07:	75 0c                	jne    808a15 <hexmatch+0xae>
  808a09:	0f b6 c0             	movzbl %al,%eax
  808a0c:	48 83 ec 80          	sub    $0xffffffffffffff80,%rsp
  808a10:	5b                   	pop    %rbx
  808a11:	5d                   	pop    %rbp
  808a12:	41 5c                	pop    %r12
  808a14:	c3                   	retq   
  808a15:	e8 c6 82 bf ff       	callq  400ce0 <__stack_chk_fail@plt>

0000000000808a1a <touch3>:
  808a1a:	53                   	push   %rbx
  808a1b:	48 89 fb             	mov    %rdi,%rbx
  808a1e:	c7 05 d4 3a 20 00 03 	movl   $0x3,0x203ad4(%rip)        # a0c4fc <vlevel>
  808a25:	00 00 00 
  808a28:	48 89 fe             	mov    %rdi,%rsi
  808a2b:	8b 3d d3 3a 20 00    	mov    0x203ad3(%rip),%edi        # a0c504 <cookie>
  808a31:	e8 31 ff ff ff       	callq  808967 <hexmatch>
  808a36:	85 c0                	test   %eax,%eax
  808a38:	74 2d                	je     808a67 <touch3+0x4d>
  808a3a:	48 89 da             	mov    %rbx,%rdx
  808a3d:	48 8d 35 6c 19 00 00 	lea    0x196c(%rip),%rsi        # 80a3b0 <_IO_stdin_used+0x2f0>
  808a44:	bf 01 00 00 00       	mov    $0x1,%edi
  808a49:	b8 00 00 00 00       	mov    $0x0,%eax
  808a4e:	e8 8d 83 bf ff       	callq  400de0 <__printf_chk@plt>
  808a53:	bf 03 00 00 00       	mov    $0x3,%edi
  808a58:	e8 a1 04 00 00       	callq  808efe <validate>
  808a5d:	bf 00 00 00 00       	mov    $0x0,%edi
  808a62:	e8 b9 83 bf ff       	callq  400e20 <exit@plt>
  808a67:	48 89 da             	mov    %rbx,%rdx
  808a6a:	48 8d 35 67 19 00 00 	lea    0x1967(%rip),%rsi        # 80a3d8 <_IO_stdin_used+0x318>
  808a71:	bf 01 00 00 00       	mov    $0x1,%edi
  808a76:	b8 00 00 00 00       	mov    $0x0,%eax
  808a7b:	e8 60 83 bf ff       	callq  400de0 <__printf_chk@plt>
  808a80:	bf 03 00 00 00       	mov    $0x3,%edi
  808a85:	e8 44 05 00 00       	callq  808fce <fail>
  808a8a:	eb d1                	jmp    808a5d <touch3+0x43>

0000000000808a8c <test>:
  808a8c:	48 83 ec 08          	sub    $0x8,%rsp
  808a90:	b8 00 00 00 00       	mov    $0x0,%eax
  808a95:	e8 25 fe ff ff       	callq  8088bf <getbuf>
  808a9a:	89 c2                	mov    %eax,%edx
  808a9c:	48 8d 35 5d 19 00 00 	lea    0x195d(%rip),%rsi        # 80a400 <_IO_stdin_used+0x340>
  808aa3:	bf 01 00 00 00       	mov    $0x1,%edi
  808aa8:	b8 00 00 00 00       	mov    $0x0,%eax
  808aad:	e8 2e 83 bf ff       	callq  400de0 <__printf_chk@plt>
  808ab2:	48 83 c4 08          	add    $0x8,%rsp
  808ab6:	c3                   	retq   

0000000000808ab7 <start_farm>:
  808ab7:	b8 01 00 00 00       	mov    $0x1,%eax
  808abc:	c3                   	retq   

0000000000808abd <addval_482>:
  808abd:	8d 87 58 91 90 c3    	lea    -0x3c6f6ea8(%rdi),%eax
  808ac3:	c3                   	retq   

0000000000808ac4 <getval_254>:
  808ac4:	b8 b1 54 cf 58       	mov    $0x58cf54b1,%eax
  808ac9:	c3                   	retq   

0000000000808aca <addval_196>:
  808aca:	8d 87 48 8b c7 c3    	lea    -0x3c3874b8(%rdi),%eax
  808ad0:	c3                   	retq   

0000000000808ad1 <setval_499>:
  808ad1:	c7 07 48 89 c7 c3    	movl   $0xc3c78948,(%rdi)
  808ad7:	c3                   	retq   

0000000000808ad8 <addval_191>:
  808ad8:	8d 87 48 89 c7 c3    	lea    -0x3c3876b8(%rdi),%eax
  808ade:	c3                   	retq   

0000000000808adf <addval_473>:
  808adf:	8d 87 48 89 c7 c2    	lea    -0x3d3876b8(%rdi),%eax
  808ae5:	c3                   	retq   

0000000000808ae6 <addval_229>:
  808ae6:	8d 87 58 91 90 90    	lea    -0x6f6f6ea8(%rdi),%eax
  808aec:	c3                   	retq   

0000000000808aed <setval_327>:
  808aed:	c7 07 bf 17 58 90    	movl   $0x905817bf,(%rdi)
  808af3:	c3                   	retq   

0000000000808af4 <mid_farm>:
  808af4:	b8 01 00 00 00       	mov    $0x1,%eax
  808af9:	c3                   	retq   

0000000000808afa <add_xy>:
  808afa:	48 8d 04 37          	lea    (%rdi,%rsi,1),%rax
  808afe:	c3                   	retq   

0000000000808aff <getval_234>:
  808aff:	b8 89 ce c4 db       	mov    $0xdbc4ce89,%eax
  808b04:	c3                   	retq   

0000000000808b05 <addval_477>:
  808b05:	8d 87 48 89 e0 c2    	lea    -0x3d1f76b8(%rdi),%eax
  808b0b:	c3                   	retq   

0000000000808b0c <setval_295>:
  808b0c:	c7 07 a3 89 c2 94    	movl   $0x94c289a3,(%rdi)
  808b12:	c3                   	retq   

0000000000808b13 <addval_475>:
  808b13:	8d 87 48 99 e0 c3    	lea    -0x3c1f66b8(%rdi),%eax
  808b19:	c3                   	retq   

0000000000808b1a <addval_126>:
  808b1a:	8d 87 89 d1 91 90    	lea    -0x6f6e2e77(%rdi),%eax
  808b20:	c3                   	retq   

0000000000808b21 <addval_172>:
  808b21:	8d 87 48 89 e0 c3    	lea    -0x3c1f76b8(%rdi),%eax
  808b27:	c3                   	retq   

0000000000808b28 <addval_446>:
  808b28:	8d 87 88 d1 38 c0    	lea    -0x3fc72e78(%rdi),%eax
  808b2e:	c3                   	retq   

0000000000808b2f <setval_160>:
  808b2f:	c7 07 8d d1 c3 09    	movl   $0x9c3d18d,(%rdi)
  808b35:	c3                   	retq   

0000000000808b36 <addval_317>:
  808b36:	8d 87 89 c2 20 c9    	lea    -0x36df3d77(%rdi),%eax
  808b3c:	c3                   	retq   

0000000000808b3d <addval_101>:
  808b3d:	8d 87 c9 ce 38 d2    	lea    -0x2dc73137(%rdi),%eax
  808b43:	c3                   	retq   

0000000000808b44 <addval_289>:
  808b44:	8d 87 89 d1 08 d2    	lea    -0x2df72e77(%rdi),%eax
  808b4a:	c3                   	retq   

0000000000808b4b <setval_157>:
  808b4b:	c7 07 48 89 e0 c3    	movl   $0xc3e08948,(%rdi)
  808b51:	c3                   	retq   

0000000000808b52 <getval_181>:
  808b52:	b8 08 89 e0 c3       	mov    $0xc3e08908,%eax
  808b57:	c3                   	retq   

0000000000808b58 <setval_285>:
  808b58:	c7 07 89 ce a4 db    	movl   $0xdba4ce89,(%rdi)
  808b5e:	c3                   	retq   

0000000000808b5f <setval_201>:
  808b5f:	c7 07 89 ce 20 d2    	movl   $0xd220ce89,(%rdi)
  808b65:	c3                   	retq   

0000000000808b66 <getval_263>:
  808b66:	b8 a9 d1 38 d2       	mov    $0xd238d1a9,%eax
  808b6b:	c3                   	retq   

0000000000808b6c <setval_258>:
  808b6c:	c7 07 68 89 e0 90    	movl   $0x90e08968,(%rdi)
  808b72:	c3                   	retq   

0000000000808b73 <setval_273>:
  808b73:	c7 07 89 c2 90 c3    	movl   $0xc390c289,(%rdi)
  808b79:	c3                   	retq   

0000000000808b7a <getval_474>:
  808b7a:	b8 89 d1 c4 d2       	mov    $0xd2c4d189,%eax
  808b7f:	c3                   	retq   

0000000000808b80 <addval_452>:
  808b80:	8d 87 09 ce 38 d2    	lea    -0x2dc731f7(%rdi),%eax
  808b86:	c3                   	retq   

0000000000808b87 <setval_498>:
  808b87:	c7 07 e6 89 ce c2    	movl   $0xc2ce89e6,(%rdi)
  808b8d:	c3                   	retq   

0000000000808b8e <addval_462>:
  808b8e:	8d 87 c9 c2 08 c9    	lea    -0x36f73d37(%rdi),%eax
  808b94:	c3                   	retq   

0000000000808b95 <setval_494>:
  808b95:	c7 07 89 d1 38 c9    	movl   $0xc938d189,(%rdi)
  808b9b:	c3                   	retq   

0000000000808b9c <setval_369>:
  808b9c:	c7 07 09 c2 08 db    	movl   $0xdb08c209,(%rdi)
  808ba2:	c3                   	retq   

0000000000808ba3 <getval_478>:
  808ba3:	b8 89 c2 c4 db       	mov    $0xdbc4c289,%eax
  808ba8:	c3                   	retq   

0000000000808ba9 <addval_414>:
  808ba9:	8d 87 89 c2 48 c0    	lea    -0x3fb73d77(%rdi),%eax
  808baf:	c3                   	retq   

0000000000808bb0 <setval_318>:
  808bb0:	c7 07 48 89 e0 91    	movl   $0x91e08948,(%rdi)
  808bb6:	c3                   	retq   

0000000000808bb7 <setval_441>:
  808bb7:	c7 07 89 d1 91 90    	movl   $0x9091d189,(%rdi)
  808bbd:	c3                   	retq   

0000000000808bbe <setval_315>:
  808bbe:	c7 07 09 c2 08 c9    	movl   $0xc908c209,(%rdi)
  808bc4:	c3                   	retq   

0000000000808bc5 <addval_407>:
  808bc5:	8d 87 48 89 e0 92    	lea    -0x6d1f76b8(%rdi),%eax
  808bcb:	c3                   	retq   

0000000000808bcc <setval_233>:
  808bcc:	c7 07 a9 ce 84 d2    	movl   $0xd284cea9,(%rdi)
  808bd2:	c3                   	retq   

0000000000808bd3 <getval_461>:
  808bd3:	b8 77 89 ce c3       	mov    $0xc3ce8977,%eax
  808bd8:	c3                   	retq   

0000000000808bd9 <end_farm>:
  808bd9:	b8 01 00 00 00       	mov    $0x1,%eax
  808bde:	c3                   	retq   

0000000000808bdf <save_char>:
  808bdf:	8b 05 3f 45 20 00    	mov    0x20453f(%rip),%eax        # a0d124 <gets_cnt>
  808be5:	3d ff 03 00 00       	cmp    $0x3ff,%eax
  808bea:	7f 4a                	jg     808c36 <save_char+0x57>
  808bec:	89 f9                	mov    %edi,%ecx
  808bee:	c0 e9 04             	shr    $0x4,%cl
  808bf1:	8d 14 40             	lea    (%rax,%rax,2),%edx
  808bf4:	4c 8d 05 25 1b 00 00 	lea    0x1b25(%rip),%r8        # 80a720 <trans_char>
  808bfb:	83 e1 0f             	and    $0xf,%ecx
  808bfe:	45 0f b6 0c 08       	movzbl (%r8,%rcx,1),%r9d
  808c03:	48 8d 0d 16 39 20 00 	lea    0x203916(%rip),%rcx        # a0c520 <gets_buf>
  808c0a:	48 63 f2             	movslq %edx,%rsi
  808c0d:	44 88 0c 31          	mov    %r9b,(%rcx,%rsi,1)
  808c11:	8d 72 01             	lea    0x1(%rdx),%esi
  808c14:	83 e7 0f             	and    $0xf,%edi
  808c17:	41 0f b6 3c 38       	movzbl (%r8,%rdi,1),%edi
  808c1c:	48 63 f6             	movslq %esi,%rsi
  808c1f:	40 88 3c 31          	mov    %dil,(%rcx,%rsi,1)
  808c23:	83 c2 02             	add    $0x2,%edx
  808c26:	48 63 d2             	movslq %edx,%rdx
  808c29:	c6 04 11 20          	movb   $0x20,(%rcx,%rdx,1)
  808c2d:	83 c0 01             	add    $0x1,%eax
  808c30:	89 05 ee 44 20 00    	mov    %eax,0x2044ee(%rip)        # a0d124 <gets_cnt>
  808c36:	f3 c3                	repz retq 

0000000000808c38 <save_term>:
  808c38:	8b 05 e6 44 20 00    	mov    0x2044e6(%rip),%eax        # a0d124 <gets_cnt>
  808c3e:	8d 04 40             	lea    (%rax,%rax,2),%eax
  808c41:	48 98                	cltq   
  808c43:	48 8d 15 d6 38 20 00 	lea    0x2038d6(%rip),%rdx        # a0c520 <gets_buf>
  808c4a:	c6 04 02 00          	movb   $0x0,(%rdx,%rax,1)
  808c4e:	c3                   	retq   

0000000000808c4f <check_fail>:
  808c4f:	48 83 ec 08          	sub    $0x8,%rsp
  808c53:	0f be 15 d6 44 20 00 	movsbl 0x2044d6(%rip),%edx        # a0d130 <target_prefix>
  808c5a:	4c 8d 05 bf 38 20 00 	lea    0x2038bf(%rip),%r8        # a0c520 <gets_buf>
  808c61:	8b 0d 91 38 20 00    	mov    0x203891(%rip),%ecx        # a0c4f8 <check_level>
  808c67:	48 8d 35 b5 17 00 00 	lea    0x17b5(%rip),%rsi        # 80a423 <_IO_stdin_used+0x363>
  808c6e:	bf 01 00 00 00       	mov    $0x1,%edi
  808c73:	b8 00 00 00 00       	mov    $0x0,%eax
  808c78:	e8 63 81 bf ff       	callq  400de0 <__printf_chk@plt>
  808c7d:	bf 01 00 00 00       	mov    $0x1,%edi
  808c82:	e8 99 81 bf ff       	callq  400e20 <exit@plt>

0000000000808c87 <Gets>:
  808c87:	41 54                	push   %r12
  808c89:	55                   	push   %rbp
  808c8a:	53                   	push   %rbx
  808c8b:	49 89 fc             	mov    %rdi,%r12
  808c8e:	c7 05 8c 44 20 00 00 	movl   $0x0,0x20448c(%rip)        # a0d124 <gets_cnt>
  808c95:	00 00 00 
  808c98:	48 89 fb             	mov    %rdi,%rbx
  808c9b:	eb 11                	jmp    808cae <Gets+0x27>
  808c9d:	48 8d 6b 01          	lea    0x1(%rbx),%rbp
  808ca1:	88 03                	mov    %al,(%rbx)
  808ca3:	0f b6 f8             	movzbl %al,%edi
  808ca6:	e8 34 ff ff ff       	callq  808bdf <save_char>
  808cab:	48 89 eb             	mov    %rbp,%rbx
  808cae:	48 8b 3d 3b 38 20 00 	mov    0x20383b(%rip),%rdi        # a0c4f0 <infile>
  808cb5:	e8 f6 80 bf ff       	callq  400db0 <_IO_getc@plt>
  808cba:	83 f8 ff             	cmp    $0xffffffff,%eax
  808cbd:	74 05                	je     808cc4 <Gets+0x3d>
  808cbf:	83 f8 0a             	cmp    $0xa,%eax
  808cc2:	75 d9                	jne    808c9d <Gets+0x16>
  808cc4:	c6 03 00             	movb   $0x0,(%rbx)
  808cc7:	b8 00 00 00 00       	mov    $0x0,%eax
  808ccc:	e8 67 ff ff ff       	callq  808c38 <save_term>
  808cd1:	4c 89 e0             	mov    %r12,%rax
  808cd4:	5b                   	pop    %rbx
  808cd5:	5d                   	pop    %rbp
  808cd6:	41 5c                	pop    %r12
  808cd8:	c3                   	retq   

0000000000808cd9 <notify_server>:
  808cd9:	55                   	push   %rbp
  808cda:	53                   	push   %rbx
  808cdb:	48 81 ec 18 40 00 00 	sub    $0x4018,%rsp
  808ce2:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
  808ce9:	00 00 
  808ceb:	48 89 84 24 08 40 00 	mov    %rax,0x4008(%rsp)
  808cf2:	00 
  808cf3:	31 c0                	xor    %eax,%eax
  808cf5:	83 3d 0c 38 20 00 00 	cmpl   $0x0,0x20380c(%rip)        # a0c508 <is_checker>
  808cfc:	0f 85 d9 00 00 00    	jne    808ddb <notify_server+0x102>
  808d02:	89 fb                	mov    %edi,%ebx
  808d04:	8b 05 1a 44 20 00    	mov    0x20441a(%rip),%eax        # a0d124 <gets_cnt>
  808d0a:	83 c0 64             	add    $0x64,%eax
  808d0d:	3d 00 20 00 00       	cmp    $0x2000,%eax
  808d12:	0f 8f e4 00 00 00    	jg     808dfc <notify_server+0x123>
  808d18:	0f be 05 11 44 20 00 	movsbl 0x204411(%rip),%eax        # a0d130 <target_prefix>
  808d1f:	83 3d 62 37 20 00 00 	cmpl   $0x0,0x203762(%rip)        # a0c488 <notify>
  808d26:	0f 84 f0 00 00 00    	je     808e1c <notify_server+0x143>
  808d2c:	8b 15 ce 37 20 00    	mov    0x2037ce(%rip),%edx        # a0c500 <authkey>
  808d32:	85 db                	test   %ebx,%ebx
  808d34:	0f 84 ec 00 00 00    	je     808e26 <notify_server+0x14d>
  808d3a:	48 8d 2d f8 16 00 00 	lea    0x16f8(%rip),%rbp        # 80a439 <_IO_stdin_used+0x379>
  808d41:	48 89 e7             	mov    %rsp,%rdi
  808d44:	48 83 ec 08          	sub    $0x8,%rsp
  808d48:	48 8d 0d d1 37 20 00 	lea    0x2037d1(%rip),%rcx        # a0c520 <gets_buf>
  808d4f:	51                   	push   %rcx
  808d50:	56                   	push   %rsi
  808d51:	50                   	push   %rax
  808d52:	52                   	push   %rdx
  808d53:	55                   	push   %rbp
  808d54:	44 8b 0d d5 33 20 00 	mov    0x2033d5(%rip),%r9d        # a0c130 <target_id>
  808d5b:	4c 8d 05 e1 16 00 00 	lea    0x16e1(%rip),%r8        # 80a443 <_IO_stdin_used+0x383>
  808d62:	b9 00 20 00 00       	mov    $0x2000,%ecx
  808d67:	ba 01 00 00 00       	mov    $0x1,%edx
  808d6c:	be 00 20 00 00       	mov    $0x2000,%esi
  808d71:	b8 00 00 00 00       	mov    $0x0,%eax
  808d76:	e8 f5 7e bf ff       	callq  400c70 <__snprintf_chk@plt>
  808d7b:	48 83 c4 30          	add    $0x30,%rsp
  808d7f:	83 3d 02 37 20 00 00 	cmpl   $0x0,0x203702(%rip)        # a0c488 <notify>
  808d86:	0f 84 df 00 00 00    	je     808e6b <notify_server+0x192>
  808d8c:	85 db                	test   %ebx,%ebx
  808d8e:	0f 84 c6 00 00 00    	je     808e5a <notify_server+0x181>
  808d94:	48 89 e1             	mov    %rsp,%rcx
  808d97:	4c 8d 8c 24 00 20 00 	lea    0x2000(%rsp),%r9
  808d9e:	00 
  808d9f:	41 b8 00 00 00 00    	mov    $0x0,%r8d
  808da5:	48 8b 15 9c 33 20 00 	mov    0x20339c(%rip),%rdx        # a0c148 <lab>
  808dac:	48 8b 35 cd 36 20 00 	mov    0x2036cd(%rip),%rsi        # a0c480 <course>
  808db3:	48 8b 3d 86 33 20 00 	mov    0x203386(%rip),%rdi        # a0c140 <user_id>
  808dba:	e8 af 11 00 00       	callq  809f6e <driver_post>
  808dbf:	85 c0                	test   %eax,%eax
  808dc1:	78 6f                	js     808e32 <notify_server+0x159>
  808dc3:	48 8d 3d be 17 00 00 	lea    0x17be(%rip),%rdi        # 80a588 <_IO_stdin_used+0x4c8>
  808dca:	e8 f1 7e bf ff       	callq  400cc0 <puts@plt>
  808dcf:	48 8d 3d 95 16 00 00 	lea    0x1695(%rip),%rdi        # 80a46b <_IO_stdin_used+0x3ab>
  808dd6:	e8 e5 7e bf ff       	callq  400cc0 <puts@plt>
  808ddb:	48 8b 84 24 08 40 00 	mov    0x4008(%rsp),%rax
  808de2:	00 
  808de3:	64 48 33 04 25 28 00 	xor    %fs:0x28,%rax
  808dea:	00 00 
  808dec:	0f 85 07 01 00 00    	jne    808ef9 <notify_server+0x220>
  808df2:	48 81 c4 18 40 00 00 	add    $0x4018,%rsp
  808df9:	5b                   	pop    %rbx
  808dfa:	5d                   	pop    %rbp
  808dfb:	c3                   	retq   
  808dfc:	48 8d 35 55 17 00 00 	lea    0x1755(%rip),%rsi        # 80a558 <_IO_stdin_used+0x498>
  808e03:	bf 01 00 00 00       	mov    $0x1,%edi
  808e08:	b8 00 00 00 00       	mov    $0x0,%eax
  808e0d:	e8 ce 7f bf ff       	callq  400de0 <__printf_chk@plt>
  808e12:	bf 01 00 00 00       	mov    $0x1,%edi
  808e17:	e8 04 80 bf ff       	callq  400e20 <exit@plt>
  808e1c:	ba ff ff ff ff       	mov    $0xffffffff,%edx
  808e21:	e9 0c ff ff ff       	jmpq   808d32 <notify_server+0x59>
  808e26:	48 8d 2d 11 16 00 00 	lea    0x1611(%rip),%rbp        # 80a43e <_IO_stdin_used+0x37e>
  808e2d:	e9 0f ff ff ff       	jmpq   808d41 <notify_server+0x68>
  808e32:	48 8d 94 24 00 20 00 	lea    0x2000(%rsp),%rdx
  808e39:	00 
  808e3a:	48 8d 35 1e 16 00 00 	lea    0x161e(%rip),%rsi        # 80a45f <_IO_stdin_used+0x39f>
  808e41:	bf 01 00 00 00       	mov    $0x1,%edi
  808e46:	b8 00 00 00 00       	mov    $0x0,%eax
  808e4b:	e8 90 7f bf ff       	callq  400de0 <__printf_chk@plt>
  808e50:	bf 01 00 00 00       	mov    $0x1,%edi
  808e55:	e8 c6 7f bf ff       	callq  400e20 <exit@plt>
  808e5a:	48 8d 3d 14 16 00 00 	lea    0x1614(%rip),%rdi        # 80a475 <_IO_stdin_used+0x3b5>
  808e61:	e8 5a 7e bf ff       	callq  400cc0 <puts@plt>
  808e66:	e9 70 ff ff ff       	jmpq   808ddb <notify_server+0x102>
  808e6b:	48 89 ea             	mov    %rbp,%rdx
  808e6e:	48 8d 35 4b 17 00 00 	lea    0x174b(%rip),%rsi        # 80a5c0 <_IO_stdin_used+0x500>
  808e75:	bf 01 00 00 00       	mov    $0x1,%edi
  808e7a:	b8 00 00 00 00       	mov    $0x0,%eax
  808e7f:	e8 5c 7f bf ff       	callq  400de0 <__printf_chk@plt>
  808e84:	48 8b 15 b5 32 20 00 	mov    0x2032b5(%rip),%rdx        # a0c140 <user_id>
  808e8b:	48 8d 35 ea 15 00 00 	lea    0x15ea(%rip),%rsi        # 80a47c <_IO_stdin_used+0x3bc>
  808e92:	bf 01 00 00 00       	mov    $0x1,%edi
  808e97:	b8 00 00 00 00       	mov    $0x0,%eax
  808e9c:	e8 3f 7f bf ff       	callq  400de0 <__printf_chk@plt>
  808ea1:	48 8b 15 d8 35 20 00 	mov    0x2035d8(%rip),%rdx        # a0c480 <course>
  808ea8:	48 8d 35 da 15 00 00 	lea    0x15da(%rip),%rsi        # 80a489 <_IO_stdin_used+0x3c9>
  808eaf:	bf 01 00 00 00       	mov    $0x1,%edi
  808eb4:	b8 00 00 00 00       	mov    $0x0,%eax
  808eb9:	e8 22 7f bf ff       	callq  400de0 <__printf_chk@plt>
  808ebe:	48 8b 15 83 32 20 00 	mov    0x203283(%rip),%rdx        # a0c148 <lab>
  808ec5:	48 8d 35 c9 15 00 00 	lea    0x15c9(%rip),%rsi        # 80a495 <_IO_stdin_used+0x3d5>
  808ecc:	bf 01 00 00 00       	mov    $0x1,%edi
  808ed1:	b8 00 00 00 00       	mov    $0x0,%eax
  808ed6:	e8 05 7f bf ff       	callq  400de0 <__printf_chk@plt>
  808edb:	48 89 e2             	mov    %rsp,%rdx
  808ede:	48 8d 35 b9 15 00 00 	lea    0x15b9(%rip),%rsi        # 80a49e <_IO_stdin_used+0x3de>
  808ee5:	bf 01 00 00 00       	mov    $0x1,%edi
  808eea:	b8 00 00 00 00       	mov    $0x0,%eax
  808eef:	e8 ec 7e bf ff       	callq  400de0 <__printf_chk@plt>
  808ef4:	e9 e2 fe ff ff       	jmpq   808ddb <notify_server+0x102>
  808ef9:	e8 e2 7d bf ff       	callq  400ce0 <__stack_chk_fail@plt>

0000000000808efe <validate>:
  808efe:	53                   	push   %rbx
  808eff:	89 fb                	mov    %edi,%ebx
  808f01:	83 3d 00 36 20 00 00 	cmpl   $0x0,0x203600(%rip)        # a0c508 <is_checker>
  808f08:	74 72                	je     808f7c <validate+0x7e>
  808f0a:	39 3d ec 35 20 00    	cmp    %edi,0x2035ec(%rip)        # a0c4fc <vlevel>
  808f10:	75 32                	jne    808f44 <validate+0x46>
  808f12:	8b 15 e0 35 20 00    	mov    0x2035e0(%rip),%edx        # a0c4f8 <check_level>
  808f18:	39 fa                	cmp    %edi,%edx
  808f1a:	75 3e                	jne    808f5a <validate+0x5c>
  808f1c:	0f be 15 0d 42 20 00 	movsbl 0x20420d(%rip),%edx        # a0d130 <target_prefix>
  808f23:	4c 8d 05 f6 35 20 00 	lea    0x2035f6(%rip),%r8        # a0c520 <gets_buf>
  808f2a:	89 f9                	mov    %edi,%ecx
  808f2c:	48 8d 35 95 15 00 00 	lea    0x1595(%rip),%rsi        # 80a4c8 <_IO_stdin_used+0x408>
  808f33:	bf 01 00 00 00       	mov    $0x1,%edi
  808f38:	b8 00 00 00 00       	mov    $0x0,%eax
  808f3d:	e8 9e 7e bf ff       	callq  400de0 <__printf_chk@plt>
  808f42:	5b                   	pop    %rbx
  808f43:	c3                   	retq   
  808f44:	48 8d 3d 5f 15 00 00 	lea    0x155f(%rip),%rdi        # 80a4aa <_IO_stdin_used+0x3ea>
  808f4b:	e8 70 7d bf ff       	callq  400cc0 <puts@plt>
  808f50:	b8 00 00 00 00       	mov    $0x0,%eax
  808f55:	e8 f5 fc ff ff       	callq  808c4f <check_fail>
  808f5a:	89 f9                	mov    %edi,%ecx
  808f5c:	48 8d 35 85 16 00 00 	lea    0x1685(%rip),%rsi        # 80a5e8 <_IO_stdin_used+0x528>
  808f63:	bf 01 00 00 00       	mov    $0x1,%edi
  808f68:	b8 00 00 00 00       	mov    $0x0,%eax
  808f6d:	e8 6e 7e bf ff       	callq  400de0 <__printf_chk@plt>
  808f72:	b8 00 00 00 00       	mov    $0x0,%eax
  808f77:	e8 d3 fc ff ff       	callq  808c4f <check_fail>
  808f7c:	39 3d 7a 35 20 00    	cmp    %edi,0x20357a(%rip)        # a0c4fc <vlevel>
  808f82:	74 1a                	je     808f9e <validate+0xa0>
  808f84:	48 8d 3d 1f 15 00 00 	lea    0x151f(%rip),%rdi        # 80a4aa <_IO_stdin_used+0x3ea>
  808f8b:	e8 30 7d bf ff       	callq  400cc0 <puts@plt>
  808f90:	89 de                	mov    %ebx,%esi
  808f92:	bf 00 00 00 00       	mov    $0x0,%edi
  808f97:	e8 3d fd ff ff       	callq  808cd9 <notify_server>
  808f9c:	eb a4                	jmp    808f42 <validate+0x44>
  808f9e:	0f be 0d 8b 41 20 00 	movsbl 0x20418b(%rip),%ecx        # a0d130 <target_prefix>
  808fa5:	89 fa                	mov    %edi,%edx
  808fa7:	48 8d 35 62 16 00 00 	lea    0x1662(%rip),%rsi        # 80a610 <_IO_stdin_used+0x550>
  808fae:	bf 01 00 00 00       	mov    $0x1,%edi
  808fb3:	b8 00 00 00 00       	mov    $0x0,%eax
  808fb8:	e8 23 7e bf ff       	callq  400de0 <__printf_chk@plt>
  808fbd:	89 de                	mov    %ebx,%esi
  808fbf:	bf 01 00 00 00       	mov    $0x1,%edi
  808fc4:	e8 10 fd ff ff       	callq  808cd9 <notify_server>
  808fc9:	e9 74 ff ff ff       	jmpq   808f42 <validate+0x44>

0000000000808fce <fail>:
  808fce:	48 83 ec 08          	sub    $0x8,%rsp
  808fd2:	83 3d 2f 35 20 00 00 	cmpl   $0x0,0x20352f(%rip)        # a0c508 <is_checker>
  808fd9:	75 11                	jne    808fec <fail+0x1e>
  808fdb:	89 fe                	mov    %edi,%esi
  808fdd:	bf 00 00 00 00       	mov    $0x0,%edi
  808fe2:	e8 f2 fc ff ff       	callq  808cd9 <notify_server>
  808fe7:	48 83 c4 08          	add    $0x8,%rsp
  808feb:	c3                   	retq   
  808fec:	b8 00 00 00 00       	mov    $0x0,%eax
  808ff1:	e8 59 fc ff ff       	callq  808c4f <check_fail>

0000000000808ff6 <bushandler>:
  808ff6:	48 83 ec 08          	sub    $0x8,%rsp
  808ffa:	83 3d 07 35 20 00 00 	cmpl   $0x0,0x203507(%rip)        # a0c508 <is_checker>
  809001:	74 16                	je     809019 <bushandler+0x23>
  809003:	48 8d 3d d3 14 00 00 	lea    0x14d3(%rip),%rdi        # 80a4dd <_IO_stdin_used+0x41d>
  80900a:	e8 b1 7c bf ff       	callq  400cc0 <puts@plt>
  80900f:	b8 00 00 00 00       	mov    $0x0,%eax
  809014:	e8 36 fc ff ff       	callq  808c4f <check_fail>
  809019:	48 8d 3d 28 16 00 00 	lea    0x1628(%rip),%rdi        # 80a648 <_IO_stdin_used+0x588>
  809020:	e8 9b 7c bf ff       	callq  400cc0 <puts@plt>
  809025:	48 8d 3d bb 14 00 00 	lea    0x14bb(%rip),%rdi        # 80a4e7 <_IO_stdin_used+0x427>
  80902c:	e8 8f 7c bf ff       	callq  400cc0 <puts@plt>
  809031:	be 00 00 00 00       	mov    $0x0,%esi
  809036:	bf 00 00 00 00       	mov    $0x0,%edi
  80903b:	e8 99 fc ff ff       	callq  808cd9 <notify_server>
  809040:	bf 01 00 00 00       	mov    $0x1,%edi
  809045:	e8 d6 7d bf ff       	callq  400e20 <exit@plt>

000000000080904a <seghandler>:
  80904a:	48 83 ec 08          	sub    $0x8,%rsp
  80904e:	83 3d b3 34 20 00 00 	cmpl   $0x0,0x2034b3(%rip)        # a0c508 <is_checker>
  809055:	74 16                	je     80906d <seghandler+0x23>
  809057:	48 8d 3d 9f 14 00 00 	lea    0x149f(%rip),%rdi        # 80a4fd <_IO_stdin_used+0x43d>
  80905e:	e8 5d 7c bf ff       	callq  400cc0 <puts@plt>
  809063:	b8 00 00 00 00       	mov    $0x0,%eax
  809068:	e8 e2 fb ff ff       	callq  808c4f <check_fail>
  80906d:	48 8d 3d f4 15 00 00 	lea    0x15f4(%rip),%rdi        # 80a668 <_IO_stdin_used+0x5a8>
  809074:	e8 47 7c bf ff       	callq  400cc0 <puts@plt>
  809079:	48 8d 3d 67 14 00 00 	lea    0x1467(%rip),%rdi        # 80a4e7 <_IO_stdin_used+0x427>
  809080:	e8 3b 7c bf ff       	callq  400cc0 <puts@plt>
  809085:	be 00 00 00 00       	mov    $0x0,%esi
  80908a:	bf 00 00 00 00       	mov    $0x0,%edi
  80908f:	e8 45 fc ff ff       	callq  808cd9 <notify_server>
  809094:	bf 01 00 00 00       	mov    $0x1,%edi
  809099:	e8 82 7d bf ff       	callq  400e20 <exit@plt>

000000000080909e <illegalhandler>:
  80909e:	48 83 ec 08          	sub    $0x8,%rsp
  8090a2:	83 3d 5f 34 20 00 00 	cmpl   $0x0,0x20345f(%rip)        # a0c508 <is_checker>
  8090a9:	74 16                	je     8090c1 <illegalhandler+0x23>
  8090ab:	48 8d 3d 5e 14 00 00 	lea    0x145e(%rip),%rdi        # 80a510 <_IO_stdin_used+0x450>
  8090b2:	e8 09 7c bf ff       	callq  400cc0 <puts@plt>
  8090b7:	b8 00 00 00 00       	mov    $0x0,%eax
  8090bc:	e8 8e fb ff ff       	callq  808c4f <check_fail>
  8090c1:	48 8d 3d c8 15 00 00 	lea    0x15c8(%rip),%rdi        # 80a690 <_IO_stdin_used+0x5d0>
  8090c8:	e8 f3 7b bf ff       	callq  400cc0 <puts@plt>
  8090cd:	48 8d 3d 13 14 00 00 	lea    0x1413(%rip),%rdi        # 80a4e7 <_IO_stdin_used+0x427>
  8090d4:	e8 e7 7b bf ff       	callq  400cc0 <puts@plt>
  8090d9:	be 00 00 00 00       	mov    $0x0,%esi
  8090de:	bf 00 00 00 00       	mov    $0x0,%edi
  8090e3:	e8 f1 fb ff ff       	callq  808cd9 <notify_server>
  8090e8:	bf 01 00 00 00       	mov    $0x1,%edi
  8090ed:	e8 2e 7d bf ff       	callq  400e20 <exit@plt>

00000000008090f2 <sigalrmhandler>:
  8090f2:	48 83 ec 08          	sub    $0x8,%rsp
  8090f6:	83 3d 0b 34 20 00 00 	cmpl   $0x0,0x20340b(%rip)        # a0c508 <is_checker>
  8090fd:	74 16                	je     809115 <sigalrmhandler+0x23>
  8090ff:	48 8d 3d 1e 14 00 00 	lea    0x141e(%rip),%rdi        # 80a524 <_IO_stdin_used+0x464>
  809106:	e8 b5 7b bf ff       	callq  400cc0 <puts@plt>
  80910b:	b8 00 00 00 00       	mov    $0x0,%eax
  809110:	e8 3a fb ff ff       	callq  808c4f <check_fail>
  809115:	ba 05 00 00 00       	mov    $0x5,%edx
  80911a:	48 8d 35 9f 15 00 00 	lea    0x159f(%rip),%rsi        # 80a6c0 <_IO_stdin_used+0x600>
  809121:	bf 01 00 00 00       	mov    $0x1,%edi
  809126:	b8 00 00 00 00       	mov    $0x0,%eax
  80912b:	e8 b0 7c bf ff       	callq  400de0 <__printf_chk@plt>
  809130:	be 00 00 00 00       	mov    $0x0,%esi
  809135:	bf 00 00 00 00       	mov    $0x0,%edi
  80913a:	e8 9a fb ff ff       	callq  808cd9 <notify_server>
  80913f:	bf 01 00 00 00       	mov    $0x1,%edi
  809144:	e8 d7 7c bf ff       	callq  400e20 <exit@plt>

0000000000809149 <launch>:
  809149:	55                   	push   %rbp
  80914a:	48 89 e5             	mov    %rsp,%rbp
  80914d:	48 83 ec 10          	sub    $0x10,%rsp
  809151:	48 89 fa             	mov    %rdi,%rdx
  809154:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
  80915b:	00 00 
  80915d:	48 89 45 f8          	mov    %rax,-0x8(%rbp)
  809161:	31 c0                	xor    %eax,%eax
  809163:	48 8d 47 1e          	lea    0x1e(%rdi),%rax
  809167:	48 83 e0 f0          	and    $0xfffffffffffffff0,%rax
  80916b:	48 29 c4             	sub    %rax,%rsp
  80916e:	48 8d 7c 24 0f       	lea    0xf(%rsp),%rdi
  809173:	48 83 e7 f0          	and    $0xfffffffffffffff0,%rdi
  809177:	be f4 00 00 00       	mov    $0xf4,%esi
  80917c:	e8 7f 7b bf ff       	callq  400d00 <memset@plt>
  809181:	48 8b 05 18 33 20 00 	mov    0x203318(%rip),%rax        # a0c4a0 <stdin@@GLIBC_2.2.5>
  809188:	48 39 05 61 33 20 00 	cmp    %rax,0x203361(%rip)        # a0c4f0 <infile>
  80918f:	74 3a                	je     8091cb <launch+0x82>
  809191:	c7 05 61 33 20 00 00 	movl   $0x0,0x203361(%rip)        # a0c4fc <vlevel>
  809198:	00 00 00 
  80919b:	b8 00 00 00 00       	mov    $0x0,%eax
  8091a0:	e8 e7 f8 ff ff       	callq  808a8c <test>
  8091a5:	83 3d 5c 33 20 00 00 	cmpl   $0x0,0x20335c(%rip)        # a0c508 <is_checker>
  8091ac:	75 35                	jne    8091e3 <launch+0x9a>
  8091ae:	48 8d 3d 8f 13 00 00 	lea    0x138f(%rip),%rdi        # 80a544 <_IO_stdin_used+0x484>
  8091b5:	e8 06 7b bf ff       	callq  400cc0 <puts@plt>
  8091ba:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
  8091be:	64 48 33 04 25 28 00 	xor    %fs:0x28,%rax
  8091c5:	00 00 
  8091c7:	75 30                	jne    8091f9 <launch+0xb0>
  8091c9:	c9                   	leaveq 
  8091ca:	c3                   	retq   
  8091cb:	48 8d 35 5a 13 00 00 	lea    0x135a(%rip),%rsi        # 80a52c <_IO_stdin_used+0x46c>
  8091d2:	bf 01 00 00 00       	mov    $0x1,%edi
  8091d7:	b8 00 00 00 00       	mov    $0x0,%eax
  8091dc:	e8 ff 7b bf ff       	callq  400de0 <__printf_chk@plt>
  8091e1:	eb ae                	jmp    809191 <launch+0x48>
  8091e3:	48 8d 3d 4f 13 00 00 	lea    0x134f(%rip),%rdi        # 80a539 <_IO_stdin_used+0x479>
  8091ea:	e8 d1 7a bf ff       	callq  400cc0 <puts@plt>
  8091ef:	b8 00 00 00 00       	mov    $0x0,%eax
  8091f4:	e8 56 fa ff ff       	callq  808c4f <check_fail>
  8091f9:	e8 e2 7a bf ff       	callq  400ce0 <__stack_chk_fail@plt>

00000000008091fe <stable_launch>:
  8091fe:	53                   	push   %rbx
  8091ff:	48 89 3d e2 32 20 00 	mov    %rdi,0x2032e2(%rip)        # a0c4e8 <global_offset>
  809206:	41 b9 00 00 00 00    	mov    $0x0,%r9d
  80920c:	41 b8 00 00 00 00    	mov    $0x0,%r8d
  809212:	b9 32 01 00 00       	mov    $0x132,%ecx
  809217:	ba 07 00 00 00       	mov    $0x7,%edx
  80921c:	be 00 00 10 00       	mov    $0x100000,%esi
  809221:	bf 00 60 58 55       	mov    $0x55586000,%edi
  809226:	e8 c5 7a bf ff       	callq  400cf0 <mmap@plt>
  80922b:	48 89 c3             	mov    %rax,%rbx
  80922e:	48 3d 00 60 58 55    	cmp    $0x55586000,%rax
  809234:	75 43                	jne    809279 <stable_launch+0x7b>
  809236:	48 8d 90 f8 ff 0f 00 	lea    0xffff8(%rax),%rdx
  80923d:	48 89 15 e4 3e 20 00 	mov    %rdx,0x203ee4(%rip)        # a0d128 <stack_top>
  809244:	48 89 e0             	mov    %rsp,%rax
  809247:	48 89 d4             	mov    %rdx,%rsp
  80924a:	48 89 c2             	mov    %rax,%rdx
  80924d:	48 89 15 8c 32 20 00 	mov    %rdx,0x20328c(%rip)        # a0c4e0 <global_save_stack>
  809254:	48 8b 3d 8d 32 20 00 	mov    0x20328d(%rip),%rdi        # a0c4e8 <global_offset>
  80925b:	e8 e9 fe ff ff       	callq  809149 <launch>
  809260:	48 8b 05 79 32 20 00 	mov    0x203279(%rip),%rax        # a0c4e0 <global_save_stack>
  809267:	48 89 c4             	mov    %rax,%rsp
  80926a:	be 00 00 10 00       	mov    $0x100000,%esi
  80926f:	48 89 df             	mov    %rbx,%rdi
  809272:	e8 59 7b bf ff       	callq  400dd0 <munmap@plt>
  809277:	5b                   	pop    %rbx
  809278:	c3                   	retq   
  809279:	be 00 00 10 00       	mov    $0x100000,%esi
  80927e:	48 89 c7             	mov    %rax,%rdi
  809281:	e8 4a 7b bf ff       	callq  400dd0 <munmap@plt>
  809286:	b9 00 60 58 55       	mov    $0x55586000,%ecx
  80928b:	48 8d 15 66 14 00 00 	lea    0x1466(%rip),%rdx        # 80a6f8 <_IO_stdin_used+0x638>
  809292:	be 01 00 00 00       	mov    $0x1,%esi
  809297:	48 8b 3d 22 32 20 00 	mov    0x203222(%rip),%rdi        # a0c4c0 <stderr@@GLIBC_2.2.5>
  80929e:	b8 00 00 00 00       	mov    $0x0,%eax
  8092a3:	e8 98 7b bf ff       	callq  400e40 <__fprintf_chk@plt>
  8092a8:	bf 01 00 00 00       	mov    $0x1,%edi
  8092ad:	e8 6e 7b bf ff       	callq  400e20 <exit@plt>

00000000008092b2 <rio_readinitb>:
  8092b2:	89 37                	mov    %esi,(%rdi)
  8092b4:	c7 47 04 00 00 00 00 	movl   $0x0,0x4(%rdi)
  8092bb:	48 8d 47 10          	lea    0x10(%rdi),%rax
  8092bf:	48 89 47 08          	mov    %rax,0x8(%rdi)
  8092c3:	c3                   	retq   

00000000008092c4 <sigalrm_handler>:
  8092c4:	48 83 ec 08          	sub    $0x8,%rsp
  8092c8:	b9 00 00 00 00       	mov    $0x0,%ecx
  8092cd:	48 8d 15 5c 14 00 00 	lea    0x145c(%rip),%rdx        # 80a730 <trans_char+0x10>
  8092d4:	be 01 00 00 00       	mov    $0x1,%esi
  8092d9:	48 8b 3d e0 31 20 00 	mov    0x2031e0(%rip),%rdi        # a0c4c0 <stderr@@GLIBC_2.2.5>
  8092e0:	b8 00 00 00 00       	mov    $0x0,%eax
  8092e5:	e8 56 7b bf ff       	callq  400e40 <__fprintf_chk@plt>
  8092ea:	bf 01 00 00 00       	mov    $0x1,%edi
  8092ef:	e8 2c 7b bf ff       	callq  400e20 <exit@plt>

00000000008092f4 <rio_writen>:
  8092f4:	41 55                	push   %r13
  8092f6:	41 54                	push   %r12
  8092f8:	55                   	push   %rbp
  8092f9:	53                   	push   %rbx
  8092fa:	48 83 ec 08          	sub    $0x8,%rsp
  8092fe:	41 89 fc             	mov    %edi,%r12d
  809301:	48 89 f5             	mov    %rsi,%rbp
  809304:	49 89 d5             	mov    %rdx,%r13
  809307:	48 89 d3             	mov    %rdx,%rbx
  80930a:	eb 06                	jmp    809312 <rio_writen+0x1e>
  80930c:	48 29 c3             	sub    %rax,%rbx
  80930f:	48 01 c5             	add    %rax,%rbp
  809312:	48 85 db             	test   %rbx,%rbx
  809315:	74 24                	je     80933b <rio_writen+0x47>
  809317:	48 89 da             	mov    %rbx,%rdx
  80931a:	48 89 ee             	mov    %rbp,%rsi
  80931d:	44 89 e7             	mov    %r12d,%edi
  809320:	e8 ab 79 bf ff       	callq  400cd0 <write@plt>
  809325:	48 85 c0             	test   %rax,%rax
  809328:	7f e2                	jg     80930c <rio_writen+0x18>
  80932a:	e8 51 79 bf ff       	callq  400c80 <__errno_location@plt>
  80932f:	83 38 04             	cmpl   $0x4,(%rax)
  809332:	75 15                	jne    809349 <rio_writen+0x55>
  809334:	b8 00 00 00 00       	mov    $0x0,%eax
  809339:	eb d1                	jmp    80930c <rio_writen+0x18>
  80933b:	4c 89 e8             	mov    %r13,%rax
  80933e:	48 83 c4 08          	add    $0x8,%rsp
  809342:	5b                   	pop    %rbx
  809343:	5d                   	pop    %rbp
  809344:	41 5c                	pop    %r12
  809346:	41 5d                	pop    %r13
  809348:	c3                   	retq   
  809349:	48 c7 c0 ff ff ff ff 	mov    $0xffffffffffffffff,%rax
  809350:	eb ec                	jmp    80933e <rio_writen+0x4a>

0000000000809352 <rio_read>:
  809352:	41 55                	push   %r13
  809354:	41 54                	push   %r12
  809356:	55                   	push   %rbp
  809357:	53                   	push   %rbx
  809358:	48 83 ec 08          	sub    $0x8,%rsp
  80935c:	48 89 fb             	mov    %rdi,%rbx
  80935f:	49 89 f5             	mov    %rsi,%r13
  809362:	49 89 d4             	mov    %rdx,%r12
  809365:	eb 0a                	jmp    809371 <rio_read+0x1f>
  809367:	e8 14 79 bf ff       	callq  400c80 <__errno_location@plt>
  80936c:	83 38 04             	cmpl   $0x4,(%rax)
  80936f:	75 5c                	jne    8093cd <rio_read+0x7b>
  809371:	8b 6b 04             	mov    0x4(%rbx),%ebp
  809374:	85 ed                	test   %ebp,%ebp
  809376:	7f 24                	jg     80939c <rio_read+0x4a>
  809378:	48 8d 6b 10          	lea    0x10(%rbx),%rbp
  80937c:	8b 3b                	mov    (%rbx),%edi
  80937e:	ba 00 20 00 00       	mov    $0x2000,%edx
  809383:	48 89 ee             	mov    %rbp,%rsi
  809386:	e8 a5 79 bf ff       	callq  400d30 <read@plt>
  80938b:	89 43 04             	mov    %eax,0x4(%rbx)
  80938e:	85 c0                	test   %eax,%eax
  809390:	78 d5                	js     809367 <rio_read+0x15>
  809392:	85 c0                	test   %eax,%eax
  809394:	74 40                	je     8093d6 <rio_read+0x84>
  809396:	48 89 6b 08          	mov    %rbp,0x8(%rbx)
  80939a:	eb d5                	jmp    809371 <rio_read+0x1f>
  80939c:	89 e8                	mov    %ebp,%eax
  80939e:	4c 39 e0             	cmp    %r12,%rax
  8093a1:	72 03                	jb     8093a6 <rio_read+0x54>
  8093a3:	44 89 e5             	mov    %r12d,%ebp
  8093a6:	4c 63 e5             	movslq %ebp,%r12
  8093a9:	48 8b 73 08          	mov    0x8(%rbx),%rsi
  8093ad:	4c 89 e2             	mov    %r12,%rdx
  8093b0:	4c 89 ef             	mov    %r13,%rdi
  8093b3:	e8 c8 79 bf ff       	callq  400d80 <memcpy@plt>
  8093b8:	4c 01 63 08          	add    %r12,0x8(%rbx)
  8093bc:	29 6b 04             	sub    %ebp,0x4(%rbx)
  8093bf:	4c 89 e0             	mov    %r12,%rax
  8093c2:	48 83 c4 08          	add    $0x8,%rsp
  8093c6:	5b                   	pop    %rbx
  8093c7:	5d                   	pop    %rbp
  8093c8:	41 5c                	pop    %r12
  8093ca:	41 5d                	pop    %r13
  8093cc:	c3                   	retq   
  8093cd:	48 c7 c0 ff ff ff ff 	mov    $0xffffffffffffffff,%rax
  8093d4:	eb ec                	jmp    8093c2 <rio_read+0x70>
  8093d6:	b8 00 00 00 00       	mov    $0x0,%eax
  8093db:	eb e5                	jmp    8093c2 <rio_read+0x70>

00000000008093dd <rio_readlineb>:
  8093dd:	41 55                	push   %r13
  8093df:	41 54                	push   %r12
  8093e1:	55                   	push   %rbp
  8093e2:	53                   	push   %rbx
  8093e3:	48 83 ec 18          	sub    $0x18,%rsp
  8093e7:	49 89 fd             	mov    %rdi,%r13
  8093ea:	48 89 f5             	mov    %rsi,%rbp
  8093ed:	49 89 d4             	mov    %rdx,%r12
  8093f0:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
  8093f7:	00 00 
  8093f9:	48 89 44 24 08       	mov    %rax,0x8(%rsp)
  8093fe:	31 c0                	xor    %eax,%eax
  809400:	bb 01 00 00 00       	mov    $0x1,%ebx
  809405:	4c 39 e3             	cmp    %r12,%rbx
  809408:	73 47                	jae    809451 <rio_readlineb+0x74>
  80940a:	48 8d 74 24 07       	lea    0x7(%rsp),%rsi
  80940f:	ba 01 00 00 00       	mov    $0x1,%edx
  809414:	4c 89 ef             	mov    %r13,%rdi
  809417:	e8 36 ff ff ff       	callq  809352 <rio_read>
  80941c:	83 f8 01             	cmp    $0x1,%eax
  80941f:	75 1c                	jne    80943d <rio_readlineb+0x60>
  809421:	48 8d 45 01          	lea    0x1(%rbp),%rax
  809425:	0f b6 54 24 07       	movzbl 0x7(%rsp),%edx
  80942a:	88 55 00             	mov    %dl,0x0(%rbp)
  80942d:	80 7c 24 07 0a       	cmpb   $0xa,0x7(%rsp)
  809432:	74 1a                	je     80944e <rio_readlineb+0x71>
  809434:	48 83 c3 01          	add    $0x1,%rbx
  809438:	48 89 c5             	mov    %rax,%rbp
  80943b:	eb c8                	jmp    809405 <rio_readlineb+0x28>
  80943d:	85 c0                	test   %eax,%eax
  80943f:	75 32                	jne    809473 <rio_readlineb+0x96>
  809441:	48 83 fb 01          	cmp    $0x1,%rbx
  809445:	75 0a                	jne    809451 <rio_readlineb+0x74>
  809447:	b8 00 00 00 00       	mov    $0x0,%eax
  80944c:	eb 0a                	jmp    809458 <rio_readlineb+0x7b>
  80944e:	48 89 c5             	mov    %rax,%rbp
  809451:	c6 45 00 00          	movb   $0x0,0x0(%rbp)
  809455:	48 89 d8             	mov    %rbx,%rax
  809458:	48 8b 4c 24 08       	mov    0x8(%rsp),%rcx
  80945d:	64 48 33 0c 25 28 00 	xor    %fs:0x28,%rcx
  809464:	00 00 
  809466:	75 14                	jne    80947c <rio_readlineb+0x9f>
  809468:	48 83 c4 18          	add    $0x18,%rsp
  80946c:	5b                   	pop    %rbx
  80946d:	5d                   	pop    %rbp
  80946e:	41 5c                	pop    %r12
  809470:	41 5d                	pop    %r13
  809472:	c3                   	retq   
  809473:	48 c7 c0 ff ff ff ff 	mov    $0xffffffffffffffff,%rax
  80947a:	eb dc                	jmp    809458 <rio_readlineb+0x7b>
  80947c:	e8 5f 78 bf ff       	callq  400ce0 <__stack_chk_fail@plt>

0000000000809481 <urlencode>:
  809481:	41 54                	push   %r12
  809483:	55                   	push   %rbp
  809484:	53                   	push   %rbx
  809485:	48 83 ec 10          	sub    $0x10,%rsp
  809489:	48 89 fb             	mov    %rdi,%rbx
  80948c:	48 89 f5             	mov    %rsi,%rbp
  80948f:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
  809496:	00 00 
  809498:	48 89 44 24 08       	mov    %rax,0x8(%rsp)
  80949d:	31 c0                	xor    %eax,%eax
  80949f:	48 c7 c1 ff ff ff ff 	mov    $0xffffffffffffffff,%rcx
  8094a6:	f2 ae                	repnz scas %es:(%rdi),%al
  8094a8:	48 89 ce             	mov    %rcx,%rsi
  8094ab:	48 f7 d6             	not    %rsi
  8094ae:	8d 46 ff             	lea    -0x1(%rsi),%eax
  8094b1:	eb 0f                	jmp    8094c2 <urlencode+0x41>
  8094b3:	44 88 45 00          	mov    %r8b,0x0(%rbp)
  8094b7:	48 8d 6d 01          	lea    0x1(%rbp),%rbp
  8094bb:	48 83 c3 01          	add    $0x1,%rbx
  8094bf:	44 89 e0             	mov    %r12d,%eax
  8094c2:	44 8d 60 ff          	lea    -0x1(%rax),%r12d
  8094c6:	85 c0                	test   %eax,%eax
  8094c8:	0f 84 a8 00 00 00    	je     809576 <urlencode+0xf5>
  8094ce:	44 0f b6 03          	movzbl (%rbx),%r8d
  8094d2:	41 80 f8 2a          	cmp    $0x2a,%r8b
  8094d6:	0f 94 c2             	sete   %dl
  8094d9:	41 80 f8 2d          	cmp    $0x2d,%r8b
  8094dd:	0f 94 c0             	sete   %al
  8094e0:	08 c2                	or     %al,%dl
  8094e2:	75 cf                	jne    8094b3 <urlencode+0x32>
  8094e4:	41 80 f8 2e          	cmp    $0x2e,%r8b
  8094e8:	74 c9                	je     8094b3 <urlencode+0x32>
  8094ea:	41 80 f8 5f          	cmp    $0x5f,%r8b
  8094ee:	74 c3                	je     8094b3 <urlencode+0x32>
  8094f0:	41 8d 40 d0          	lea    -0x30(%r8),%eax
  8094f4:	3c 09                	cmp    $0x9,%al
  8094f6:	76 bb                	jbe    8094b3 <urlencode+0x32>
  8094f8:	41 8d 40 bf          	lea    -0x41(%r8),%eax
  8094fc:	3c 19                	cmp    $0x19,%al
  8094fe:	76 b3                	jbe    8094b3 <urlencode+0x32>
  809500:	41 8d 40 9f          	lea    -0x61(%r8),%eax
  809504:	3c 19                	cmp    $0x19,%al
  809506:	76 ab                	jbe    8094b3 <urlencode+0x32>
  809508:	41 80 f8 20          	cmp    $0x20,%r8b
  80950c:	74 56                	je     809564 <urlencode+0xe3>
  80950e:	41 8d 40 e0          	lea    -0x20(%r8),%eax
  809512:	3c 5f                	cmp    $0x5f,%al
  809514:	0f 96 c2             	setbe  %dl
  809517:	41 80 f8 09          	cmp    $0x9,%r8b
  80951b:	0f 94 c0             	sete   %al
  80951e:	08 c2                	or     %al,%dl
  809520:	74 4f                	je     809571 <urlencode+0xf0>
  809522:	48 89 e7             	mov    %rsp,%rdi
  809525:	45 0f b6 c0          	movzbl %r8b,%r8d
  809529:	48 8d 0d 98 12 00 00 	lea    0x1298(%rip),%rcx        # 80a7c8 <trans_char+0xa8>
  809530:	ba 08 00 00 00       	mov    $0x8,%edx
  809535:	be 01 00 00 00       	mov    $0x1,%esi
  80953a:	b8 00 00 00 00       	mov    $0x0,%eax
  80953f:	e8 0c 79 bf ff       	callq  400e50 <__sprintf_chk@plt>
  809544:	0f b6 04 24          	movzbl (%rsp),%eax
  809548:	88 45 00             	mov    %al,0x0(%rbp)
  80954b:	0f b6 44 24 01       	movzbl 0x1(%rsp),%eax
  809550:	88 45 01             	mov    %al,0x1(%rbp)
  809553:	0f b6 44 24 02       	movzbl 0x2(%rsp),%eax
  809558:	88 45 02             	mov    %al,0x2(%rbp)
  80955b:	48 8d 6d 03          	lea    0x3(%rbp),%rbp
  80955f:	e9 57 ff ff ff       	jmpq   8094bb <urlencode+0x3a>
  809564:	c6 45 00 2b          	movb   $0x2b,0x0(%rbp)
  809568:	48 8d 6d 01          	lea    0x1(%rbp),%rbp
  80956c:	e9 4a ff ff ff       	jmpq   8094bb <urlencode+0x3a>
  809571:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  809576:	48 8b 74 24 08       	mov    0x8(%rsp),%rsi
  80957b:	64 48 33 34 25 28 00 	xor    %fs:0x28,%rsi
  809582:	00 00 
  809584:	75 09                	jne    80958f <urlencode+0x10e>
  809586:	48 83 c4 10          	add    $0x10,%rsp
  80958a:	5b                   	pop    %rbx
  80958b:	5d                   	pop    %rbp
  80958c:	41 5c                	pop    %r12
  80958e:	c3                   	retq   
  80958f:	e8 4c 77 bf ff       	callq  400ce0 <__stack_chk_fail@plt>

0000000000809594 <submitr>:
  809594:	41 57                	push   %r15
  809596:	41 56                	push   %r14
  809598:	41 55                	push   %r13
  80959a:	41 54                	push   %r12
  80959c:	55                   	push   %rbp
  80959d:	53                   	push   %rbx
  80959e:	48 81 ec 68 a0 00 00 	sub    $0xa068,%rsp
  8095a5:	49 89 fd             	mov    %rdi,%r13
  8095a8:	89 74 24 14          	mov    %esi,0x14(%rsp)
  8095ac:	49 89 d7             	mov    %rdx,%r15
  8095af:	48 89 4c 24 08       	mov    %rcx,0x8(%rsp)
  8095b4:	4c 89 44 24 18       	mov    %r8,0x18(%rsp)
  8095b9:	4d 89 ce             	mov    %r9,%r14
  8095bc:	48 8b ac 24 a0 a0 00 	mov    0xa0a0(%rsp),%rbp
  8095c3:	00 
  8095c4:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
  8095cb:	00 00 
  8095cd:	48 89 84 24 58 a0 00 	mov    %rax,0xa058(%rsp)
  8095d4:	00 
  8095d5:	31 c0                	xor    %eax,%eax
  8095d7:	c7 44 24 2c 00 00 00 	movl   $0x0,0x2c(%rsp)
  8095de:	00 
  8095df:	ba 00 00 00 00       	mov    $0x0,%edx
  8095e4:	be 01 00 00 00       	mov    $0x1,%esi
  8095e9:	bf 02 00 00 00       	mov    $0x2,%edi
  8095ee:	e8 6d 78 bf ff       	callq  400e60 <socket@plt>
  8095f3:	85 c0                	test   %eax,%eax
  8095f5:	0f 88 a9 02 00 00    	js     8098a4 <submitr+0x310>
  8095fb:	89 c3                	mov    %eax,%ebx
  8095fd:	4c 89 ef             	mov    %r13,%rdi
  809600:	e8 4b 77 bf ff       	callq  400d50 <gethostbyname@plt>
  809605:	48 85 c0             	test   %rax,%rax
  809608:	0f 84 e2 02 00 00    	je     8098f0 <submitr+0x35c>
  80960e:	4c 8d 64 24 30       	lea    0x30(%rsp),%r12
  809613:	48 c7 44 24 32 00 00 	movq   $0x0,0x32(%rsp)
  80961a:	00 00 
  80961c:	c7 44 24 3a 00 00 00 	movl   $0x0,0x3a(%rsp)
  809623:	00 
  809624:	66 c7 44 24 3e 00 00 	movw   $0x0,0x3e(%rsp)
  80962b:	66 c7 44 24 30 02 00 	movw   $0x2,0x30(%rsp)
  809632:	48 63 50 14          	movslq 0x14(%rax),%rdx
  809636:	48 8b 40 18          	mov    0x18(%rax),%rax
  80963a:	48 8b 30             	mov    (%rax),%rsi
  80963d:	48 8d 7c 24 34       	lea    0x34(%rsp),%rdi
  809642:	b9 0c 00 00 00       	mov    $0xc,%ecx
  809647:	e8 14 77 bf ff       	callq  400d60 <__memmove_chk@plt>
  80964c:	0f b7 44 24 14       	movzwl 0x14(%rsp),%eax
  809651:	66 c1 c8 08          	ror    $0x8,%ax
  809655:	66 89 44 24 32       	mov    %ax,0x32(%rsp)
  80965a:	ba 10 00 00 00       	mov    $0x10,%edx
  80965f:	4c 89 e6             	mov    %r12,%rsi
  809662:	89 df                	mov    %ebx,%edi
  809664:	e8 c7 77 bf ff       	callq  400e30 <connect@plt>
  809669:	85 c0                	test   %eax,%eax
  80966b:	0f 88 e7 02 00 00    	js     809958 <submitr+0x3c4>
  809671:	48 c7 c6 ff ff ff ff 	mov    $0xffffffffffffffff,%rsi
  809678:	b8 00 00 00 00       	mov    $0x0,%eax
  80967d:	48 89 f1             	mov    %rsi,%rcx
  809680:	4c 89 f7             	mov    %r14,%rdi
  809683:	f2 ae                	repnz scas %es:(%rdi),%al
  809685:	48 89 ca             	mov    %rcx,%rdx
  809688:	48 f7 d2             	not    %rdx
  80968b:	48 89 f1             	mov    %rsi,%rcx
  80968e:	4c 89 ff             	mov    %r15,%rdi
  809691:	f2 ae                	repnz scas %es:(%rdi),%al
  809693:	48 f7 d1             	not    %rcx
  809696:	49 89 c8             	mov    %rcx,%r8
  809699:	48 89 f1             	mov    %rsi,%rcx
  80969c:	48 8b 7c 24 08       	mov    0x8(%rsp),%rdi
  8096a1:	f2 ae                	repnz scas %es:(%rdi),%al
  8096a3:	48 f7 d1             	not    %rcx
  8096a6:	4d 8d 44 08 fe       	lea    -0x2(%r8,%rcx,1),%r8
  8096ab:	48 89 f1             	mov    %rsi,%rcx
  8096ae:	48 8b 7c 24 18       	mov    0x18(%rsp),%rdi
  8096b3:	f2 ae                	repnz scas %es:(%rdi),%al
  8096b5:	48 89 c8             	mov    %rcx,%rax
  8096b8:	48 f7 d0             	not    %rax
  8096bb:	49 8d 4c 00 ff       	lea    -0x1(%r8,%rax,1),%rcx
  8096c0:	48 8d 44 52 fd       	lea    -0x3(%rdx,%rdx,2),%rax
  8096c5:	48 8d 84 01 80 00 00 	lea    0x80(%rcx,%rax,1),%rax
  8096cc:	00 
  8096cd:	48 3d 00 20 00 00    	cmp    $0x2000,%rax
  8096d3:	0f 87 d9 02 00 00    	ja     8099b2 <submitr+0x41e>
  8096d9:	48 8d b4 24 50 40 00 	lea    0x4050(%rsp),%rsi
  8096e0:	00 
  8096e1:	b9 00 04 00 00       	mov    $0x400,%ecx
  8096e6:	b8 00 00 00 00       	mov    $0x0,%eax
  8096eb:	48 89 f7             	mov    %rsi,%rdi
  8096ee:	f3 48 ab             	rep stos %rax,%es:(%rdi)
  8096f1:	4c 89 f7             	mov    %r14,%rdi
  8096f4:	e8 88 fd ff ff       	callq  809481 <urlencode>
  8096f9:	85 c0                	test   %eax,%eax
  8096fb:	0f 88 24 03 00 00    	js     809a25 <submitr+0x491>
  809701:	4c 8d a4 24 50 20 00 	lea    0x2050(%rsp),%r12
  809708:	00 
  809709:	41 55                	push   %r13
  80970b:	48 8d 84 24 58 40 00 	lea    0x4058(%rsp),%rax
  809712:	00 
  809713:	50                   	push   %rax
  809714:	4d 89 f9             	mov    %r15,%r9
  809717:	4c 8b 44 24 18       	mov    0x18(%rsp),%r8
  80971c:	48 8d 0d 35 10 00 00 	lea    0x1035(%rip),%rcx        # 80a758 <trans_char+0x38>
  809723:	ba 00 20 00 00       	mov    $0x2000,%edx
  809728:	be 01 00 00 00       	mov    $0x1,%esi
  80972d:	4c 89 e7             	mov    %r12,%rdi
  809730:	b8 00 00 00 00       	mov    $0x0,%eax
  809735:	e8 16 77 bf ff       	callq  400e50 <__sprintf_chk@plt>
  80973a:	48 c7 c1 ff ff ff ff 	mov    $0xffffffffffffffff,%rcx
  809741:	b8 00 00 00 00       	mov    $0x0,%eax
  809746:	4c 89 e7             	mov    %r12,%rdi
  809749:	f2 ae                	repnz scas %es:(%rdi),%al
  80974b:	48 89 ca             	mov    %rcx,%rdx
  80974e:	48 f7 d2             	not    %rdx
  809751:	48 8d 52 ff          	lea    -0x1(%rdx),%rdx
  809755:	4c 89 e6             	mov    %r12,%rsi
  809758:	89 df                	mov    %ebx,%edi
  80975a:	e8 95 fb ff ff       	callq  8092f4 <rio_writen>
  80975f:	48 83 c4 10          	add    $0x10,%rsp
  809763:	48 85 c0             	test   %rax,%rax
  809766:	0f 88 44 03 00 00    	js     809ab0 <submitr+0x51c>
  80976c:	4c 8d 64 24 40       	lea    0x40(%rsp),%r12
  809771:	89 de                	mov    %ebx,%esi
  809773:	4c 89 e7             	mov    %r12,%rdi
  809776:	e8 37 fb ff ff       	callq  8092b2 <rio_readinitb>
  80977b:	48 8d b4 24 50 20 00 	lea    0x2050(%rsp),%rsi
  809782:	00 
  809783:	ba 00 20 00 00       	mov    $0x2000,%edx
  809788:	4c 89 e7             	mov    %r12,%rdi
  80978b:	e8 4d fc ff ff       	callq  8093dd <rio_readlineb>
  809790:	48 85 c0             	test   %rax,%rax
  809793:	0f 8e 86 03 00 00    	jle    809b1f <submitr+0x58b>
  809799:	48 8d 4c 24 2c       	lea    0x2c(%rsp),%rcx
  80979e:	48 8d 94 24 50 60 00 	lea    0x6050(%rsp),%rdx
  8097a5:	00 
  8097a6:	48 8d bc 24 50 20 00 	lea    0x2050(%rsp),%rdi
  8097ad:	00 
  8097ae:	4c 8d 84 24 50 80 00 	lea    0x8050(%rsp),%r8
  8097b5:	00 
  8097b6:	48 8d 35 12 10 00 00 	lea    0x1012(%rip),%rsi        # 80a7cf <trans_char+0xaf>
  8097bd:	b8 00 00 00 00       	mov    $0x0,%eax
  8097c2:	e8 f9 75 bf ff       	callq  400dc0 <__isoc99_sscanf@plt>
  8097c7:	48 8d b4 24 50 20 00 	lea    0x2050(%rsp),%rsi
  8097ce:	00 
  8097cf:	b9 03 00 00 00       	mov    $0x3,%ecx
  8097d4:	48 8d 3d 0b 10 00 00 	lea    0x100b(%rip),%rdi        # 80a7e6 <trans_char+0xc6>
  8097db:	f3 a6                	repz cmpsb %es:(%rdi),%ds:(%rsi)
  8097dd:	0f 97 c0             	seta   %al
  8097e0:	1c 00                	sbb    $0x0,%al
  8097e2:	84 c0                	test   %al,%al
  8097e4:	0f 84 b3 03 00 00    	je     809b9d <submitr+0x609>
  8097ea:	48 8d b4 24 50 20 00 	lea    0x2050(%rsp),%rsi
  8097f1:	00 
  8097f2:	48 8d 7c 24 40       	lea    0x40(%rsp),%rdi
  8097f7:	ba 00 20 00 00       	mov    $0x2000,%edx
  8097fc:	e8 dc fb ff ff       	callq  8093dd <rio_readlineb>
  809801:	48 85 c0             	test   %rax,%rax
  809804:	7f c1                	jg     8097c7 <submitr+0x233>
  809806:	48 b8 45 72 72 6f 72 	movabs $0x43203a726f727245,%rax
  80980d:	3a 20 43 
  809810:	48 ba 6c 69 65 6e 74 	movabs $0x6e7520746e65696c,%rdx
  809817:	20 75 6e 
  80981a:	48 89 45 00          	mov    %rax,0x0(%rbp)
  80981e:	48 89 55 08          	mov    %rdx,0x8(%rbp)
  809822:	48 b8 61 62 6c 65 20 	movabs $0x206f7420656c6261,%rax
  809829:	74 6f 20 
  80982c:	48 ba 72 65 61 64 20 	movabs $0x6165682064616572,%rdx
  809833:	68 65 61 
  809836:	48 89 45 10          	mov    %rax,0x10(%rbp)
  80983a:	48 89 55 18          	mov    %rdx,0x18(%rbp)
  80983e:	48 b8 64 65 72 73 20 	movabs $0x6f72662073726564,%rax
  809845:	66 72 6f 
  809848:	48 ba 6d 20 74 68 65 	movabs $0x657220656874206d,%rdx
  80984f:	20 72 65 
  809852:	48 89 45 20          	mov    %rax,0x20(%rbp)
  809856:	48 89 55 28          	mov    %rdx,0x28(%rbp)
  80985a:	48 b8 73 75 6c 74 20 	movabs $0x72657320746c7573,%rax
  809861:	73 65 72 
  809864:	48 89 45 30          	mov    %rax,0x30(%rbp)
  809868:	c7 45 38 76 65 72 00 	movl   $0x726576,0x38(%rbp)
  80986f:	89 df                	mov    %ebx,%edi
  809871:	e8 aa 74 bf ff       	callq  400d20 <close@plt>
  809876:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  80987b:	48 8b 9c 24 58 a0 00 	mov    0xa058(%rsp),%rbx
  809882:	00 
  809883:	64 48 33 1c 25 28 00 	xor    %fs:0x28,%rbx
  80988a:	00 00 
  80988c:	0f 85 7e 04 00 00    	jne    809d10 <submitr+0x77c>
  809892:	48 81 c4 68 a0 00 00 	add    $0xa068,%rsp
  809899:	5b                   	pop    %rbx
  80989a:	5d                   	pop    %rbp
  80989b:	41 5c                	pop    %r12
  80989d:	41 5d                	pop    %r13
  80989f:	41 5e                	pop    %r14
  8098a1:	41 5f                	pop    %r15
  8098a3:	c3                   	retq   
  8098a4:	48 b8 45 72 72 6f 72 	movabs $0x43203a726f727245,%rax
  8098ab:	3a 20 43 
  8098ae:	48 ba 6c 69 65 6e 74 	movabs $0x6e7520746e65696c,%rdx
  8098b5:	20 75 6e 
  8098b8:	48 89 45 00          	mov    %rax,0x0(%rbp)
  8098bc:	48 89 55 08          	mov    %rdx,0x8(%rbp)
  8098c0:	48 b8 61 62 6c 65 20 	movabs $0x206f7420656c6261,%rax
  8098c7:	74 6f 20 
  8098ca:	48 ba 63 72 65 61 74 	movabs $0x7320657461657263,%rdx
  8098d1:	65 20 73 
  8098d4:	48 89 45 10          	mov    %rax,0x10(%rbp)
  8098d8:	48 89 55 18          	mov    %rdx,0x18(%rbp)
  8098dc:	c7 45 20 6f 63 6b 65 	movl   $0x656b636f,0x20(%rbp)
  8098e3:	66 c7 45 24 74 00    	movw   $0x74,0x24(%rbp)
  8098e9:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  8098ee:	eb 8b                	jmp    80987b <submitr+0x2e7>
  8098f0:	48 b8 45 72 72 6f 72 	movabs $0x44203a726f727245,%rax
  8098f7:	3a 20 44 
  8098fa:	48 ba 4e 53 20 69 73 	movabs $0x6e7520736920534e,%rdx
  809901:	20 75 6e 
  809904:	48 89 45 00          	mov    %rax,0x0(%rbp)
  809908:	48 89 55 08          	mov    %rdx,0x8(%rbp)
  80990c:	48 b8 61 62 6c 65 20 	movabs $0x206f7420656c6261,%rax
  809913:	74 6f 20 
  809916:	48 ba 72 65 73 6f 6c 	movabs $0x2065766c6f736572,%rdx
  80991d:	76 65 20 
  809920:	48 89 45 10          	mov    %rax,0x10(%rbp)
  809924:	48 89 55 18          	mov    %rdx,0x18(%rbp)
  809928:	48 b8 73 65 72 76 65 	movabs $0x6120726576726573,%rax
  80992f:	72 20 61 
  809932:	48 89 45 20          	mov    %rax,0x20(%rbp)
  809936:	c7 45 28 64 64 72 65 	movl   $0x65726464,0x28(%rbp)
  80993d:	66 c7 45 2c 73 73    	movw   $0x7373,0x2c(%rbp)
  809943:	c6 45 2e 00          	movb   $0x0,0x2e(%rbp)
  809947:	89 df                	mov    %ebx,%edi
  809949:	e8 d2 73 bf ff       	callq  400d20 <close@plt>
  80994e:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  809953:	e9 23 ff ff ff       	jmpq   80987b <submitr+0x2e7>
  809958:	48 b8 45 72 72 6f 72 	movabs $0x55203a726f727245,%rax
  80995f:	3a 20 55 
  809962:	48 ba 6e 61 62 6c 65 	movabs $0x6f7420656c62616e,%rdx
  809969:	20 74 6f 
  80996c:	48 89 45 00          	mov    %rax,0x0(%rbp)
  809970:	48 89 55 08          	mov    %rdx,0x8(%rbp)
  809974:	48 b8 20 63 6f 6e 6e 	movabs $0x7463656e6e6f6320,%rax
  80997b:	65 63 74 
  80997e:	48 ba 20 74 6f 20 74 	movabs $0x20656874206f7420,%rdx
  809985:	68 65 20 
  809988:	48 89 45 10          	mov    %rax,0x10(%rbp)
  80998c:	48 89 55 18          	mov    %rdx,0x18(%rbp)
  809990:	c7 45 20 73 65 72 76 	movl   $0x76726573,0x20(%rbp)
  809997:	66 c7 45 24 65 72    	movw   $0x7265,0x24(%rbp)
  80999d:	c6 45 26 00          	movb   $0x0,0x26(%rbp)
  8099a1:	89 df                	mov    %ebx,%edi
  8099a3:	e8 78 73 bf ff       	callq  400d20 <close@plt>
  8099a8:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  8099ad:	e9 c9 fe ff ff       	jmpq   80987b <submitr+0x2e7>
  8099b2:	48 b8 45 72 72 6f 72 	movabs $0x52203a726f727245,%rax
  8099b9:	3a 20 52 
  8099bc:	48 ba 65 73 75 6c 74 	movabs $0x747320746c757365,%rdx
  8099c3:	20 73 74 
  8099c6:	48 89 45 00          	mov    %rax,0x0(%rbp)
  8099ca:	48 89 55 08          	mov    %rdx,0x8(%rbp)
  8099ce:	48 b8 72 69 6e 67 20 	movabs $0x6f6f7420676e6972,%rax
  8099d5:	74 6f 6f 
  8099d8:	48 ba 20 6c 61 72 67 	movabs $0x202e656772616c20,%rdx
  8099df:	65 2e 20 
  8099e2:	48 89 45 10          	mov    %rax,0x10(%rbp)
  8099e6:	48 89 55 18          	mov    %rdx,0x18(%rbp)
  8099ea:	48 b8 49 6e 63 72 65 	movabs $0x6573616572636e49,%rax
  8099f1:	61 73 65 
  8099f4:	48 ba 20 53 55 42 4d 	movabs $0x5254494d42555320,%rdx
  8099fb:	49 54 52 
  8099fe:	48 89 45 20          	mov    %rax,0x20(%rbp)
  809a02:	48 89 55 28          	mov    %rdx,0x28(%rbp)
  809a06:	48 b8 5f 4d 41 58 42 	movabs $0x46554258414d5f,%rax
  809a0d:	55 46 00 
  809a10:	48 89 45 30          	mov    %rax,0x30(%rbp)
  809a14:	89 df                	mov    %ebx,%edi
  809a16:	e8 05 73 bf ff       	callq  400d20 <close@plt>
  809a1b:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  809a20:	e9 56 fe ff ff       	jmpq   80987b <submitr+0x2e7>
  809a25:	48 b8 45 72 72 6f 72 	movabs $0x52203a726f727245,%rax
  809a2c:	3a 20 52 
  809a2f:	48 ba 65 73 75 6c 74 	movabs $0x747320746c757365,%rdx
  809a36:	20 73 74 
  809a39:	48 89 45 00          	mov    %rax,0x0(%rbp)
  809a3d:	48 89 55 08          	mov    %rdx,0x8(%rbp)
  809a41:	48 b8 72 69 6e 67 20 	movabs $0x6e6f6320676e6972,%rax
  809a48:	63 6f 6e 
  809a4b:	48 ba 74 61 69 6e 73 	movabs $0x6e6120736e696174,%rdx
  809a52:	20 61 6e 
  809a55:	48 89 45 10          	mov    %rax,0x10(%rbp)
  809a59:	48 89 55 18          	mov    %rdx,0x18(%rbp)
  809a5d:	48 b8 20 69 6c 6c 65 	movabs $0x6c6167656c6c6920,%rax
  809a64:	67 61 6c 
  809a67:	48 ba 20 6f 72 20 75 	movabs $0x72706e7520726f20,%rdx
  809a6e:	6e 70 72 
  809a71:	48 89 45 20          	mov    %rax,0x20(%rbp)
  809a75:	48 89 55 28          	mov    %rdx,0x28(%rbp)
  809a79:	48 b8 69 6e 74 61 62 	movabs $0x20656c6261746e69,%rax
  809a80:	6c 65 20 
  809a83:	48 ba 63 68 61 72 61 	movabs $0x6574636172616863,%rdx
  809a8a:	63 74 65 
  809a8d:	48 89 45 30          	mov    %rax,0x30(%rbp)
  809a91:	48 89 55 38          	mov    %rdx,0x38(%rbp)
  809a95:	66 c7 45 40 72 2e    	movw   $0x2e72,0x40(%rbp)
  809a9b:	c6 45 42 00          	movb   $0x0,0x42(%rbp)
  809a9f:	89 df                	mov    %ebx,%edi
  809aa1:	e8 7a 72 bf ff       	callq  400d20 <close@plt>
  809aa6:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  809aab:	e9 cb fd ff ff       	jmpq   80987b <submitr+0x2e7>
  809ab0:	48 b8 45 72 72 6f 72 	movabs $0x43203a726f727245,%rax
  809ab7:	3a 20 43 
  809aba:	48 ba 6c 69 65 6e 74 	movabs $0x6e7520746e65696c,%rdx
  809ac1:	20 75 6e 
  809ac4:	48 89 45 00          	mov    %rax,0x0(%rbp)
  809ac8:	48 89 55 08          	mov    %rdx,0x8(%rbp)
  809acc:	48 b8 61 62 6c 65 20 	movabs $0x206f7420656c6261,%rax
  809ad3:	74 6f 20 
  809ad6:	48 ba 77 72 69 74 65 	movabs $0x6f74206574697277,%rdx
  809add:	20 74 6f 
  809ae0:	48 89 45 10          	mov    %rax,0x10(%rbp)
  809ae4:	48 89 55 18          	mov    %rdx,0x18(%rbp)
  809ae8:	48 b8 20 74 68 65 20 	movabs $0x7365722065687420,%rax
  809aef:	72 65 73 
  809af2:	48 ba 75 6c 74 20 73 	movabs $0x7672657320746c75,%rdx
  809af9:	65 72 76 
  809afc:	48 89 45 20          	mov    %rax,0x20(%rbp)
  809b00:	48 89 55 28          	mov    %rdx,0x28(%rbp)
  809b04:	66 c7 45 30 65 72    	movw   $0x7265,0x30(%rbp)
  809b0a:	c6 45 32 00          	movb   $0x0,0x32(%rbp)
  809b0e:	89 df                	mov    %ebx,%edi
  809b10:	e8 0b 72 bf ff       	callq  400d20 <close@plt>
  809b15:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  809b1a:	e9 5c fd ff ff       	jmpq   80987b <submitr+0x2e7>
  809b1f:	48 b8 45 72 72 6f 72 	movabs $0x43203a726f727245,%rax
  809b26:	3a 20 43 
  809b29:	48 ba 6c 69 65 6e 74 	movabs $0x6e7520746e65696c,%rdx
  809b30:	20 75 6e 
  809b33:	48 89 45 00          	mov    %rax,0x0(%rbp)
  809b37:	48 89 55 08          	mov    %rdx,0x8(%rbp)
  809b3b:	48 b8 61 62 6c 65 20 	movabs $0x206f7420656c6261,%rax
  809b42:	74 6f 20 
  809b45:	48 ba 72 65 61 64 20 	movabs $0x7269662064616572,%rdx
  809b4c:	66 69 72 
  809b4f:	48 89 45 10          	mov    %rax,0x10(%rbp)
  809b53:	48 89 55 18          	mov    %rdx,0x18(%rbp)
  809b57:	48 b8 73 74 20 68 65 	movabs $0x6564616568207473,%rax
  809b5e:	61 64 65 
  809b61:	48 ba 72 20 66 72 6f 	movabs $0x72206d6f72662072,%rdx
  809b68:	6d 20 72 
  809b6b:	48 89 45 20          	mov    %rax,0x20(%rbp)
  809b6f:	48 89 55 28          	mov    %rdx,0x28(%rbp)
  809b73:	48 b8 65 73 75 6c 74 	movabs $0x657320746c757365,%rax
  809b7a:	20 73 65 
  809b7d:	48 89 45 30          	mov    %rax,0x30(%rbp)
  809b81:	c7 45 38 72 76 65 72 	movl   $0x72657672,0x38(%rbp)
  809b88:	c6 45 3c 00          	movb   $0x0,0x3c(%rbp)
  809b8c:	89 df                	mov    %ebx,%edi
  809b8e:	e8 8d 71 bf ff       	callq  400d20 <close@plt>
  809b93:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  809b98:	e9 de fc ff ff       	jmpq   80987b <submitr+0x2e7>
  809b9d:	48 8d b4 24 50 20 00 	lea    0x2050(%rsp),%rsi
  809ba4:	00 
  809ba5:	48 8d 7c 24 40       	lea    0x40(%rsp),%rdi
  809baa:	ba 00 20 00 00       	mov    $0x2000,%edx
  809baf:	e8 29 f8 ff ff       	callq  8093dd <rio_readlineb>
  809bb4:	48 85 c0             	test   %rax,%rax
  809bb7:	0f 8e 96 00 00 00    	jle    809c53 <submitr+0x6bf>
  809bbd:	44 8b 44 24 2c       	mov    0x2c(%rsp),%r8d
  809bc2:	41 81 f8 c8 00 00 00 	cmp    $0xc8,%r8d
  809bc9:	0f 85 08 01 00 00    	jne    809cd7 <submitr+0x743>
  809bcf:	48 8d b4 24 50 20 00 	lea    0x2050(%rsp),%rsi
  809bd6:	00 
  809bd7:	48 89 ef             	mov    %rbp,%rdi
  809bda:	e8 d1 70 bf ff       	callq  400cb0 <strcpy@plt>
  809bdf:	89 df                	mov    %ebx,%edi
  809be1:	e8 3a 71 bf ff       	callq  400d20 <close@plt>
  809be6:	b9 04 00 00 00       	mov    $0x4,%ecx
  809beb:	48 8d 3d ee 0b 00 00 	lea    0xbee(%rip),%rdi        # 80a7e0 <trans_char+0xc0>
  809bf2:	48 89 ee             	mov    %rbp,%rsi
  809bf5:	f3 a6                	repz cmpsb %es:(%rdi),%ds:(%rsi)
  809bf7:	0f 97 c0             	seta   %al
  809bfa:	1c 00                	sbb    $0x0,%al
  809bfc:	0f be c0             	movsbl %al,%eax
  809bff:	85 c0                	test   %eax,%eax
  809c01:	0f 84 74 fc ff ff    	je     80987b <submitr+0x2e7>
  809c07:	b9 05 00 00 00       	mov    $0x5,%ecx
  809c0c:	48 8d 3d d1 0b 00 00 	lea    0xbd1(%rip),%rdi        # 80a7e4 <trans_char+0xc4>
  809c13:	48 89 ee             	mov    %rbp,%rsi
  809c16:	f3 a6                	repz cmpsb %es:(%rdi),%ds:(%rsi)
  809c18:	0f 97 c0             	seta   %al
  809c1b:	1c 00                	sbb    $0x0,%al
  809c1d:	0f be c0             	movsbl %al,%eax
  809c20:	85 c0                	test   %eax,%eax
  809c22:	0f 84 53 fc ff ff    	je     80987b <submitr+0x2e7>
  809c28:	b9 03 00 00 00       	mov    $0x3,%ecx
  809c2d:	48 8d 3d b5 0b 00 00 	lea    0xbb5(%rip),%rdi        # 80a7e9 <trans_char+0xc9>
  809c34:	48 89 ee             	mov    %rbp,%rsi
  809c37:	f3 a6                	repz cmpsb %es:(%rdi),%ds:(%rsi)
  809c39:	0f 97 c0             	seta   %al
  809c3c:	1c 00                	sbb    $0x0,%al
  809c3e:	0f be c0             	movsbl %al,%eax
  809c41:	85 c0                	test   %eax,%eax
  809c43:	0f 84 32 fc ff ff    	je     80987b <submitr+0x2e7>
  809c49:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  809c4e:	e9 28 fc ff ff       	jmpq   80987b <submitr+0x2e7>
  809c53:	48 b8 45 72 72 6f 72 	movabs $0x43203a726f727245,%rax
  809c5a:	3a 20 43 
  809c5d:	48 ba 6c 69 65 6e 74 	movabs $0x6e7520746e65696c,%rdx
  809c64:	20 75 6e 
  809c67:	48 89 45 00          	mov    %rax,0x0(%rbp)
  809c6b:	48 89 55 08          	mov    %rdx,0x8(%rbp)
  809c6f:	48 b8 61 62 6c 65 20 	movabs $0x206f7420656c6261,%rax
  809c76:	74 6f 20 
  809c79:	48 ba 72 65 61 64 20 	movabs $0x6174732064616572,%rdx
  809c80:	73 74 61 
  809c83:	48 89 45 10          	mov    %rax,0x10(%rbp)
  809c87:	48 89 55 18          	mov    %rdx,0x18(%rbp)
  809c8b:	48 b8 74 75 73 20 6d 	movabs $0x7373656d20737574,%rax
  809c92:	65 73 73 
  809c95:	48 ba 61 67 65 20 66 	movabs $0x6d6f726620656761,%rdx
  809c9c:	72 6f 6d 
  809c9f:	48 89 45 20          	mov    %rax,0x20(%rbp)
  809ca3:	48 89 55 28          	mov    %rdx,0x28(%rbp)
  809ca7:	48 b8 20 72 65 73 75 	movabs $0x20746c7573657220,%rax
  809cae:	6c 74 20 
  809cb1:	48 89 45 30          	mov    %rax,0x30(%rbp)
  809cb5:	c7 45 38 73 65 72 76 	movl   $0x76726573,0x38(%rbp)
  809cbc:	66 c7 45 3c 65 72    	movw   $0x7265,0x3c(%rbp)
  809cc2:	c6 45 3e 00          	movb   $0x0,0x3e(%rbp)
  809cc6:	89 df                	mov    %ebx,%edi
  809cc8:	e8 53 70 bf ff       	callq  400d20 <close@plt>
  809ccd:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  809cd2:	e9 a4 fb ff ff       	jmpq   80987b <submitr+0x2e7>
  809cd7:	4c 8d 8c 24 50 80 00 	lea    0x8050(%rsp),%r9
  809cde:	00 
  809cdf:	48 8d 0d b2 0a 00 00 	lea    0xab2(%rip),%rcx        # 80a798 <trans_char+0x78>
  809ce6:	48 c7 c2 ff ff ff ff 	mov    $0xffffffffffffffff,%rdx
  809ced:	be 01 00 00 00       	mov    $0x1,%esi
  809cf2:	48 89 ef             	mov    %rbp,%rdi
  809cf5:	b8 00 00 00 00       	mov    $0x0,%eax
  809cfa:	e8 51 71 bf ff       	callq  400e50 <__sprintf_chk@plt>
  809cff:	89 df                	mov    %ebx,%edi
  809d01:	e8 1a 70 bf ff       	callq  400d20 <close@plt>
  809d06:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  809d0b:	e9 6b fb ff ff       	jmpq   80987b <submitr+0x2e7>
  809d10:	e8 cb 6f bf ff       	callq  400ce0 <__stack_chk_fail@plt>

0000000000809d15 <init_timeout>:
  809d15:	85 ff                	test   %edi,%edi
  809d17:	74 28                	je     809d41 <init_timeout+0x2c>
  809d19:	53                   	push   %rbx
  809d1a:	89 fb                	mov    %edi,%ebx
  809d1c:	85 ff                	test   %edi,%edi
  809d1e:	78 1a                	js     809d3a <init_timeout+0x25>
  809d20:	48 8d 35 9d f5 ff ff 	lea    -0xa63(%rip),%rsi        # 8092c4 <sigalrm_handler>
  809d27:	bf 0e 00 00 00       	mov    $0xe,%edi
  809d2c:	e8 0f 70 bf ff       	callq  400d40 <signal@plt>
  809d31:	89 df                	mov    %ebx,%edi
  809d33:	e8 d8 6f bf ff       	callq  400d10 <alarm@plt>
  809d38:	5b                   	pop    %rbx
  809d39:	c3                   	retq   
  809d3a:	bb 00 00 00 00       	mov    $0x0,%ebx
  809d3f:	eb df                	jmp    809d20 <init_timeout+0xb>
  809d41:	f3 c3                	repz retq 

0000000000809d43 <init_driver>:
  809d43:	41 54                	push   %r12
  809d45:	55                   	push   %rbp
  809d46:	53                   	push   %rbx
  809d47:	48 83 ec 20          	sub    $0x20,%rsp
  809d4b:	49 89 fc             	mov    %rdi,%r12
  809d4e:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
  809d55:	00 00 
  809d57:	48 89 44 24 18       	mov    %rax,0x18(%rsp)
  809d5c:	31 c0                	xor    %eax,%eax
  809d5e:	be 01 00 00 00       	mov    $0x1,%esi
  809d63:	bf 0d 00 00 00       	mov    $0xd,%edi
  809d68:	e8 d3 6f bf ff       	callq  400d40 <signal@plt>
  809d6d:	be 01 00 00 00       	mov    $0x1,%esi
  809d72:	bf 1d 00 00 00       	mov    $0x1d,%edi
  809d77:	e8 c4 6f bf ff       	callq  400d40 <signal@plt>
  809d7c:	be 01 00 00 00       	mov    $0x1,%esi
  809d81:	bf 1d 00 00 00       	mov    $0x1d,%edi
  809d86:	e8 b5 6f bf ff       	callq  400d40 <signal@plt>
  809d8b:	ba 00 00 00 00       	mov    $0x0,%edx
  809d90:	be 01 00 00 00       	mov    $0x1,%esi
  809d95:	bf 02 00 00 00       	mov    $0x2,%edi
  809d9a:	e8 c1 70 bf ff       	callq  400e60 <socket@plt>
  809d9f:	85 c0                	test   %eax,%eax
  809da1:	0f 88 a3 00 00 00    	js     809e4a <init_driver+0x107>
  809da7:	89 c3                	mov    %eax,%ebx
  809da9:	48 8d 3d 61 05 00 00 	lea    0x561(%rip),%rdi        # 80a311 <_IO_stdin_used+0x251>
  809db0:	e8 9b 6f bf ff       	callq  400d50 <gethostbyname@plt>
  809db5:	48 85 c0             	test   %rax,%rax
  809db8:	0f 84 df 00 00 00    	je     809e9d <init_driver+0x15a>
  809dbe:	48 89 e5             	mov    %rsp,%rbp
  809dc1:	48 c7 44 24 02 00 00 	movq   $0x0,0x2(%rsp)
  809dc8:	00 00 
  809dca:	c7 45 0a 00 00 00 00 	movl   $0x0,0xa(%rbp)
  809dd1:	66 c7 45 0e 00 00    	movw   $0x0,0xe(%rbp)
  809dd7:	66 c7 04 24 02 00    	movw   $0x2,(%rsp)
  809ddd:	48 63 50 14          	movslq 0x14(%rax),%rdx
  809de1:	48 8b 40 18          	mov    0x18(%rax),%rax
  809de5:	48 8b 30             	mov    (%rax),%rsi
  809de8:	48 8d 7d 04          	lea    0x4(%rbp),%rdi
  809dec:	b9 0c 00 00 00       	mov    $0xc,%ecx
  809df1:	e8 6a 6f bf ff       	callq  400d60 <__memmove_chk@plt>
  809df6:	66 c7 44 24 02 3c 9a 	movw   $0x9a3c,0x2(%rsp)
  809dfd:	ba 10 00 00 00       	mov    $0x10,%edx
  809e02:	48 89 ee             	mov    %rbp,%rsi
  809e05:	89 df                	mov    %ebx,%edi
  809e07:	e8 24 70 bf ff       	callq  400e30 <connect@plt>
  809e0c:	85 c0                	test   %eax,%eax
  809e0e:	0f 88 fb 00 00 00    	js     809f0f <init_driver+0x1cc>
  809e14:	89 df                	mov    %ebx,%edi
  809e16:	e8 05 6f bf ff       	callq  400d20 <close@plt>
  809e1b:	66 41 c7 04 24 4f 4b 	movw   $0x4b4f,(%r12)
  809e22:	41 c6 44 24 02 00    	movb   $0x0,0x2(%r12)
  809e28:	b8 00 00 00 00       	mov    $0x0,%eax
  809e2d:	48 8b 4c 24 18       	mov    0x18(%rsp),%rcx
  809e32:	64 48 33 0c 25 28 00 	xor    %fs:0x28,%rcx
  809e39:	00 00 
  809e3b:	0f 85 28 01 00 00    	jne    809f69 <init_driver+0x226>
  809e41:	48 83 c4 20          	add    $0x20,%rsp
  809e45:	5b                   	pop    %rbx
  809e46:	5d                   	pop    %rbp
  809e47:	41 5c                	pop    %r12
  809e49:	c3                   	retq   
  809e4a:	48 b8 45 72 72 6f 72 	movabs $0x43203a726f727245,%rax
  809e51:	3a 20 43 
  809e54:	48 ba 6c 69 65 6e 74 	movabs $0x6e7520746e65696c,%rdx
  809e5b:	20 75 6e 
  809e5e:	49 89 04 24          	mov    %rax,(%r12)
  809e62:	49 89 54 24 08       	mov    %rdx,0x8(%r12)
  809e67:	48 b8 61 62 6c 65 20 	movabs $0x206f7420656c6261,%rax
  809e6e:	74 6f 20 
  809e71:	48 ba 63 72 65 61 74 	movabs $0x7320657461657263,%rdx
  809e78:	65 20 73 
  809e7b:	49 89 44 24 10       	mov    %rax,0x10(%r12)
  809e80:	49 89 54 24 18       	mov    %rdx,0x18(%r12)
  809e85:	41 c7 44 24 20 6f 63 	movl   $0x656b636f,0x20(%r12)
  809e8c:	6b 65 
  809e8e:	66 41 c7 44 24 24 74 	movw   $0x74,0x24(%r12)
  809e95:	00 
  809e96:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  809e9b:	eb 90                	jmp    809e2d <init_driver+0xea>
  809e9d:	48 b8 45 72 72 6f 72 	movabs $0x44203a726f727245,%rax
  809ea4:	3a 20 44 
  809ea7:	48 ba 4e 53 20 69 73 	movabs $0x6e7520736920534e,%rdx
  809eae:	20 75 6e 
  809eb1:	49 89 04 24          	mov    %rax,(%r12)
  809eb5:	49 89 54 24 08       	mov    %rdx,0x8(%r12)
  809eba:	48 b8 61 62 6c 65 20 	movabs $0x206f7420656c6261,%rax
  809ec1:	74 6f 20 
  809ec4:	48 ba 72 65 73 6f 6c 	movabs $0x2065766c6f736572,%rdx
  809ecb:	76 65 20 
  809ece:	49 89 44 24 10       	mov    %rax,0x10(%r12)
  809ed3:	49 89 54 24 18       	mov    %rdx,0x18(%r12)
  809ed8:	48 b8 73 65 72 76 65 	movabs $0x6120726576726573,%rax
  809edf:	72 20 61 
  809ee2:	49 89 44 24 20       	mov    %rax,0x20(%r12)
  809ee7:	41 c7 44 24 28 64 64 	movl   $0x65726464,0x28(%r12)
  809eee:	72 65 
  809ef0:	66 41 c7 44 24 2c 73 	movw   $0x7373,0x2c(%r12)
  809ef7:	73 
  809ef8:	41 c6 44 24 2e 00    	movb   $0x0,0x2e(%r12)
  809efe:	89 df                	mov    %ebx,%edi
  809f00:	e8 1b 6e bf ff       	callq  400d20 <close@plt>
  809f05:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  809f0a:	e9 1e ff ff ff       	jmpq   809e2d <init_driver+0xea>
  809f0f:	48 b8 45 72 72 6f 72 	movabs $0x55203a726f727245,%rax
  809f16:	3a 20 55 
  809f19:	48 ba 6e 61 62 6c 65 	movabs $0x6f7420656c62616e,%rdx
  809f20:	20 74 6f 
  809f23:	49 89 04 24          	mov    %rax,(%r12)
  809f27:	49 89 54 24 08       	mov    %rdx,0x8(%r12)
  809f2c:	48 b8 20 63 6f 6e 6e 	movabs $0x7463656e6e6f6320,%rax
  809f33:	65 63 74 
  809f36:	48 ba 20 74 6f 20 73 	movabs $0x76726573206f7420,%rdx
  809f3d:	65 72 76 
  809f40:	49 89 44 24 10       	mov    %rax,0x10(%r12)
  809f45:	49 89 54 24 18       	mov    %rdx,0x18(%r12)
  809f4a:	66 41 c7 44 24 20 65 	movw   $0x7265,0x20(%r12)
  809f51:	72 
  809f52:	41 c6 44 24 22 00    	movb   $0x0,0x22(%r12)
  809f58:	89 df                	mov    %ebx,%edi
  809f5a:	e8 c1 6d bf ff       	callq  400d20 <close@plt>
  809f5f:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  809f64:	e9 c4 fe ff ff       	jmpq   809e2d <init_driver+0xea>
  809f69:	e8 72 6d bf ff       	callq  400ce0 <__stack_chk_fail@plt>

0000000000809f6e <driver_post>:
  809f6e:	53                   	push   %rbx
  809f6f:	4c 89 cb             	mov    %r9,%rbx
  809f72:	45 85 c0             	test   %r8d,%r8d
  809f75:	75 18                	jne    809f8f <driver_post+0x21>
  809f77:	48 85 ff             	test   %rdi,%rdi
  809f7a:	74 05                	je     809f81 <driver_post+0x13>
  809f7c:	80 3f 00             	cmpb   $0x0,(%rdi)
  809f7f:	75 37                	jne    809fb8 <driver_post+0x4a>
  809f81:	66 c7 03 4f 4b       	movw   $0x4b4f,(%rbx)
  809f86:	c6 43 02 00          	movb   $0x0,0x2(%rbx)
  809f8a:	44 89 c0             	mov    %r8d,%eax
  809f8d:	5b                   	pop    %rbx
  809f8e:	c3                   	retq   
  809f8f:	48 89 ca             	mov    %rcx,%rdx
  809f92:	48 8d 35 53 08 00 00 	lea    0x853(%rip),%rsi        # 80a7ec <trans_char+0xcc>
  809f99:	bf 01 00 00 00       	mov    $0x1,%edi
  809f9e:	b8 00 00 00 00       	mov    $0x0,%eax
  809fa3:	e8 38 6e bf ff       	callq  400de0 <__printf_chk@plt>
  809fa8:	66 c7 03 4f 4b       	movw   $0x4b4f,(%rbx)
  809fad:	c6 43 02 00          	movb   $0x0,0x2(%rbx)
  809fb1:	b8 00 00 00 00       	mov    $0x0,%eax
  809fb6:	eb d5                	jmp    809f8d <driver_post+0x1f>
  809fb8:	48 83 ec 08          	sub    $0x8,%rsp
  809fbc:	41 51                	push   %r9
  809fbe:	49 89 c9             	mov    %rcx,%r9
  809fc1:	49 89 d0             	mov    %rdx,%r8
  809fc4:	48 89 f9             	mov    %rdi,%rcx
  809fc7:	48 89 f2             	mov    %rsi,%rdx
  809fca:	be 9a 3c 00 00       	mov    $0x3c9a,%esi
  809fcf:	48 8d 3d 3b 03 00 00 	lea    0x33b(%rip),%rdi        # 80a311 <_IO_stdin_used+0x251>
  809fd6:	e8 b9 f5 ff ff       	callq  809594 <submitr>
  809fdb:	48 83 c4 10          	add    $0x10,%rsp
  809fdf:	eb ac                	jmp    809f8d <driver_post+0x1f>

0000000000809fe1 <check>:
  809fe1:	89 f8                	mov    %edi,%eax
  809fe3:	c1 e8 1c             	shr    $0x1c,%eax
  809fe6:	85 c0                	test   %eax,%eax
  809fe8:	74 1d                	je     80a007 <check+0x26>
  809fea:	b9 00 00 00 00       	mov    $0x0,%ecx
  809fef:	83 f9 1f             	cmp    $0x1f,%ecx
  809ff2:	7f 0d                	jg     80a001 <check+0x20>
  809ff4:	89 f8                	mov    %edi,%eax
  809ff6:	d3 e8                	shr    %cl,%eax
  809ff8:	3c 0a                	cmp    $0xa,%al
  809ffa:	74 11                	je     80a00d <check+0x2c>
  809ffc:	83 c1 08             	add    $0x8,%ecx
  809fff:	eb ee                	jmp    809fef <check+0xe>
  80a001:	b8 01 00 00 00       	mov    $0x1,%eax
  80a006:	c3                   	retq   
  80a007:	b8 00 00 00 00       	mov    $0x0,%eax
  80a00c:	c3                   	retq   
  80a00d:	b8 00 00 00 00       	mov    $0x0,%eax
  80a012:	c3                   	retq   

000000000080a013 <gencookie>:
  80a013:	53                   	push   %rbx
  80a014:	83 c7 01             	add    $0x1,%edi
  80a017:	e8 74 6c bf ff       	callq  400c90 <srandom@plt>
  80a01c:	e8 7f 6d bf ff       	callq  400da0 <random@plt>
  80a021:	89 c3                	mov    %eax,%ebx
  80a023:	89 c7                	mov    %eax,%edi
  80a025:	e8 b7 ff ff ff       	callq  809fe1 <check>
  80a02a:	85 c0                	test   %eax,%eax
  80a02c:	74 ee                	je     80a01c <gencookie+0x9>
  80a02e:	89 d8                	mov    %ebx,%eax
  80a030:	5b                   	pop    %rbx
  80a031:	c3                   	retq   
  80a032:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
  80a039:	00 00 00 
  80a03c:	0f 1f 40 00          	nopl   0x0(%rax)

000000000080a040 <__libc_csu_init>:
  80a040:	41 57                	push   %r15
  80a042:	41 56                	push   %r14
  80a044:	49 89 d7             	mov    %rdx,%r15
  80a047:	41 55                	push   %r13
  80a049:	41 54                	push   %r12
  80a04b:	4c 8d 25 be 1d 20 00 	lea    0x201dbe(%rip),%r12        # a0be10 <__frame_dummy_init_array_entry>
  80a052:	55                   	push   %rbp
  80a053:	48 8d 2d be 1d 20 00 	lea    0x201dbe(%rip),%rbp        # a0be18 <__do_global_dtors_aux_fini_array_entry>
  80a05a:	53                   	push   %rbx
  80a05b:	41 89 fd             	mov    %edi,%r13d
  80a05e:	49 89 f6             	mov    %rsi,%r14
  80a061:	4c 29 e5             	sub    %r12,%rbp
  80a064:	48 83 ec 08          	sub    $0x8,%rsp
  80a068:	48 c1 fd 03          	sar    $0x3,%rbp
  80a06c:	e8 d7 6b bf ff       	callq  400c48 <_init>
  80a071:	48 85 ed             	test   %rbp,%rbp
  80a074:	74 20                	je     80a096 <__libc_csu_init+0x56>
  80a076:	31 db                	xor    %ebx,%ebx
  80a078:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
  80a07f:	00 
  80a080:	4c 89 fa             	mov    %r15,%rdx
  80a083:	4c 89 f6             	mov    %r14,%rsi
  80a086:	44 89 ef             	mov    %r13d,%edi
  80a089:	41 ff 14 dc          	callq  *(%r12,%rbx,8)
  80a08d:	48 83 c3 01          	add    $0x1,%rbx
  80a091:	48 39 dd             	cmp    %rbx,%rbp
  80a094:	75 ea                	jne    80a080 <__libc_csu_init+0x40>
  80a096:	48 83 c4 08          	add    $0x8,%rsp
  80a09a:	5b                   	pop    %rbx
  80a09b:	5d                   	pop    %rbp
  80a09c:	41 5c                	pop    %r12
  80a09e:	41 5d                	pop    %r13
  80a0a0:	41 5e                	pop    %r14
  80a0a2:	41 5f                	pop    %r15
  80a0a4:	c3                   	retq   
  80a0a5:	90                   	nop
  80a0a6:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
  80a0ad:	00 00 00 

000000000080a0b0 <__libc_csu_fini>:
  80a0b0:	f3 c3                	repz retq 

Disassembly of section .init:

0000000000400c48 <_init>:
  400c48:	48 83 ec 08          	sub    $0x8,%rsp
  400c4c:	48 8b 05 a5 b3 60 00 	mov    0x60b3a5(%rip),%rax        # a0bff8 <__gmon_start__>
  400c53:	48 85 c0             	test   %rax,%rax
  400c56:	74 02                	je     400c5a <_init+0x12>
  400c58:	ff d0                	callq  *%rax
  400c5a:	48 83 c4 08          	add    $0x8,%rsp
  400c5e:	c3                   	retq   

Disassembly of section .plt:

0000000000400c60 <.plt>:
  400c60:	ff 35 a2 b3 60 00    	pushq  0x60b3a2(%rip)        # a0c008 <_GLOBAL_OFFSET_TABLE_+0x8>
  400c66:	ff 25 a4 b3 60 00    	jmpq   *0x60b3a4(%rip)        # a0c010 <_GLOBAL_OFFSET_TABLE_+0x10>
  400c6c:	0f 1f 40 00          	nopl   0x0(%rax)

0000000000400c70 <__snprintf_chk@plt>:
  400c70:	ff 25 a2 b3 60 00    	jmpq   *0x60b3a2(%rip)        # a0c018 <__snprintf_chk@GLIBC_2.3.4>
  400c76:	68 00 00 00 00       	pushq  $0x0
  400c7b:	e9 e0 ff ff ff       	jmpq   400c60 <.plt>

0000000000400c80 <__errno_location@plt>:
  400c80:	ff 25 9a b3 60 00    	jmpq   *0x60b39a(%rip)        # a0c020 <__errno_location@GLIBC_2.2.5>
  400c86:	68 01 00 00 00       	pushq  $0x1
  400c8b:	e9 d0 ff ff ff       	jmpq   400c60 <.plt>

0000000000400c90 <srandom@plt>:
  400c90:	ff 25 92 b3 60 00    	jmpq   *0x60b392(%rip)        # a0c028 <srandom@GLIBC_2.2.5>
  400c96:	68 02 00 00 00       	pushq  $0x2
  400c9b:	e9 c0 ff ff ff       	jmpq   400c60 <.plt>

0000000000400ca0 <strncmp@plt>:
  400ca0:	ff 25 8a b3 60 00    	jmpq   *0x60b38a(%rip)        # a0c030 <strncmp@GLIBC_2.2.5>
  400ca6:	68 03 00 00 00       	pushq  $0x3
  400cab:	e9 b0 ff ff ff       	jmpq   400c60 <.plt>

0000000000400cb0 <strcpy@plt>:
  400cb0:	ff 25 82 b3 60 00    	jmpq   *0x60b382(%rip)        # a0c038 <strcpy@GLIBC_2.2.5>
  400cb6:	68 04 00 00 00       	pushq  $0x4
  400cbb:	e9 a0 ff ff ff       	jmpq   400c60 <.plt>

0000000000400cc0 <puts@plt>:
  400cc0:	ff 25 7a b3 60 00    	jmpq   *0x60b37a(%rip)        # a0c040 <puts@GLIBC_2.2.5>
  400cc6:	68 05 00 00 00       	pushq  $0x5
  400ccb:	e9 90 ff ff ff       	jmpq   400c60 <.plt>

0000000000400cd0 <write@plt>:
  400cd0:	ff 25 72 b3 60 00    	jmpq   *0x60b372(%rip)        # a0c048 <write@GLIBC_2.2.5>
  400cd6:	68 06 00 00 00       	pushq  $0x6
  400cdb:	e9 80 ff ff ff       	jmpq   400c60 <.plt>

0000000000400ce0 <__stack_chk_fail@plt>:
  400ce0:	ff 25 6a b3 60 00    	jmpq   *0x60b36a(%rip)        # a0c050 <__stack_chk_fail@GLIBC_2.4>
  400ce6:	68 07 00 00 00       	pushq  $0x7
  400ceb:	e9 70 ff ff ff       	jmpq   400c60 <.plt>

0000000000400cf0 <mmap@plt>:
  400cf0:	ff 25 62 b3 60 00    	jmpq   *0x60b362(%rip)        # a0c058 <mmap@GLIBC_2.2.5>
  400cf6:	68 08 00 00 00       	pushq  $0x8
  400cfb:	e9 60 ff ff ff       	jmpq   400c60 <.plt>

0000000000400d00 <memset@plt>:
  400d00:	ff 25 5a b3 60 00    	jmpq   *0x60b35a(%rip)        # a0c060 <memset@GLIBC_2.2.5>
  400d06:	68 09 00 00 00       	pushq  $0x9
  400d0b:	e9 50 ff ff ff       	jmpq   400c60 <.plt>

0000000000400d10 <alarm@plt>:
  400d10:	ff 25 52 b3 60 00    	jmpq   *0x60b352(%rip)        # a0c068 <alarm@GLIBC_2.2.5>
  400d16:	68 0a 00 00 00       	pushq  $0xa
  400d1b:	e9 40 ff ff ff       	jmpq   400c60 <.plt>

0000000000400d20 <close@plt>:
  400d20:	ff 25 4a b3 60 00    	jmpq   *0x60b34a(%rip)        # a0c070 <close@GLIBC_2.2.5>
  400d26:	68 0b 00 00 00       	pushq  $0xb
  400d2b:	e9 30 ff ff ff       	jmpq   400c60 <.plt>

0000000000400d30 <read@plt>:
  400d30:	ff 25 42 b3 60 00    	jmpq   *0x60b342(%rip)        # a0c078 <read@GLIBC_2.2.5>
  400d36:	68 0c 00 00 00       	pushq  $0xc
  400d3b:	e9 20 ff ff ff       	jmpq   400c60 <.plt>

0000000000400d40 <signal@plt>:
  400d40:	ff 25 3a b3 60 00    	jmpq   *0x60b33a(%rip)        # a0c080 <signal@GLIBC_2.2.5>
  400d46:	68 0d 00 00 00       	pushq  $0xd
  400d4b:	e9 10 ff ff ff       	jmpq   400c60 <.plt>

0000000000400d50 <gethostbyname@plt>:
  400d50:	ff 25 32 b3 60 00    	jmpq   *0x60b332(%rip)        # a0c088 <gethostbyname@GLIBC_2.2.5>
  400d56:	68 0e 00 00 00       	pushq  $0xe
  400d5b:	e9 00 ff ff ff       	jmpq   400c60 <.plt>

0000000000400d60 <__memmove_chk@plt>:
  400d60:	ff 25 2a b3 60 00    	jmpq   *0x60b32a(%rip)        # a0c090 <__memmove_chk@GLIBC_2.3.4>
  400d66:	68 0f 00 00 00       	pushq  $0xf
  400d6b:	e9 f0 fe ff ff       	jmpq   400c60 <.plt>

0000000000400d70 <strtol@plt>:
  400d70:	ff 25 22 b3 60 00    	jmpq   *0x60b322(%rip)        # a0c098 <strtol@GLIBC_2.2.5>
  400d76:	68 10 00 00 00       	pushq  $0x10
  400d7b:	e9 e0 fe ff ff       	jmpq   400c60 <.plt>

0000000000400d80 <memcpy@plt>:
  400d80:	ff 25 1a b3 60 00    	jmpq   *0x60b31a(%rip)        # a0c0a0 <memcpy@GLIBC_2.14>
  400d86:	68 11 00 00 00       	pushq  $0x11
  400d8b:	e9 d0 fe ff ff       	jmpq   400c60 <.plt>

0000000000400d90 <time@plt>:
  400d90:	ff 25 12 b3 60 00    	jmpq   *0x60b312(%rip)        # a0c0a8 <time@GLIBC_2.2.5>
  400d96:	68 12 00 00 00       	pushq  $0x12
  400d9b:	e9 c0 fe ff ff       	jmpq   400c60 <.plt>

0000000000400da0 <random@plt>:
  400da0:	ff 25 0a b3 60 00    	jmpq   *0x60b30a(%rip)        # a0c0b0 <random@GLIBC_2.2.5>
  400da6:	68 13 00 00 00       	pushq  $0x13
  400dab:	e9 b0 fe ff ff       	jmpq   400c60 <.plt>

0000000000400db0 <_IO_getc@plt>:
  400db0:	ff 25 02 b3 60 00    	jmpq   *0x60b302(%rip)        # a0c0b8 <_IO_getc@GLIBC_2.2.5>
  400db6:	68 14 00 00 00       	pushq  $0x14
  400dbb:	e9 a0 fe ff ff       	jmpq   400c60 <.plt>

0000000000400dc0 <__isoc99_sscanf@plt>:
  400dc0:	ff 25 fa b2 60 00    	jmpq   *0x60b2fa(%rip)        # a0c0c0 <__isoc99_sscanf@GLIBC_2.7>
  400dc6:	68 15 00 00 00       	pushq  $0x15
  400dcb:	e9 90 fe ff ff       	jmpq   400c60 <.plt>

0000000000400dd0 <munmap@plt>:
  400dd0:	ff 25 f2 b2 60 00    	jmpq   *0x60b2f2(%rip)        # a0c0c8 <munmap@GLIBC_2.2.5>
  400dd6:	68 16 00 00 00       	pushq  $0x16
  400ddb:	e9 80 fe ff ff       	jmpq   400c60 <.plt>

0000000000400de0 <__printf_chk@plt>:
  400de0:	ff 25 ea b2 60 00    	jmpq   *0x60b2ea(%rip)        # a0c0d0 <__printf_chk@GLIBC_2.3.4>
  400de6:	68 17 00 00 00       	pushq  $0x17
  400deb:	e9 70 fe ff ff       	jmpq   400c60 <.plt>

0000000000400df0 <fopen@plt>:
  400df0:	ff 25 e2 b2 60 00    	jmpq   *0x60b2e2(%rip)        # a0c0d8 <fopen@GLIBC_2.2.5>
  400df6:	68 18 00 00 00       	pushq  $0x18
  400dfb:	e9 60 fe ff ff       	jmpq   400c60 <.plt>

0000000000400e00 <getopt@plt>:
  400e00:	ff 25 da b2 60 00    	jmpq   *0x60b2da(%rip)        # a0c0e0 <getopt@GLIBC_2.2.5>
  400e06:	68 19 00 00 00       	pushq  $0x19
  400e0b:	e9 50 fe ff ff       	jmpq   400c60 <.plt>

0000000000400e10 <strtoul@plt>:
  400e10:	ff 25 d2 b2 60 00    	jmpq   *0x60b2d2(%rip)        # a0c0e8 <strtoul@GLIBC_2.2.5>
  400e16:	68 1a 00 00 00       	pushq  $0x1a
  400e1b:	e9 40 fe ff ff       	jmpq   400c60 <.plt>

0000000000400e20 <exit@plt>:
  400e20:	ff 25 ca b2 60 00    	jmpq   *0x60b2ca(%rip)        # a0c0f0 <exit@GLIBC_2.2.5>
  400e26:	68 1b 00 00 00       	pushq  $0x1b
  400e2b:	e9 30 fe ff ff       	jmpq   400c60 <.plt>

0000000000400e30 <connect@plt>:
  400e30:	ff 25 c2 b2 60 00    	jmpq   *0x60b2c2(%rip)        # a0c0f8 <connect@GLIBC_2.2.5>
  400e36:	68 1c 00 00 00       	pushq  $0x1c
  400e3b:	e9 20 fe ff ff       	jmpq   400c60 <.plt>

0000000000400e40 <__fprintf_chk@plt>:
  400e40:	ff 25 ba b2 60 00    	jmpq   *0x60b2ba(%rip)        # a0c100 <__fprintf_chk@GLIBC_2.3.4>
  400e46:	68 1d 00 00 00       	pushq  $0x1d
  400e4b:	e9 10 fe ff ff       	jmpq   400c60 <.plt>

0000000000400e50 <__sprintf_chk@plt>:
  400e50:	ff 25 b2 b2 60 00    	jmpq   *0x60b2b2(%rip)        # a0c108 <__sprintf_chk@GLIBC_2.3.4>
  400e56:	68 1e 00 00 00       	pushq  $0x1e
  400e5b:	e9 00 fe ff ff       	jmpq   400c60 <.plt>

0000000000400e60 <socket@plt>:
  400e60:	ff 25 aa b2 60 00    	jmpq   *0x60b2aa(%rip)        # a0c110 <socket@GLIBC_2.2.5>
  400e66:	68 1f 00 00 00       	pushq  $0x1f
  400e6b:	e9 f0 fd ff ff       	jmpq   400c60 <.plt>

Disassembly of section .fini:

000000000080a0b4 <_fini>:
  80a0b4:	48 83 ec 08          	sub    $0x8,%rsp
  80a0b8:	48 83 c4 08          	add    $0x8,%rsp
  80a0bc:	c3                   	retq   
