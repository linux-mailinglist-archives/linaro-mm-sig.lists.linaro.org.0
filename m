Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 9C27B483747
	for <lists+linaro-mm-sig@lfdr.de>; Mon,  3 Jan 2022 19:58:01 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 079E63ED84
	for <lists+linaro-mm-sig@lfdr.de>; Mon,  3 Jan 2022 18:58:00 +0000 (UTC)
Received: from mail-lj1-f176.google.com (mail-lj1-f176.google.com [209.85.208.176])
	by lists.linaro.org (Postfix) with ESMTPS id CB2AD3ED72
	for <linaro-mm-sig@lists.linaro.org>; Mon,  3 Jan 2022 18:57:43 +0000 (UTC)
Received: by mail-lj1-f176.google.com with SMTP id t2so5440744ljo.6
        for <linaro-mm-sig@lists.linaro.org>; Mon, 03 Jan 2022 10:57:43 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=MMhWstZ09q6Cszqpd54WHd2qjsYduZF9Gp6qbEFoKEg=;
        b=CYPX06mYYQ2+cOhSoLGgV/rWQWqKCDXJJ9Iw+5ssEOfXIYPGzUj7v+4rgZWAs1vh9q
         5dxy3dqwPKsdPh8M3wwJtoHaqrBWQUbMh0A78AgqwE65oMtsmJWN3KeAWc/54E/cAKAr
         Af4lQCwRkQcSkAYn+OL6rnmExbIWZFSFNvDj7/ZAPCsUj/Rz2SXUD2thJ9cfusFoDFQr
         QGbuXD9mOwVVPjgcFZxbjvS/9OAAV9ib3h9azZpUnhYbKgMGsSu28tLpirCWUJjnPYR+
         xzbw3RM5EoVWXwBcFP6EaXw9vEwmSo8tRcQaG21dwkUF+pAPRLaunXbEMhCn4sM7w1Y6
         xpLA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=MMhWstZ09q6Cszqpd54WHd2qjsYduZF9Gp6qbEFoKEg=;
        b=KzI28PVAjWaNfVX8Z8MS7JPlzyc8f1ZWrEZlER0VFYcUFFSoX0MvIdFbF/diXsKscM
         W/rTeZfenQNmCc/g8AX5xSIZeiIKctwQdUGWnQFAhxd3on/Y9qST6chFBiT1qoJYINxA
         e8j6I00sAJpCy/aj9mwwvKl9NERdqksKRIZk1gpxwoIQjLwoXplClY/6k+ttmd9pj/+0
         VIbGFoTqJGc0FkYt5BIbCQJ4jhh+ktrI67GoCzvp2amr6NTPHV6XdwnevfAeRBpZKed6
         MYP+g4QqVeIZ7hBvlIkarpWsECLSOSATv1wfFlGZG04vNIFV2O2qEfCginKBbZYLpCjw
         pBdA==
X-Gm-Message-State: AOAM532zmnGntairvQ/TjegE0K6VzDRwAsyn1aTqRK7IQLNgnBCQIl5V
	zAgF22aq9F93ZqrT4q/Y4XMNmcsSixTDAV1/9SHqw2y0
X-Google-Smtp-Source: ABdhPJxESlTLF6vDjNiq9g3jYw19mn2gjb5KvscdlznFgTwwArdG339mJObBz8nFkUB+6pOx0s4aqg8oPJhp9SWaWGY=
X-Received: by 2002:a2e:9b96:: with SMTP id z22mr37955720lji.427.1641236262660;
 Mon, 03 Jan 2022 10:57:42 -0800 (PST)
MIME-Version: 1.0
References: <20211217094104.24977-1-guangming.cao@mediatek.com> <20211227095102.6054-1-guangming.cao@mediatek.com>
In-Reply-To: <20211227095102.6054-1-guangming.cao@mediatek.com>
From: John Stultz <john.stultz@linaro.org>
Date: Mon, 3 Jan 2022 10:57:30 -0800
Message-ID: <CALAqxLVA4jUk-2o28RZobrPDUnuXfV1xN77Pt8Pu1o27V3aUQQ@mail.gmail.com>
To: guangming.cao@mediatek.com
Message-ID-Hash: OHX7P7XFDSCAKSMW42GGP3OE5CBWAUGL
X-Message-ID-Hash: OHX7P7XFDSCAKSMW42GGP3OE5CBWAUGL
X-MailFrom: john.stultz@linaro.org
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: Benjamin Gaignard <benjamin.gaignard@linaro.org>, Liam Mark <lmark@codeaurora.org>, Laura Abbott <labbott@redhat.com>, Brian Starkey <Brian.Starkey@arm.com>, =?UTF-8?Q?Christian_K=C3=B6nig?= <christian.koenig@amd.com>, Matthias Brugger <matthias.bgg@gmail.com>, "open list:DMA-BUF HEAPS FRAMEWORK" <linux-media@vger.kernel.org>, "open list:DMA-BUF HEAPS FRAMEWORK" <dri-devel@lists.freedesktop.org>, "moderated list:DMA-BUF HEAPS FRAMEWORK" <linaro-mm-sig@lists.linaro.org>, open list <linux-kernel@vger.kernel.org>, "moderated list:ARM/Mediatek SoC support" <linux-arm-kernel@lists.infradead.org>, "moderated list:ARM/Mediatek SoC support" <linux-mediatek@lists.infradead.org>, Bo Song <bo.song@mediatek.com>, Libo Kang <libo.kang@mediatek.com>, jianjiao zeng <jianjiao.zeng@mediatek.com>, mingyuan ma <mingyuan.ma@mediatek.com>, Yunfei Wang <yf.wang@mediatek.com>, wsd_upstream@mediatek.com
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH v2] dma-buf: dma-heap: Add a size check for allocation
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/OHX7P7XFDSCAKSMW42GGP3OE5CBWAUGL/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

On Mon, Dec 27, 2021 at 1:52 AM <guangming.cao@mediatek.com> wrote:
>
> From: Guangming <Guangming.Cao@mediatek.com>
>

Thanks for submitting this!

> Add a size check for allcation since the allocation size is

nit: "allocation" above.

> always less than the total DRAM size.

In general, it might be good to add more context to the commit message
to better answer *why* this change is needed rather than what the
change is doing.  ie: What negative thing happens without this change?
And so how does this change avoid or improve things?


> Signed-off-by: Guangming <Guangming.Cao@mediatek.com>
> Signed-off-by: jianjiao zeng <jianjiao.zeng@mediatek.com>
> ---
> v2: 1. update size limitation as total_dram page size.
>     2. update commit message
> ---
>  drivers/dma-buf/dma-heap.c | 2 ++
>  1 file changed, 2 insertions(+)
>
> diff --git a/drivers/dma-buf/dma-heap.c b/drivers/dma-buf/dma-heap.c
> index 56bf5ad01ad5..e39d2be98d69 100644
> --- a/drivers/dma-buf/dma-heap.c
> +++ b/drivers/dma-buf/dma-heap.c
> @@ -55,6 +55,8 @@ static int dma_heap_buffer_alloc(struct dma_heap *heap, size_t len,
>         struct dma_buf *dmabuf;
>         int fd;
>
> +       if (len / PAGE_SIZE > totalram_pages())
> +               return -EINVAL;

This seems sane. I know ION used to have some 1/2 of memory cap to
avoid unnecessary memory pressure on crazy allocations.

Could you send again with an improved commit message?

thanks
-john
_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org
