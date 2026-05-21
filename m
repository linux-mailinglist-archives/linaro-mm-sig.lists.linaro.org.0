Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 6JbAEPEnD2rGHAYAu9opvQ
	(envelope-from <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>)
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 21 May 2026 17:42:41 +0200
X-Original-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [44.210.186.118])
	by mail.lfdr.de (Postfix) with ESMTPS id CE1615A88B7
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 21 May 2026 17:42:40 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id D013840984
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 21 May 2026 15:42:39 +0000 (UTC)
Received: from mail-ej1-f50.google.com (mail-ej1-f50.google.com [209.85.218.50])
	by lists.linaro.org (Postfix) with ESMTPS id DD5F2406F3
	for <linaro-mm-sig@lists.linaro.org>; Thu, 21 May 2026 15:42:28 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=linaro.org header.s=google header.b=XGB29Mb5;
	arc=pass ("google.com:s=arc-20240605:i=1");
	spf=pass (lists.linaro.org: domain of sumit.semwal@linaro.org designates 209.85.218.50 as permitted sender) smtp.mailfrom=sumit.semwal@linaro.org;
	dmarc=pass (policy=none) header.from=linaro.org
Received: by mail-ej1-f50.google.com with SMTP id a640c23a62f3a-bd4d7f4fa02so1093369866b.3
        for <linaro-mm-sig@lists.linaro.org>; Thu, 21 May 2026 08:42:28 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1779378148; cv=none;
        d=google.com; s=arc-20240605;
        b=StLIOL4HYl5RjUh2rVORPwNp7v2KJgzPgVdGxR9cCAlA/yOsgoEG/IrJfSGOTbP8lc
         IurrtWC2tqIKzO6acb/FoI+eDc3R0dy0UGU9HgTuThpjz8l/wbnKWgVDuSzSuWwQpCQj
         4wrjxXo4N47KI3puiAcdMA9jkBWDrcr7QSavEB3gFHcT00mGWqCAJCVvK/ozyoOcZ0R/
         JgOvbOK4I3CGmnIbUFI6N6+r94QdNBnUqMkFGLn1PHRk9RpRU/NdL7IDpTAKFhZslOh/
         E3aMbN0VMjpeTNMqic5TFkqlR5XJRntu844aeEqofL5rZXTn7xnWVXM9WeKVLwQUQ9Zj
         GH9Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=E2fslM12sgO4F+qxOdbD1nIBWEAvdOZMDwhieZ6kPT8=;
        fh=jOPPTndC6hlQ2QI+ksyieli7xQC7TsMZYi5CzFfytVQ=;
        b=KUSYJPWwXfkaMHAAmkrRYb9D4uCQEyJfB0jLWl97GfZtDy+6pvQZKJ553ZGkQ/8Q7l
         /jPdSZc2hy4dQXZ3/uxCwwG4QhCJjbNp80fw4qjbmye24W/RpB16VWj5eKXHNjuqlLwr
         yvZBtAo73vVtOxC/SbbkeclRxBT0AnGhI0CuLesp7erAgfECFN8CtDF0xbZ3D2SOV+6V
         Nh+CwDYUPgfdb00L62SY0pJuQeIEHa9lfti1dBOQs/8aOLinwFpqA+227CcThw2eT3qG
         MXtNGdrIl2uWHCHj7qnj6eUQkfqDpf4Q7w5aABIQd5V03FWCD4bHRhan7bqovUbz7+K0
         4xWw==;
        darn=lists.linaro.org
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1779378148; x=1779982948; darn=lists.linaro.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=E2fslM12sgO4F+qxOdbD1nIBWEAvdOZMDwhieZ6kPT8=;
        b=XGB29Mb52Yduz2KWvQ7OIMyzI3UsWT1M7mpbADC9JBzwWcpSQ7A2LZkzGL/4LRwFmC
         x8Lpc3X8+Di0BI7fbsrxDdAyU11Q9kQsLEoNm9FdnfhANxcADO/7O+f+5LBLPcpMf76/
         F7DX73rE2ijteVGjG8BlVbhrQiURJSwAHMd1cLP/wK5krAEgb218Y6ZNwfvnvC6wlyjE
         64NVebpVfYVU9clfAi58j/aLnN09w33mUFHygnWnkqsyArQ1GCI9/wdtYhdLzP1lzGlY
         BKpP2MybTbi5+s6S8nVeA8lU4K1S3epqxnbu7gXfpQIzQrI54kWYELjg0Qxc/v3x+80Q
         y3NA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1779378148; x=1779982948;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=E2fslM12sgO4F+qxOdbD1nIBWEAvdOZMDwhieZ6kPT8=;
        b=fScl3vMsH1zMUrpOBDJuE9PKEF2oIrdiA54w481yRLwLqVLYXc9HfCUOyxKUHIaX1J
         pLApjLukd12U6hrmO4bmAvIPGf1FerT4NOJNE6oSfbPK/LMhh417/EK/Rvrfa6ZnPs4f
         fykhyf+itGbPFoeFPCbZNyPRY3YU3DuvLCOil54KrfCgbR3cZ6rJ9Yf8ECykZpEjxyjL
         ISX/Qu+9QgGRKY0HEV87/fYqvGcZRV4fFTHHbhGXPK74sudGunBwWQcMxNj09suzgWJd
         AXwYiCSDHQXQHj8lwdTpWGHdEojZyi2NrS5elgrdnBdPmPvaWejvrnIOJKoETaffxfqP
         mzxw==
X-Forwarded-Encrypted: i=1; AFNElJ/ariLKYhrO7TL3N2iM4kuhXyZM8qZF4dwpJ3UNvpNQKv3C1jeviBXtWRNIsGu2FUUg/2HmBG70YeaJORBB@lists.linaro.org
X-Gm-Message-State: AOJu0YxmZ8yZnm9fn5/nEiG7JeQISYzJwxS1oOGrLqCUFFuRGy9xRQo9
	BpvLwAfMY4CwptDUt0y+9chospWOCkhjtq/aIzvxMX5gteoP6dkfgmI6ob6LJido/HQVlhEsP92
	NHjHENeP+F/CJ43tu/140Ll+IK5Taw/cP68RnWGq6rjuO
X-Gm-Gg: Acq92OEID0Lm2OjQHSgOHq6vn9uO9TCG/HT11oR+JHW3NoJmsVhzKRv6IjsGtXuB5h7
	wZpOtChyP/ZhyOy4vg/HgfGvO1bOZTUQjIotxQL8R6sT3xv82qAh0il8ISq8Q8YoGGwF6LHdkY1
	tvX9whrE436mbV3Z3r+dwKPj4zcaoVK5l63BrN+hacsDIf/K0QzPuKwE6tIWrYLa5arczqfsxCs
	2MirttZEeHSfNEh8kIaC1woUDw2LxPpga0dpXRJ70gpVzayfpou8n1AIZVJB0XyjZdKsZxbrbW7
	0K9XD4vfPi0AIqYH2Nb3vL4RJ6M1SSq4PxE9Q/VrL1OxovcGOA==
X-Received: by 2002:a17:907:c70b:b0:bd2:616c:56a3 with SMTP id
 a640c23a62f3a-bdc12d97c62mr249495866b.10.1779378147756; Thu, 21 May 2026
 08:42:27 -0700 (PDT)
MIME-Version: 1.0
References: <20260427-dma-buf-heaps-as-modules-v5-0-b6f5678feefc@kernel.org> <9fe0e3bc-1f04-48eb-ab79-2a7dc421a5a7@ti.com>
In-Reply-To: <9fe0e3bc-1f04-48eb-ab79-2a7dc421a5a7@ti.com>
From: Sumit Semwal <sumit.semwal@linaro.org>
Date: Thu, 21 May 2026 21:12:16 +0530
X-Gm-Features: AVHnY4KdwJRloPYYPr3vT_nqSzNJHilDu5uFjOj7H9mPzggIRmV41fNmlJ_I7Kc
Message-ID: <CAO_48GFgBku=s_oGTudh9MQeiCtE0aov0K0UE6zavYDgvNrATg@mail.gmail.com>
To: Andrew Davis <afd@ti.com>
X-Spamd-Bar: -----
Message-ID-Hash: 4AFBVA7QM4W737CVD4J5B7CCJEY5GAA2
X-Message-ID-Hash: 4AFBVA7QM4W737CVD4J5B7CCJEY5GAA2
X-MailFrom: sumit.semwal@linaro.org
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: Maxime Ripard <mripard@kernel.org>, Benjamin Gaignard <benjamin.gaignard@collabora.com>, Brian Starkey <Brian.Starkey@arm.com>, John Stultz <jstultz@google.com>, "T.J. Mercier" <tjmercier@google.com>, =?UTF-8?Q?Christian_K=C3=B6nig?= <christian.koenig@amd.com>, linux-media@vger.kernel.org, dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org, linux-kernel@vger.kernel.org
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH v5 0/4] dma-buf: heaps: Turn heaps into modules
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/4AFBVA7QM4W737CVD4J5B7CCJEY5GAA2/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
X-Spamd-Result: default: False [-0.01 / 15.00];
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:google.com:reject}];
	DMARC_POLICY_ALLOW_WITH_FAILURES(-0.50)[];
	R_SPF_ALLOW(-0.20)[+mx];
	MAILLIST(-0.20)[mailman];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[lists,linaro-mm-sig=lfdr.de];
	FROM_HAS_DN(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_THREE(0.00)[3];
	FORGED_SENDER_MAILLIST(0.00)[];
	NEURAL_SPAM(0.00)[0.965];
	MIME_TRACE(0.00)[0:+];
	R_DKIM_REJECT(0.00)[linaro.org:s=google];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DKIM_TRACE(0.00)[linaro.org:-];
	RCPT_COUNT_SEVEN(0.00)[11];
	FROM_NEQ_ENVFROM(0.00)[sumit.semwal@linaro.org,linaro-mm-sig-bounces@lists.linaro.org];
	DMARC_POLICY_ALLOW(0.00)[linaro.org,none];
	TAGGED_RCPT(0.00)[linaro-mm-sig];
	MISSING_XM_UA(0.00)[];
	ASN(0.00)[asn:14618, ipnet:44.192.0.0/11, country:US];
	TO_DN_SOME(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[mail.gmail.com:mid,ti.com:email,lists.linaro.org:rdns,lists.linaro.org:helo,linaro.org:email]
X-Rspamd-Queue-Id: CE1615A88B7
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

Hi Maxime,

On Thu, 30 Apr 2026 at 21:43, Andrew Davis <afd@ti.com> wrote:
>
> On 4/27/26 5:04 AM, Maxime Ripard wrote:
> > Hi,
> >
> > The recent introduction of heaps in the optee driver [1] made possible
> > the creation of heaps as modules.
> >
> > It's generally a good idea if possible, including for the already
> > existing system and CMA heaps.
> >
> > The system one is pretty trivial, the CMA is now easy too with the
> > reworks we got in 7.1-r1.
> >
> > Let me know what you think,
> > Maxime
Thanks for the series; merged to drm-misc-next.

Best,
Sumit.
> >
> > 1: https://lore.kernel.org/dri-devel/20250911135007.1275833-4-jens.wiklander@linaro.org/
> >
> > Signed-off-by: Maxime Ripard <mripard@kernel.org>
> > ---
> > Changes in v5:
> > - Rebase on 7.1-rc1
> > - Add a patch to enable the heaps in arm64 defconfig
>
> Could you do this for ARM (multi_v7_defconfig) also? Actually seems
> loongarch has Heaps enabled by default and I've seen it default enabled
> on some x86 distros too. Maybe someday having the base Heaps + System Heap
> set to "default y/m" as they should always exist for any arch would be an
> idea. Anyway for this series all LGTM,
>
> Acked-by: Andrew Davis <afd@ti.com>
>
> > - Link to v4: https://lore.kernel.org/r/20260331-dma-buf-heaps-as-modules-v4-0-e18fda504419@kernel.org
> >
> > Changes in v4:
> > - Fix compilation failure
> > - Rework to take into account OF_RESERVED_MEM
> > - Fix regression making the default CMA area disappear if not created
> >    through the DT
> > - Added some documentation and comments
> > - Link to v3: https://lore.kernel.org/r/20260303-dma-buf-heaps-as-modules-v3-0-24344812c707@kernel.org
> >
> > Changes in v3:
> > - Squashed cma_get_name and cma_alloc/release patches
> > - Fixed typo in Export dev_get_cma_area commit title
> > - Fixed compilation failure with DMA_CMA but not OF_RESERVED_MEM
> > - Link to v2: https://lore.kernel.org/r/20260227-dma-buf-heaps-as-modules-v2-0-454aee7e06cc@kernel.org
> >
> > Changes in v2:
> > - Collect tags
> > - Don't export dma_contiguous_default_area anymore, but export
> >    dev_get_cma_area instead
> > - Mentioned that heap modules can't be removed
> > - Link to v1: https://lore.kernel.org/r/20260225-dma-buf-heaps-as-modules-v1-0-2109225a090d@kernel.org
> >
> > ---
> > Maxime Ripard (4):
> >        dma-buf: heaps: Export mem_accounting parameter
> >        dma-buf: heaps: cma: Turn the heap into a module
> >        dma-buf: heaps: system: Turn the heap into a module
> >        arm64: defconfig: Enable dma-buf heaps
> >
> >   arch/arm64/configs/defconfig        | 3 +++
> >   drivers/dma-buf/dma-heap.c          | 1 +
> >   drivers/dma-buf/heaps/Kconfig       | 4 ++--
> >   drivers/dma-buf/heaps/cma_heap.c    | 3 +++
> >   drivers/dma-buf/heaps/system_heap.c | 5 +++++
> >   5 files changed, 14 insertions(+), 2 deletions(-)
> > ---
> > base-commit: 5e9b7d093f3f77cb0af4409559e3d139babfb443
> > change-id: 20260225-dma-buf-heaps-as-modules-1034b3ec9f2a
> >
> > Best regards,
>
_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org
