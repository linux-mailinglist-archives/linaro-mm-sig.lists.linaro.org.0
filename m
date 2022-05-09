Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 8667C51FF2C
	for <lists+linaro-mm-sig@lfdr.de>; Mon,  9 May 2022 16:11:08 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 7691D4805B
	for <lists+linaro-mm-sig@lfdr.de>; Mon,  9 May 2022 14:11:07 +0000 (UTC)
Received: from mail-ej1-f53.google.com (mail-ej1-f53.google.com [209.85.218.53])
	by lists.linaro.org (Postfix) with ESMTPS id E7BB4402F9
	for <linaro-mm-sig@lists.linaro.org>; Mon,  9 May 2022 14:11:02 +0000 (UTC)
Received: by mail-ej1-f53.google.com with SMTP id j6so27046792ejc.13
        for <linaro-mm-sig@lists.linaro.org>; Mon, 09 May 2022 07:11:02 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ffwll.ch; s=google;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:content-transfer-encoding:in-reply-to;
        bh=YAoxFHFRM8IxH//rl2E1kRzGQfqjVgqislcI54PaMRE=;
        b=NVM+IF4sAq0pa7DJ5guFchnH9ankeuEs4ibAokSj9n9jCVYFWiu9Z3P05XucwG8WuJ
         G12ZT6+TeBycSRZCcRHqsGSg21awPboH317dXXstBoUiBg1u4nuJxc82I/2IzGe+PDIc
         Zn2/vMc6O2/jz4dZ0hPSIrauotcRRaOqFeb8o=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:content-transfer-encoding
         :in-reply-to;
        bh=YAoxFHFRM8IxH//rl2E1kRzGQfqjVgqislcI54PaMRE=;
        b=kVn8Hpllsl2k5wGcmK3buqCqUcDOngBT2t9nRS7f5M0t4X0HKSzzKugQpHgD6x+qQF
         nMV2Ug/xE0+bl4yRPFaKeDuUYfHaH8HqG82JukJ0IQQaJ9AWdD9n6Qp/FdV3NTH07M4R
         Pk5PnPMnB2pHKKMb07tXdJmu8kw0VlkrVfbDt/10Vo2IfDd9hE2IH8rFRZLTAc7v4P5M
         6LDjL84lixv5FWbJ7nwvriBuulPvCWXP/D/81PyjRAo9dYyb3qe9zYJ18hyITxhdxhax
         p4v2WGIDnMyH99fM6SqCUlp+W+ifs2nbU1K9iaHbOnIQrO+6ido6X1GQHbxyeWip3c3U
         NTuA==
X-Gm-Message-State: AOAM530pIz15xBWkNjkNHJkfwwRp+Uj+jmv5QFdvqMlPmQdLo0hE1emA
	HBKTi7GUboax4snCCWttoyXVtA==
X-Google-Smtp-Source: ABdhPJy3c8FTR+UJLWgJvIV2jp0CoaWmRyQ/dDVLC9/TpZNgwGriaa43NPahAaje5AnLQbly7HOA0w==
X-Received: by 2002:a17:907:6e2a:b0:6f4:69bb:7ef6 with SMTP id sd42-20020a1709076e2a00b006f469bb7ef6mr14346018ejc.0.1652105461812;
        Mon, 09 May 2022 07:11:01 -0700 (PDT)
Received: from phenom.ffwll.local ([2a02:168:57f4:0:efd0:b9e5:5ae6:c2fa])
        by smtp.gmail.com with ESMTPSA id e1-20020a1709062c0100b006f3ef214dafsm5081920ejh.21.2022.05.09.07.11.00
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 09 May 2022 07:11:01 -0700 (PDT)
Date: Mon, 9 May 2022 16:10:59 +0200
From: Daniel Vetter <daniel@ffwll.ch>
To: Christian =?iso-8859-1?Q?K=F6nig?= <ckoenig.leichtzumerken@gmail.com>
Message-ID: <Ynkg81p6ADyZBa/L@phenom.ffwll.local>
References: <20220502163722.3957-1-christian.koenig@amd.com>
 <YnJQs1iusrBvpuMs@phenom.ffwll.local>
 <a01c7703-f7f7-f8ce-f80e-632a6fdcbbbe@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <a01c7703-f7f7-f8ce-f80e-632a6fdcbbbe@gmail.com>
X-Operating-System: Linux phenom 5.10.0-8-amd64 
Message-ID-Hash: LBJBGWGAJRMHMEANHTPWTCFLQGJRMJUL
X-Message-ID-Hash: LBJBGWGAJRMHMEANHTPWTCFLQGJRMJUL
X-MailFrom: daniel@ffwll.ch
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: Daniel Vetter <daniel@ffwll.ch>, jason@jlekstrand.net, daniels@collabora.com, skhawaja@google.com, maad.aldabagh@amd.com, sergemetral@google.com, sumit.semwal@linaro.org, gustavo@padovan.org, Felix.Kuehling@amd.com, alexander.deucher@amd.com, tzimmermann@suse.de, tvrtko.ursulin@linux.intel.com, linux-media@vger.kernel.org, dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: Tackling the indefinite/user DMA fence problem
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/LBJBGWGAJRMHMEANHTPWTCFLQGJRMJUL/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

On Mon, May 09, 2022 at 08:56:41AM +0200, Christian K=F6nig wrote:
> Am 04.05.22 um 12:08 schrieb Daniel Vetter:
> > On Mon, May 02, 2022 at 06:37:07PM +0200, Christian K=F6nig wrote:
> > > Hello everyone,
> > >=20
> > > it's a well known problem that the DMA-buf subsystem mixed
> > > synchronization and memory management requirements into the same
> > > dma_fence and dma_resv objects. Because of this dma_fence objects need
> > > to guarantee that they complete within a finite amount of time or
> > > otherwise the system can easily deadlock.
> > >=20
> > > One of the few good things about this problem is that it is really go=
od
> > > understood by now.
> > >=20
> > > Daniel and others came up with some documentation:
> > > https://dri.freedesktop.org/docs/drm/driver-api/dma-buf.html?highligh=
t=3Ddma_buf#indefinite-dma-fences
> > >=20
> > > And Jason did an excellent presentation about that problem on last ye=
ars
> > > LPC: https://lpc.events/event/11/contributions/1115/
> > >=20
> > > Based on that we had been able to reject new implementations of
> > > infinite/user DMA fences and mitigate the effect of the few existing
> > > ones.
> > >=20
> > > The still remaining down side is that we don't have a way of using us=
er
> > > fences as dependency in both the explicit (sync_file, drm_syncobj) as
> > > well as the implicit (dma_resv) synchronization objects, resulting in
> > > numerous problems and limitations for things like HMM, user queues
> > > etc....
> > >=20
> > > This patch set here now tries to tackle this problem by untangling the
> > > synchronization from the memory management. What it does *not* try to=
 do
> > > is to fix the existing kernel fences, because I think we now can all
> > > agree on that this isn't really possible.
> > >=20
> > > To archive this goal what I do in this patch set is to add some paral=
lel
> > > infrastructure to cleanly separate normal kernel dma_fence objects fr=
om
> > > indefinite/user fences:
> > >=20
> > > 1. It introduce a DMA_FENCE_FLAG_USER define (after renaming some
> > > existing driver defines). To note that a certain dma_fence is an user
> > > fence and *must* be ignore by memory management and never used as
> > > dependency for normal none user dma_fence objects.
> > >=20
> > > 2. The dma_fence_array and dma_fence_chain containers are modified so
> > > that they are marked as user fences whenever any of their contained
> > > fences are an user fence.
> > >=20
> > > 3. The dma_resv object gets a new DMA_RESV_USAGE_USER flag which must=
 be
> > > used with indefinite/user fences and separates those into it's own
> > > synchronization domain.
> > >=20
> > > 4. The existing dma_buf_poll_add_cb() function is modified so that
> > > indefinite/user fences are included in the polling.
> > >=20
> > > 5. The sync_file synchronization object is modified so that we
> > > essentially have two fence streams instead of just one.
> > >=20
> > > 6. The drm_syncobj is modified in a similar way. User fences are just
> > > ignored unless the driver explicitly states support to wait for them.
> > >=20
> > > 7. The DRM subsystem gains a new DRIVER_USER_FENCE flag which drivers
> > > can use to indicate the need for user fences. If user fences are used
> > > the atomic mode setting starts to support user fences as IN/OUT fence=
s.
> > >=20
> > > 8. Lockdep is used at various critical locations to ensure that nobody
> > > ever tries to mix user fences with non user fences.
> > >=20
> > > The general approach is to just ignore user fences unless a driver
> > > stated explicitely support for them.
> > >=20
> > > On top of all of this I've hacked amdgpu so that we add the resulting=
 CS
> > > fence only as kernel dependency to the dma_resv object and an additio=
nal
> > > wrapped up with a dma_fence_array and a stub user fence.
> > >=20
> > > The result is that the newly added atomic modeset functions now
> > > correctly wait for the user fence to complete before doing the flip. =
And
> > > dependent CS don't pipeline any more, but rather block on the CPU bef=
ore
> > > submitting work.
> > >=20
> > > After tons of debugging and testing everything now seems to not go up=
 in
> > > flames immediately and even lockdep is happy with the annotations.
> > >=20
> > > I'm perfectly aware that this is probably by far the most controversi=
al
> > > patch set I've ever created and I really wish we wouldn't need it. But
> > > we certainly have the requirement for this and I don't see much other
> > > chance to get that working in an UAPI compatible way.
> > >=20
> > > Thoughts/comments?
> > I think you need to type up the goal or exact problem statement you're
> > trying to solve first. What you typed up is a solution along the lines =
of
> > "try to stuff userspace memory fences into dma_fence and see how horrib=
le
> > it all is", and that's certainly an interesting experiment, but what are
> > you trying to solve with it?
>=20
> Well, good point. I explained to much how it works, but now why.
>=20
> In general I would describe the goal as: Providing a standard kernel
> infrastructure for user fences.

So on that goal the part I fully agree on is that drm_syncobj can (and
should imo) be able to contain userspace memory fences. The uapi semantics
and everything is already fully set up to support that, but maybe with
reduced performance: Non-aware userspace (or when you don't trust the
supplier of the umf) needs to block when looking up the fence, and the
dma_fence returned will always be signalled already. But that's just a
mild performance issue (and vk drivers paper over that already with
threading) and not a correctness issue.

> > Like if the issue is to enable opencl or whatever, then that's no probl=
em
> > (rocm on amdkfd is a thing, same maybe without the kfd part can be done
> > anywhere else). If the goal is to enable userspace memory fences for vk,
> > then we really don't need these everywhere, but really only in drm_sync=
obj
> > (and maybe sync_file).
>=20
> Yes, having an in kernel representation for vk user space fences is one of
> the goals.
>=20
> And I was going back and forth if I should rather come up with a new
> structure for this or use the existing dma_fence with a flag as well.
>=20
> I've decided to go down the later router because we have quite a lot of
> existing functionality which can be re-used. But if you have a good argum=
ent
> that it would be more defensive to come up with something completely new,
> I'm perfectly fine with that as well.

Yeah so stuffing that into dma_fence already freaks me out a bit. It is
quite fundamentally a different thing, and it would be really nice to make
that very apparent at the type level too.

E.g. to make sure you never ever end up with an umf fence in mmu notifier
invalidate callback. You can enforce that with runtime checks too, but imo
compile time fail is better than runtime fail.

> > If the goal is specifically atomic kms, then there's an entire can of
> > worms there that I really don't want to think about, but it exists: We
> > have dma_fence as out-fences from atomic commit, and that's already
> > massively broken since most drivers allocate some memory or at least ta=
ke
> > locks which can allocate memory in their commit path. Like i2c. Putting=
 a
> > userspace memory fence as in-fence in there makes that problem
> > substantially worse, since at least in theory you're just not allowed to
> > might_faul in atomic_commit_tail.
>=20
> Yes, that's unfortunately one of the goals as well and yes I completely
> agree on the can of worms. But I think I've solved that.
>=20
> What I do in the patch set is to enforce that the out fence is an user fe=
nce
> when the driver supports user in fences as well.
>=20
> Since user fences doesn't have the memory management dependency drivers c=
an
> actually allocate memory or call I2C functions which takes locks which ha=
ve
> memory allocation dependencies.
>=20
> Or do I miss some other reason why you can't fault or allocate memory in
> atomic_commit_tail? At least lockdep seems to be happy about that now.

The problem is a bit that this breaks the uapi already. At least if the
goal is to have this all be perfectly transparent for userspace - as you
as you have multi-gpu setups going on at least.

> > If the goal is to keep the uapi perfectly compatible then your patch set
> > doesn't look like a solution, since as soon as another driver is involv=
ed
> > which doesn't understand userspace memory fences it all falls apart. So
> > works great for a quick demo with amd+amd sharing, but not much further.
> > And I don't think it's feasible to just rev the entire ecosystem, since
> > that kinda defeats the point of keeping uapi stable - if we rev everyth=
ing
> > we might as well also rev the uapi and make this a bit more incremental
> > again :-)
>=20
> Yes, unfortunately the uapi needs to stay compatible as well and yes that
> means we need to deploy this to all drivers involved.
>=20
> We at least need to be able to provide a stack on new hardware with (for
> example) Ubuntu 18.04 without replacing all the userspace components.
>=20
> What we can replace is the OpenGL stack and if necessary libdrm, but not
> (for example) the X server and most likely not the DDX in some cases.
>=20
> The same applies with surfaceflinger and to some extend Wayland as well.

So for perfect uapi compat for existing compositor I really don't think
stuffing umf into the kernel is the right approach. Too many little
corners that break:

- the in/out fence mismatch every
- cross gpu with different userspace that doesn't understand umf and then
  just ignores them
- compositors which currently assume implicit sync finishes eventually,
  and with umf that gets complicated at best
- same with sync_file, the uapi atm does not have a concept of future
  fence

So you can kinda make this work, but it falls apart all over the place.
And I also don't think smashing umf into all these old concepts helps us
in any way to get towards a desktop which is umf-native.

My take is still that for backwards compat the simplest way is if a
umf-native driver simply provides dma-fence backwards compat as an opt-in,
which userspace chooses when it's necessary. There's really only two
things you need for that to work:

- a timeout of some sort on the dma_fence, which might or might not kill
  the entire context. This is entirey up to how your userspace does or
  does not implement stuff like arb robustness or vk_error_device_lost

- pre-pinned memory management to block out the all the inversions. This
  is a bit more nasty, but since we do have all the code for this already
  it really shouldn't be too tricky to make that happen for the fancy new
  umf world.

You do not need a kernel scheduler or anything like that at all, you can
do full userspace direct submit to hw and all that fun. Maybe do a
drm/sched frontend (and then your submit code does exactly what userspace
would do too).

Importantly the things you really don't need:

- special hw support, even if the only mode your hw supports is with page
  faults and all that: You can make sure all the pages are present
  upfront, and then simply kill the entire context is a page fault
  happens.

- special fw scheduler support: Once the memory management inversions are
  taken care of with pre-pinning under dma_fences, then the only other
  thing you need is a timeout for the dma_fence to signal. And maybe some
  kind of guaranteed ordering if you want to use a dma_fence timeline
  since that one can't go backwards.

Trying to shoehorn umf into all the old concepts like implicit sync or
sync_file which really don't support umf works for a demo, but imo just
isn't solid enough for shipping everywhere.

And long term I really don't think we ever want umf anywhere else than
drm_syncobj, at least for a 100% umf-native stack.

So maybe this all goes back to the old discussion with had, where you
argued for the need for special fw and hw and all that to make the old
dma_fence stuff work. Why is that needed? I still don't get that part ...
-Daniel
--=20
Daniel Vetter
Software Engineer, Intel Corporation
http://blog.ffwll.ch
_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org
