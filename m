Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 946BE4EC4AB
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 30 Mar 2022 14:42:17 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id CABB53EC7E
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 30 Mar 2022 12:42:16 +0000 (UTC)
Received: from mail-ed1-f46.google.com (mail-ed1-f46.google.com [209.85.208.46])
	by lists.linaro.org (Postfix) with ESMTPS id DF60B3ECAA
	for <linaro-mm-sig@lists.linaro.org>; Mon, 28 Mar 2022 20:39:14 +0000 (UTC)
Received: by mail-ed1-f46.google.com with SMTP id h4so10570853edr.3
        for <linaro-mm-sig@lists.linaro.org>; Mon, 28 Mar 2022 13:39:14 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=xw6/eHXGYfyQo41MlHn2HdfwjJIHINXKEO94qSppq28=;
        b=b9iImZGKfs3WXC8l0oFuFZaIT4EL8lWv990T7tzJDZ/JCoZfmiHuaQdc0wBbjADKgP
         pz9RoVFnLZtDqu7juxQR8eaS+NrrHwSFtVfQnijQAPH7NQqVwEKLMFwF6KCJnha01cku
         ZjxUGFM7SRxzSdQ05IFVG9EOK7WDaJ/nAVrd++ogw+D7GI52yQ4rkQ7SdzBX+DjMEH+o
         A1nKxj05unPlW0bLqxImCIf4qHc+PnsNdSxmO/Vak6uZtNRINsHJxAVyoY8TDxEFTy/w
         NGcv1jpMb8yBJGbzyXpIApg/IrNqwllJ310kyJZd3kogLQT8ziLRofCJhNUjSmwSm2Jk
         pdBA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=xw6/eHXGYfyQo41MlHn2HdfwjJIHINXKEO94qSppq28=;
        b=Lp1Wrz/tsyVl+c13a6f8UpDU+3ssEf2GNUuuOhlTIDiGpaJWTiVbm9BkQz5T2MfOou
         IDTcSpP4QZ4+ZLdMdHZkGvpayW4XZm8/J5glKSUQhUXhhGSkOMhH49CRI386+CY8hhf/
         +25WVT20f9/ZaGP/u19n/VbEdPxs96DExtM1g6QTEVrShOM8kOScIW2dSSO3ZizUPmFV
         0fSDUvsQsvxRYGnrKdoKRa0dWSjnzsdWvc5LJn+rPHF5pMYBNhn00y/xYJuAnHAKOl0r
         OQFBzITbGDA3MPffcGqhmf3Gw85nS1Xa7JpVRQYRSrm4kEKX8h1GBtKvcKDL+60DYt/J
         2jCA==
X-Gm-Message-State: AOAM530G4Uazbv2d8jaZMvL2O02aMnIUedkag1oJAwiPA1svkWNdUEpg
	W50KrXKGLOjvx4ueEa+59elvcLU8obe0U/m0YfY=
X-Google-Smtp-Source: ABdhPJxNcNGSt0E34cJpbJ65P1lTtbFVtcXgaCXAMxqv38Y+bWSTAANcprjUbbcH+2VeLvdVtVd+xFb4arFR+965IIg=
X-Received: by 2002:a05:6402:27d1:b0:419:1b02:4a04 with SMTP id
 c17-20020a05640227d100b004191b024a04mr18437384ede.218.1648499953845; Mon, 28
 Mar 2022 13:39:13 -0700 (PDT)
MIME-Version: 1.0
References: <20220207125933.81634-1-paul@crapouillou.net> <20220207125933.81634-3-paul@crapouillou.net>
In-Reply-To: <20220207125933.81634-3-paul@crapouillou.net>
From: Andy Shevchenko <andy.shevchenko@gmail.com>
Date: Mon, 28 Mar 2022 23:38:38 +0300
Message-ID: <CAHp75VeE2_D39X3gWidPTd49v=bdkgnMeoSBh60enp2hKJ-KPw@mail.gmail.com>
To: Paul Cercueil <paul@crapouillou.net>
X-MailFrom: andy.shevchenko@gmail.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
Message-ID-Hash: 5VXIHWNB2R6UDRI5SIIPHQSLJVZUBD5L
X-Message-ID-Hash: 5VXIHWNB2R6UDRI5SIIPHQSLJVZUBD5L
X-Mailman-Approved-At: Wed, 30 Mar 2022 12:40:52 +0000
CC: Jonathan Cameron <jic23@kernel.org>, Michael Hennerich <Michael.Hennerich@analog.com>, Lars-Peter Clausen <lars@metafoo.de>, =?UTF-8?Q?Christian_K=C3=B6nig?= <christian.koenig@amd.com>, Jonathan Corbet <corbet@lwn.net>, Alexandru Ardelean <ardeleanalex@gmail.com>, dri-devel <dri-devel@lists.freedesktop.org>, linaro-mm-sig@lists.linaro.org, Linux Documentation List <linux-doc@vger.kernel.org>, Linux Kernel Mailing List <linux-kernel@vger.kernel.org>, linux-iio <linux-iio@vger.kernel.org>
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH v2 02/12] iio: buffer-dma: Enable buffer write support
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/5VXIHWNB2R6UDRI5SIIPHQSLJVZUBD5L/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

On Wed, Feb 9, 2022 at 9:10 AM Paul Cercueil <paul@crapouillou.net> wrote:
>
> Adding write support to the buffer-dma code is easy - the write()
> function basically needs to do the exact same thing as the read()
> function: dequeue a block, read or write the data, enqueue the block
> when entirely processed.
>
> Therefore, the iio_buffer_dma_read() and the new iio_buffer_dma_write()
> now both call a function iio_buffer_dma_io(), which will perform this
> task.
>
> The .space_available() callback can return the exact same value as the
> .data_available() callback for input buffers, since in both cases we
> count the exact same thing (the number of bytes in each available
> block).
>
> Note that we preemptively reset block->bytes_used to the buffer's size
> in iio_dma_buffer_request_update(), as in the future the
> iio_dma_buffer_enqueue() function won't reset it.

...

> v2: - Fix block->state not being reset in
>       iio_dma_buffer_request_update() for output buffers.
>     - Only update block->bytes_used once and add a comment about why we
>       update it.
>     - Add a comment about why we're setting a different state for output
>       buffers in iio_dma_buffer_request_update()
>     - Remove useless cast to bool (!!) in iio_dma_buffer_io()

Usual place for changelog is after the cutter '--- ' line below...

> Signed-off-by: Paul Cercueil <paul@crapouillou.net>
> Reviewed-by: Alexandru Ardelean <ardeleanalex@gmail.com>
> ---

...somewhere here.

>  drivers/iio/buffer/industrialio-buffer-dma.c | 88 ++++++++++++++++----
>  include/linux/iio/buffer-dma.h               |  7 ++

...

> +static int iio_dma_buffer_io(struct iio_buffer *buffer,
> +                            size_t n, char __user *user_buffer, bool is_write)

I believe there is a room for size_t n on the previous line.

...

> +       if (is_write)

I would name it is_from_user.

> +               ret = copy_from_user(addr, user_buffer, n);
> +       else
> +               ret = copy_to_user(user_buffer, addr, n);

...

> +int iio_dma_buffer_write(struct iio_buffer *buffer, size_t n,
> +                        const char __user *user_buffer)
> +{
> +       return iio_dma_buffer_io(buffer, n, (__force char *)user_buffer, true);

Why do you drop address space markers?

> +}

-- 
With Best Regards,
Andy Shevchenko
_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org
