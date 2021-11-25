Return-Path: <linaro-mm-sig-bounces@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [107.22.173.205])
	by mail.lfdr.de (Postfix) with ESMTPS id 1613E45DE43
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 25 Nov 2021 17:04:15 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 8491C60F1E
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 25 Nov 2021 16:04:13 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
	id F0C8762CA5; Thu, 25 Nov 2021 16:04:11 +0000 (UTC)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 0201C60F06;
	Thu, 25 Nov 2021 16:04:07 +0000 (UTC)
X-Original-To: linaro-mm-sig@lists.linaro.org
Delivered-To: linaro-mm-sig@lists.linaro.org
Received: from lists.linaro.org (localhost [127.0.0.1])
 by lists.linaro.org (Postfix) with ESMTP id C13286049C
 for <linaro-mm-sig@lists.linaro.org>; Thu, 25 Nov 2021 16:04:06 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
 id AA69760F06; Thu, 25 Nov 2021 16:04:06 +0000 (UTC)
Received: from mail-wr1-f51.google.com (mail-wr1-f51.google.com
 [209.85.221.51])
 by lists.linaro.org (Postfix) with ESMTPS id 917BF6049C
 for <linaro-mm-sig@lists.linaro.org>; Thu, 25 Nov 2021 16:04:04 +0000 (UTC)
Received: by mail-wr1-f51.google.com with SMTP id c4so12638394wrd.9
 for <linaro-mm-sig@lists.linaro.org>; Thu, 25 Nov 2021 08:04:04 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ffwll.ch; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:content-transfer-encoding:in-reply-to;
 bh=kHdSMAOwLSMX+m+Y3BVujwHChGV1VSEejUWtst4SuaY=;
 b=AKCw6wouE5Z3sIR16JxmC3KMUy4mTCOLvi5FajeJyXFvcStcoSCYkJCVWjhg5LIRWy
 7i9uqmo6tkd6Gg7NMJ0133gyemWpm8PGYKqQmUBCjOG+VGHLBvcqtlmb2p8iWNaWcnce
 G+glawUUTAXhYQpsJ5ygl55Yg7jH8LIfxLIOw=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:content-transfer-encoding
 :in-reply-to;
 bh=kHdSMAOwLSMX+m+Y3BVujwHChGV1VSEejUWtst4SuaY=;
 b=DtlLjLj3UxsPncibdCr7r2gH3NHQC8J++n+U7OMXVo6xqxVTOkp5A/UFEKOzqIM8W8
 pzqN3PPQ8mo6ianw6D5Q14oIVQ/L6bNOqHnEYuTHZHiS6er+NrEUfuZVd+uybcGEcdSv
 7yuMxY+Z2r8swg4Hhzbpmfvw1dnUDJdzfOTBtpa6hJS9o635iQ3RhbaGeoABCGhPooVA
 LeGqbu+Npf3iNoV9cTylk4sMbeJ2UXdwvZeCu+2hXruyQM2I+EMJxsv8Ca1l157hTO0D
 ue7Zqlwh00qGV0F4zaMYiLtg0w66GoRQC6i+dIiYWZbGq1sqrXszF1YFWKaq8a2neBg6
 jidQ==
X-Gm-Message-State: AOAM533M0OhkOPH4H/++Zicbr7v9A6ajKwD8FZDuBGHXZB0li1gFlLCp
 fpfhnam1fLn3dgDSup+XHM6SQQ==
X-Google-Smtp-Source: ABdhPJy4AgwwjRQfGqxNS+ef+eW9r6rG/MiHKLmp0lZkSO4suOBoZPpIGSFj0BEdfqIdWwabvq5I5A==
X-Received: by 2002:a5d:6da9:: with SMTP id u9mr7656846wrs.237.1637856243644; 
 Thu, 25 Nov 2021 08:04:03 -0800 (PST)
Received: from phenom.ffwll.local ([2a02:168:57f4:0:efd0:b9e5:5ae6:c2fa])
 by smtp.gmail.com with ESMTPSA id g4sm3158104wro.12.2021.11.25.08.04.02
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 25 Nov 2021 08:04:03 -0800 (PST)
Date: Thu, 25 Nov 2021 17:04:01 +0100
From: Daniel Vetter <daniel@ffwll.ch>
To: Christian =?iso-8859-1?Q?K=F6nig?= <ckoenig.leichtzumerken@gmail.com>
Message-ID: <YZ+z8VPjCGAWfpCT@phenom.ffwll.local>
References: <20211123142111.3885-1-christian.koenig@amd.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20211123142111.3885-1-christian.koenig@amd.com>
X-Operating-System: Linux phenom 5.10.0-8-amd64 
X-Virus-Scanned: ClamAV using ClamSMTP
Subject: Re: [Linaro-mm-sig] completely rework the dma_resv semantic
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
Cc: linaro-mm-sig@lists.linaro.org, dri-devel@lists.freedesktop.org,
 daniel@ffwll.ch, linux-media@vger.kernel.org
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Errors-To: linaro-mm-sig-bounces@lists.linaro.org
Sender: "Linaro-mm-sig" <linaro-mm-sig-bounces@lists.linaro.org>
X-Virus-Scanned: ClamAV using ClamSMTP

On Tue, Nov 23, 2021 at 03:20:45PM +0100, Christian K=F6nig wrote:
> Hi guys,
> =

> as discussed before this set of patches completely rework the dma_resv se=
mantic
> and spreads the new handling over all the existing drivers and users.
> =

> First of all this drops the DAG approach because it requires that every s=
ingle
> driver implements those relatively complicated rules correctly and any
> violation of that immediately leads to either corruption of freed memory =
or
> even more severe security problems.
> =

> Instead we just keep all fences around all the time until they are signal=
ed.
> Only fences with the same context are assumed to be signaled in the corre=
ct
> order since this is exercised elsewhere as well. Replacing fences is now =
only
> supported for hardware mechanism like VM page table updates where the har=
dware
> can guarantee that the resource can't be accessed any more.
> =

> Then the concept of a single exclusive fence and multiple shared fences is
> dropped as well.
> =

> Instead the dma_resv object is now just a container for dma_fence objects=
 where
> each fence has associated usage flags. Those use flags describe how the
> operation represented by the dma_fence object is using the resource prote=
cted
> by the dma_resv object. This allows us to add multiple fences for each us=
age
> type.
> =

> Additionally to the existing WRITE/READ usages this patch set also adds t=
he new
> KERNEL and OTHER usages. The KERNEL usages is used in cases where the ker=
nel
> needs to do some operation with the resource protected by the dma_resv ob=
ject,
> like copies or clears. Those are mandatory to wait for when dynamic memory
> management is used.
> =

> The OTHER usage is for cases where we don't want that the operation repre=
sented
> by the dma_fence object participate in any implicit sync but needs to be
> respected by the kernel memory management. Examples for those are VM page=
 table
> updates and preemption fences.
> =

> While doing this the new implementation cleans up existing workarounds al=
l over
> the place, but especially amdgpu and TTM. Surprisingly I also found two u=
se
> cases for the KERNEL/OTHER usage in i915 and Nouveau, those might need mo=
re
> thoughts.
> =

> In general the existing functionality should been preserved, the only dow=
nside
> is that we now always need to reserve a slot before adding a fence. The n=
ewly
> added call to the reservation function can probably use some more cleanup.
> =

> TODOs: Testing, testing, testing, doublechecking the newly added
> kerneldoc for any typos.
> =

> Please review and/or comment,

I like.

Unfortunately also massively burried, but I really like. I think the past
few months (years?) of discussions and bikeshed have been worth it, this
looks tidy and clear in semantics and in how drivers use it all.

Ofc this will take some time to review/test in detail and land, but I
think next steps would be to resurrect Jason's explicit dma-buf fence
import/export series (should also clean up nicely I think), and then roll
out the new fence semantics to a few vk/compute stacks? I think especially
for vk what we want is that normal CS only ever uses OTHER, and any
implicit sync that needs to happen for winsys buffers is done through the
import/export ioctls. GL might need something slightly different, but
normally there's not many shared buffers, so doing a pile of ioctl calls
for implicit synced buffers seems fine. But perhaps GL does want a new CS
ioctl flag.

Cheers, Daniel
-- =

Daniel Vetter
Software Engineer, Intel Corporation
http://blog.ffwll.ch
_______________________________________________
Linaro-mm-sig mailing list
Linaro-mm-sig@lists.linaro.org
https://lists.linaro.org/mailman/listinfo/linaro-mm-sig
