Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id E2E3A4B6F8F
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 15 Feb 2022 16:15:52 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 25AC23EE8D
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 15 Feb 2022 15:15:52 +0000 (UTC)
Received: from mail-yb1-f171.google.com (mail-yb1-f171.google.com [209.85.219.171])
	by lists.linaro.org (Postfix) with ESMTPS id 7B9983EBD6
	for <linaro-mm-sig@lists.linaro.org>; Mon,  7 Feb 2022 08:55:53 +0000 (UTC)
Received: by mail-yb1-f171.google.com with SMTP id e145so17767706yba.12
        for <linaro-mm-sig@lists.linaro.org>; Mon, 07 Feb 2022 00:55:53 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=google.com; s=20210112;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=knF2fFP9aIoGTNmgPKFlIdzkXuLeb4VSUzI7AmunKNY=;
        b=kjKQjXhqwEwzFPGB6U7llci4Uyu0GDktsh9CriN7LUAxMChIRo0PfU0thwAaw7TEV0
         eqCQDKSViTSVsvrwmtQtElbEyfpkPhnyg4gPW1DbIanejHpDHkfG/4K2wXFclclpkWzI
         6WWHlSneOzKtnn8OzsMKXLagS1YERguBWMQh1qbU+fUkMIO42i0rVSiMI/6AnVSMVSkP
         QIAO7fAtsQeLrnZrgbbX9hklHmvYu1UJxrrxfeJ11kickjSzmqyKZiEW+JH0AbcMcCp7
         WeBBZbhdpkYxU/69NVf1lZzL3bs3DuayqvwzIEsIba6Y/YaBjtid3TAMYdo7sfNwHMiQ
         LMBw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=knF2fFP9aIoGTNmgPKFlIdzkXuLeb4VSUzI7AmunKNY=;
        b=wliG0zelW4F9aPnkkDhZWYQeOgNk3A2vKrJTlQwmOAHbL6eeurpVPGShIQGphyMJLd
         THczYI7nYoFyXhtsDW9xczbSFK9nytWcTq4Vg5gMdljFGaJhkCpx7ZttIQQACV0LF2mU
         PMCByq6wv//9eLgWgYScFdpzrifASuX2PWmecLCWN3KwWCSR/3ASDhPIL0898nz/cTLH
         8umFdOaH05Q7/KzB6YOqlCUBRDvb+YWvV4DIACV24ww1Z1340aCiIG0CxuEkDriWkiFO
         VpQ+Dv2pnO2vj3SHiBYVTQ9jA7ObACAUBie7PD/C9lcmpn6b07rsZxRr/3CWVj1lb8xL
         xAHQ==
X-Gm-Message-State: AOAM5325/pSQtCRlhJmrLVnN7e6NOrThbMNyIU9J69htbbjmMKAOsNsi
	6bxq51vVCqW2RZT6QZhTOvbnIwyXyiHUmXc7791AeA==
X-Google-Smtp-Source: ABdhPJyWH7PhtKu+j316v5w82AR7rHUJWXjLEcMawUmUXMQHsH7DXQJajqIi03ZoF4QFGuosxGiLrl/nfBv2NmF3nwQ=
X-Received: by 2002:a81:c505:: with SMTP id k5mr6144103ywi.264.1644224152818;
 Mon, 07 Feb 2022 00:55:52 -0800 (PST)
MIME-Version: 1.0
References: <20220207034432.185532-1-liupeng256@huawei.com>
In-Reply-To: <20220207034432.185532-1-liupeng256@huawei.com>
From: Marco Elver <elver@google.com>
Date: Mon, 7 Feb 2022 09:55:41 +0100
Message-ID: <CANpmjNN=0Q6s5WnKrWm4YXqSj-1rRsL2VTD_QJUfQdv_2nhf0Q@mail.gmail.com>
To: Peng Liu <liupeng256@huawei.com>
X-MailFrom: elver@google.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
Message-ID-Hash: 5UBAOCS4VEFNFJ7R6N4YQQMRAWCKQZGH
X-Message-ID-Hash: 5UBAOCS4VEFNFJ7R6N4YQQMRAWCKQZGH
X-Mailman-Approved-At: Tue, 15 Feb 2022 15:15:38 +0000
CC: glider@google.com, dvyukov@google.com, corbet@lwn.net, christian.koenig@amd.com, akpm@linux-foundation.org, kasan-dev@googlegroups.com, linux-doc@vger.kernel.org, linux-kernel@vger.kernel.org, linaro-mm-sig@lists.linaro.org, linux-mm@kvack.org
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH v3] kfence: Make test case compatible with run time set sample interval
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/5UBAOCS4VEFNFJ7R6N4YQQMRAWCKQZGH/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

On Mon, 7 Feb 2022 at 04:29, 'Peng Liu' via kasan-dev
<kasan-dev@googlegroups.com> wrote:
>
> The parameter kfence_sample_interval can be set via boot parameter
> and late shell command, which is convenient for automated tests and
> KFENCE parameter optimization. However, KFENCE test case just uses
> compile-time CONFIG_KFENCE_SAMPLE_INTERVAL, which will make KFENCE
> test case not run as users desired. Export kfence_sample_interval,
> so that KFENCE test case can use run-time-set sample interval.
>
> Signed-off-by: Peng Liu <liupeng256@huawei.com>

Reviewed-by: Marco Elver <elver@google.com>

Thank you.

> ---
> v2->v3:
> - Revise change log description
> v1->v2:
> - Use EXPORT_SYMBOL_GPL replace EXPORT_SYMBOL
>
>  include/linux/kfence.h  | 2 ++
>  mm/kfence/core.c        | 3 ++-
>  mm/kfence/kfence_test.c | 8 ++++----
>  3 files changed, 8 insertions(+), 5 deletions(-)
>
> diff --git a/include/linux/kfence.h b/include/linux/kfence.h
> index 4b5e3679a72c..f49e64222628 100644
> --- a/include/linux/kfence.h
> +++ b/include/linux/kfence.h
> @@ -17,6 +17,8 @@
>  #include <linux/atomic.h>
>  #include <linux/static_key.h>
>
> +extern unsigned long kfence_sample_interval;
> +
>  /*
>   * We allocate an even number of pages, as it simplifies calculations to map
>   * address to metadata indices; effectively, the very first page serves as an
> diff --git a/mm/kfence/core.c b/mm/kfence/core.c
> index 5ad40e3add45..13128fa13062 100644
> --- a/mm/kfence/core.c
> +++ b/mm/kfence/core.c
> @@ -47,7 +47,8 @@
>
>  static bool kfence_enabled __read_mostly;
>
> -static unsigned long kfence_sample_interval __read_mostly = CONFIG_KFENCE_SAMPLE_INTERVAL;
> +unsigned long kfence_sample_interval __read_mostly = CONFIG_KFENCE_SAMPLE_INTERVAL;
> +EXPORT_SYMBOL_GPL(kfence_sample_interval); /* Export for test modules. */
>
>  #ifdef MODULE_PARAM_PREFIX
>  #undef MODULE_PARAM_PREFIX
> diff --git a/mm/kfence/kfence_test.c b/mm/kfence/kfence_test.c
> index a22b1af85577..50dbb815a2a8 100644
> --- a/mm/kfence/kfence_test.c
> +++ b/mm/kfence/kfence_test.c
> @@ -268,13 +268,13 @@ static void *test_alloc(struct kunit *test, size_t size, gfp_t gfp, enum allocat
>          * 100x the sample interval should be more than enough to ensure we get
>          * a KFENCE allocation eventually.
>          */
> -       timeout = jiffies + msecs_to_jiffies(100 * CONFIG_KFENCE_SAMPLE_INTERVAL);
> +       timeout = jiffies + msecs_to_jiffies(100 * kfence_sample_interval);
>         /*
>          * Especially for non-preemption kernels, ensure the allocation-gate
>          * timer can catch up: after @resched_after, every failed allocation
>          * attempt yields, to ensure the allocation-gate timer is scheduled.
>          */
> -       resched_after = jiffies + msecs_to_jiffies(CONFIG_KFENCE_SAMPLE_INTERVAL);
> +       resched_after = jiffies + msecs_to_jiffies(kfence_sample_interval);
>         do {
>                 if (test_cache)
>                         alloc = kmem_cache_alloc(test_cache, gfp);
> @@ -608,7 +608,7 @@ static void test_gfpzero(struct kunit *test)
>         int i;
>
>         /* Skip if we think it'd take too long. */
> -       KFENCE_TEST_REQUIRES(test, CONFIG_KFENCE_SAMPLE_INTERVAL <= 100);
> +       KFENCE_TEST_REQUIRES(test, kfence_sample_interval <= 100);
>
>         setup_test_cache(test, size, 0, NULL);
>         buf1 = test_alloc(test, size, GFP_KERNEL, ALLOCATE_ANY);
> @@ -739,7 +739,7 @@ static void test_memcache_alloc_bulk(struct kunit *test)
>          * 100x the sample interval should be more than enough to ensure we get
>          * a KFENCE allocation eventually.
>          */
> -       timeout = jiffies + msecs_to_jiffies(100 * CONFIG_KFENCE_SAMPLE_INTERVAL);
> +       timeout = jiffies + msecs_to_jiffies(100 * kfence_sample_interval);
>         do {
>                 void *objects[100];
>                 int i, num = kmem_cache_alloc_bulk(test_cache, GFP_ATOMIC, ARRAY_SIZE(objects),
> --
> 2.18.0.huawei.25
>
> --
> You received this message because you are subscribed to the Google Groups "kasan-dev" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to kasan-dev+unsubscribe@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/kasan-dev/20220207034432.185532-1-liupeng256%40huawei.com.
_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org
