Return-Path: <linaro-mm-sig-bounces@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [107.22.173.205])
	by mail.lfdr.de (Postfix) with ESMTPS id 65A593B2DC2
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 24 Jun 2021 13:23:22 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 5322C6357C
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 24 Jun 2021 11:23:20 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
	id E1E4663527; Thu, 24 Jun 2021 11:23:18 +0000 (UTC)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 1AB2B62CF8;
	Thu, 24 Jun 2021 11:23:16 +0000 (UTC)
X-Original-To: linaro-mm-sig@lists.linaro.org
Delivered-To: linaro-mm-sig@lists.linaro.org
Received: from lists.linaro.org (localhost [127.0.0.1])
 by lists.linaro.org (Postfix) with ESMTP id 585D2607C8
 for <linaro-mm-sig@lists.linaro.org>; Thu, 24 Jun 2021 11:23:14 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
 id 5445862CF8; Thu, 24 Jun 2021 11:23:14 +0000 (UTC)
Received: from mail-oo1-f47.google.com (mail-oo1-f47.google.com
 [209.85.161.47])
 by lists.linaro.org (Postfix) with ESMTPS id 48D56607C8
 for <linaro-mm-sig@lists.linaro.org>; Thu, 24 Jun 2021 11:23:12 +0000 (UTC)
Received: by mail-oo1-f47.google.com with SMTP id
 b17-20020a4aba110000b029024c219a3d83so341733oop.10
 for <linaro-mm-sig@lists.linaro.org>; Thu, 24 Jun 2021 04:23:12 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ffwll.ch; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=N+fO1NsT3+/4WEZxEBub8Q8BkuWwxoPBEqlhTKIIJ8I=;
 b=LErNrksWX0Hro3gbvdvl4cVQOtiy4YZm09Vx9j9lXlVrSvgcAvUjT6iPRyvEgdMQ44
 sBbgi+egQRnw/DzL0cvqnxItRW5i32edhtifHYwpuq2Zdeehd29+5q3mginxbdl8lhSc
 RrJGulitXJjVyxyKf2cVmEmpjO7lAVmsZUhCA=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=N+fO1NsT3+/4WEZxEBub8Q8BkuWwxoPBEqlhTKIIJ8I=;
 b=e7SK05197DxnyuQ3rXsn16rDkdlNrh7fl3Lrd7Vy7kIpoFmomUiHCvQcw2zhoyKPLE
 gUZwcIJWw3fRxBnPZ4soK0BsNjea95Gzdd0u7qBlXWwksv10slv6EFTcCuFf4jEQ785R
 rrH8tHy+LXyjcVCrvDwjzZjd1Xqxyqr8AylF5PuFy+ZdMTV28Dw8IE3xNHSwK+LTOLKM
 S1PQXB1Zw4aDFme3BnA6IbLeHUyeFuu7z2g5I1NN73igLMwwu+y1ZNmNtl9lSas6tpQP
 LJIDCIaWK5zeYn/+lsWz7K6wUM3vdbFar5gjoN0N2AqmcSW3OZ9jV6PgQu8Sqs+6GUBx
 Oh6Q==
X-Gm-Message-State: AOAM533v1aCPpmy2lnAddiOCFyO6yCpdqPujMZmuQ4AkQMpOlc3wlOP/
 espVB2mYMpZAnCapqFChLhCurcsro7fQlQAHFu3J5g==
X-Google-Smtp-Source: ABdhPJy2FkxP9uCAjgHSVGAUyuIAzs5LoJI255+ysGzmVAqm+Q5JlQU0zgPPhXz524KDDzM/bcIN5sXvCDie8V++BiA=
X-Received: by 2002:a4a:ab07:: with SMTP id i7mr3943321oon.89.1624533791640;
 Thu, 24 Jun 2021 04:23:11 -0700 (PDT)
MIME-Version: 1.0
References: <20210622165511.3169559-4-daniel.vetter@ffwll.ch>
 <20210623161955.3371466-1-daniel.vetter@ffwll.ch>
 <CAPj87rN_P7u5JGWBOHc5BEXiz1Znek6fDTyj-uVr2nwEcGX_XA@mail.gmail.com>
In-Reply-To: <CAPj87rN_P7u5JGWBOHc5BEXiz1Znek6fDTyj-uVr2nwEcGX_XA@mail.gmail.com>
From: Daniel Vetter <daniel.vetter@ffwll.ch>
Date: Thu, 24 Jun 2021 13:23:00 +0200
Message-ID: <CAKMK7uF-79a8Q7M49ynhcoBRcD1qmvRQ7DvZ6USeuKyxV4t0zQ@mail.gmail.com>
To: Daniel Stone <daniel@fooishbar.org>
X-Virus-Scanned: ClamAV using ClamSMTP
Subject: Re: [Linaro-mm-sig] [Mesa-dev] [PATCH] dma-buf: Document dma-buf
 implicit fencing/resv fencing rules
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
Cc: Rob Clark <robdclark@chromium.org>, Daniel Stone <daniels@collabora.com>,
 =?UTF-8?Q?Michel_D=C3=A4nzer?= <michel@daenzer.net>,
 Intel Graphics Development <intel-gfx@lists.freedesktop.org>,
 Kevin Wang <kevin1.wang@amd.com>,
 DRI Development <dri-devel@lists.freedesktop.org>,
 =?UTF-8?Q?Christian_K=C3=B6nig?= <christian.koenig@amd.com>,
 "moderated list:DMA BUFFER SHARING FRAMEWORK" <linaro-mm-sig@lists.linaro.org>,
 Luben Tuikov <luben.tuikov@amd.com>,
 "Kristian H . Kristensen" <hoegsberg@google.com>,
 Chen Li <chenli@uniontech.com>, ML mesa-dev <mesa-dev@lists.freedesktop.org>,
 Alex Deucher <alexander.deucher@amd.com>,
 Daniel Vetter <daniel.vetter@intel.com>, Dennis Li <Dennis.Li@amd.com>,
 Deepak R Varma <mh12gx2825@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: linaro-mm-sig-bounces@lists.linaro.org
Sender: "Linaro-mm-sig" <linaro-mm-sig-bounces@lists.linaro.org>
X-Virus-Scanned: ClamAV using ClamSMTP

On Thu, Jun 24, 2021 at 1:08 PM Daniel Stone <daniel@fooishbar.org> wrote:
>
> Hi,
>
> On Wed, 23 Jun 2021 at 17:20, Daniel Vetter <daniel.vetter@ffwll.ch> wrote:
> > +        *
> > +        * IMPLICIT SYNCHRONIZATION RULES:
> > +        *
> > +        * Drivers which support implicit synchronization of buffer access as
> > +        * e.g. exposed in `Implicit Fence Poll Support`_ should follow the
> > +        * below rules.
>
> 'Should' ... ? Must.

Yeah  I guess I can upgrade a bunch of them.

> > +        * - Drivers should add a shared fence through
> > +        *   dma_resv_add_shared_fence() for anything the userspace API
> > +        *   considers a read access. This highly depends upon the API and
> > +        *   window system: E.g. OpenGL is generally implicitly synchronized on
> > +        *   Linux, but explicitly synchronized on Android. Whereas Vulkan is
> > +        *   generally explicitly synchronized for everything, and window system
> > +        *   buffers have explicit API calls (which then need to make sure the
> > +        *   implicit fences store here in @resv are updated correctly).
> > +        *
> > +        * - [...]
>
> Mmm, I think this is all right, but it could be worded much more
> clearly. Right now it's a bunch of points all smashed into one, and
> there's a lot of room for misinterpretation.
>
> Here's a strawman, starting with most basic and restrictive, working
> through to when you're allowed to wriggle your way out:
>
> Rule 1: Drivers must add a shared fence through
> dma_resv_add_shared_fence() for any read accesses against that buffer.
> This appends a fence to the shared array, ensuring that any future
> non-read access will be synchronised against this operation to only
> begin after it has completed.
>
> Rule 2: Drivers must add an exclusive fence through
> dma_resv_add_excl_fence() for any write accesses against that buffer.
> This replaces the exclusive fence with the new operation, ensuring
> that all future access will be synchronised against this operation to
> only begin after it has completed.
>
> Rule 3: Drivers must synchronise all accesses to buffers against
> existing implicit fences. Read accesses must synchronise against the
> exclusive fence (read-after-write), and write accesses must
> synchronise against both the exclusive (write-after-write) and shared
> (write-after-read) fences.
>
> Note 1: Users like OpenGL and window systems on non-Android userspace
> are generally implicitly synchronised. An implicitly-synchronised
> userspace is unaware of fences from prior operations, so the kernel
> mediates scheduling to create the illusion that GPU work is FIFO. For
> example, an application will flush and schedule GPU write work to
> render its image, then immediately tell the window system to display
> that image; the window system may immediately flush and schedule GPU
> read work to display that image, with neither waiting for the write to
> have completed. The kernel provides coherence by synchronising the
> read access against the write fence in the exclusive slot, so that the
> image displayed is correct.
>
> Note 2: Users like Vulkan and Android window system are generally
> explicitly synchronised. An explicitly-synchronised userspace is
> responsible for tracking its own read and write access and providing
> the kernel with synchronisation barriers. For instance, a Vulkan
> application rendering to a buffer and subsequently using it as a read
> texture, must annotate the read operation with a read-after-write
> synchronisation barrier.
>
> Note 3: Implicit and explicit userspace can coexist. For instance, an
> explicitly-synchronised Vulkan application may be running as a client
> of an implicitly-synchronised window system which uses OpenGL for
> composition; an implicitly-synchronised OpenGL application may be
> running as a client of a window system which uses Vulkan for
> composition.
>
> Note 4: Some subsystems, for example V4L2, do not pipeline operations,
> and instead only return to userspace when the scheduled work against a
> buffer has fully retired.
>
> Exemption 1: Fully self-coherent userspace may skip implicit
> synchronisation barriers. For instance, accesses between two
> Vulkan-internal buffers allocated by a single application do not need
> to synchronise against each other's implicit fences, as the client is
> responsible for explicitly providing barriers for access. A
> self-contained OpenGL userspace also has no need to implicitly
> synchronise its access if the driver instead tracks all access and
> inserts the appropriate synchronisation barriers.
>
> Exemption 2: When implicit and explicit userspace coexist, the
> explicit side may skip intermediate synchronisation, and only place
> synchronisation barriers at transition points. For example, a Vulkan
> compositor displaying a buffer from an OpenGL application would need
> to synchronise its first access against the fence placed in the
> exclusive implicit-synchronisation slot. Once this read has fully
> retired, the compositor has no need to participate in implicit
> synchronisation until it is ready to return the buffer to the
> application, at which point it must insert all its non-retired
> accesses into the shared slot, which the application will then
> synchronise future write accesses against.

So I think this is excellent, but maybe better suited in the uapi
section as a sperate chapter? Essentially keep your rules in the
driver-internal docs, but move the Note/excemptions into the uapi
section under a "Implicit Sync Mode of Operation" or whatever heading?

The other thing to keep in mind is that this is very much incomplete:
I'm silent on what drivers should do exactly with these fences. That's
largely because I haven't fully completed that audit, and there's a
pile of bugs there still.
-Daniel
-- 
Daniel Vetter
Software Engineer, Intel Corporation
http://blog.ffwll.ch
_______________________________________________
Linaro-mm-sig mailing list
Linaro-mm-sig@lists.linaro.org
https://lists.linaro.org/mailman/listinfo/linaro-mm-sig
