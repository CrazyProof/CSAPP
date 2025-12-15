
ctarget:     file format elf64-x86-64


Disassembly of section .text:

0000000000808000 <_start>:
  808000:	31 ed                	xor    %ebp,%ebp
  808002:	49 89 d1             	mov    %rdx,%r9
  808005:	5e                   	pop    %rsi
  808006:	48 89 e2             	mov    %rsp,%rdx
  808009:	48 83 e4 f0          	and    $0xfffffffffffffff0,%rsp
  80800d:	50                   	push   %rax
  80800e:	54                   	push   %rsp
  80800f:	49 c7 c0 80 9f 80 00 	mov    $0x809f80,%r8
  808016:	48 c7 c1 10 9f 80 00 	mov    $0x809f10,%rcx
  80801d:	48 c7 c7 81 82 80 00 	mov    $0x808281,%rdi
  808024:	ff 15 c6 2f 20 00    	callq  *0x202fc6(%rip)        # a0aff0 <__libc_start_main@GLIBC_2.2.5>
  80802a:	f4                   	hlt    
  80802b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

0000000000808030 <_dl_relocate_static_pie>:
  808030:	f3 c3                	repz retq 
  808032:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
  808039:	00 00 00 
  80803c:	0f 1f 40 00          	nopl   0x0(%rax)

0000000000808040 <deregister_tm_clones>:
  808040:	55                   	push   %rbp
  808041:	b8 98 b4 a0 00       	mov    $0xa0b498,%eax
  808046:	48 3d 98 b4 a0 00    	cmp    $0xa0b498,%rax
  80804c:	48 89 e5             	mov    %rsp,%rbp
  80804f:	74 17                	je     808068 <deregister_tm_clones+0x28>
  808051:	b8 00 00 00 00       	mov    $0x0,%eax
  808056:	48 85 c0             	test   %rax,%rax
  808059:	74 0d                	je     808068 <deregister_tm_clones+0x28>
  80805b:	5d                   	pop    %rbp
  80805c:	bf 98 b4 a0 00       	mov    $0xa0b498,%edi
  808061:	ff e0                	jmpq   *%rax
  808063:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
  808068:	5d                   	pop    %rbp
  808069:	c3                   	retq   
  80806a:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)

0000000000808070 <register_tm_clones>:
  808070:	be 98 b4 a0 00       	mov    $0xa0b498,%esi
  808075:	55                   	push   %rbp
  808076:	48 81 ee 98 b4 a0 00 	sub    $0xa0b498,%rsi
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
  80809e:	bf 98 b4 a0 00       	mov    $0xa0b498,%edi
  8080a3:	ff e0                	jmpq   *%rax
  8080a5:	0f 1f 00             	nopl   (%rax)
  8080a8:	5d                   	pop    %rbp
  8080a9:	c3                   	retq   
  8080aa:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)

00000000008080b0 <__do_global_dtors_aux>:
  8080b0:	80 3d 11 34 20 00 00 	cmpb   $0x0,0x203411(%rip)        # a0b4c8 <completed.7698>
  8080b7:	75 17                	jne    8080d0 <__do_global_dtors_aux+0x20>
  8080b9:	55                   	push   %rbp
  8080ba:	48 89 e5             	mov    %rsp,%rbp
  8080bd:	e8 7e ff ff ff       	callq  808040 <deregister_tm_clones>
  8080c2:	c6 05 ff 33 20 00 01 	movb   $0x1,0x2033ff(%rip)        # a0b4c8 <completed.7698>
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
  8080ee:	83 3d 13 34 20 00 00 	cmpl   $0x0,0x203413(%rip)        # a0b508 <is_checker>
  8080f5:	74 50                	je     808147 <usage+0x60>
  8080f7:	48 8d 35 9a 1e 00 00 	lea    0x1e9a(%rip),%rsi        # 809f98 <_IO_stdin_used+0x8>
  8080fe:	bf 01 00 00 00       	mov    $0x1,%edi
  808103:	b8 00 00 00 00       	mov    $0x0,%eax
  808108:	e8 d3 8c bf ff       	callq  400de0 <__printf_chk@plt>
  80810d:	48 8d 3d bc 1e 00 00 	lea    0x1ebc(%rip),%rdi        # 809fd0 <_IO_stdin_used+0x40>
  808114:	e8 a7 8b bf ff       	callq  400cc0 <puts@plt>
  808119:	48 8d 3d b0 1f 00 00 	lea    0x1fb0(%rip),%rdi        # 80a0d0 <_IO_stdin_used+0x140>
  808120:	e8 9b 8b bf ff       	callq  400cc0 <puts@plt>
  808125:	48 8d 3d cc 1e 00 00 	lea    0x1ecc(%rip),%rdi        # 809ff8 <_IO_stdin_used+0x68>
  80812c:	e8 8f 8b bf ff       	callq  400cc0 <puts@plt>
  808131:	48 8d 3d b2 1f 00 00 	lea    0x1fb2(%rip),%rdi        # 80a0ea <_IO_stdin_used+0x15a>
  808138:	e8 83 8b bf ff       	callq  400cc0 <puts@plt>
  80813d:	bf 00 00 00 00       	mov    $0x0,%edi
  808142:	e8 d9 8c bf ff       	callq  400e20 <exit@plt>
  808147:	48 8d 35 b8 1f 00 00 	lea    0x1fb8(%rip),%rsi        # 80a106 <_IO_stdin_used+0x176>
  80814e:	bf 01 00 00 00       	mov    $0x1,%edi
  808153:	b8 00 00 00 00       	mov    $0x0,%eax
  808158:	e8 83 8c bf ff       	callq  400de0 <__printf_chk@plt>
  80815d:	48 8d 3d bc 1e 00 00 	lea    0x1ebc(%rip),%rdi        # 80a020 <_IO_stdin_used+0x90>
  808164:	e8 57 8b bf ff       	callq  400cc0 <puts@plt>
  808169:	48 8d 3d d8 1e 00 00 	lea    0x1ed8(%rip),%rdi        # 80a048 <_IO_stdin_used+0xb8>
  808170:	e8 4b 8b bf ff       	callq  400cc0 <puts@plt>
  808175:	48 8d 3d a8 1f 00 00 	lea    0x1fa8(%rip),%rdi        # 80a124 <_IO_stdin_used+0x194>
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
  8081a1:	89 3d 51 33 20 00    	mov    %edi,0x203351(%rip)        # a0b4f8 <check_level>
  8081a7:	8b 3d 83 2f 20 00    	mov    0x202f83(%rip),%edi        # a0b130 <target_id>
  8081ad:	e8 39 1d 00 00       	callq  809eeb <gencookie>
  8081b2:	89 05 4c 33 20 00    	mov    %eax,0x20334c(%rip)        # a0b504 <cookie>
  8081b8:	89 c7                	mov    %eax,%edi
  8081ba:	e8 2c 1d 00 00       	callq  809eeb <gencookie>
  8081bf:	89 05 3b 33 20 00    	mov    %eax,0x20333b(%rip)        # a0b500 <authkey>
  8081c5:	8b 05 65 2f 20 00    	mov    0x202f65(%rip),%eax        # a0b130 <target_id>
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
  8081f8:	48 89 05 91 32 20 00 	mov    %rax,0x203291(%rip)        # a0b490 <buf_offset>
  8081ff:	c6 05 2a 3f 20 00 63 	movb   $0x63,0x203f2a(%rip)        # a0c130 <target_prefix>
  808206:	83 3d 7b 32 20 00 00 	cmpl   $0x0,0x20327b(%rip)        # a0b488 <notify>
  80820d:	74 09                	je     808218 <initialize_target+0x95>
  80820f:	83 3d f2 32 20 00 00 	cmpl   $0x0,0x2032f2(%rip)        # a0b508 <is_checker>
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
  808250:	e8 c6 19 00 00       	callq  809c1b <init_driver>
  808255:	85 c0                	test   %eax,%eax
  808257:	79 bf                	jns    808218 <initialize_target+0x95>
  808259:	48 89 e2             	mov    %rsp,%rdx
  80825c:	48 8d 35 15 1e 00 00 	lea    0x1e15(%rip),%rsi        # 80a078 <_IO_stdin_used+0xe8>
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
  80828f:	48 c7 c6 22 8f 80 00 	mov    $0x808f22,%rsi
  808296:	bf 0b 00 00 00       	mov    $0xb,%edi
  80829b:	e8 a0 8a bf ff       	callq  400d40 <signal@plt>
  8082a0:	48 c7 c6 ce 8e 80 00 	mov    $0x808ece,%rsi
  8082a7:	bf 07 00 00 00       	mov    $0x7,%edi
  8082ac:	e8 8f 8a bf ff       	callq  400d40 <signal@plt>
  8082b1:	48 c7 c6 76 8f 80 00 	mov    $0x808f76,%rsi
  8082b8:	bf 04 00 00 00       	mov    $0x4,%edi
  8082bd:	e8 7e 8a bf ff       	callq  400d40 <signal@plt>
  8082c2:	83 3d 3f 32 20 00 00 	cmpl   $0x0,0x20323f(%rip)        # a0b508 <is_checker>
  8082c9:	75 26                	jne    8082f1 <main+0x70>
  8082cb:	48 8d 2d 6b 1e 00 00 	lea    0x1e6b(%rip),%rbp        # 80a13d <_IO_stdin_used+0x1ad>
  8082d2:	48 8b 05 c7 31 20 00 	mov    0x2031c7(%rip),%rax        # a0b4a0 <stdin@@GLIBC_2.2.5>
  8082d9:	48 89 05 10 32 20 00 	mov    %rax,0x203210(%rip)        # a0b4f0 <infile>
  8082e0:	41 bd 00 00 00 00    	mov    $0x0,%r13d
  8082e6:	41 be 00 00 00 00    	mov    $0x0,%r14d
  8082ec:	e9 8d 00 00 00       	jmpq   80837e <main+0xfd>
  8082f1:	48 c7 c6 ca 8f 80 00 	mov    $0x808fca,%rsi
  8082f8:	bf 0e 00 00 00       	mov    $0xe,%edi
  8082fd:	e8 3e 8a bf ff       	callq  400d40 <signal@plt>
  808302:	bf 05 00 00 00       	mov    $0x5,%edi
  808307:	e8 04 8a bf ff       	callq  400d10 <alarm@plt>
  80830c:	48 8d 2d 2f 1e 00 00 	lea    0x1e2f(%rip),%rbp        # 80a142 <_IO_stdin_used+0x1b2>
  808313:	eb bd                	jmp    8082d2 <main+0x51>
  808315:	48 8b 3b             	mov    (%rbx),%rdi
  808318:	e8 ca fd ff ff       	callq  8080e7 <usage>
  80831d:	48 8d 35 91 20 00 00 	lea    0x2091(%rip),%rsi        # 80a3b5 <_IO_stdin_used+0x425>
  808324:	48 8b 3d 7d 31 20 00 	mov    0x20317d(%rip),%rdi        # a0b4a8 <optarg@@GLIBC_2.2.5>
  80832b:	e8 c0 8a bf ff       	callq  400df0 <fopen@plt>
  808330:	48 89 05 b9 31 20 00 	mov    %rax,0x2031b9(%rip)        # a0b4f0 <infile>
  808337:	48 85 c0             	test   %rax,%rax
  80833a:	75 42                	jne    80837e <main+0xfd>
  80833c:	48 8b 0d 65 31 20 00 	mov    0x203165(%rip),%rcx        # a0b4a8 <optarg@@GLIBC_2.2.5>
  808343:	48 8d 15 00 1e 00 00 	lea    0x1e00(%rip),%rdx        # 80a14a <_IO_stdin_used+0x1ba>
  80834a:	be 01 00 00 00       	mov    $0x1,%esi
  80834f:	48 8b 3d 6a 31 20 00 	mov    0x20316a(%rip),%rdi        # a0b4c0 <stderr@@GLIBC_2.2.5>
  808356:	e8 e5 8a bf ff       	callq  400e40 <__fprintf_chk@plt>
  80835b:	b8 01 00 00 00       	mov    $0x1,%eax
  808360:	e9 d9 00 00 00       	jmpq   80843e <main+0x1bd>
  808365:	ba 10 00 00 00       	mov    $0x10,%edx
  80836a:	be 00 00 00 00       	mov    $0x0,%esi
  80836f:	48 8b 3d 32 31 20 00 	mov    0x203132(%rip),%rdi        # a0b4a8 <optarg@@GLIBC_2.2.5>
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
  80839d:	48 8d 0d e4 1d 00 00 	lea    0x1de4(%rip),%rcx        # 80a188 <_IO_stdin_used+0x1f8>
  8083a4:	48 63 04 81          	movslq (%rcx,%rax,4),%rax
  8083a8:	48 01 c8             	add    %rcx,%rax
  8083ab:	ff e0                	jmpq   *%rax
  8083ad:	ba 0a 00 00 00       	mov    $0xa,%edx
  8083b2:	be 00 00 00 00       	mov    $0x0,%esi
  8083b7:	48 8b 3d ea 30 20 00 	mov    0x2030ea(%rip),%rdi        # a0b4a8 <optarg@@GLIBC_2.2.5>
  8083be:	e8 ad 89 bf ff       	callq  400d70 <strtol@plt>
  8083c3:	41 89 c5             	mov    %eax,%r13d
  8083c6:	eb b6                	jmp    80837e <main+0xfd>
  8083c8:	c7 05 b6 30 20 00 00 	movl   $0x0,0x2030b6(%rip)        # a0b488 <notify>
  8083cf:	00 00 00 
  8083d2:	eb aa                	jmp    80837e <main+0xfd>
  8083d4:	48 8d 35 8c 1d 00 00 	lea    0x1d8c(%rip),%rsi        # 80a167 <_IO_stdin_used+0x1d7>
  8083db:	bf 01 00 00 00       	mov    $0x1,%edi
  8083e0:	b8 00 00 00 00       	mov    $0x0,%eax
  8083e5:	e8 f6 89 bf ff       	callq  400de0 <__printf_chk@plt>
  8083ea:	48 8b 3b             	mov    (%rbx),%rdi
  8083ed:	e8 f5 fc ff ff       	callq  8080e7 <usage>
  8083f2:	be 00 00 00 00       	mov    $0x0,%esi
  8083f7:	44 89 ef             	mov    %r13d,%edi
  8083fa:	e8 84 fd ff ff       	callq  808183 <initialize_target>
  8083ff:	83 3d 02 31 20 00 00 	cmpl   $0x0,0x203102(%rip)        # a0b508 <is_checker>
  808406:	74 09                	je     808411 <main+0x190>
  808408:	44 39 35 f1 30 20 00 	cmp    %r14d,0x2030f1(%rip)        # a0b500 <authkey>
  80840f:	75 36                	jne    808447 <main+0x1c6>
  808411:	8b 15 ed 30 20 00    	mov    0x2030ed(%rip),%edx        # a0b504 <cookie>
  808417:	48 8d 35 5c 1d 00 00 	lea    0x1d5c(%rip),%rsi        # 80a17a <_IO_stdin_used+0x1ea>
  80841e:	bf 01 00 00 00       	mov    $0x1,%edi
  808423:	b8 00 00 00 00       	mov    $0x0,%eax
  808428:	e8 b3 89 bf ff       	callq  400de0 <__printf_chk@plt>
  80842d:	48 8b 3d 5c 30 20 00 	mov    0x20305c(%rip),%rdi        # a0b490 <buf_offset>
  808434:	e8 9d 0c 00 00       	callq  8090d6 <stable_launch>
  808439:	b8 00 00 00 00       	mov    $0x0,%eax
  80843e:	5b                   	pop    %rbx
  80843f:	5d                   	pop    %rbp
  808440:	41 5c                	pop    %r12
  808442:	41 5d                	pop    %r13
  808444:	41 5e                	pop    %r14
  808446:	c3                   	retq   
  808447:	44 89 f2             	mov    %r14d,%edx
  80844a:	48 8d 35 4f 1c 00 00 	lea    0x1c4f(%rip),%rsi        # 80a0a0 <_IO_stdin_used+0x110>
  808451:	bf 01 00 00 00       	mov    $0x1,%edi
  808456:	b8 00 00 00 00       	mov    $0x0,%eax
  80845b:	e8 80 89 bf ff       	callq  400de0 <__printf_chk@plt>
  808460:	b8 00 00 00 00       	mov    $0x0,%eax
  808465:	e8 bd 06 00 00       	callq  808b27 <check_fail>
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
  8088c6:	e8 94 02 00 00       	callq  808b5f <Gets>
  8088cb:	b8 01 00 00 00       	mov    $0x1,%eax
  8088d0:	48 83 c4 18          	add    $0x18,%rsp
  8088d4:	c3                   	retq   

00000000008088d5 <touch1>:
  8088d5:	48 83 ec 08          	sub    $0x8,%rsp
  8088d9:	c7 05 19 2c 20 00 01 	movl   $0x1,0x202c19(%rip)        # a0b4fc <vlevel>
  8088e0:	00 00 00 
  8088e3:	48 8d 3d 21 19 00 00 	lea    0x1921(%rip),%rdi        # 80a20b <_IO_stdin_used+0x27b>
  8088ea:	e8 d1 83 bf ff       	callq  400cc0 <puts@plt>
  8088ef:	bf 01 00 00 00       	mov    $0x1,%edi
  8088f4:	e8 dd 04 00 00       	callq  808dd6 <validate>
  8088f9:	bf 00 00 00 00       	mov    $0x0,%edi
  8088fe:	e8 1d 85 bf ff       	callq  400e20 <exit@plt>

0000000000808903 <touch2>:
  808903:	48 83 ec 08          	sub    $0x8,%rsp
  808907:	89 fa                	mov    %edi,%edx
  808909:	c7 05 e9 2b 20 00 02 	movl   $0x2,0x202be9(%rip)        # a0b4fc <vlevel>
  808910:	00 00 00 
  808913:	39 3d eb 2b 20 00    	cmp    %edi,0x202beb(%rip)        # a0b504 <cookie>
  808919:	74 2a                	je     808945 <touch2+0x42>
  80891b:	48 8d 35 36 19 00 00 	lea    0x1936(%rip),%rsi        # 80a258 <_IO_stdin_used+0x2c8>
  808922:	bf 01 00 00 00       	mov    $0x1,%edi
  808927:	b8 00 00 00 00       	mov    $0x0,%eax
  80892c:	e8 af 84 bf ff       	callq  400de0 <__printf_chk@plt>
  808931:	bf 02 00 00 00       	mov    $0x2,%edi
  808936:	e8 6b 05 00 00       	callq  808ea6 <fail>
  80893b:	bf 00 00 00 00       	mov    $0x0,%edi
  808940:	e8 db 84 bf ff       	callq  400e20 <exit@plt>
  808945:	48 8d 35 e4 18 00 00 	lea    0x18e4(%rip),%rsi        # 80a230 <_IO_stdin_used+0x2a0>
  80894c:	bf 01 00 00 00       	mov    $0x1,%edi
  808951:	b8 00 00 00 00       	mov    $0x0,%eax
  808956:	e8 85 84 bf ff       	callq  400de0 <__printf_chk@plt>
  80895b:	bf 02 00 00 00       	mov    $0x2,%edi
  808960:	e8 71 04 00 00       	callq  808dd6 <validate>
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
  8089c4:	48 8d 0d 5d 18 00 00 	lea    0x185d(%rip),%rcx        # 80a228 <_IO_stdin_used+0x298>
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
  808a1e:	c7 05 d4 2a 20 00 03 	movl   $0x3,0x202ad4(%rip)        # a0b4fc <vlevel>
  808a25:	00 00 00 
  808a28:	48 89 fe             	mov    %rdi,%rsi
  808a2b:	8b 3d d3 2a 20 00    	mov    0x202ad3(%rip),%edi        # a0b504 <cookie>
  808a31:	e8 31 ff ff ff       	callq  808967 <hexmatch>
  808a36:	85 c0                	test   %eax,%eax
  808a38:	74 2d                	je     808a67 <touch3+0x4d>
  808a3a:	48 89 da             	mov    %rbx,%rdx
  808a3d:	48 8d 35 3c 18 00 00 	lea    0x183c(%rip),%rsi        # 80a280 <_IO_stdin_used+0x2f0>
  808a44:	bf 01 00 00 00       	mov    $0x1,%edi
  808a49:	b8 00 00 00 00       	mov    $0x0,%eax
  808a4e:	e8 8d 83 bf ff       	callq  400de0 <__printf_chk@plt>
  808a53:	bf 03 00 00 00       	mov    $0x3,%edi
  808a58:	e8 79 03 00 00       	callq  808dd6 <validate>
  808a5d:	bf 00 00 00 00       	mov    $0x0,%edi
  808a62:	e8 b9 83 bf ff       	callq  400e20 <exit@plt>
  808a67:	48 89 da             	mov    %rbx,%rdx
  808a6a:	48 8d 35 37 18 00 00 	lea    0x1837(%rip),%rsi        # 80a2a8 <_IO_stdin_used+0x318>
  808a71:	bf 01 00 00 00       	mov    $0x1,%edi
  808a76:	b8 00 00 00 00       	mov    $0x0,%eax
  808a7b:	e8 60 83 bf ff       	callq  400de0 <__printf_chk@plt>
  808a80:	bf 03 00 00 00       	mov    $0x3,%edi
  808a85:	e8 1c 04 00 00       	callq  808ea6 <fail>
  808a8a:	eb d1                	jmp    808a5d <touch3+0x43>

0000000000808a8c <test>:
  808a8c:	48 83 ec 08          	sub    $0x8,%rsp
  808a90:	b8 00 00 00 00       	mov    $0x0,%eax
  808a95:	e8 25 fe ff ff       	callq  8088bf <getbuf>
  808a9a:	89 c2                	mov    %eax,%edx
  808a9c:	48 8d 35 2d 18 00 00 	lea    0x182d(%rip),%rsi        # 80a2d0 <_IO_stdin_used+0x340>
  808aa3:	bf 01 00 00 00       	mov    $0x1,%edi
  808aa8:	b8 00 00 00 00       	mov    $0x0,%eax
  808aad:	e8 2e 83 bf ff       	callq  400de0 <__printf_chk@plt>
  808ab2:	48 83 c4 08          	add    $0x8,%rsp
  808ab6:	c3                   	retq   

0000000000808ab7 <save_char>:
  808ab7:	8b 05 67 36 20 00    	mov    0x203667(%rip),%eax        # a0c124 <gets_cnt>
  808abd:	3d ff 03 00 00       	cmp    $0x3ff,%eax
  808ac2:	7f 4a                	jg     808b0e <save_char+0x57>
  808ac4:	89 f9                	mov    %edi,%ecx
  808ac6:	c0 e9 04             	shr    $0x4,%cl
  808ac9:	8d 14 40             	lea    (%rax,%rax,2),%edx
  808acc:	4c 8d 05 1d 1b 00 00 	lea    0x1b1d(%rip),%r8        # 80a5f0 <trans_char>
  808ad3:	83 e1 0f             	and    $0xf,%ecx
  808ad6:	45 0f b6 0c 08       	movzbl (%r8,%rcx,1),%r9d
  808adb:	48 8d 0d 3e 2a 20 00 	lea    0x202a3e(%rip),%rcx        # a0b520 <gets_buf>
  808ae2:	48 63 f2             	movslq %edx,%rsi
  808ae5:	44 88 0c 31          	mov    %r9b,(%rcx,%rsi,1)
  808ae9:	8d 72 01             	lea    0x1(%rdx),%esi
  808aec:	83 e7 0f             	and    $0xf,%edi
  808aef:	41 0f b6 3c 38       	movzbl (%r8,%rdi,1),%edi
  808af4:	48 63 f6             	movslq %esi,%rsi
  808af7:	40 88 3c 31          	mov    %dil,(%rcx,%rsi,1)
  808afb:	83 c2 02             	add    $0x2,%edx
  808afe:	48 63 d2             	movslq %edx,%rdx
  808b01:	c6 04 11 20          	movb   $0x20,(%rcx,%rdx,1)
  808b05:	83 c0 01             	add    $0x1,%eax
  808b08:	89 05 16 36 20 00    	mov    %eax,0x203616(%rip)        # a0c124 <gets_cnt>
  808b0e:	f3 c3                	repz retq 

0000000000808b10 <save_term>:
  808b10:	8b 05 0e 36 20 00    	mov    0x20360e(%rip),%eax        # a0c124 <gets_cnt>
  808b16:	8d 04 40             	lea    (%rax,%rax,2),%eax
  808b19:	48 98                	cltq   
  808b1b:	48 8d 15 fe 29 20 00 	lea    0x2029fe(%rip),%rdx        # a0b520 <gets_buf>
  808b22:	c6 04 02 00          	movb   $0x0,(%rdx,%rax,1)
  808b26:	c3                   	retq   

0000000000808b27 <check_fail>:
  808b27:	48 83 ec 08          	sub    $0x8,%rsp
  808b2b:	0f be 15 fe 35 20 00 	movsbl 0x2035fe(%rip),%edx        # a0c130 <target_prefix>
  808b32:	4c 8d 05 e7 29 20 00 	lea    0x2029e7(%rip),%r8        # a0b520 <gets_buf>
  808b39:	8b 0d b9 29 20 00    	mov    0x2029b9(%rip),%ecx        # a0b4f8 <check_level>
  808b3f:	48 8d 35 ad 17 00 00 	lea    0x17ad(%rip),%rsi        # 80a2f3 <_IO_stdin_used+0x363>
  808b46:	bf 01 00 00 00       	mov    $0x1,%edi
  808b4b:	b8 00 00 00 00       	mov    $0x0,%eax
  808b50:	e8 8b 82 bf ff       	callq  400de0 <__printf_chk@plt>
  808b55:	bf 01 00 00 00       	mov    $0x1,%edi
  808b5a:	e8 c1 82 bf ff       	callq  400e20 <exit@plt>

0000000000808b5f <Gets>:
  808b5f:	41 54                	push   %r12
  808b61:	55                   	push   %rbp
  808b62:	53                   	push   %rbx
  808b63:	49 89 fc             	mov    %rdi,%r12
  808b66:	c7 05 b4 35 20 00 00 	movl   $0x0,0x2035b4(%rip)        # a0c124 <gets_cnt>
  808b6d:	00 00 00 
  808b70:	48 89 fb             	mov    %rdi,%rbx
  808b73:	eb 11                	jmp    808b86 <Gets+0x27>
  808b75:	48 8d 6b 01          	lea    0x1(%rbx),%rbp
  808b79:	88 03                	mov    %al,(%rbx)
  808b7b:	0f b6 f8             	movzbl %al,%edi
  808b7e:	e8 34 ff ff ff       	callq  808ab7 <save_char>
  808b83:	48 89 eb             	mov    %rbp,%rbx
  808b86:	48 8b 3d 63 29 20 00 	mov    0x202963(%rip),%rdi        # a0b4f0 <infile>
  808b8d:	e8 1e 82 bf ff       	callq  400db0 <_IO_getc@plt>
  808b92:	83 f8 ff             	cmp    $0xffffffff,%eax
  808b95:	74 05                	je     808b9c <Gets+0x3d>
  808b97:	83 f8 0a             	cmp    $0xa,%eax
  808b9a:	75 d9                	jne    808b75 <Gets+0x16>
  808b9c:	c6 03 00             	movb   $0x0,(%rbx)
  808b9f:	b8 00 00 00 00       	mov    $0x0,%eax
  808ba4:	e8 67 ff ff ff       	callq  808b10 <save_term>
  808ba9:	4c 89 e0             	mov    %r12,%rax
  808bac:	5b                   	pop    %rbx
  808bad:	5d                   	pop    %rbp
  808bae:	41 5c                	pop    %r12
  808bb0:	c3                   	retq   

0000000000808bb1 <notify_server>:
  808bb1:	55                   	push   %rbp
  808bb2:	53                   	push   %rbx
  808bb3:	48 81 ec 18 40 00 00 	sub    $0x4018,%rsp
  808bba:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
  808bc1:	00 00 
  808bc3:	48 89 84 24 08 40 00 	mov    %rax,0x4008(%rsp)
  808bca:	00 
  808bcb:	31 c0                	xor    %eax,%eax
  808bcd:	83 3d 34 29 20 00 00 	cmpl   $0x0,0x202934(%rip)        # a0b508 <is_checker>
  808bd4:	0f 85 d9 00 00 00    	jne    808cb3 <notify_server+0x102>
  808bda:	89 fb                	mov    %edi,%ebx
  808bdc:	8b 05 42 35 20 00    	mov    0x203542(%rip),%eax        # a0c124 <gets_cnt>
  808be2:	83 c0 64             	add    $0x64,%eax
  808be5:	3d 00 20 00 00       	cmp    $0x2000,%eax
  808bea:	0f 8f e4 00 00 00    	jg     808cd4 <notify_server+0x123>
  808bf0:	0f be 05 39 35 20 00 	movsbl 0x203539(%rip),%eax        # a0c130 <target_prefix>
  808bf7:	83 3d 8a 28 20 00 00 	cmpl   $0x0,0x20288a(%rip)        # a0b488 <notify>
  808bfe:	0f 84 f0 00 00 00    	je     808cf4 <notify_server+0x143>
  808c04:	8b 15 f6 28 20 00    	mov    0x2028f6(%rip),%edx        # a0b500 <authkey>
  808c0a:	85 db                	test   %ebx,%ebx
  808c0c:	0f 84 ec 00 00 00    	je     808cfe <notify_server+0x14d>
  808c12:	48 8d 2d f0 16 00 00 	lea    0x16f0(%rip),%rbp        # 80a309 <_IO_stdin_used+0x379>
  808c19:	48 89 e7             	mov    %rsp,%rdi
  808c1c:	48 83 ec 08          	sub    $0x8,%rsp
  808c20:	48 8d 0d f9 28 20 00 	lea    0x2028f9(%rip),%rcx        # a0b520 <gets_buf>
  808c27:	51                   	push   %rcx
  808c28:	56                   	push   %rsi
  808c29:	50                   	push   %rax
  808c2a:	52                   	push   %rdx
  808c2b:	55                   	push   %rbp
  808c2c:	44 8b 0d fd 24 20 00 	mov    0x2024fd(%rip),%r9d        # a0b130 <target_id>
  808c33:	4c 8d 05 d9 16 00 00 	lea    0x16d9(%rip),%r8        # 80a313 <_IO_stdin_used+0x383>
  808c3a:	b9 00 20 00 00       	mov    $0x2000,%ecx
  808c3f:	ba 01 00 00 00       	mov    $0x1,%edx
  808c44:	be 00 20 00 00       	mov    $0x2000,%esi
  808c49:	b8 00 00 00 00       	mov    $0x0,%eax
  808c4e:	e8 1d 80 bf ff       	callq  400c70 <__snprintf_chk@plt>
  808c53:	48 83 c4 30          	add    $0x30,%rsp
  808c57:	83 3d 2a 28 20 00 00 	cmpl   $0x0,0x20282a(%rip)        # a0b488 <notify>
  808c5e:	0f 84 df 00 00 00    	je     808d43 <notify_server+0x192>
  808c64:	85 db                	test   %ebx,%ebx
  808c66:	0f 84 c6 00 00 00    	je     808d32 <notify_server+0x181>
  808c6c:	48 89 e1             	mov    %rsp,%rcx
  808c6f:	4c 8d 8c 24 00 20 00 	lea    0x2000(%rsp),%r9
  808c76:	00 
  808c77:	41 b8 00 00 00 00    	mov    $0x0,%r8d
  808c7d:	48 8b 15 c4 24 20 00 	mov    0x2024c4(%rip),%rdx        # a0b148 <lab>
  808c84:	48 8b 35 f5 27 20 00 	mov    0x2027f5(%rip),%rsi        # a0b480 <course>
  808c8b:	48 8b 3d ae 24 20 00 	mov    0x2024ae(%rip),%rdi        # a0b140 <user_id>
  808c92:	e8 af 11 00 00       	callq  809e46 <driver_post>
  808c97:	85 c0                	test   %eax,%eax
  808c99:	78 6f                	js     808d0a <notify_server+0x159>
  808c9b:	48 8d 3d b6 17 00 00 	lea    0x17b6(%rip),%rdi        # 80a458 <_IO_stdin_used+0x4c8>
  808ca2:	e8 19 80 bf ff       	callq  400cc0 <puts@plt>
  808ca7:	48 8d 3d 8d 16 00 00 	lea    0x168d(%rip),%rdi        # 80a33b <_IO_stdin_used+0x3ab>
  808cae:	e8 0d 80 bf ff       	callq  400cc0 <puts@plt>
  808cb3:	48 8b 84 24 08 40 00 	mov    0x4008(%rsp),%rax
  808cba:	00 
  808cbb:	64 48 33 04 25 28 00 	xor    %fs:0x28,%rax
  808cc2:	00 00 
  808cc4:	0f 85 07 01 00 00    	jne    808dd1 <notify_server+0x220>
  808cca:	48 81 c4 18 40 00 00 	add    $0x4018,%rsp
  808cd1:	5b                   	pop    %rbx
  808cd2:	5d                   	pop    %rbp
  808cd3:	c3                   	retq   
  808cd4:	48 8d 35 4d 17 00 00 	lea    0x174d(%rip),%rsi        # 80a428 <_IO_stdin_used+0x498>
  808cdb:	bf 01 00 00 00       	mov    $0x1,%edi
  808ce0:	b8 00 00 00 00       	mov    $0x0,%eax
  808ce5:	e8 f6 80 bf ff       	callq  400de0 <__printf_chk@plt>
  808cea:	bf 01 00 00 00       	mov    $0x1,%edi
  808cef:	e8 2c 81 bf ff       	callq  400e20 <exit@plt>
  808cf4:	ba ff ff ff ff       	mov    $0xffffffff,%edx
  808cf9:	e9 0c ff ff ff       	jmpq   808c0a <notify_server+0x59>
  808cfe:	48 8d 2d 09 16 00 00 	lea    0x1609(%rip),%rbp        # 80a30e <_IO_stdin_used+0x37e>
  808d05:	e9 0f ff ff ff       	jmpq   808c19 <notify_server+0x68>
  808d0a:	48 8d 94 24 00 20 00 	lea    0x2000(%rsp),%rdx
  808d11:	00 
  808d12:	48 8d 35 16 16 00 00 	lea    0x1616(%rip),%rsi        # 80a32f <_IO_stdin_used+0x39f>
  808d19:	bf 01 00 00 00       	mov    $0x1,%edi
  808d1e:	b8 00 00 00 00       	mov    $0x0,%eax
  808d23:	e8 b8 80 bf ff       	callq  400de0 <__printf_chk@plt>
  808d28:	bf 01 00 00 00       	mov    $0x1,%edi
  808d2d:	e8 ee 80 bf ff       	callq  400e20 <exit@plt>
  808d32:	48 8d 3d 0c 16 00 00 	lea    0x160c(%rip),%rdi        # 80a345 <_IO_stdin_used+0x3b5>
  808d39:	e8 82 7f bf ff       	callq  400cc0 <puts@plt>
  808d3e:	e9 70 ff ff ff       	jmpq   808cb3 <notify_server+0x102>
  808d43:	48 89 ea             	mov    %rbp,%rdx
  808d46:	48 8d 35 43 17 00 00 	lea    0x1743(%rip),%rsi        # 80a490 <_IO_stdin_used+0x500>
  808d4d:	bf 01 00 00 00       	mov    $0x1,%edi
  808d52:	b8 00 00 00 00       	mov    $0x0,%eax
  808d57:	e8 84 80 bf ff       	callq  400de0 <__printf_chk@plt>
  808d5c:	48 8b 15 dd 23 20 00 	mov    0x2023dd(%rip),%rdx        # a0b140 <user_id>
  808d63:	48 8d 35 e2 15 00 00 	lea    0x15e2(%rip),%rsi        # 80a34c <_IO_stdin_used+0x3bc>
  808d6a:	bf 01 00 00 00       	mov    $0x1,%edi
  808d6f:	b8 00 00 00 00       	mov    $0x0,%eax
  808d74:	e8 67 80 bf ff       	callq  400de0 <__printf_chk@plt>
  808d79:	48 8b 15 00 27 20 00 	mov    0x202700(%rip),%rdx        # a0b480 <course>
  808d80:	48 8d 35 d2 15 00 00 	lea    0x15d2(%rip),%rsi        # 80a359 <_IO_stdin_used+0x3c9>
  808d87:	bf 01 00 00 00       	mov    $0x1,%edi
  808d8c:	b8 00 00 00 00       	mov    $0x0,%eax
  808d91:	e8 4a 80 bf ff       	callq  400de0 <__printf_chk@plt>
  808d96:	48 8b 15 ab 23 20 00 	mov    0x2023ab(%rip),%rdx        # a0b148 <lab>
  808d9d:	48 8d 35 c1 15 00 00 	lea    0x15c1(%rip),%rsi        # 80a365 <_IO_stdin_used+0x3d5>
  808da4:	bf 01 00 00 00       	mov    $0x1,%edi
  808da9:	b8 00 00 00 00       	mov    $0x0,%eax
  808dae:	e8 2d 80 bf ff       	callq  400de0 <__printf_chk@plt>
  808db3:	48 89 e2             	mov    %rsp,%rdx
  808db6:	48 8d 35 b1 15 00 00 	lea    0x15b1(%rip),%rsi        # 80a36e <_IO_stdin_used+0x3de>
  808dbd:	bf 01 00 00 00       	mov    $0x1,%edi
  808dc2:	b8 00 00 00 00       	mov    $0x0,%eax
  808dc7:	e8 14 80 bf ff       	callq  400de0 <__printf_chk@plt>
  808dcc:	e9 e2 fe ff ff       	jmpq   808cb3 <notify_server+0x102>
  808dd1:	e8 0a 7f bf ff       	callq  400ce0 <__stack_chk_fail@plt>

0000000000808dd6 <validate>:
  808dd6:	53                   	push   %rbx
  808dd7:	89 fb                	mov    %edi,%ebx
  808dd9:	83 3d 28 27 20 00 00 	cmpl   $0x0,0x202728(%rip)        # a0b508 <is_checker>
  808de0:	74 72                	je     808e54 <validate+0x7e>
  808de2:	39 3d 14 27 20 00    	cmp    %edi,0x202714(%rip)        # a0b4fc <vlevel>
  808de8:	75 32                	jne    808e1c <validate+0x46>
  808dea:	8b 15 08 27 20 00    	mov    0x202708(%rip),%edx        # a0b4f8 <check_level>
  808df0:	39 fa                	cmp    %edi,%edx
  808df2:	75 3e                	jne    808e32 <validate+0x5c>
  808df4:	0f be 15 35 33 20 00 	movsbl 0x203335(%rip),%edx        # a0c130 <target_prefix>
  808dfb:	4c 8d 05 1e 27 20 00 	lea    0x20271e(%rip),%r8        # a0b520 <gets_buf>
  808e02:	89 f9                	mov    %edi,%ecx
  808e04:	48 8d 35 8d 15 00 00 	lea    0x158d(%rip),%rsi        # 80a398 <_IO_stdin_used+0x408>
  808e0b:	bf 01 00 00 00       	mov    $0x1,%edi
  808e10:	b8 00 00 00 00       	mov    $0x0,%eax
  808e15:	e8 c6 7f bf ff       	callq  400de0 <__printf_chk@plt>
  808e1a:	5b                   	pop    %rbx
  808e1b:	c3                   	retq   
  808e1c:	48 8d 3d 57 15 00 00 	lea    0x1557(%rip),%rdi        # 80a37a <_IO_stdin_used+0x3ea>
  808e23:	e8 98 7e bf ff       	callq  400cc0 <puts@plt>
  808e28:	b8 00 00 00 00       	mov    $0x0,%eax
  808e2d:	e8 f5 fc ff ff       	callq  808b27 <check_fail>
  808e32:	89 f9                	mov    %edi,%ecx
  808e34:	48 8d 35 7d 16 00 00 	lea    0x167d(%rip),%rsi        # 80a4b8 <_IO_stdin_used+0x528>
  808e3b:	bf 01 00 00 00       	mov    $0x1,%edi
  808e40:	b8 00 00 00 00       	mov    $0x0,%eax
  808e45:	e8 96 7f bf ff       	callq  400de0 <__printf_chk@plt>
  808e4a:	b8 00 00 00 00       	mov    $0x0,%eax
  808e4f:	e8 d3 fc ff ff       	callq  808b27 <check_fail>
  808e54:	39 3d a2 26 20 00    	cmp    %edi,0x2026a2(%rip)        # a0b4fc <vlevel>
  808e5a:	74 1a                	je     808e76 <validate+0xa0>
  808e5c:	48 8d 3d 17 15 00 00 	lea    0x1517(%rip),%rdi        # 80a37a <_IO_stdin_used+0x3ea>
  808e63:	e8 58 7e bf ff       	callq  400cc0 <puts@plt>
  808e68:	89 de                	mov    %ebx,%esi
  808e6a:	bf 00 00 00 00       	mov    $0x0,%edi
  808e6f:	e8 3d fd ff ff       	callq  808bb1 <notify_server>
  808e74:	eb a4                	jmp    808e1a <validate+0x44>
  808e76:	0f be 0d b3 32 20 00 	movsbl 0x2032b3(%rip),%ecx        # a0c130 <target_prefix>
  808e7d:	89 fa                	mov    %edi,%edx
  808e7f:	48 8d 35 5a 16 00 00 	lea    0x165a(%rip),%rsi        # 80a4e0 <_IO_stdin_used+0x550>
  808e86:	bf 01 00 00 00       	mov    $0x1,%edi
  808e8b:	b8 00 00 00 00       	mov    $0x0,%eax
  808e90:	e8 4b 7f bf ff       	callq  400de0 <__printf_chk@plt>
  808e95:	89 de                	mov    %ebx,%esi
  808e97:	bf 01 00 00 00       	mov    $0x1,%edi
  808e9c:	e8 10 fd ff ff       	callq  808bb1 <notify_server>
  808ea1:	e9 74 ff ff ff       	jmpq   808e1a <validate+0x44>

0000000000808ea6 <fail>:
  808ea6:	48 83 ec 08          	sub    $0x8,%rsp
  808eaa:	83 3d 57 26 20 00 00 	cmpl   $0x0,0x202657(%rip)        # a0b508 <is_checker>
  808eb1:	75 11                	jne    808ec4 <fail+0x1e>
  808eb3:	89 fe                	mov    %edi,%esi
  808eb5:	bf 00 00 00 00       	mov    $0x0,%edi
  808eba:	e8 f2 fc ff ff       	callq  808bb1 <notify_server>
  808ebf:	48 83 c4 08          	add    $0x8,%rsp
  808ec3:	c3                   	retq   
  808ec4:	b8 00 00 00 00       	mov    $0x0,%eax
  808ec9:	e8 59 fc ff ff       	callq  808b27 <check_fail>

0000000000808ece <bushandler>:
  808ece:	48 83 ec 08          	sub    $0x8,%rsp
  808ed2:	83 3d 2f 26 20 00 00 	cmpl   $0x0,0x20262f(%rip)        # a0b508 <is_checker>
  808ed9:	74 16                	je     808ef1 <bushandler+0x23>
  808edb:	48 8d 3d cb 14 00 00 	lea    0x14cb(%rip),%rdi        # 80a3ad <_IO_stdin_used+0x41d>
  808ee2:	e8 d9 7d bf ff       	callq  400cc0 <puts@plt>
  808ee7:	b8 00 00 00 00       	mov    $0x0,%eax
  808eec:	e8 36 fc ff ff       	callq  808b27 <check_fail>
  808ef1:	48 8d 3d 20 16 00 00 	lea    0x1620(%rip),%rdi        # 80a518 <_IO_stdin_used+0x588>
  808ef8:	e8 c3 7d bf ff       	callq  400cc0 <puts@plt>
  808efd:	48 8d 3d b3 14 00 00 	lea    0x14b3(%rip),%rdi        # 80a3b7 <_IO_stdin_used+0x427>
  808f04:	e8 b7 7d bf ff       	callq  400cc0 <puts@plt>
  808f09:	be 00 00 00 00       	mov    $0x0,%esi
  808f0e:	bf 00 00 00 00       	mov    $0x0,%edi
  808f13:	e8 99 fc ff ff       	callq  808bb1 <notify_server>
  808f18:	bf 01 00 00 00       	mov    $0x1,%edi
  808f1d:	e8 fe 7e bf ff       	callq  400e20 <exit@plt>

0000000000808f22 <seghandler>:
  808f22:	48 83 ec 08          	sub    $0x8,%rsp
  808f26:	83 3d db 25 20 00 00 	cmpl   $0x0,0x2025db(%rip)        # a0b508 <is_checker>
  808f2d:	74 16                	je     808f45 <seghandler+0x23>
  808f2f:	48 8d 3d 97 14 00 00 	lea    0x1497(%rip),%rdi        # 80a3cd <_IO_stdin_used+0x43d>
  808f36:	e8 85 7d bf ff       	callq  400cc0 <puts@plt>
  808f3b:	b8 00 00 00 00       	mov    $0x0,%eax
  808f40:	e8 e2 fb ff ff       	callq  808b27 <check_fail>
  808f45:	48 8d 3d ec 15 00 00 	lea    0x15ec(%rip),%rdi        # 80a538 <_IO_stdin_used+0x5a8>
  808f4c:	e8 6f 7d bf ff       	callq  400cc0 <puts@plt>
  808f51:	48 8d 3d 5f 14 00 00 	lea    0x145f(%rip),%rdi        # 80a3b7 <_IO_stdin_used+0x427>
  808f58:	e8 63 7d bf ff       	callq  400cc0 <puts@plt>
  808f5d:	be 00 00 00 00       	mov    $0x0,%esi
  808f62:	bf 00 00 00 00       	mov    $0x0,%edi
  808f67:	e8 45 fc ff ff       	callq  808bb1 <notify_server>
  808f6c:	bf 01 00 00 00       	mov    $0x1,%edi
  808f71:	e8 aa 7e bf ff       	callq  400e20 <exit@plt>

0000000000808f76 <illegalhandler>:
  808f76:	48 83 ec 08          	sub    $0x8,%rsp
  808f7a:	83 3d 87 25 20 00 00 	cmpl   $0x0,0x202587(%rip)        # a0b508 <is_checker>
  808f81:	74 16                	je     808f99 <illegalhandler+0x23>
  808f83:	48 8d 3d 56 14 00 00 	lea    0x1456(%rip),%rdi        # 80a3e0 <_IO_stdin_used+0x450>
  808f8a:	e8 31 7d bf ff       	callq  400cc0 <puts@plt>
  808f8f:	b8 00 00 00 00       	mov    $0x0,%eax
  808f94:	e8 8e fb ff ff       	callq  808b27 <check_fail>
  808f99:	48 8d 3d c0 15 00 00 	lea    0x15c0(%rip),%rdi        # 80a560 <_IO_stdin_used+0x5d0>
  808fa0:	e8 1b 7d bf ff       	callq  400cc0 <puts@plt>
  808fa5:	48 8d 3d 0b 14 00 00 	lea    0x140b(%rip),%rdi        # 80a3b7 <_IO_stdin_used+0x427>
  808fac:	e8 0f 7d bf ff       	callq  400cc0 <puts@plt>
  808fb1:	be 00 00 00 00       	mov    $0x0,%esi
  808fb6:	bf 00 00 00 00       	mov    $0x0,%edi
  808fbb:	e8 f1 fb ff ff       	callq  808bb1 <notify_server>
  808fc0:	bf 01 00 00 00       	mov    $0x1,%edi
  808fc5:	e8 56 7e bf ff       	callq  400e20 <exit@plt>

0000000000808fca <sigalrmhandler>:
  808fca:	48 83 ec 08          	sub    $0x8,%rsp
  808fce:	83 3d 33 25 20 00 00 	cmpl   $0x0,0x202533(%rip)        # a0b508 <is_checker>
  808fd5:	74 16                	je     808fed <sigalrmhandler+0x23>
  808fd7:	48 8d 3d 16 14 00 00 	lea    0x1416(%rip),%rdi        # 80a3f4 <_IO_stdin_used+0x464>
  808fde:	e8 dd 7c bf ff       	callq  400cc0 <puts@plt>
  808fe3:	b8 00 00 00 00       	mov    $0x0,%eax
  808fe8:	e8 3a fb ff ff       	callq  808b27 <check_fail>
  808fed:	ba 05 00 00 00       	mov    $0x5,%edx
  808ff2:	48 8d 35 97 15 00 00 	lea    0x1597(%rip),%rsi        # 80a590 <_IO_stdin_used+0x600>
  808ff9:	bf 01 00 00 00       	mov    $0x1,%edi
  808ffe:	b8 00 00 00 00       	mov    $0x0,%eax
  809003:	e8 d8 7d bf ff       	callq  400de0 <__printf_chk@plt>
  809008:	be 00 00 00 00       	mov    $0x0,%esi
  80900d:	bf 00 00 00 00       	mov    $0x0,%edi
  809012:	e8 9a fb ff ff       	callq  808bb1 <notify_server>
  809017:	bf 01 00 00 00       	mov    $0x1,%edi
  80901c:	e8 ff 7d bf ff       	callq  400e20 <exit@plt>

0000000000809021 <launch>:
  809021:	55                   	push   %rbp
  809022:	48 89 e5             	mov    %rsp,%rbp
  809025:	48 83 ec 10          	sub    $0x10,%rsp
  809029:	48 89 fa             	mov    %rdi,%rdx
  80902c:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
  809033:	00 00 
  809035:	48 89 45 f8          	mov    %rax,-0x8(%rbp)
  809039:	31 c0                	xor    %eax,%eax
  80903b:	48 8d 47 1e          	lea    0x1e(%rdi),%rax
  80903f:	48 83 e0 f0          	and    $0xfffffffffffffff0,%rax
  809043:	48 29 c4             	sub    %rax,%rsp
  809046:	48 8d 7c 24 0f       	lea    0xf(%rsp),%rdi
  80904b:	48 83 e7 f0          	and    $0xfffffffffffffff0,%rdi
  80904f:	be f4 00 00 00       	mov    $0xf4,%esi
  809054:	e8 a7 7c bf ff       	callq  400d00 <memset@plt>
  809059:	48 8b 05 40 24 20 00 	mov    0x202440(%rip),%rax        # a0b4a0 <stdin@@GLIBC_2.2.5>
  809060:	48 39 05 89 24 20 00 	cmp    %rax,0x202489(%rip)        # a0b4f0 <infile>
  809067:	74 3a                	je     8090a3 <launch+0x82>
  809069:	c7 05 89 24 20 00 00 	movl   $0x0,0x202489(%rip)        # a0b4fc <vlevel>
  809070:	00 00 00 
  809073:	b8 00 00 00 00       	mov    $0x0,%eax
  809078:	e8 0f fa ff ff       	callq  808a8c <test>
  80907d:	83 3d 84 24 20 00 00 	cmpl   $0x0,0x202484(%rip)        # a0b508 <is_checker>
  809084:	75 35                	jne    8090bb <launch+0x9a>
  809086:	48 8d 3d 87 13 00 00 	lea    0x1387(%rip),%rdi        # 80a414 <_IO_stdin_used+0x484>
  80908d:	e8 2e 7c bf ff       	callq  400cc0 <puts@plt>
  809092:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
  809096:	64 48 33 04 25 28 00 	xor    %fs:0x28,%rax
  80909d:	00 00 
  80909f:	75 30                	jne    8090d1 <launch+0xb0>
  8090a1:	c9                   	leaveq 
  8090a2:	c3                   	retq   
  8090a3:	48 8d 35 52 13 00 00 	lea    0x1352(%rip),%rsi        # 80a3fc <_IO_stdin_used+0x46c>
  8090aa:	bf 01 00 00 00       	mov    $0x1,%edi
  8090af:	b8 00 00 00 00       	mov    $0x0,%eax
  8090b4:	e8 27 7d bf ff       	callq  400de0 <__printf_chk@plt>
  8090b9:	eb ae                	jmp    809069 <launch+0x48>
  8090bb:	48 8d 3d 47 13 00 00 	lea    0x1347(%rip),%rdi        # 80a409 <_IO_stdin_used+0x479>
  8090c2:	e8 f9 7b bf ff       	callq  400cc0 <puts@plt>
  8090c7:	b8 00 00 00 00       	mov    $0x0,%eax
  8090cc:	e8 56 fa ff ff       	callq  808b27 <check_fail>
  8090d1:	e8 0a 7c bf ff       	callq  400ce0 <__stack_chk_fail@plt>

00000000008090d6 <stable_launch>:
  8090d6:	53                   	push   %rbx
  8090d7:	48 89 3d 0a 24 20 00 	mov    %rdi,0x20240a(%rip)        # a0b4e8 <global_offset>
  8090de:	41 b9 00 00 00 00    	mov    $0x0,%r9d
  8090e4:	41 b8 00 00 00 00    	mov    $0x0,%r8d
  8090ea:	b9 32 01 00 00       	mov    $0x132,%ecx
  8090ef:	ba 07 00 00 00       	mov    $0x7,%edx
  8090f4:	be 00 00 10 00       	mov    $0x100000,%esi
  8090f9:	bf 00 60 58 55       	mov    $0x55586000,%edi
  8090fe:	e8 ed 7b bf ff       	callq  400cf0 <mmap@plt>
  809103:	48 89 c3             	mov    %rax,%rbx
  809106:	48 3d 00 60 58 55    	cmp    $0x55586000,%rax
  80910c:	75 43                	jne    809151 <stable_launch+0x7b>
  80910e:	48 8d 90 f8 ff 0f 00 	lea    0xffff8(%rax),%rdx
  809115:	48 89 15 0c 30 20 00 	mov    %rdx,0x20300c(%rip)        # a0c128 <stack_top>
  80911c:	48 89 e0             	mov    %rsp,%rax
  80911f:	48 89 d4             	mov    %rdx,%rsp
  809122:	48 89 c2             	mov    %rax,%rdx
  809125:	48 89 15 b4 23 20 00 	mov    %rdx,0x2023b4(%rip)        # a0b4e0 <global_save_stack>
  80912c:	48 8b 3d b5 23 20 00 	mov    0x2023b5(%rip),%rdi        # a0b4e8 <global_offset>
  809133:	e8 e9 fe ff ff       	callq  809021 <launch>
  809138:	48 8b 05 a1 23 20 00 	mov    0x2023a1(%rip),%rax        # a0b4e0 <global_save_stack>
  80913f:	48 89 c4             	mov    %rax,%rsp
  809142:	be 00 00 10 00       	mov    $0x100000,%esi
  809147:	48 89 df             	mov    %rbx,%rdi
  80914a:	e8 81 7c bf ff       	callq  400dd0 <munmap@plt>
  80914f:	5b                   	pop    %rbx
  809150:	c3                   	retq   
  809151:	be 00 00 10 00       	mov    $0x100000,%esi
  809156:	48 89 c7             	mov    %rax,%rdi
  809159:	e8 72 7c bf ff       	callq  400dd0 <munmap@plt>
  80915e:	b9 00 60 58 55       	mov    $0x55586000,%ecx
  809163:	48 8d 15 5e 14 00 00 	lea    0x145e(%rip),%rdx        # 80a5c8 <_IO_stdin_used+0x638>
  80916a:	be 01 00 00 00       	mov    $0x1,%esi
  80916f:	48 8b 3d 4a 23 20 00 	mov    0x20234a(%rip),%rdi        # a0b4c0 <stderr@@GLIBC_2.2.5>
  809176:	b8 00 00 00 00       	mov    $0x0,%eax
  80917b:	e8 c0 7c bf ff       	callq  400e40 <__fprintf_chk@plt>
  809180:	bf 01 00 00 00       	mov    $0x1,%edi
  809185:	e8 96 7c bf ff       	callq  400e20 <exit@plt>

000000000080918a <rio_readinitb>:
  80918a:	89 37                	mov    %esi,(%rdi)
  80918c:	c7 47 04 00 00 00 00 	movl   $0x0,0x4(%rdi)
  809193:	48 8d 47 10          	lea    0x10(%rdi),%rax
  809197:	48 89 47 08          	mov    %rax,0x8(%rdi)
  80919b:	c3                   	retq   

000000000080919c <sigalrm_handler>:
  80919c:	48 83 ec 08          	sub    $0x8,%rsp
  8091a0:	b9 00 00 00 00       	mov    $0x0,%ecx
  8091a5:	48 8d 15 54 14 00 00 	lea    0x1454(%rip),%rdx        # 80a600 <trans_char+0x10>
  8091ac:	be 01 00 00 00       	mov    $0x1,%esi
  8091b1:	48 8b 3d 08 23 20 00 	mov    0x202308(%rip),%rdi        # a0b4c0 <stderr@@GLIBC_2.2.5>
  8091b8:	b8 00 00 00 00       	mov    $0x0,%eax
  8091bd:	e8 7e 7c bf ff       	callq  400e40 <__fprintf_chk@plt>
  8091c2:	bf 01 00 00 00       	mov    $0x1,%edi
  8091c7:	e8 54 7c bf ff       	callq  400e20 <exit@plt>

00000000008091cc <rio_writen>:
  8091cc:	41 55                	push   %r13
  8091ce:	41 54                	push   %r12
  8091d0:	55                   	push   %rbp
  8091d1:	53                   	push   %rbx
  8091d2:	48 83 ec 08          	sub    $0x8,%rsp
  8091d6:	41 89 fc             	mov    %edi,%r12d
  8091d9:	48 89 f5             	mov    %rsi,%rbp
  8091dc:	49 89 d5             	mov    %rdx,%r13
  8091df:	48 89 d3             	mov    %rdx,%rbx
  8091e2:	eb 06                	jmp    8091ea <rio_writen+0x1e>
  8091e4:	48 29 c3             	sub    %rax,%rbx
  8091e7:	48 01 c5             	add    %rax,%rbp
  8091ea:	48 85 db             	test   %rbx,%rbx
  8091ed:	74 24                	je     809213 <rio_writen+0x47>
  8091ef:	48 89 da             	mov    %rbx,%rdx
  8091f2:	48 89 ee             	mov    %rbp,%rsi
  8091f5:	44 89 e7             	mov    %r12d,%edi
  8091f8:	e8 d3 7a bf ff       	callq  400cd0 <write@plt>
  8091fd:	48 85 c0             	test   %rax,%rax
  809200:	7f e2                	jg     8091e4 <rio_writen+0x18>
  809202:	e8 79 7a bf ff       	callq  400c80 <__errno_location@plt>
  809207:	83 38 04             	cmpl   $0x4,(%rax)
  80920a:	75 15                	jne    809221 <rio_writen+0x55>
  80920c:	b8 00 00 00 00       	mov    $0x0,%eax
  809211:	eb d1                	jmp    8091e4 <rio_writen+0x18>
  809213:	4c 89 e8             	mov    %r13,%rax
  809216:	48 83 c4 08          	add    $0x8,%rsp
  80921a:	5b                   	pop    %rbx
  80921b:	5d                   	pop    %rbp
  80921c:	41 5c                	pop    %r12
  80921e:	41 5d                	pop    %r13
  809220:	c3                   	retq   
  809221:	48 c7 c0 ff ff ff ff 	mov    $0xffffffffffffffff,%rax
  809228:	eb ec                	jmp    809216 <rio_writen+0x4a>

000000000080922a <rio_read>:
  80922a:	41 55                	push   %r13
  80922c:	41 54                	push   %r12
  80922e:	55                   	push   %rbp
  80922f:	53                   	push   %rbx
  809230:	48 83 ec 08          	sub    $0x8,%rsp
  809234:	48 89 fb             	mov    %rdi,%rbx
  809237:	49 89 f5             	mov    %rsi,%r13
  80923a:	49 89 d4             	mov    %rdx,%r12
  80923d:	eb 0a                	jmp    809249 <rio_read+0x1f>
  80923f:	e8 3c 7a bf ff       	callq  400c80 <__errno_location@plt>
  809244:	83 38 04             	cmpl   $0x4,(%rax)
  809247:	75 5c                	jne    8092a5 <rio_read+0x7b>
  809249:	8b 6b 04             	mov    0x4(%rbx),%ebp
  80924c:	85 ed                	test   %ebp,%ebp
  80924e:	7f 24                	jg     809274 <rio_read+0x4a>
  809250:	48 8d 6b 10          	lea    0x10(%rbx),%rbp
  809254:	8b 3b                	mov    (%rbx),%edi
  809256:	ba 00 20 00 00       	mov    $0x2000,%edx
  80925b:	48 89 ee             	mov    %rbp,%rsi
  80925e:	e8 cd 7a bf ff       	callq  400d30 <read@plt>
  809263:	89 43 04             	mov    %eax,0x4(%rbx)
  809266:	85 c0                	test   %eax,%eax
  809268:	78 d5                	js     80923f <rio_read+0x15>
  80926a:	85 c0                	test   %eax,%eax
  80926c:	74 40                	je     8092ae <rio_read+0x84>
  80926e:	48 89 6b 08          	mov    %rbp,0x8(%rbx)
  809272:	eb d5                	jmp    809249 <rio_read+0x1f>
  809274:	89 e8                	mov    %ebp,%eax
  809276:	4c 39 e0             	cmp    %r12,%rax
  809279:	72 03                	jb     80927e <rio_read+0x54>
  80927b:	44 89 e5             	mov    %r12d,%ebp
  80927e:	4c 63 e5             	movslq %ebp,%r12
  809281:	48 8b 73 08          	mov    0x8(%rbx),%rsi
  809285:	4c 89 e2             	mov    %r12,%rdx
  809288:	4c 89 ef             	mov    %r13,%rdi
  80928b:	e8 f0 7a bf ff       	callq  400d80 <memcpy@plt>
  809290:	4c 01 63 08          	add    %r12,0x8(%rbx)
  809294:	29 6b 04             	sub    %ebp,0x4(%rbx)
  809297:	4c 89 e0             	mov    %r12,%rax
  80929a:	48 83 c4 08          	add    $0x8,%rsp
  80929e:	5b                   	pop    %rbx
  80929f:	5d                   	pop    %rbp
  8092a0:	41 5c                	pop    %r12
  8092a2:	41 5d                	pop    %r13
  8092a4:	c3                   	retq   
  8092a5:	48 c7 c0 ff ff ff ff 	mov    $0xffffffffffffffff,%rax
  8092ac:	eb ec                	jmp    80929a <rio_read+0x70>
  8092ae:	b8 00 00 00 00       	mov    $0x0,%eax
  8092b3:	eb e5                	jmp    80929a <rio_read+0x70>

00000000008092b5 <rio_readlineb>:
  8092b5:	41 55                	push   %r13
  8092b7:	41 54                	push   %r12
  8092b9:	55                   	push   %rbp
  8092ba:	53                   	push   %rbx
  8092bb:	48 83 ec 18          	sub    $0x18,%rsp
  8092bf:	49 89 fd             	mov    %rdi,%r13
  8092c2:	48 89 f5             	mov    %rsi,%rbp
  8092c5:	49 89 d4             	mov    %rdx,%r12
  8092c8:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
  8092cf:	00 00 
  8092d1:	48 89 44 24 08       	mov    %rax,0x8(%rsp)
  8092d6:	31 c0                	xor    %eax,%eax
  8092d8:	bb 01 00 00 00       	mov    $0x1,%ebx
  8092dd:	4c 39 e3             	cmp    %r12,%rbx
  8092e0:	73 47                	jae    809329 <rio_readlineb+0x74>
  8092e2:	48 8d 74 24 07       	lea    0x7(%rsp),%rsi
  8092e7:	ba 01 00 00 00       	mov    $0x1,%edx
  8092ec:	4c 89 ef             	mov    %r13,%rdi
  8092ef:	e8 36 ff ff ff       	callq  80922a <rio_read>
  8092f4:	83 f8 01             	cmp    $0x1,%eax
  8092f7:	75 1c                	jne    809315 <rio_readlineb+0x60>
  8092f9:	48 8d 45 01          	lea    0x1(%rbp),%rax
  8092fd:	0f b6 54 24 07       	movzbl 0x7(%rsp),%edx
  809302:	88 55 00             	mov    %dl,0x0(%rbp)
  809305:	80 7c 24 07 0a       	cmpb   $0xa,0x7(%rsp)
  80930a:	74 1a                	je     809326 <rio_readlineb+0x71>
  80930c:	48 83 c3 01          	add    $0x1,%rbx
  809310:	48 89 c5             	mov    %rax,%rbp
  809313:	eb c8                	jmp    8092dd <rio_readlineb+0x28>
  809315:	85 c0                	test   %eax,%eax
  809317:	75 32                	jne    80934b <rio_readlineb+0x96>
  809319:	48 83 fb 01          	cmp    $0x1,%rbx
  80931d:	75 0a                	jne    809329 <rio_readlineb+0x74>
  80931f:	b8 00 00 00 00       	mov    $0x0,%eax
  809324:	eb 0a                	jmp    809330 <rio_readlineb+0x7b>
  809326:	48 89 c5             	mov    %rax,%rbp
  809329:	c6 45 00 00          	movb   $0x0,0x0(%rbp)
  80932d:	48 89 d8             	mov    %rbx,%rax
  809330:	48 8b 4c 24 08       	mov    0x8(%rsp),%rcx
  809335:	64 48 33 0c 25 28 00 	xor    %fs:0x28,%rcx
  80933c:	00 00 
  80933e:	75 14                	jne    809354 <rio_readlineb+0x9f>
  809340:	48 83 c4 18          	add    $0x18,%rsp
  809344:	5b                   	pop    %rbx
  809345:	5d                   	pop    %rbp
  809346:	41 5c                	pop    %r12
  809348:	41 5d                	pop    %r13
  80934a:	c3                   	retq   
  80934b:	48 c7 c0 ff ff ff ff 	mov    $0xffffffffffffffff,%rax
  809352:	eb dc                	jmp    809330 <rio_readlineb+0x7b>
  809354:	e8 87 79 bf ff       	callq  400ce0 <__stack_chk_fail@plt>

0000000000809359 <urlencode>:
  809359:	41 54                	push   %r12
  80935b:	55                   	push   %rbp
  80935c:	53                   	push   %rbx
  80935d:	48 83 ec 10          	sub    $0x10,%rsp
  809361:	48 89 fb             	mov    %rdi,%rbx
  809364:	48 89 f5             	mov    %rsi,%rbp
  809367:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
  80936e:	00 00 
  809370:	48 89 44 24 08       	mov    %rax,0x8(%rsp)
  809375:	31 c0                	xor    %eax,%eax
  809377:	48 c7 c1 ff ff ff ff 	mov    $0xffffffffffffffff,%rcx
  80937e:	f2 ae                	repnz scas %es:(%rdi),%al
  809380:	48 89 ce             	mov    %rcx,%rsi
  809383:	48 f7 d6             	not    %rsi
  809386:	8d 46 ff             	lea    -0x1(%rsi),%eax
  809389:	eb 0f                	jmp    80939a <urlencode+0x41>
  80938b:	44 88 45 00          	mov    %r8b,0x0(%rbp)
  80938f:	48 8d 6d 01          	lea    0x1(%rbp),%rbp
  809393:	48 83 c3 01          	add    $0x1,%rbx
  809397:	44 89 e0             	mov    %r12d,%eax
  80939a:	44 8d 60 ff          	lea    -0x1(%rax),%r12d
  80939e:	85 c0                	test   %eax,%eax
  8093a0:	0f 84 a8 00 00 00    	je     80944e <urlencode+0xf5>
  8093a6:	44 0f b6 03          	movzbl (%rbx),%r8d
  8093aa:	41 80 f8 2a          	cmp    $0x2a,%r8b
  8093ae:	0f 94 c2             	sete   %dl
  8093b1:	41 80 f8 2d          	cmp    $0x2d,%r8b
  8093b5:	0f 94 c0             	sete   %al
  8093b8:	08 c2                	or     %al,%dl
  8093ba:	75 cf                	jne    80938b <urlencode+0x32>
  8093bc:	41 80 f8 2e          	cmp    $0x2e,%r8b
  8093c0:	74 c9                	je     80938b <urlencode+0x32>
  8093c2:	41 80 f8 5f          	cmp    $0x5f,%r8b
  8093c6:	74 c3                	je     80938b <urlencode+0x32>
  8093c8:	41 8d 40 d0          	lea    -0x30(%r8),%eax
  8093cc:	3c 09                	cmp    $0x9,%al
  8093ce:	76 bb                	jbe    80938b <urlencode+0x32>
  8093d0:	41 8d 40 bf          	lea    -0x41(%r8),%eax
  8093d4:	3c 19                	cmp    $0x19,%al
  8093d6:	76 b3                	jbe    80938b <urlencode+0x32>
  8093d8:	41 8d 40 9f          	lea    -0x61(%r8),%eax
  8093dc:	3c 19                	cmp    $0x19,%al
  8093de:	76 ab                	jbe    80938b <urlencode+0x32>
  8093e0:	41 80 f8 20          	cmp    $0x20,%r8b
  8093e4:	74 56                	je     80943c <urlencode+0xe3>
  8093e6:	41 8d 40 e0          	lea    -0x20(%r8),%eax
  8093ea:	3c 5f                	cmp    $0x5f,%al
  8093ec:	0f 96 c2             	setbe  %dl
  8093ef:	41 80 f8 09          	cmp    $0x9,%r8b
  8093f3:	0f 94 c0             	sete   %al
  8093f6:	08 c2                	or     %al,%dl
  8093f8:	74 4f                	je     809449 <urlencode+0xf0>
  8093fa:	48 89 e7             	mov    %rsp,%rdi
  8093fd:	45 0f b6 c0          	movzbl %r8b,%r8d
  809401:	48 8d 0d 90 12 00 00 	lea    0x1290(%rip),%rcx        # 80a698 <trans_char+0xa8>
  809408:	ba 08 00 00 00       	mov    $0x8,%edx
  80940d:	be 01 00 00 00       	mov    $0x1,%esi
  809412:	b8 00 00 00 00       	mov    $0x0,%eax
  809417:	e8 34 7a bf ff       	callq  400e50 <__sprintf_chk@plt>
  80941c:	0f b6 04 24          	movzbl (%rsp),%eax
  809420:	88 45 00             	mov    %al,0x0(%rbp)
  809423:	0f b6 44 24 01       	movzbl 0x1(%rsp),%eax
  809428:	88 45 01             	mov    %al,0x1(%rbp)
  80942b:	0f b6 44 24 02       	movzbl 0x2(%rsp),%eax
  809430:	88 45 02             	mov    %al,0x2(%rbp)
  809433:	48 8d 6d 03          	lea    0x3(%rbp),%rbp
  809437:	e9 57 ff ff ff       	jmpq   809393 <urlencode+0x3a>
  80943c:	c6 45 00 2b          	movb   $0x2b,0x0(%rbp)
  809440:	48 8d 6d 01          	lea    0x1(%rbp),%rbp
  809444:	e9 4a ff ff ff       	jmpq   809393 <urlencode+0x3a>
  809449:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  80944e:	48 8b 74 24 08       	mov    0x8(%rsp),%rsi
  809453:	64 48 33 34 25 28 00 	xor    %fs:0x28,%rsi
  80945a:	00 00 
  80945c:	75 09                	jne    809467 <urlencode+0x10e>
  80945e:	48 83 c4 10          	add    $0x10,%rsp
  809462:	5b                   	pop    %rbx
  809463:	5d                   	pop    %rbp
  809464:	41 5c                	pop    %r12
  809466:	c3                   	retq   
  809467:	e8 74 78 bf ff       	callq  400ce0 <__stack_chk_fail@plt>

000000000080946c <submitr>:
  80946c:	41 57                	push   %r15
  80946e:	41 56                	push   %r14
  809470:	41 55                	push   %r13
  809472:	41 54                	push   %r12
  809474:	55                   	push   %rbp
  809475:	53                   	push   %rbx
  809476:	48 81 ec 68 a0 00 00 	sub    $0xa068,%rsp
  80947d:	49 89 fd             	mov    %rdi,%r13
  809480:	89 74 24 14          	mov    %esi,0x14(%rsp)
  809484:	49 89 d7             	mov    %rdx,%r15
  809487:	48 89 4c 24 08       	mov    %rcx,0x8(%rsp)
  80948c:	4c 89 44 24 18       	mov    %r8,0x18(%rsp)
  809491:	4d 89 ce             	mov    %r9,%r14
  809494:	48 8b ac 24 a0 a0 00 	mov    0xa0a0(%rsp),%rbp
  80949b:	00 
  80949c:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
  8094a3:	00 00 
  8094a5:	48 89 84 24 58 a0 00 	mov    %rax,0xa058(%rsp)
  8094ac:	00 
  8094ad:	31 c0                	xor    %eax,%eax
  8094af:	c7 44 24 2c 00 00 00 	movl   $0x0,0x2c(%rsp)
  8094b6:	00 
  8094b7:	ba 00 00 00 00       	mov    $0x0,%edx
  8094bc:	be 01 00 00 00       	mov    $0x1,%esi
  8094c1:	bf 02 00 00 00       	mov    $0x2,%edi
  8094c6:	e8 95 79 bf ff       	callq  400e60 <socket@plt>
  8094cb:	85 c0                	test   %eax,%eax
  8094cd:	0f 88 a9 02 00 00    	js     80977c <submitr+0x310>
  8094d3:	89 c3                	mov    %eax,%ebx
  8094d5:	4c 89 ef             	mov    %r13,%rdi
  8094d8:	e8 73 78 bf ff       	callq  400d50 <gethostbyname@plt>
  8094dd:	48 85 c0             	test   %rax,%rax
  8094e0:	0f 84 e2 02 00 00    	je     8097c8 <submitr+0x35c>
  8094e6:	4c 8d 64 24 30       	lea    0x30(%rsp),%r12
  8094eb:	48 c7 44 24 32 00 00 	movq   $0x0,0x32(%rsp)
  8094f2:	00 00 
  8094f4:	c7 44 24 3a 00 00 00 	movl   $0x0,0x3a(%rsp)
  8094fb:	00 
  8094fc:	66 c7 44 24 3e 00 00 	movw   $0x0,0x3e(%rsp)
  809503:	66 c7 44 24 30 02 00 	movw   $0x2,0x30(%rsp)
  80950a:	48 63 50 14          	movslq 0x14(%rax),%rdx
  80950e:	48 8b 40 18          	mov    0x18(%rax),%rax
  809512:	48 8b 30             	mov    (%rax),%rsi
  809515:	48 8d 7c 24 34       	lea    0x34(%rsp),%rdi
  80951a:	b9 0c 00 00 00       	mov    $0xc,%ecx
  80951f:	e8 3c 78 bf ff       	callq  400d60 <__memmove_chk@plt>
  809524:	0f b7 44 24 14       	movzwl 0x14(%rsp),%eax
  809529:	66 c1 c8 08          	ror    $0x8,%ax
  80952d:	66 89 44 24 32       	mov    %ax,0x32(%rsp)
  809532:	ba 10 00 00 00       	mov    $0x10,%edx
  809537:	4c 89 e6             	mov    %r12,%rsi
  80953a:	89 df                	mov    %ebx,%edi
  80953c:	e8 ef 78 bf ff       	callq  400e30 <connect@plt>
  809541:	85 c0                	test   %eax,%eax
  809543:	0f 88 e7 02 00 00    	js     809830 <submitr+0x3c4>
  809549:	48 c7 c6 ff ff ff ff 	mov    $0xffffffffffffffff,%rsi
  809550:	b8 00 00 00 00       	mov    $0x0,%eax
  809555:	48 89 f1             	mov    %rsi,%rcx
  809558:	4c 89 f7             	mov    %r14,%rdi
  80955b:	f2 ae                	repnz scas %es:(%rdi),%al
  80955d:	48 89 ca             	mov    %rcx,%rdx
  809560:	48 f7 d2             	not    %rdx
  809563:	48 89 f1             	mov    %rsi,%rcx
  809566:	4c 89 ff             	mov    %r15,%rdi
  809569:	f2 ae                	repnz scas %es:(%rdi),%al
  80956b:	48 f7 d1             	not    %rcx
  80956e:	49 89 c8             	mov    %rcx,%r8
  809571:	48 89 f1             	mov    %rsi,%rcx
  809574:	48 8b 7c 24 08       	mov    0x8(%rsp),%rdi
  809579:	f2 ae                	repnz scas %es:(%rdi),%al
  80957b:	48 f7 d1             	not    %rcx
  80957e:	4d 8d 44 08 fe       	lea    -0x2(%r8,%rcx,1),%r8
  809583:	48 89 f1             	mov    %rsi,%rcx
  809586:	48 8b 7c 24 18       	mov    0x18(%rsp),%rdi
  80958b:	f2 ae                	repnz scas %es:(%rdi),%al
  80958d:	48 89 c8             	mov    %rcx,%rax
  809590:	48 f7 d0             	not    %rax
  809593:	49 8d 4c 00 ff       	lea    -0x1(%r8,%rax,1),%rcx
  809598:	48 8d 44 52 fd       	lea    -0x3(%rdx,%rdx,2),%rax
  80959d:	48 8d 84 01 80 00 00 	lea    0x80(%rcx,%rax,1),%rax
  8095a4:	00 
  8095a5:	48 3d 00 20 00 00    	cmp    $0x2000,%rax
  8095ab:	0f 87 d9 02 00 00    	ja     80988a <submitr+0x41e>
  8095b1:	48 8d b4 24 50 40 00 	lea    0x4050(%rsp),%rsi
  8095b8:	00 
  8095b9:	b9 00 04 00 00       	mov    $0x400,%ecx
  8095be:	b8 00 00 00 00       	mov    $0x0,%eax
  8095c3:	48 89 f7             	mov    %rsi,%rdi
  8095c6:	f3 48 ab             	rep stos %rax,%es:(%rdi)
  8095c9:	4c 89 f7             	mov    %r14,%rdi
  8095cc:	e8 88 fd ff ff       	callq  809359 <urlencode>
  8095d1:	85 c0                	test   %eax,%eax
  8095d3:	0f 88 24 03 00 00    	js     8098fd <submitr+0x491>
  8095d9:	4c 8d a4 24 50 20 00 	lea    0x2050(%rsp),%r12
  8095e0:	00 
  8095e1:	41 55                	push   %r13
  8095e3:	48 8d 84 24 58 40 00 	lea    0x4058(%rsp),%rax
  8095ea:	00 
  8095eb:	50                   	push   %rax
  8095ec:	4d 89 f9             	mov    %r15,%r9
  8095ef:	4c 8b 44 24 18       	mov    0x18(%rsp),%r8
  8095f4:	48 8d 0d 2d 10 00 00 	lea    0x102d(%rip),%rcx        # 80a628 <trans_char+0x38>
  8095fb:	ba 00 20 00 00       	mov    $0x2000,%edx
  809600:	be 01 00 00 00       	mov    $0x1,%esi
  809605:	4c 89 e7             	mov    %r12,%rdi
  809608:	b8 00 00 00 00       	mov    $0x0,%eax
  80960d:	e8 3e 78 bf ff       	callq  400e50 <__sprintf_chk@plt>
  809612:	48 c7 c1 ff ff ff ff 	mov    $0xffffffffffffffff,%rcx
  809619:	b8 00 00 00 00       	mov    $0x0,%eax
  80961e:	4c 89 e7             	mov    %r12,%rdi
  809621:	f2 ae                	repnz scas %es:(%rdi),%al
  809623:	48 89 ca             	mov    %rcx,%rdx
  809626:	48 f7 d2             	not    %rdx
  809629:	48 8d 52 ff          	lea    -0x1(%rdx),%rdx
  80962d:	4c 89 e6             	mov    %r12,%rsi
  809630:	89 df                	mov    %ebx,%edi
  809632:	e8 95 fb ff ff       	callq  8091cc <rio_writen>
  809637:	48 83 c4 10          	add    $0x10,%rsp
  80963b:	48 85 c0             	test   %rax,%rax
  80963e:	0f 88 44 03 00 00    	js     809988 <submitr+0x51c>
  809644:	4c 8d 64 24 40       	lea    0x40(%rsp),%r12
  809649:	89 de                	mov    %ebx,%esi
  80964b:	4c 89 e7             	mov    %r12,%rdi
  80964e:	e8 37 fb ff ff       	callq  80918a <rio_readinitb>
  809653:	48 8d b4 24 50 20 00 	lea    0x2050(%rsp),%rsi
  80965a:	00 
  80965b:	ba 00 20 00 00       	mov    $0x2000,%edx
  809660:	4c 89 e7             	mov    %r12,%rdi
  809663:	e8 4d fc ff ff       	callq  8092b5 <rio_readlineb>
  809668:	48 85 c0             	test   %rax,%rax
  80966b:	0f 8e 86 03 00 00    	jle    8099f7 <submitr+0x58b>
  809671:	48 8d 4c 24 2c       	lea    0x2c(%rsp),%rcx
  809676:	48 8d 94 24 50 60 00 	lea    0x6050(%rsp),%rdx
  80967d:	00 
  80967e:	48 8d bc 24 50 20 00 	lea    0x2050(%rsp),%rdi
  809685:	00 
  809686:	4c 8d 84 24 50 80 00 	lea    0x8050(%rsp),%r8
  80968d:	00 
  80968e:	48 8d 35 0a 10 00 00 	lea    0x100a(%rip),%rsi        # 80a69f <trans_char+0xaf>
  809695:	b8 00 00 00 00       	mov    $0x0,%eax
  80969a:	e8 21 77 bf ff       	callq  400dc0 <__isoc99_sscanf@plt>
  80969f:	48 8d b4 24 50 20 00 	lea    0x2050(%rsp),%rsi
  8096a6:	00 
  8096a7:	b9 03 00 00 00       	mov    $0x3,%ecx
  8096ac:	48 8d 3d 03 10 00 00 	lea    0x1003(%rip),%rdi        # 80a6b6 <trans_char+0xc6>
  8096b3:	f3 a6                	repz cmpsb %es:(%rdi),%ds:(%rsi)
  8096b5:	0f 97 c0             	seta   %al
  8096b8:	1c 00                	sbb    $0x0,%al
  8096ba:	84 c0                	test   %al,%al
  8096bc:	0f 84 b3 03 00 00    	je     809a75 <submitr+0x609>
  8096c2:	48 8d b4 24 50 20 00 	lea    0x2050(%rsp),%rsi
  8096c9:	00 
  8096ca:	48 8d 7c 24 40       	lea    0x40(%rsp),%rdi
  8096cf:	ba 00 20 00 00       	mov    $0x2000,%edx
  8096d4:	e8 dc fb ff ff       	callq  8092b5 <rio_readlineb>
  8096d9:	48 85 c0             	test   %rax,%rax
  8096dc:	7f c1                	jg     80969f <submitr+0x233>
  8096de:	48 b8 45 72 72 6f 72 	movabs $0x43203a726f727245,%rax
  8096e5:	3a 20 43 
  8096e8:	48 ba 6c 69 65 6e 74 	movabs $0x6e7520746e65696c,%rdx
  8096ef:	20 75 6e 
  8096f2:	48 89 45 00          	mov    %rax,0x0(%rbp)
  8096f6:	48 89 55 08          	mov    %rdx,0x8(%rbp)
  8096fa:	48 b8 61 62 6c 65 20 	movabs $0x206f7420656c6261,%rax
  809701:	74 6f 20 
  809704:	48 ba 72 65 61 64 20 	movabs $0x6165682064616572,%rdx
  80970b:	68 65 61 
  80970e:	48 89 45 10          	mov    %rax,0x10(%rbp)
  809712:	48 89 55 18          	mov    %rdx,0x18(%rbp)
  809716:	48 b8 64 65 72 73 20 	movabs $0x6f72662073726564,%rax
  80971d:	66 72 6f 
  809720:	48 ba 6d 20 74 68 65 	movabs $0x657220656874206d,%rdx
  809727:	20 72 65 
  80972a:	48 89 45 20          	mov    %rax,0x20(%rbp)
  80972e:	48 89 55 28          	mov    %rdx,0x28(%rbp)
  809732:	48 b8 73 75 6c 74 20 	movabs $0x72657320746c7573,%rax
  809739:	73 65 72 
  80973c:	48 89 45 30          	mov    %rax,0x30(%rbp)
  809740:	c7 45 38 76 65 72 00 	movl   $0x726576,0x38(%rbp)
  809747:	89 df                	mov    %ebx,%edi
  809749:	e8 d2 75 bf ff       	callq  400d20 <close@plt>
  80974e:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  809753:	48 8b 9c 24 58 a0 00 	mov    0xa058(%rsp),%rbx
  80975a:	00 
  80975b:	64 48 33 1c 25 28 00 	xor    %fs:0x28,%rbx
  809762:	00 00 
  809764:	0f 85 7e 04 00 00    	jne    809be8 <submitr+0x77c>
  80976a:	48 81 c4 68 a0 00 00 	add    $0xa068,%rsp
  809771:	5b                   	pop    %rbx
  809772:	5d                   	pop    %rbp
  809773:	41 5c                	pop    %r12
  809775:	41 5d                	pop    %r13
  809777:	41 5e                	pop    %r14
  809779:	41 5f                	pop    %r15
  80977b:	c3                   	retq   
  80977c:	48 b8 45 72 72 6f 72 	movabs $0x43203a726f727245,%rax
  809783:	3a 20 43 
  809786:	48 ba 6c 69 65 6e 74 	movabs $0x6e7520746e65696c,%rdx
  80978d:	20 75 6e 
  809790:	48 89 45 00          	mov    %rax,0x0(%rbp)
  809794:	48 89 55 08          	mov    %rdx,0x8(%rbp)
  809798:	48 b8 61 62 6c 65 20 	movabs $0x206f7420656c6261,%rax
  80979f:	74 6f 20 
  8097a2:	48 ba 63 72 65 61 74 	movabs $0x7320657461657263,%rdx
  8097a9:	65 20 73 
  8097ac:	48 89 45 10          	mov    %rax,0x10(%rbp)
  8097b0:	48 89 55 18          	mov    %rdx,0x18(%rbp)
  8097b4:	c7 45 20 6f 63 6b 65 	movl   $0x656b636f,0x20(%rbp)
  8097bb:	66 c7 45 24 74 00    	movw   $0x74,0x24(%rbp)
  8097c1:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  8097c6:	eb 8b                	jmp    809753 <submitr+0x2e7>
  8097c8:	48 b8 45 72 72 6f 72 	movabs $0x44203a726f727245,%rax
  8097cf:	3a 20 44 
  8097d2:	48 ba 4e 53 20 69 73 	movabs $0x6e7520736920534e,%rdx
  8097d9:	20 75 6e 
  8097dc:	48 89 45 00          	mov    %rax,0x0(%rbp)
  8097e0:	48 89 55 08          	mov    %rdx,0x8(%rbp)
  8097e4:	48 b8 61 62 6c 65 20 	movabs $0x206f7420656c6261,%rax
  8097eb:	74 6f 20 
  8097ee:	48 ba 72 65 73 6f 6c 	movabs $0x2065766c6f736572,%rdx
  8097f5:	76 65 20 
  8097f8:	48 89 45 10          	mov    %rax,0x10(%rbp)
  8097fc:	48 89 55 18          	mov    %rdx,0x18(%rbp)
  809800:	48 b8 73 65 72 76 65 	movabs $0x6120726576726573,%rax
  809807:	72 20 61 
  80980a:	48 89 45 20          	mov    %rax,0x20(%rbp)
  80980e:	c7 45 28 64 64 72 65 	movl   $0x65726464,0x28(%rbp)
  809815:	66 c7 45 2c 73 73    	movw   $0x7373,0x2c(%rbp)
  80981b:	c6 45 2e 00          	movb   $0x0,0x2e(%rbp)
  80981f:	89 df                	mov    %ebx,%edi
  809821:	e8 fa 74 bf ff       	callq  400d20 <close@plt>
  809826:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  80982b:	e9 23 ff ff ff       	jmpq   809753 <submitr+0x2e7>
  809830:	48 b8 45 72 72 6f 72 	movabs $0x55203a726f727245,%rax
  809837:	3a 20 55 
  80983a:	48 ba 6e 61 62 6c 65 	movabs $0x6f7420656c62616e,%rdx
  809841:	20 74 6f 
  809844:	48 89 45 00          	mov    %rax,0x0(%rbp)
  809848:	48 89 55 08          	mov    %rdx,0x8(%rbp)
  80984c:	48 b8 20 63 6f 6e 6e 	movabs $0x7463656e6e6f6320,%rax
  809853:	65 63 74 
  809856:	48 ba 20 74 6f 20 74 	movabs $0x20656874206f7420,%rdx
  80985d:	68 65 20 
  809860:	48 89 45 10          	mov    %rax,0x10(%rbp)
  809864:	48 89 55 18          	mov    %rdx,0x18(%rbp)
  809868:	c7 45 20 73 65 72 76 	movl   $0x76726573,0x20(%rbp)
  80986f:	66 c7 45 24 65 72    	movw   $0x7265,0x24(%rbp)
  809875:	c6 45 26 00          	movb   $0x0,0x26(%rbp)
  809879:	89 df                	mov    %ebx,%edi
  80987b:	e8 a0 74 bf ff       	callq  400d20 <close@plt>
  809880:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  809885:	e9 c9 fe ff ff       	jmpq   809753 <submitr+0x2e7>
  80988a:	48 b8 45 72 72 6f 72 	movabs $0x52203a726f727245,%rax
  809891:	3a 20 52 
  809894:	48 ba 65 73 75 6c 74 	movabs $0x747320746c757365,%rdx
  80989b:	20 73 74 
  80989e:	48 89 45 00          	mov    %rax,0x0(%rbp)
  8098a2:	48 89 55 08          	mov    %rdx,0x8(%rbp)
  8098a6:	48 b8 72 69 6e 67 20 	movabs $0x6f6f7420676e6972,%rax
  8098ad:	74 6f 6f 
  8098b0:	48 ba 20 6c 61 72 67 	movabs $0x202e656772616c20,%rdx
  8098b7:	65 2e 20 
  8098ba:	48 89 45 10          	mov    %rax,0x10(%rbp)
  8098be:	48 89 55 18          	mov    %rdx,0x18(%rbp)
  8098c2:	48 b8 49 6e 63 72 65 	movabs $0x6573616572636e49,%rax
  8098c9:	61 73 65 
  8098cc:	48 ba 20 53 55 42 4d 	movabs $0x5254494d42555320,%rdx
  8098d3:	49 54 52 
  8098d6:	48 89 45 20          	mov    %rax,0x20(%rbp)
  8098da:	48 89 55 28          	mov    %rdx,0x28(%rbp)
  8098de:	48 b8 5f 4d 41 58 42 	movabs $0x46554258414d5f,%rax
  8098e5:	55 46 00 
  8098e8:	48 89 45 30          	mov    %rax,0x30(%rbp)
  8098ec:	89 df                	mov    %ebx,%edi
  8098ee:	e8 2d 74 bf ff       	callq  400d20 <close@plt>
  8098f3:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  8098f8:	e9 56 fe ff ff       	jmpq   809753 <submitr+0x2e7>
  8098fd:	48 b8 45 72 72 6f 72 	movabs $0x52203a726f727245,%rax
  809904:	3a 20 52 
  809907:	48 ba 65 73 75 6c 74 	movabs $0x747320746c757365,%rdx
  80990e:	20 73 74 
  809911:	48 89 45 00          	mov    %rax,0x0(%rbp)
  809915:	48 89 55 08          	mov    %rdx,0x8(%rbp)
  809919:	48 b8 72 69 6e 67 20 	movabs $0x6e6f6320676e6972,%rax
  809920:	63 6f 6e 
  809923:	48 ba 74 61 69 6e 73 	movabs $0x6e6120736e696174,%rdx
  80992a:	20 61 6e 
  80992d:	48 89 45 10          	mov    %rax,0x10(%rbp)
  809931:	48 89 55 18          	mov    %rdx,0x18(%rbp)
  809935:	48 b8 20 69 6c 6c 65 	movabs $0x6c6167656c6c6920,%rax
  80993c:	67 61 6c 
  80993f:	48 ba 20 6f 72 20 75 	movabs $0x72706e7520726f20,%rdx
  809946:	6e 70 72 
  809949:	48 89 45 20          	mov    %rax,0x20(%rbp)
  80994d:	48 89 55 28          	mov    %rdx,0x28(%rbp)
  809951:	48 b8 69 6e 74 61 62 	movabs $0x20656c6261746e69,%rax
  809958:	6c 65 20 
  80995b:	48 ba 63 68 61 72 61 	movabs $0x6574636172616863,%rdx
  809962:	63 74 65 
  809965:	48 89 45 30          	mov    %rax,0x30(%rbp)
  809969:	48 89 55 38          	mov    %rdx,0x38(%rbp)
  80996d:	66 c7 45 40 72 2e    	movw   $0x2e72,0x40(%rbp)
  809973:	c6 45 42 00          	movb   $0x0,0x42(%rbp)
  809977:	89 df                	mov    %ebx,%edi
  809979:	e8 a2 73 bf ff       	callq  400d20 <close@plt>
  80997e:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  809983:	e9 cb fd ff ff       	jmpq   809753 <submitr+0x2e7>
  809988:	48 b8 45 72 72 6f 72 	movabs $0x43203a726f727245,%rax
  80998f:	3a 20 43 
  809992:	48 ba 6c 69 65 6e 74 	movabs $0x6e7520746e65696c,%rdx
  809999:	20 75 6e 
  80999c:	48 89 45 00          	mov    %rax,0x0(%rbp)
  8099a0:	48 89 55 08          	mov    %rdx,0x8(%rbp)
  8099a4:	48 b8 61 62 6c 65 20 	movabs $0x206f7420656c6261,%rax
  8099ab:	74 6f 20 
  8099ae:	48 ba 77 72 69 74 65 	movabs $0x6f74206574697277,%rdx
  8099b5:	20 74 6f 
  8099b8:	48 89 45 10          	mov    %rax,0x10(%rbp)
  8099bc:	48 89 55 18          	mov    %rdx,0x18(%rbp)
  8099c0:	48 b8 20 74 68 65 20 	movabs $0x7365722065687420,%rax
  8099c7:	72 65 73 
  8099ca:	48 ba 75 6c 74 20 73 	movabs $0x7672657320746c75,%rdx
  8099d1:	65 72 76 
  8099d4:	48 89 45 20          	mov    %rax,0x20(%rbp)
  8099d8:	48 89 55 28          	mov    %rdx,0x28(%rbp)
  8099dc:	66 c7 45 30 65 72    	movw   $0x7265,0x30(%rbp)
  8099e2:	c6 45 32 00          	movb   $0x0,0x32(%rbp)
  8099e6:	89 df                	mov    %ebx,%edi
  8099e8:	e8 33 73 bf ff       	callq  400d20 <close@plt>
  8099ed:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  8099f2:	e9 5c fd ff ff       	jmpq   809753 <submitr+0x2e7>
  8099f7:	48 b8 45 72 72 6f 72 	movabs $0x43203a726f727245,%rax
  8099fe:	3a 20 43 
  809a01:	48 ba 6c 69 65 6e 74 	movabs $0x6e7520746e65696c,%rdx
  809a08:	20 75 6e 
  809a0b:	48 89 45 00          	mov    %rax,0x0(%rbp)
  809a0f:	48 89 55 08          	mov    %rdx,0x8(%rbp)
  809a13:	48 b8 61 62 6c 65 20 	movabs $0x206f7420656c6261,%rax
  809a1a:	74 6f 20 
  809a1d:	48 ba 72 65 61 64 20 	movabs $0x7269662064616572,%rdx
  809a24:	66 69 72 
  809a27:	48 89 45 10          	mov    %rax,0x10(%rbp)
  809a2b:	48 89 55 18          	mov    %rdx,0x18(%rbp)
  809a2f:	48 b8 73 74 20 68 65 	movabs $0x6564616568207473,%rax
  809a36:	61 64 65 
  809a39:	48 ba 72 20 66 72 6f 	movabs $0x72206d6f72662072,%rdx
  809a40:	6d 20 72 
  809a43:	48 89 45 20          	mov    %rax,0x20(%rbp)
  809a47:	48 89 55 28          	mov    %rdx,0x28(%rbp)
  809a4b:	48 b8 65 73 75 6c 74 	movabs $0x657320746c757365,%rax
  809a52:	20 73 65 
  809a55:	48 89 45 30          	mov    %rax,0x30(%rbp)
  809a59:	c7 45 38 72 76 65 72 	movl   $0x72657672,0x38(%rbp)
  809a60:	c6 45 3c 00          	movb   $0x0,0x3c(%rbp)
  809a64:	89 df                	mov    %ebx,%edi
  809a66:	e8 b5 72 bf ff       	callq  400d20 <close@plt>
  809a6b:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  809a70:	e9 de fc ff ff       	jmpq   809753 <submitr+0x2e7>
  809a75:	48 8d b4 24 50 20 00 	lea    0x2050(%rsp),%rsi
  809a7c:	00 
  809a7d:	48 8d 7c 24 40       	lea    0x40(%rsp),%rdi
  809a82:	ba 00 20 00 00       	mov    $0x2000,%edx
  809a87:	e8 29 f8 ff ff       	callq  8092b5 <rio_readlineb>
  809a8c:	48 85 c0             	test   %rax,%rax
  809a8f:	0f 8e 96 00 00 00    	jle    809b2b <submitr+0x6bf>
  809a95:	44 8b 44 24 2c       	mov    0x2c(%rsp),%r8d
  809a9a:	41 81 f8 c8 00 00 00 	cmp    $0xc8,%r8d
  809aa1:	0f 85 08 01 00 00    	jne    809baf <submitr+0x743>
  809aa7:	48 8d b4 24 50 20 00 	lea    0x2050(%rsp),%rsi
  809aae:	00 
  809aaf:	48 89 ef             	mov    %rbp,%rdi
  809ab2:	e8 f9 71 bf ff       	callq  400cb0 <strcpy@plt>
  809ab7:	89 df                	mov    %ebx,%edi
  809ab9:	e8 62 72 bf ff       	callq  400d20 <close@plt>
  809abe:	b9 04 00 00 00       	mov    $0x4,%ecx
  809ac3:	48 8d 3d e6 0b 00 00 	lea    0xbe6(%rip),%rdi        # 80a6b0 <trans_char+0xc0>
  809aca:	48 89 ee             	mov    %rbp,%rsi
  809acd:	f3 a6                	repz cmpsb %es:(%rdi),%ds:(%rsi)
  809acf:	0f 97 c0             	seta   %al
  809ad2:	1c 00                	sbb    $0x0,%al
  809ad4:	0f be c0             	movsbl %al,%eax
  809ad7:	85 c0                	test   %eax,%eax
  809ad9:	0f 84 74 fc ff ff    	je     809753 <submitr+0x2e7>
  809adf:	b9 05 00 00 00       	mov    $0x5,%ecx
  809ae4:	48 8d 3d c9 0b 00 00 	lea    0xbc9(%rip),%rdi        # 80a6b4 <trans_char+0xc4>
  809aeb:	48 89 ee             	mov    %rbp,%rsi
  809aee:	f3 a6                	repz cmpsb %es:(%rdi),%ds:(%rsi)
  809af0:	0f 97 c0             	seta   %al
  809af3:	1c 00                	sbb    $0x0,%al
  809af5:	0f be c0             	movsbl %al,%eax
  809af8:	85 c0                	test   %eax,%eax
  809afa:	0f 84 53 fc ff ff    	je     809753 <submitr+0x2e7>
  809b00:	b9 03 00 00 00       	mov    $0x3,%ecx
  809b05:	48 8d 3d ad 0b 00 00 	lea    0xbad(%rip),%rdi        # 80a6b9 <trans_char+0xc9>
  809b0c:	48 89 ee             	mov    %rbp,%rsi
  809b0f:	f3 a6                	repz cmpsb %es:(%rdi),%ds:(%rsi)
  809b11:	0f 97 c0             	seta   %al
  809b14:	1c 00                	sbb    $0x0,%al
  809b16:	0f be c0             	movsbl %al,%eax
  809b19:	85 c0                	test   %eax,%eax
  809b1b:	0f 84 32 fc ff ff    	je     809753 <submitr+0x2e7>
  809b21:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  809b26:	e9 28 fc ff ff       	jmpq   809753 <submitr+0x2e7>
  809b2b:	48 b8 45 72 72 6f 72 	movabs $0x43203a726f727245,%rax
  809b32:	3a 20 43 
  809b35:	48 ba 6c 69 65 6e 74 	movabs $0x6e7520746e65696c,%rdx
  809b3c:	20 75 6e 
  809b3f:	48 89 45 00          	mov    %rax,0x0(%rbp)
  809b43:	48 89 55 08          	mov    %rdx,0x8(%rbp)
  809b47:	48 b8 61 62 6c 65 20 	movabs $0x206f7420656c6261,%rax
  809b4e:	74 6f 20 
  809b51:	48 ba 72 65 61 64 20 	movabs $0x6174732064616572,%rdx
  809b58:	73 74 61 
  809b5b:	48 89 45 10          	mov    %rax,0x10(%rbp)
  809b5f:	48 89 55 18          	mov    %rdx,0x18(%rbp)
  809b63:	48 b8 74 75 73 20 6d 	movabs $0x7373656d20737574,%rax
  809b6a:	65 73 73 
  809b6d:	48 ba 61 67 65 20 66 	movabs $0x6d6f726620656761,%rdx
  809b74:	72 6f 6d 
  809b77:	48 89 45 20          	mov    %rax,0x20(%rbp)
  809b7b:	48 89 55 28          	mov    %rdx,0x28(%rbp)
  809b7f:	48 b8 20 72 65 73 75 	movabs $0x20746c7573657220,%rax
  809b86:	6c 74 20 
  809b89:	48 89 45 30          	mov    %rax,0x30(%rbp)
  809b8d:	c7 45 38 73 65 72 76 	movl   $0x76726573,0x38(%rbp)
  809b94:	66 c7 45 3c 65 72    	movw   $0x7265,0x3c(%rbp)
  809b9a:	c6 45 3e 00          	movb   $0x0,0x3e(%rbp)
  809b9e:	89 df                	mov    %ebx,%edi
  809ba0:	e8 7b 71 bf ff       	callq  400d20 <close@plt>
  809ba5:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  809baa:	e9 a4 fb ff ff       	jmpq   809753 <submitr+0x2e7>
  809baf:	4c 8d 8c 24 50 80 00 	lea    0x8050(%rsp),%r9
  809bb6:	00 
  809bb7:	48 8d 0d aa 0a 00 00 	lea    0xaaa(%rip),%rcx        # 80a668 <trans_char+0x78>
  809bbe:	48 c7 c2 ff ff ff ff 	mov    $0xffffffffffffffff,%rdx
  809bc5:	be 01 00 00 00       	mov    $0x1,%esi
  809bca:	48 89 ef             	mov    %rbp,%rdi
  809bcd:	b8 00 00 00 00       	mov    $0x0,%eax
  809bd2:	e8 79 72 bf ff       	callq  400e50 <__sprintf_chk@plt>
  809bd7:	89 df                	mov    %ebx,%edi
  809bd9:	e8 42 71 bf ff       	callq  400d20 <close@plt>
  809bde:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  809be3:	e9 6b fb ff ff       	jmpq   809753 <submitr+0x2e7>
  809be8:	e8 f3 70 bf ff       	callq  400ce0 <__stack_chk_fail@plt>

0000000000809bed <init_timeout>:
  809bed:	85 ff                	test   %edi,%edi
  809bef:	74 28                	je     809c19 <init_timeout+0x2c>
  809bf1:	53                   	push   %rbx
  809bf2:	89 fb                	mov    %edi,%ebx
  809bf4:	85 ff                	test   %edi,%edi
  809bf6:	78 1a                	js     809c12 <init_timeout+0x25>
  809bf8:	48 8d 35 9d f5 ff ff 	lea    -0xa63(%rip),%rsi        # 80919c <sigalrm_handler>
  809bff:	bf 0e 00 00 00       	mov    $0xe,%edi
  809c04:	e8 37 71 bf ff       	callq  400d40 <signal@plt>
  809c09:	89 df                	mov    %ebx,%edi
  809c0b:	e8 00 71 bf ff       	callq  400d10 <alarm@plt>
  809c10:	5b                   	pop    %rbx
  809c11:	c3                   	retq   
  809c12:	bb 00 00 00 00       	mov    $0x0,%ebx
  809c17:	eb df                	jmp    809bf8 <init_timeout+0xb>
  809c19:	f3 c3                	repz retq 

0000000000809c1b <init_driver>:
  809c1b:	41 54                	push   %r12
  809c1d:	55                   	push   %rbp
  809c1e:	53                   	push   %rbx
  809c1f:	48 83 ec 20          	sub    $0x20,%rsp
  809c23:	49 89 fc             	mov    %rdi,%r12
  809c26:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
  809c2d:	00 00 
  809c2f:	48 89 44 24 18       	mov    %rax,0x18(%rsp)
  809c34:	31 c0                	xor    %eax,%eax
  809c36:	be 01 00 00 00       	mov    $0x1,%esi
  809c3b:	bf 0d 00 00 00       	mov    $0xd,%edi
  809c40:	e8 fb 70 bf ff       	callq  400d40 <signal@plt>
  809c45:	be 01 00 00 00       	mov    $0x1,%esi
  809c4a:	bf 1d 00 00 00       	mov    $0x1d,%edi
  809c4f:	e8 ec 70 bf ff       	callq  400d40 <signal@plt>
  809c54:	be 01 00 00 00       	mov    $0x1,%esi
  809c59:	bf 1d 00 00 00       	mov    $0x1d,%edi
  809c5e:	e8 dd 70 bf ff       	callq  400d40 <signal@plt>
  809c63:	ba 00 00 00 00       	mov    $0x0,%edx
  809c68:	be 01 00 00 00       	mov    $0x1,%esi
  809c6d:	bf 02 00 00 00       	mov    $0x2,%edi
  809c72:	e8 e9 71 bf ff       	callq  400e60 <socket@plt>
  809c77:	85 c0                	test   %eax,%eax
  809c79:	0f 88 a3 00 00 00    	js     809d22 <init_driver+0x107>
  809c7f:	89 c3                	mov    %eax,%ebx
  809c81:	48 8d 3d 59 05 00 00 	lea    0x559(%rip),%rdi        # 80a1e1 <_IO_stdin_used+0x251>
  809c88:	e8 c3 70 bf ff       	callq  400d50 <gethostbyname@plt>
  809c8d:	48 85 c0             	test   %rax,%rax
  809c90:	0f 84 df 00 00 00    	je     809d75 <init_driver+0x15a>
  809c96:	48 89 e5             	mov    %rsp,%rbp
  809c99:	48 c7 44 24 02 00 00 	movq   $0x0,0x2(%rsp)
  809ca0:	00 00 
  809ca2:	c7 45 0a 00 00 00 00 	movl   $0x0,0xa(%rbp)
  809ca9:	66 c7 45 0e 00 00    	movw   $0x0,0xe(%rbp)
  809caf:	66 c7 04 24 02 00    	movw   $0x2,(%rsp)
  809cb5:	48 63 50 14          	movslq 0x14(%rax),%rdx
  809cb9:	48 8b 40 18          	mov    0x18(%rax),%rax
  809cbd:	48 8b 30             	mov    (%rax),%rsi
  809cc0:	48 8d 7d 04          	lea    0x4(%rbp),%rdi
  809cc4:	b9 0c 00 00 00       	mov    $0xc,%ecx
  809cc9:	e8 92 70 bf ff       	callq  400d60 <__memmove_chk@plt>
  809cce:	66 c7 44 24 02 3c 9a 	movw   $0x9a3c,0x2(%rsp)
  809cd5:	ba 10 00 00 00       	mov    $0x10,%edx
  809cda:	48 89 ee             	mov    %rbp,%rsi
  809cdd:	89 df                	mov    %ebx,%edi
  809cdf:	e8 4c 71 bf ff       	callq  400e30 <connect@plt>
  809ce4:	85 c0                	test   %eax,%eax
  809ce6:	0f 88 fb 00 00 00    	js     809de7 <init_driver+0x1cc>
  809cec:	89 df                	mov    %ebx,%edi
  809cee:	e8 2d 70 bf ff       	callq  400d20 <close@plt>
  809cf3:	66 41 c7 04 24 4f 4b 	movw   $0x4b4f,(%r12)
  809cfa:	41 c6 44 24 02 00    	movb   $0x0,0x2(%r12)
  809d00:	b8 00 00 00 00       	mov    $0x0,%eax
  809d05:	48 8b 4c 24 18       	mov    0x18(%rsp),%rcx
  809d0a:	64 48 33 0c 25 28 00 	xor    %fs:0x28,%rcx
  809d11:	00 00 
  809d13:	0f 85 28 01 00 00    	jne    809e41 <init_driver+0x226>
  809d19:	48 83 c4 20          	add    $0x20,%rsp
  809d1d:	5b                   	pop    %rbx
  809d1e:	5d                   	pop    %rbp
  809d1f:	41 5c                	pop    %r12
  809d21:	c3                   	retq   
  809d22:	48 b8 45 72 72 6f 72 	movabs $0x43203a726f727245,%rax
  809d29:	3a 20 43 
  809d2c:	48 ba 6c 69 65 6e 74 	movabs $0x6e7520746e65696c,%rdx
  809d33:	20 75 6e 
  809d36:	49 89 04 24          	mov    %rax,(%r12)
  809d3a:	49 89 54 24 08       	mov    %rdx,0x8(%r12)
  809d3f:	48 b8 61 62 6c 65 20 	movabs $0x206f7420656c6261,%rax
  809d46:	74 6f 20 
  809d49:	48 ba 63 72 65 61 74 	movabs $0x7320657461657263,%rdx
  809d50:	65 20 73 
  809d53:	49 89 44 24 10       	mov    %rax,0x10(%r12)
  809d58:	49 89 54 24 18       	mov    %rdx,0x18(%r12)
  809d5d:	41 c7 44 24 20 6f 63 	movl   $0x656b636f,0x20(%r12)
  809d64:	6b 65 
  809d66:	66 41 c7 44 24 24 74 	movw   $0x74,0x24(%r12)
  809d6d:	00 
  809d6e:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  809d73:	eb 90                	jmp    809d05 <init_driver+0xea>
  809d75:	48 b8 45 72 72 6f 72 	movabs $0x44203a726f727245,%rax
  809d7c:	3a 20 44 
  809d7f:	48 ba 4e 53 20 69 73 	movabs $0x6e7520736920534e,%rdx
  809d86:	20 75 6e 
  809d89:	49 89 04 24          	mov    %rax,(%r12)
  809d8d:	49 89 54 24 08       	mov    %rdx,0x8(%r12)
  809d92:	48 b8 61 62 6c 65 20 	movabs $0x206f7420656c6261,%rax
  809d99:	74 6f 20 
  809d9c:	48 ba 72 65 73 6f 6c 	movabs $0x2065766c6f736572,%rdx
  809da3:	76 65 20 
  809da6:	49 89 44 24 10       	mov    %rax,0x10(%r12)
  809dab:	49 89 54 24 18       	mov    %rdx,0x18(%r12)
  809db0:	48 b8 73 65 72 76 65 	movabs $0x6120726576726573,%rax
  809db7:	72 20 61 
  809dba:	49 89 44 24 20       	mov    %rax,0x20(%r12)
  809dbf:	41 c7 44 24 28 64 64 	movl   $0x65726464,0x28(%r12)
  809dc6:	72 65 
  809dc8:	66 41 c7 44 24 2c 73 	movw   $0x7373,0x2c(%r12)
  809dcf:	73 
  809dd0:	41 c6 44 24 2e 00    	movb   $0x0,0x2e(%r12)
  809dd6:	89 df                	mov    %ebx,%edi
  809dd8:	e8 43 6f bf ff       	callq  400d20 <close@plt>
  809ddd:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  809de2:	e9 1e ff ff ff       	jmpq   809d05 <init_driver+0xea>
  809de7:	48 b8 45 72 72 6f 72 	movabs $0x55203a726f727245,%rax
  809dee:	3a 20 55 
  809df1:	48 ba 6e 61 62 6c 65 	movabs $0x6f7420656c62616e,%rdx
  809df8:	20 74 6f 
  809dfb:	49 89 04 24          	mov    %rax,(%r12)
  809dff:	49 89 54 24 08       	mov    %rdx,0x8(%r12)
  809e04:	48 b8 20 63 6f 6e 6e 	movabs $0x7463656e6e6f6320,%rax
  809e0b:	65 63 74 
  809e0e:	48 ba 20 74 6f 20 73 	movabs $0x76726573206f7420,%rdx
  809e15:	65 72 76 
  809e18:	49 89 44 24 10       	mov    %rax,0x10(%r12)
  809e1d:	49 89 54 24 18       	mov    %rdx,0x18(%r12)
  809e22:	66 41 c7 44 24 20 65 	movw   $0x7265,0x20(%r12)
  809e29:	72 
  809e2a:	41 c6 44 24 22 00    	movb   $0x0,0x22(%r12)
  809e30:	89 df                	mov    %ebx,%edi
  809e32:	e8 e9 6e bf ff       	callq  400d20 <close@plt>
  809e37:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  809e3c:	e9 c4 fe ff ff       	jmpq   809d05 <init_driver+0xea>
  809e41:	e8 9a 6e bf ff       	callq  400ce0 <__stack_chk_fail@plt>

0000000000809e46 <driver_post>:
  809e46:	53                   	push   %rbx
  809e47:	4c 89 cb             	mov    %r9,%rbx
  809e4a:	45 85 c0             	test   %r8d,%r8d
  809e4d:	75 18                	jne    809e67 <driver_post+0x21>
  809e4f:	48 85 ff             	test   %rdi,%rdi
  809e52:	74 05                	je     809e59 <driver_post+0x13>
  809e54:	80 3f 00             	cmpb   $0x0,(%rdi)
  809e57:	75 37                	jne    809e90 <driver_post+0x4a>
  809e59:	66 c7 03 4f 4b       	movw   $0x4b4f,(%rbx)
  809e5e:	c6 43 02 00          	movb   $0x0,0x2(%rbx)
  809e62:	44 89 c0             	mov    %r8d,%eax
  809e65:	5b                   	pop    %rbx
  809e66:	c3                   	retq   
  809e67:	48 89 ca             	mov    %rcx,%rdx
  809e6a:	48 8d 35 4b 08 00 00 	lea    0x84b(%rip),%rsi        # 80a6bc <trans_char+0xcc>
  809e71:	bf 01 00 00 00       	mov    $0x1,%edi
  809e76:	b8 00 00 00 00       	mov    $0x0,%eax
  809e7b:	e8 60 6f bf ff       	callq  400de0 <__printf_chk@plt>
  809e80:	66 c7 03 4f 4b       	movw   $0x4b4f,(%rbx)
  809e85:	c6 43 02 00          	movb   $0x0,0x2(%rbx)
  809e89:	b8 00 00 00 00       	mov    $0x0,%eax
  809e8e:	eb d5                	jmp    809e65 <driver_post+0x1f>
  809e90:	48 83 ec 08          	sub    $0x8,%rsp
  809e94:	41 51                	push   %r9
  809e96:	49 89 c9             	mov    %rcx,%r9
  809e99:	49 89 d0             	mov    %rdx,%r8
  809e9c:	48 89 f9             	mov    %rdi,%rcx
  809e9f:	48 89 f2             	mov    %rsi,%rdx
  809ea2:	be 9a 3c 00 00       	mov    $0x3c9a,%esi
  809ea7:	48 8d 3d 33 03 00 00 	lea    0x333(%rip),%rdi        # 80a1e1 <_IO_stdin_used+0x251>
  809eae:	e8 b9 f5 ff ff       	callq  80946c <submitr>
  809eb3:	48 83 c4 10          	add    $0x10,%rsp
  809eb7:	eb ac                	jmp    809e65 <driver_post+0x1f>

0000000000809eb9 <check>:
  809eb9:	89 f8                	mov    %edi,%eax
  809ebb:	c1 e8 1c             	shr    $0x1c,%eax
  809ebe:	85 c0                	test   %eax,%eax
  809ec0:	74 1d                	je     809edf <check+0x26>
  809ec2:	b9 00 00 00 00       	mov    $0x0,%ecx
  809ec7:	83 f9 1f             	cmp    $0x1f,%ecx
  809eca:	7f 0d                	jg     809ed9 <check+0x20>
  809ecc:	89 f8                	mov    %edi,%eax
  809ece:	d3 e8                	shr    %cl,%eax
  809ed0:	3c 0a                	cmp    $0xa,%al
  809ed2:	74 11                	je     809ee5 <check+0x2c>
  809ed4:	83 c1 08             	add    $0x8,%ecx
  809ed7:	eb ee                	jmp    809ec7 <check+0xe>
  809ed9:	b8 01 00 00 00       	mov    $0x1,%eax
  809ede:	c3                   	retq   
  809edf:	b8 00 00 00 00       	mov    $0x0,%eax
  809ee4:	c3                   	retq   
  809ee5:	b8 00 00 00 00       	mov    $0x0,%eax
  809eea:	c3                   	retq   

0000000000809eeb <gencookie>:
  809eeb:	53                   	push   %rbx
  809eec:	83 c7 01             	add    $0x1,%edi
  809eef:	e8 9c 6d bf ff       	callq  400c90 <srandom@plt>
  809ef4:	e8 a7 6e bf ff       	callq  400da0 <random@plt>
  809ef9:	89 c3                	mov    %eax,%ebx
  809efb:	89 c7                	mov    %eax,%edi
  809efd:	e8 b7 ff ff ff       	callq  809eb9 <check>
  809f02:	85 c0                	test   %eax,%eax
  809f04:	74 ee                	je     809ef4 <gencookie+0x9>
  809f06:	89 d8                	mov    %ebx,%eax
  809f08:	5b                   	pop    %rbx
  809f09:	c3                   	retq   
  809f0a:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)

0000000000809f10 <__libc_csu_init>:
  809f10:	41 57                	push   %r15
  809f12:	41 56                	push   %r14
  809f14:	49 89 d7             	mov    %rdx,%r15
  809f17:	41 55                	push   %r13
  809f19:	41 54                	push   %r12
  809f1b:	4c 8d 25 ee 0e 20 00 	lea    0x200eee(%rip),%r12        # a0ae10 <__frame_dummy_init_array_entry>
  809f22:	55                   	push   %rbp
  809f23:	48 8d 2d ee 0e 20 00 	lea    0x200eee(%rip),%rbp        # a0ae18 <__do_global_dtors_aux_fini_array_entry>
  809f2a:	53                   	push   %rbx
  809f2b:	41 89 fd             	mov    %edi,%r13d
  809f2e:	49 89 f6             	mov    %rsi,%r14
  809f31:	4c 29 e5             	sub    %r12,%rbp
  809f34:	48 83 ec 08          	sub    $0x8,%rsp
  809f38:	48 c1 fd 03          	sar    $0x3,%rbp
  809f3c:	e8 07 6d bf ff       	callq  400c48 <_init>
  809f41:	48 85 ed             	test   %rbp,%rbp
  809f44:	74 20                	je     809f66 <__libc_csu_init+0x56>
  809f46:	31 db                	xor    %ebx,%ebx
  809f48:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
  809f4f:	00 
  809f50:	4c 89 fa             	mov    %r15,%rdx
  809f53:	4c 89 f6             	mov    %r14,%rsi
  809f56:	44 89 ef             	mov    %r13d,%edi
  809f59:	41 ff 14 dc          	callq  *(%r12,%rbx,8)
  809f5d:	48 83 c3 01          	add    $0x1,%rbx
  809f61:	48 39 dd             	cmp    %rbx,%rbp
  809f64:	75 ea                	jne    809f50 <__libc_csu_init+0x40>
  809f66:	48 83 c4 08          	add    $0x8,%rsp
  809f6a:	5b                   	pop    %rbx
  809f6b:	5d                   	pop    %rbp
  809f6c:	41 5c                	pop    %r12
  809f6e:	41 5d                	pop    %r13
  809f70:	41 5e                	pop    %r14
  809f72:	41 5f                	pop    %r15
  809f74:	c3                   	retq   
  809f75:	90                   	nop
  809f76:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
  809f7d:	00 00 00 

0000000000809f80 <__libc_csu_fini>:
  809f80:	f3 c3                	repz retq 

Disassembly of section .init:

0000000000400c48 <_init>:
  400c48:	48 83 ec 08          	sub    $0x8,%rsp
  400c4c:	48 8b 05 a5 a3 60 00 	mov    0x60a3a5(%rip),%rax        # a0aff8 <__gmon_start__>
  400c53:	48 85 c0             	test   %rax,%rax
  400c56:	74 02                	je     400c5a <_init+0x12>
  400c58:	ff d0                	callq  *%rax
  400c5a:	48 83 c4 08          	add    $0x8,%rsp
  400c5e:	c3                   	retq   

Disassembly of section .plt:

0000000000400c60 <.plt>:
  400c60:	ff 35 a2 a3 60 00    	pushq  0x60a3a2(%rip)        # a0b008 <_GLOBAL_OFFSET_TABLE_+0x8>
  400c66:	ff 25 a4 a3 60 00    	jmpq   *0x60a3a4(%rip)        # a0b010 <_GLOBAL_OFFSET_TABLE_+0x10>
  400c6c:	0f 1f 40 00          	nopl   0x0(%rax)

0000000000400c70 <__snprintf_chk@plt>:
  400c70:	ff 25 a2 a3 60 00    	jmpq   *0x60a3a2(%rip)        # a0b018 <__snprintf_chk@GLIBC_2.3.4>
  400c76:	68 00 00 00 00       	pushq  $0x0
  400c7b:	e9 e0 ff ff ff       	jmpq   400c60 <.plt>

0000000000400c80 <__errno_location@plt>:
  400c80:	ff 25 9a a3 60 00    	jmpq   *0x60a39a(%rip)        # a0b020 <__errno_location@GLIBC_2.2.5>
  400c86:	68 01 00 00 00       	pushq  $0x1
  400c8b:	e9 d0 ff ff ff       	jmpq   400c60 <.plt>

0000000000400c90 <srandom@plt>:
  400c90:	ff 25 92 a3 60 00    	jmpq   *0x60a392(%rip)        # a0b028 <srandom@GLIBC_2.2.5>
  400c96:	68 02 00 00 00       	pushq  $0x2
  400c9b:	e9 c0 ff ff ff       	jmpq   400c60 <.plt>

0000000000400ca0 <strncmp@plt>:
  400ca0:	ff 25 8a a3 60 00    	jmpq   *0x60a38a(%rip)        # a0b030 <strncmp@GLIBC_2.2.5>
  400ca6:	68 03 00 00 00       	pushq  $0x3
  400cab:	e9 b0 ff ff ff       	jmpq   400c60 <.plt>

0000000000400cb0 <strcpy@plt>:
  400cb0:	ff 25 82 a3 60 00    	jmpq   *0x60a382(%rip)        # a0b038 <strcpy@GLIBC_2.2.5>
  400cb6:	68 04 00 00 00       	pushq  $0x4
  400cbb:	e9 a0 ff ff ff       	jmpq   400c60 <.plt>

0000000000400cc0 <puts@plt>:
  400cc0:	ff 25 7a a3 60 00    	jmpq   *0x60a37a(%rip)        # a0b040 <puts@GLIBC_2.2.5>
  400cc6:	68 05 00 00 00       	pushq  $0x5
  400ccb:	e9 90 ff ff ff       	jmpq   400c60 <.plt>

0000000000400cd0 <write@plt>:
  400cd0:	ff 25 72 a3 60 00    	jmpq   *0x60a372(%rip)        # a0b048 <write@GLIBC_2.2.5>
  400cd6:	68 06 00 00 00       	pushq  $0x6
  400cdb:	e9 80 ff ff ff       	jmpq   400c60 <.plt>

0000000000400ce0 <__stack_chk_fail@plt>:
  400ce0:	ff 25 6a a3 60 00    	jmpq   *0x60a36a(%rip)        # a0b050 <__stack_chk_fail@GLIBC_2.4>
  400ce6:	68 07 00 00 00       	pushq  $0x7
  400ceb:	e9 70 ff ff ff       	jmpq   400c60 <.plt>

0000000000400cf0 <mmap@plt>:
  400cf0:	ff 25 62 a3 60 00    	jmpq   *0x60a362(%rip)        # a0b058 <mmap@GLIBC_2.2.5>
  400cf6:	68 08 00 00 00       	pushq  $0x8
  400cfb:	e9 60 ff ff ff       	jmpq   400c60 <.plt>

0000000000400d00 <memset@plt>:
  400d00:	ff 25 5a a3 60 00    	jmpq   *0x60a35a(%rip)        # a0b060 <memset@GLIBC_2.2.5>
  400d06:	68 09 00 00 00       	pushq  $0x9
  400d0b:	e9 50 ff ff ff       	jmpq   400c60 <.plt>

0000000000400d10 <alarm@plt>:
  400d10:	ff 25 52 a3 60 00    	jmpq   *0x60a352(%rip)        # a0b068 <alarm@GLIBC_2.2.5>
  400d16:	68 0a 00 00 00       	pushq  $0xa
  400d1b:	e9 40 ff ff ff       	jmpq   400c60 <.plt>

0000000000400d20 <close@plt>:
  400d20:	ff 25 4a a3 60 00    	jmpq   *0x60a34a(%rip)        # a0b070 <close@GLIBC_2.2.5>
  400d26:	68 0b 00 00 00       	pushq  $0xb
  400d2b:	e9 30 ff ff ff       	jmpq   400c60 <.plt>

0000000000400d30 <read@plt>:
  400d30:	ff 25 42 a3 60 00    	jmpq   *0x60a342(%rip)        # a0b078 <read@GLIBC_2.2.5>
  400d36:	68 0c 00 00 00       	pushq  $0xc
  400d3b:	e9 20 ff ff ff       	jmpq   400c60 <.plt>

0000000000400d40 <signal@plt>:
  400d40:	ff 25 3a a3 60 00    	jmpq   *0x60a33a(%rip)        # a0b080 <signal@GLIBC_2.2.5>
  400d46:	68 0d 00 00 00       	pushq  $0xd
  400d4b:	e9 10 ff ff ff       	jmpq   400c60 <.plt>

0000000000400d50 <gethostbyname@plt>:
  400d50:	ff 25 32 a3 60 00    	jmpq   *0x60a332(%rip)        # a0b088 <gethostbyname@GLIBC_2.2.5>
  400d56:	68 0e 00 00 00       	pushq  $0xe
  400d5b:	e9 00 ff ff ff       	jmpq   400c60 <.plt>

0000000000400d60 <__memmove_chk@plt>:
  400d60:	ff 25 2a a3 60 00    	jmpq   *0x60a32a(%rip)        # a0b090 <__memmove_chk@GLIBC_2.3.4>
  400d66:	68 0f 00 00 00       	pushq  $0xf
  400d6b:	e9 f0 fe ff ff       	jmpq   400c60 <.plt>

0000000000400d70 <strtol@plt>:
  400d70:	ff 25 22 a3 60 00    	jmpq   *0x60a322(%rip)        # a0b098 <strtol@GLIBC_2.2.5>
  400d76:	68 10 00 00 00       	pushq  $0x10
  400d7b:	e9 e0 fe ff ff       	jmpq   400c60 <.plt>

0000000000400d80 <memcpy@plt>:
  400d80:	ff 25 1a a3 60 00    	jmpq   *0x60a31a(%rip)        # a0b0a0 <memcpy@GLIBC_2.14>
  400d86:	68 11 00 00 00       	pushq  $0x11
  400d8b:	e9 d0 fe ff ff       	jmpq   400c60 <.plt>

0000000000400d90 <time@plt>:
  400d90:	ff 25 12 a3 60 00    	jmpq   *0x60a312(%rip)        # a0b0a8 <time@GLIBC_2.2.5>
  400d96:	68 12 00 00 00       	pushq  $0x12
  400d9b:	e9 c0 fe ff ff       	jmpq   400c60 <.plt>

0000000000400da0 <random@plt>:
  400da0:	ff 25 0a a3 60 00    	jmpq   *0x60a30a(%rip)        # a0b0b0 <random@GLIBC_2.2.5>
  400da6:	68 13 00 00 00       	pushq  $0x13
  400dab:	e9 b0 fe ff ff       	jmpq   400c60 <.plt>

0000000000400db0 <_IO_getc@plt>:
  400db0:	ff 25 02 a3 60 00    	jmpq   *0x60a302(%rip)        # a0b0b8 <_IO_getc@GLIBC_2.2.5>
  400db6:	68 14 00 00 00       	pushq  $0x14
  400dbb:	e9 a0 fe ff ff       	jmpq   400c60 <.plt>

0000000000400dc0 <__isoc99_sscanf@plt>:
  400dc0:	ff 25 fa a2 60 00    	jmpq   *0x60a2fa(%rip)        # a0b0c0 <__isoc99_sscanf@GLIBC_2.7>
  400dc6:	68 15 00 00 00       	pushq  $0x15
  400dcb:	e9 90 fe ff ff       	jmpq   400c60 <.plt>

0000000000400dd0 <munmap@plt>:
  400dd0:	ff 25 f2 a2 60 00    	jmpq   *0x60a2f2(%rip)        # a0b0c8 <munmap@GLIBC_2.2.5>
  400dd6:	68 16 00 00 00       	pushq  $0x16
  400ddb:	e9 80 fe ff ff       	jmpq   400c60 <.plt>

0000000000400de0 <__printf_chk@plt>:
  400de0:	ff 25 ea a2 60 00    	jmpq   *0x60a2ea(%rip)        # a0b0d0 <__printf_chk@GLIBC_2.3.4>
  400de6:	68 17 00 00 00       	pushq  $0x17
  400deb:	e9 70 fe ff ff       	jmpq   400c60 <.plt>

0000000000400df0 <fopen@plt>:
  400df0:	ff 25 e2 a2 60 00    	jmpq   *0x60a2e2(%rip)        # a0b0d8 <fopen@GLIBC_2.2.5>
  400df6:	68 18 00 00 00       	pushq  $0x18
  400dfb:	e9 60 fe ff ff       	jmpq   400c60 <.plt>

0000000000400e00 <getopt@plt>:
  400e00:	ff 25 da a2 60 00    	jmpq   *0x60a2da(%rip)        # a0b0e0 <getopt@GLIBC_2.2.5>
  400e06:	68 19 00 00 00       	pushq  $0x19
  400e0b:	e9 50 fe ff ff       	jmpq   400c60 <.plt>

0000000000400e10 <strtoul@plt>:
  400e10:	ff 25 d2 a2 60 00    	jmpq   *0x60a2d2(%rip)        # a0b0e8 <strtoul@GLIBC_2.2.5>
  400e16:	68 1a 00 00 00       	pushq  $0x1a
  400e1b:	e9 40 fe ff ff       	jmpq   400c60 <.plt>

0000000000400e20 <exit@plt>:
  400e20:	ff 25 ca a2 60 00    	jmpq   *0x60a2ca(%rip)        # a0b0f0 <exit@GLIBC_2.2.5>
  400e26:	68 1b 00 00 00       	pushq  $0x1b
  400e2b:	e9 30 fe ff ff       	jmpq   400c60 <.plt>

0000000000400e30 <connect@plt>:
  400e30:	ff 25 c2 a2 60 00    	jmpq   *0x60a2c2(%rip)        # a0b0f8 <connect@GLIBC_2.2.5>
  400e36:	68 1c 00 00 00       	pushq  $0x1c
  400e3b:	e9 20 fe ff ff       	jmpq   400c60 <.plt>

0000000000400e40 <__fprintf_chk@plt>:
  400e40:	ff 25 ba a2 60 00    	jmpq   *0x60a2ba(%rip)        # a0b100 <__fprintf_chk@GLIBC_2.3.4>
  400e46:	68 1d 00 00 00       	pushq  $0x1d
  400e4b:	e9 10 fe ff ff       	jmpq   400c60 <.plt>

0000000000400e50 <__sprintf_chk@plt>:
  400e50:	ff 25 b2 a2 60 00    	jmpq   *0x60a2b2(%rip)        # a0b108 <__sprintf_chk@GLIBC_2.3.4>
  400e56:	68 1e 00 00 00       	pushq  $0x1e
  400e5b:	e9 00 fe ff ff       	jmpq   400c60 <.plt>

0000000000400e60 <socket@plt>:
  400e60:	ff 25 aa a2 60 00    	jmpq   *0x60a2aa(%rip)        # a0b110 <socket@GLIBC_2.2.5>
  400e66:	68 1f 00 00 00       	pushq  $0x1f
  400e6b:	e9 f0 fd ff ff       	jmpq   400c60 <.plt>

Disassembly of section .fini:

0000000000809f84 <_fini>:
  809f84:	48 83 ec 08          	sub    $0x8,%rsp
  809f88:	48 83 c4 08          	add    $0x8,%rsp
  809f8c:	c3                   	retq   
