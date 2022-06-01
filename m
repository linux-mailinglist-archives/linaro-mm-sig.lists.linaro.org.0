Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 38BE453A5DF
	for <lists+linaro-mm-sig@lfdr.de>; Wed,  1 Jun 2022 15:22:37 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 6094D3F0C6
	for <lists+linaro-mm-sig@lfdr.de>; Wed,  1 Jun 2022 13:22:36 +0000 (UTC)
Received: from mail-wr1-f51.google.com (mail-wr1-f51.google.com [209.85.221.51])
	by lists.linaro.org (Postfix) with ESMTPS id 195E33ED16
	for <linaro-mm-sig@lists.linaro.org>; Wed,  1 Jun 2022 13:22:32 +0000 (UTC)
Received: by mail-wr1-f51.google.com with SMTP id h5so2384040wrb.0
        for <linaro-mm-sig@lists.linaro.org>; Wed, 01 Jun 2022 06:22:32 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ffwll.ch; s=google;
        h=date:from:to:cc:subject:message-id:mail-followup-to:references
         :mime-version:content-disposition:content-transfer-encoding
         :in-reply-to;
        bh=grujjgVk78/kTeNAsYLCQutjse2S4qIjwux8s5I8vnE=;
        b=lbp9nbUHl8ofN+dxS0sdOLugDeZaytx+OeJ/NUuXNjLXcor8DTOBLfkafd9Ko2hYX8
         495GS2cLePb2F5knyThcbWf3wiId5H9lTMY9NZabHJK5EZ3R9hCa++G7oLq2EYPVKmNI
         +UytFWz/nCngyWhhtdQW0HcQWOK9ikTgTBhTk=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:date:from:to:cc:subject:message-id
         :mail-followup-to:references:mime-version:content-disposition
         :content-transfer-encoding:in-reply-to;
        bh=grujjgVk78/kTeNAsYLCQutjse2S4qIjwux8s5I8vnE=;
        b=N7zk12uNEHozRjRojldbKTvFFm62S9KUTPshduzGdB2g3EbcIPurHZtOpR173aIotX
         RTrNNagTJpxEN88+OiNX+lxMPz0BxxN0Ilx23VppL4M7Zrr0OAJ5zqF5fN/MqAcqDiCM
         JmEaBO8o/KbBmSeHdUaPZkM0QTmQFfLWZdY00ohhF3TZIZP8R6jbcvCMYtChG4aWgisQ
         fTeaTRAZmOUuILkO37unWZOt6WQGgpefCbj98cgCTkT7VXRgkL42rRS/+pMDagntlGNE
         FnSC25vop8/tC2IsBz30jO5NCDEvTg+mdplK8wUBl34WRlaHi1oOlp20G2TTKn3qJGiX
         1ihQ==
X-Gm-Message-State: AOAM532vL/Otzgtptb2dsx6gKjSPkgo5Qg5VPKJbXv+SdPj/4iGmyrBq
	ntpl4emoCEnMHcdpGdXkBLtNOw==
X-Google-Smtp-Source: ABdhPJwoJDsjkQSbDgWTJ7sUm3syg4hR/7CZJ/cx7MS5hpu1nj4Bt5HyEIhy7EmDZ7ZNnjRnexBFog==
X-Received: by 2002:a5d:4646:0:b0:210:3e3c:86dc with SMTP id j6-20020a5d4646000000b002103e3c86dcmr2982159wrs.277.1654089751161;
        Wed, 01 Jun 2022 06:22:31 -0700 (PDT)
Received: from phenom.ffwll.local ([2a02:168:57f4:0:efd0:b9e5:5ae6:c2fa])
        by smtp.gmail.com with ESMTPSA id d13-20020adfef8d000000b0020fc40d006bsm1609106wro.17.2022.06.01.06.22.30
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 01 Jun 2022 06:22:30 -0700 (PDT)
Date: Wed, 1 Jun 2022 15:22:27 +0200
From: Daniel Vetter <daniel@ffwll.ch>
To: Christian =?iso-8859-1?Q?K=F6nig?= <ckoenig.leichtzumerken@gmail.com>
Message-ID: <YpdoEzLmlBfJks3q@phenom.ffwll.local>
Mail-Followup-To: Christian =?iso-8859-1?Q?K=F6nig?= <ckoenig.leichtzumerken@gmail.com>,
	Sergey Senozhatsky <senozhatsky@chromium.org>,
	Christian =?iso-8859-1?Q?K=F6nig?= <christian.koenig@amd.com>,
	Sumit Semwal <sumit.semwal@linaro.org>,
	Gustavo Padovan <gustavo@padovan.org>,
	Tomasz Figa <tfiga@chromium.org>,
	Ricardo Ribalda <ribalda@chromium.org>,
	Christoph Hellwig <hch@infradead.org>, linux-media@vger.kernel.org,
	dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org,
	linux-kernel@vger.kernel.org
References: <20220530142232.2871634-1-senozhatsky@chromium.org>
 <7eee4274-bd69-df8d-9067-771366217804@amd.com>
 <YpWCvniLzJfcp684@google.com>
 <33aba213-b6ad-4a15-9272-c62f5dfb1fb7@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <33aba213-b6ad-4a15-9272-c62f5dfb1fb7@gmail.com>
X-Operating-System: Linux phenom 5.10.0-8-amd64 
Message-ID-Hash: 5MTAKFZP7IRL5CIIH5KHYAFH236JLENS
X-Message-ID-Hash: 5MTAKFZP7IRL5CIIH5KHYAFH236JLENS
X-MailFrom: daniel@ffwll.ch
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: Sergey Senozhatsky <senozhatsky@chromium.org>, Christian =?iso-8859-1?Q?K=F6nig?= <christian.koenig@amd.com>, Sumit Semwal <sumit.semwal@linaro.org>, Gustavo Padovan <gustavo@padovan.org>, Tomasz Figa <tfiga@chromium.org>, Ricardo Ribalda <ribalda@chromium.org>, Christoph Hellwig <hch@infradead.org>, linux-media@vger.kernel.org, dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org, linux-kernel@vger.kernel.org
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH] dma-fence: allow dma fence to have their own lock
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/5MTAKFZP7IRL5CIIH5KHYAFH236JLENS/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

On Wed, Jun 01, 2022 at 02:45:42PM +0200, Christian K=F6nig wrote:
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
>=20
> If you have a static context structure like most drivers have then you mu=
st
> make sure that all fences at least signal before you unload your driver. =
We
> still somewhat have a race when you try to unload a driver and the fence_=
ops
> structure suddenly disappear, but we currently live with that.
>=20
> Apart from that you are right, fences can live forever and we need to deal
> with that.

Yeah this entire thing is a bit an "oops we might have screwed up" moment.
I think the cleanest way is to essentially do what the drm/sched codes
does, which is split the gpu job into the public dma_fence (which can live
forever) and the internal job fence (which has to deal with all the
resource refcounting issues). And then make sure that only ever the public
fence escapes to places where the fence can live forever (dma_resv,
drm_syncobj, sync_file as our uapi container objects are the prominent
cases really).

It sucks a bit.
-Daniel
--=20
Daniel Vetter
Software Engineer, Intel Corporation
http://blog.ffwll.ch
_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org
