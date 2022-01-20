Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 058F249463D
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 20 Jan 2022 04:49:12 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 259D33EEA3
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 20 Jan 2022 03:49:11 +0000 (UTC)
Received: from mail-lf1-f49.google.com (mail-lf1-f49.google.com [209.85.167.49])
	by lists.linaro.org (Postfix) with ESMTPS id 94E1E3ED23
	for <linaro-mm-sig@lists.linaro.org>; Thu, 20 Jan 2022 03:49:08 +0000 (UTC)
Received: by mail-lf1-f49.google.com with SMTP id b14so16651031lff.3
        for <linaro-mm-sig@lists.linaro.org>; Wed, 19 Jan 2022 19:49:08 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=AZnU5cEeFyaFBnpj/0CbEtA8JHuWrnQecXMIYCnzB/o=;
        b=ErV1kJfadCu1b5wgD6aEviZCSAk41KIjnGh8WYn8aHbrfBmz/Z03LAGBXFW2rQaPAJ
         8nUEBpkWeomoODmY334NhCZOU+o0EljJbg8u2iyiFqhQzZA+efnPNwuXwUbmf0s5v/T1
         kCYeVe9Uk4rKeiAhQV0qJH3LNcIRAZLLfIB4l+8HBTpN2EbhE7OMo9MsZ1jJFtNumTI7
         6nq4zktXZrLgMTkM/3rhi6H2v1j+XohmCPmuRZ67scdSpSHYsD2JZXkUmKHOEB9cL3zx
         lOz0lnwWIRRBoK8mzCl56IReSHCns1DzoysZ5ToPrtmXJlo7ywMjgvALaTMfHs/M01U3
         VAsQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=AZnU5cEeFyaFBnpj/0CbEtA8JHuWrnQecXMIYCnzB/o=;
        b=cVbLvn+A0GgzJnUsvxdLrRWcbtmI/NngzRJb1MuUbYvpf7rDUl2q7a4oLaVssTeVlq
         yVBPxD8kG+vvccjn9IaVz7b+2A+C46KxFZonVhW02J6SJigK63oaa2BYp+z/Qx7IkKF/
         vwrlrQN6wxM9rporOQKI8Q2ZLGUpay0qqxb37tnwcwB4uG4XMHa+0KCGsevmTJzbQT23
         1TL20DohdQHWktDfy8YnBEblt2uVSW1cjSXlTg0J99qU+cQh+4bUkarhKd1H6t9US6Dk
         +n2zvB21sGfJtxeh/4i4ZkpY+OqM/OK3N0q6ZCJjbwULQ4bo3uTBDMafInSLQV8yOUBb
         Rs4A==
X-Gm-Message-State: AOAM533gMBjVIwYBEQGRupaqLrS8P05TekPAM4NOu2NOVmkeuhHKaApr
	Yd7i1MfGh68hQ6pgcz7yyt+n0HLtmwzjmgY08jsRqnoE
X-Google-Smtp-Source: ABdhPJx0/Bt4Fv7Zhtxsw2WH0QARsie3jQTiwGG/ZBJTXsXxHRBXcquj3uP0/ZLAIBtBfzPMkNDAYvLD72ukCtWU1g8=
X-Received: by 2002:a05:6512:3e1f:: with SMTP id i31mr25221311lfv.661.1642650547311;
 Wed, 19 Jan 2022 19:49:07 -0800 (PST)
MIME-Version: 1.0
References: <CALAqxLUtK8V9LgC-DY+tkzFYyWfzF+JhbrLZk6UhEG57HQBDSA@mail.gmail.com>
 <20220120033450.90164-1-guangming.cao@mediatek.com>
In-Reply-To: <20220120033450.90164-1-guangming.cao@mediatek.com>
From: John Stultz <john.stultz@linaro.org>
Date: Wed, 19 Jan 2022 19:48:55 -0800
Message-ID: <CALAqxLW5uEZCGHGk3rYoiOGzN5XMKb39JzoPB1iEX9k3UsiT-A@mail.gmail.com>
To: guangming.cao@mediatek.com
Message-ID-Hash: RCAH2TJNGNXSUXYVSLOT3VSLTXKR3BTG
X-Message-ID-Hash: RCAH2TJNGNXSUXYVSLOT3VSLTXKR3BTG
X-MailFrom: john.stultz@linaro.org
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: benjamin.gaignard@linaro.org, bo.song@mediatek.com, christian.koenig@amd.com, dri-devel@lists.freedesktop.org, jianjiao.zeng@mediatek.com, labbott@redhat.com, libo.kang@mediatek.com, linaro-mm-sig@lists.linaro.org, linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org, linux-media@vger.kernel.org, linux-mediatek@lists.infradead.org, lmark@codeaurora.org, matthias.bgg@gmail.com, michael.j.ruhl@intel.com, mingyuan.ma@mediatek.com, wsd_upstream@mediatek.com, yf.wang@mediatek.com, caoguangming34@gmail.com
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH v4] dma-buf: system_heap: Add a size check for allocation
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/RCAH2TJNGNXSUXYVSLOT3VSLTXKR3BTG/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

On Wed, Jan 19, 2022 at 7:34 PM <guangming.cao@mediatek.com> wrote:
>
> From: Guangming <Guangming.Cao@mediatek.com>
>
> Add a size check for allocation since the allocation size should be
> always less than the total DRAM size on system heap.
> And it can prevent consuming too much time for invalid allocations.
>
> Signed-off-by: Guangming <Guangming.Cao@mediatek.com>
> ---
>  drivers/dma-buf/heaps/system_heap.c | 7 +++++++
>  1 file changed, 7 insertions(+)
>
> diff --git a/drivers/dma-buf/heaps/system_heap.c b/drivers/dma-buf/heaps/system_heap.c
> index 23a7e74ef966..bd6f255620e2 100644
> --- a/drivers/dma-buf/heaps/system_heap.c
> +++ b/drivers/dma-buf/heaps/system_heap.c
> @@ -347,6 +347,13 @@ static struct dma_buf *system_heap_allocate(struct dma_heap *heap,
>         struct page *page, *tmp_page;
>         int i, ret = -ENOMEM;
>
> +       /*
> +        * Size check. The "len" should be less than totalram since system_heap
> +        * memory is comes from system. Adding check here can prevent consuming
> +        * too much time for invalid allocations.
> +        */
> +       if (len >> PAGE_SHIFT > totalram_pages())
> +               return -EINVAL;

Thanks so much for revising and sending this along! It looks good to me.

Acked-by: John Stultz <john.stultz@linaro.org>

thanks again
-john
_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org
