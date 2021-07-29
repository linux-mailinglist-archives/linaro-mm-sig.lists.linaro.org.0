Return-Path: <linaro-mm-sig-bounces@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [107.22.173.205])
	by mail.lfdr.de (Postfix) with ESMTPS id 1CB673D9E18
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 29 Jul 2021 09:09:43 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 2E77963509
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 29 Jul 2021 07:09:42 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
	id 0F69D63524; Thu, 29 Jul 2021 07:09:40 +0000 (UTC)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 3E76D60C64;
	Thu, 29 Jul 2021 07:09:37 +0000 (UTC)
X-Original-To: linaro-mm-sig@lists.linaro.org
Delivered-To: linaro-mm-sig@lists.linaro.org
Received: from lists.linaro.org (localhost [127.0.0.1])
 by lists.linaro.org (Postfix) with ESMTP id 33E5A60749
 for <linaro-mm-sig@lists.linaro.org>; Thu, 29 Jul 2021 07:09:35 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
 id 311D060C64; Thu, 29 Jul 2021 07:09:35 +0000 (UTC)
Received: from mail-wm1-f42.google.com (mail-wm1-f42.google.com
 [209.85.128.42])
 by lists.linaro.org (Postfix) with ESMTPS id 2647A60749
 for <linaro-mm-sig@lists.linaro.org>; Thu, 29 Jul 2021 07:09:33 +0000 (UTC)
Received: by mail-wm1-f42.google.com with SMTP id m19so3041318wms.0
 for <linaro-mm-sig@lists.linaro.org>; Thu, 29 Jul 2021 00:09:33 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ffwll.ch; s=google;
 h=date:from:to:cc:subject:message-id:mail-followup-to:references
 :mime-version:content-disposition:content-transfer-encoding
 :in-reply-to; bh=khztsyA4Xuq7DRmcu1TTIQSEqbeknz6KE3Dd7p8lqds=;
 b=eNqhijdJE6YymsOWQNdQAKIichpS9gzs5UZJ5KEg72L0Qy0bH+bjxXNwqRhGnCSjeJ
 z1HW2e6dz3O6Uro8Kq2CIQkN/upTMdWNslpyIeHOnfU6aYHt5rSUfX0JXslPILUyx8JB
 y6U+8Bigu0samzmf9KR2Da6cUt6TRctYFyh4g=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id
 :mail-followup-to:references:mime-version:content-disposition
 :content-transfer-encoding:in-reply-to;
 bh=khztsyA4Xuq7DRmcu1TTIQSEqbeknz6KE3Dd7p8lqds=;
 b=PYWXuiGyH+BYKIVpL6rKuZt08FkI6sYD6DnlomKCe7kDxlpdjXSH5cV/VHXcH/CQLG
 EJkmicQx6wDNWLoRYhh7OdPRL2MyuSKo3xquWnHdLmH4r3TADWgM80/0z4s+A6AvOZMO
 MKJaUp4LpYGEMOP1BNSpSWx/AvnVVoI/RXMC/WpWgjUCWY5uFKJi3uQtq69DwCFPCZ6X
 mdfSM7VKH3MpRG+/Yb9mrq7b++uYgKgewqlZ6jkcy5mogYKadBzPR2NVOHkIjyvleWxj
 /pIrCZguJjCRCw9qrpBIAZEzJE5PMQo1VTV3asJbCa7ZtOMJKCjAEcXT8EGHl7+hSWio
 ushg==
X-Gm-Message-State: AOAM530T+9PgTPPe7b3b9g1wl5cEL/jxAgoUla6gsv2CckNxswuyRpU+
 x3RvO76NNKvJIhWejxVTaaTLHw==
X-Google-Smtp-Source: ABdhPJya6t37/zP2fn+AGgoQScAbX8dTg7R2sruxHnwfNx/V6dol3NlRy/0ereppDACVsUfqIPeycg==
X-Received: by 2002:a05:600c:2dd0:: with SMTP id
 e16mr3193113wmh.113.1627542572057; 
 Thu, 29 Jul 2021 00:09:32 -0700 (PDT)
Received: from phenom.ffwll.local ([2a02:168:57f4:0:efd0:b9e5:5ae6:c2fa])
 by smtp.gmail.com with ESMTPSA id t17sm2188136wru.94.2021.07.29.00.09.30
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 29 Jul 2021 00:09:31 -0700 (PDT)
Date: Thu, 29 Jul 2021 09:09:29 +0200
From: Daniel Vetter <daniel@ffwll.ch>
To: Rob Clark <robdclark@gmail.com>
Message-ID: <YQJUKXgf/Q957fmy@phenom.ffwll.local>
Mail-Followup-To: Rob Clark <robdclark@gmail.com>,
 Michel =?iso-8859-1?Q?D=E4nzer?= <michel@daenzer.net>,
 Rob Clark <robdclark@chromium.org>,
 Matthew Brost <matthew.brost@intel.com>,
 Jack Zhang <Jack.Zhang1@amd.com>,
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
References: <20210726233854.2453899-1-robdclark@gmail.com>
 <28ca4167-4a65-0ccc-36be-5fb017f6f49d@daenzer.net>
 <CAF6AEGuhQ2=DSDaGGVwBz5O+FoZEjpgoVJOcFecpd--a9yDY1w@mail.gmail.com>
 <99984703-c3ca-6aae-5888-5997d7046112@daenzer.net>
 <CAJs_Fx4O4w5djx3-q5zja51-ko_nQ0X2nEk3qoZB_axpBVSrKA@mail.gmail.com>
 <f6d73ec5-85f9-1b18-f2d2-a5f3b7333efa@gmail.com>
 <c9ee242e-542e-e189-a1ec-c1be34d66c93@daenzer.net>
 <04d44873-d8e6-6ae7-f0f9-17bcb484d697@amd.com>
 <9d5f4415-d470-3bc1-7d52-61ba739706ae@daenzer.net>
 <CAF6AEGu409eY9xznTAaBf2ZDcV_AaDELUzN2afWgiHwB_uBwqg@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAF6AEGu409eY9xznTAaBf2ZDcV_AaDELUzN2afWgiHwB_uBwqg@mail.gmail.com>
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
 Jack Zhang <Jack.Zhang1@amd.com>,
 Michel =?iso-8859-1?Q?D=E4nzer?= <michel@daenzer.net>,
 open list <linux-kernel@vger.kernel.org>,
 dri-devel <dri-devel@lists.freedesktop.org>,
 "moderated list:DMA BUFFER SHARING FRAMEWORK" <linaro-mm-sig@lists.linaro.org>,
 Luben Tuikov <luben.tuikov@amd.com>, Roy Sun <Roy.Sun@amd.com>,
 Gustavo Padovan <gustavo@padovan.org>,
 Alex Deucher <alexander.deucher@amd.com>, Tian Tao <tiantao6@hisilicon.com>,
 Lee Jones <lee.jones@linaro.org>,
 Christian =?iso-8859-1?Q?K=F6nig?= <christian.koenig@amd.com>,
 "open list:DMA BUFFER SHARING FRAMEWORK" <linux-media@vger.kernel.org>
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Errors-To: linaro-mm-sig-bounces@lists.linaro.org
Sender: "Linaro-mm-sig" <linaro-mm-sig-bounces@lists.linaro.org>
X-Virus-Scanned: ClamAV using ClamSMTP

On Wed, Jul 28, 2021 at 08:34:13AM -0700, Rob Clark wrote:
> On Wed, Jul 28, 2021 at 6:24 AM Michel D=E4nzer <michel@daenzer.net> wrot=
e:
> >
> > On 2021-07-28 3:13 p.m., Christian K=F6nig wrote:
> > > Am 28.07.21 um 15:08 schrieb Michel D=E4nzer:
> > >> On 2021-07-28 1:36 p.m., Christian K=F6nig wrote:
> > >>> Am 27.07.21 um 17:37 schrieb Rob Clark:
> > >>>> On Tue, Jul 27, 2021 at 8:19 AM Michel D=E4nzer <michel@daenzer.ne=
t> wrote:
> > >>>>> On 2021-07-27 5:12 p.m., Rob Clark wrote:
> > >>>>>> On Tue, Jul 27, 2021 at 7:50 AM Michel D=E4nzer <michel@daenzer.=
net> wrote:
> > >>>>>>> On 2021-07-27 1:38 a.m., Rob Clark wrote:
> > >>>>>>>> From: Rob Clark <robdclark@chromium.org>
> > >>>>>>>>
> > >>>>>>>> Based on discussion from a previous series[1] to add a "boost"=
 mechanism
> > >>>>>>>> when, for example, vblank deadlines are missed.  Instead of a =
boost
> > >>>>>>>> callback, this approach adds a way to set a deadline on the fe=
nce, by
> > >>>>>>>> which the waiter would like to see the fence signalled.
> > >>>>>>>>
> > >>>>>>>> I've not yet had a chance to re-work the drm/msm part of this,=
 but
> > >>>>>>>> wanted to send this out as an RFC in case I don't have a chanc=
e to
> > >>>>>>>> finish the drm/msm part this week.
> > >>>>>>>>
> > >>>>>>>> Original description:
> > >>>>>>>>
> > >>>>>>>> In some cases, like double-buffered rendering, missing vblanks=
 can
> > >>>>>>>> trick the GPU into running at a lower frequence, when really we
> > >>>>>>>> want to be running at a higher frequency to not miss the vblan=
ks
> > >>>>>>>> in the first place.
> > >>>>>>>>
> > >>>>>>>> This is partially inspired by a trick i915 does, but implement=
ed
> > >>>>>>>> via dma-fence for a couple of reasons:
> > >>>>>>>>
> > >>>>>>>> 1) To continue to be able to use the atomic helpers
> > >>>>>>>> 2) To support cases where display and gpu are different drivers
> > >>>>>>>>
> > >>>>>>>> [1] https://nam11.safelinks.protection.outlook.com/?url=3Dhttp=
s%3A%2F%2Fpatchwork.freedesktop.org%2Fseries%2F90331%2F&amp;data=3D04%7C01%=
7Cchristian.koenig%40amd.com%7C269b2df3e1dc4f0b856d08d951c8c768%7C3dd8961fe=
4884e608e11a82d994e183d%7C0%7C0%7C637630745091538563%7CUnknown%7CTWFpbGZsb3=
d8eyJWIjoiMC4wLjAwMDAiLCJQIjoiV2luMzIiLCJBTiI6Ik1haWwiLCJXVCI6Mn0%3D%7C1000=
&amp;sdata=3DeYaSOSS5wOngNAd9wufp5eWCx5GtAwo6GkultJgrjmA%3D&amp;reserved=3D0
> > >>>>>>> Unfortunately, none of these approaches will have the full inte=
nded effect once Wayland compositors start waiting for client buffers to be=
come idle before using them for an output frame (to prevent output frames f=
rom getting delayed by client work). See https://nam11.safelinks.protection=
.outlook.com/?url=3Dhttps%3A%2F%2Fgitlab.gnome.org%2FGNOME%2Fmutter%2F-%2Fm=
erge_requests%2F1880&amp;data=3D04%7C01%7Cchristian.koenig%40amd.com%7C269b=
2df3e1dc4f0b856d08d951c8c768%7C3dd8961fe4884e608e11a82d994e183d%7C0%7C0%7C6=
37630745091538563%7CUnknown%7CTWFpbGZsb3d8eyJWIjoiMC4wLjAwMDAiLCJQIjoiV2luM=
zIiLCJBTiI6Ik1haWwiLCJXVCI6Mn0%3D%7C1000&amp;sdata=3D1ZkOzLqbiKSyCixGZ0u7Hd=
%2Fc1YnUZub%2F%2Fx7RuEclFKg%3D&amp;reserved=3D0 (shameless plug :) for a pr=
oof of concept of this for mutter. The boost will only affect the composito=
r's own GPU work, not the client work (which means no effect at all for ful=
lscreen apps where the compositor can scan out the client buffers directly).
> > >>>>>>>
> > >>>>>> I guess you mean "no effect at all *except* for fullscreen..."?
> > >>>>> I meant what I wrote: The compositor will wait for the next buffe=
r to become idle, so there's no boost from this mechanism for the client dr=
awing to that buffer. And since the compositor does no drawing of its own i=
n this case, there's no boost from that either.
> > >>>>>
> > >>>>>
> > >>>>>> I'd perhaps recommend that wayland compositors, in cases where o=
nly a
> > >>>>>> single layer is changing, not try to be clever and just push the
> > >>>>>> update down to the kernel.
> > >>>>> Even just for the fullscreen direct scanout case, that would requ=
ire some kind of atomic KMS API extension to allow queuing multiple page fl=
ips for the same CRTC.
> > >>>>>
> > >>>>> For other cases, this would also require a mechanism to cancel a =
pending atomic commit, for when another surface update comes in before the =
compositor's deadline, which affects the previously single updating surface=
 as well.
> > >>>>>
> > >>>> Well, in the end, there is more than one compositor out there.. an=
d if
> > >>>> some wayland compositors are going this route, they can also imple=
ment
> > >>>> the same mechanism in userspace using the sysfs that devfreq expor=
ts.
> > >>>>
> > >>>> But it sounds simpler to me for the compositor to have a sort of "=
game
> > >>>> mode" for fullscreen games.. I'm less worried about UI interactive
> > >>>> workloads, boosting the GPU freq upon sudden activity after a peri=
od
> > >>>> of inactivity seems to work reasonably well there.
> > >>> At least AMD hardware is already capable of flipping frames on GPU =
events like finishing rendering (or uploading etc).
> > >>>
> > >>> By waiting in userspace on the CPU before send the frame to the har=
dware you are completely killing of such features.
> > >>>
> > >>> For composing use cases that makes sense, but certainly not for ful=
l screen applications as far as I can see.
> > >> Even for fullscreen, the current KMS API only allows queuing a singl=
e page flip per CRTC, with no way to cancel or otherwise modify it. Therefo=
re, a Wayland compositor has to set a deadline for the next refresh cycle, =
and when the deadline passes, it has to select the best buffer available fo=
r the fullscreen surface. To make sure the flip will not miss the next refr=
esh cycle, the compositor has to pick an idle buffer. If it picks a non-idl=
e buffer, and the pending rendering does not finish in time for vertical bl=
ank, the flip will be delayed by at least one refresh cycle, which results =
in visible stuttering.
> > >>
> > >> (Until the deadline passes, the Wayland compositor can't even know i=
f a previously fullscreen surface will still be fullscreen for the next ref=
resh cycle)
> > >
> > > Well then let's extend the KMS API instead of hacking together workar=
ounds in userspace.
> >
> > That's indeed a possible solution for the fullscreen / direct scanout c=
ase.
> >
> > Not for the general compositing case though, since a compositor does no=
t want to composite multiple output frames per display refresh cycle, so it=
 has to make sure the one frame hits the target.
> >
> =

> I think solving the fullscreen game case is sufficient enough forward
> progress to be useful.  And the results I'm seeing[1] are sufficiently
> positive to convince me that dma-fence deadline support is the right
> thing to do.
> =

> But maybe the solution to make this also useful for mutter is to, once
> we have deadline support, extend it with an ioctl to the dma-fence fd
> so userspace can be the one setting the deadline.

atomic ioctl with TEST_ONLY and SET_DEADLINES? Still gives mutter the
option to bail out with an old frame if it's too late?

Also mutter would need to supply the deadline, because we need to fit the
rendering in still before the actual flip. So gets a bit quirky maybe ...
-Daniel
> =

> [1] https://patchwork.freedesktop.org/patch/447138/
> =

> BR,
> -R

-- =

Daniel Vetter
Software Engineer, Intel Corporation
http://blog.ffwll.ch
_______________________________________________
Linaro-mm-sig mailing list
Linaro-mm-sig@lists.linaro.org
https://lists.linaro.org/mailman/listinfo/linaro-mm-sig
