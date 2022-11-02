Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 1BD0E6169CB
	for <lists+linaro-mm-sig@lfdr.de>; Wed,  2 Nov 2022 17:54:33 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id DB9CD3F5BA
	for <lists+linaro-mm-sig@lfdr.de>; Wed,  2 Nov 2022 16:54:31 +0000 (UTC)
Received: from mail-yb1-f172.google.com (mail-yb1-f172.google.com [209.85.219.172])
	by lists.linaro.org (Postfix) with ESMTPS id 8FDEB3EF32
	for <linaro-mm-sig@lists.linaro.org>; Wed,  2 Nov 2022 16:54:15 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=google.com header.s=20210112 header.b="Z8JN/8nh";
	spf=pass (lists.linaro.org: domain of tjmercier@google.com designates 209.85.219.172 as permitted sender) smtp.mailfrom=tjmercier@google.com;
	dmarc=pass (policy=reject) header.from=google.com
Received: by mail-yb1-f172.google.com with SMTP id 66so5098596ybl.11
        for <linaro-mm-sig@lists.linaro.org>; Wed, 02 Nov 2022 09:54:15 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=google.com; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=f+jsYWzMq4ayln83LACSuCFQylp+aW9xpS8cdpbBSi0=;
        b=Z8JN/8nhG9eptQBEBpxwlVClP98EOTk8ztgCuPfjxHeDBQnhqELjWrIdPZ5K2mtIqd
         j4RMTLr15plCqweSdq3fqcfitKfeaKFfNhkYgoDwGRKj97tnv4ibaMA2+k1Ycj5QBJiW
         5h1nEu3c8rfB2xEf85WSK0RF12SBH21ItlZRiVDTcx0x+zn2Ry2xCi92Iay5Iv8LIEPN
         W1gffIV4OGrovFyqOUMrm/plPRlGVZwT4SsKup6d6QYOH2oUTcISDTep3wNjUzWgen/N
         8h9/xvXqCq3RsGTjfVtibEdwMi13cvCy2itdvFm61wFuyhFeCEe+8/CoaXkeg/ljZ7s4
         FUPg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=f+jsYWzMq4ayln83LACSuCFQylp+aW9xpS8cdpbBSi0=;
        b=Uzl7CDw+RMdJ6JSLm4xJK9sIWH9Fha2YlkgiDEgxMaaCpWRR+rm97UnrNNEGiMtHDW
         EvXo/ekkBI6q9jQIFuBqmFCR7Aa2bh+oakgt93d1BB6Jr0ZTLkxBgoEfHLfQTqFWlE8i
         HrZOHRx6BUeVYFl5VURi720A7OY8KLGAdqjz33BDvGLFcBchiqByV4UTh/0CLGBc02Pd
         YXpFrbPp2VXL5+MFoU8BDBHt6RCviiN2cBm/cGbX0V0NdCRx4sidfHD98ieNSGtrsv4P
         fjljNvtBIKWQBPAqVr5tYnVLPhoxNyuIaQyjMhStGbeb3OwjiQZ6ajidMXBpeEvvdgI4
         Yfwg==
X-Gm-Message-State: ACrzQf0s3qn9i7i0bNVhqS4BHk0HPS6JPNbepz08b4twwKIR6C+DBMBb
	V9PVgNbNofpp+jC2KpEfakK3AntzSTWA2WSErUObbA==
X-Google-Smtp-Source: AMsMyM65O4NBPUuaOBAgi95AvY9AqyXj3pXE7q8JILaTPjQvUhUaYGNVBiND+5QefC7PS0k2HKzI7xpKHUBwrDMr1pw=
X-Received: by 2002:a25:cd01:0:b0:6c2:6f0d:f4ce with SMTP id
 d1-20020a25cd01000000b006c26f0df4cemr22429548ybf.365.1667408054985; Wed, 02
 Nov 2022 09:54:14 -0700 (PDT)
MIME-Version: 1.0
References: <TYCP286MB2323D71DEC1D008BEA6F7ABBCA399@TYCP286MB2323.JPNP286.PROD.OUTLOOK.COM>
In-Reply-To: <TYCP286MB2323D71DEC1D008BEA6F7ABBCA399@TYCP286MB2323.JPNP286.PROD.OUTLOOK.COM>
From: "T.J. Mercier" <tjmercier@google.com>
Date: Wed, 2 Nov 2022 09:54:03 -0700
Message-ID: <CABdmKX3bE5eKOeonTnkLZUgg=1yx3h5QPkGgue-bATHVDChHLQ@mail.gmail.com>
To: Dawei Li <set_pte_at@outlook.com>
X-Rspamd-Server: lists.linaro.org
X-Spamd-Bar: --------
X-Rspamd-Queue-Id: 8FDEB3EF32
X-Spamd-Result: default: False [-8.00 / 15.00];
	REPLY(-4.00)[];
	BAYES_HAM(-3.00)[100.00%];
	DMARC_POLICY_ALLOW(-0.50)[google.com,reject];
	R_DKIM_ALLOW(-0.20)[google.com:s=20210112];
	R_SPF_ALLOW(-0.20)[+ip4:209.85.128.0/17];
	MIME_GOOD(-0.10)[text/plain];
	MIME_TRACE(0.00)[0:+];
	FROM_EQ_ENVFROM(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	ASN(0.00)[asn:15169, ipnet:209.85.128.0/17, country:US];
	FREEMAIL_TO(0.00)[outlook.com];
	RCVD_COUNT_TWO(0.00)[2];
	NEURAL_HAM(-0.00)[-0.761];
	ARC_NA(0.00)[];
	DKIM_TRACE(0.00)[google.com:+];
	FROM_HAS_DN(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[13];
	TO_DN_SOME(0.00)[];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	PREVIOUSLY_DELIVERED(0.00)[linaro-mm-sig@lists.linaro.org];
	RWL_MAILSPIKE_POSSIBLE(0.00)[209.85.219.172:from]
Message-ID-Hash: WOKLBWA3B64B2ZEITUPFVEGWUDXGSD7R
X-Message-ID-Hash: WOKLBWA3B64B2ZEITUPFVEGWUDXGSD7R
X-MailFrom: tjmercier@google.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: sumit.semwal@linaro.org, christian.koenig@amd.com, benjamin.gaignard@collabora.com, labbott@redhat.com, Brian.Starkey@arm.com, jstultz@google.com, afd@ti.com, sspatil@android.com, linux-media@vger.kernel.org, dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org, linux-kernel@vger.kernel.org
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH v3] dma-buf: fix racing conflict of dma_heap_add()
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/WOKLBWA3B64B2ZEITUPFVEGWUDXGSD7R/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

On Wed, Nov 2, 2022 at 8:59 AM Dawei Li <set_pte_at@outlook.com> wrote:
>
> Racing conflict could be:
> task A                 task B
> list_for_each_entry
> strcmp(h->name))
>                        list_for_each_entry
>                        strcmp(h->name)
> kzalloc                kzalloc
> ......                 .....
> device_create          device_create
> list_add
>                        list_add
>
> The root cause is that task B has no idea about the fact someone
> else(A) has inserted heap with same name when it calls list_add,
> so a potential collision occurs.
>
> v1: https://lore.kernel.org/all/TYCP286MB2323950197F60FC3473123B7CA349@TYCP286MB2323.JPNP286.PROD.OUTLOOK.COM/
>
> v1->v2: Narrow down locking scope, check the existence of heap before
> insertion, as suggested by Andrew Davis.
>
> v2->v3: Remove double checking.
>
> Fixes: c02a81fba74f ("dma-buf: Add dma-buf heaps framework")
>
> base-commit: 447fb14bf07905b880c9ed1ea92c53d6dd0649d7
>
> Signed-off-by: Dawei Li <set_pte_at@outlook.com>
> ---
>  drivers/dma-buf/dma-heap.c | 29 +++++++++++++++--------------
>  1 file changed, 15 insertions(+), 14 deletions(-)
>
> diff --git a/drivers/dma-buf/dma-heap.c b/drivers/dma-buf/dma-heap.c
> index 8f5848aa144f..7a25e98259ea 100644
> --- a/drivers/dma-buf/dma-heap.c
> +++ b/drivers/dma-buf/dma-heap.c
> @@ -233,18 +233,6 @@ struct dma_heap *dma_heap_add(const struct dma_heap_export_info *exp_info)
>                 return ERR_PTR(-EINVAL);
>         }
>
> -       /* check the name is unique */
> -       mutex_lock(&heap_list_lock);
> -       list_for_each_entry(h, &heap_list, list) {
> -               if (!strcmp(h->name, exp_info->name)) {
> -                       mutex_unlock(&heap_list_lock);
> -                       pr_err("dma_heap: Already registered heap named %s\n",
> -                              exp_info->name);
> -                       return ERR_PTR(-EINVAL);
> -               }
> -       }
> -       mutex_unlock(&heap_list_lock);
> -
>         heap = kzalloc(sizeof(*heap), GFP_KERNEL);
>         if (!heap)
>                 return ERR_PTR(-ENOMEM);
> @@ -283,13 +271,26 @@ struct dma_heap *dma_heap_add(const struct dma_heap_export_info *exp_info)
>                 err_ret = ERR_CAST(dev_ret);
>                 goto err2;
>         }
> -       /* Add heap to the list */
> +
>         mutex_lock(&heap_list_lock);
> +       /* check the name is unique */
> +       list_for_each_entry(h, &heap_list, list) {
> +               if (!strcmp(h->name, exp_info->name)) {
> +                       mutex_unlock(&heap_list_lock);
> +                       pr_err("dma_heap: Already registered heap named %s\n",
> +                              exp_info->name);
> +                       err_ret = ERR_PTR(-EINVAL);
> +                       goto err3;
> +               }
> +       }
> +
> +       /* Add heap to the list */
>         list_add(&heap->list, &heap_list);
>         mutex_unlock(&heap_list_lock);
>
>         return heap;
> -
> +err3:
> +       device_destroy(dma_heap_class, heap->heap_devt);
>  err2:
>         cdev_del(&heap->heap_cdev);
>  err1:
> --
> 2.25.1
>

Reviewed-by: T.J. Mercier <tjmercier@google.com>

Thanks!
_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org
