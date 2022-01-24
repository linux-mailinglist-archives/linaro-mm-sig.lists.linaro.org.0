Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id E15B04B6481
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 15 Feb 2022 08:39:21 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 24E213EE1A
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 15 Feb 2022 07:39:21 +0000 (UTC)
Received: from mail-oi1-f170.google.com (mail-oi1-f170.google.com [209.85.167.170])
	by lists.linaro.org (Postfix) with ESMTPS id D14073ED75
	for <linaro-mm-sig@lists.linaro.org>; Mon, 24 Jan 2022 11:32:59 +0000 (UTC)
Received: by mail-oi1-f170.google.com with SMTP id bx18so24990013oib.7
        for <linaro-mm-sig@lists.linaro.org>; Mon, 24 Jan 2022 03:32:59 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=google.com; s=20210112;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=UFyEedV/4W7XdVLa8Lx8qnPyLjbWcIdiBACIonQnaII=;
        b=o+RNdaWxjWEA92fpqACsUfCdgaIpmDzO8dAclSEvH/U+3qWxfqG11kzJH8COMl2ICK
         CtkMuI0xi7S6VMinXQb+z5r0NS4zc9uFE0iWKLbIn5IdFiR8n1WbEFT+vNQKx3fa9RZ+
         aHjcXudb7GoKH/32gHKWYurC77SsIfsuGQx0LMufgaCs6QdKGdHWTiDVL+82Qae524Vn
         0IHBoCaAPzqfpCYtbDAGH9XIM5YnZfixxRs7P6VYudmBKdbJEP217pcU2RYJoGRm948q
         e4BAECeCDxkeIE+mcfR8CBWJcaCZVnYBFgkU+FM+a2ykrPKOYQ330zwZaZML5oXouUjH
         YxOg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=UFyEedV/4W7XdVLa8Lx8qnPyLjbWcIdiBACIonQnaII=;
        b=IToff9oEu0Q7SDsol7MH2Toagq6apChrjw/Xtb+t7GDy3TfAXDcHPuW/zs/H7eAdl+
         HrVjHkXjPQpXrQ3IpxrKnjdXKXCY5em6JzElZvc9fa4Qm8X+GCguu8Ut6YwX9r/kk4k9
         jWuaqgM9F+DagygmRaz7sLkeMfhrJoZcQD7NxmLS4tmhnbLoiUlbl0EDsGjyR8DNMfsj
         +BGgDeldgxHAlJhufmSDEI3CJFjr2LkkRfdHNBfvQkMWNDkqsAuX6/akrSYh7rZ2Z1v4
         kfKlmUqnDePf1dY0NkNlzx6zMcchP5wBDnwIlM6jeiJzbB0HmqV9FFJMOfdum49yUl8k
         3hXw==
X-Gm-Message-State: AOAM532oqlynGGbJJmW8FL46sZHsfm8tMoVOaz+ZDBdwcJhAdIDmUD3w
	sVKRfgqGaXVlS0AbzZLu6jmiRZFEQtKAIqJHC4NwUQ==
X-Google-Smtp-Source: ABdhPJwqjfmWmyfw51mBeC+dqdV1ap2DrEQedAJxR30CSgPvOqXNtQdb36OHY/owlaJwxdUFI/H7VbkQ/Oxz18yxWvQ=
X-Received: by 2002:a05:6808:120a:: with SMTP id a10mr980600oil.160.1643023977513;
 Mon, 24 Jan 2022 03:32:57 -0800 (PST)
MIME-Version: 1.0
References: <20220124025205.329752-1-liupeng256@huawei.com>
 <20220124025205.329752-2-liupeng256@huawei.com> <Ye5hKItk3j7arjaI@elver.google.com>
 <6eb16a68-9a56-7aea-3dd6-bd719a9ce700@huawei.com>
In-Reply-To: <6eb16a68-9a56-7aea-3dd6-bd719a9ce700@huawei.com>
From: Dmitry Vyukov <dvyukov@google.com>
Date: Mon, 24 Jan 2022 12:32:45 +0100
Message-ID: <CACT4Y+a86X+gH5aJ-o5ituc-+hysFOYBJ7ZvuC234xJnwANWvA@mail.gmail.com>
To: "liupeng (DM)" <liupeng256@huawei.com>
X-MailFrom: dvyukov@google.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
Message-ID-Hash: MVQG7UZG7CAKGNISOX5IC4CNRQULS7G3
X-Message-ID-Hash: MVQG7UZG7CAKGNISOX5IC4CNRQULS7G3
X-Mailman-Approved-At: Tue, 15 Feb 2022 07:38:45 +0000
CC: Marco Elver <elver@google.com>, glider@google.com, corbet@lwn.net, christian.koenig@amd.com, akpm@linux-foundation.org, kasan-dev@googlegroups.com, linux-doc@vger.kernel.org, linux-kernel@vger.kernel.org, linaro-mm-sig@lists.linaro.org, linux-mm@kvack.org
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH RFC 1/3] kfence: Add a module parameter to adjust kfence objects
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/MVQG7UZG7CAKGNISOX5IC4CNRQULS7G3/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

On Mon, 24 Jan 2022 at 12:24, liupeng (DM) <liupeng256@huawei.com> wrote:
>
>
> On 2022/1/24 16:19, Marco Elver wrote:
>
> On Mon, Jan 24, 2022 at 02:52AM +0000, Peng Liu wrote:
>
> KFENCE is designed to be enabled in production kernels, but it can
> be also useful in some debug situations. For machines with limited
> memory and CPU resources, KASAN is really hard to run. Fortunately,
>
> If these are arm64 based machines, see if CONFIG_KASAN_SW_TAGS works for
> you. In future, we believe that CONFIG_KASAN_HW_TAGS will be suitable
> for a variety of scenarios, including debugging scenarios of resource
> constrained environments.
>
> Thank you for your good suggestion, we will try it.
>
> KFENCE can be a suitable candidate. For KFENCE running on a single
> machine, the possibility of discovering existed bugs will increase
> as the increasing of KFENCE objects, but this will cost more memory.
> In order to balance the possibility of discovering existed bugs and
> memory cost, KFENCE objects need to be adjusted according to memory
> resources for a compiled kernel Image. Add a module parameter to
> adjust KFENCE objects will make kfence to use in different machines
> with the same kernel Image.
>
> In short, the following reasons motivate us to add this parameter.
> 1) In some debug situations, this will make kfence flexible.
> 2) For some production machines with different memory and CPU size,
> this will reduce the kernel-Image-version burden.
>
> [...]
>
> This patch (of 3):
>
> [ Note for future: No need to add "This patch (of X)" usually -- this is
>   added by maintainers if deemed appropriate, and usually includes the
>   cover letter. ]
>
> The most important motivation of this patch series is to make
> KFENCE easy-to-use in business situations.
>
> Signed-off-by: Peng Liu <liupeng256@huawei.com>
> ---
>  Documentation/dev-tools/kfence.rst |  14 ++--
>  include/linux/kfence.h             |   3 +-
>  mm/kfence/core.c                   | 108 ++++++++++++++++++++++++-----
>  mm/kfence/kfence.h                 |   2 +-
>  mm/kfence/kfence_test.c            |   2 +-
>  5 files changed, 103 insertions(+), 26 deletions(-)
>
> [...]
>
> diff --git a/include/linux/kfence.h b/include/linux/kfence.h
> index 4b5e3679a72c..aec4f6b247b5 100644
> --- a/include/linux/kfence.h
> +++ b/include/linux/kfence.h
> @@ -17,12 +17,13 @@
>  #include <linux/atomic.h>
>  #include <linux/static_key.h>
>
> +extern unsigned long kfence_num_objects;
>  /*
>   * We allocate an even number of pages, as it simplifies calculations to map
>   * address to metadata indices; effectively, the very first page serves as an
>   * extended guard page, but otherwise has no special purpose.
>   */
> -#define KFENCE_POOL_SIZE ((CONFIG_KFENCE_NUM_OBJECTS + 1) * 2 * PAGE_SIZE)
> +#define KFENCE_POOL_SIZE ((kfence_num_objects + 1) * 2 * PAGE_SIZE)
>  extern char *__kfence_pool;
>
> I appreciate the effort, but you could have gotten a quicker answer if
> you had first sent us an email to ask why adjustable number of objects
> hasn't been done before. Because if it was trivial, we would have
> already done it.
>
> What you've done is turned KFENCE_POOL_SIZE into a function instead of a
> constant (it still being ALL_CAPS is now also misleading).
>
> This is important here:
>
> /**
> * is_kfence_address() - check if an address belongs to KFENCE pool
> * @addr: address to check
> *
> * Return: true or false depending on whether the address is within the KFENCE
> * object range.
> *
> * KFENCE objects live in a separate page range and are not to be intermixed
> * with regular heap objects (e.g. KFENCE objects must never be added to the
> * allocator freelists). Failing to do so may and will result in heap
> * corruptions, therefore is_kfence_address() must be used to check whether
> * an object requires specific handling.
> *
> * Note: This function may be used in fast-paths, and is performance critical.
> * Future changes should take this into account; for instance, we want to avoid
> * introducing another load and therefore need to keep KFENCE_POOL_SIZE a
> * constant (until immediate patching support is added to the kernel).
> */
> static __always_inline bool is_kfence_address(const void *addr)
> {
> /*
> * The __kfence_pool != NULL check is required to deal with the case
> * where __kfence_pool == NULL && addr < KFENCE_POOL_SIZE. Keep it in
> * the slow-path after the range-check!
> */
> return unlikely((unsigned long)((char *)addr - __kfence_pool) < KFENCE_POOL_SIZE && __kfence_pool);
> }
>
> Unfortunately I think you missed the "Note".
>
> Which means that ultimately your patch adds another LOAD to the fast
> path, which is not an acceptable trade-off.
>
> This would mean your change would require benchmarking, but it'd also
> mean we and everyone else would have to re-benchmark _all_ systems where
> we've deployed KFENCE.
>
> I think the only reasonable way forward is if you add immediate patching
> support to the kernel as the "Note" suggests.
>
> May you give us more details about "immediate patching"?


Another option may be as follows:
Have a config for _max_ pool size. Always reserve max amount of
virtual address space, and do the range check for the max amount. But
actually allocate pages potentially for a smaller number of objects
(configured with a runtime parameter).


> In the meantime, while not a single kernel imagine, we've found that
> debug scenarios usually are best served with a custom debug kernel, as
> there are other debug features that are only Kconfig configurable. Thus,
> having a special debug kernel just configure KFENCE differently
> shouldn't be an issue in the majority of cases.
>
> Should this answer not be satisfying for you, the recently added feature
> skipping already covered allocations (configurable via
> kfence.skip_covered_thresh) alleviates some of the issue of a smaller
> pool with a very low sample interval (viz. high sample rate).
>
> The main thing to watch out for is KFENCE's actual sample rate vs
> intended sample rate (per kfence.sample_interval). If you monitor
> /sys/kernel/debug/kfence/stats, you can compute the actual sample rate.
> If the actual sample rate becomes significantly lower than the intended
> rate, only then does it make sense to increase the pool size. My
> suggestion for you is therefore to run some experiments, while adjusting
> kfence.sample_interval and kfence.skip_covered_thresh until you reach a
> sample rate that is close to intended.
>
> Thanks,
> -- Marco
> .
>
> Thank you for your patient suggestions, it's actually helpful and inspired.
> We have integrated your latest work "skipping already covered allocations",
> and will do more experiments about KFENCE. Finally, we really hope you can
> give us more introductions about "immediate patching".
>
> Thanks,
> -- Peng Liu
> .
_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org
