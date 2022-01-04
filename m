Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id D15F0483D20
	for <lists+linaro-mm-sig@lfdr.de>; Tue,  4 Jan 2022 08:43:23 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id A7B883ED8E
	for <lists+linaro-mm-sig@lfdr.de>; Tue,  4 Jan 2022 07:43:22 +0000 (UTC)
Received: from mail-lj1-f178.google.com (mail-lj1-f178.google.com [209.85.208.178])
	by lists.linaro.org (Postfix) with ESMTPS id 3012F3EC9E
	for <linaro-mm-sig@lists.linaro.org>; Tue,  4 Jan 2022 07:43:09 +0000 (UTC)
Received: by mail-lj1-f178.google.com with SMTP id q8so43564187ljp.9
        for <linaro-mm-sig@lists.linaro.org>; Mon, 03 Jan 2022 23:43:09 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=fgKwWZIfcsw72ZHfRdvesZsrrJZ1f8dTTxjt4J+BNV4=;
        b=X1ob57L7f7pUYK9slUoi/6n/KdzlJZAH8oS41+fUBZrebkN3Jnk2uaUo6PEJFCsaUx
         zcPjGMq4Kp7cO3mAF8RhPxz3hDyy64IWH4viwJceKGUJZlgsF9B3sEJDeAKfMKIZiboU
         6CpumNRlrBIBJG0KASIkN0/5UCUtgBpFO8+Xt16kpgHQM7cSI8PDNwSKBxGLM1FOz0qD
         Y3nhvzScK/BTQb1cIrUde5TyCbBSCRqkLXhZ6QbnNyOn49n+c1Ss1yAizUgMpLKYZYns
         +WIDARIMUXhTMkCfFwFme7n+TFF3gO93EtOBE6Sdcs3LU8YN7bpf5nct2QHtI71vKdrV
         aPlg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=fgKwWZIfcsw72ZHfRdvesZsrrJZ1f8dTTxjt4J+BNV4=;
        b=JDfwMYrxDrEonz6/Jp4x0XdSeV3F0o+B8r0yM+LNTG3w/6m/+wxDdnQJegI01H6gwq
         bTVXjL0TZ5FvErWmSTRgMlk+4AgJ6JhndE8bhkkuew7fdn1OlKthIdZFdrGqnRz/XNSG
         CfHVDcz0et2HyLfhoF3ozQ+TmeXgEftF8DLCpdERpI7xXTvKFk9+0kaXgCILYter/1c4
         1TYD3EDOd3dROh5ALJ1tVRYDrwmTbrRvzJjtSwn5dhrpkkFpBkR7jwcmMpP27QAyRD44
         ccscfxvK2IqDw89zj4BIrQBR9jcshvE5Bz4E3nxkA6mcjvYS7IITiR9yiLcUORWfV23z
         pA2g==
X-Gm-Message-State: AOAM5321KtxqT4Q3q3wZY/a9e2VBb7cpMVjG1TJVjauiHGYgraNev31Q
	IBR3sHCvHFiDNnwdr0NKUZJUvqBmC6RBUW2uTG2OpPUl
X-Google-Smtp-Source: ABdhPJzTcr2rRRGYiX1ocR9ztRnmH4dD/4uUxGjd34ka6S9DtNKHuHT8CJGQDqdSwIr3ls+LKbpZ96lYXoI18cN1eoE=
X-Received: by 2002:a2e:9901:: with SMTP id v1mr40463499lji.61.1641282187995;
 Mon, 03 Jan 2022 23:43:07 -0800 (PST)
MIME-Version: 1.0
References: <20220104073545.124244-1-o451686892@gmail.com>
In-Reply-To: <20220104073545.124244-1-o451686892@gmail.com>
From: John Stultz <john.stultz@linaro.org>
Date: Mon, 3 Jan 2022 23:42:56 -0800
Message-ID: <CALAqxLVSaZywOOnF=67X+gu9eo+ZmKQmW3wUOOKEM0rUZ4K5gg@mail.gmail.com>
To: Weizhao Ouyang <o451686892@gmail.com>
Message-ID-Hash: MMNSLSH25TM6JXZFVHHFZWA3HBO5BYOJ
X-Message-ID-Hash: MMNSLSH25TM6JXZFVHHFZWA3HBO5BYOJ
X-MailFrom: john.stultz@linaro.org
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: Benjamin Gaignard <benjamin.gaignard@collabora.com>, Liam Mark <lmark@codeaurora.org>, Laura Abbott <labbott@kernel.org>, Brian Starkey <Brian.Starkey@arm.com>, christian.koenig@amd.com, linux-media@vger.kernel.org, dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org, linux-kernel@vger.kernel.org
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH] dma-buf: cma_heap: Fix mutex locking section
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/MMNSLSH25TM6JXZFVHHFZWA3HBO5BYOJ/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

On Mon, Jan 3, 2022 at 11:36 PM Weizhao Ouyang <o451686892@gmail.com> wrote:
>
> Fix cma_heap_buffer mutex locking critical section to protect vmap_cnt
> and vaddr.
>
> Fixes: a5d2d29e24be ("dma-buf: heaps: Move heap-helper logic into the cma_heap implementation")
> Signed-off-by: Weizhao Ouyang <o451686892@gmail.com>

Looks good to me!  Thanks so much for sending this in!

Acked-by: John Stultz <john.stultz@linaro.org>

thanks again
-john
_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org
