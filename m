Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 6DE464A5838
	for <lists+linaro-mm-sig@lfdr.de>; Tue,  1 Feb 2022 09:05:33 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 8F4A23EE1B
	for <lists+linaro-mm-sig@lfdr.de>; Tue,  1 Feb 2022 08:05:32 +0000 (UTC)
Received: from mail-lj1-f176.google.com (mail-lj1-f176.google.com [209.85.208.176])
	by lists.linaro.org (Postfix) with ESMTPS id BC6023EDB6
	for <linaro-mm-sig@lists.linaro.org>; Tue,  1 Feb 2022 08:05:25 +0000 (UTC)
Received: by mail-lj1-f176.google.com with SMTP id a25so22868682lji.9
        for <linaro-mm-sig@lists.linaro.org>; Tue, 01 Feb 2022 00:05:25 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=p0PJJMIRjpabG82Db2BkgEWkwXsmVMEfTVi2vjGRhtw=;
        b=izEqZAN6elcstfVcTg/tMHTABwgB/UMX/WOkNRN//agL7z/6AQ8IQpDwjRbjFiOFyW
         NSBjTU+DIpdkHEZSRFsK6dVcNOQXPRBlm+IInH2I4wUMQzKZVRtRzB0KgyZg3h/sWkIF
         P+52Df+wsBiYo+fABOASc+LW2G3zz9xmANft5nYdfMcrNmXe9eCuLBu7ufKU7t845c0w
         qDT1+SS6cYJ+t5Acbj+TXosOfeB5NFVfglRyE7tANu/CnIgwimMAw8vHGbNFYvo9eoDv
         /ap5CD/+2MDDcxr82vy5XgYwsoCyOoR3ymgxdDClfxnWzEMk4tdJbPN0uZwLLmOONJyV
         v1ig==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=p0PJJMIRjpabG82Db2BkgEWkwXsmVMEfTVi2vjGRhtw=;
        b=ufPofDC2IMje7r+5/Km+OVpWavbfQwtkH4GBMW/BalD1xd9I/NrS/vF2FNh0BIwLli
         re+JRIznJCsYBA7p/eAHkGqOB+oEklgy9Yeu5waVbitoAER+igDIPeISzuq+diz2NKCf
         zRJHtBFBGP4ELd4jK5Q2JR+/lUEFnf8IheM9r2GJncjrz5fN+kx2HZVgFwHq3IClWCAX
         SPziNkX4Cke21XXukXEzm24BMOPw+ip4lV9n6H0RaB2UEytxv3nzKWBrSpAmKmOhEZf7
         7A3ARZoVuEcXHojg/JaEnyAeE0Yu/g7p/qiiDWs418JH6siayniaOjMwLIcr295uxtmo
         1Qqw==
X-Gm-Message-State: AOAM531aC61fhlog2qwZhuWL8NxaXrVwkwpjVr16hyig1E1iav1s5IXx
	OmlQyrfxQ3dgBYC92RkHyD57r20Uw0mucYxHOWDliFN1
X-Google-Smtp-Source: ABdhPJxZwJ8f1U9XZiyGVaA6XDvnmQLDIfQhyp8AtRxgE5A16/QfHpbjmzbDOUwB09+DzDui2DpTkgQ/ryAXMams73Q=
X-Received: by 2002:a2e:a405:: with SMTP id p5mr15566025ljn.121.1643702724483;
 Tue, 01 Feb 2022 00:05:24 -0800 (PST)
MIME-Version: 1.0
References: <20220129150604.3461652-1-jordy@pwning.systems> <CALAqxLU58UYLRNrf4C7t4_SmSa1aUVaDj4SP=zCPfb9m6HBUNw@mail.gmail.com>
In-Reply-To: <CALAqxLU58UYLRNrf4C7t4_SmSa1aUVaDj4SP=zCPfb9m6HBUNw@mail.gmail.com>
From: Sumit Semwal <sumit.semwal@linaro.org>
Date: Tue, 1 Feb 2022 13:35:12 +0530
Message-ID: <CAO_48GGw3bfLdLArCMHNUsiGK_brHZ3D2dQd19wJj2_FoggCUA@mail.gmail.com>
To: John Stultz <john.stultz@linaro.org>
Message-ID-Hash: KTPIR34FBX53VZTUAKTUW7JUJPBRU6P3
X-Message-ID-Hash: KTPIR34FBX53VZTUAKTUW7JUJPBRU6P3
X-MailFrom: sumit.semwal@linaro.org
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: Jordy Zomer <jordy@pwning.systems>, linux-kernel@vger.kernel.org, Benjamin Gaignard <benjamin.gaignard@linaro.org>, Liam Mark <lmark@codeaurora.org>, Laura Abbott <labbott@redhat.com>, Brian Starkey <brian.starkey@arm.com>, =?UTF-8?Q?Christian_K=C3=B6nig?= <christian.koenig@amd.com>, linux-media@vger.kernel.org, dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH] dma-buf: heaps: Fix potential spectre v1 gadget
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/KTPIR34FBX53VZTUAKTUW7JUJPBRU6P3/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

Hello Jordy,

On Tue, 1 Feb 2022 at 02:09, John Stultz <john.stultz@linaro.org> wrote:
>
> On Sat, Jan 29, 2022 at 7:06 AM Jordy Zomer <jordy@pwning.systems> wrote:
> >
> > It appears like nr could be a Spectre v1 gadget as it's supplied by a
> > user and used as an array index. Prevent the contents
> > of kernel memory from being leaked to userspace via speculative
> > execution by using array_index_nospec.
> >
> > Signed-off-by: Jordy Zomer <jordy@pwning.systems>
Thanks very much for your patch; I've pushed it to drm-misc-fixes, so
we should see it in mainline soon.

> > ---
> >  drivers/dma-buf/dma-heap.c | 2 ++
> >  1 file changed, 2 insertions(+)
> >
> > diff --git a/drivers/dma-buf/dma-heap.c b/drivers/dma-buf/dma-heap.c
> > index 56bf5ad01ad5..8f5848aa144f 100644
> > --- a/drivers/dma-buf/dma-heap.c
> > +++ b/drivers/dma-buf/dma-heap.c
> > @@ -14,6 +14,7 @@
> >  #include <linux/xarray.h>
> >  #include <linux/list.h>
> >  #include <linux/slab.h>
> > +#include <linux/nospec.h>
> >  #include <linux/uaccess.h>
> >  #include <linux/syscalls.h>
> >  #include <linux/dma-heap.h>
> > @@ -135,6 +136,7 @@ static long dma_heap_ioctl(struct file *file, unsigned int ucmd,
> >         if (nr >= ARRAY_SIZE(dma_heap_ioctl_cmds))
> >                 return -EINVAL;
> >
> > +       nr = array_index_nospec(nr, ARRAY_SIZE(dma_heap_ioctl_cmds));
> >         /* Get the kernel ioctl cmd that matches */
> >         kcmd = dma_heap_ioctl_cmds[nr];
>
> Thanks for submitting this! It looks sane to me.
>
> Acked-by: John Stultz <john.stultz@linaro.org>
>
> thanks
> -john


Best,
Sumit.
_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org
