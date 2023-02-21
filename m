Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id BCA3069E67D
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 21 Feb 2023 18:55:44 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id C92093EC75
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 21 Feb 2023 17:55:43 +0000 (UTC)
Received: from mail-oi1-f175.google.com (mail-oi1-f175.google.com [209.85.167.175])
	by lists.linaro.org (Postfix) with ESMTPS id DD7643EC75
	for <linaro-mm-sig@lists.linaro.org>; Tue, 21 Feb 2023 17:55:22 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=gmail.com header.s=20210112 header.b=MhVB0NJN;
	spf=pass (lists.linaro.org: domain of robdclark@gmail.com designates 209.85.167.175 as permitted sender) smtp.mailfrom=robdclark@gmail.com;
	dmarc=pass (policy=none) header.from=gmail.com
Received: by mail-oi1-f175.google.com with SMTP id y8so5315546oiy.6
        for <linaro-mm-sig@lists.linaro.org>; Tue, 21 Feb 2023 09:55:22 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=xv2uXYHt3XeROXyJVL9lk52fVmsfLTFU5mqvJC9GYu4=;
        b=MhVB0NJNs21YP6mxc5cr02QCii/6IswZclKK87JSAP6SkTvs9pBd4T1VG0NGWeKOqn
         khNHQFzG9sv5NWCllEUe045lNPhbXKoS5hJpFJEOw0pb/hb9rxIOY5mdDfr95+wZJoKJ
         wdkFsLjnOsG5IzJO6BFsGAfqli+GQYGm5jfBJCtSIeTNWhtsTelZ1FZzANQX5TuFfI5b
         uRtl4Q9C7kbV5tR7hBfdO9f4th/zmVjuvbBgCh9zAwAPHmb68tnTuBFWDHtJlkQtMN2e
         u/NqNnndQi2evJpRyuAgtqBxtD7jsrq1LpjnfjcXkEHq9eWAdvGyaWRWWiLlUMKq0HWD
         8mVA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=xv2uXYHt3XeROXyJVL9lk52fVmsfLTFU5mqvJC9GYu4=;
        b=HDEG9XNYLLGHu8lKdt1oEkQb7pWK83/iJtyxU/brmoEYpp7YS0OyDgpcWBaWjehzW0
         4ddVSVxW1RdKVc0xlqawgze5b8jXxTL6evx4Yi1lenQ0/ux7OOg+1QmBHg174LiKADcD
         tzdNnAuovyild8OsuKSWi3q+F64KVK7ZcBkNSXcZZZArAQBCQ0OEn4tUhXx38fPtLBTX
         iptiix62q29JpFg+BpyBBD1rPNsVHdkHsV7iogR/kBU7YyJNyQwewwJ37guUVr0hr5wy
         GhfuFAmfqweYmQsxy6FlmtM52BFVoxRDvBxUlno8L6Iktr3ZM9ohVIJAjn3q1lzH03QW
         Nydg==
X-Gm-Message-State: AO0yUKX9sYMmh+vnHw04OpzH1VXE/1AiGJpYlTXX+BFRNslG/T9Ho1Ch
	S1myPFAAm90MwFfeqXOJnlXZhylVWpTD+297EO8=
X-Google-Smtp-Source: AK7set+3plPstNNrlEwndFRmB7Ghv+pP145J/q5VwaYQKMVG1IyDbrvqIsIdzdj2oJvtdlMI0LV5ATP51GZWdQwW8zg=
X-Received: by 2002:a05:6808:ec7:b0:364:c0a5:1fcf with SMTP id
 q7-20020a0568080ec700b00364c0a51fcfmr1405745oiv.58.1677002122311; Tue, 21 Feb
 2023 09:55:22 -0800 (PST)
MIME-Version: 1.0
References: <20230218211608.1630586-1-robdclark@gmail.com> <20230218211608.1630586-7-robdclark@gmail.com>
 <20230220105345.70e46fa5@eldfell> <CAF6AEGv9fLQCD65ytRTGp=EkNB1QoZYH5ArphgGQALV9J08Cmw@mail.gmail.com>
 <20230221103753.205082d3@eldfell> <CA+hFU4xexaHAYsbGm6PdNfVFHBgOS4WiMo=AU0Gi5cYt566aTg@mail.gmail.com>
In-Reply-To: <CA+hFU4xexaHAYsbGm6PdNfVFHBgOS4WiMo=AU0Gi5cYt566aTg@mail.gmail.com>
From: Rob Clark <robdclark@gmail.com>
Date: Tue, 21 Feb 2023 09:55:12 -0800
Message-ID: <CAF6AEGvXJkmwn8M6ThCx0bLwDFqqHmjp5fkDuDa7g2e8i3eM_w@mail.gmail.com>
To: Sebastian Wick <sebastian.wick@redhat.com>
X-Rspamd-Action: no action
X-Rspamd-Server: lists.linaro.org
X-Rspamd-Queue-Id: DD7643EC75
X-Spamd-Bar: ------
X-Spamd-Result: default: False [-6.50 / 15.00];
	REPLY(-4.00)[];
	BAYES_HAM(-3.00)[100.00%];
	SUSPICIOUS_RECIPS(1.50)[];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20210112];
	R_SPF_ALLOW(-0.20)[+ip4:209.85.128.0/17:c];
	MIME_GOOD(-0.10)[text/plain];
	RCVD_COUNT_TWO(0.00)[2];
	TAGGED_RCPT(0.00)[];
	PREVIOUSLY_DELIVERED(0.00)[linaro-mm-sig@lists.linaro.org];
	RWL_MAILSPIKE_POSSIBLE(0.00)[209.85.167.175:from];
	NEURAL_HAM(-0.00)[-0.899];
	RCPT_COUNT_TWELVE(0.00)[16];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	FROM_HAS_DN(0.00)[];
	RCVD_IN_DNSWL_NONE(0.00)[209.85.167.175:from];
	DWL_DNSWL_NONE(0.00)[gmail.com:dkim];
	FREEMAIL_CC(0.00)[gmail.com,chromium.org,padovan.org,intel.com,daenzer.net,vger.kernel.org,lists.freedesktop.org,amd.com,lists.linaro.org,linaro.org];
	DKIM_TRACE(0.00)[gmail.com:+];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	FREEMAIL_FROM(0.00)[gmail.com];
	ARC_NA(0.00)[];
	FROM_EQ_ENVFROM(0.00)[];
	MIME_TRACE(0.00)[0:+];
	RCVD_TLS_LAST(0.00)[];
	ASN(0.00)[asn:15169, ipnet:209.85.128.0/17, country:US];
	FREEMAIL_ENVFROM(0.00)[gmail.com];
	TO_DN_SOME(0.00)[]
Message-ID-Hash: 72CUQLTDU6F447JBRPAJ7OFRBFE5EXUJ
X-Message-ID-Hash: 72CUQLTDU6F447JBRPAJ7OFRBFE5EXUJ
X-MailFrom: robdclark@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: Pekka Paalanen <ppaalanen@gmail.com>, Rob Clark <robdclark@chromium.org>, Gustavo Padovan <gustavo@padovan.org>, Tvrtko Ursulin <tvrtko.ursulin@intel.com>, =?UTF-8?Q?Michel_D=C3=A4nzer?= <michel@daenzer.net>, open list <linux-kernel@vger.kernel.org>, dri-devel@lists.freedesktop.org, =?UTF-8?Q?Christian_K=C3=B6nig?= <christian.koenig@amd.com>, "moderated list:DMA BUFFER SHARING FRAMEWORK" <linaro-mm-sig@lists.linaro.org>, Rodrigo Vivi <rodrigo.vivi@intel.com>, Alex Deucher <alexander.deucher@amd.com>, freedreno@lists.freedesktop.org, Sumit Semwal <sumit.semwal@linaro.org>, "open list:SYNC FILE FRAMEWORK" <linux-media@vger.kernel.org>
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH v4 06/14] dma-buf/sync_file: Support (E)POLLPRI
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/72CUQLTDU6F447JBRPAJ7OFRBFE5EXUJ/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

On Tue, Feb 21, 2023 at 8:01 AM Sebastian Wick
<sebastian.wick@redhat.com> wrote:
>
> On Tue, Feb 21, 2023 at 9:38 AM Pekka Paalanen <ppaalanen@gmail.com> wrote:
> >
> > On Mon, 20 Feb 2023 08:14:47 -0800
> > Rob Clark <robdclark@gmail.com> wrote:
> >
> > > On Mon, Feb 20, 2023 at 12:53 AM Pekka Paalanen <ppaalanen@gmail.com> wrote:
> > > >
> > > > On Sat, 18 Feb 2023 13:15:49 -0800
> > > > Rob Clark <robdclark@gmail.com> wrote:
> > > >
> > > > > From: Rob Clark <robdclark@chromium.org>
> > > > >
> > > > > Allow userspace to use the EPOLLPRI/POLLPRI flag to indicate an urgent
> > > > > wait (as opposed to a "housekeeping" wait to know when to cleanup after
> > > > > some work has completed).  Usermode components of GPU driver stacks
> > > > > often poll() on fence fd's to know when it is safe to do things like
> > > > > free or reuse a buffer, but they can also poll() on a fence fd when
> > > > > waiting to read back results from the GPU.  The EPOLLPRI/POLLPRI flag
> > > > > lets the kernel differentiate these two cases.
> > > > >
> > > > > Signed-off-by: Rob Clark <robdclark@chromium.org>
> > > >
> > > > Hi,
> > > >
> > > > where would the UAPI documentation of this go?
> > > > It seems to be missing.
> > >
> > > Good question, I am not sure.  The poll() man page has a description,
> > > but my usage doesn't fit that _exactly_ (but OTOH the description is a
> > > bit vague).
> > >
> > > > If a Wayland compositor is polling application fences to know which
> > > > client buffer to use in its rendering, should the compositor poll with
> > > > PRI or not? If a compositor polls with PRI, then all fences from all
> > > > applications would always be PRI. Would that be harmful somehow or
> > > > would it be beneficial?
> > >
> > > I think a compositor would rather use the deadline ioctl and then poll
> > > without PRI.  Otherwise you are giving an urgency signal to the fence
> > > signaller which might not necessarily be needed.
> > >
> > > The places where I expect PRI to be useful is more in mesa (things
> > > like glFinish(), readpix, and other similar sorts of blocking APIs)
> >
> > Sounds good. Docs... ;-)
> >
> > Hmm, so a compositor should set the deadline when it processes the
> > wl_surface.commit, and not when it actually starts repainting, to give
> > time for the driver to react and the GPU to do some more work. The
> > deadline would be the time when the compositor starts its repaint, so
> > it knows if the buffer is ready or not.
>
> Technically we don't know when the commit is supposed to be shown.
> Just passing a deadline of the next possible deadline however is
> probably a good enough guess for this feature to be useful.
>
> One thing that neither API allows us to do is tell the kernel in
> advance when we're going to submit work and what the deadline for it
> is and unfortunately that work is the most timing sensitive.

Presumably you are talking about the final compositing step?
Elsewhere in this series that atomic wait-for-fences step sets the
deadline hint.

BR,
-R

> >
> >
> > Thanks,
> > pq
> >
> >
> > >
> > > BR,
> > > -R
> > >
> > > >
> > > >
> > > > Thanks,
> > > > pq
> > > >
> > > > > ---
> > > > >  drivers/dma-buf/sync_file.c | 8 ++++++++
> > > > >  1 file changed, 8 insertions(+)
> > > > >
> > > > > diff --git a/drivers/dma-buf/sync_file.c b/drivers/dma-buf/sync_file.c
> > > > > index fb6ca1032885..c30b2085ee0a 100644
> > > > > --- a/drivers/dma-buf/sync_file.c
> > > > > +++ b/drivers/dma-buf/sync_file.c
> > > > > @@ -192,6 +192,14 @@ static __poll_t sync_file_poll(struct file *file, poll_table *wait)
> > > > >  {
> > > > >       struct sync_file *sync_file = file->private_data;
> > > > >
> > > > > +     /*
> > > > > +      * The POLLPRI/EPOLLPRI flag can be used to signal that
> > > > > +      * userspace wants the fence to signal ASAP, express this
> > > > > +      * as an immediate deadline.
> > > > > +      */
> > > > > +     if (poll_requested_events(wait) & EPOLLPRI)
> > > > > +             dma_fence_set_deadline(sync_file->fence, ktime_get());
> > > > > +
> > > > >       poll_wait(file, &sync_file->wq, wait);
> > > > >
> > > > >       if (list_empty(&sync_file->cb.node) &&
> > > >
> >
>
_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org
