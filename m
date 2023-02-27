Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id D8FD66A4ED9
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 27 Feb 2023 23:45:12 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id BD63C3F339
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 27 Feb 2023 22:45:11 +0000 (UTC)
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.129.124])
	by lists.linaro.org (Postfix) with ESMTPS id D75043EA2E
	for <linaro-mm-sig@lists.linaro.org>; Mon, 27 Feb 2023 22:44:51 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=redhat.com header.s=mimecast20190719 header.b="PLXYo/mU";
	spf=pass (lists.linaro.org: domain of sewick@redhat.com designates 170.10.129.124 as permitted sender) smtp.mailfrom=sewick@redhat.com;
	dmarc=pass (policy=none) header.from=redhat.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1677537891;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 in-reply-to:in-reply-to:references:references;
	bh=+pA2l/M+RwgFn7X5RBLShKIcqd1rRLy2xsj8gNSfBQ8=;
	b=PLXYo/mULXCG0yCVeHci0U8i//nUJSuzsglvL6QCQIiG5ZCMpoLwpTyTf63mX8A7Fwtlfa
	mSyJSuwekmqHP/4gw+DsFMdqP1511W+VE1G1yHsPDEmQRX/vLOCAyzgqHC1W1W0hb5SNmE
	DDW+Qw7VmSwTMoJE+7ngU6iCZxPFBH4=
Received: from mail-lf1-f71.google.com (mail-lf1-f71.google.com
 [209.85.167.71]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_128_GCM_SHA256) id
 us-mta-445-yiKLKBidMCiCw7rC7pn-Bg-1; Mon, 27 Feb 2023 17:44:48 -0500
X-MC-Unique: yiKLKBidMCiCw7rC7pn-Bg-1
Received: by mail-lf1-f71.google.com with SMTP id o22-20020a056512051600b004db26d37741so2287676lfb.19
        for <linaro-mm-sig@lists.linaro.org>; Mon, 27 Feb 2023 14:44:48 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=+pA2l/M+RwgFn7X5RBLShKIcqd1rRLy2xsj8gNSfBQ8=;
        b=dURkueHOJhE80EQyR1J5HjyOAQCWb9dV/gGy1Wfc1jKnaquxwD8T+73/LekEwPEtLl
         0GH3KZ6IZqJQvm+kBohKWXRgDp5k3SLtDSg9e+Rnd3kIIktkBEgXtLHyyBGupE+jmgTE
         7dwui8aJZKGnVstNwFQw8CjFNUiUwg0g52Kj4e3Tp39aNq+5iTfWL6IEzPlWvw/YWUIQ
         nJzhqABAFnZJ9fpKgc1nMiTzGtPlFiCkHAZzwPnBn3lbx0kO7U/jMXGiX/huBnbCUvtT
         g2gfmkUEjtK4HJcKpFlQTJ4W84z42UGUrsb9wrVSQB3LlvB4cAJrfcEZV+SFbWSHhach
         QjUA==
X-Gm-Message-State: AO0yUKUqxpg0h8ubnWxxF/99i41jQMb3e7fY2ejrOol/vlxsDSrgQyPf
	HCuEJpYUjUcGh7Ttxl6pdUTQ3zKHPChsEy9zNG9UAjucqB4AWY3ObAvVYYBeToFGwbTqkDfwWm2
	7UouSzrHb/tvwm39H2NQ+FeDcdNgd2fvY/0thzuSsNlc=
X-Received: by 2002:ac2:5197:0:b0:4d5:ca43:7047 with SMTP id u23-20020ac25197000000b004d5ca437047mr56174lfi.10.1677537886880;
        Mon, 27 Feb 2023 14:44:46 -0800 (PST)
X-Google-Smtp-Source: AK7set/XIZXBEKvpsT1DavyreZhhrmi5g65E+sU4BmXMfM2wqaggHe7ObCNkJtwLsRuJuwEQGhfvziGslQ+FmjMDdis=
X-Received: by 2002:ac2:5197:0:b0:4d5:ca43:7047 with SMTP id
 u23-20020ac25197000000b004d5ca437047mr56167lfi.10.1677537886450; Mon, 27 Feb
 2023 14:44:46 -0800 (PST)
MIME-Version: 1.0
References: <20230223113814.3010cedc@eldfell> <CAF6AEGuE89kuKTjjzwW1xMppcVw-M4-hcrtifed-mvsCA=cshQ@mail.gmail.com>
 <20230224112630.313d7b76@eldfell> <a47e2686-1e35-39a3-0f0c-6c3b9522f8ff@linux.intel.com>
 <20230224122403.6a088da1@eldfell> <582a9b92-d246-fce2-cf39-539d9a2db17f@linux.intel.com>
 <20230224130053.3f8939e2@eldfell> <c5d046d6-ab8e-2bc7-5110-dba78b91348b@linux.intel.com>
 <74e409dc-b642-779e-a755-b793c378e43a@amd.com> <CAF6AEGs_yzEj81yNP3KhmVP9Yo3rwTc5vntEVrm9tHw6+w1G_g@mail.gmail.com>
 <Y/0iM+ycUozaVbbC@intel.com> <CAF6AEGtXSEyyjELjGtPvnAN7mX+NwzngmB0PbKHsZqjTm-xYsg@mail.gmail.com>
In-Reply-To: <CAF6AEGtXSEyyjELjGtPvnAN7mX+NwzngmB0PbKHsZqjTm-xYsg@mail.gmail.com>
From: Sebastian Wick <sebastian.wick@redhat.com>
Date: Mon, 27 Feb 2023 23:44:34 +0100
Message-ID: <CA+hFU4wtW6wNP2Y0e_iE6NhBSSfVRDxTBUk7kOUNHQPRXpSzrQ@mail.gmail.com>
To: Rob Clark <robdclark@gmail.com>
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
X-Rspamd-Action: no action
X-Rspamd-Server: lists.linaro.org
X-Rspamd-Queue-Id: D75043EA2E
X-Spamd-Bar: ------
X-Spamd-Result: default: False [-6.20 / 15.00];
	REPLY(-4.00)[];
	BAYES_HAM(-3.00)[100.00%];
	SUSPICIOUS_RECIPS(1.50)[];
	DMARC_POLICY_ALLOW(-0.50)[redhat.com,none];
	FORGED_SENDER(0.30)[sebastian.wick@redhat.com,sewick@redhat.com];
	R_SPF_ALLOW(-0.20)[+ip4:170.10.129.0/24];
	R_DKIM_ALLOW(-0.20)[redhat.com:s=mimecast20190719];
	MIME_GOOD(-0.10)[text/plain];
	FREEMAIL_TO(0.00)[gmail.com];
	NEURAL_HAM(-0.00)[-0.999];
	RCVD_TLS_LAST(0.00)[];
	ASN(0.00)[asn:30031, ipnet:170.10.128.0/23, country:US];
	MIME_TRACE(0.00)[0:+];
	RCPT_COUNT_TWELVE(0.00)[18];
	RWL_MAILSPIKE_POSSIBLE(0.00)[170.10.129.124:from];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	FREEMAIL_CC(0.00)[intel.com,chromium.org,linux.intel.com,padovan.org,daenzer.net,vger.kernel.org,lists.freedesktop.org,amd.com,lists.linaro.org,gmail.com,linaro.org];
	FROM_HAS_DN(0.00)[];
	ARC_NA(0.00)[];
	DKIM_TRACE(0.00)[redhat.com:+];
	TO_DN_SOME(0.00)[];
	PREVIOUSLY_DELIVERED(0.00)[linaro-mm-sig@lists.linaro.org];
	TAGGED_RCPT(0.00)[];
	RCVD_COUNT_THREE(0.00)[3];
	FROM_NEQ_ENVFROM(0.00)[sebastian.wick@redhat.com,sewick@redhat.com]
Message-ID-Hash: M3YFDQLNOYK4JB5M4BA3TD55XIOJ44DT
X-Message-ID-Hash: M3YFDQLNOYK4JB5M4BA3TD55XIOJ44DT
X-MailFrom: sewick@redhat.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: Rodrigo Vivi <rodrigo.vivi@intel.com>, Rob Clark <robdclark@chromium.org>, Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>, Tvrtko Ursulin <tvrtko.ursulin@intel.com>, Gustavo Padovan <gustavo@padovan.org>, =?UTF-8?Q?Michel_D=C3=A4nzer?= <michel@daenzer.net>, open list <linux-kernel@vger.kernel.org>, dri-devel@lists.freedesktop.org, =?UTF-8?Q?Christian_K=C3=B6nig?= <christian.koenig@amd.com>, "moderated list:DMA BUFFER SHARING FRAMEWORK" <linaro-mm-sig@lists.linaro.org>, Pekka Paalanen <ppaalanen@gmail.com>, Luben Tuikov <luben.tuikov@amd.com>, Alex Deucher <alexander.deucher@amd.com>, freedreno@lists.freedesktop.org, Sumit Semwal <sumit.semwal@linaro.org>, "open list:SYNC FILE FRAMEWORK" <linux-media@vger.kernel.org>
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH v4 06/14] dma-buf/sync_file: Support (E)POLLPRI
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/M3YFDQLNOYK4JB5M4BA3TD55XIOJ44DT/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

On Mon, Feb 27, 2023 at 11:20 PM Rob Clark <robdclark@gmail.com> wrote:
>
> On Mon, Feb 27, 2023 at 1:36 PM Rodrigo Vivi <rodrigo.vivi@intel.com> wrote:
> >
> > On Fri, Feb 24, 2023 at 09:59:57AM -0800, Rob Clark wrote:
> > > On Fri, Feb 24, 2023 at 7:27 AM Luben Tuikov <luben.tuikov@amd.com> wrote:
> > > >
> > > > On 2023-02-24 06:37, Tvrtko Ursulin wrote:
> > > > >
> > > > > On 24/02/2023 11:00, Pekka Paalanen wrote:
> > > > >> On Fri, 24 Feb 2023 10:50:51 +0000
> > > > >> Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com> wrote:
> > > > >>
> > > > >>> On 24/02/2023 10:24, Pekka Paalanen wrote:
> > > > >>>> On Fri, 24 Feb 2023 09:41:46 +0000
> > > > >>>> Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com> wrote:
> > > > >>>>
> > > > >>>>> On 24/02/2023 09:26, Pekka Paalanen wrote:
> > > > >>>>>> On Thu, 23 Feb 2023 10:51:48 -0800
> > > > >>>>>> Rob Clark <robdclark@gmail.com> wrote:
> > > > >>>>>>
> > > > >>>>>>> On Thu, Feb 23, 2023 at 1:38 AM Pekka Paalanen <ppaalanen@gmail.com> wrote:
> > > > >>>>>>>>
> > > > >>>>>>>> On Wed, 22 Feb 2023 07:37:26 -0800
> > > > >>>>>>>> Rob Clark <robdclark@gmail.com> wrote:
> > > > >>>>>>>>
> > > > >>>>>>>>> On Wed, Feb 22, 2023 at 1:49 AM Pekka Paalanen <ppaalanen@gmail.com> wrote:
> > > > >>>>>>
> > > > >>>>>> ...
> > > > >>>>>>
> > > > >>>>>>>>>> On another matter, if the application uses SET_DEADLINE with one
> > > > >>>>>>>>>> timestamp, and the compositor uses SET_DEADLINE on the same thing with
> > > > >>>>>>>>>> another timestamp, what should happen?
> > > > >>>>>>>>>
> > > > >>>>>>>>> The expectation is that many deadline hints can be set on a fence.
> > > > >>>>>>>>> The fence signaller should track the soonest deadline.
> > > > >>>>>>>>
> > > > >>>>>>>> You need to document that as UAPI, since it is observable to userspace.
> > > > >>>>>>>> It would be bad if drivers or subsystems would differ in behaviour.
> > > > >>>>>>>>
> > > > >>>>>>>
> > > > >>>>>>> It is in the end a hint.  It is about giving the driver more
> > > > >>>>>>> information so that it can make better choices.  But the driver is
> > > > >>>>>>> even free to ignore it.  So maybe "expectation" is too strong of a
> > > > >>>>>>> word.  Rather, any other behavior doesn't really make sense.  But it
> > > > >>>>>>> could end up being dictated by how the hw and/or fw works.
> > > > >>>>>>
> > > > >>>>>> It will stop being a hint once it has been implemented and used in the
> > > > >>>>>> wild long enough. The kernel userspace regression rules make sure of
> > > > >>>>>> that.
> > > > >>>>>
> > > > >>>>> Yeah, tricky and maybe a gray area in this case. I think we eluded
> > > > >>>>> elsewhere in the thread that renaming the thing might be an option.
> > > > >>>>>
> > > > >>>>> So maybe instead of deadline, which is a very strong word, use something
> > > > >>>>> along the lines of "present time hint", or "signalled time hint"? Maybe
> > > > >>>>> reads clumsy. Just throwing some ideas for a start.
> > > > >>>>
> > > > >>>> You can try, but I fear that if it ever changes behaviour and
> > > > >>>> someone notices that, it's labelled as a kernel regression. I don't
> > > > >>>> think documentation has ever been the authoritative definition of UABI
> > > > >>>> in Linux, it just guides drivers and userspace towards a common
> > > > >>>> understanding and common usage patterns.
> > > > >>>>
> > > > >>>> So even if the UABI contract is not documented (ugh), you need to be
> > > > >>>> prepared to set the UABI contract through kernel implementation.
> > > > >>>
> > > > >>> To be the devil's advocate it probably wouldn't be an ABI regression but
> > > > >>> just an regression. Same way as what nice(2) priorities mean hasn't
> > > > >>> always been the same over the years, I don't think there is a strict
> > > > >>> contract.
> > > > >>>
> > > > >>> Having said that, it may be different with latency sensitive stuff such
> > > > >>> as UIs though since it is very observable and can be very painful to users.
> > > > >>>
> > > > >>>> If you do not document the UABI contract, then different drivers are
> > > > >>>> likely to implement it differently, leading to differing behaviour.
> > > > >>>> Also userspace will invent wild ways to abuse the UABI if there is no
> > > > >>>> documentation guiding it on proper use. If userspace or end users
> > > > >>>> observe different behaviour, that's bad even if it's not a regression.
> > > > >>>>
> > > > >>>> I don't like the situation either, but it is what it is. UABI stability
> > > > >>>> trumps everything regardless of whether it was documented or not.
> > > > >>>>
> > > > >>>> I bet userspace is going to use this as a "make it faster, make it
> > > > >>>> hotter" button. I would not be surprised if someone wrote a LD_PRELOAD
> > > > >>>> library that stamps any and all fences with an expired deadline to
> > > > >>>> just squeeze out a little more through some weird side-effect.
> > > > >>>>
> > > > >>>> Well, that's hopefully overboard in scaring, but in the end, I would
> > > > >>>> like to see UABI documented so I can have a feeling of what it is for
> > > > >>>> and how it was intended to be used. That's all.
> > > > >>>
> > > > >>> We share the same concern. If you read elsewhere in these threads you
> > > > >>> will notice I have been calling this an "arms race". If the ability to
> > > > >>> make yourself go faster does not required additional privilege I also
> > > > >>> worry everyone will do it at which point it becomes pointless. So yes, I
> > > > >>> do share this concern about exposing any of this as an unprivileged uapi.
> > > > >>>
> > > > >>> Is it possible to limit access to only compositors in some sane way?
> > > > >>> Sounds tricky when dma-fence should be disconnected from DRM..
> > > > >>
> > > > >> Maybe it's not that bad in this particular case, because we are talking
> > > > >> only about boosting GPU clocks which benefits everyone (except
> > > > >> battery life) and it does not penalize other programs like e.g.
> > > > >> job priorities do.
> > > > >
> > > > > Apart from efficiency that you mentioned, which does not always favor
> > > > > higher clocks, sometimes thermal budget is also shared between CPU and
> > > > > GPU. So more GPU clocks can mean fewer CPU clocks. It's really hard to
> > > > > make optimal choices without the full coordination between both schedulers.
> > > > >
> > > > > But that is even not the main point, which is that if everyone sets the
> > > > > immediate deadline then having the deadline API is a bit pointless. For
> > > > > instance there is a reason negative nice needs CAP_SYS_ADMIN.
> > > > >
> > > > > However Rob has also pointed out the existence of uclamp.min via
> > > > > sched_setattr which is unprivileged and can influence frequency
> > > > > selection in the CPU world, so I conceded on that point. If CPU world
> > > > > has accepted it so can we I guess.
> > > > >
> > > > > So IMO we are back to whether we can agree defining it is a hint is good
> > > > > enough, be in via the name of the ioctl/flag itself or via documentation.
> > > > >
> > > > >> Drivers are not going to use the deadline for scheduling priorities,
> > > > >> right? I don't recall seeing any mention of that.
> > > > >>
> > > > >> ...right?
> > > > >
> > > > > I wouldn't have thought it would be beneficial to preclude that, or
> > > > > assume what drivers would do with the info to begin with.
> > > > >
> > > > > For instance in i915 we almost had a deadline based scheduler which was
> > > > > much fairer than the current priority sorted fifo and in an ideal world
> > > > > we would either revive or re-implement that idea. In which case
> > > > > considering the fence deadline would naturally slot in and give true
> > > > > integration with compositor deadlines (not just boost clocks and pray it
> > > > > helps).
> > > > How is user-space to decide whether to use ioctl(SET_DEADLINE) or
> > > > poll(POLLPRI)?
> > >
> > > Implementation of blocking gl/vk/cl APIs, like glFinish() would use
> > > poll(POLLPRI).  It could also set an immediate deadline and then call
> > > poll() without POLLPRI.
> > >
> > > Other than compositors which do frame-pacing I expect the main usage
> > > of either of these is mesa.
> >
> > Okay, so it looks like we already agreed that having a way to bump frequency
> > from userspace is acceptable. either because there are already other ways
> > that you can waste power and because this already acceptable in the CPU
> > world.
> >
> > But why we are doing this in hidden ways then?
> >
> > Why can't we have this hint per context that is getting executed?
> > (either with a boost-context flag or with some low/med/max or '-1' to '1'
> > value like the latency priority)?
> >
> > I don't like the waitboost because this heurisitic fails in some media cases.
> > I don't like the global setting because we might be alternating a top-priority
> > with low-priority cases...
> >
> > So, why not something per context in execution?
> >
>
> It needs to be finer granularity than per-context, because not all
> waits should trigger boosting.  For example, virglrenderer ends up
> with a thread polling unsignaled fences to know when to signal an
> interrupt to the guest virtgpu.  This alone shouldn't trigger
> boosting.  (We also wouldn't want to completely disable boosting for
> virglrenderer.)  Or the usermode driver could be waiting on a fence to
> know when to do some cleanup.
>
> That is not to say that there isn't room for per-context flags to
> disable/enable boosting for fences created by that context, meaning it
> could be an AND operation for i915 if it needs to be.

First of all, I believe that the fence deadline hint is a good idea.
With that being said, I also don't think it is sufficient in a lot of
cases.

The one thing I was alluding to before and that Pekka mentioned as
well is that mutter for example has a problem where we're missing the
deadline consistently because the clocks don't ramp up fast enough and
there is a MR which is just trying to keep the GPU busy to avoid this.

It would be much better if the kernel could make sure the clocks are
all ramped up when we start submitting work. In the compositor we
actually have a lot of information that *should* influence clocks. We
know when we're going to start submitting work and when the deadline
for that work is beforehand. We know which windows are visible, and
which one should have the highest priority. We know when there are
input events which actually matter. We know when the deadline for
client work is.

In the future we also want to make sure clients know beforehand when
they should start their work and when the deadline is but that's all
very much WIP in both wayland and vulkan.

There are two issues:

1. The compositor has no way to communicate any of that information to
the kernel.
2. The only connection to client work the compositor has is a fence to
the last bit of work that must be done before the deadline after a
wl_surface.commit.

So in both cases a fence is just not the right primitive for us. We
need to be able to provide per-context/queue information for work that
will happen in the future and we need a way to refer to a
context/queue generically and over IPC to boost the clocks of the
device that a client is actually using and maybe even give priority.

But like I said, having a per-fence deadline is probably still a good
idea and doesn't conflict with any of the more coarse information.

>
> BR,
> -R
>

_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org
