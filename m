Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id E482F6A4FCE
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 28 Feb 2023 00:48:40 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id EA4E84423F
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 27 Feb 2023 23:48:39 +0000 (UTC)
Received: from mail-oi1-f170.google.com (mail-oi1-f170.google.com [209.85.167.170])
	by lists.linaro.org (Postfix) with ESMTPS id E47EA3EF1D
	for <linaro-mm-sig@lists.linaro.org>; Mon, 27 Feb 2023 23:48:19 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=gmail.com header.s=20210112 header.b=K6xIqoXZ;
	spf=pass (lists.linaro.org: domain of robdclark@gmail.com designates 209.85.167.170 as permitted sender) smtp.mailfrom=robdclark@gmail.com;
	dmarc=pass (policy=none) header.from=gmail.com
Received: by mail-oi1-f170.google.com with SMTP id bi17so6659717oib.3
        for <linaro-mm-sig@lists.linaro.org>; Mon, 27 Feb 2023 15:48:19 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=FKSwno4yMBuKuVi+ZSrCp4LKarUpIQwJn0aROTJSVPk=;
        b=K6xIqoXZ6FP/ajGp3qSSJ4Yl3u566BiU+rbIovj9i84oH3hdsB8ClIBzNENHKdz6FI
         w+2FZIU+pxZMLQiC3P5GAO4FdmJSbVRYmgSv500SW0QV0PMj27cX5jAV45jeffNn/KK9
         uwGgWNZ/F511Q+mjhjRWws10NF1c3FiAg/akkkcjHGQwk8p5CSI82fbhoHg4UzpDtdJk
         xMIFJssvIqOYtdqnyefqJFPTg3Vu14lRRoQ84SAhWSVAPRSVGzZSnLnPgd/wjkZ1B26Q
         wYW3FA5ffz0ARuShl5bv+yrJTUJ3vWbDiACDmqIe53YTcBr++8NtONRvxpq9R/cqo4kS
         ssKw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=FKSwno4yMBuKuVi+ZSrCp4LKarUpIQwJn0aROTJSVPk=;
        b=nZdP3R4w2Ncmun4SQMBFxhAjHWfG0a0y7tC5o8KnBC0LtQ5CvE7wDDu84yc92HE2+U
         7zxDVwEqYha1zh2M45dH/nTp0y6KaX7STxJiMDvktKw7MsMvst3VYCOzb/SOm4o4f+Dz
         qWTO9BF3B0V7rwOVRvXcfW1HKJGhelWHvEH6h5vFCLqkyvOJZYwv35lnXXjO9kgiaNcU
         f2Hq8S4E9G1Zf8tJFrRiQ+6aUHXZ2loHGeRqIIGUU9q/d0J/TmWuW2CMXSsFqiRmM7+D
         HL63HmO2+boYshAJk0toJF/o+6s6RDBI5Q7RBDJI1yD1YCYnnM/nIjkqySN9Jq8gQlK5
         1LLA==
X-Gm-Message-State: AO0yUKXzm11WHPnkyeNsPrbwH7wHwEayv727y/qyWZAUDb7ZLaRez2sy
	VIHteVeGAzsaDZsIQ/H4rrBG3RTlcP1xvvQrwfQ=
X-Google-Smtp-Source: AK7set9BeCESARwhg9B9YCHYV9PwJ6DW0BgtK7IdrrsVF68N42nIyfb0Mo0ZjTXVcd7JG36WHxaYDqm6rTmVVJlmVS0=
X-Received: by 2002:a05:6808:180b:b0:37f:b1ac:6b90 with SMTP id
 bh11-20020a056808180b00b0037fb1ac6b90mr651474oib.0.1677541699155; Mon, 27 Feb
 2023 15:48:19 -0800 (PST)
MIME-Version: 1.0
References: <20230223113814.3010cedc@eldfell> <CAF6AEGuE89kuKTjjzwW1xMppcVw-M4-hcrtifed-mvsCA=cshQ@mail.gmail.com>
 <20230224112630.313d7b76@eldfell> <a47e2686-1e35-39a3-0f0c-6c3b9522f8ff@linux.intel.com>
 <20230224122403.6a088da1@eldfell> <582a9b92-d246-fce2-cf39-539d9a2db17f@linux.intel.com>
 <20230224130053.3f8939e2@eldfell> <c5d046d6-ab8e-2bc7-5110-dba78b91348b@linux.intel.com>
 <74e409dc-b642-779e-a755-b793c378e43a@amd.com> <CAF6AEGs_yzEj81yNP3KhmVP9Yo3rwTc5vntEVrm9tHw6+w1G_g@mail.gmail.com>
 <Y/0iM+ycUozaVbbC@intel.com> <CAF6AEGtXSEyyjELjGtPvnAN7mX+NwzngmB0PbKHsZqjTm-xYsg@mail.gmail.com>
 <CA+hFU4wtW6wNP2Y0e_iE6NhBSSfVRDxTBUk7kOUNHQPRXpSzrQ@mail.gmail.com>
In-Reply-To: <CA+hFU4wtW6wNP2Y0e_iE6NhBSSfVRDxTBUk7kOUNHQPRXpSzrQ@mail.gmail.com>
From: Rob Clark <robdclark@gmail.com>
Date: Mon, 27 Feb 2023 15:48:07 -0800
Message-ID: <CAF6AEGtaxbJ83sfviVWMic6Q8XoyhLvWCdtYwiSd8A4sV4ZXSQ@mail.gmail.com>
To: Sebastian Wick <sebastian.wick@redhat.com>
X-Rspamd-Action: no action
X-Rspamd-Server: lists.linaro.org
X-Rspamd-Queue-Id: E47EA3EF1D
X-Spamd-Bar: ------
X-Spamd-Result: default: False [-6.50 / 15.00];
	REPLY(-4.00)[];
	BAYES_HAM(-3.00)[100.00%];
	SUSPICIOUS_RECIPS(1.50)[];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20210112];
	R_SPF_ALLOW(-0.20)[+ip4:209.85.128.0/17];
	MIME_GOOD(-0.10)[text/plain];
	PREVIOUSLY_DELIVERED(0.00)[linaro-mm-sig@lists.linaro.org];
	TAGGED_RCPT(0.00)[];
	RWL_MAILSPIKE_POSSIBLE(0.00)[209.85.167.170:from];
	FREEMAIL_CC(0.00)[intel.com,chromium.org,linux.intel.com,padovan.org,daenzer.net,vger.kernel.org,lists.freedesktop.org,amd.com,lists.linaro.org,gmail.com,linaro.org];
	FROM_HAS_DN(0.00)[];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	NEURAL_HAM(-0.00)[-0.991];
	RCPT_COUNT_TWELVE(0.00)[18];
	FREEMAIL_FROM(0.00)[gmail.com];
	RCVD_COUNT_TWO(0.00)[2];
	FROM_EQ_ENVFROM(0.00)[];
	DKIM_TRACE(0.00)[gmail.com:+];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	ARC_NA(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	FREEMAIL_ENVFROM(0.00)[gmail.com];
	MIME_TRACE(0.00)[0:+];
	ASN(0.00)[asn:15169, ipnet:209.85.128.0/17, country:US];
	TO_DN_SOME(0.00)[]
Message-ID-Hash: 5ZK5I2UZYFNF7IQQRPBZEY7KHCO54OIH
X-Message-ID-Hash: 5ZK5I2UZYFNF7IQQRPBZEY7KHCO54OIH
X-MailFrom: robdclark@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: Rodrigo Vivi <rodrigo.vivi@intel.com>, Rob Clark <robdclark@chromium.org>, Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>, Tvrtko Ursulin <tvrtko.ursulin@intel.com>, Gustavo Padovan <gustavo@padovan.org>, =?UTF-8?Q?Michel_D=C3=A4nzer?= <michel@daenzer.net>, open list <linux-kernel@vger.kernel.org>, dri-devel@lists.freedesktop.org, =?UTF-8?Q?Christian_K=C3=B6nig?= <christian.koenig@amd.com>, "moderated list:DMA BUFFER SHARING FRAMEWORK" <linaro-mm-sig@lists.linaro.org>, Pekka Paalanen <ppaalanen@gmail.com>, Luben Tuikov <luben.tuikov@amd.com>, Alex Deucher <alexander.deucher@amd.com>, freedreno@lists.freedesktop.org, Sumit Semwal <sumit.semwal@linaro.org>, "open list:SYNC FILE FRAMEWORK" <linux-media@vger.kernel.org>
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH v4 06/14] dma-buf/sync_file: Support (E)POLLPRI
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/5ZK5I2UZYFNF7IQQRPBZEY7KHCO54OIH/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

On Mon, Feb 27, 2023 at 2:44 PM Sebastian Wick
<sebastian.wick@redhat.com> wrote:
>
> On Mon, Feb 27, 2023 at 11:20 PM Rob Clark <robdclark@gmail.com> wrote:
> >
> > On Mon, Feb 27, 2023 at 1:36 PM Rodrigo Vivi <rodrigo.vivi@intel.com> wrote:
> > >
> > > On Fri, Feb 24, 2023 at 09:59:57AM -0800, Rob Clark wrote:
> > > > On Fri, Feb 24, 2023 at 7:27 AM Luben Tuikov <luben.tuikov@amd.com> wrote:
> > > > >
> > > > > On 2023-02-24 06:37, Tvrtko Ursulin wrote:
> > > > > >
> > > > > > On 24/02/2023 11:00, Pekka Paalanen wrote:
> > > > > >> On Fri, 24 Feb 2023 10:50:51 +0000
> > > > > >> Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com> wrote:
> > > > > >>
> > > > > >>> On 24/02/2023 10:24, Pekka Paalanen wrote:
> > > > > >>>> On Fri, 24 Feb 2023 09:41:46 +0000
> > > > > >>>> Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com> wrote:
> > > > > >>>>
> > > > > >>>>> On 24/02/2023 09:26, Pekka Paalanen wrote:
> > > > > >>>>>> On Thu, 23 Feb 2023 10:51:48 -0800
> > > > > >>>>>> Rob Clark <robdclark@gmail.com> wrote:
> > > > > >>>>>>
> > > > > >>>>>>> On Thu, Feb 23, 2023 at 1:38 AM Pekka Paalanen <ppaalanen@gmail.com> wrote:
> > > > > >>>>>>>>
> > > > > >>>>>>>> On Wed, 22 Feb 2023 07:37:26 -0800
> > > > > >>>>>>>> Rob Clark <robdclark@gmail.com> wrote:
> > > > > >>>>>>>>
> > > > > >>>>>>>>> On Wed, Feb 22, 2023 at 1:49 AM Pekka Paalanen <ppaalanen@gmail.com> wrote:
> > > > > >>>>>>
> > > > > >>>>>> ...
> > > > > >>>>>>
> > > > > >>>>>>>>>> On another matter, if the application uses SET_DEADLINE with one
> > > > > >>>>>>>>>> timestamp, and the compositor uses SET_DEADLINE on the same thing with
> > > > > >>>>>>>>>> another timestamp, what should happen?
> > > > > >>>>>>>>>
> > > > > >>>>>>>>> The expectation is that many deadline hints can be set on a fence.
> > > > > >>>>>>>>> The fence signaller should track the soonest deadline.
> > > > > >>>>>>>>
> > > > > >>>>>>>> You need to document that as UAPI, since it is observable to userspace.
> > > > > >>>>>>>> It would be bad if drivers or subsystems would differ in behaviour.
> > > > > >>>>>>>>
> > > > > >>>>>>>
> > > > > >>>>>>> It is in the end a hint.  It is about giving the driver more
> > > > > >>>>>>> information so that it can make better choices.  But the driver is
> > > > > >>>>>>> even free to ignore it.  So maybe "expectation" is too strong of a
> > > > > >>>>>>> word.  Rather, any other behavior doesn't really make sense.  But it
> > > > > >>>>>>> could end up being dictated by how the hw and/or fw works.
> > > > > >>>>>>
> > > > > >>>>>> It will stop being a hint once it has been implemented and used in the
> > > > > >>>>>> wild long enough. The kernel userspace regression rules make sure of
> > > > > >>>>>> that.
> > > > > >>>>>
> > > > > >>>>> Yeah, tricky and maybe a gray area in this case. I think we eluded
> > > > > >>>>> elsewhere in the thread that renaming the thing might be an option.
> > > > > >>>>>
> > > > > >>>>> So maybe instead of deadline, which is a very strong word, use something
> > > > > >>>>> along the lines of "present time hint", or "signalled time hint"? Maybe
> > > > > >>>>> reads clumsy. Just throwing some ideas for a start.
> > > > > >>>>
> > > > > >>>> You can try, but I fear that if it ever changes behaviour and
> > > > > >>>> someone notices that, it's labelled as a kernel regression. I don't
> > > > > >>>> think documentation has ever been the authoritative definition of UABI
> > > > > >>>> in Linux, it just guides drivers and userspace towards a common
> > > > > >>>> understanding and common usage patterns.
> > > > > >>>>
> > > > > >>>> So even if the UABI contract is not documented (ugh), you need to be
> > > > > >>>> prepared to set the UABI contract through kernel implementation.
> > > > > >>>
> > > > > >>> To be the devil's advocate it probably wouldn't be an ABI regression but
> > > > > >>> just an regression. Same way as what nice(2) priorities mean hasn't
> > > > > >>> always been the same over the years, I don't think there is a strict
> > > > > >>> contract.
> > > > > >>>
> > > > > >>> Having said that, it may be different with latency sensitive stuff such
> > > > > >>> as UIs though since it is very observable and can be very painful to users.
> > > > > >>>
> > > > > >>>> If you do not document the UABI contract, then different drivers are
> > > > > >>>> likely to implement it differently, leading to differing behaviour.
> > > > > >>>> Also userspace will invent wild ways to abuse the UABI if there is no
> > > > > >>>> documentation guiding it on proper use. If userspace or end users
> > > > > >>>> observe different behaviour, that's bad even if it's not a regression.
> > > > > >>>>
> > > > > >>>> I don't like the situation either, but it is what it is. UABI stability
> > > > > >>>> trumps everything regardless of whether it was documented or not.
> > > > > >>>>
> > > > > >>>> I bet userspace is going to use this as a "make it faster, make it
> > > > > >>>> hotter" button. I would not be surprised if someone wrote a LD_PRELOAD
> > > > > >>>> library that stamps any and all fences with an expired deadline to
> > > > > >>>> just squeeze out a little more through some weird side-effect.
> > > > > >>>>
> > > > > >>>> Well, that's hopefully overboard in scaring, but in the end, I would
> > > > > >>>> like to see UABI documented so I can have a feeling of what it is for
> > > > > >>>> and how it was intended to be used. That's all.
> > > > > >>>
> > > > > >>> We share the same concern. If you read elsewhere in these threads you
> > > > > >>> will notice I have been calling this an "arms race". If the ability to
> > > > > >>> make yourself go faster does not required additional privilege I also
> > > > > >>> worry everyone will do it at which point it becomes pointless. So yes, I
> > > > > >>> do share this concern about exposing any of this as an unprivileged uapi.
> > > > > >>>
> > > > > >>> Is it possible to limit access to only compositors in some sane way?
> > > > > >>> Sounds tricky when dma-fence should be disconnected from DRM..
> > > > > >>
> > > > > >> Maybe it's not that bad in this particular case, because we are talking
> > > > > >> only about boosting GPU clocks which benefits everyone (except
> > > > > >> battery life) and it does not penalize other programs like e.g.
> > > > > >> job priorities do.
> > > > > >
> > > > > > Apart from efficiency that you mentioned, which does not always favor
> > > > > > higher clocks, sometimes thermal budget is also shared between CPU and
> > > > > > GPU. So more GPU clocks can mean fewer CPU clocks. It's really hard to
> > > > > > make optimal choices without the full coordination between both schedulers.
> > > > > >
> > > > > > But that is even not the main point, which is that if everyone sets the
> > > > > > immediate deadline then having the deadline API is a bit pointless. For
> > > > > > instance there is a reason negative nice needs CAP_SYS_ADMIN.
> > > > > >
> > > > > > However Rob has also pointed out the existence of uclamp.min via
> > > > > > sched_setattr which is unprivileged and can influence frequency
> > > > > > selection in the CPU world, so I conceded on that point. If CPU world
> > > > > > has accepted it so can we I guess.
> > > > > >
> > > > > > So IMO we are back to whether we can agree defining it is a hint is good
> > > > > > enough, be in via the name of the ioctl/flag itself or via documentation.
> > > > > >
> > > > > >> Drivers are not going to use the deadline for scheduling priorities,
> > > > > >> right? I don't recall seeing any mention of that.
> > > > > >>
> > > > > >> ...right?
> > > > > >
> > > > > > I wouldn't have thought it would be beneficial to preclude that, or
> > > > > > assume what drivers would do with the info to begin with.
> > > > > >
> > > > > > For instance in i915 we almost had a deadline based scheduler which was
> > > > > > much fairer than the current priority sorted fifo and in an ideal world
> > > > > > we would either revive or re-implement that idea. In which case
> > > > > > considering the fence deadline would naturally slot in and give true
> > > > > > integration with compositor deadlines (not just boost clocks and pray it
> > > > > > helps).
> > > > > How is user-space to decide whether to use ioctl(SET_DEADLINE) or
> > > > > poll(POLLPRI)?
> > > >
> > > > Implementation of blocking gl/vk/cl APIs, like glFinish() would use
> > > > poll(POLLPRI).  It could also set an immediate deadline and then call
> > > > poll() without POLLPRI.
> > > >
> > > > Other than compositors which do frame-pacing I expect the main usage
> > > > of either of these is mesa.
> > >
> > > Okay, so it looks like we already agreed that having a way to bump frequency
> > > from userspace is acceptable. either because there are already other ways
> > > that you can waste power and because this already acceptable in the CPU
> > > world.
> > >
> > > But why we are doing this in hidden ways then?
> > >
> > > Why can't we have this hint per context that is getting executed?
> > > (either with a boost-context flag or with some low/med/max or '-1' to '1'
> > > value like the latency priority)?
> > >
> > > I don't like the waitboost because this heurisitic fails in some media cases.
> > > I don't like the global setting because we might be alternating a top-priority
> > > with low-priority cases...
> > >
> > > So, why not something per context in execution?
> > >
> >
> > It needs to be finer granularity than per-context, because not all
> > waits should trigger boosting.  For example, virglrenderer ends up
> > with a thread polling unsignaled fences to know when to signal an
> > interrupt to the guest virtgpu.  This alone shouldn't trigger
> > boosting.  (We also wouldn't want to completely disable boosting for
> > virglrenderer.)  Or the usermode driver could be waiting on a fence to
> > know when to do some cleanup.
> >
> > That is not to say that there isn't room for per-context flags to
> > disable/enable boosting for fences created by that context, meaning it
> > could be an AND operation for i915 if it needs to be.
>
> First of all, I believe that the fence deadline hint is a good idea.
> With that being said, I also don't think it is sufficient in a lot of
> cases.
>
> The one thing I was alluding to before and that Pekka mentioned as
> well is that mutter for example has a problem where we're missing the
> deadline consistently because the clocks don't ramp up fast enough and
> there is a MR which is just trying to keep the GPU busy to avoid this.

the dynamic double/triple buffer thing?

> It would be much better if the kernel could make sure the clocks are
> all ramped up when we start submitting work. In the compositor we
> actually have a lot of information that *should* influence clocks. We
> know when we're going to start submitting work and when the deadline
> for that work is beforehand. We know which windows are visible, and
> which one should have the highest priority.

This sounds like something orthogonal.. something for cgroups?  Ie.
android moves visible/foreground apps to a different cgroup to given
them higher priority.  Tvrtko had a patchset to add drm cgroup
support..

> We know when there are
> input events which actually matter.

This I see input as a different boost source for the driver.  (Ie. one
boost signal is missing fence deadlines, another is input events,
etc.)

We end up using downstream input-handlers on the kernel side for this.
Partially for the freq boost (but mostly not, UI interactive workloads
like touchscreen scrolling don't generally need high GPU freqs, they
are more memory bandwidth limited if they are limited by anything)..
really the reason here is to get a head-start on the ~2ms that it
takes to power up the GPU if it is suspended.

But this is not quite perfect, since for example some keys should be
handled on key-down but others on key-up.

But again, this is something different from fence deadlines.  I'm
interested in proposals because we do need something for this.  But I
think it is something is orthogonal to this series.  For input, we
want the kernel to know long before userspace is ready to submit
rendering.

> We know when the deadline for
> client work is.
>
> In the future we also want to make sure clients know beforehand when
> they should start their work and when the deadline is but that's all
> very much WIP in both wayland and vulkan.
>
> There are two issues:
>
> 1. The compositor has no way to communicate any of that information to
> the kernel.
> 2. The only connection to client work the compositor has is a fence to
> the last bit of work that must be done before the deadline after a
> wl_surface.commit.

If the client isn't using multiple GPUs, a single fence should be
sufficient.  And even if it is, well we still have all the dependency
information on the kernel side.  Ie. drm/sched knows what fences it is
waiting on if it is waiting to schedule the work associated with the
last fence.  It would otherwise require drm/sched to be a bit more
tricky than it is so far in this series.

But I think the normal dual-gpu case, the app is only dealing with a single GPU?

> So in both cases a fence is just not the right primitive for us. We
> need to be able to provide per-context/queue information for work that
> will happen in the future and we need a way to refer to a
> context/queue generically and over IPC to boost the clocks of the
> device that a client is actually using and maybe even give priority.
>
> But like I said, having a per-fence deadline is probably still a good
> idea and doesn't conflict with any of the more coarse information.

Yeah, I think the thing is you need multiple things, and this is only
one of them ;-)

BR,
-R
_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org
