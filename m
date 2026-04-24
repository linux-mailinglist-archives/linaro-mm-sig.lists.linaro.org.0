Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id UCYbLcOH72ksCQEAu9opvQ
	(envelope-from <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>)
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 27 Apr 2026 17:58:59 +0200
X-Original-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [44.210.186.118])
	by mail.lfdr.de (Postfix) with ESMTPS id 7A43A475C4F
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 27 Apr 2026 17:58:59 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 8FD3C404AB
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 27 Apr 2026 15:58:58 +0000 (UTC)
Received: from mail-pl1-f180.google.com (mail-pl1-f180.google.com [209.85.214.180])
	by lists.linaro.org (Postfix) with ESMTPS id A46E4404AB
	for <linaro-mm-sig@lists.linaro.org>; Fri, 24 Apr 2026 05:48:20 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=gmail.com header.s=20251104 header.b=qnZUZxF1;
	dmarc=pass (policy=none) header.from=gmail.com;
	spf=pass (lists.linaro.org: domain of mkchauras@gmail.com designates 209.85.214.180 as permitted sender) smtp.mailfrom=mkchauras@gmail.com
Received: by mail-pl1-f180.google.com with SMTP id d9443c01a7336-2ab46931cf1so58895105ad.0
        for <linaro-mm-sig@lists.linaro.org>; Thu, 23 Apr 2026 22:48:20 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1777009700; x=1777614500; darn=lists.linaro.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:to:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=Ox8HNk2ehgX4u9MIzrQAUilnp/6GJtQsHeC9tfe3Lv8=;
        b=qnZUZxF13eqZLIli/AsIgbczVBkrA2HKqugP/VAUMVD9AJwJFMy8XKpeoac+Zzy/ye
         K6WWm5uF9B1Wk2FNV/+uwWX8RMCE9YbdyFZlE9o/BHh3NTWiiPxxwLeU52+2z0wlBKcP
         wo20Tg2HtFS+vf5PJ38sA6Cij4s2FcZDeVjOpmdTiR0MPNRVoMo8gS06ZnN4CUKohU49
         H6nTmVg/ims0H+2NmVGMne1sAwgzAS9bzA5agKrvqWOnieIjNQZRarl/6z8Oz6L/Uwc/
         3fDvAcNBWhsma/flALeJWNPhREEcYuRRP6sNwXioA+WKp++gX0+j37RIhxU0Wq6NTFgf
         N6ZA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1777009700; x=1777614500;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:to:from:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=Ox8HNk2ehgX4u9MIzrQAUilnp/6GJtQsHeC9tfe3Lv8=;
        b=B56MU1i/XCt31v2NmI2e2inCDzkIdgXtFYr3KoutuMObAUk/qKBtcdroa9b6PgP7Dr
         H4KpLRg6SpDSLNfIre9n0cWvjtIJLG4i1994jGZp4fkePdvb841NGZwfi4OtbAU0QHAE
         YpYbwi1lDtc6Ho9C34lTkIw0nizIQGzQkI6NFmhH52CDX8evtCAF+qQMyOv2yDlI3SK5
         wz+jne3Lt4QjXNmmI58qSqVm8Hk57BVMyQGOKSbWVmt4Qq4kU+wZ8NByHm49gxQvcfDv
         nTh7hocoVPzslrbt2yV4hjEdvgEZRAjlFDwWZk9xmHm0HcvYBFRymJVdI3mXkBKeE8+x
         NlYw==
X-Forwarded-Encrypted: i=1; AFNElJ8IsN4zOfAIHA4i2Di7pZJehUjsi7NPW9nKlUBn3coU5zO00RfWZP9eVgX0MG0OmSfF9KxUI9/pYHE5o4h6@lists.linaro.org
X-Gm-Message-State: AOJu0YwpPVf5Knzh4wsTK9MBPlw2hpcxvvkhAA0GbAdqN7FppdpYM6A8
	mDDcXYOYu4EymLrgvdd0BMO3SIvnb51ry+QXwaLs8t5qfOmbts08wAfX
X-Gm-Gg: AeBDiet6GYG9HQB6ZPk5uzOQfJMx9/2iArs5R+W85ga3EncMQjEbk+xgDiLcv20lwgi
	5xKuIff2nhfzUImag8UJCZH2cuK2PK5nQt4649LdGa9Xlj9cHXBjaFljOMML4INjz7fnXZfznu0
	4n/5r44h68Ga2djdZ77BN1CjzcqsrvqB5ekj9GfnvGavYm7TOSmvIfbGRep90IcuQCQ9IvT0puN
	X97MgPonJzLkOhs+OJETCGFREC1IjT+K8f4TCBVCIQ7d9Yz3jQl4+idKFnwRS4Ogj6Xv51/NsB0
	q2sZ/CkGvZIvoW/AscOzAjqc/miCXFnXjCMK/yFyzygdz3L54Fj1OcB52qVVJQG6EcCW+0QAE0C
	S/JP0cOtCfUFE7Q36dxG/ksE/okarkeWLExvjH3Ytd1KMmSeZR+RGpDUDeFO0IWU9gZYmpmutMh
	0UCnomS3GOMYRaGIsJEf3dc7PoFWPpG4VGFGaBEY8qUzOX4l09qkcm4F4IY9BIcbsNLapliHcXR
	5kyD04qP478OSM=
X-Received: by 2002:a17:902:d591:b0:2b0:badc:c9cf with SMTP id d9443c01a7336-2b5f9e18812mr226513645ad.13.1777009699637;
        Thu, 23 Apr 2026 22:48:19 -0700 (PDT)
Received: from li-1a3e774c-28e4-11b2-a85c-acc9f2883e29.bl1-in.ibm.com ([129.41.58.4])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-2b5faa176e9sm208778245ad.20.2026.04.23.22.48.09
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 23 Apr 2026 22:48:19 -0700 (PDT)
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
Date: Fri, 24 Apr 2026 11:17:37 +0530
Message-ID: <20260424054742.45832-3-mkchauras@gmail.com>
X-Mailer: git-send-email 2.53.0
In-Reply-To: <20260424054742.45832-1-mkchauras@gmail.com>
References: <20260424054742.45832-1-mkchauras@gmail.com>
MIME-Version: 1.0
X-Spamd-Bar: --
X-MailFrom: mkchauras@gmail.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
Message-ID-Hash: 4W3V5LJXOY22FGPICZH75UYR5O4DIDUK
X-Message-ID-Hash: 4W3V5LJXOY22FGPICZH75UYR5O4DIDUK
X-Mailman-Approved-At: Mon, 27 Apr 2026 15:58:42 +0000
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] [PATCH V13 2/7] dma-resv: Fix undefined symbol when CONFIG_DMA_SHARED_BUFFER is disabled
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/4W3V5LJXOY22FGPICZH75UYR5O4DIDUK/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
X-Rspamd-Queue-Id: 7A43A475C4F
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
	NEURAL_HAM(-0.00)[-0.982];
	TO_DN_NONE(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[mkchauras@gmail.com,linaro-mm-sig-bounces@lists.linaro.org];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_RCPT(0.00)[linaro-mm-sig,lkml];
	ASN(0.00)[asn:14618, ipnet:44.192.0.0/11, country:US];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[linaro.org:email,lists.linaro.org:helo,lists.linaro.org:rdns]

When building with LLVM=1 for architectures like powerpc where
CONFIG_DMA_SHARED_BUFFER is not enabled, the build fails with:

  ld.lld: error: undefined symbol: dma_resv_reset_max_fences
  >>> referenced by helpers.c
  >>>               rust/helpers/helpers.o:(rust_helper_dma_resv_unlock)

The issue occurs because:
1. CONFIG_DEBUG_MUTEXES=y is enabled
2. CONFIG_DMA_SHARED_BUFFER is not enabled
3. dma_resv_reset_max_fences() is declared in the header when
   CONFIG_DEBUG_MUTEXES is set
4. But the function is only compiled in drivers/dma-buf/dma-resv.c,
   which is only built when CONFIG_DMA_SHARED_BUFFER is enabled
5. Rust helpers call dma_resv_unlock() which calls
   dma_resv_reset_max_fences(), causing an undefined symbol

Fix this by making the function declaration conditional on both
CONFIG_DEBUG_MUTEXES and CONFIG_DMA_SHARED_BUFFER. When either is
disabled, use a static inline stub instead.

Fixes: 0c6b522abc2a ("dma-buf: cleanup dma-resv shared fence debugging a bit v2")
Signed-off-by: Mukesh Kumar Chaurasiya (IBM) <mkchauras@gmail.com>
---
 include/linux/dma-resv.h | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/include/linux/dma-resv.h b/include/linux/dma-resv.h
index c5ab6fd9ebe8..23c8db0b5214 100644
--- a/include/linux/dma-resv.h
+++ b/include/linux/dma-resv.h
@@ -311,7 +311,7 @@ static inline bool dma_resv_iter_is_restarted(struct dma_resv_iter *cursor)
 #define dma_resv_held(obj) lockdep_is_held(&(obj)->lock.base)
 #define dma_resv_assert_held(obj) lockdep_assert_held(&(obj)->lock.base)
 
-#ifdef CONFIG_DEBUG_MUTEXES
+#if IS_ENABLED(CONFIG_DEBUG_MUTEXES) && IS_ENABLED(CONFIG_DMA_SHARED_BUFFER)
 void dma_resv_reset_max_fences(struct dma_resv *obj);
 #else
 static inline void dma_resv_reset_max_fences(struct dma_resv *obj) {}
-- 
2.53.0

_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org
