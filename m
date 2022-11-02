Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id B4052615666
	for <lists+linaro-mm-sig@lfdr.de>; Wed,  2 Nov 2022 01:05:58 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id C18073F5C7
	for <lists+linaro-mm-sig@lfdr.de>; Wed,  2 Nov 2022 00:05:57 +0000 (UTC)
Received: from mail-yb1-f182.google.com (mail-yb1-f182.google.com [209.85.219.182])
	by lists.linaro.org (Postfix) with ESMTPS id 074DF3EE5B
	for <linaro-mm-sig@lists.linaro.org>; Wed,  2 Nov 2022 00:05:41 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=google.com header.s=20210112 header.b=gY0XqIBc;
	spf=pass (lists.linaro.org: domain of tjmercier@google.com designates 209.85.219.182 as permitted sender) smtp.mailfrom=tjmercier@google.com;
	dmarc=pass (policy=reject) header.from=google.com
Received: by mail-yb1-f182.google.com with SMTP id f205so19306578yba.2
        for <linaro-mm-sig@lists.linaro.org>; Tue, 01 Nov 2022 17:05:41 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=google.com; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=LXVjpmcuceSLtVtq1KwkEZZvIzkOBdTR9+384qptIxA=;
        b=gY0XqIBcT72x+5mIHCPS8JMRAncFIGnhE9GY7Cn5NPnWk4IRHMt0JMqWu6DH90gzVc
         CHoUTiZPAQrnS/2fpZPWdo0998e+aHizZckzTlZvfGoKECQUr7hQYrT91Jrdwj8L9ytm
         DF7dq6zseQf0BPwvHgd/G9MfnW4J1KBOPwTjy0i+yOwLk3+QZGJdonLAVXhBGSZm6idB
         gtdVjKVZWDHQbbXp2bK3t9hmaiB4OGj8P4J6R1Vo1agDCf+oxQop9P6seYMRN/FP3Bc/
         /0jV5xUupHu/9i4wodfQv3Jf9DyvQ9qXM+Nhvawy+j0Q/7Vr17KQJ5qQrI1XnXInJe/B
         Pmmw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=LXVjpmcuceSLtVtq1KwkEZZvIzkOBdTR9+384qptIxA=;
        b=m1ZsJJGYavZANlmjbMbexPFqcO23QMLhdCGxZpf2NbYHRcpDyM6vXLHfGVCmGxDi0n
         CfMcGyfsB0xCPdZJgQa2GpFvsgIPn/1XLBxjaTwMYM9cIckOksliU2drx1b5w2JcPmTp
         F+YXMiyHD7k5YOgI37eqNj+tSWl1IRnb3WAdiqQcFGl82UbiPR1qd1y71sUvT/trE4sy
         luR5BgFxFop16pOS1tM+rXcHDquPIFyCig/M+NKUgGlUqGA2t3Ow3mcfyGJdt2LjbEiB
         7WIkRbBHLgpFb/uWMyhbGw6Sr812vzRHrN2JvqVNmMNvVTsnItegPX2noU3JozIZ5Srt
         XgMQ==
X-Gm-Message-State: ACrzQf2tVBYzL6wLzfwpPPQ4ewsIzQHIedANMmCOve9lLcSMeMZf5omR
	e3/Q4wv7OnQEKLM79JJGwEuLIu7518pNX4EqLHv1sg==
X-Google-Smtp-Source: AMsMyM7XHfcExfov1AZxC0aYOPIhc1Njm8sLYHakec7c8IDdtD3Rx445uxhfyVQggY9P/Cp7QQeM1XBRcgOs2Ij28ZA=
X-Received: by 2002:a05:6902:1cb:b0:6cf:e925:5baa with SMTP id
 u11-20020a05690201cb00b006cfe9255baamr256079ybh.636.1667347540410; Tue, 01
 Nov 2022 17:05:40 -0700 (PDT)
MIME-Version: 1.0
References: <TYCP286MB23235BB803E3A778C85B50F7CA379@TYCP286MB2323.JPNP286.PROD.OUTLOOK.COM>
In-Reply-To: <TYCP286MB23235BB803E3A778C85B50F7CA379@TYCP286MB2323.JPNP286.PROD.OUTLOOK.COM>
From: "T.J. Mercier" <tjmercier@google.com>
Date: Tue, 1 Nov 2022 17:05:28 -0700
Message-ID: <CABdmKX0iR-YAfR+rLczPDa5W9Y+JMYs5RKMK8bkjs3z80TgL6A@mail.gmail.com>
To: Dawei Li <set_pte_at@outlook.com>
X-Rspamd-Server: lists.linaro.org
X-Spamd-Bar: ----
X-Rspamd-Queue-Id: 074DF3EE5B
X-Spamd-Result: default: False [-4.00 / 15.00];
	BAYES_HAM(-3.00)[100.00%];
	DMARC_POLICY_ALLOW(-0.50)[google.com,reject];
	R_SPF_ALLOW(-0.20)[+ip4:209.85.128.0/17];
	R_DKIM_ALLOW(-0.20)[google.com:s=20210112];
	MIME_GOOD(-0.10)[text/plain];
	ASN(0.00)[asn:15169, ipnet:209.85.128.0/17, country:US];
	FREEMAIL_TO(0.00)[outlook.com];
	FROM_EQ_ENVFROM(0.00)[];
	MIME_TRACE(0.00)[0:+];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_TWO(0.00)[2];
	NEURAL_HAM(-0.00)[-0.778];
	ARC_NA(0.00)[];
	DKIM_TRACE(0.00)[google.com:+];
	FROM_HAS_DN(0.00)[];
	URIBL_BLOCKED(0.00)[outlook.com:email];
	RCPT_COUNT_TWELVE(0.00)[13];
	TO_DN_SOME(0.00)[];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	PREVIOUSLY_DELIVERED(0.00)[linaro-mm-sig@lists.linaro.org];
	RWL_MAILSPIKE_POSSIBLE(0.00)[209.85.219.182:from]
Message-ID-Hash: ZF64ZKYMQVDLKRBSYJJWXZG4HKDZI7QI
X-Message-ID-Hash: ZF64ZKYMQVDLKRBSYJJWXZG4HKDZI7QI
X-MailFrom: tjmercier@google.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: sumit.semwal@linaro.org, christian.koenig@amd.com, benjamin.gaignard@collabora.com, labbott@redhat.com, Brian.Starkey@arm.com, jstultz@google.com, afd@ti.com, sspatil@android.com, linux-media@vger.kernel.org, dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org, linux-kernel@vger.kernel.org
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH v2] dma-buf: fix racing conflict of dma_heap_add()
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/ZF64ZKYMQVDLKRBSYJJWXZG4HKDZI7QI/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

On Mon, Oct 31, 2022 at 7:53 AM Dawei Li <set_pte_at@outlook.com> wrote:
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
> Fixes: c02a81fba74f ("dma-buf: Add dma-buf heaps framework")
>
> base-commit: 447fb14bf07905b880c9ed1ea92c53d6dd0649d7
>
> Signed-off-by: Dawei Li <set_pte_at@outlook.com>
> ---
>  drivers/dma-buf/dma-heap.c | 37 ++++++++++++++++++++++++++++---------
>  1 file changed, 28 insertions(+), 9 deletions(-)
>
> diff --git a/drivers/dma-buf/dma-heap.c b/drivers/dma-buf/dma-heap.c
> index 8f5848aa144f..1c787a147e3a 100644
> --- a/drivers/dma-buf/dma-heap.c
> +++ b/drivers/dma-buf/dma-heap.c
> @@ -216,9 +216,21 @@ const char *dma_heap_get_name(struct dma_heap *heap)
>         return heap->name;
>  }
>
> +static inline bool dma_heap_exist(const char *name)
> +{
> +       struct dma_heap *h;
> +
> +       list_for_each_entry(h, &heap_list, list) {
> +               if (!strcmp(h->name, name))
> +                       return true;
> +       }
> +
> +       return false;
> +}
> +
>  struct dma_heap *dma_heap_add(const struct dma_heap_export_info *exp_info)
>  {
> -       struct dma_heap *heap, *h, *err_ret;
> +       struct dma_heap *heap, *err_ret;
>         struct device *dev_ret;
>         unsigned int minor;
>         int ret;
> @@ -235,13 +247,11 @@ struct dma_heap *dma_heap_add(const struct dma_heap_export_info *exp_info)
>
>         /* check the name is unique */
>         mutex_lock(&heap_list_lock);
> -       list_for_each_entry(h, &heap_list, list) {
> -               if (!strcmp(h->name, exp_info->name)) {
> -                       mutex_unlock(&heap_list_lock);
> -                       pr_err("dma_heap: Already registered heap named %s\n",
> -                              exp_info->name);
> -                       return ERR_PTR(-EINVAL);
> -               }
> +       if (dma_heap_exist(exp_info->name)) {
> +               mutex_unlock(&heap_list_lock);
> +               pr_err("dma_heap: Already registered heap named %s\n",
> +                      exp_info->name);
> +               return ERR_PTR(-EINVAL);

Hi Dawei,
What Andrew was suggesting was that you entirely move the check from
here to the critical section down below, not duplicate the check. I
don't think we want to check this twice. We should be able to do this
by taking the heap_list_lock only once.

>         }
>         mutex_unlock(&heap_list_lock);
>
> @@ -283,13 +293,22 @@ struct dma_heap *dma_heap_add(const struct dma_heap_export_info *exp_info)
>                 err_ret = ERR_CAST(dev_ret);
>                 goto err2;
>         }
> +
>         /* Add heap to the list */
>         mutex_lock(&heap_list_lock);
> +       if (unlikely(dma_heap_exist(exp_info->name))) {
> +               mutex_unlock(&heap_list_lock);
> +               pr_err("dma_heap: Already registered heap named %s\n",
> +                      exp_info->name);
> +               err_ret = ERR_PTR(-EINVAL);
> +               goto err3;
> +       }
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
_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org
