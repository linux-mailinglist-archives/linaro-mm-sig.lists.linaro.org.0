Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id A5866483729
	for <lists+linaro-mm-sig@lfdr.de>; Mon,  3 Jan 2022 19:45:56 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id D492D3ED97
	for <lists+linaro-mm-sig@lfdr.de>; Mon,  3 Jan 2022 18:45:55 +0000 (UTC)
Received: from mail-lj1-f182.google.com (mail-lj1-f182.google.com [209.85.208.182])
	by lists.linaro.org (Postfix) with ESMTPS id 7DF133ED1B
	for <linaro-mm-sig@lists.linaro.org>; Mon,  3 Jan 2022 18:45:41 +0000 (UTC)
Received: by mail-lj1-f182.google.com with SMTP id s4so39080772ljd.5
        for <linaro-mm-sig@lists.linaro.org>; Mon, 03 Jan 2022 10:45:41 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=Bon2TzEaMZw9jM9XFv0NkWrGKfLJEYEyxT5WK0i6Teo=;
        b=T0+jz4Nr1t/1nhvRN719ZQEzSnmTKGHWI14rsGCizTeJ9+Pq3NHRf5WGkkBIO3ig2R
         WEsBXXSQUumOIlOM7VuWzBFKL3XVzl9phxO8l1rI60pEVA/jSbtEaqxaJ5xr+AqjiaTt
         V9YIkBrs6otgasLbADTppCmlu1+FupQanbqJzLXAR5Eb9dk4wSNwxdb2YVBB6/edLiSM
         yP6IneGgi3bV2TB7qc7sEDq7nMdaK0G8wYCotW4G9m8bxica4CM8Nj1zV09OSfnYcZEf
         CoWh/VuEeptwK1vuokWGTagQcKog6rUY02+q62DhRTQirM0coloCuZSgJV1+0r1q9z2e
         8n5g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=Bon2TzEaMZw9jM9XFv0NkWrGKfLJEYEyxT5WK0i6Teo=;
        b=dfucxGg/Zogb5jR8XqtPxtY3px1r2PdLJtBuoVpqKAKKAh8678rOE032gDu5gb4auD
         5ji/o3a7k5DWW7UqJ2oec+MR87SReEU646rrhLg7SmFBWgX6uGsy3G3dfYPdKKS5yZb/
         WucfHdaacy9oaDfTBcm738CtnBlyHr7i67xhCO7Cz/gXqUOxyChLBXZvMzpL3drEFCzq
         XGgEEFH3m/lvHPtZxgNYjOK4Sn6mGRi2ELXTV8q5fxmPzMo53y/R5ReroNaxD1V53UZC
         iR9ohAZG/EMgPJTTIpOaoZ5Ma6d4Yq9DSJYw4QyG1IRQ8CXeHc37u8zv38v1smKB4nEA
         x7rQ==
X-Gm-Message-State: AOAM533+xiZj9U1sW5rqUhfj8xEv3k+9Sz7Ic4VQaOMjPFH/tr/CHNbL
	CkkeixNtTb5tSlhS4lSwvtayaTUtj7/X7pcvJYtmMPV9
X-Google-Smtp-Source: ABdhPJxEiB7uEhwcBh4Wz3syBaOYchuUr3Jz8MrBaTyqxDV1Dd7a0xiGHe0W7YzjhL4RNXWQ2n1CRmRoSgK8Vl+S02s=
X-Received: by 2002:a2e:2e18:: with SMTP id u24mr11896473lju.492.1641235540346;
 Mon, 03 Jan 2022 10:45:40 -0800 (PST)
MIME-Version: 1.0
References: <20211229070713.218548-1-o451686892@gmail.com>
In-Reply-To: <20211229070713.218548-1-o451686892@gmail.com>
From: John Stultz <john.stultz@linaro.org>
Date: Mon, 3 Jan 2022 10:45:28 -0800
Message-ID: <CALAqxLXtUcign2gETHg=z24qYOFSALRjWNnJqqY6rk=gsfVwaw@mail.gmail.com>
To: Weizhao Ouyang <o451686892@gmail.com>
Message-ID-Hash: K7T7T4ND7M32ECO2ZMYFJ46L2QWOMA4W
X-Message-ID-Hash: K7T7T4ND7M32ECO2ZMYFJ46L2QWOMA4W
X-MailFrom: john.stultz@linaro.org
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: Benjamin Gaignard <benjamin.gaignard@collabora.com>, Liam Mark <lmark@codeaurora.org>, Laura Abbott <labbott@kernel.org>, Brian Starkey <Brian.Starkey@arm.com>, christian.koenig@amd.com, linux-media@vger.kernel.org, dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org, linux-kernel@vger.kernel.org
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH RESEND] dma-buf: heaps: Fix mutex lock area and generalize struct dma_heap_attachment
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/K7T7T4ND7M32ECO2ZMYFJ46L2QWOMA4W/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

On Tue, Dec 28, 2021 at 11:09 PM Weizhao Ouyang <o451686892@gmail.com> wrote:
>
> Fix cma_heap_buffer mutex lock area to protect vmap_cnt and vaddr. And
> move struct dma_heap_attachment to dma-heap.h so that vendor dma heaps
> can use it, the same behaviour as struct dma_buf_attachment.
>

Hey!
  Thanks for submitting this patch! Apologies for the slow reply (was
out for the holidays).

This patch is combining two changes in one patch, so they need to be
split up. The locking change looks sane, but moving the
dma_heap_attachment may need some extra justification as changing
upstream code just to support out of tree code isn't usually done (if
there was some benefit to the in-tree code, that would be fine
though).

I'd also be eager to try to get the vendor heap to be merged, assuming
we can also merge an upstream user for it.

thanks
-john
_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org
