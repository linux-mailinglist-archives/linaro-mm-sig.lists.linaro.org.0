Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 8CF785206F8
	for <lists+linaro-mm-sig@lfdr.de>; Mon,  9 May 2022 23:50:08 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 5AB064804C
	for <lists+linaro-mm-sig@lfdr.de>; Mon,  9 May 2022 21:50:07 +0000 (UTC)
Received: from mail-ej1-f48.google.com (mail-ej1-f48.google.com [209.85.218.48])
	by lists.linaro.org (Postfix) with ESMTPS id 9507C402AD
	for <linaro-mm-sig@lists.linaro.org>; Mon,  9 May 2022 21:50:02 +0000 (UTC)
Received: by mail-ej1-f48.google.com with SMTP id j6so29325358ejc.13
        for <linaro-mm-sig@lists.linaro.org>; Mon, 09 May 2022 14:50:02 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=google.com; s=20210112;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=aKEvNnMqJr+Ji3wzZ+kyxqDQgYFrf7j1orREUwNHbE8=;
        b=Gr/9HTJiYOlDX6fetpo8rWY8vmbwB2ZeETv9WvSLj426WRc41qKOI2DbQDQw8wYrzl
         VMkbaUCWqEmmuWQSf6QXc97xXftjTcTkNiUat2bVrWg6KDJXGw/3EnKvR23vtrc5ek2d
         Huti8ge5p5gr7z/EQS1UOwMrLB+8Lu6MhHhnjLpWSnbfclaxyHzXbK5+ay0dnHO1rWd4
         zn6yEsKKzT44KtGADaFlK2syri+0W8SljEmBB7/ZYrDE3Ubp9EhoqnPOcO8VAtgffMbT
         vxJMvDlQ8kCM7to3VeTwl0W7qseqYQC11parqS+l1gc0hV4AXHRC6AZMIGvKz12lcw7b
         0hOg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=aKEvNnMqJr+Ji3wzZ+kyxqDQgYFrf7j1orREUwNHbE8=;
        b=7YFiUln/+gE2oMv3u0PzNjop0N/zqXjOiW88dsXJc9WwDb0qK24ut22lEX1KgPGHlW
         8XKX5pK6PGkglq9rFCIwGg5catD/rZVbmgnLtEjmF8kMKgFQqJMjxmDeLzmABM3w0+tC
         Jn+jcKbb5LvXeaVMfzBllCWyy4iSZJJClVuq4317mk1hPUBbix7sivCqGzYh0bpRMlEQ
         jTQpXiiIeQcvbf0kXqsWuMAuIY24I7rmW1q1bu+DvEghLxG/Ob6SWIW1UTzwdLubjliH
         y0jK4+Y9dGgVy3fKcvJpt9PSAYaHBxArepY+OG9oqVmOJT99XuCeuvpgVqqM9TvtjN9p
         9V0w==
X-Gm-Message-State: AOAM530pi00UYzGGUhIsMoTDIGZ8vML94S++aZ/Rr4m9585ihqh5gJ9p
	P1fxEn48ev13usjgKCitXbAQqSntT0DXkZOHl+Ea5Q==
X-Google-Smtp-Source: ABdhPJykPbx/03p5//2jQ4C7Er1AEW64JcawHsesvTbhr6ztpX0AZiQPHHfGXfUFyhECCsGvdqV3kvR9V0bNS63hXS4=
X-Received: by 2002:a17:907:9813:b0:6fa:78b0:9be2 with SMTP id
 ji19-20020a170907981300b006fa78b09be2mr6269780ejc.159.1652133001507; Mon, 09
 May 2022 14:50:01 -0700 (PDT)
MIME-Version: 1.0
References: <1652125797-2043-1-git-send-email-quic_charante@quicinc.com>
In-Reply-To: <1652125797-2043-1-git-send-email-quic_charante@quicinc.com>
From: "T.J. Mercier" <tjmercier@google.com>
Date: Mon, 9 May 2022 14:49:50 -0700
Message-ID: <CABdmKX2V55tA-Or6Dd+bpbcv3fDHps_+zHHJQwhz819LX_2RSQ@mail.gmail.com>
To: Charan Teja Kalla <quic_charante@quicinc.com>
Message-ID-Hash: 65FWQAQZGRNWSQEUSV3BNFH7GNP5M2WV
X-Message-ID-Hash: 65FWQAQZGRNWSQEUSV3BNFH7GNP5M2WV
X-MailFrom: tjmercier@google.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: Sumit Semwal <sumit.semwal@linaro.org>, =?UTF-8?Q?Christian_K=C3=B6nig?= <christian.koenig@amd.com>, Hridya Valsaraju <hridya@google.com>, Greg Kroah-Hartman <gregkh@linuxfoundation.org>, linux-media@vger.kernel.org, dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org, linux-kernel@vger.kernel.org
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH] dma-buf: call dma_buf_stats_setup after dmabuf is in valid list
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/65FWQAQZGRNWSQEUSV3BNFH7GNP5M2WV/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

On Mon, May 9, 2022 at 12:50 PM Charan Teja Kalla
<quic_charante@quicinc.com> wrote:
>
> From: Charan Teja Reddy <quic_charante@quicinc.com>
>
> When dma_buf_stats_setup() fails, it closes the dmabuf file which
> results into the calling of dma_buf_file_release() where it does
> list_del(&dmabuf->list_node) with out first adding it to the proper
> list. This is resulting into panic in the below path:
> __list_del_entry_valid+0x38/0xac
> dma_buf_file_release+0x74/0x158
> __fput+0xf4/0x428
> ____fput+0x14/0x24
> task_work_run+0x178/0x24c
> do_notify_resume+0x194/0x264
> work_pending+0xc/0x5f0
>
> Fix it by moving the dma_buf_stats_setup() after dmabuf is added to the
> list.
>
> Fixes: bdb8d06dfefd ("dmabuf: Add the capability to expose DMA-BUF stats in sysfs")
> Signed-off-by: Charan Teja Reddy <quic_charante@quicinc.com>

Tested-by: T.J. Mercier <tjmercier@google.com>
Acked-by: T.J. Mercier <tjmercier@google.com>

> ---
>  drivers/dma-buf/dma-buf.c | 8 ++++----
>  1 file changed, 4 insertions(+), 4 deletions(-)
>
> diff --git a/drivers/dma-buf/dma-buf.c b/drivers/dma-buf/dma-buf.c
> index 602b12d..a6fc96e 100644
> --- a/drivers/dma-buf/dma-buf.c
> +++ b/drivers/dma-buf/dma-buf.c
> @@ -543,10 +543,6 @@ struct dma_buf *dma_buf_export(const struct dma_buf_export_info *exp_info)
>         file->f_mode |= FMODE_LSEEK;
>         dmabuf->file = file;
>
> -       ret = dma_buf_stats_setup(dmabuf);
> -       if (ret)
> -               goto err_sysfs;
> -
>         mutex_init(&dmabuf->lock);
>         INIT_LIST_HEAD(&dmabuf->attachments);
>
> @@ -554,6 +550,10 @@ struct dma_buf *dma_buf_export(const struct dma_buf_export_info *exp_info)
>         list_add(&dmabuf->list_node, &db_list.head);
>         mutex_unlock(&db_list.lock);
>
> +       ret = dma_buf_stats_setup(dmabuf);
> +       if (ret)
> +               goto err_sysfs;
> +
>         return dmabuf;
>
>  err_sysfs:
> --
> 2.7.4
>
_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org
