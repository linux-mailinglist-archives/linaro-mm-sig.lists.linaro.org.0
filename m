Return-Path: <linaro-mm-sig-bounces@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [107.22.173.205])
	by mail.lfdr.de (Postfix) with ESMTPS id 25D6C436113
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 21 Oct 2021 14:08:33 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 6E0E760C3A
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 21 Oct 2021 12:08:31 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
	id 3350F60C29; Thu, 21 Oct 2021 12:08:30 +0000 (UTC)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 8C9C860A90;
	Thu, 21 Oct 2021 12:08:27 +0000 (UTC)
X-Original-To: linaro-mm-sig@lists.linaro.org
Delivered-To: linaro-mm-sig@lists.linaro.org
Received: from lists.linaro.org (localhost [127.0.0.1])
 by lists.linaro.org (Postfix) with ESMTP id 9ED726066C
 for <linaro-mm-sig@lists.linaro.org>; Thu, 21 Oct 2021 12:08:25 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
 id 9AED660A90; Thu, 21 Oct 2021 12:08:25 +0000 (UTC)
Received: from mail-wr1-f48.google.com (mail-wr1-f48.google.com
 [209.85.221.48])
 by lists.linaro.org (Postfix) with ESMTPS id 943CE6066C
 for <linaro-mm-sig@lists.linaro.org>; Thu, 21 Oct 2021 12:08:23 +0000 (UTC)
Received: by mail-wr1-f48.google.com with SMTP id m22so846433wrb.0
 for <linaro-mm-sig@lists.linaro.org>; Thu, 21 Oct 2021 05:08:23 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ffwll.ch; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:content-transfer-encoding:in-reply-to;
 bh=djJOEt6biCNzIxqdTk62h+b491lKskY6U3yacyivLEw=;
 b=c5tSrGe3CHMZl7DvRDR4efrUSRgSfTbn1NK8z9SBLd2TeMvrHf674NXN87YTkG7zxV
 tsOHF3eTlZjBz7DKbYflzdjTdn0rT3RXAvFdmrwAkFPoH1tLHYp7sx1pDRAsTusXRq1a
 4ndd2MIqdHYVqputO76fGvZJPD3oVqZopuOOw=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:content-transfer-encoding
 :in-reply-to;
 bh=djJOEt6biCNzIxqdTk62h+b491lKskY6U3yacyivLEw=;
 b=GN7w8ntQTRcJFWWMYfvpdWDhyrZL2MASn9JyXncbxEfw8jjQsRUbHeeoL3W9wZ8Hlm
 TohiI4MC554NPkpyO5MZGO5PyX8MJT4wNPKseEAuj7OITliOAxe2PmnbNY3R265ojMew
 rF7c4Ael76Dwa/sLSZGXBsSSwmdWdjMbpmZQuc6VfkHk23Zv97l9cXrsrGlUeASfvHhu
 /nK6vLL0AhUaGghqbNXKD0lT5gj46ha2bYctlo0V8TFz6i0ZKq8coLE/WQtdzk0zE71F
 YVIeS3QLAjTVxl9LS5UOy9fxyAtAr8p9ts6soPTDU1jB7rcs+8A/ay1ONEz2Hjtr7UCC
 gLBA==
X-Gm-Message-State: AOAM530MOYeGxPD04sNNltY87bosI1SEag5zD8DVBWz+R76rs7zSqD08
 4Om0/UuK1LSVCa98U2hB8ztDvQ==
X-Google-Smtp-Source: ABdhPJwk2ijMk01v1uJB5E7SqZ7tASKWbjKG/5T1dTuTmqKek02XQ4pRXTflPK6lzGUhXJQWb663yg==
X-Received: by 2002:a5d:64c5:: with SMTP id f5mr6635604wri.321.1634818102689; 
 Thu, 21 Oct 2021 05:08:22 -0700 (PDT)
Received: from phenom.ffwll.local ([2a02:168:57f4:0:efd0:b9e5:5ae6:c2fa])
 by smtp.gmail.com with ESMTPSA id g33sm4267021wmp.45.2021.10.21.05.08.21
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 21 Oct 2021 05:08:21 -0700 (PDT)
Date: Thu, 21 Oct 2021 14:08:19 +0200
From: Daniel Vetter <daniel@ffwll.ch>
To: Christian =?iso-8859-1?Q?K=F6nig?= <ckoenig.leichtzumerken@gmail.com>
Message-ID: <YXFYM/15tbTF2bi2@phenom.ffwll.local>
References: <20211015115720.79958-1-maarten.lankhorst@linux.intel.com>
 <20211015115720.79958-3-maarten.lankhorst@linux.intel.com>
 <ebf0714c-2f49-a0ad-1861-16394ade468d@amd.com>
 <9b7e43bb-e175-0aff-2cc1-cc10236fe8e5@linux.intel.com>
 <06fa85f5-3664-4da4-bde8-6d7d2f199251@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <06fa85f5-3664-4da4-bde8-6d7d2f199251@gmail.com>
X-Operating-System: Linux phenom 5.10.0-8-amd64 
X-Virus-Scanned: ClamAV using ClamSMTP
Subject: Re: [Linaro-mm-sig] [PATCH 2/2] dma-buf: Fix dma_resv_test_signaled.
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
Cc: intel-gfx@lists.freedesktop.org,
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org,
 Christian =?iso-8859-1?Q?K=F6nig?= <christian.koenig@amd.com>,
 linux-media@vger.kernel.org
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Errors-To: linaro-mm-sig-bounces@lists.linaro.org
Sender: "Linaro-mm-sig" <linaro-mm-sig-bounces@lists.linaro.org>
X-Virus-Scanned: ClamAV using ClamSMTP

On Fri, Oct 15, 2021 at 02:56:59PM +0200, Christian K=F6nig wrote:
> =

> =

> Am 15.10.21 um 14:52 schrieb Maarten Lankhorst:
> > Op 15-10-2021 om 14:07 schreef Christian K=F6nig:
> > > Am 15.10.21 um 13:57 schrieb Maarten Lankhorst:
> > > > Commit 7fa828cb9265 ("dma-buf: use new iterator in dma_resv_test_si=
gnaled")
> > > > accidentally forgot to test whether the dma-buf is actually signale=
d, breaking
> > > > pretty much everything depending on it.
> > > NAK, the dma_resv_for_each_fence_unlocked() returns only unsignaled f=
ences. So the code is correct as it is.
> > That seems like it might cause some unexpected behavior when that funct=
ion is called with one of the fence locks held, if it calls dma_fence_signa=
l().
> > =

> > Could it be changed to only test the signaled bit, in which case this p=
atch would still be useful?
> =

> That's exactly what I suggested as well, but Daniel was against that beca=
use
> of concerns around barriers.

I don't want open-coded bitmask tests, because the current code we have in
dma-fence.c is missing barriers, and that doesn't get better if we spread
that all around. But if you want this then wrap it in some static inline
in dma-fence.h or so, that's fine. Just not open-coded outside of these
files, like i915-gem code does a lot (which imo is just plain a disaster).

> > Or at least add some lockdep annotations, that fence->lock might be tak=
en. So any hangs would at least be easy to spot with lockdep.
> =

> That should be trivial doable.

might_lock is trivial to add, but it's more complicated. The spinlock is
provided by the fence code, which means there's lots of different lockdep
classes. A might_lock on fence->lock is better than nothing, but maybe not
good enough.

What we might need are a few more pieces:
- a fake dma-fence spinlock lockdep key, maybe call it dma_fence_lock_key
  or so.
- in dma_fence_init we lock dma_fence_lock_key, and then might_lock the
  actual spinlock passed as an argument. This establishes dependencies
  from that fake lock to all real fence spinlocks
- anywhere we need a might lock we take dma_fence_lock_key instead

The potential issue here is that this might result in lockdep splats in
cases where fences somehow naturally nest (maybe drm/sched job fence vs hw
fence). So perhaps too much.
-Daniel
-- =

Daniel Vetter
Software Engineer, Intel Corporation
http://blog.ffwll.ch
_______________________________________________
Linaro-mm-sig mailing list
Linaro-mm-sig@lists.linaro.org
https://lists.linaro.org/mailman/listinfo/linaro-mm-sig
