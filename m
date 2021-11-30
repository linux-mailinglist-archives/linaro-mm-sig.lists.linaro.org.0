Return-Path: <linaro-mm-sig-bounces@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [107.22.173.205])
	by mail.lfdr.de (Postfix) with ESMTPS id 7A91E462EBA
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 30 Nov 2021 09:43:59 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id DFB3A61A3A
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 30 Nov 2021 08:43:57 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
	id 8E21560E8E; Tue, 30 Nov 2021 08:43:56 +0000 (UTC)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 9823F60E25;
	Tue, 30 Nov 2021 08:43:53 +0000 (UTC)
X-Original-To: linaro-mm-sig@lists.linaro.org
Delivered-To: linaro-mm-sig@lists.linaro.org
Received: from lists.linaro.org (localhost [127.0.0.1])
 by lists.linaro.org (Postfix) with ESMTP id 303C460754
 for <linaro-mm-sig@lists.linaro.org>; Tue, 30 Nov 2021 08:43:52 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
 id 2DDC260E25; Tue, 30 Nov 2021 08:43:52 +0000 (UTC)
Received: from mail-wr1-f51.google.com (mail-wr1-f51.google.com
 [209.85.221.51])
 by lists.linaro.org (Postfix) with ESMTPS id 23A7560754
 for <linaro-mm-sig@lists.linaro.org>; Tue, 30 Nov 2021 08:43:50 +0000 (UTC)
Received: by mail-wr1-f51.google.com with SMTP id q3so19807132wru.5
 for <linaro-mm-sig@lists.linaro.org>; Tue, 30 Nov 2021 00:43:50 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ffwll.ch; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:content-transfer-encoding:in-reply-to;
 bh=sJyA0wgEIxttMi/MVC00O0LmA1DZEBGPTAclUWb8fME=;
 b=Op4WSSG5UGUzW/XYeP1GvmGmeAPH1OXYu6cxevk8eWyzL9BBxON6f9DjOQ47ZaqLci
 1eDLIy1g8iM8u/q0PzUdvz1aZC034cKDJGpWDDbfnrzA5FKZUiCf6H7LCpdcXA+7SOrN
 mYsy3wOlTM4uycnZSB/B90A2KCz0Vk3DN/T78=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:content-transfer-encoding
 :in-reply-to;
 bh=sJyA0wgEIxttMi/MVC00O0LmA1DZEBGPTAclUWb8fME=;
 b=mFi7SSMcguDPxUTmJmfe2c/Bshuu65QRAUHZ+C/9KIUof28rnwdcdzMnpv+HpgNRwd
 2WE44Zsvaj8BiLnCXk2cdFxAOzC1oq3gl8m0DGoWlot/XxsJRptxzlh85lLus1AL+Eu0
 4yVKazuSWejsgo5TrPyr3pV16szhlHO5wQqrMZq2M+voZdk+ggFSmpuRiUN1ihYIooAU
 MxwD9IRzHDd7z7SzUDk9A/BwBHK84vAD65VuOoClGWusjuUF31KJFP3YqXR/geX5Oqbe
 fYapcjwukbXrC43LdZ3CPugBd4iblFTx/S43ehE5HJVtfQHV6+zx3xir9UPFNewOdm4e
 MfOg==
X-Gm-Message-State: AOAM530BjWtXUBYy9ErLj1y44s6/IydDS59JU1RR/nT3bJtlmYB/b/z3
 DvJThlhsRshb/B6vejAkay4sOA==
X-Google-Smtp-Source: ABdhPJyTiAxBsuBxuoBHPHIgrpslQEeCRowbGO09n3L4vZrzmXnYGqWZgYAJcta4QX59nENVDniF3A==
X-Received: by 2002:a5d:618f:: with SMTP id j15mr38202876wru.506.1638261829178; 
 Tue, 30 Nov 2021 00:43:49 -0800 (PST)
Received: from phenom.ffwll.local ([2a02:168:57f4:0:efd0:b9e5:5ae6:c2fa])
 by smtp.gmail.com with ESMTPSA id b10sm16069956wrt.36.2021.11.30.00.43.48
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 30 Nov 2021 00:43:48 -0800 (PST)
Date: Tue, 30 Nov 2021 09:43:46 +0100
From: Daniel Vetter <daniel@ffwll.ch>
To: Joonas Lahtinen <joonas.lahtinen@linux.intel.com>
Message-ID: <YaXkQvdlQ4F6+pvz@phenom.ffwll.local>
References: <20211129073533.414008-1-thomas.hellstrom@linux.intel.com>
 <4fd0eee6-342f-fb31-717c-901440f38c35@gmail.com>
 <58ca11648ab29d96b84640760d2acc3ac2d39d19.camel@linux.intel.com>
 <e4d8e272-8175-4298-f227-240febc0bda0@gmail.com>
 <ee128e237dbc2b6b2341b49ab07661c1f1b65e0b.camel@linux.intel.com>
 <180f069a-bf29-cf05-c9f9-5b1737ec5664@gmail.com>
 <163819167565.18436.3361321032268102014@jlahtine-mobl.ger.corp.intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <163819167565.18436.3361321032268102014@jlahtine-mobl.ger.corp.intel.com>
X-Operating-System: Linux phenom 5.10.0-8-amd64 
X-Virus-Scanned: ClamAV using ClamSMTP
Subject: Re: [Linaro-mm-sig] [PATCH] dma_fence_array: Fix PENDING_ERROR leak
 in dma_fence_array_signaled()
X-BeenThere: linaro-mm-sig@lists.linaro.org
X-Mailman-Version: 2.1.29
Precedence: list
List-Id: "Unified memory management interest group."
 <linaro-mm-sig.lists.linaro.org>
List-Unsubscribe: <https://lists.linaro.org/mailman/options/linaro-mm-sig>,
 <mailto:linaro-mm-sig-request@lists.linaro.org?subject=unsubscribe>
List-Archive: <http://lists.linaro.org/pipermail/linaro-mm-sig/>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Subscribe: <https://lists.linaro.org/mailman/listinfo/linaro-mm-sig>,
 <mailto:linaro-mm-sig-request@lists.linaro.org?subject=subscribe>
Cc: Thomas =?iso-8859-1?Q?Hellstr=F6m?= <thomas.hellstrom@linux.intel.com>,
 intel-gfx@lists.freedesktop.org, dri-devel@lists.freedesktop.org,
 Chris Wilson <chris@chris-wilson.co.uk>, linaro-mm-sig@lists.linaro.org
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Errors-To: linaro-mm-sig-bounces@lists.linaro.org
Sender: "Linaro-mm-sig" <linaro-mm-sig-bounces@lists.linaro.org>
X-Virus-Scanned: ClamAV using ClamSMTP

On Mon, Nov 29, 2021 at 03:14:35PM +0200, Joonas Lahtinen wrote:
> (Switching to my @linux.intel.com address)
> =

> Quoting Christian K=F6nig (2021-11-29 14:55:37)
> > Am 29.11.21 um 13:46 schrieb Thomas Hellstr=F6m:
> > > On Mon, 2021-11-29 at 13:33 +0100, Christian K=F6nig wrote:
> > >> Am 29.11.21 um 13:23 schrieb Thomas Hellstr=F6m:
> > >>> Hi, Christian,
> > >>>
> > >>> On Mon, 2021-11-29 at 09:21 +0100, Christian K=F6nig wrote:
> > >>>> Am 29.11.21 um 08:35 schrieb Thomas Hellstr=F6m:
> > >>>>> If a dma_fence_array is reported signaled by a call to
> > >>>>> dma_fence_is_signaled(), it may leak the PENDING_ERROR status.
> > >>>>>
> > >>>>> Fix this by clearing the PENDING_ERROR status if we return true
> > >>>>> in
> > >>>>> dma_fence_array_signaled().
> > >>>>>
> > >>>>> Fixes: 1f70b8b812f3 ("dma-fence: Propagate errors to dma-fence-
> > >>>>> array container")
> > >>>>> Cc: linaro-mm-sig@lists.linaro.org
> > >>>>> Cc: Christian K=F6nig <ckoenig.leichtzumerken@gmail.com>
> > >>>>> Cc: Chris Wilson <chris@chris-wilson.co.uk>
> > >>>>> Signed-off-by: Thomas Hellstr=F6m
> > >>>>> <thomas.hellstrom@linux.intel.com>
> > >>>> Reviewed-by: Christian K=F6nig <christian.koenig@amd.com>
> > >>> How are the dma-buf / dma-fence patches typically merged? If i915
> > >>> is
> > >>> the only fence->error user, could we take this through drm-intel to
> > >>> avoid a backmerge for upcoming i915 work?
> > >> Well that one here looks like a bugfix to me, so either through
> > >> drm-misc-fixes ore some i915 -fixes branch sounds fine to me.
> > >>
> > >> If you have any new development based on that a backmerge of the -
> > >> fixes
> > >> into your -next branch is unavoidable anyway.
> > > Ok, I'll check with Joonas if I can take it through
> > > drm-intel-gt-next, since fixes are cherry-picked from that one. Patch
> > > will then appear in both the -fixes and the -next branch.
> > =

> > Well exactly that's the stuff Daniel told me to avoid :)
> > =

> > But maybe your i915 workflow is somehow better handling that than the =

> > AMD workflow.
> =

> If it's a bugfix to a patch that merged through drm-misc-next, I'd
> always be inclined to merge the fixup using the same process (which
> would be drm-next-fixes).
> =

> In i915 we do always merge the patches to -next first, and never do a
> backmerge of -fixes (as it's a cherry-picked branch) so the workflows
> differ there.
> =

> Here the time between the fixup and the previous patch is so long that
> either way is fine with. So feel free to apply to drm-intel-gt-next.

To make this clear and avoid confusion: drm-misc and drm-intel work
differently for bugfixes.

drm-intel has paid maintainers who take care of cherry-picking and testing
and making sure nothing is lost.

drm-misc is all volunteers, so committers need to make sure stuff ends up
in the right place.

Hence different rules.
-Daniel

> =

> Regards, Joonas
> =

> > Christian.
> > =

> > >
> > > Thanks,
> > > /Thomas
> > >
> > >
> > >> Regards,
> > >> Christian.
> > >>
> > >>> /Thomas
> > >>>
> > >>>
> > >>>>> ---
> > >>>>>  =A0=A0 drivers/dma-buf/dma-fence-array.c | 6 +++++-
> > >>>>>  =A0=A0 1 file changed, 5 insertions(+), 1 deletion(-)
> > >>>>>
> > >>>>> diff --git a/drivers/dma-buf/dma-fence-array.c b/drivers/dma-
> > >>>>> buf/dma-fence-array.c
> > >>>>> index d3fbd950be94..3e07f961e2f3 100644
> > >>>>> --- a/drivers/dma-buf/dma-fence-array.c
> > >>>>> +++ b/drivers/dma-buf/dma-fence-array.c
> > >>>>> @@ -104,7 +104,11 @@ static bool
> > >>>>> dma_fence_array_signaled(struct
> > >>>>> dma_fence *fence)
> > >>>>>  =A0=A0 {
> > >>>>>  =A0=A0=A0=A0=A0=A0=A0=A0=A0struct dma_fence_array *array =3D
> > >>>>> to_dma_fence_array(fence);
> > >>>>>     =

> > >>>>> -=A0=A0=A0=A0=A0=A0=A0return atomic_read(&array->num_pending) <=
=3D 0;
> > >>>>> +=A0=A0=A0=A0=A0=A0=A0if (atomic_read(&array->num_pending) > 0)
> > >>>>> +=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0return false;
> > >>>>> +
> > >>>>> +=A0=A0=A0=A0=A0=A0=A0dma_fence_array_clear_pending_error(array);
> > >>>>> +=A0=A0=A0=A0=A0=A0=A0return true;
> > >>>>>  =A0=A0 }
> > >>>>>     =

> > >>>>>  =A0=A0 static void dma_fence_array_release(struct dma_fence *fen=
ce)
> > >
> > =

> _______________________________________________
> Linaro-mm-sig mailing list
> Linaro-mm-sig@lists.linaro.org
> https://lists.linaro.org/mailman/listinfo/linaro-mm-sig

-- =

Daniel Vetter
Software Engineer, Intel Corporation
http://blog.ffwll.ch
_______________________________________________
Linaro-mm-sig mailing list
Linaro-mm-sig@lists.linaro.org
https://lists.linaro.org/mailman/listinfo/linaro-mm-sig
