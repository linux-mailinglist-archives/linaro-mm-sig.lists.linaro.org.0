Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 196BF53A969
	for <lists+linaro-mm-sig@lfdr.de>; Wed,  1 Jun 2022 16:52:54 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 4296B3F07A
	for <lists+linaro-mm-sig@lfdr.de>; Wed,  1 Jun 2022 14:52:53 +0000 (UTC)
Received: from mail-pj1-f48.google.com (mail-pj1-f48.google.com [209.85.216.48])
	by lists.linaro.org (Postfix) with ESMTPS id 1EC113EBC0
	for <linaro-mm-sig@lists.linaro.org>; Wed,  1 Jun 2022 14:52:49 +0000 (UTC)
Received: by mail-pj1-f48.google.com with SMTP id q12-20020a17090a304c00b001e2d4fb0eb4so6484133pjl.4
        for <linaro-mm-sig@lists.linaro.org>; Wed, 01 Jun 2022 07:52:49 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:content-transfer-encoding:in-reply-to;
        bh=f+l3Hk+6FFyk8vfmjX/U6HXz2Y13gVkjD8RbjyOHnBg=;
        b=T5QqxGoUWNlBhCvVCWar98KbLBlFh2IAuojNaK8vvjKwgDeliiAt4f3t71WOdr8+Py
         HHMOe73t4gfkGJiwHy+Hm70Yy7VauFSTuriqV7I5dLMxENsXS5NHU703r5zm8sGzuyvW
         ERZjD24VHVXiLLmqN1EGXjLw6PBs9QKqmrdhw=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:content-transfer-encoding
         :in-reply-to;
        bh=f+l3Hk+6FFyk8vfmjX/U6HXz2Y13gVkjD8RbjyOHnBg=;
        b=do5PliPHBFM1Q1ZVFxmPIcCieC9CSjC5wogKryq3/rhMUqww2RG9tWaMXp72GQHTyx
         DVXtcwch8u5zGpc10Ve4suEEqbiMd4NIhdSZtCZTiXyNmSZSiLw3A/LxXpRsmM7YlFeI
         RQLXvJtqOyju+RcWeviL1QXO4T6bbfITqBv+eFIhtczXO5+2aq5rkc1FMYjZwnRL8x5Z
         8gl+720ZxIYPgHiWST8JNQeaPHr+Esw0s8MzrS/BLImAfyAdhwXnuXgvOz2mO/p0IhKN
         BopIGgjJrZ1hvVu+XqIfOHHKkWekMrKzWdWj5iM4YYcdDJOh6lUYRdP3UZ/5fnrlKovF
         rPsw==
X-Gm-Message-State: AOAM531ozq/g7x1jYUOVV9+zXeRIVdqY7cyPd+x/kA/3GZISx3ZAiKIv
	8D3qA/YhWTS3nnFGadtd5JPOK/CkojXBWQ==
X-Google-Smtp-Source: ABdhPJzKbPPwilL4Mlo2lBLeWQY4KScURQiGlR+yz2oCKIOnCppVLjpaiJcEObTKUBj8vtB6Oz8esg==
X-Received: by 2002:a17:902:d2c1:b0:165:d4cd:e118 with SMTP id n1-20020a170902d2c100b00165d4cde118mr125029plc.4.1654095168205;
        Wed, 01 Jun 2022 07:52:48 -0700 (PDT)
Received: from google.com ([240f:75:7537:3187:ec3a:4b49:34bc:e5b4])
        by smtp.gmail.com with ESMTPSA id u79-20020a627952000000b0051ba7515e0dsm1629431pfc.54.2022.06.01.07.52.44
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 01 Jun 2022 07:52:47 -0700 (PDT)
Date: Wed, 1 Jun 2022 23:52:41 +0900
From: Sergey Senozhatsky <senozhatsky@chromium.org>
To: Christian =?iso-8859-1?Q?K=F6nig?= <ckoenig.leichtzumerken@gmail.com>
Message-ID: <Ypd9OSqMtGMVKYZ0@google.com>
References: <20220530142232.2871634-1-senozhatsky@chromium.org>
 <7eee4274-bd69-df8d-9067-771366217804@amd.com>
 <YpWCvniLzJfcp684@google.com>
 <33aba213-b6ad-4a15-9272-c62f5dfb1fb7@gmail.com>
 <Ypd3Us3a93aLonqT@google.com>
 <a009c207-a5fa-af1e-b961-8083b48360bf@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <a009c207-a5fa-af1e-b961-8083b48360bf@gmail.com>
Message-ID-Hash: HVUWUORAQX7OAY5AG2YJ7D36FH7N2UQM
X-Message-ID-Hash: HVUWUORAQX7OAY5AG2YJ7D36FH7N2UQM
X-MailFrom: senozhatsky@chromium.org
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: Sergey Senozhatsky <senozhatsky@chromium.org>, Christian =?iso-8859-1?Q?K=F6nig?= <christian.koenig@amd.com>, Sumit Semwal <sumit.semwal@linaro.org>, Gustavo Padovan <gustavo@padovan.org>, Tomasz Figa <tfiga@chromium.org>, Ricardo Ribalda <ribalda@chromium.org>, Christoph Hellwig <hch@infradead.org>, linux-media@vger.kernel.org, dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org, linux-kernel@vger.kernel.org
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH] dma-fence: allow dma fence to have their own lock
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/HVUWUORAQX7OAY5AG2YJ7D36FH7N2UQM/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

On (22/06/01 16:38), Christian K=F6nig wrote:
> > > Well, you don't.
> > >=20
> > > If you have a dynamic context structure you need to reference count t=
hat as
> > > well. In other words every time you create a fence in your context yo=
u need
> > > to increment the reference count and every time a fence is release you
> > > decrement it.
> > OK then fence release should be able to point back to its "context"
> > structure. Either a "private" data in dma fence or we need to "embed"
> > fence into another object (refcounted) that owns the lock and provide
> > dma fence ops->release callback, which can container_of() to the object
> > that dma fence is embedded into.
> >=20
> > I think you are suggesting the latter. Thanks for clarifications.
>=20
> Daniel might hurt me for this, but if you really only need a pointer to y=
our
> context then we could say that using a pointer value for the context field
> is ok as well.
>=20
> That should be fine as well as long as you can guarantee that it will be
> unique during the lifetime of all it's fences.

I think we can guarantee that. Object that creates fence is kmalloc-ed and
it sticks around until dma_fence_release() calls ops->release() and kfree-s
it. We *probably* can even do something like it now, by re-purposing dma_fe=
nce
context member:

        dma_fence_init(obj->fence,
                       &fence_ops,
                       &obj->fence_lock,
                       (u64)obj,                             <<   :/
                       atomic64_inc_return(&obj->seqno));

I'd certainly refrain from being creative here and doing things that
are not documented/common. DMA fence embedding should work for us.

> > The limiting factor of this approach is that now our ops->release() is
> > under the same "pressure" as dma_fence_put()->dma_fence_release() are.
> > dma_fence_put() and dma_fence_release() can be called from any context,
> > as far as I understand, e.g. IRQ, however our normal object ->release
> > can schedule, we do things like synchronize_rcu() and so on. Nothing is
> > impossible, just saying that even this approach is not 100% perfect and
> > may need additional workarounds.
>=20
> Well just use a work item for release.

Yup, that's the plan.
_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org
