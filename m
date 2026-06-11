Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id fhatOSbKKmo1xAMAu9opvQ
	(envelope-from <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>)
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 11 Jun 2026 16:45:58 +0200
X-Original-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [44.210.186.118])
	by mail.lfdr.de (Postfix) with ESMTPS id 7986B672D03
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 11 Jun 2026 16:45:58 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=fail ("body hash did not verify") header.d=linaro.org header.s=google header.b=dF5THKuW;
	spf=pass (mail.lfdr.de: domain of "linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org" designates 44.210.186.118 as permitted sender) smtp.mailfrom="linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org";
	dmarc=pass (policy=none) header.from=linaro.org;
	arc=reject ("signature check failed: fail, {[1] = sig:google.com:reject}")
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 932943F7B8
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 11 Jun 2026 14:45:57 +0000 (UTC)
Received: from mail-ej1-f41.google.com (mail-ej1-f41.google.com [209.85.218.41])
	by lists.linaro.org (Postfix) with ESMTPS id 87EE13F7B8
	for <linaro-mm-sig@lists.linaro.org>; Thu, 11 Jun 2026 14:45:45 +0000 (UTC)
Received: by mail-ej1-f41.google.com with SMTP id a640c23a62f3a-beb1bee8c16so127106966b.0
        for <linaro-mm-sig@lists.linaro.org>; Thu, 11 Jun 2026 07:45:45 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1781189144; cv=none;
        d=google.com; s=arc-20240605;
        b=EazFu1BD+TBDE3wgtuBrS6/nnt6LTIkADak77oUT+kjR4hBw/LHw19AZrgFjZZvLVj
         1eO+foNIt2ulJ2AgZ9PWIkHq7sV4jkQlt4vkM4ow3rqfPSLwUDamTdrwvwAV8cT+IwdT
         YwoLgQVhD7un1T1yLpNp7ZpQ8gU1q1x2jGfOhndFwC660yswL6s5o5mDIT1UJNd1Gld6
         Ov3d6BgVS4qf3ovOr757KdRpJbB4kSezYDTalp5JbBLeuWzGKBFFaMJMwmU+7ISNbZUs
         SYDV3D/Igk4ufSQkESZVdzT4x6gzYTyJUrIb5gWk9ABgxDm62g8JH18neGTIbFzzj4qW
         swog==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=d1Q6VrmJUx+o7NgXdFZxExU41NgoiFIjQElz0CF6684=;
        fh=VPOnqIKhoRIe3SnoQVkRZFFKWYijVqd4g7M9GbOv/fE=;
        b=lCjpT9KFnk+QI9y2LvHyJ7dG3tMj22hW2mwaxiZ8cX6yI6phDlgpthaMJdAtc5uBCU
         fn9PTaAV5md0sG2VIyAB/xlxnp2Wmwp53VVpjgkV/3dx9sHtFIYxAHB0bEUvALWBkGPz
         pK7RNbJu4zD02mpOtxxVDJMGpDkM4YbQTrZmRiJ+0p29+cMtrcom0J0MEVjevNZM5XbN
         4ezXVJotRZgpDXMW9K50AH3N1ZlzUfJ9QIIXKx0t6iJgwOyGkMerg7KIR4GAtOPdH6Lt
         bccOJbcbDedTU6QV0ee0fi6KkXamfvQX+TcuC7UrUryEJ0j/A6ZND8lS3xMHZU3QtALp
         q5CQ==;
        darn=lists.linaro.org
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1781189144; x=1781793944; darn=lists.linaro.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=d1Q6VrmJUx+o7NgXdFZxExU41NgoiFIjQElz0CF6684=;
        b=dF5THKuWFGwo/nIi9QXyy8qhx/hVZf5mkfJOWqmzYynTg3enKdk1CpbQfOTsJdmET5
         QMCQ/7loXAQTSCQvKfvKQSUvgFiXzOF/uPMhLb2ZNDQup9JPg3ql5F1r1sEKZIIs/HK1
         7KiXgKkAy640s+dDq1NBQ3857YmnhrC5Ymgt1KcicRmDYDE8cujVah2fdE9jQsiA/Q1u
         LABiAjOCK/FdGUb8mmzF8xb07NggFWnGbmUyNcUB4D4ondok2wCa2urM5+MwkN7O4xWS
         yYD+CqZW2gcREjqm9x62kYHmEqVg0s4GLKkGrm4orx4hB+uWLr2GyEddys1BmhfVhWZh
         EVdg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1781189144; x=1781793944;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=d1Q6VrmJUx+o7NgXdFZxExU41NgoiFIjQElz0CF6684=;
        b=Mmo5c0OsPHj6tn0gWpFavzKXfWKEYKOgDH9/ZyMc0D5BWw2rHpxyHUH3WkiSZH0GGu
         x7uNwdFXVPlkh3u1oCub0KyrthZmLc7q5W6T9uFTFoWdGtuqD4nrwhLrI+J0Rw+zqdBM
         Jonc2PXH0wetWGAkCdAF/ug0JPEAwaMCgjb1uqif6HHK6flex40/quZyu1Sv+sqlcAu7
         /pWKZfi4aLIFEBQCL/zJQDl7S+ufLuOTNKmuK6tkO7UiIAH1pMGJEsStiBNpo0vulN5j
         5PNPur4H8O+ZzgEuZlrAjf9X0p+Hj35dRTeKlnC1Fyd8UQyV/ca3MNsEbUEZihnxygkZ
         FGEg==
X-Forwarded-Encrypted: i=1; AFNElJ966u2nHrqxsf5IoaThjMKdg4q9R2nKJoQzYQcKqXHy+0BPSNTl5Spgp8yGwTFoeqZYLpIcyhk/dmyuiCbp@lists.linaro.org
X-Gm-Message-State: AOJu0YxAiOtYqYhiX3zuRlSI5IRHiMMdXqYhmGXx8vnOrj27hcYzCH9e
	9X/yBnoHpv0znZstDHEda/rsLZcEJZx6R8ukg8yKLLCTbgdS7SRiaEowfS5YgX10BuNLg+jvEQL
	FBcV7gYMBVkQ++5oH7hGYuVwWWyvnVFARbBUZr0En8a8X
X-Gm-Gg: Acq92OGK4ub0R7tk9qlcGK2qSQhaBktMhGNiLGuyPS6M7LEu06tBLxje0vpZatj9uOL
	kJ+sTxl+SX25/j4zrqGNhRPtI5d/m8hc03D7eRBk21GqYea7DvUHODH4plHEL8wst8gMMJiW3ss
	c/+Eiea4+jyy6F/bsaE+bFZFPaZNNIulU07Z4MYST26glQpKdv6UDyT/JWtrQmMGInCi3HF31oR
	2RLAr6CErhI5hbZAuKZycX+pVUQXHZemD72Hl2gUY6xG7E6/tL3pZGL9wlhN0XAeWPMUWLv4Ehs
	d2Ry2EW42XDVSrMM2yjsdoJgq4GERz41T4lqt4Fjg1UZfT2LlW3Joi8jYg==
X-Received: by 2002:a17:906:4fd1:b0:bee:a39b:ab7b with SMTP id
 a640c23a62f3a-bfc78ed6c4fmr158181366b.31.1781189144237; Thu, 11 Jun 2026
 07:45:44 -0700 (PDT)
MIME-Version: 1.0
References: <20260610142329.3836808-1-sumit.semwal@linaro.org> <aiqLJUrJ1dnKhsJn@FV6GYCPJ69>
In-Reply-To: <aiqLJUrJ1dnKhsJn@FV6GYCPJ69>
From: Sumit Semwal <sumit.semwal@linaro.org>
Date: Thu, 11 Jun 2026 20:15:32 +0530
X-Gm-Features: AVVi8CeA1CWJ3Tf7y-K-ZwxKVWTsZOKhQeXrR2LoMbjQ-zl-nOkzKd4bOJvB8OA
Message-ID: <CAO_48GHEfq7wpvM_4OXcMhgdASgH9J96nhEd0QFh2Rg8aPxpfw@mail.gmail.com>
To: Jiri Pirko <jiri@resnulli.us>
X-Spamd-Bar: -----
Message-ID-Hash: JW4LNOKKV3XPHFSDISDVSHBRUWTHE2GF
X-Message-ID-Hash: JW4LNOKKV3XPHFSDISDVSHBRUWTHE2GF
X-MailFrom: sumit.semwal@linaro.org
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: christian.koenig@amd.com, jgg@ziepe.ca, hch@infradead.org, maddy@linux.ibm.com, mpe@ellerman.id.au, npiggin@gmail.com, chleroy@kernel.org, linuxppc-dev@lists.ozlabs.org, lkp@intel.com, agordeev@linux.ibm.com, gerald.schaefer@linux.ibm.com, linux-s390@vger.kernel.org, djbw@kernel.org, thomas.lendacky@amd.com, x86@kernel.org, arnd@linaro.org, benjamin.gaignard@collabora.com, Brian.Starkey@arm.com, jstultz@google.com, tjmercier@google.com, mripard@kernel.org, afd@ti.com, linux-media@vger.kernel.org, dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org, linux-kernel@vger.kernel.org, Arnd Bergmann <arnd@arndb.de>
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH] dma-buf: move system_cc_shared heap under separate Kconfig
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/JW4LNOKKV3XPHFSDISDVSHBRUWTHE2GF/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-0.01 / 15.00];
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:google.com:reject}];
	DMARC_POLICY_ALLOW_WITH_FAILURES(-0.50)[];
	R_SPF_ALLOW(-0.20)[+mx:c];
	MAILLIST(-0.20)[mailman];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FORGED_RECIPIENTS(0.00)[m:jiri@resnulli.us,m:christian.koenig@amd.com,m:jgg@ziepe.ca,m:hch@infradead.org,m:maddy@linux.ibm.com,m:mpe@ellerman.id.au,m:npiggin@gmail.com,m:chleroy@kernel.org,m:linuxppc-dev@lists.ozlabs.org,m:lkp@intel.com,m:agordeev@linux.ibm.com,m:gerald.schaefer@linux.ibm.com,m:linux-s390@vger.kernel.org,m:djbw@kernel.org,m:thomas.lendacky@amd.com,m:x86@kernel.org,m:arnd@linaro.org,m:benjamin.gaignard@collabora.com,m:Brian.Starkey@arm.com,m:jstultz@google.com,m:tjmercier@google.com,m:mripard@kernel.org,m:afd@ti.com,m:linux-media@vger.kernel.org,m:dri-devel@lists.freedesktop.org,m:linaro-mm-sig@lists.linaro.org,m:linux-kernel@vger.kernel.org,m:arnd@arndb.de,s:lists@lfdr.de];
	FROM_HAS_DN(0.00)[];
	TAGGED_FROM(0.00)[lists,linaro-mm-sig=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_THREE(0.00)[3];
	FORGED_SENDER(0.00)[sumit.semwal@linaro.org,linaro-mm-sig-bounces@lists.linaro.org];
	FORWARDED(0.00)[lists@lfdr.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[28];
	MIME_TRACE(0.00)[0:+];
	R_DKIM_REJECT(0.00)[linaro.org:s=google];
	DKIM_TRACE(0.00)[linaro.org:-];
	DMARC_POLICY_ALLOW(0.00)[linaro.org,none];
	ALIAS_RESOLVED(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[sumit.semwal@linaro.org,linaro-mm-sig-bounces@lists.linaro.org];
	FREEMAIL_CC(0.00)[amd.com,ziepe.ca,infradead.org,linux.ibm.com,ellerman.id.au,gmail.com,kernel.org,lists.ozlabs.org,intel.com,vger.kernel.org,linaro.org,collabora.com,arm.com,google.com,ti.com,lists.freedesktop.org,lists.linaro.org,arndb.de];
	TAGGED_RCPT(0.00)[linaro-mm-sig];
	MISSING_XM_UA(0.00)[];
	ASN(0.00)[asn:14618, ipnet:44.192.0.0/11, country:US];
	TO_DN_SOME(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[mail.gmail.com:mid,arndb.de:email,linaro.org:from_mime,linaro.org:email,lists.linaro.org:helo,lists.linaro.org:rdns,lists.linaro.org:from_smtp,nvidia.com:email,resnulli.us:email]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 7986B672D03

Hi Jiri,

On Thu, 11 Jun 2026 at 15:51, Jiri Pirko <jiri@resnulli.us> wrote:
>
> Wed, Jun 10, 2026 at 04:23:29PM +0200, sumit.semwal@linaro.org wrote:
> >From: Arnd Bergmann <arnd@arndb.de>
> >
> >While system heap and system_cc_shared heap share a lot of code
> >and hence the same source file, their users have different needs.
> >
> >system heap users need it to be a loadable module, while
> >system_cc_shared heap users don't.
> >
> >Building as a loadable module breaks system_cc_shared heap on
> >powerpc and s390 due to un-exported set_memory_encrypted /
> >set_memory_decrypted functions.
> >
> >Fix these by reorganising code to put the system_cc_shared heap
> >under a new Kconfig symbol, which allows either building both
> >into the kernel, or leave encryption up to the consumers of the
> >system heap.
> >
> >Fixes: fd55edff8a0a ("dma-buf: heaps: system: Turn the heap into a module")
> >Signed-off-by: Arnd Bergmann <arnd@arndb.de>
> >Signed-off-by: Sumit Semwal <sumit.semwal@linaro.org>
> >---
> > drivers/dma-buf/heaps/Kconfig       |  8 ++++++++
> > drivers/dma-buf/heaps/system_heap.c | 16 ++++++++++------
> > 2 files changed, 18 insertions(+), 6 deletions(-)
> >
> >diff --git a/drivers/dma-buf/heaps/Kconfig b/drivers/dma-buf/heaps/Kconfig
> >index e273fb18feca..a39decdcf067 100644
> >--- a/drivers/dma-buf/heaps/Kconfig
> >+++ b/drivers/dma-buf/heaps/Kconfig
> >@@ -5,6 +5,14 @@ config DMABUF_HEAPS_SYSTEM
> >         Choose this option to enable the system dmabuf heap. The system heap
> >         is backed by pages from the buddy allocator. If in doubt, say Y.
> >
> >+config DMABUF_HEAPS_CC_SYSTEM
>
> Nit: "DMABUF_HEAPS_SYSTEM_CC_SHARED" to be consistent with the heap
> name?
>
> With or without it:
> Reviewed-by: Jiri Pirko <jiri@nvidia.com>
>
Thanks for catching this; I'll fix this while pushing to
drm-misc-next-fixes in a few minutes.

Best,
Sumit.
_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org
