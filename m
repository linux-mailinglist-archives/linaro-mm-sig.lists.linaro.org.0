Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id kNktGPqH72mCCQEAu9opvQ
	(envelope-from <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>)
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 27 Apr 2026 17:59:54 +0200
X-Original-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [44.210.186.118])
	by mail.lfdr.de (Postfix) with ESMTPS id DFA05475CCC
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 27 Apr 2026 17:59:53 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 060EF3F727
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 27 Apr 2026 15:59:53 +0000 (UTC)
Received: from mail-pf1-f178.google.com (mail-pf1-f178.google.com [209.85.210.178])
	by lists.linaro.org (Postfix) with ESMTPS id 042463F836
	for <linaro-mm-sig@lists.linaro.org>; Fri, 24 Apr 2026 08:34:25 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=gmail.com header.s=20251104 header.b=F35oYl4G;
	dmarc=pass (policy=none) header.from=gmail.com;
	spf=pass (lists.linaro.org: domain of mkchauras@gmail.com designates 209.85.210.178 as permitted sender) smtp.mailfrom=mkchauras@gmail.com
Received: by mail-pf1-f178.google.com with SMTP id d2e1a72fcca58-82748257f5fso4613179b3a.1
        for <linaro-mm-sig@lists.linaro.org>; Fri, 24 Apr 2026 01:34:24 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1777019664; x=1777624464; darn=lists.linaro.org;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:from:to
         :cc:subject:date:message-id:reply-to;
        bh=/LSr35TcIMW6wVIpT4GYu71Od3lJHQ6iIOnrBrPvpf8=;
        b=F35oYl4GQbaHDCMsJdQv9AJjNtvQBMKjf33D+LH9Q0ZpDftaiJjeGsGM//UBWEkQmv
         97qxlzKJGENrz3Lm4UPMGrAIgdja+TC2QisL6OXJVO03VsgJuBkKVV0Qdur8ydg5XPsE
         1qfQU/VKI2nIgG5mTFLPESsQaPKqy4Il7Lv+AS1YxCKKqyca9x0oenv4tKqf/t5Pcu1A
         2KWmiImlc7lB55+u1ms1Q4SKAGkmwGFopUUjIj2WwYUZUmoNos9StcwrAwr4KDnKXuV9
         Dt+6jeeoQc6bkR+XIhFdTUwHY2TOD3rHSG5aA2nNVjzWpUqPBZncfXtEc9PnVKvrRYVu
         pkug==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1777019664; x=1777624464;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=/LSr35TcIMW6wVIpT4GYu71Od3lJHQ6iIOnrBrPvpf8=;
        b=OLG/HOaaLurj9VQ3KoSZ38Jrlet3NgyD60z0NPFs8h0R3KKDxpZ/0j5YTZa/bYrByK
         359D8x2IBzWVH78WTuE4OpBdzRNGtCw0Ok4FlH8Vbb1rsvbPQFEQ0TWYqWWNLjy0m7Er
         k9Yu/st3y/Al9GzoqwELRyvTwRvkQajV6pKJOIjD6P/XJs+48K3Cdiqt4gETkFXspcFJ
         TjAN2XFM4XZD0YOOBH7/dC9i31wwxF2HMPhxLxP0cNZ9rzZwHur0GEd3Vo8p3be5YLdg
         4Xx6IAt67LQYxEW4p3K81xbgoxPHyuJl1bfIQFjNt9UtxYLleZbkbCEijg5X5KwZhWpM
         MRUA==
X-Forwarded-Encrypted: i=1; AFNElJ8JSAMQ+FQCQWu7umcnOJ+kdQ67y4O5SPkLvkUhUd+8xvsb5yhpopYg0hL7DAnu5Bq7Qrtn+6onyTAg/v4I@lists.linaro.org
X-Gm-Message-State: AOJu0Ywo8Vtc7MXe23COTIHXuqjF4LF4FwVUjQMUm68H3/Hll556Awda
	hfbRsGYjj5M+GBRfsHmRl4FZoDM1u8lLj9Cda6BICZg2Dm25OeVTgIHv
X-Gm-Gg: AeBDiesmePJprx846wW2VOPTQg5uT+kIFN/bexNv6W5zCx7fYwRXpgX7iwIPqMoXELG
	CENahgo4u8vOIKOHMA2upLxHfye2eTYjEUXKnExREjvmsGWANeiDUBs52KLoC1tpb9uEkNyngzF
	AIDnZvbHwvbXSL0uyIFxLPmSCDUfBkucAsi8AKlzNT4won/dPWfL7jr59qXkjZKvO5l5q1nOEka
	2PbrUHO+NTEKXfk1cBRjXBpPu4O5X9iWcwtkNbHqZLK8ZcRV/nsPrJrmXEuTcDnxvTvxGFdKtut
	p5uvlaMI2Gxh1YP7Ucle7CxCLBLLN0JtmiCwLHpeVnVfbhSIByvORnszJehvB0qyRnRaR01a7tl
	bjQX3Ri0qNxqRcN61N4R6U0WVJDR4iV/Xb8XnbxonS/ReZvCP+KJ0V7NVDVWtO3KV2zqvsmasQz
	qUszGGYLjPdBzUTGk/jY4s/qMKT9yeWI0u90phLkoA9qG8vNIMzTh2CcLF+lXxCY2Lm3WauPHbJ
	RK9xg==
X-Received: by 2002:a05:6a00:3e09:b0:82f:456c:29f1 with SMTP id d2e1a72fcca58-82f8b385c38mr26954369b3a.12.1777019663822;
        Fri, 24 Apr 2026 01:34:23 -0700 (PDT)
Received: from li-1a3e774c-28e4-11b2-a85c-acc9f2883e29.ibm.com ([129.41.58.4])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-82f8ebe92desm22485595b3a.44.2026.04.24.01.34.12
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 24 Apr 2026 01:34:23 -0700 (PDT)
Date: Fri, 24 Apr 2026 14:04:10 +0530
From: Mukesh Kumar Chaurasiya <mkchauras@gmail.com>
To: Christian =?utf-8?B?S8O2bmln?= <christian.koenig@amd.com>
Message-ID: <aesqe2NKWhkT4kc2@li-1a3e774c-28e4-11b2-a85c-acc9f2883e29.ibm.com>
References: <20260424054742.45832-1-mkchauras@gmail.com>
 <20260424054742.45832-3-mkchauras@gmail.com>
 <b4dcb464-7784-47e2-a973-6d731ab9ccf8@amd.com>
 <aeskOeb9uBiPptEJ@li-1a3e774c-28e4-11b2-a85c-acc9f2883e29.ibm.com>
 <a2241936-579f-4fa6-a9ec-49325d44413f@amd.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <a2241936-579f-4fa6-a9ec-49325d44413f@amd.com>
X-Spamd-Bar: ----
X-MailFrom: mkchauras@gmail.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
Message-ID-Hash: EGF37HOFCDZZ2VH5NZBV4XODSVJ2OUMF
X-Message-ID-Hash: EGF37HOFCDZZ2VH5NZBV4XODSVJ2OUMF
X-Mailman-Approved-At: Mon, 27 Apr 2026 15:59:50 +0000
CC: maddy@linux.ibm.com, mpe@ellerman.id.au, npiggin@gmail.com, chleroy@kernel.org, peterz@infradead.org, jpoimboe@kernel.org, jbaron@akamai.com, aliceryhl@google.com, rostedt@goodmis.org, ardb@kernel.org, sumit.semwal@linaro.org, ojeda@kernel.org, boqun@kernel.org, gary@garyguo.net, bjorn3_gh@protonmail.com, lossin@kernel.org, a.hindborg@kernel.org, tmgross@umich.edu, dakr@kernel.org, nathan@kernel.org, nick.desaulniers+lkml@gmail.com, morbo@google.com, justinstitt@google.com, tamird@kernel.org, arnd@arndb.de, nsc@kernel.org, simona.vetter@ffwll.ch, linuxppc-dev@lists.ozlabs.org, linux-kernel@vger.kernel.org, linux-media@vger.kernel.org, dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org, rust-for-linux@vger.kernel.org, llvm@lists.linux.dev
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH V13 2/7] dma-resv: Fix undefined symbol when CONFIG_DMA_SHARED_BUFFER is disabled
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/EGF37HOFCDZZ2VH5NZBV4XODSVJ2OUMF/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
X-Rspamd-Queue-Id: DFA05475CCC
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [3.09 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	R_DKIM_REJECT(1.00)[gmail.com:s=20251104];
	DATE_IN_PAST(1.00)[79];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+mx:c];
	DMARC_POLICY_SOFTFAIL(0.10)[gmail.com : SPF not aligned (relaxed),none];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[lists,linaro-mm-sig=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	MIME_TRACE(0.00)[0:+];
	ARC_NA(0.00)[];
	FREEMAIL_FROM(0.00)[gmail.com];
	RCPT_COUNT_TWELVE(0.00)[35];
	FREEMAIL_CC(0.00)[linux.ibm.com,ellerman.id.au,gmail.com,kernel.org,infradead.org,akamai.com,google.com,goodmis.org,linaro.org,garyguo.net,protonmail.com,umich.edu,arndb.de,ffwll.ch,lists.ozlabs.org,vger.kernel.org,lists.freedesktop.org,lists.linaro.org,lists.linux.dev];
	DKIM_TRACE(0.00)[gmail.com:-];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-0.753];
	FROM_NEQ_ENVFROM(0.00)[mkchauras@gmail.com,linaro-mm-sig-bounces@lists.linaro.org];
	FROM_HAS_DN(0.00)[];
	TO_DN_SOME(0.00)[];
	TAGGED_RCPT(0.00)[linaro-mm-sig,lkml];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	REDIRECTOR_URL(0.00)[aka.ms];
	MISSING_XM_UA(0.00)[];
	ASN(0.00)[asn:14618, ipnet:44.192.0.0/11, country:US];
	DBL_BLOCKED_OPENRESOLVER(0.00)[lists.linaro.org:helo,lists.linaro.org:rdns,aka.ms:url,linaro.org:email]

On Fri, Apr 24, 2026 at 10:25:25AM +0200, Christian K=F6nig wrote:
> On 4/24/26 10:06, Mukesh Kumar Chaurasiya wrote:
> > [Sie erhalten nicht h=E4ufig E-Mails von mkchauras@gmail.com. Weitere I=
nformationen, warum dies wichtig ist, finden Sie unter https://aka.ms/Learn=
AboutSenderIdentification ]
> >=20
> > On Fri, Apr 24, 2026 at 09:56:16AM +0200, Christian K=F6nig wrote:
> >> On 4/24/26 07:47, Mukesh Kumar Chaurasiya (IBM) wrote:
> >>> When building with LLVM=3D1 for architectures like powerpc where
> >>> CONFIG_DMA_SHARED_BUFFER is not enabled, the build fails with:
> >>>
> >>>   ld.lld: error: undefined symbol: dma_resv_reset_max_fences
> >>>   >>> referenced by helpers.c
> >>>   >>>               rust/helpers/helpers.o:(rust_helper_dma_resv_unlo=
ck)
> >>>
> >>> The issue occurs because:
> >>> 1. CONFIG_DEBUG_MUTEXES=3Dy is enabled
> >>> 2. CONFIG_DMA_SHARED_BUFFER is not enabled
> >>> 3. dma_resv_reset_max_fences() is declared in the header when
> >>>    CONFIG_DEBUG_MUTEXES is set
> >>> 4. But the function is only compiled in drivers/dma-buf/dma-resv.c,
> >>>    which is only built when CONFIG_DMA_SHARED_BUFFER is enabled
> >>> 5. Rust helpers call dma_resv_unlock() which calls
> >>>    dma_resv_reset_max_fences(), causing an undefined symbol
> >>>
> >>> Fix this by making the function declaration conditional on both
> >>> CONFIG_DEBUG_MUTEXES and CONFIG_DMA_SHARED_BUFFER. When either is
> >>> disabled, use a static inline stub instead.
> >>
> >> Well we are clearly missing something here, but of hand that doesn't l=
ooks like the right fix.
> >>
> >> When CONFIG_DMA_SHARED_BUFFER isn't enabled then the whole dma-resv.h =
header can't be used at all.
> >>
> >> So you also can't call dma_resv_unlock() from the Rust helpers. Which =
means that we need to make the Rust helpers somehow depend on CONFIG_DMA_SH=
ARED_BUFFER.
> >>
> >> Alternative would be to provide dummies for the functions in dma-resv.=
h when CONFIG_DMA_SHARED_BUFFER isn't set, but that looks a bit like it jus=
t hides the issue.
> >>
> >> Regards,
> >> Christian.
> >>
> > What about something like this:
> >=20
> > diff --git a/rust/helpers/dma-resv.c b/rust/helpers/dma-resv.c
> > index 71914d8241e2..53c119f1b144 100644
> > --- a/rust/helpers/dma-resv.c
> > +++ b/rust/helpers/dma-resv.c
> > @@ -2,6 +2,7 @@
> >=20
> >  #include <linux/dma-resv.h>
> >=20
> > +#ifdef CONFIG_DMA_SHARED_BUFFER
> >  __rust_helper
> >  int rust_helper_dma_resv_lock(struct dma_resv *obj, struct ww_acquire_=
ctx *ctx)
> >  {
> > @@ -12,3 +13,4 @@ __rust_helper void rust_helper_dma_resv_unlock(struct=
 dma_resv *obj)
> >  {
> >         dma_resv_unlock(obj);
> >  }
> > +#endif
> >=20
> > This seems to fix the issue and makes sense, whoever wants to use the
> > dma shared buffer will anyway enable the config
>=20
> Yeah that directions makes sense.
>=20
> I would maybe go a step further and don't even compile rust/helpers/dma-r=
esv.c when CONFIG_DMA_SHARED_BUFFER isn't set.
>=20
This makes sense.
> But if that is not possible for some reason then this solution is perfect=
ly fine with me as well.
>=20
> The general goal is to make the error messages when you haven't set CONFI=
G_DMA_SHARED_BUFFER and still try to use the DMA-buf functions easy to unde=
rstand and not something cryptic.
>=20
> Thanks,
> Christian.
>

What about this one?

diff --git a/rust/helpers/helpers.c b/rust/helpers/helpers.c
index 625921e27dfb..09ee5cac600d 100644
--- a/rust/helpers/helpers.c
+++ b/rust/helpers/helpers.c
@@ -57,7 +57,9 @@
 #include "cred.c"
 #include "device.c"
 #include "dma.c"
+#ifdef CONFIG_DMA_SHARED_BUFFER
 #include "dma-resv.c"
+#endif
 #include "drm.c"
 #include "err.c"
 #include "irq.c"

Regards,
Mukesh

> >=20
> > Regards,
> > Mukesh
> >>>
> >>> Fixes: 0c6b522abc2a ("dma-buf: cleanup dma-resv shared fence debuggin=
g a bit v2")
> >>> Signed-off-by: Mukesh Kumar Chaurasiya (IBM) <mkchauras@gmail.com>
> >>> ---
> >>>  include/linux/dma-resv.h | 2 +-
> >>>  1 file changed, 1 insertion(+), 1 deletion(-)
> >>>
> >>> diff --git a/include/linux/dma-resv.h b/include/linux/dma-resv.h
> >>> index c5ab6fd9ebe8..23c8db0b5214 100644
> >>> --- a/include/linux/dma-resv.h
> >>> +++ b/include/linux/dma-resv.h
> >>> @@ -311,7 +311,7 @@ static inline bool dma_resv_iter_is_restarted(str=
uct dma_resv_iter *cursor)
> >>>  #define dma_resv_held(obj) lockdep_is_held(&(obj)->lock.base)
> >>>  #define dma_resv_assert_held(obj) lockdep_assert_held(&(obj)->lock.b=
ase)
> >>>
> >>> -#ifdef CONFIG_DEBUG_MUTEXES
> >>> +#if IS_ENABLED(CONFIG_DEBUG_MUTEXES) && IS_ENABLED(CONFIG_DMA_SHARED=
_BUFFER)
> >>>  void dma_resv_reset_max_fences(struct dma_resv *obj);
> >>>  #else
> >>>  static inline void dma_resv_reset_max_fences(struct dma_resv *obj) {}
> >>> --
> >>> 2.53.0
> >>>
> >>
>=20
_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org
