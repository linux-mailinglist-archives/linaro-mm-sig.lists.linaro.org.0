Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 19D86604DC5
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 19 Oct 2022 18:51:51 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 2311E3EF53
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 19 Oct 2022 16:51:50 +0000 (UTC)
Received: from mail-io1-f51.google.com (mail-io1-f51.google.com [209.85.166.51])
	by lists.linaro.org (Postfix) with ESMTPS id 0941F3EBA6
	for <linaro-mm-sig@lists.linaro.org>; Thu, 22 Sep 2022 09:23:58 +0000 (UTC)
Received: by mail-io1-f51.google.com with SMTP id b23so7201601iof.2
        for <linaro-mm-sig@lists.linaro.org>; Thu, 22 Sep 2022 02:23:58 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date;
        bh=eq1ulTtXYhBmIV3Hec+MzaFRLDXw1vSRF6+bOMmPhJ4=;
        b=bE2W6qfxPeZ5hG8th9HBte8uWTQjYuCcr36yI1hhiheOM64/zofTi1amyoUC/YRb+J
         NgesQGAjTL00GMSehk4Np33KVgoKvpm/Mh3RSzMdF+EkL5Y4k9K6GB3q17DXyKsUm/6E
         tSUleWEaIUryrEiqLEE56d9SYCS/YFMrs6gU37f7Pqu7tr26K2zmBNy6tAGoGVxQ5f+n
         DlMD1/oSQBrQp/QHyG7CgFktY+50H+Wm33tTFaH8FxMf0iDQdWTe9OU6Ok7FDH/xYrVm
         +Y17qm2jbLBl43Ckz4h9g/NlAB7oNcZMDPJUHArvKPR8Jrr0Y7Jjk4kBCdA2lo60DN3B
         Aphg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date;
        bh=eq1ulTtXYhBmIV3Hec+MzaFRLDXw1vSRF6+bOMmPhJ4=;
        b=ZbGhLZVCmvTTw6JoVZQ03wSFDdFKxnzog/o0+G5TmiR5qVfkzy7g9KX3ozPvxBUpwS
         0gBI8fe6p6yWl41dL5K8x8uu5gHLZC4tc75epppAKqh2DrVd3Bgj4GU3wa+mKVLGPJlw
         8OoyBiGWaSyzR1uXxH5/8b4xIwKymYMGiDWNk+EEwKKlLbaexfqf1jDM4nRu7z3R7h8E
         vMH+n1oKRHjANd7dPx1Tqm311ayW+l8zRgsWRGYBXB1VM47jGbOG0qFLUYHxSCfArV1U
         wepSpUfiJahXIX+SXo4I7r2A9wE+Ny3jruR4BIVj5PWIhLt9rGQZNpBvCLtVhCDv9nlc
         aHKg==
X-Gm-Message-State: ACrzQf3oZ7+UH4G3GMNlEmOOggbt049jTOttO9uJ6g6W8noZdSg2bj5N
	P89C+s4qclRRKUmZ7r/elukI39u0Sjok8c4W3RM=
X-Google-Smtp-Source: AMsMyM4VmAwcaT5Lc+Ww++2Y7GpjHXOf8JO1cC9hLR1vHps4lN+vAXggqFNSedolxw1DncuzKFlDGIHvcmXTBzRY/kM=
X-Received: by 2002:a05:6638:dcc:b0:35a:7ba6:ad51 with SMTP id
 m12-20020a0566380dcc00b0035a7ba6ad51mr1404409jaj.256.1663838637536; Thu, 22
 Sep 2022 02:23:57 -0700 (PDT)
MIME-Version: 1.0
References: <20220922031013.2150682-1-keescook@chromium.org> <20220922031013.2150682-12-keescook@chromium.org>
In-Reply-To: <20220922031013.2150682-12-keescook@chromium.org>
From: Miguel Ojeda <miguel.ojeda.sandonis@gmail.com>
Date: Thu, 22 Sep 2022 11:23:46 +0200
Message-ID: <CANiq72=m9VngFH9jE3s0RV7MpjX0a=ekJN4pZwcDksBkSRR_1w@mail.gmail.com>
To: Kees Cook <keescook@chromium.org>
X-MailFrom: miguel.ojeda.sandonis@gmail.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
Message-ID-Hash: VT45DITSBIB6PPTPOYT6MNVYLZFDBPUR
X-Message-ID-Hash: VT45DITSBIB6PPTPOYT6MNVYLZFDBPUR
X-Mailman-Approved-At: Wed, 19 Oct 2022 16:51:21 +0000
CC: Vlastimil Babka <vbabka@suse.cz>, Pekka Enberg <penberg@kernel.org>, David Rientjes <rientjes@google.com>, Joonsoo Kim <iamjoonsoo.kim@lge.com>, Andrew Morton <akpm@linux-foundation.org>, Nick Desaulniers <ndesaulniers@google.com>, Hao Luo <haoluo@google.com>, Marco Elver <elver@google.com>, linux-mm@kvack.org, "David S. Miller" <davem@davemloft.net>, Eric Dumazet <edumazet@google.com>, Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>, Greg Kroah-Hartman <gregkh@linuxfoundation.org>, Alex Elder <elder@kernel.org>, Josef Bacik <josef@toxicpanda.com>, David Sterba <dsterba@suse.com>, Sumit Semwal <sumit.semwal@linaro.org>, =?UTF-8?Q?Christian_K=C3=B6nig?= <christian.koenig@amd.com>, Jesse Brandeburg <jesse.brandeburg@intel.com>, Daniel Micay <danielmicay@gmail.com>, Yonghong Song <yhs@fb.com>, Miguel Ojeda <ojeda@kernel.org>, Jacob Shin <jacob.shin@amd.com>, linux-kernel@vger.kernel.org, netdev@vger.kernel.org, linux-btrfs@vger.kernel.org, linux-media@vger.kernel.o
 rg, dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org, linux-fsdevel@vger.kernel.org, intel-wired-lan@lists.osuosl.org, dev@openvswitch.org, x86@kernel.org, linux-wireless@vger.kernel.org, llvm@lists.linux.dev, linux-hardening@vger.kernel.org
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH 11/12] slab: Remove __malloc attribute from realloc functions
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/VT45DITSBIB6PPTPOYT6MNVYLZFDBPUR/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

On Thu, Sep 22, 2022 at 5:10 AM Kees Cook <keescook@chromium.org> wrote:
>
> -#ifdef __alloc_size__
> -# define __alloc_size(x, ...)  __alloc_size__(x, ## __VA_ARGS__) __malloc
> -#else
> -# define __alloc_size(x, ...)  __malloc
> -#endif
> +#define __alloc_size(x, ...)   __alloc_size__(x, ## __VA_ARGS__) __malloc
> +#define __realloc_size(x, ...) __alloc_size__(x, ## __VA_ARGS__)

These look unconditional now, so we could move it to
`compiler_attributes.h` in a later patch (or an independent series).

Cheers,
Miguel
_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org
