Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id YMTUOOqH72ksCQEAu9opvQ
	(envelope-from <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>)
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 27 Apr 2026 17:59:38 +0200
X-Original-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [44.210.186.118])
	by mail.lfdr.de (Postfix) with ESMTPS id A36BE475CA0
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 27 Apr 2026 17:59:38 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id B78FF3F727
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 27 Apr 2026 15:59:37 +0000 (UTC)
Received: from mail-pj1-f54.google.com (mail-pj1-f54.google.com [209.85.216.54])
	by lists.linaro.org (Postfix) with ESMTPS id 8D1EA3F836
	for <linaro-mm-sig@lists.linaro.org>; Fri, 24 Apr 2026 08:06:34 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=gmail.com header.s=20251104 header.b=Yc3hL68Z;
	dmarc=pass (policy=none) header.from=gmail.com;
	spf=pass (lists.linaro.org: domain of mkchauras@gmail.com designates 209.85.216.54 as permitted sender) smtp.mailfrom=mkchauras@gmail.com
Received: by mail-pj1-f54.google.com with SMTP id 98e67ed59e1d1-35e576110adso5257620a91.0
        for <linaro-mm-sig@lists.linaro.org>; Fri, 24 Apr 2026 01:06:34 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1777017994; x=1777622794; darn=lists.linaro.org;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:from:to
         :cc:subject:date:message-id:reply-to;
        bh=/RCpdNlcyc5wjzZkBzWIIC1nFpk179iwlYkDekoHWOw=;
        b=Yc3hL68Zrb7cghegMv6uP5G5pejNX6mpAzK9aa+nG3S/whQdvkMjSfP646O1TPwwPk
         VApHGjnTv0ssOK2SspkSWz3M5pVZypm4niObe1wqyXBU6Gcx7HiVSVmzxJozAJ89OlXN
         PPna+5HKp9R25uEnUdz4rDCJEU5Le5hSNdbQ3ZV+O51HUTNwDpMnIHd0vIbrQFn/DgDt
         47bSo7EDpADyGMNIQcvo4b9PSt5qgprSOOACCkKCzzQiWNXklW6hBqPOCzOoQdFnPj+O
         B0ixR30Hxn42x9ZH0dLcTu1GNVCat4Lmgt2j8leLRN0N1HDRcvFrFS22EyJv0RU6Br7U
         U4DQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1777017994; x=1777622794;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=/RCpdNlcyc5wjzZkBzWIIC1nFpk179iwlYkDekoHWOw=;
        b=AUo8XBCnNdnl/QCysr2i4it4Y6nnk9/m3NDr9KA8TbLSCggdiEeOYorv0CakFauKg3
         mUExxXPWWB/FiK2yOcRyVTw0ifilRCohnHMhpTgxp6tZTo9dFQxbfWUiis93elHC2vf5
         xQm5oM1BfAPVVS6JsUyxJx8GQRq9dRjw7nR39ibwqNj8GXDumWPj0h1P97OokbSBjKIJ
         Hee6rOwOTgxI3bbF4wRBCKc/zmz36mSrC1dcG3cXvjHLh7iBzjR5UHtfbPdjdjbWEKvw
         /nIsjsn+XWnywtmFgaGohwOSYioPGsfU70xXoyfnTJNqskKJvsFvCYGBK4CXXPWq8x0q
         UfMg==
X-Forwarded-Encrypted: i=1; AFNElJ8zoFUQLv9iofERQFwzIgjYGxlbEX7uttcYEs+AE8QKV3e9ByvPIgXrNsdeg0VHSWReEWFXNbXUbSKNYX+T@lists.linaro.org
X-Gm-Message-State: AOJu0YwhMsbuFmaucjxY0y+Kp4C6cJovDuB5cQnBYknhsAtfqYfsfcSZ
	tlfsW/YAuHTlHFdBNXpxTlRetOnPqHUBps0W270dyU+A/yUBZ4qYx/EO
X-Gm-Gg: AeBDietHCX7Kj/WI1uDmHc7jq8LhmCpuTWH3DnrKdvML3nMyHBxkfPfvFUQ09r39h0M
	gVNZl+yazVqB5xivPNajAX1PulwdgERMivOd8O4aEVSBKZhRtaPKBmLKUBNc1rfqF4JeQN5yObG
	zFPi9n9t6A7EhH5Lp1DNUpWdy1VqG9TflTWG9KofehfJDpqDHsUcx0A68n9D/eijhX1i8e4Vf12
	+zLTnJ0FokQYfOXcKydoGjkkudVQFlqL9OCqwBl8KIaJDmY+DiwTKaStgs7mf8mL3rsM1ZPdWrI
	qavyYuapzfDFXdY+RNR6U0WUSr/UsLItsxSQg+Zt9xHHg1KUcH1OFNoapbd1rdyeCKB4neubhdL
	jsfqU3m+Fidq+DwndOgbDfiCE5oEN84v/f0A6AFKKcgzWNp8RFeuPZWurabBaYmKmeRMsO2CAMI
	1+sBjr/wFQgwHC4pBbBqHKv2goVMBZtOkAj11VTRi47wLBYZ3QEjkuH+AldKvLHRcPewM/uO27X
	FCwLw==
X-Received: by 2002:a17:90b:3ec5:b0:35f:b4c1:91ea with SMTP id 98e67ed59e1d1-361402ee818mr23969038a91.13.1777017993532;
        Fri, 24 Apr 2026 01:06:33 -0700 (PDT)
Received: from li-1a3e774c-28e4-11b2-a85c-acc9f2883e29.ibm.com ([129.41.58.4])
        by smtp.gmail.com with ESMTPSA id 98e67ed59e1d1-361419739dfsm23565688a91.13.2026.04.24.01.06.21
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 24 Apr 2026 01:06:32 -0700 (PDT)
Date: Fri, 24 Apr 2026 13:36:18 +0530
From: Mukesh Kumar Chaurasiya <mkchauras@gmail.com>
To: Christian =?utf-8?B?S8O2bmln?= <christian.koenig@amd.com>
Message-ID: <aeskOeb9uBiPptEJ@li-1a3e774c-28e4-11b2-a85c-acc9f2883e29.ibm.com>
References: <20260424054742.45832-1-mkchauras@gmail.com>
 <20260424054742.45832-3-mkchauras@gmail.com>
 <b4dcb464-7784-47e2-a973-6d731ab9ccf8@amd.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <b4dcb464-7784-47e2-a973-6d731ab9ccf8@amd.com>
X-Spamd-Bar: ----
X-MailFrom: mkchauras@gmail.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
Message-ID-Hash: MJBOX74JOXNKWGYUEAAVAK7QV6W7SQZM
X-Message-ID-Hash: MJBOX74JOXNKWGYUEAAVAK7QV6W7SQZM
X-Mailman-Approved-At: Mon, 27 Apr 2026 15:58:47 +0000
CC: maddy@linux.ibm.com, mpe@ellerman.id.au, npiggin@gmail.com, chleroy@kernel.org, peterz@infradead.org, jpoimboe@kernel.org, jbaron@akamai.com, aliceryhl@google.com, rostedt@goodmis.org, ardb@kernel.org, sumit.semwal@linaro.org, ojeda@kernel.org, boqun@kernel.org, gary@garyguo.net, bjorn3_gh@protonmail.com, lossin@kernel.org, a.hindborg@kernel.org, tmgross@umich.edu, dakr@kernel.org, nathan@kernel.org, nick.desaulniers+lkml@gmail.com, morbo@google.com, justinstitt@google.com, tamird@kernel.org, arnd@arndb.de, nsc@kernel.org, simona.vetter@ffwll.ch, linuxppc-dev@lists.ozlabs.org, linux-kernel@vger.kernel.org, linux-media@vger.kernel.org, dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org, rust-for-linux@vger.kernel.org, llvm@lists.linux.dev
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH V13 2/7] dma-resv: Fix undefined symbol when CONFIG_DMA_SHARED_BUFFER is disabled
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/MJBOX74JOXNKWGYUEAAVAK7QV6W7SQZM/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
X-Rspamd-Queue-Id: A36BE475CA0
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [3.09 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	R_DKIM_REJECT(1.00)[gmail.com:s=20251104];
	DATE_IN_PAST(1.00)[79];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+mx:c];
	MIME_GOOD(-0.10)[text/plain];
	DMARC_POLICY_SOFTFAIL(0.10)[gmail.com : SPF not aligned (relaxed),none];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[lists,linaro-mm-sig=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	ARC_NA(0.00)[];
	MIME_TRACE(0.00)[0:+];
	RCVD_COUNT_THREE(0.00)[4];
	FREEMAIL_FROM(0.00)[gmail.com];
	RCPT_COUNT_TWELVE(0.00)[35];
	FORGED_SENDER_MAILLIST(0.00)[];
	DKIM_TRACE(0.00)[gmail.com:-];
	TO_DN_SOME(0.00)[];
	NEURAL_HAM(-0.00)[-0.852];
	FROM_NEQ_ENVFROM(0.00)[mkchauras@gmail.com,linaro-mm-sig-bounces@lists.linaro.org];
	FROM_HAS_DN(0.00)[];
	FREEMAIL_CC(0.00)[linux.ibm.com,ellerman.id.au,gmail.com,kernel.org,infradead.org,akamai.com,google.com,goodmis.org,linaro.org,garyguo.net,protonmail.com,umich.edu,arndb.de,ffwll.ch,lists.ozlabs.org,vger.kernel.org,lists.freedesktop.org,lists.linaro.org,lists.linux.dev];
	TAGGED_RCPT(0.00)[linaro-mm-sig,lkml];
	ASN(0.00)[asn:14618, ipnet:44.192.0.0/11, country:US];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[lists.linaro.org:helo,lists.linaro.org:rdns,linaro.org:email]

On Fri, Apr 24, 2026 at 09:56:16AM +0200, Christian K=F6nig wrote:
> On 4/24/26 07:47, Mukesh Kumar Chaurasiya (IBM) wrote:
> > When building with LLVM=3D1 for architectures like powerpc where
> > CONFIG_DMA_SHARED_BUFFER is not enabled, the build fails with:
> >=20
> >   ld.lld: error: undefined symbol: dma_resv_reset_max_fences
> >   >>> referenced by helpers.c
> >   >>>               rust/helpers/helpers.o:(rust_helper_dma_resv_unlock)
> >=20
> > The issue occurs because:
> > 1. CONFIG_DEBUG_MUTEXES=3Dy is enabled
> > 2. CONFIG_DMA_SHARED_BUFFER is not enabled
> > 3. dma_resv_reset_max_fences() is declared in the header when
> >    CONFIG_DEBUG_MUTEXES is set
> > 4. But the function is only compiled in drivers/dma-buf/dma-resv.c,
> >    which is only built when CONFIG_DMA_SHARED_BUFFER is enabled
> > 5. Rust helpers call dma_resv_unlock() which calls
> >    dma_resv_reset_max_fences(), causing an undefined symbol
> >=20
> > Fix this by making the function declaration conditional on both
> > CONFIG_DEBUG_MUTEXES and CONFIG_DMA_SHARED_BUFFER. When either is
> > disabled, use a static inline stub instead.
>=20
> Well we are clearly missing something here, but of hand that doesn't look=
s like the right fix.
>=20
> When CONFIG_DMA_SHARED_BUFFER isn't enabled then the whole dma-resv.h hea=
der can't be used at all.
>=20
> So you also can't call dma_resv_unlock() from the Rust helpers. Which mea=
ns that we need to make the Rust helpers somehow depend on CONFIG_DMA_SHARE=
D_BUFFER.
>=20
> Alternative would be to provide dummies for the functions in dma-resv.h w=
hen CONFIG_DMA_SHARED_BUFFER isn't set, but that looks a bit like it just h=
ides the issue.
>=20
> Regards,
> Christian.
>=20
What about something like this:

diff --git a/rust/helpers/dma-resv.c b/rust/helpers/dma-resv.c
index 71914d8241e2..53c119f1b144 100644
--- a/rust/helpers/dma-resv.c
+++ b/rust/helpers/dma-resv.c
@@ -2,6 +2,7 @@
=20
 #include <linux/dma-resv.h>
=20
+#ifdef CONFIG_DMA_SHARED_BUFFER
 __rust_helper
 int rust_helper_dma_resv_lock(struct dma_resv *obj, struct ww_acquire_ctx =
*ctx)
 {
@@ -12,3 +13,4 @@ __rust_helper void rust_helper_dma_resv_unlock(struct dma=
_resv *obj)
 {
        dma_resv_unlock(obj);
 }
+#endif

This seems to fix the issue and makes sense, whoever wants to use the
dma shared buffer will anyway enable the config

Regards,
Mukesh
> >=20
> > Fixes: 0c6b522abc2a ("dma-buf: cleanup dma-resv shared fence debugging =
a bit v2")
> > Signed-off-by: Mukesh Kumar Chaurasiya (IBM) <mkchauras@gmail.com>
> > ---
> >  include/linux/dma-resv.h | 2 +-
> >  1 file changed, 1 insertion(+), 1 deletion(-)
> >=20
> > diff --git a/include/linux/dma-resv.h b/include/linux/dma-resv.h
> > index c5ab6fd9ebe8..23c8db0b5214 100644
> > --- a/include/linux/dma-resv.h
> > +++ b/include/linux/dma-resv.h
> > @@ -311,7 +311,7 @@ static inline bool dma_resv_iter_is_restarted(struc=
t dma_resv_iter *cursor)
> >  #define dma_resv_held(obj) lockdep_is_held(&(obj)->lock.base)
> >  #define dma_resv_assert_held(obj) lockdep_assert_held(&(obj)->lock.bas=
e)
> >=20
> > -#ifdef CONFIG_DEBUG_MUTEXES
> > +#if IS_ENABLED(CONFIG_DEBUG_MUTEXES) && IS_ENABLED(CONFIG_DMA_SHARED_B=
UFFER)
> >  void dma_resv_reset_max_fences(struct dma_resv *obj);
> >  #else
> >  static inline void dma_resv_reset_max_fences(struct dma_resv *obj) {}
> > --
> > 2.53.0
> >=20
>=20
_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org
