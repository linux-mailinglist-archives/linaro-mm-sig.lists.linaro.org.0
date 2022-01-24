Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 16EF84B647E
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 15 Feb 2022 08:39:06 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 49C28401CA
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 15 Feb 2022 07:39:05 +0000 (UTC)
Received: from mail-ot1-f54.google.com (mail-ot1-f54.google.com [209.85.210.54])
	by lists.linaro.org (Postfix) with ESMTPS id A95AB3ED68
	for <linaro-mm-sig@lists.linaro.org>; Mon, 24 Jan 2022 08:20:29 +0000 (UTC)
Received: by mail-ot1-f54.google.com with SMTP id v8-20020a9d6048000000b005960952c694so21163421otj.12
        for <linaro-mm-sig@lists.linaro.org>; Mon, 24 Jan 2022 00:20:29 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=google.com; s=20210112;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=Fe4pubot63aeTTcTlbwPRtQDcLp34onKse+sfKBfh3g=;
        b=hbC0p1HgxcZOO8c4bWIlLFPNxwvCGs6Ub4zMCdalps8HkcEOtggdMiekbyEPh6BfgO
         4uobjusmvFQj9LeEIgWb+tK8VZzkTQbdJg3hP/g+iEXPHcjv4rIUhbYxt+fJCq/5S7Vi
         oMuTLRyLsaqtbdEbkL0wBWIpQpgMJpvm+atEfWH+rpt50zQOIYrh/tU2xqe5t1nRbizp
         og7jrskWPDy65dLCj3eWex6wpg5E3BNSuplfpblwi6mf8pP16hdD8yqbb+833/0D7xew
         FQvVS34vXLTiIvNxMpFSFwhu5F9+m50cxLEn6saAs4oyrzq4K1VTO0PkpqRktNVzql6p
         et5g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=Fe4pubot63aeTTcTlbwPRtQDcLp34onKse+sfKBfh3g=;
        b=jcfB2fPQXYi4RD5Ad69TGPxeOY5L3Dnm96mHTuZKqSlw+twZ1Us83OZFroM16X81Fg
         Hjd5BojbZnKx2HeRr7AQfUovL0VzOkCGMncax5LQR3CUpwVsssoC4VzybwFtn2O04HWN
         13WwPtWDYM/J137MW1lsI4xFNyxEcCbxH3jMJ5BpX/zMaHf7/sY6audzVGdahqk9vy3I
         gBWZyZ5SzLt1GlnLxMAz3p338YBSLG6QDyaCfjwHdQR3kReLUHJc+Z7y+MOv1pMsuQz8
         RlTIo8PMwHP7tWMJ/cNQ0eZRmVqqOtiVIoMUd2bQGdnDHD1RlIsQ4MXdGG+s8ENAaDxb
         w7tA==
X-Gm-Message-State: AOAM533FVE8oTtBkOwBN6ZH2K4CuA+RK7C+4qHrmBIsR1oJn4ID05eCi
	535YRZdrRdARSVyEaT6wjNhWBp4GQxjPsfS3E0VcvQ==
X-Google-Smtp-Source: ABdhPJwOSQbPzFSjnMIC0k8eXN8NZWLSv40CjBpajvpNz8+4iCNlxNVEC0V+MQKJlFwrUD/QSe/IcXsddnFctH+E070=
X-Received: by 2002:a9d:7053:: with SMTP id x19mr10625205otj.196.1643012428642;
 Mon, 24 Jan 2022 00:20:28 -0800 (PST)
MIME-Version: 1.0
References: <20220124025205.329752-1-liupeng256@huawei.com> <20220124025205.329752-3-liupeng256@huawei.com>
In-Reply-To: <20220124025205.329752-3-liupeng256@huawei.com>
From: Marco Elver <elver@google.com>
Date: Mon, 24 Jan 2022 09:20:17 +0100
Message-ID: <CANpmjNNBt8LazZMLH2_6rFc8u3bVpPNNyetV0fqmanwB5DLZPQ@mail.gmail.com>
To: Peng Liu <liupeng256@huawei.com>
X-MailFrom: elver@google.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
Message-ID-Hash: UICOQHM3RUZ3VVND227MH3NJWO4OXKEX
X-Message-ID-Hash: UICOQHM3RUZ3VVND227MH3NJWO4OXKEX
X-Mailman-Approved-At: Tue, 15 Feb 2022 07:38:39 +0000
CC: glider@google.com, dvyukov@google.com, corbet@lwn.net, christian.koenig@amd.com, akpm@linux-foundation.org, kasan-dev@googlegroups.com, linux-doc@vger.kernel.org, linux-kernel@vger.kernel.org, linaro-mm-sig@lists.linaro.org, linux-mm@kvack.org
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH RFC 2/3] kfence: Optimize branches prediction when sample interval is zero
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/UICOQHM3RUZ3VVND227MH3NJWO4OXKEX/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

On Mon, 24 Jan 2022 at 03:37, Peng Liu <liupeng256@huawei.com> wrote:
>
> In order to release a uniform kernel with KFENCE, it is good to
> compile it with CONFIG_KFENCE_SAMPLE_INTERVAL = 0. For a group of
> produtions who don't want to use KFENCE, they can use kernel just
> as original vesion without KFENCE. For KFENCE users, they can open
> it by setting the kernel boot parameter kfence.sample_interval.
> Hence, set KFENCE sample interval default to zero is convenient.
>
> The current KFENCE is supportted to adjust sample interval via the
> kernel boot parameter. However, branches prediction in kfence_alloc
> is not good for situation with CONFIG_KFENCE_SAMPLE_INTERVAL = 0
> and boot parameter kfence.sample_interval != 0, which is because
> the current kfence_alloc is likely to return NULL when
> CONFIG_KFENCE_SAMPLE_INTERVAL = 0. To optimize branches prediction
> in this situation, kfence_enabled will check firstly.

This patch doesn't make any sense. You're adding an unconditional LOAD
to the fast path.

And the choice of static_branch_unlikely() if
CONFIG_KFENCE_SAMPLE_INTERVAL == 0 is very much deliberate, as it
generates code that is preferable in the common case (KFENCE is
disabled).

Please see include/linux/jump_label.h:430. But even then, CPUs are
very good at dealing with unconditional branches, so the difference
really is a wash.

But that new LOAD is not acceptable.

Sorry, but Nack.

> Signed-off-by: Peng Liu <liupeng256@huawei.com>
> ---
>  include/linux/kfence.h | 5 ++++-
>  mm/kfence/core.c       | 2 +-
>  2 files changed, 5 insertions(+), 2 deletions(-)
>
> diff --git a/include/linux/kfence.h b/include/linux/kfence.h
> index aec4f6b247b5..bf91b76b87ee 100644
> --- a/include/linux/kfence.h
> +++ b/include/linux/kfence.h
> @@ -17,6 +17,7 @@
>  #include <linux/atomic.h>
>  #include <linux/static_key.h>
>
> +extern bool kfence_enabled;
>  extern unsigned long kfence_num_objects;
>  /*
>   * We allocate an even number of pages, as it simplifies calculations to map
> @@ -115,7 +116,9 @@ void *__kfence_alloc(struct kmem_cache *s, size_t size, gfp_t flags);
>   */
>  static __always_inline void *kfence_alloc(struct kmem_cache *s, size_t size, gfp_t flags)
>  {
> -#if defined(CONFIG_KFENCE_STATIC_KEYS) || CONFIG_KFENCE_SAMPLE_INTERVAL == 0
> +       if (!kfence_enabled)
> +               return NULL;
> +#if defined(CONFIG_KFENCE_STATIC_KEYS)
>         if (!static_branch_unlikely(&kfence_allocation_key))
>                 return NULL;
>  #else
> diff --git a/mm/kfence/core.c b/mm/kfence/core.c
> index 4655bcc0306e..2301923182b8 100644
> --- a/mm/kfence/core.c
> +++ b/mm/kfence/core.c
> @@ -48,7 +48,7 @@
>
>  /* === Data ================================================================= */
>
> -static bool kfence_enabled __read_mostly;
> +bool kfence_enabled __read_mostly;
>
>  static unsigned long kfence_sample_interval __read_mostly = CONFIG_KFENCE_SAMPLE_INTERVAL;
>
> --
> 2.18.0.huawei.25
>
_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org
