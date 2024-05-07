Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 5C9B28BE73E
	for <lists+linaro-mm-sig@lfdr.de>; Tue,  7 May 2024 17:19:41 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 5D7F2441A5
	for <lists+linaro-mm-sig@lfdr.de>; Tue,  7 May 2024 15:19:40 +0000 (UTC)
Received: from mail-yb1-f174.google.com (mail-yb1-f174.google.com [209.85.219.174])
	by lists.linaro.org (Postfix) with ESMTPS id C44F13EC0D
	for <linaro-mm-sig@lists.linaro.org>; Tue,  7 May 2024 15:19:30 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=linaro.org header.s=google header.b=RCurMGT7;
	spf=pass (lists.linaro.org: domain of dmitry.baryshkov@linaro.org designates 209.85.219.174 as permitted sender) smtp.mailfrom=dmitry.baryshkov@linaro.org;
	dmarc=pass (policy=none) header.from=linaro.org
Received: by mail-yb1-f174.google.com with SMTP id 3f1490d57ef6-dc236729a2bso3312709276.0
        for <linaro-mm-sig@lists.linaro.org>; Tue, 07 May 2024 08:19:30 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1715095170; x=1715699970; darn=lists.linaro.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=3ysPCrT6aDiInuFk99HtusnAXRwhdESoITC61IbLRas=;
        b=RCurMGT7RC2IwZ0hxBP25jt7MCYQUNW5UP8wYZEB+R4OH3EaZSUWmiuz5s4PWcdv2w
         mLNhQmxwDq+5lP7Tbt4OtAam9kBEOY4Ev5h8QCd7cq1b59YcEkiMrQAfFaZO7P/y+Vlk
         azu+PJhSbAcdf3L8VePigkNz1qNB8b702Hptsk74GAJVqzklAA6InHLCxX5L2RHBLnQq
         Kgj8Z04360Fn4eeC6uvrhV6swv/hCQbaaXNebkkn2P7jjm2drSy5HipCl0T8P+vJctcY
         yx7zLKXBoy0u7V74QH4ob5hinoS25pfT+rP0+7XQ930P6MXnTtCDEoujrT6TkwNyQtTB
         OgIw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1715095170; x=1715699970;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=3ysPCrT6aDiInuFk99HtusnAXRwhdESoITC61IbLRas=;
        b=Da4O0FTJ64mcyo1dTtDM7O5mXBttfGFQYa6pPIlwtVrlvaEno5Y29zrf3J3erZ94GX
         dhD4Mply1KFzAZ0Xat7ojtXeawn5wWmF+496BFX9rZj29chE/gCXO941kIJGMb0Ttstc
         md6cGUhb/Fe5jpwhJJ5J+u5g5/R21LkNQW1RUINNzjpPaRW6XS7HbvY/Xmdh1aiB9qXp
         vxiK7ELvJB1lF3kpKkf6pEcW6uNtcTC1jPDGjoSH2eIpEL7XEqRfESdSvAJGsJaAYNjG
         8yHAyMqC9o4IUPQZIlHC0Ny8L6bSpHFoQRTpeAskEsX9u4AKhCWld9xvbNoHmOmTGi5Y
         o6dA==
X-Forwarded-Encrypted: i=1; AJvYcCXjoXY+42A7cNI38ZoWsDZMQvz9SlNcp0S93fkfIABf8H/9HUfeZJ2ORirswrcisSpN7A6ikZvDUx1PbdoDxd4Asbv1PgbLtmcraYW4gRw=
X-Gm-Message-State: AOJu0YyKvcN4t00xwaSAHPtKCxmLK7zEwPA07GN2W2VlJZXDAycHqgrz
	CnuHuWYW35jHWKZ13p/9D55DNkIkD2Z+pGBD4N1k5+jRCcldjKHQkEatqkZB8nJbs/0xmvbmf5z
	Ryl0t8+CVcpBe80KjCEr/QOA4EgM0EDAXGP6TmMXS
X-Google-Smtp-Source: AGHT+IEML+Kw1JVUOv0nN6ekdfHok6Y4DPu4GGX6sExCN5x0nEZTwSwW2OQ/aCjdgj8HeWcGREcPXHHI22erdbPufQA=
X-Received: by 2002:a05:6902:2187:b0:de6:327:fa2 with SMTP id
 dl7-20020a056902218700b00de603270fa2mr15626519ybb.8.1715095170220; Tue, 07
 May 2024 08:19:30 -0700 (PDT)
MIME-Version: 1.0
References: <bb372250-e8b8-4458-bc99-dd8365b06991@redhat.com>
 <ojduxo54lpcbfg2wfuhqhy7k3phncamtklh65z7gvttcwztmhk@zkifewcy4ovi>
 <3c0c7e7e-1530-411b-b7a4-9f13e0ff1f9e@redhat.com> <e7ilwp3vc32xze3iu2ejgqlgz44codsktnvyiufjhuf2zxcnnf@tnwzgzoxvbg2>
 <d2a512b2-e6b1-4675-b406-478074bbbe95@linaro.org>
In-Reply-To: <d2a512b2-e6b1-4675-b406-478074bbbe95@linaro.org>
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Date: Tue, 7 May 2024 18:19:18 +0300
Message-ID: <CAA8EJpr4bJUQt2T63_FZ=KHGEm4vixfpk3pMV9naABEONJfMmQ@mail.gmail.com>
To: "Bryan O'Donoghue" <bryan.odonoghue@linaro.org>
X-Rspamd-Server: lists.linaro.org
X-Rspamd-Queue-Id: C44F13EC0D
X-Spamd-Bar: -
X-Spamd-Result: default: False [-1.50 / 15.00];
	BAYES_HAM(-3.00)[99.99%];
	SUSPICIOUS_RECIPS(1.50)[];
	SUBJECT_ENDS_QUESTION(1.00)[];
	DMARC_POLICY_ALLOW(-0.50)[linaro.org,none];
	R_DKIM_ALLOW(-0.20)[linaro.org:s=google];
	R_SPF_ALLOW(-0.20)[+ip4:209.85.128.0/17:c];
	MIME_GOOD(-0.10)[text/plain];
	FREEMAIL_CC(0.00)[redhat.com,linaro.org,collabora.com,arm.com,google.com,amd.com,0pointer.de,canonical.com,vger.kernel.org,lists.freedesktop.org,lists.linaro.org,gmail.com];
	FROM_HAS_DN(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	ARC_NA(0.00)[];
	DKIM_TRACE(0.00)[linaro.org:+];
	MIME_TRACE(0.00)[0:+];
	TO_DN_EQ_ADDR_SOME(0.00)[];
	MISSING_XM_UA(0.00)[];
	RCVD_COUNT_ONE(0.00)[1];
	ASN(0.00)[asn:15169, ipnet:209.85.128.0/17, country:US];
	DNSWL_BLOCKED(0.00)[209.85.219.174:from];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	FROM_EQ_ENVFROM(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[18];
	PREVIOUSLY_DELIVERED(0.00)[linaro-mm-sig@lists.linaro.org];
	DWL_DNSWL_BLOCKED(0.00)[linaro.org:dkim];
	NEURAL_HAM(-0.00)[-1.000];
	RWL_MAILSPIKE_POSSIBLE(0.00)[209.85.219.174:from];
	TAGGED_RCPT(0.00)[];
	TO_DN_SOME(0.00)[]
X-Rspamd-Action: no action
Message-ID-Hash: LLSXZFUWQ3ZSBLVZPFU47ENEP43GJTLH
X-Message-ID-Hash: LLSXZFUWQ3ZSBLVZPFU47ENEP43GJTLH
X-MailFrom: dmitry.baryshkov@linaro.org
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: Hans de Goede <hdegoede@redhat.com>, Sumit Semwal <sumit.semwal@linaro.org>, Benjamin Gaignard <benjamin.gaignard@collabora.com>, Brian Starkey <Brian.Starkey@arm.com>, John Stultz <jstultz@google.com>, "T.J. Mercier" <tjmercier@google.com>, =?UTF-8?Q?Christian_K=C3=B6nig?= <christian.koenig@amd.com>, Lennart Poettering <mzxreary@0pointer.de>, Robert Mader <robert.mader@collabora.com>, Sebastien Bacher <sebastien.bacher@canonical.com>, Linux Media Mailing List <linux-media@vger.kernel.org>, "dri-devel@lists.freedesktop.org" <dri-devel@lists.freedesktop.org>, linaro-mm-sig@lists.linaro.org, Linux Kernel Mailing List <linux-kernel@vger.kernel.org>, Milan Zamazal <mzamazal@redhat.com>, Maxime Ripard <mripard@redhat.com>, Andrey Konovalov <andrey.konovalov.ynk@gmail.com>
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: Safety of opening up /dev/dma_heap/* to physically present users (udev uaccess tag) ?
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/LLSXZFUWQ3ZSBLVZPFU47ENEP43GJTLH/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

On Tue, 7 May 2024 at 18:15, Bryan O'Donoghue
<bryan.odonoghue@linaro.org> wrote:
>
> On 07/05/2024 16:09, Dmitry Baryshkov wrote:
> > Ah, I see. Then why do you require the DMA-ble buffer at all? If you are
> > providing data to VPU or DRM, then you should be able to get the buffer
> > from the data-consuming device.
>
> Because we don't necessarily know what the consuming device is, if any.
>
> Could be VPU, could be Zoom/Hangouts via pipewire, could for argument
> sake be GPU or DSP.
>
> Also if we introduce a dependency on another device to allocate the
> output buffers - say always taking the output buffer from the GPU, then
> we've added another dependency which is more difficult to guarantee
> across different arches.

Yes. And it should be expected. It's a consumer who knows the
restrictions on the buffer. As I wrote, Zoom/Hangouts should not
require a DMA buffer at all. Applications should be able to allocate
the buffer out of the generic memory. GPUs might also have different
requirements. Consider GPUs with VRAM. It might be beneficial to
allocate a buffer out of VRAM rather than generic DMA mem.

-- 
With best wishes
Dmitry
_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org
