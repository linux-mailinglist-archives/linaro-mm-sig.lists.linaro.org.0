Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 245A24A5056
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 31 Jan 2022 21:39:50 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 2FBB83ECC4
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 31 Jan 2022 20:39:49 +0000 (UTC)
Received: from mail-lf1-f43.google.com (mail-lf1-f43.google.com [209.85.167.43])
	by lists.linaro.org (Postfix) with ESMTPS id 6FA303EB81
	for <linaro-mm-sig@lists.linaro.org>; Mon, 31 Jan 2022 20:39:41 +0000 (UTC)
Received: by mail-lf1-f43.google.com with SMTP id z4so29409231lft.3
        for <linaro-mm-sig@lists.linaro.org>; Mon, 31 Jan 2022 12:39:41 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=np4e6RD8bcxsxGDFQSQ6Wvj5x603dmmfdRkFqggTL3M=;
        b=Q4SKA5IdjOz/7QFJ4Z0X+4KOqGhoQSt94SjvwcSaCX0K1amQag2xp72Y70oVzIJGcV
         OlkNrq8mgz77qJTAyhk2ZhTUD8l59Ruv4ESJDIgK8PuM7cGAVMVlvhnSbXjs1Dm1PTRY
         daLdGSWYyMbdN4r/Q81TPuibY9bOCHGirpuyJzlZctK9lV4ipEdM3h6KtXdmooqEnaO1
         9TU2+AahMi3PpeYAKqyXsqLYMZt1e9n35LLp01tdvQKnUokZaNrpMl6TkYBgT1VVpPCZ
         lRqC1mC2TjZojYuydSDAxZMEl9jlC4KhGpqQRvRQzjGFHnHmWYcjF/NYXWXpESIunHpQ
         FsEw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=np4e6RD8bcxsxGDFQSQ6Wvj5x603dmmfdRkFqggTL3M=;
        b=XJNA4zJ3F5sHFUpPQ9DI9YGPjcXTKp550WTposv5eVjZ/ZIfoM5VcIwqnxTsQpXKOJ
         8B8/pKAbHv0WddVihtrYbGVPVeH2tqcz9uXia5hikaq2QFnq0/IsJoYTTTvfpam627ax
         SAimSbPBVBcCboeli/xnrJKc859UfkR/Yq2FMwQ/VFWU6JLMPXE8j97DMsV52Li5oK+/
         CypYeVugm+oo9TrRT/Qc8kDfRwT7wGb+1Fs8zU6cJjypXViwbOOmkp7TRQI2fCmcQkzA
         GRVwIDBvncwkhKpKw7DjnwmfuGiJSLKMMnocaBwyoc+COgvwNvjIS3KEFRayoKlLxFmA
         pQwg==
X-Gm-Message-State: AOAM532zatNm9nZ55HYypS+e4eNb3ske6RhL/d63VV9hS8mSEHD5JNka
	o4vuzCW2z3aIZ6IgluTJrfxb/okiQrwgGd/ZJz2BynKK
X-Google-Smtp-Source: ABdhPJwujbhq+i0qTNRuZ+BiGkLSicKWY8TPo9L2LEzw9/qgpOhmUj+SNSa3a4Mh4JMV8MtM6PSgZiAXNhoauP0uUk4=
X-Received: by 2002:a05:6512:4012:: with SMTP id br18mr15944158lfb.533.1643661580262;
 Mon, 31 Jan 2022 12:39:40 -0800 (PST)
MIME-Version: 1.0
References: <20220129150604.3461652-1-jordy@pwning.systems>
In-Reply-To: <20220129150604.3461652-1-jordy@pwning.systems>
From: John Stultz <john.stultz@linaro.org>
Date: Mon, 31 Jan 2022 12:39:29 -0800
Message-ID: <CALAqxLU58UYLRNrf4C7t4_SmSa1aUVaDj4SP=zCPfb9m6HBUNw@mail.gmail.com>
To: Jordy Zomer <jordy@pwning.systems>
Message-ID-Hash: KJRAJUJZRRZG4ITXEKCMUPVF2B37VG62
X-Message-ID-Hash: KJRAJUJZRRZG4ITXEKCMUPVF2B37VG62
X-MailFrom: john.stultz@linaro.org
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: linux-kernel@vger.kernel.org, Benjamin Gaignard <benjamin.gaignard@linaro.org>, Liam Mark <lmark@codeaurora.org>, Laura Abbott <labbott@redhat.com>, Brian Starkey <Brian.Starkey@arm.com>, =?UTF-8?Q?Christian_K=C3=B6nig?= <christian.koenig@amd.com>, linux-media@vger.kernel.org, dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH] dma-buf: heaps: Fix potential spectre v1 gadget
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/KJRAJUJZRRZG4ITXEKCMUPVF2B37VG62/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

On Sat, Jan 29, 2022 at 7:06 AM Jordy Zomer <jordy@pwning.systems> wrote:
>
> It appears like nr could be a Spectre v1 gadget as it's supplied by a
> user and used as an array index. Prevent the contents
> of kernel memory from being leaked to userspace via speculative
> execution by using array_index_nospec.
>
> Signed-off-by: Jordy Zomer <jordy@pwning.systems>
> ---
>  drivers/dma-buf/dma-heap.c | 2 ++
>  1 file changed, 2 insertions(+)
>
> diff --git a/drivers/dma-buf/dma-heap.c b/drivers/dma-buf/dma-heap.c
> index 56bf5ad01ad5..8f5848aa144f 100644
> --- a/drivers/dma-buf/dma-heap.c
> +++ b/drivers/dma-buf/dma-heap.c
> @@ -14,6 +14,7 @@
>  #include <linux/xarray.h>
>  #include <linux/list.h>
>  #include <linux/slab.h>
> +#include <linux/nospec.h>
>  #include <linux/uaccess.h>
>  #include <linux/syscalls.h>
>  #include <linux/dma-heap.h>
> @@ -135,6 +136,7 @@ static long dma_heap_ioctl(struct file *file, unsigned int ucmd,
>         if (nr >= ARRAY_SIZE(dma_heap_ioctl_cmds))
>                 return -EINVAL;
>
> +       nr = array_index_nospec(nr, ARRAY_SIZE(dma_heap_ioctl_cmds));
>         /* Get the kernel ioctl cmd that matches */
>         kcmd = dma_heap_ioctl_cmds[nr];

Thanks for submitting this! It looks sane to me.

Acked-by: John Stultz <john.stultz@linaro.org>

thanks
-john
_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org
