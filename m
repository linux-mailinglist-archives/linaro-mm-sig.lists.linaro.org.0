Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 2DC0E58F11F
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 10 Aug 2022 19:03:34 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 5AF5C47976
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 10 Aug 2022 17:03:33 +0000 (UTC)
Received: from mail-wm1-f67.google.com (mail-wm1-f67.google.com [209.85.128.67])
	by lists.linaro.org (Postfix) with ESMTPS id F07E13F456
	for <linaro-mm-sig@lists.linaro.org>; Wed, 10 Aug 2022 17:03:29 +0000 (UTC)
Received: by mail-wm1-f67.google.com with SMTP id b6so8100163wmq.5
        for <linaro-mm-sig@lists.linaro.org>; Wed, 10 Aug 2022 10:03:29 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ffwll.ch; s=google;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:from:to
         :cc;
        bh=RycH3O9/jVtOrwg8Tb4rCPx9NQGJX/8jY/4QeSrvWuA=;
        b=ahEMB/f1Os7HN/dmBZ/hQpmyqb6o4v/xxFPofPybSlzrEcYUrb651plr/cbP/+fMzr
         P5NUXhJef0mDLs9iqWCS20L/CffRua3nS9EACIIulJKL7+VNH01XgL+dwLXaKhp+Tfx7
         LpIwltdiTebuvkDiYQOw92vpVGk8zum9tL3uk=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date
         :x-gm-message-state:from:to:cc;
        bh=RycH3O9/jVtOrwg8Tb4rCPx9NQGJX/8jY/4QeSrvWuA=;
        b=7Bn5ViRHY7XtlPYSLAYWmvJQHpdb7CcRCwgTUiIQaD0H19lzFHE+LvljqEIDoLc63o
         yQ1sJyT9rVJGSyG9fmq0wt1YGQxrmsABGyIngHEff62kZHf4Rx8hpeMSauv3MXGNZLEE
         iLVxPysznIEgM5E9aT0BXhj3wk5JK8oz/eZZ+vsJE6cdN5CC4R1/efNOByfZ1hfJ6OwD
         NWuGwScoHBvPJP2YVTEOfX4Z78zD22TGTF0CIpz6wTlnINY5zzbzlsvUZRmDBvRVddrY
         iTL2bRyyZmhvgIPsD74z5Ud3hCqwmzaii2a9Er7SewJ9wTUoHasJJrhpBwh00DUS4n0j
         WdEQ==
X-Gm-Message-State: ACgBeo3mIXd79nRyvqcuQsvZMbzZQ0DBkuFcc7Vs6Ytt93d+ZWoE/jVt
	ehxN5hBkTM4FzJee7gK9a/qBUw==
X-Google-Smtp-Source: AA6agR7QsEM/xyMBF5xLERrn21uITTdQBdPJFNEQyJKrMuV11k6LvfptsnHkOpDEr4Zozx6IwaLSEA==
X-Received: by 2002:a05:600c:34c9:b0:3a4:f1d7:edbd with SMTP id d9-20020a05600c34c900b003a4f1d7edbdmr3099490wmq.128.1660151008998;
        Wed, 10 Aug 2022 10:03:28 -0700 (PDT)
Received: from phenom.ffwll.local ([2a02:168:57f4:0:efd0:b9e5:5ae6:c2fa])
        by smtp.gmail.com with ESMTPSA id e3-20020adf9bc3000000b0020e6ce4dabdsm16865341wrc.103.2022.08.10.10.03.28
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 10 Aug 2022 10:03:28 -0700 (PDT)
Date: Wed, 10 Aug 2022 19:03:26 +0200
From: Daniel Vetter <daniel@ffwll.ch>
To: Christian =?iso-8859-1?Q?K=F6nig?= <christian.koenig@amd.com>
Message-ID: <YvPk3pdz0t81Pz7A@phenom.ffwll.local>
References: <20220712102849.1562-1-christian.koenig@amd.com>
 <CAKMK7uFnMSKXcU+v_g-Sh62O5MB1uY=K2H-Fq7-5UYtmmjCZ_w@mail.gmail.com>
 <c78e4774-6319-a9ce-978b-4489e1913da3@amd.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <c78e4774-6319-a9ce-978b-4489e1913da3@amd.com>
X-Operating-System: Linux phenom 5.10.0-8-amd64 
Message-ID-Hash: XK3VEZKNFMINK6SUSAHX2UJWTO6ADDVA
X-Message-ID-Hash: XK3VEZKNFMINK6SUSAHX2UJWTO6ADDVA
X-MailFrom: daniel@ffwll.ch
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: Daniel Vetter <daniel@ffwll.ch>, karolina.drobnik@intel.com, dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org, linux-media@vger.kernel.org, intel-gfx@lists.freedesktop.org
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [Intel-gfx] [PATCH] dma-buf: revert "return only unsignaled fences in dma_fence_unwrap_for_each v3"
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/XK3VEZKNFMINK6SUSAHX2UJWTO6ADDVA/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

On Wed, Aug 10, 2022 at 07:01:55PM +0200, Christian K=F6nig wrote:
> Am 10.08.22 um 18:54 schrieb Daniel Vetter:
> > On Tue, 12 Jul 2022 at 12:28, Christian K=F6nig
> > <ckoenig.leichtzumerken@gmail.com> wrote:
> > > This reverts commit 8f61973718485f3e89bc4f408f929048b7b47c83.
> > >=20
> > > It turned out that this is not correct. Especially the sync_file info
> > > IOCTL needs to see even signaled fences to correctly report back their
> > > status to userspace.
> > >=20
> > > Instead add the filter in the merge function again where it makes sen=
se.
> > >=20
> > > Signed-off-by: Christian K=F6nig <christian.koenig@amd.com>
> > > ---
> > >   drivers/dma-buf/dma-fence-unwrap.c | 3 ++-
> > >   include/linux/dma-fence-unwrap.h   | 6 +-----
> > >   2 files changed, 3 insertions(+), 6 deletions(-)
> > >=20
> > > diff --git a/drivers/dma-buf/dma-fence-unwrap.c b/drivers/dma-buf/dma=
-fence-unwrap.c
> > > index 502a65ea6d44..7002bca792ff 100644
> > > --- a/drivers/dma-buf/dma-fence-unwrap.c
> > > +++ b/drivers/dma-buf/dma-fence-unwrap.c
> > > @@ -72,7 +72,8 @@ struct dma_fence *__dma_fence_unwrap_merge(unsigned=
 int num_fences,
> > >          count =3D 0;
> > >          for (i =3D 0; i < num_fences; ++i) {
> > >                  dma_fence_unwrap_for_each(tmp, &iter[i], fences[i])
> > > -                       ++count;
> > > +                       if (!dma_fence_is_signaled(tmp))
> > > +                               ++count;
> > >          }
> > >=20
> > >          if (count =3D=3D 0)
> > > diff --git a/include/linux/dma-fence-unwrap.h b/include/linux/dma-fen=
ce-unwrap.h
> > > index 390de1ee9d35..66b1e56fbb81 100644
> > > --- a/include/linux/dma-fence-unwrap.h
> > > +++ b/include/linux/dma-fence-unwrap.h
> > > @@ -43,14 +43,10 @@ struct dma_fence *dma_fence_unwrap_next(struct dm=
a_fence_unwrap *cursor);
> > >    * Unwrap dma_fence_chain and dma_fence_array containers and deep d=
ive into all
> > >    * potential fences in them. If @head is just a normal fence only t=
hat one is
> > >    * returned.
> > > - *
> > > - * Note that signalled fences are opportunistically filtered out, wh=
ich
> > > - * means the iteration is potentially over no fence at all.
> > >    */
> > >   #define dma_fence_unwrap_for_each(fence, cursor, head)             =
    \
> > >          for (fence =3D dma_fence_unwrap_first(head, cursor); fence; =
      \
> > > -            fence =3D dma_fence_unwrap_next(cursor))                =
     \
> > > -               if (!dma_fence_is_signaled(fence))
> > > +            fence =3D dma_fence_unwrap_next(cursor))
> > Not sure it's worth it, but could we still filter but keep the fence
> > if there's an error?
> >=20
> > I'm honestly also not entirely sure whether error propagation is a
> > terrific idea, since every single use-case I've seen in i915 was a
> > mis-design and not good at all. So burning it all down and declaring
> > the testcases invalid might be the right thing to do here.
>=20
> This is not about error propagation.
>=20
> The sync_file has an IOCTL which asks how many of the merged fences are
> already signaled. When we filter signaled fences here the result of this =
is
> always 0.
>=20
> We have an igt test exercising this which reported that the IOCTL doesn't
> work any more.

Ah ok. I guess we add that to the list of reasons why sync_file is a bit a
funny interface, and people should just use drm_syncobj instead :-)
-Daniel
--=20
Daniel Vetter
Software Engineer, Intel Corporation
http://blog.ffwll.ch
_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org
