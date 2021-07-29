Return-Path: <linaro-mm-sig-bounces@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [107.22.173.205])
	by mail.lfdr.de (Postfix) with ESMTPS id 877933DA003
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 29 Jul 2021 11:03:51 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id E6AEB63E76
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 29 Jul 2021 09:03:49 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
	id D0FF563570; Thu, 29 Jul 2021 09:03:47 +0000 (UTC)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id DE5396350A;
	Thu, 29 Jul 2021 09:03:44 +0000 (UTC)
X-Original-To: linaro-mm-sig@lists.linaro.org
Delivered-To: linaro-mm-sig@lists.linaro.org
Received: from lists.linaro.org (localhost [127.0.0.1])
 by lists.linaro.org (Postfix) with ESMTP id 483EB60A96
 for <linaro-mm-sig@lists.linaro.org>; Thu, 29 Jul 2021 09:03:43 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
 id 2EB7D6350A; Thu, 29 Jul 2021 09:03:43 +0000 (UTC)
Received: from mail-wm1-f54.google.com (mail-wm1-f54.google.com
 [209.85.128.54])
 by lists.linaro.org (Postfix) with ESMTPS id 24DEF60A96
 for <linaro-mm-sig@lists.linaro.org>; Thu, 29 Jul 2021 09:03:41 +0000 (UTC)
Received: by mail-wm1-f54.google.com with SMTP id b128so3222567wmb.4
 for <linaro-mm-sig@lists.linaro.org>; Thu, 29 Jul 2021 02:03:41 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ffwll.ch; s=google;
 h=date:from:to:cc:subject:message-id:mail-followup-to:references
 :mime-version:content-disposition:content-transfer-encoding
 :in-reply-to; bh=tZq9WBpGzGj/xoxWMyN/SX4ni6yk9168UnPyM/0Pu34=;
 b=AgOpHAsmJFKpCTa9G83TzE3YLhb8hw1/WLLX5GEYl2dIt3c2XVR6jRyNGjmQrL0mzc
 9U0aqmLUNviZcK2p32T3jg7YnfWrHZ163m/SBQcIqMqQk+V2FiDxmnrxyimUBMwhFxCl
 hCAY9AmZwakr7XF570Xd7LOvwQekMkugfc8mw=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id
 :mail-followup-to:references:mime-version:content-disposition
 :content-transfer-encoding:in-reply-to;
 bh=tZq9WBpGzGj/xoxWMyN/SX4ni6yk9168UnPyM/0Pu34=;
 b=Cf0bAHCYYgi87whnSvPrpTFchOPvlWwAX5smUAvtdEuerhztODAqFb0p2K0+8yGlCm
 vHJTR48sjkf1MPCMHbyw0lIA5gCfypAzGFRASxpAtjagcYBA5eax85zjC1jnO/jbabjA
 eUSSX3tG+g78FrbdxGETx60y49XwDwqgLGObVwnMjnvqVQrf6d4Q2Srhz6fGF/zsOnGV
 jEntsGxTJtSDbIgOQI17VFVVtzPmfQCHT2FNpt+Q3GQqtsBpk0Tyiqis1oYLIWujCyOH
 1MrYXAt0L86LQ23NbcP6aCbyY1obHDo4ifm7TwOaT08jgiiH9LOd28ppGq5oZai+nOq9
 ebew==
X-Gm-Message-State: AOAM532zWS4NrNzojKoZHsLG/r7OJ9rm5dRc7adqMkL89A5zQicoP4AP
 06W03t9FPCxIAqnSkqijfWIDXQ==
X-Google-Smtp-Source: ABdhPJxkrH/kywcVb0qmeLSL3TvP5lRMh3WKdA7FI/99yJ/devreqqfI/qopWniyN+YUr05awdgGLQ==
X-Received: by 2002:a1c:19c6:: with SMTP id 189mr1261855wmz.174.1627549420023; 
 Thu, 29 Jul 2021 02:03:40 -0700 (PDT)
Received: from phenom.ffwll.local ([2a02:168:57f4:0:efd0:b9e5:5ae6:c2fa])
 by smtp.gmail.com with ESMTPSA id p15sm2435632wmi.29.2021.07.29.02.03.38
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 29 Jul 2021 02:03:39 -0700 (PDT)
Date: Thu, 29 Jul 2021 11:03:36 +0200
From: Daniel Vetter <daniel@ffwll.ch>
To: Michel =?iso-8859-1?Q?D=E4nzer?= <michel@daenzer.net>
Message-ID: <YQJu6AqKn7bdT1li@phenom.ffwll.local>
Mail-Followup-To: Michel =?iso-8859-1?Q?D=E4nzer?= <michel@daenzer.net>,
 Rob Clark <robdclark@gmail.com>, Rob Clark <robdclark@chromium.org>,
 Matthew Brost <matthew.brost@intel.com>,
 Christian =?iso-8859-1?Q?K=F6nig?= <ckoenig.leichtzumerken@gmail.com>,
 open list <linux-kernel@vger.kernel.org>,
 dri-devel <dri-devel@lists.freedesktop.org>,
 "moderated list:DMA BUFFER SHARING FRAMEWORK" <linaro-mm-sig@lists.linaro.org>,
 Luben Tuikov <luben.tuikov@amd.com>, Roy Sun <Roy.Sun@amd.com>,
 Gustavo Padovan <gustavo@padovan.org>,
 Alex Deucher <alexander.deucher@amd.com>,
 Tian Tao <tiantao6@hisilicon.com>, Lee Jones <lee.jones@linaro.org>,
 Christian =?iso-8859-1?Q?K=F6nig?= <christian.koenig@amd.com>,
 "open list:DMA BUFFER SHARING FRAMEWORK" <linux-media@vger.kernel.org>
References: <CAF6AEGuhQ2=DSDaGGVwBz5O+FoZEjpgoVJOcFecpd--a9yDY1w@mail.gmail.com>
 <99984703-c3ca-6aae-5888-5997d7046112@daenzer.net>
 <CAJs_Fx4O4w5djx3-q5zja51-ko_nQ0X2nEk3qoZB_axpBVSrKA@mail.gmail.com>
 <f6d73ec5-85f9-1b18-f2d2-a5f3b7333efa@gmail.com>
 <c9ee242e-542e-e189-a1ec-c1be34d66c93@daenzer.net>
 <04d44873-d8e6-6ae7-f0f9-17bcb484d697@amd.com>
 <9d5f4415-d470-3bc1-7d52-61ba739706ae@daenzer.net>
 <CAF6AEGu409eY9xznTAaBf2ZDcV_AaDELUzN2afWgiHwB_uBwqg@mail.gmail.com>
 <YQJUKXgf/Q957fmy@phenom.ffwll.local>
 <ff394f2b-b555-e80f-b685-d0d59e2bbe67@daenzer.net>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <ff394f2b-b555-e80f-b685-d0d59e2bbe67@daenzer.net>
X-Operating-System: Linux phenom 5.10.0-7-amd64 
X-Virus-Scanned: ClamAV using ClamSMTP
Subject: Re: [Linaro-mm-sig] [RFC 0/4] dma-fence: Deadline awareness
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
Cc: Rob Clark <robdclark@chromium.org>, Matthew Brost <matthew.brost@intel.com>,
 Roy Sun <Roy.Sun@amd.com>, open list <linux-kernel@vger.kernel.org>,
 dri-devel <dri-devel@lists.freedesktop.org>,
 "moderated list:DMA BUFFER SHARING FRAMEWORK" <linaro-mm-sig@lists.linaro.org>,
 Rob Clark <robdclark@gmail.com>, Luben Tuikov <luben.tuikov@amd.com>,
 Daniel Vetter <daniel@ffwll.ch>, Gustavo Padovan <gustavo@padovan.org>,
 Alex Deucher <alexander.deucher@amd.com>, Tian Tao <tiantao6@hisilicon.com>,
 Lee Jones <lee.jones@linaro.org>,
 Christian =?iso-8859-1?Q?K=F6nig?= <christian.koenig@amd.com>,
 "open list:DMA BUFFER SHARING FRAMEWORK" <linux-media@vger.kernel.org>
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Errors-To: linaro-mm-sig-bounces@lists.linaro.org
Sender: "Linaro-mm-sig" <linaro-mm-sig-bounces@lists.linaro.org>
X-Virus-Scanned: ClamAV using ClamSMTP

On Thu, Jul 29, 2021 at 10:17:43AM +0200, Michel D=E4nzer wrote:
> On 2021-07-29 9:09 a.m., Daniel Vetter wrote:
> > On Wed, Jul 28, 2021 at 08:34:13AM -0700, Rob Clark wrote:
> >> On Wed, Jul 28, 2021 at 6:24 AM Michel D=E4nzer <michel@daenzer.net> w=
rote:
> >>> On 2021-07-28 3:13 p.m., Christian K=F6nig wrote:
> >>>> Am 28.07.21 um 15:08 schrieb Michel D=E4nzer:
> >>>>> On 2021-07-28 1:36 p.m., Christian K=F6nig wrote:
> >>>>>> Am 27.07.21 um 17:37 schrieb Rob Clark:
> >>>>>>> On Tue, Jul 27, 2021 at 8:19 AM Michel D=E4nzer <michel@daenzer.n=
et> wrote:
> >>>>>>>> On 2021-07-27 5:12 p.m., Rob Clark wrote:
> >>>>>>>>> On Tue, Jul 27, 2021 at 7:50 AM Michel D=E4nzer <michel@daenzer=
.net> wrote:
> >>>>>>>>>> On 2021-07-27 1:38 a.m., Rob Clark wrote:
> >>>>>>>>>>> From: Rob Clark <robdclark@chromium.org>
> >>>>>>>>>>>
> >>>>>>>>>>> Based on discussion from a previous series[1] to add a "boost=
" mechanism
> >>>>>>>>>>> when, for example, vblank deadlines are missed.  Instead of a=
 boost
> >>>>>>>>>>> callback, this approach adds a way to set a deadline on the f=
ence, by
> >>>>>>>>>>> which the waiter would like to see the fence signalled.
> >>>>>>>>>>>
> >>>>>>>>>>> I've not yet had a chance to re-work the drm/msm part of this=
, but
> >>>>>>>>>>> wanted to send this out as an RFC in case I don't have a chan=
ce to
> >>>>>>>>>>> finish the drm/msm part this week.
> >>>>>>>>>>>
> >>>>>>>>>>> Original description:
> >>>>>>>>>>>
> >>>>>>>>>>> In some cases, like double-buffered rendering, missing vblank=
s can
> >>>>>>>>>>> trick the GPU into running at a lower frequence, when really =
we
> >>>>>>>>>>> want to be running at a higher frequency to not miss the vbla=
nks
> >>>>>>>>>>> in the first place.
> >>>>>>>>>>>
> >>>>>>>>>>> This is partially inspired by a trick i915 does, but implemen=
ted
> >>>>>>>>>>> via dma-fence for a couple of reasons:
> >>>>>>>>>>>
> >>>>>>>>>>> 1) To continue to be able to use the atomic helpers
> >>>>>>>>>>> 2) To support cases where display and gpu are different drive=
rs
> >>>>>>>>>>>
> >>>>>>>>>>> [1] https://nam11.safelinks.protection.outlook.com/?url=3Dhtt=
ps%3A%2F%2Fpatchwork.freedesktop.org%2Fseries%2F90331%2F&amp;data=3D04%7C01=
%7Cchristian.koenig%40amd.com%7C269b2df3e1dc4f0b856d08d951c8c768%7C3dd8961f=
e4884e608e11a82d994e183d%7C0%7C0%7C637630745091538563%7CUnknown%7CTWFpbGZsb=
3d8eyJWIjoiMC4wLjAwMDAiLCJQIjoiV2luMzIiLCJBTiI6Ik1haWwiLCJXVCI6Mn0%3D%7C100=
0&amp;sdata=3DeYaSOSS5wOngNAd9wufp5eWCx5GtAwo6GkultJgrjmA%3D&amp;reserved=
=3D0
> >>>>>>>>>> Unfortunately, none of these approaches will have the full int=
ended effect once Wayland compositors start waiting for client buffers to b=
ecome idle before using them for an output frame (to prevent output frames =
from getting delayed by client work). See https://nam11.safelinks.protectio=
n.outlook.com/?url=3Dhttps%3A%2F%2Fgitlab.gnome.org%2FGNOME%2Fmutter%2F-%2F=
merge_requests%2F1880&amp;data=3D04%7C01%7Cchristian.koenig%40amd.com%7C269=
b2df3e1dc4f0b856d08d951c8c768%7C3dd8961fe4884e608e11a82d994e183d%7C0%7C0%7C=
637630745091538563%7CUnknown%7CTWFpbGZsb3d8eyJWIjoiMC4wLjAwMDAiLCJQIjoiV2lu=
MzIiLCJBTiI6Ik1haWwiLCJXVCI6Mn0%3D%7C1000&amp;sdata=3D1ZkOzLqbiKSyCixGZ0u7H=
d%2Fc1YnUZub%2F%2Fx7RuEclFKg%3D&amp;reserved=3D0 (shameless plug :) for a p=
roof of concept of this for mutter. The boost will only affect the composit=
or's own GPU work, not the client work (which means no effect at all for fu=
llscreen apps where the compositor can scan out the client buffers directly=
).
> >>>>>>>>>>
> >>>>>>>>> I guess you mean "no effect at all *except* for fullscreen..."?
> >>>>>>>> I meant what I wrote: The compositor will wait for the next buff=
er to become idle, so there's no boost from this mechanism for the client d=
rawing to that buffer. And since the compositor does no drawing of its own =
in this case, there's no boost from that either.
> >>>>>>>>
> >>>>>>>>
> >>>>>>>>> I'd perhaps recommend that wayland compositors, in cases where =
only a
> >>>>>>>>> single layer is changing, not try to be clever and just push the
> >>>>>>>>> update down to the kernel.
> >>>>>>>> Even just for the fullscreen direct scanout case, that would req=
uire some kind of atomic KMS API extension to allow queuing multiple page f=
lips for the same CRTC.
> >>>>>>>>
> >>>>>>>> For other cases, this would also require a mechanism to cancel a=
 pending atomic commit, for when another surface update comes in before the=
 compositor's deadline, which affects the previously single updating surfac=
e as well.
> >>>>>>>>
> >>>>>>> Well, in the end, there is more than one compositor out there.. a=
nd if
> >>>>>>> some wayland compositors are going this route, they can also impl=
ement
> >>>>>>> the same mechanism in userspace using the sysfs that devfreq expo=
rts.
> >>>>>>>
> >>>>>>> But it sounds simpler to me for the compositor to have a sort of =
"game
> >>>>>>> mode" for fullscreen games.. I'm less worried about UI interactive
> >>>>>>> workloads, boosting the GPU freq upon sudden activity after a per=
iod
> >>>>>>> of inactivity seems to work reasonably well there.
> >>>>>> At least AMD hardware is already capable of flipping frames on GPU=
 events like finishing rendering (or uploading etc).
> >>>>>>
> >>>>>> By waiting in userspace on the CPU before send the frame to the ha=
rdware you are completely killing of such features.
> >>>>>>
> >>>>>> For composing use cases that makes sense, but certainly not for fu=
ll screen applications as far as I can see.
> >>>>> Even for fullscreen, the current KMS API only allows queuing a sing=
le page flip per CRTC, with no way to cancel or otherwise modify it. Theref=
ore, a Wayland compositor has to set a deadline for the next refresh cycle,=
 and when the deadline passes, it has to select the best buffer available f=
or the fullscreen surface. To make sure the flip will not miss the next ref=
resh cycle, the compositor has to pick an idle buffer. If it picks a non-id=
le buffer, and the pending rendering does not finish in time for vertical b=
lank, the flip will be delayed by at least one refresh cycle, which results=
 in visible stuttering.
> >>>>>
> >>>>> (Until the deadline passes, the Wayland compositor can't even know =
if a previously fullscreen surface will still be fullscreen for the next re=
fresh cycle)
> >>>>
> >>>> Well then let's extend the KMS API instead of hacking together worka=
rounds in userspace.
> >>>
> >>> That's indeed a possible solution for the fullscreen / direct scanout=
 case.
> >>>
> >>> Not for the general compositing case though, since a compositor does =
not want to composite multiple output frames per display refresh cycle, so =
it has to make sure the one frame hits the target.
> >>
> >> I think solving the fullscreen game case is sufficient enough forward
> >> progress to be useful.  And the results I'm seeing[1] are sufficiently
> >> positive to convince me that dma-fence deadline support is the right
> >> thing to do.
> =

> I'm not questioning that this approach helps when there's a direct chain =
of fences from the client to the page flip. I'm pointing out there will not=
 always be such a chain.
> =

> =

> >> But maybe the solution to make this also useful for mutter
> =

> It's not just mutter BTW. I understand gamescope has been doing this for =
some time already. And there seems to be consensus among developers of Wayl=
and compositors that this is needed, so I expect at least all the major com=
positors to do this longer term.
> =

> =

> >> is to, once we have deadline support, extend it with an ioctl to the
> >> dma-fence fd so userspace can be the one setting the deadline.
> =

> I was thinking in a similar direction.
> =

> > atomic ioctl with TEST_ONLY and SET_DEADLINES? Still gives mutter the
> > option to bail out with an old frame if it's too late?
> =

> This is a bit cryptic though, can you elaborate?

So essentially when the mutter compositor guesstimator is fairly confident
about the next frame's composition (recall you're keeping track of clients
to estimate their usual latency or something like that), then it does a
TEST_ONLY commit to check it all works and prep the rendering, but _not_
yet fire it off.

Instead it waits until all buffers complete, and if some don't, pick the
previous one. Which I guess in an extreme case would mean you need a
different window tree configuration and maybe different TEST_ONLY check
and all that, not sure how you solve that.

Anyway, in that TEST_ONLY commit my idea is that you'd also supply all the
in-fences you expect to depend upon (maybe we need an additional list of
in-fences for your rendering job), plus a deadline when you want to have
them done (so that there's enough time for your render job still). And the
kernel then calls dma_fence_set_deadline on all of them.

Pondering this more, maybe a separate ioctl is simpler where you just
supply a list of in-fences and deadlines.

The real reason I want to tie this to atomic is for priviledge checking
reasons. I don't think normal userspace should have the power to set
arbitrary deadlines like this - at least on i915 it will also give you a
slight priority boost and stuff like that, to make sure your rendering for
the current frame goes in ahead of the next frame's prep work.

So maybe just a new ioctl that does this which is limited to the current
kms owner (aka drm_master)?

In i915 we also do a mild boost for when userspace waits on a buffer
(assuming it's blocking the cpu), but that boost has a pretty sharp
decay/cooldown to prevent abuse and keeping the gpu artificially
upclocked. That really is just meant to avoid the tailspin when you have a
ping-pong workload between gpu and cpu and both downclock in turn because
the other side is too slow and the gpu/cpu aren't really busy enough.
Until you're crawling at idle clocks getting nothing done.

I think on the windows side they "fix" this by making the clock
adjustments extremely conservative and slow (except when they detect that
it's a game/benchmark). Good enough for battery tests, not so great in
reality.
-Daniel

> > Also mutter would need to supply the deadline, because we need to fit t=
he
> > rendering in still before the actual flip. So gets a bit quirky maybe .=
..
> =

> That should be fine. mutter is already keeping track of how long its rend=
ering takes.
> =

> =

> -- =

> Earthling Michel D=E4nzer               |               https://redhat.com
> Libre software enthusiast             |             Mesa and X developer

-- =

Daniel Vetter
Software Engineer, Intel Corporation
http://blog.ffwll.ch
_______________________________________________
Linaro-mm-sig mailing list
Linaro-mm-sig@lists.linaro.org
https://lists.linaro.org/mailman/listinfo/linaro-mm-sig
