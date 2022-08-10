Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id BCE4658F0BF
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 10 Aug 2022 18:51:40 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id B9B7047992
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 10 Aug 2022 16:51:39 +0000 (UTC)
Received: from mail-wm1-f67.google.com (mail-wm1-f67.google.com [209.85.128.67])
	by lists.linaro.org (Postfix) with ESMTPS id 538183F30F
	for <linaro-mm-sig@lists.linaro.org>; Wed, 10 Aug 2022 16:51:37 +0000 (UTC)
Received: by mail-wm1-f67.google.com with SMTP id c187-20020a1c35c4000000b003a30d88fe8eso1321475wma.2
        for <linaro-mm-sig@lists.linaro.org>; Wed, 10 Aug 2022 09:51:37 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ffwll.ch; s=google;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:from:to
         :cc;
        bh=lWfrAoXxVHXbhkuomaZdWya3VTYtQlo2c1Ei9aMf4QI=;
        b=ap5d/xqFftsbBitBxOcPRemV8XqbP5ZdmM9NGdAdoh0SKuAqcZuc4H8vwixxsdknjY
         hQxj6sZvqynIarjgcpGo9vJmg8rzvtJrd7VtQ1DZsX7kH2spjdK21lRu+KdFnMjeWQ14
         PPV/sk+vBgMu7qzpOvWra+vO5YW1ZwJBfv5+Y=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date
         :x-gm-message-state:from:to:cc;
        bh=lWfrAoXxVHXbhkuomaZdWya3VTYtQlo2c1Ei9aMf4QI=;
        b=MQ8vEFjgDwvspTqXK/xY4sOqGgLICXccBLvrnCZwIHr4laFTuWDKo88tVAGBsBFoUH
         AsATDbbpGQ2jw1Xif/+tk2GkIZA4TXEkM84/nV9zy6sxo4yBZPFZ4pGTYjmovX/Y32OF
         ZhDvLw+Rjy2hWKUw178E5YxLDhxHVGlTWU1XRYl1TqY0soP+2MN7hQwgU1yyYyI/mmZQ
         JP7bGBSNnSFr/56SpBZc7HMUF5RIkljWgFj+OasHy/0kw51vVp57ZSAiKubgRzwF9Bdj
         G45xw8FH8o/8wvV2F0DKId1igTY26wCb2GtGm1EEx1iIh8VURNIrTjHDv0kr9NUSL8LD
         thig==
X-Gm-Message-State: ACgBeo3bG6sFuqkV0utt0wkCVvocMjTfm9IkE475899sECtc6nPgVTIP
	VuIXYq9zWLwe9ACl4dzw8QtKXQ==
X-Google-Smtp-Source: AA6agR43A0U3CxBaG/pwAjxm6ETbq1ZTA/0wn+vLG7ILpaqLzgTR7ANYl+Syh3bE/yDBKAxRu0QLqQ==
X-Received: by 2002:a7b:c5d2:0:b0:3a3:55d9:fd36 with SMTP id n18-20020a7bc5d2000000b003a355d9fd36mr3146947wmk.52.1660150296416;
        Wed, 10 Aug 2022 09:51:36 -0700 (PDT)
Received: from phenom.ffwll.local ([2a02:168:57f4:0:efd0:b9e5:5ae6:c2fa])
        by smtp.gmail.com with ESMTPSA id j13-20020adfe50d000000b00222d512d96asm7089559wrm.75.2022.08.10.09.51.35
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 10 Aug 2022 09:51:35 -0700 (PDT)
Date: Wed, 10 Aug 2022 18:51:33 +0200
From: Daniel Vetter <daniel@ffwll.ch>
To: Bas Nieuwenhuizen <bas@basnieuwenhuizen.nl>
Message-ID: <YvPiFYOvH4ZI2frl@phenom.ffwll.local>
References: <20220712131201.131475-1-christian.koenig@amd.com>
 <CADnq5_PSECF0b_ynF=UhXu3Os0hYZcvcQtk1pD+T3q+Z1g-Hgg@mail.gmail.com>
 <a3dfc73f-5867-d442-b74d-a890a42753bd@amd.com>
 <CAP+8YyHLy9=ueEcgVbk6nnAr=aqJXW1f31xm37gkGVrzdG3o=g@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAP+8YyHLy9=ueEcgVbk6nnAr=aqJXW1f31xm37gkGVrzdG3o=g@mail.gmail.com>
X-Operating-System: Linux phenom 5.10.0-8-amd64 
Message-ID-Hash: 7DITF2VS5UPXULQJ34K6WA5CEALHVGZK
X-Message-ID-Hash: 7DITF2VS5UPXULQJ34K6WA5CEALHVGZK
X-MailFrom: daniel@ffwll.ch
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: Christian =?iso-8859-1?Q?K=F6nig?= <christian.koenig@amd.com>, Sumit Semwal <sumit.semwal@linaro.org>, linux-media <linux-media@vger.kernel.org>, Maling list - DRI developers <dri-devel@lists.freedesktop.org>, "moderated list:DMA BUFFER SHARING FRAMEWORK" <linaro-mm-sig@lists.linaro.org>, Daniel Vetter <daniel@ffwll.ch>
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH] dma-buf/dma_resv_usage: update explicit sync documentation
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/7DITF2VS5UPXULQJ34K6WA5CEALHVGZK/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

On Wed, Jul 13, 2022 at 01:27:13PM +0200, Bas Nieuwenhuizen wrote:
> With that changed
>=20
> Reviewed-by: Bas Nieuwenhuizen <bas@basnieuwenhuizen.nl>

Yeah this is a nice clarification.

Reviewed-by: Daniel Vetter <daniel.vetter@ffwll.ch>

In case it hasn't landed yet or so.
-Daniel

>=20
> Thanks!
>=20
> On Tue, Jul 12, 2022 at 3:23 PM Christian K=F6nig
> <christian.koenig@amd.com> wrote:
> >
> > Am 12.07.22 um 15:20 schrieb Alex Deucher:
> > > On Tue, Jul 12, 2022 at 9:12 AM Christian K=F6nig
> > > <ckoenig.leichtzumerken@gmail.com> wrote:
> > >> Make it clear that DMA_RESV_USAGE_BOOKMARK can be used for explicit =
synced
> > > DMA_RESV_USAGE_BOOKKEEP?
> >
> > Crappy autocorrect and copy&paste. Thanks for pointing that out.
> >
> > Christian.
> >
> > >
> > >> user space submissions as well and document the rules around adding =
the
> > >> same fence with different usages.
> > >>
> > >> Signed-off-by: Christian K=F6nig <christian.koenig@amd.com>
> > >> ---
> > >>   include/linux/dma-resv.h | 16 +++++++++++++---
> > >>   1 file changed, 13 insertions(+), 3 deletions(-)
> > >>
> > >> diff --git a/include/linux/dma-resv.h b/include/linux/dma-resv.h
> > >> index c8ccbc94d5d2..264e27e56dff 100644
> > >> --- a/include/linux/dma-resv.h
> > >> +++ b/include/linux/dma-resv.h
> > >> @@ -62,6 +62,11 @@ struct dma_resv_list;
> > >>    * For example when asking for WRITE fences then the KERNEL fences=
 are returned
> > >>    * as well. Similar when asked for READ fences then both WRITE and=
 KERNEL
> > >>    * fences are returned as well.
> > >> + *
> > >> + * Already used fences can be promoted in the sense that a fence wi=
th
> > >> + * DMA_RESV_USAGE_BOOKMARK could become DMA_RESV_USAGE_READ by addi=
ng it again
> > > Same here.
> > >
> > > With that fixed,
> > > Acked-by: Alex Deucher <alexander.deucher@amd.com>
> > >
> > > Alex
> > >
> > >> + * with this usage. But fences can never be degraded in the sense t=
hat a fence
> > >> + * with DMA_RESV_USAGE_WRITE could become DMA_RESV_USAGE_READ.
> > >>    */
> > >>   enum dma_resv_usage {
> > >>          /**
> > >> @@ -98,10 +103,15 @@ enum dma_resv_usage {
> > >>           * @DMA_RESV_USAGE_BOOKKEEP: No implicit sync.
> > >>           *
> > >>           * This should be used by submissions which don't want to p=
articipate in
> > >> -        * implicit synchronization.
> > >> +        * any implicit synchronization.
> > >> +        *
> > >> +        * The most common case are preemption fences, page table up=
dates, TLB
> > >> +        * flushes as well as explicit synced user submissions.
> > >>           *
> > >> -        * The most common case are preemption fences as well as pag=
e table
> > >> -        * updates and their TLB flushes.
> > >> +        * Explicit synced user user submissions can be promoted to
> > >> +        * DMA_RESV_USAGE_READ or DMA_RESV_USAGE_WRITE as needed usi=
ng
> > >> +        * dma_buf_import_sync_file() when implicit synchronization =
should
> > >> +        * become necessary after initial adding of the fence.
> > >>           */
> > >>          DMA_RESV_USAGE_BOOKKEEP
> > >>   };
> > >> --
> > >> 2.25.1
> > >>
> > >> _______________________________________________
> > >> Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
> > >> To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org
> >

--=20
Daniel Vetter
Software Engineer, Intel Corporation
http://blog.ffwll.ch
_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org
