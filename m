Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id yM06NLiH72mCCQEAu9opvQ
	(envelope-from <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>)
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 27 Apr 2026 17:58:48 +0200
X-Original-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [44.210.186.118])
	by mail.lfdr.de (Postfix) with ESMTPS id 88185475C40
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 27 Apr 2026 17:58:48 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 896FF406C8
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 27 Apr 2026 15:58:47 +0000 (UTC)
Received: from mail-pl1-f179.google.com (mail-pl1-f179.google.com [209.85.214.179])
	by lists.linaro.org (Postfix) with ESMTPS id 16D82404AB
	for <linaro-mm-sig@lists.linaro.org>; Fri, 24 Apr 2026 05:48:00 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=gmail.com header.s=20251104 header.b=A1Ao55e3;
	dmarc=pass (policy=none) header.from=gmail.com;
	spf=pass (lists.linaro.org: domain of mkchauras@gmail.com designates 209.85.214.179 as permitted sender) smtp.mailfrom=mkchauras@gmail.com
Received: by mail-pl1-f179.google.com with SMTP id d9443c01a7336-2b23fcf90b2so71244145ad.3
        for <linaro-mm-sig@lists.linaro.org>; Thu, 23 Apr 2026 22:48:00 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1777009679; x=1777614479; darn=lists.linaro.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:to
         :from:from:to:cc:subject:date:message-id:reply-to;
        bh=Q7M2fwY604nxmRG1YIO02Z14fgzwwg1Pa67qHupVFxk=;
        b=A1Ao55e3XJMNbBMrptvYVgJ6wU12F+tOuKcy+wzguhqPGAFrU+Y/wBRngjV25QD0aU
         mtBflQPvVlCUTN2W1A2u2GLB0MRk17ml4dLNs6th1TT+xeYZKm7Jy9Wb8Q0HYGIB6H5y
         u1U06afBdIP/n6XSz8PaXFCEFxABx9bu0cns8M8uh62O2eX47/MoSChX9ZoVzAAoH6NS
         Nu2ong70Xr+7AERRpDu/bx7WaP65wQmBGJoIm81DMq8bpujrH0sctcd+/3yFMlLHqP9+
         ThASU8THQmAJ98FaqUAb0xy9N+Kl8lSPv92XfNo31oAJPDOrVHOcgbW3605cvcDFG5jl
         Px6A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1777009679; x=1777614479;
        h=content-transfer-encoding:mime-version:message-id:date:subject:to
         :from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=Q7M2fwY604nxmRG1YIO02Z14fgzwwg1Pa67qHupVFxk=;
        b=J3T6tkTAN2mDav45/hT2BviYNL543u/5fdUlW7Df38DmPxytYwq/EvsokdBEnnSFQy
         iTp5pP/CfuiaIxsHKbrtEKiSMUl7p1iiqeZ4QheQQqk9ElRR7+5SAPlEuJirL5bvNcFz
         scgizrZtsD7qXPadn0Euhd79R7HoYhApBu9wfVGskCSUOVSRvV7alVb6U0RbByWTPOnl
         J/5HQqC/KdStwGNEmveDz4482tRz1dM1lxEszzvqB7rxdygaFHb2mw5/7EoLNG4Tm5QG
         nLCAit2NLsHqq+4X/8QJTikIRBVTyJApjQsnssfn5+hIR4uG8XEVCRBRuyB0Gd/QkJkI
         fsag==
X-Forwarded-Encrypted: i=1; AFNElJ+WtazSiXQCHThs1xZJlgON3Xd/b1N+yLc4v+GzxcKVKdDPqPOJF/rPrvZkiAil8H1o+39E5+D0HL5iH/9B@lists.linaro.org
X-Gm-Message-State: AOJu0YxTH8wJtYEBXtRJAhykHi9kxnN3y/gE+Qe+sNdq/YXGDvCU/M1c
	2HMidzgV3oljTRTZNnj5WnAdj0V0+wnVcmEs/VkMPPAEyR/xO+RxXzp/
X-Gm-Gg: AeBDietE7tAv8DTbfJeJK+e25x5finms4GlR4Y9QVQbFfjXnX0rFUskk5OGsDgRHpqq
	XCKqiZyVQckkiOnid6m/WSoGTV3UCHLA/3Oc/bngzhoFW5V9d2C1CjDfH+U01YqsV+s41aotAgP
	q+f9vej9NFO5t7+hbJ1CaX8dxjLebctJAQzVnVTygWVVfOGjcP/AEKGMfTxuB4Bjv07XmbLsY5W
	/m+KlYjFyYDfRroFu1i+RXSkOGDocS+vLEG6KLrc573Cx36nem47qbpZMtGXQ21/M86UdHe9Blb
	2sfLp2rb3dUubXBJECs2LS5vKeKSS2a4HFRFtRmVdlxjVqpgaVw5rj2iwvvSD4+BaiqSqA7orTW
	wgseDp6gr2HR+kQyiGZYxtAewUD/usEXZZ/to1aLnaqx2QQ6X0TOZVImk5s2/IV9TNYALvzLtZB
	IAjsHWmn5GLhTPATOzUEONOOqAByjNUYCh5Jusqilwboa0Vl4o/kCQm+rQSdPKAd5KU79pQuzS8
	FzSoBXnDXtyih4=
X-Received: by 2002:a17:903:28e:b0:2b0:7531:b61e with SMTP id d9443c01a7336-2b5f9f9f125mr305572665ad.41.1777009679150;
        Thu, 23 Apr 2026 22:47:59 -0700 (PDT)
Received: from li-1a3e774c-28e4-11b2-a85c-acc9f2883e29.bl1-in.ibm.com ([129.41.58.4])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-2b5faa176e9sm208778245ad.20.2026.04.23.22.47.48
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 23 Apr 2026 22:47:58 -0700 (PDT)
From: "Mukesh Kumar Chaurasiya (IBM)" <mkchauras@gmail.com>
To: maddy@linux.ibm.com,
	mpe@ellerman.id.au,
	npiggin@gmail.com,
	chleroy@kernel.org,
	peterz@infradead.org,
	jpoimboe@kernel.org,
	jbaron@akamai.com,
	aliceryhl@google.com,
	rostedt@goodmis.org,
	ardb@kernel.org,
	sumit.semwal@linaro.org,
	christian.koenig@amd.com,
	ojeda@kernel.org,
	boqun@kernel.org,
	gary@garyguo.net,
	bjorn3_gh@protonmail.com,
	lossin@kernel.org,
	a.hindborg@kernel.org,
	tmgross@umich.edu,
	dakr@kernel.org,
	nathan@kernel.org,
	nick.desaulniers+lkml@gmail.com,
	morbo@google.com,
	justinstitt@google.com,
	tamird@kernel.org,
	arnd@arndb.de,
	nsc@kernel.org,
	mkchauras@gmail.com,
	simona.vetter@ffwll.ch,
	linuxppc-dev@lists.ozlabs.org,
	linux-kernel@vger.kernel.org,
	linux-media@vger.kernel.org,
	dri-devel@lists.freedesktop.org,
	linaro-mm-sig@lists.linaro.org,
	rust-for-linux@vger.kernel.org,
	llvm@lists.linux.dev
Date: Fri, 24 Apr 2026 11:17:35 +0530
Message-ID: <20260424054742.45832-1-mkchauras@gmail.com>
X-Mailer: git-send-email 2.53.0
MIME-Version: 1.0
X-Spamd-Bar: ---
X-MailFrom: mkchauras@gmail.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
Message-ID-Hash: QX3AEV6O22DLZHCY7PE46TQLYTWQMT2C
X-Message-ID-Hash: QX3AEV6O22DLZHCY7PE46TQLYTWQMT2C
X-Mailman-Approved-At: Mon, 27 Apr 2026 15:58:40 +0000
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] [PATCH V13 0/7] Rust support for powerpc
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/QX3AEV6O22DLZHCY7PE46TQLYTWQMT2C/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
X-Rspamd-Queue-Id: 88185475C40
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [4.09 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	MID_CONTAINS_FROM(1.00)[];
	DATE_IN_PAST(1.00)[82];
	R_DKIM_REJECT(1.00)[gmail.com:s=20251104];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+mx:c];
	DMARC_POLICY_SOFTFAIL(0.10)[gmail.com : SPF not aligned (relaxed),none];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCPT_COUNT_TWELVE(0.00)[36];
	RCVD_TLS_LAST(0.00)[];
	FREEMAIL_FROM(0.00)[gmail.com];
	MIME_TRACE(0.00)[0:+];
	RCVD_COUNT_THREE(0.00)[4];
	GREYLIST(0.00)[pass,meta];
	FREEMAIL_TO(0.00)[linux.ibm.com,ellerman.id.au,gmail.com,kernel.org,infradead.org,akamai.com,google.com,goodmis.org,linaro.org,amd.com,garyguo.net,protonmail.com,umich.edu,arndb.de,ffwll.ch,lists.ozlabs.org,vger.kernel.org,lists.freedesktop.org,lists.linaro.org,lists.linux.dev];
	ARC_NA(0.00)[];
	TAGGED_FROM(0.00)[lists,linaro-mm-sig=lfdr.de];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[gmail.com:-];
	NEURAL_HAM(-0.00)[-0.978];
	TO_DN_NONE(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[mkchauras@gmail.com,linaro-mm-sig-bounces@lists.linaro.org];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_RCPT(0.00)[linaro-mm-sig,lkml];
	ASN(0.00)[asn:14618, ipnet:44.192.0.0/11, country:US];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[linaro.org:email,lists.linaro.org:helo,lists.linaro.org:rdns]

Enable experimental rust support for ppc64le and ppc32be. The patch for
ppc32 has been provided by Link Mauve[1] and ppc64le support[2] has been
merged over it. ppc32 needs some toolchain fixes mentioned in the patch
`rust: Add PowerPC support` and the discussion for that is done here[1].

This has been tested on
- powernv9 hardware
- pseries P11 hardware
- pseries(9, 10) qemu
- powernv(9, 10) qemu
- rustdoc on x86 and powerpc64le
- rusttest on x86 and powerpc64le

We are actively working with our LLVM team to get the target for ppc,
ppc64 and ppc64le in the rust compiler.

[1] https://lore.kernel.org/all/20260204030507.8203-1-linkmauve@linkmauve.fr
[2] https://lore.kernel.org/all/20260204042417.83903-1-mkchauras@gmail.com

Changelog:
V12 -> V13:
- Added a patch for fixing build issue on ppc32 by Link Mauve
- Added another patch to fix a build issue in dma-buf
- Added another patch to enforce minimum `rustc` version for powerpc
V12: https://lore.kernel.org/all/20260421120958.190430-1-mkchauras@gmail.com/

V11 -> V12:
- Rebased to mainline (rust/Makefile conflict resolved)
V11: https://lore.kernel.org/all/20260417152253.2312961-1-mkchauras@gmail.com/

V10 -> V11:
- Updated `rust/Makefile`
- Not all libraries are move to `rust/host` directory now. Only
  proc_macro2, quote and syn are moved
- Special handling for pin init is added. Details in commit
- Removed mkdir for `rust/host`, this is now handled by toolchain.
V10: https://lore.kernel.org/all/20260406200149.3727922-1-mkchauras@gmail.com/

V9 -> V10:
- rust/Makefile updated with review comments from Miguel
- Patch 1/4 updated with commit message and subject
V9: https://lore.kernel.org/all/20260404121610.1956528-1-mkchauras@gmail.com/

V8 -> V9:
- rust/Makefile updated with a directory instead of abspath
V8: https://lore.kernel.org/all/20260403145308.1042622-1-mkchauras@gmail.com/

V7 -> V8:
- rust/Makefile updated to separate host libraries from target
V7: https://lore.kernel.org/all/20260329160254.2592207-1-mkchauras@gmail.com/

Changelog:
V6 -> V7:
- Documentation removed as powerpc is still under development
- Added a fix for race condition in rust/Makefile
V6: https://lore.kernel.org/all/20260210090023.2587534-1-mkchauras@gmail.com

V5 -> V6:
- Added a missing Tested by from Venkat which got missed since V3
- Support is marked as Maintained instead of experimental
V5: https://lore.kernel.org/all/20260210053756.2088302-1-mkchauras@gmail.com

V4 -> V5:
- Removed a nested ifdef from PPC64 for Little endian toolchain
V4: https://lore.kernel.org/all/20260209105456.1551677-1-mkchauras@gmail.com

V3 -> V4:
- Co-developed-by header added in patch 1
V3: https://lore.kernel.org/all/20260205180429.3280657-1-mkchauras@gmail.com

V2 -> V3:
- Splited HAVE_RUST in 2 lines
- BINDGEN_TARGET_powerpc initialized before assigning the same to
  BINDGEN_TARGET
V2: https://lore.kernel.org/all/20260204210125.613350-1-mkchauras@gmail.com

V1 -> V2:
- jump label fix for rust has been moved to a separate patch
- PPC32 support has been taken
- rust support has been marked experimental
- target.json dependency has been removed
- HAVE_RUST now depends on CPU_LITTLE_ENDIAN for PPC64

Link Mauve (2):
  rust: Make __udivdi3() and __umoddi3() panic
  rust: Add PowerPC support

Mukesh Kumar Chaurasiya (IBM) (5):
  rust: Fix "multiple candidates for rmeta dependency core" error
  dma-resv: Fix undefined symbol when CONFIG_DMA_SHARED_BUFFER is
    disabled
  powerpc/jump_label: adjust inline asm to be consistent
  rust/powerpc: Set min rustc version for powerpc
  powerpc: Enable Rust for ppc64le

 arch/powerpc/Kconfig                  |  2 ++
 arch/powerpc/Makefile                 |  7 ++++
 arch/powerpc/include/asm/jump_label.h | 23 ++++++------
 include/linux/dma-resv.h              |  2 +-
 rust/Makefile                         | 52 +++++++++++++++++----------
 rust/compiler_builtins.rs             |  6 ++++
 scripts/min-tool-version.sh           |  6 +++-
 7 files changed, 68 insertions(+), 30 deletions(-)

-- 
2.53.0

_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org
