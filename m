Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id B6A8B53A925
	for <lists+linaro-mm-sig@lfdr.de>; Wed,  1 Jun 2022 16:27:42 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id C76A33F0CB
	for <lists+linaro-mm-sig@lfdr.de>; Wed,  1 Jun 2022 14:27:41 +0000 (UTC)
Received: from mail-pg1-f177.google.com (mail-pg1-f177.google.com [209.85.215.177])
	by lists.linaro.org (Postfix) with ESMTPS id 245B73ED16
	for <linaro-mm-sig@lists.linaro.org>; Wed,  1 Jun 2022 14:27:37 +0000 (UTC)
Received: by mail-pg1-f177.google.com with SMTP id r71so2105495pgr.0
        for <linaro-mm-sig@lists.linaro.org>; Wed, 01 Jun 2022 07:27:37 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:content-transfer-encoding:in-reply-to;
        bh=1kEmR6X4i/nh+b6VMavBDubG9LMGPY4F+6d16NUM+gg=;
        b=mzH/QSAKngGq4V8ihQYKENupPuzAZLcXExKUCzkD7wVNpc9ZhtZ9SHvU7A/Wtsjk5p
         u8kr0G8Dxjuyhpjuqw3LG5uYEJBVyjeqJdOgUCIYXBdjvv7C4kZJqrt481urixeIGVCQ
         6Bk5quC5jGzL+SmIzDU43ncWqQdAVI/I0jUgQ=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:content-transfer-encoding
         :in-reply-to;
        bh=1kEmR6X4i/nh+b6VMavBDubG9LMGPY4F+6d16NUM+gg=;
        b=ceWCSQCBySk373l9/0NnP9fhIpD96DsS4NbnLDSSw8XZDvdLh7YYp9QcU/cGejArkA
         YyVZmfgJoRpJ/KPpwaK19lnDk17rWhaq7TgGs6PqLlIG9H2CUBL3pXZ6PZyu7eI5KEhq
         etW7FE3GJZMPzkX4xagI8/qVHhzceUMIV84j8T5CaO9IbJLohIWecadQiHFU+vXIJSBK
         As4F/GD9K7APrOOuyvAU/Jjgc8R4JTst5xpvolGMSnHrYX1q6pVAMazCoHPmWSLmNuuO
         Pos8FYkOE6HV/kVFsAaobbirxI4Mki2aOH9aDmxlLL7V1ZqABTJjy3GI19w5gBxOwZ2M
         XRgA==
X-Gm-Message-State: AOAM533blS2xyhSDFvSdHFrjerRVPch8Ae/e76tbWoSk14Fe3B3zVoGY
	ORcYEtQrmukW5hQM2PxlN8L3/w==
X-Google-Smtp-Source: ABdhPJx1bs4rZIm3ygpokZwXwCX7e324N+HICM85x+DBIaCNTNO14kwZs2t/7lNxNBCdLuDn6WabZQ==
X-Received: by 2002:a05:6a00:a01:b0:51b:51d8:3c2a with SMTP id p1-20020a056a000a0100b0051b51d83c2amr152799pfh.68.1654093656292;
        Wed, 01 Jun 2022 07:27:36 -0700 (PDT)
Received: from google.com ([240f:75:7537:3187:ec3a:4b49:34bc:e5b4])
        by smtp.gmail.com with ESMTPSA id 2-20020a170902c24200b00162523fdb8fsm1589163plg.252.2022.06.01.07.27.32
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 01 Jun 2022 07:27:35 -0700 (PDT)
Date: Wed, 1 Jun 2022 23:27:30 +0900
From: Sergey Senozhatsky <senozhatsky@chromium.org>
To: Christian =?iso-8859-1?Q?K=F6nig?= <ckoenig.leichtzumerken@gmail.com>
Message-ID: <Ypd3Us3a93aLonqT@google.com>
References: <20220530142232.2871634-1-senozhatsky@chromium.org>
 <7eee4274-bd69-df8d-9067-771366217804@amd.com>
 <YpWCvniLzJfcp684@google.com>
 <33aba213-b6ad-4a15-9272-c62f5dfb1fb7@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <33aba213-b6ad-4a15-9272-c62f5dfb1fb7@gmail.com>
Message-ID-Hash: JEJXXBL4I6OEA6YICJCHZS7BSG7TGLXB
X-Message-ID-Hash: JEJXXBL4I6OEA6YICJCHZS7BSG7TGLXB
X-MailFrom: senozhatsky@chromium.org
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: Sergey Senozhatsky <senozhatsky@chromium.org>, Christian =?iso-8859-1?Q?K=F6nig?= <christian.koenig@amd.com>, Sumit Semwal <sumit.semwal@linaro.org>, Gustavo Padovan <gustavo@padovan.org>, Tomasz Figa <tfiga@chromium.org>, Ricardo Ribalda <ribalda@chromium.org>, Christoph Hellwig <hch@infradead.org>, linux-media@vger.kernel.org, dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org, linux-kernel@vger.kernel.org
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH] dma-fence: allow dma fence to have their own lock
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/JEJXXBL4I6OEA6YICJCHZS7BSG7TGLXB/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

On (22/06/01 14:45), Christian K=F6nig wrote:
> Am 31.05.22 um 04:51 schrieb Sergey Senozhatsky:
> > On (22/05/30 16:55), Christian K=F6nig wrote:
> > > Am 30.05.22 um 16:22 schrieb Sergey Senozhatsky:
> > > > [SNIP]
> > > > So the `lock` should have at least same lifespan as the DMA fence
> > > > that borrows it, which is impossible to guarantee in our case.
> > > Nope, that's not correct. The lock should have at least same lifespan=
 as the
> > > context of the DMA fence.
> > How does one know when it's safe to release the context? DMA fence
> > objects are still transparently refcount-ed and "live their own lives",
> > how does one synchronize lifespans?
>=20
> Well, you don't.
>=20
> If you have a dynamic context structure you need to reference count that =
as
> well. In other words every time you create a fence in your context you ne=
ed
> to increment the reference count and every time a fence is release you
> decrement it.

OK then fence release should be able to point back to its "context"
structure. Either a "private" data in dma fence or we need to "embed"
fence into another object (refcounted) that owns the lock and provide
dma fence ops->release callback, which can container_of() to the object
that dma fence is embedded into.

I think you are suggesting the latter. Thanks for clarifications.

The limiting factor of this approach is that now our ops->release() is
under the same "pressure" as dma_fence_put()->dma_fence_release() are.
dma_fence_put() and dma_fence_release() can be called from any context,
as far as I understand, e.g. IRQ, however our normal object ->release
can schedule, we do things like synchronize_rcu() and so on. Nothing is
impossible, just saying that even this approach is not 100% perfect and
may need additional workarounds.

> If you have a static context structure like most drivers have then you mu=
st
> make sure that all fences at least signal before you unload your driver. =
We
> still somewhat have a race when you try to unload a driver and the fence_=
ops
> structure suddenly disappear, but we currently live with that.

Hmm, indeed... I didn't consider fence_ops case.

> Apart from that you are right, fences can live forever and we need to deal
> with that.

OK. I see.
_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org
