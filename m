Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 296634B6B3D
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 15 Feb 2022 12:35:02 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 61BDE3EE89
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 15 Feb 2022 11:35:01 +0000 (UTC)
Received: from mail-oi1-f179.google.com (mail-oi1-f179.google.com [209.85.167.179])
	by lists.linaro.org (Postfix) with ESMTPS id 3F4F73ECD1
	for <linaro-mm-sig@lists.linaro.org>; Fri, 28 Jan 2022 09:49:47 +0000 (UTC)
Received: by mail-oi1-f179.google.com with SMTP id g205so11311914oif.5
        for <linaro-mm-sig@lists.linaro.org>; Fri, 28 Jan 2022 01:49:47 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=google.com; s=20210112;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=KD2MpvTo6d8AcZYWRzGbZANNSm7u8StOzxLlvpWuXTM=;
        b=FQzQLz7w2uSqyOzFrdxgHPBSvl26iWOThEOJaHmMYuIVXnVQEgZKxZ5U4FWsJLPY0S
         X4XEZ3XJtyt2Hk0VsyZfdJ30dA7SvjN3AZ6QJ5l2DCpTYfQZdDb00FoHJas4xqHE0lRE
         0aOu4PtW8jL1ggLGdgMydU0uN8yXsBv5qOCviu2tDu4MBCNuiYhhW2oNdiW+QnjMy/jj
         n0QqnYbHvV7RJUVwZjDX/6vTmFpoGsgkRhHiXwqRvFc9HrnyEWmxuljZgaze8tC1AAWV
         PphyuKKG98JeSBtMcyM/5mPLxi2zPXe7nksv2nZa2qvYzpBK/MYoW2Y1GSzKRDWMxGWk
         itVQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=KD2MpvTo6d8AcZYWRzGbZANNSm7u8StOzxLlvpWuXTM=;
        b=r6bsasXkXW0ZcWIh0n0PPEVQ7L00aC34RC2mbIucgmMXiyk0JR1PT6LtzoDFcA3N3T
         CJT1NUuImGko2N4cH68LH74u4jBawpiRXN2bs834oHiy12aNBhIZNzSImID7wuwzbgQW
         zsDNmBDSJPbuPDV1//Rx+6v8ftMTiLvX3fr5Xco33mKBROFef9+VC8KTPDzkY4DE0kQz
         mq4nqjhzmKHWihmIJ8kDreCt6tip/9W5jSTCB/5jSjTDe0jz72bcmDEjvN4We/IumMVZ
         zqwphQhvMwz5AzwBx1516DJPt/dgHP86ci1T5wqXBdke/TCOtix0SsSnxOA5uxfFBi9j
         5vcQ==
X-Gm-Message-State: AOAM530gBjXVy2r02G6nNd4Nha9YYSzpN+xYA6DikX0ZGCxiHEEd4bIW
	pHKTho+RvGlgH7QWiZYg2y2co2Hfisf2EIDZvPvcaA==
X-Google-Smtp-Source: ABdhPJxKbcqfZUb1crg7oqDeoxOAlqqsIMh8sFoswaBdoHmg/9J3J8aMcSu3WBha2OvAdhq+y7Y7sjYIrLFdQDgLj1w=
X-Received: by 2002:a05:6808:1901:: with SMTP id bf1mr5020470oib.197.1643363386387;
 Fri, 28 Jan 2022 01:49:46 -0800 (PST)
MIME-Version: 1.0
References: <20220128015752.931256-1-liupeng256@huawei.com>
In-Reply-To: <20220128015752.931256-1-liupeng256@huawei.com>
From: Marco Elver <elver@google.com>
Date: Fri, 28 Jan 2022 10:49:34 +0100
Message-ID: <CANpmjNP+J-Ztz_sov0LPXS8nGCf-2oJFs0OJp1LQMBeaL00CBQ@mail.gmail.com>
To: Peng Liu <liupeng256@huawei.com>
X-MailFrom: elver@google.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
Message-ID-Hash: VI4LFFP4LPQOBA2XHASEFFMZHOCBMZYL
X-Message-ID-Hash: VI4LFFP4LPQOBA2XHASEFFMZHOCBMZYL
X-Mailman-Approved-At: Tue, 15 Feb 2022 11:33:45 +0000
CC: glider@google.com, dvyukov@google.com, corbet@lwn.net, christian.koenig@amd.com, akpm@linux-foundation.org, kasan-dev@googlegroups.com, linux-doc@vger.kernel.org, linux-kernel@vger.kernel.org, linaro-mm-sig@lists.linaro.org, linux-mm@kvack.org
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH v2] kfence: Make test case compatible with run time set sample interval
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/VI4LFFP4LPQOBA2XHASEFFMZHOCBMZYL/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

On Fri, 28 Jan 2022 at 02:41, Peng Liu <liupeng256@huawei.com> wrote:
> The parameter kfence_sample_interval can be set via boot parameter
> and late shell command, which is convenient for automatical tests

s/automatical/automated/

> and KFENCE parameter optimation. However, KFENCE test case just use

s/optimation/optimization/

> compile time CONFIG_KFENCE_SAMPLE_INTERVAL, this will make KFENCE
> test case not run as user desired. This patch will make KFENCE test
> case compatible with run-time-set sample interval.

I'm not too particular about it, but "This patch" is usually bad style:
https://www.kernel.org/doc/html/latest/process/submitting-patches.html#describe-your-changes

> v1->v2:
> - Use EXPORT_SYMBOL_GPL replace EXPORT_SYMBOL

Changelog is usually placed after '---', because it's mostly redundant
once committed. Often maintainers include a "Link" to the original
patch which then has history and discussion.

> Signed-off-by: Peng Liu <liupeng256@huawei.com>

Reviewed-by: Marco Elver <elver@google.com>


> ---
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
_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org
