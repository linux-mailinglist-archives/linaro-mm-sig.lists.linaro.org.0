Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 4809553A454
	for <lists+linaro-mm-sig@lfdr.de>; Wed,  1 Jun 2022 13:50:24 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 088E53F0CF
	for <lists+linaro-mm-sig@lfdr.de>; Wed,  1 Jun 2022 11:50:23 +0000 (UTC)
Received: from mail-pl1-f169.google.com (mail-pl1-f169.google.com [209.85.214.169])
	by lists.linaro.org (Postfix) with ESMTPS id 093913EC72
	for <linaro-mm-sig@lists.linaro.org>; Mon, 30 May 2022 15:09:57 +0000 (UTC)
Received: by mail-pl1-f169.google.com with SMTP id w3so10530866plp.13
        for <linaro-mm-sig@lists.linaro.org>; Mon, 30 May 2022 08:09:56 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:content-transfer-encoding:in-reply-to;
        bh=MDPsVzr9oRyPkDpdSrgjcqTfOM2U/KUUhbX2zAPuMn4=;
        b=Rmu2aX+sVAwyRRIb8uJtLMJIpDvhcNVejEF5IBcJ3h5yqmi2cUtdDqcTOA0ypkJTh9
         rhLj41dl6/tr/MmFpmgayS8Gul644Tp/xjjxNjBbGlmtLqch9E5HhTB+O6upwO04lJHd
         PkmajRsVMECLRiDKXkEGJYdRGRsAgw7uGeooI=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:content-transfer-encoding
         :in-reply-to;
        bh=MDPsVzr9oRyPkDpdSrgjcqTfOM2U/KUUhbX2zAPuMn4=;
        b=MjygX875vDTRk3PTyA5FXSlzXfUxdMZZqz+ODjvo1ZnUnqN8R33W6PmJ9Oz+H2Wa1j
         QmJiDaHVPJo2Z8uN6k2pKdHHMscok31LVJ8qQbhiF17qzKt55k/QbYTOJZf4XhbvFwNC
         6MC0qOK4KwzM3YMKQlhfOAZADrCdZEtSva89ruFnrw4PBEM1tEewkok9HDEnqyL8Q4GE
         POGpncZiJ6js0EtXXIjCyR99WrudVLgXFMlDoUPYuSEf3zoNMw3qP5DYX7VwoKVLeBTv
         WZtruSSdHq6OYiru0HwSJ0CKuwsFDdW7qWMP2dppRxT/Qjjsh+mxM4QOrE+hEv5O109A
         rBsA==
X-Gm-Message-State: AOAM533qEe2jdC+nu4ucoAWFMSITVmlInUR7OLZuvCBz2C09Xbtj+yOJ
	nc7Pz6hS7Os8YCZ0bt20c/pMyys53SALWg==
X-Google-Smtp-Source: ABdhPJwq3IbiSe+zl8GbAUwRzcQ8OUxiTgD7YBetwDEH+LuBXltBpWmdQNeyJempTdQIRVtLo9dQ9Q==
X-Received: by 2002:a17:90a:6390:b0:1e0:a47b:a57a with SMTP id f16-20020a17090a639000b001e0a47ba57amr23275881pjj.115.1653923396152;
        Mon, 30 May 2022 08:09:56 -0700 (PDT)
Received: from google.com ([240f:75:7537:3187:7d2a:ad1f:afa1:7770])
        by smtp.gmail.com with ESMTPSA id u11-20020a170902bf4b00b0016392bd5060sm7274738pls.142.2022.05.30.08.09.52
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 30 May 2022 08:09:55 -0700 (PDT)
Date: Tue, 31 May 2022 00:09:49 +0900
From: Sergey Senozhatsky <senozhatsky@chromium.org>
To: Christian =?iso-8859-1?Q?K=F6nig?= <christian.koenig@amd.com>
Message-ID: <YpTePTj6rrHYN0QT@google.com>
References: <20220530142232.2871634-1-senozhatsky@chromium.org>
 <7eee4274-bd69-df8d-9067-771366217804@amd.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <7eee4274-bd69-df8d-9067-771366217804@amd.com>
X-MailFrom: senozhatsky@chromium.org
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
Message-ID-Hash: CWGLDR4FEFKCCSHQHNTKZGBYPJNWC3YV
X-Message-ID-Hash: CWGLDR4FEFKCCSHQHNTKZGBYPJNWC3YV
X-Mailman-Approved-At: Wed, 01 Jun 2022 11:50:18 +0000
CC: Sergey Senozhatsky <senozhatsky@chromium.org>, Sumit Semwal <sumit.semwal@linaro.org>, Gustavo Padovan <gustavo@padovan.org>, Tomasz Figa <tfiga@chromium.org>, Ricardo Ribalda <ribalda@chromium.org>, Christoph Hellwig <hch@infradead.org>, linux-media@vger.kernel.org, dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org, linux-kernel@vger.kernel.org
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH] dma-fence: allow dma fence to have their own lock
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/CWGLDR4FEFKCCSHQHNTKZGBYPJNWC3YV/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

Hi Christian,

On (22/05/30 16:55), Christian K=F6nig wrote:
> Hi Sergey,
>=20
> I'm removing most of the mail because you have a very fundamental
> misunderstanding about what this dma_fence lock is all about.

Happy to learn.

> Am 30.05.22 um 16:22 schrieb Sergey Senozhatsky:
> > [SNIP]
> > So the `lock` should have at least same lifespan as the DMA fence
> > that borrows it, which is impossible to guarantee in our case.
>
> Nope, that's not correct. The lock should have at least same lifespan as =
the
> context of the DMA fence.

In our case we have one context and it lives as long as the module is loade=
d.
Does this mean that all DMA fences within that context should be serialized
by a single spinlock? We can have a number of "active" fences so the lock
can become a bit congested. But each operation creates, exports and signals
just once fence.

> The idea here is that DMA fence signaling and callback calling serializes.
> E.g. when you have fence a,b,c,d... they must signal in the order a,b,c,d=
...
> and that's what this lock is good for.

Hmm, OK. So that borrowed ->lock is in fact something like
context_lock_irqsave() and context_unlock_irqrestore().

> If you just want to create a single dma_fence which is also only bound to=
 a
> single context you can embed the lock into the fence without much problem.

Aha, I guess this is what we need then. I'll take a look. Thanks.
_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org
