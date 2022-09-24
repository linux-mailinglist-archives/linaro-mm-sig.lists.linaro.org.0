Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 8FD575E89EE
	for <lists+linaro-mm-sig@lfdr.de>; Sat, 24 Sep 2022 10:15:37 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 9AD444048B
	for <lists+linaro-mm-sig@lfdr.de>; Sat, 24 Sep 2022 08:15:36 +0000 (UTC)
Received: from mail-lj1-f174.google.com (mail-lj1-f174.google.com [209.85.208.174])
	by lists.linaro.org (Postfix) with ESMTPS id D2D1C3F990
	for <linaro-mm-sig@lists.linaro.org>; Sat, 24 Sep 2022 08:15:30 +0000 (UTC)
Received: by mail-lj1-f174.google.com with SMTP id h3so2357925lja.1
        for <linaro-mm-sig@lists.linaro.org>; Sat, 24 Sep 2022 01:15:30 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=google.com; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date;
        bh=nQomz4ut+7sjfQrrU1jIFAnyWatFfjECi53D3yczEIE=;
        b=KI9bvqb1+pvOBd4LUHBVRiy4ZY0slRCTRZZlpbG/wkf5BfzAwgC4tzlqpiFF6oyV8H
         D7v79qgnbhBTO6d2uDyYHRhhdOOhBfa6EEXzsR1OAGK0jLsPlfD7cA9BCk+dEYTkPA3D
         wWtwWaAoPO0/uTRDdef7+H6/fPQ584Q/+VF22lUeYetTvqY4NLRzWkfcrMuUKAwvI8Ur
         HORX0nTGI2VWAa2VLCpjSTjWJtDJGVfm/4NoDwUwRQY3sCzLDgDtibX9udsLmyhZz/Ab
         UsteBe0vnTvVHno/YLL9xbDupvnLo0yMlhWvaVPU8HJaxwp4Vvg2Oz/Cql9apCVP7xpg
         yn0g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date;
        bh=nQomz4ut+7sjfQrrU1jIFAnyWatFfjECi53D3yczEIE=;
        b=Ts3aCgqqecWHhioea6oR2GE70bXtzRd+BVAH1Gs4lStLwvBQlqHAd5svr8yqGpHxjG
         PX19+TCfXKV5q2Hjs867w92Z37+Jv9wuebZfLzKT2w0z6Zq3fkfxacxZK3StSBc0uH30
         C3RiFbFMMFUVvkIcjxXv6xJgsUsINb4T+yQtsiaERTEnH1uLquaM1ohqfp9/dOdNuqzL
         QHmVIZHthC4Tgz0eOZE6opUDbT6n1+AvuJCX7q73M3PeK7SD9sa0OR6veVtnSpbOseRS
         mM/HEhUCrrE/QoEJStJseg4j+wsmclIIl0wYtCQL3Ku9bI8OSyrIBH1LRIVvPHekAsc9
         o9cA==
X-Gm-Message-State: ACrzQf18M5Oy3l8v57Y1zW1Ae0MH8WHx8JnzYWarBwv1wGZCR+kvfmOO
	xN4KkxBtKWEbUAjwBScgoSnme7KnXADBFT44Vl3iAA==
X-Google-Smtp-Source: AMsMyM51jSACu0ueivCRHFSALnMRIGDYekDLNBr6hGK18mYNepOD+DBZDwtrPTKiiVk4AIl/66dQQBc8ZJ/gjsu15yk=
X-Received: by 2002:a2e:be8d:0:b0:26c:f4b:47a0 with SMTP id
 a13-20020a2ebe8d000000b0026c0f4b47a0mr4030821ljr.92.1664007329396; Sat, 24
 Sep 2022 01:15:29 -0700 (PDT)
MIME-Version: 1.0
References: <20220923202822.2667581-1-keescook@chromium.org> <20220923202822.2667581-15-keescook@chromium.org>
In-Reply-To: <20220923202822.2667581-15-keescook@chromium.org>
From: Dmitry Vyukov <dvyukov@google.com>
Date: Sat, 24 Sep 2022 10:15:18 +0200
Message-ID: <CACT4Y+bg=j9VdteQwrJTNFF_t4EE5uDTMLj07+uMJ9-NcooXGQ@mail.gmail.com>
To: Kees Cook <keescook@chromium.org>
Message-ID-Hash: BYMA3P666ZNCXZ3ARVXGEYSDP257J55J
X-Message-ID-Hash: BYMA3P666ZNCXZ3ARVXGEYSDP257J55J
X-MailFrom: dvyukov@google.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: Vlastimil Babka <vbabka@suse.cz>, Andrey Ryabinin <ryabinin.a.a@gmail.com>, Alexander Potapenko <glider@google.com>, Andrey Konovalov <andreyknvl@gmail.com>, Vincenzo Frascino <vincenzo.frascino@arm.com>, Andrew Morton <akpm@linux-foundation.org>, kasan-dev@googlegroups.com, linux-mm@kvack.org, "Ruhl, Michael J" <michael.j.ruhl@intel.com>, Hyeonggon Yoo <42.hyeyoo@gmail.com>, Christoph Lameter <cl@linux.com>, Pekka Enberg <penberg@kernel.org>, David Rientjes <rientjes@google.com>, Joonsoo Kim <iamjoonsoo.kim@lge.com>, "David S. Miller" <davem@davemloft.net>, Eric Dumazet <edumazet@google.com>, Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>, Greg Kroah-Hartman <gregkh@linuxfoundation.org>, Nick Desaulniers <ndesaulniers@google.com>, Alex Elder <elder@kernel.org>, Josef Bacik <josef@toxicpanda.com>, David Sterba <dsterba@suse.com>, Sumit Semwal <sumit.semwal@linaro.org>, =?UTF-8?Q?Christian_K=C3=B6nig?= <christian.koenig@amd.com>, Jesse Brandeburg <jesse.brandebu
 rg@intel.com>, Daniel Micay <danielmicay@gmail.com>, Yonghong Song <yhs@fb.com>, Marco Elver <elver@google.com>, Miguel Ojeda <ojeda@kernel.org>, linux-kernel@vger.kernel.org, netdev@vger.kernel.org, linux-btrfs@vger.kernel.org, linux-media@vger.kernel.org, dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org, linux-fsdevel@vger.kernel.org, intel-wired-lan@lists.osuosl.org, dev@openvswitch.org, x86@kernel.org, llvm@lists.linux.dev, linux-hardening@vger.kernel.org
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH v2 14/16] kasan: Remove ksize()-related tests
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/BYMA3P666ZNCXZ3ARVXGEYSDP257J55J/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

On Fri, 23 Sept 2022 at 22:28, Kees Cook <keescook@chromium.org> wrote:
>
> In preparation for no longer unpoisoning in ksize(), remove the behavioral
> self-tests for ksize().
>
> Cc: Andrey Ryabinin <ryabinin.a.a@gmail.com>
> Cc: Alexander Potapenko <glider@google.com>
> Cc: Andrey Konovalov <andreyknvl@gmail.com>
> Cc: Dmitry Vyukov <dvyukov@google.com>
> Cc: Vincenzo Frascino <vincenzo.frascino@arm.com>
> Cc: Andrew Morton <akpm@linux-foundation.org>
> Cc: kasan-dev@googlegroups.com
> Cc: linux-mm@kvack.org
> Signed-off-by: Kees Cook <keescook@chromium.org>
> ---
>  lib/test_kasan.c  | 42 ------------------------------------------
>  mm/kasan/shadow.c |  4 +---
>  2 files changed, 1 insertion(+), 45 deletions(-)
>
> diff --git a/lib/test_kasan.c b/lib/test_kasan.c
> index 58c1b01ccfe2..bdd0ced8f8d7 100644
> --- a/lib/test_kasan.c
> +++ b/lib/test_kasan.c
> @@ -753,46 +753,6 @@ static void kasan_global_oob_left(struct kunit *test)
>         KUNIT_EXPECT_KASAN_FAIL(test, *(volatile char *)p);
>  }
>
> -/* Check that ksize() makes the whole object accessible. */
> -static void ksize_unpoisons_memory(struct kunit *test)
> -{
> -       char *ptr;
> -       size_t size = 123, real_size;
> -
> -       ptr = kmalloc(size, GFP_KERNEL);
> -       KUNIT_ASSERT_NOT_ERR_OR_NULL(test, ptr);
> -       real_size = ksize(ptr);
> -
> -       OPTIMIZER_HIDE_VAR(ptr);
> -
> -       /* This access shouldn't trigger a KASAN report. */
 > -       ptr[size] = 'x';

I would rather keep the tests and update to the new behavior. We had
bugs in ksize, we need test coverage.
I assume ptr[size] access must now produce an error even after ksize.


> -       /* This one must. */
> -       KUNIT_EXPECT_KASAN_FAIL(test, ((volatile char *)ptr)[real_size]);
> -
> -       kfree(ptr);
> -}
> -
> -/*
> - * Check that a use-after-free is detected by ksize() and via normal accesses
> - * after it.
> - */
> -static void ksize_uaf(struct kunit *test)
> -{
> -       char *ptr;
> -       int size = 128 - KASAN_GRANULE_SIZE;
> -
> -       ptr = kmalloc(size, GFP_KERNEL);
> -       KUNIT_ASSERT_NOT_ERR_OR_NULL(test, ptr);
> -       kfree(ptr);
> -
> -       OPTIMIZER_HIDE_VAR(ptr);
> -       KUNIT_EXPECT_KASAN_FAIL(test, ksize(ptr));

This is still a bug that should be detected, right? Calling ksize on a
freed pointer is a bug.

> -       KUNIT_EXPECT_KASAN_FAIL(test, ((volatile char *)ptr)[0]);
> -       KUNIT_EXPECT_KASAN_FAIL(test, ((volatile char *)ptr)[size]);
> -}
> -
>  static void kasan_stack_oob(struct kunit *test)
>  {
>         char stack_array[10];
> @@ -1392,8 +1352,6 @@ static struct kunit_case kasan_kunit_test_cases[] = {
>         KUNIT_CASE(kasan_stack_oob),
>         KUNIT_CASE(kasan_alloca_oob_left),
>         KUNIT_CASE(kasan_alloca_oob_right),
> -       KUNIT_CASE(ksize_unpoisons_memory),
> -       KUNIT_CASE(ksize_uaf),
>         KUNIT_CASE(kmem_cache_double_free),
>         KUNIT_CASE(kmem_cache_invalid_free),
>         KUNIT_CASE(kmem_cache_double_destroy),
> diff --git a/mm/kasan/shadow.c b/mm/kasan/shadow.c
> index 0e3648b603a6..0895c73e9b69 100644
> --- a/mm/kasan/shadow.c
> +++ b/mm/kasan/shadow.c
> @@ -124,9 +124,7 @@ void kasan_unpoison(const void *addr, size_t size, bool init)
>         addr = kasan_reset_tag(addr);
>
>         /*
> -        * Skip KFENCE memory if called explicitly outside of sl*b. Also note
> -        * that calls to ksize(), where size is not a multiple of machine-word
> -        * size, would otherwise poison the invalid portion of the word.
> +        * Skip KFENCE memory if called explicitly outside of sl*b.
>          */
>         if (is_kfence_address(addr))
>                 return;
> --
> 2.34.1
_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org
