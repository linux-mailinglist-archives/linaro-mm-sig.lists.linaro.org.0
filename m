Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id D152F604DD1
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 19 Oct 2022 18:53:38 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id B51263F48D
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 19 Oct 2022 16:53:37 +0000 (UTC)
Received: from mail-il1-f174.google.com (mail-il1-f174.google.com [209.85.166.174])
	by lists.linaro.org (Postfix) with ESMTPS id 1B8473F549
	for <linaro-mm-sig@lists.linaro.org>; Thu, 22 Sep 2022 17:41:19 +0000 (UTC)
Received: by mail-il1-f174.google.com with SMTP id d14so4205985ilf.2
        for <linaro-mm-sig@lists.linaro.org>; Thu, 22 Sep 2022 10:41:19 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date;
        bh=AsxpWsr5dzcIncNfx/+Sw1HyEwfMiBKVAKBEW7wNeQA=;
        b=HG1BCa9aD7EruuXSP8vfBpl2xSAcB9NgvDE4n3t4WegezK8iPhrhfTbs3Xxfdxp/aP
         0j4XfOQ90rYJJLxvR5Fxutq+CKSR+3NwG5g3gHNWC0rGeSJkCPwM1qeiyt5MoX9kie1E
         Ogc+09wvN660uSYqTrtW/DY7BHEKikOuBqjuMNkdFuICid58Qmi9sfyROy/V1LgkIpE7
         e2Nv1gEo4Vp0GQpWl3bRqM1059jceqcIcZbW6os/ZnPJ8J1PnWKNgSi8e2+WYP/WJpYk
         +8abyMsCFGIX1fgDuD8Pv5kCGUDjVFxUFNtnD5auEWqa0LNmLWv9bnrrUipYT443cCtB
         +LNg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date;
        bh=AsxpWsr5dzcIncNfx/+Sw1HyEwfMiBKVAKBEW7wNeQA=;
        b=HKD8Cae1tKamf1+IO8lfVs/X2NWRsqzvh7LhSbS/GskQ/oJm0yuJXALDUZir1HYh3v
         2gSJCsmROZzIwkHMae34dgES09m5qAtaQupS4rPpGCMpIZoyRQcEysrh6PChXrSa13x1
         BlJ/mQw4T5Gnti7ehA4oMclRoCYsr2k9xTMVNQ12KlTlD8GfGeG9yPyI5mUbJsM7g/j5
         DVPSW91kOfXpzW8ZCsfWV2DttD/ndA7sNtEoJM4SIHMb7fbrjfC6plGlVSysWmIql/+c
         Ei3PySnoirPicUpALoaMc0E7zI608798+8KciJxkFBMzMdmCRve6nO0IVAsuT5LPJE19
         Qlqw==
X-Gm-Message-State: ACrzQf0rVqs+gZoFMy2TK8tz9bW3D5Uft6vd7LzzCI7pECa7EpMsGv5t
	VGAB+xJeIjl8Pov42ehpyWDrz7dttH+BfkvCIkg=
X-Google-Smtp-Source: AMsMyM5Iawxjt3SoOGTNllk8NVk3tyvcsl1U/lS7sz1j/GB7JoPgBuMEGvT0T6zJ1tbupUccXP7nLvzrv1dgRwQijjQ=
X-Received: by 2002:a05:6e02:152a:b0:2f6:58ae:ff0c with SMTP id
 i10-20020a056e02152a00b002f658aeff0cmr2429401ilu.237.1663868478589; Thu, 22
 Sep 2022 10:41:18 -0700 (PDT)
MIME-Version: 1.0
References: <20220922031013.2150682-1-keescook@chromium.org>
 <20220922031013.2150682-12-keescook@chromium.org> <CANiq72=m9VngFH9jE3s0RV7MpjX0a=ekJN4pZwcDksBkSRR_1w@mail.gmail.com>
 <202209220855.B8DA16E@keescook>
In-Reply-To: <202209220855.B8DA16E@keescook>
From: Miguel Ojeda <miguel.ojeda.sandonis@gmail.com>
Date: Thu, 22 Sep 2022 19:41:07 +0200
Message-ID: <CANiq72=unhDJOGTg+ja4UdVRp8sG7Wc+_rqQhvJideA=WNjbFA@mail.gmail.com>
To: Kees Cook <keescook@chromium.org>
X-MailFrom: miguel.ojeda.sandonis@gmail.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
Message-ID-Hash: ZK5UIHH44ZZRLYJFQK6AQFBBJB3QWHJR
X-Message-ID-Hash: ZK5UIHH44ZZRLYJFQK6AQFBBJB3QWHJR
X-Mailman-Approved-At: Wed, 19 Oct 2022 16:52:27 +0000
CC: Vlastimil Babka <vbabka@suse.cz>, Pekka Enberg <penberg@kernel.org>, David Rientjes <rientjes@google.com>, Joonsoo Kim <iamjoonsoo.kim@lge.com>, Andrew Morton <akpm@linux-foundation.org>, Nick Desaulniers <ndesaulniers@google.com>, Hao Luo <haoluo@google.com>, Marco Elver <elver@google.com>, linux-mm@kvack.org, "David S. Miller" <davem@davemloft.net>, Eric Dumazet <edumazet@google.com>, Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>, Greg Kroah-Hartman <gregkh@linuxfoundation.org>, Alex Elder <elder@kernel.org>, Josef Bacik <josef@toxicpanda.com>, David Sterba <dsterba@suse.com>, Sumit Semwal <sumit.semwal@linaro.org>, =?UTF-8?Q?Christian_K=C3=B6nig?= <christian.koenig@amd.com>, Jesse Brandeburg <jesse.brandeburg@intel.com>, Daniel Micay <danielmicay@gmail.com>, Yonghong Song <yhs@fb.com>, Miguel Ojeda <ojeda@kernel.org>, Feng Tang <feng.tang@intel.com>, linux-kernel@vger.kernel.org, netdev@vger.kernel.org, linux-btrfs@vger.kernel.org, linux-media@vger.kernel.o
 rg, dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org, linux-fsdevel@vger.kernel.org, intel-wired-lan@lists.osuosl.org, dev@openvswitch.org, x86@kernel.org, linux-wireless@vger.kernel.org, llvm@lists.linux.dev, linux-hardening@vger.kernel.org
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH 11/12] slab: Remove __malloc attribute from realloc functions
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/ZK5UIHH44ZZRLYJFQK6AQFBBJB3QWHJR/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

On Thu, Sep 22, 2022 at 5:56 PM Kees Cook <keescook@chromium.org> wrote:
>
> I wasn't sure if this "composite macro" was sane there, especially since
> it would be using __malloc before it was defined, etc. Would you prefer
> I move it?

Hmm... On one hand, they end up being attributes, so it could make
sense to have them there (after all, the big advantage of that header
is that there is no `#ifdef` nest like in others, and that it is only
for attributes).

On the other hand, you are right that the file so far is intended to
be as simple as possible (`__always_inline` having an extra `inline`
and `fallthrough` would be closest outliers), so if we do it, I would
prefer to do so in an independent series that carries its own rationale.

So I would leave the patch as it is here.

Cheers,
Miguel
_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org
