Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 72BA669E41F
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 21 Feb 2023 17:02:17 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 474493F50D
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 21 Feb 2023 16:02:16 +0000 (UTC)
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
	by lists.linaro.org (Postfix) with ESMTPS id B65713EC75
	for <linaro-mm-sig@lists.linaro.org>; Tue, 21 Feb 2023 16:01:55 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=redhat.com header.s=mimecast20190719 header.b=VfwxykXC;
	spf=pass (lists.linaro.org: domain of sewick@redhat.com designates 170.10.133.124 as permitted sender) smtp.mailfrom=sewick@redhat.com;
	dmarc=pass (policy=none) header.from=redhat.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1676995315;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 in-reply-to:in-reply-to:references:references;
	bh=9izMAfpyPSC2j4KF6KccqxxHP0NMJSdJ01aiq+ruxRA=;
	b=VfwxykXCgwI/ETuEJbB5z0hMuL0ahGIHKNJfLAGIH6sgqrjt7HF1HlGKlM3zr5Tl03lLlZ
	6jGtojIJMVPdRa3bmR+QJ5Geob5M9VTGgUhb2gNy2hlX6tRyq1pIgahvA1LUVc5YfFsn6s
	4VNxnX+Udaxe9GulArf4RhADyWXqfnE=
Received: from mail-pf1-f198.google.com (mail-pf1-f198.google.com
 [209.85.210.198]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_128_GCM_SHA256) id
 us-mta-562-AZPIo1ULP4OfzPltPp6gVw-1; Tue, 21 Feb 2023 11:01:51 -0500
X-MC-Unique: AZPIo1ULP4OfzPltPp6gVw-1
Received: by mail-pf1-f198.google.com with SMTP id d7-20020a056a0010c700b005a8ee90fbc6so2491249pfu.4
        for <linaro-mm-sig@lists.linaro.org>; Tue, 21 Feb 2023 08:01:51 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=9izMAfpyPSC2j4KF6KccqxxHP0NMJSdJ01aiq+ruxRA=;
        b=bKVLpWBM0c9SRapK9pk0/ThfxE771I8KlhyaSDkWsrWBhVdfIyyFGhQN0A9gXQvKYn
         C5HTWRp+JdQp6t9V0T9qA7Aw44tWpCJfkXouZt3EWmgqW9Lg5AdgD6GyPyo1sAySEXyq
         /ai9uEjFtyRWXm4fL5b8WEde1Mn7BGPog9GP4aipZNLDBHHoiSbe1hSSo51TfeekqsOF
         ZsY+HmYZQHQChaT4DZVEda/wx02HKUY8HlDv5tj/V6SxKKD7By3I6a8qQzp5LkuDIlyl
         7oKQ6kkU2xUJqGvmheH157coBt8/c35apwp4EX6ojfs6yoMVYJcs3aN90R2bDWRlFnlJ
         4cxQ==
X-Gm-Message-State: AO0yUKXQu+fOnri6bxS0ZtoC71QJ+ORNaYl4relLs5Q6Csv2ObF28Z66
	1z5UcfNu+YXjJtqFf4HrOhgP22NhRuSq9jAsmC+z5Jsw1p2vX9F3486dEy+RklC/gWbkBeWCNyz
	69u11Ay/YlJxbffM+p/o4kxq82XiX30ymP5EY1zbpfMw=
X-Received: by 2002:a17:90b:2645:b0:237:39b1:7c5f with SMTP id pa5-20020a17090b264500b0023739b17c5fmr9686pjb.96.1676995310469;
        Tue, 21 Feb 2023 08:01:50 -0800 (PST)
X-Google-Smtp-Source: AK7set+7t/vLNHtsxzvT2bollF+HO+l6TckmTWA3PewfgaKv+tlYXZrcfQ/NIzB6QL95XtxeqfTMakmosPDQgkjw3lw=
X-Received: by 2002:a17:90b:2645:b0:237:39b1:7c5f with SMTP id
 pa5-20020a17090b264500b0023739b17c5fmr9677pjb.96.1676995310112; Tue, 21 Feb
 2023 08:01:50 -0800 (PST)
MIME-Version: 1.0
References: <20230218211608.1630586-1-robdclark@gmail.com> <20230218211608.1630586-7-robdclark@gmail.com>
 <20230220105345.70e46fa5@eldfell> <CAF6AEGv9fLQCD65ytRTGp=EkNB1QoZYH5ArphgGQALV9J08Cmw@mail.gmail.com>
 <20230221103753.205082d3@eldfell>
In-Reply-To: <20230221103753.205082d3@eldfell>
From: Sebastian Wick <sebastian.wick@redhat.com>
Date: Tue, 21 Feb 2023 17:01:36 +0100
Message-ID: <CA+hFU4xexaHAYsbGm6PdNfVFHBgOS4WiMo=AU0Gi5cYt566aTg@mail.gmail.com>
To: Pekka Paalanen <ppaalanen@gmail.com>
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
X-Rspamd-Action: no action
X-Rspamd-Server: lists.linaro.org
X-Rspamd-Queue-Id: B65713EC75
X-Spamd-Bar: ---------
X-Spamd-Result: default: False [-9.70 / 15.00];
	REPLY(-4.00)[];
	DWL_DNSWL_HI(-3.50)[redhat.com:dkim];
	BAYES_HAM(-3.00)[100.00%];
	SUSPICIOUS_RECIPS(1.50)[];
	DMARC_POLICY_ALLOW(-0.50)[redhat.com,none];
	FORGED_SENDER(0.30)[sebastian.wick@redhat.com,sewick@redhat.com];
	R_SPF_ALLOW(-0.20)[+ip4:170.10.133.0/24];
	R_DKIM_ALLOW(-0.20)[redhat.com:s=mimecast20190719];
	MIME_GOOD(-0.10)[text/plain];
	PREVIOUSLY_DELIVERED(0.00)[linaro-mm-sig@lists.linaro.org];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[16];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[];
	RWL_MAILSPIKE_POSSIBLE(0.00)[170.10.133.124:from];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[redhat.com:+];
	ARC_NA(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FREEMAIL_TO(0.00)[gmail.com];
	RCVD_COUNT_THREE(0.00)[3];
	RCVD_TLS_LAST(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[sebastian.wick@redhat.com,sewick@redhat.com];
	ASN(0.00)[asn:30031, ipnet:170.10.132.0/23, country:US];
	FREEMAIL_CC(0.00)[gmail.com,chromium.org,padovan.org,intel.com,daenzer.net,vger.kernel.org,lists.freedesktop.org,amd.com,lists.linaro.org,linaro.org];
	TO_DN_SOME(0.00)[]
Message-ID-Hash: RU5O4CSSJ6OKX2MYMQDRJINJKDRWGBTO
X-Message-ID-Hash: RU5O4CSSJ6OKX2MYMQDRJINJKDRWGBTO
X-MailFrom: sewick@redhat.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: Rob Clark <robdclark@gmail.com>, Rob Clark <robdclark@chromium.org>, Gustavo Padovan <gustavo@padovan.org>, Tvrtko Ursulin <tvrtko.ursulin@intel.com>, =?UTF-8?Q?Michel_D=C3=A4nzer?= <michel@daenzer.net>, open list <linux-kernel@vger.kernel.org>, dri-devel@lists.freedesktop.org, =?UTF-8?Q?Christian_K=C3=B6nig?= <christian.koenig@amd.com>, "moderated list:DMA BUFFER SHARING FRAMEWORK" <linaro-mm-sig@lists.linaro.org>, Rodrigo Vivi <rodrigo.vivi@intel.com>, Alex Deucher <alexander.deucher@amd.com>, freedreno@lists.freedesktop.org, Sumit Semwal <sumit.semwal@linaro.org>, "open list:SYNC FILE FRAMEWORK" <linux-media@vger.kernel.org>
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH v4 06/14] dma-buf/sync_file: Support (E)POLLPRI
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/RU5O4CSSJ6OKX2MYMQDRJINJKDRWGBTO/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

On Tue, Feb 21, 2023 at 9:38 AM Pekka Paalanen <ppaalanen@gmail.com> wrote:
>
> On Mon, 20 Feb 2023 08:14:47 -0800
> Rob Clark <robdclark@gmail.com> wrote:
>
> > On Mon, Feb 20, 2023 at 12:53 AM Pekka Paalanen <ppaalanen@gmail.com> wrote:
> > >
> > > On Sat, 18 Feb 2023 13:15:49 -0800
> > > Rob Clark <robdclark@gmail.com> wrote:
> > >
> > > > From: Rob Clark <robdclark@chromium.org>
> > > >
> > > > Allow userspace to use the EPOLLPRI/POLLPRI flag to indicate an urgent
> > > > wait (as opposed to a "housekeeping" wait to know when to cleanup after
> > > > some work has completed).  Usermode components of GPU driver stacks
> > > > often poll() on fence fd's to know when it is safe to do things like
> > > > free or reuse a buffer, but they can also poll() on a fence fd when
> > > > waiting to read back results from the GPU.  The EPOLLPRI/POLLPRI flag
> > > > lets the kernel differentiate these two cases.
> > > >
> > > > Signed-off-by: Rob Clark <robdclark@chromium.org>
> > >
> > > Hi,
> > >
> > > where would the UAPI documentation of this go?
> > > It seems to be missing.
> >
> > Good question, I am not sure.  The poll() man page has a description,
> > but my usage doesn't fit that _exactly_ (but OTOH the description is a
> > bit vague).
> >
> > > If a Wayland compositor is polling application fences to know which
> > > client buffer to use in its rendering, should the compositor poll with
> > > PRI or not? If a compositor polls with PRI, then all fences from all
> > > applications would always be PRI. Would that be harmful somehow or
> > > would it be beneficial?
> >
> > I think a compositor would rather use the deadline ioctl and then poll
> > without PRI.  Otherwise you are giving an urgency signal to the fence
> > signaller which might not necessarily be needed.
> >
> > The places where I expect PRI to be useful is more in mesa (things
> > like glFinish(), readpix, and other similar sorts of blocking APIs)
>
> Sounds good. Docs... ;-)
>
> Hmm, so a compositor should set the deadline when it processes the
> wl_surface.commit, and not when it actually starts repainting, to give
> time for the driver to react and the GPU to do some more work. The
> deadline would be the time when the compositor starts its repaint, so
> it knows if the buffer is ready or not.

Technically we don't know when the commit is supposed to be shown.
Just passing a deadline of the next possible deadline however is
probably a good enough guess for this feature to be useful.

One thing that neither API allows us to do is tell the kernel in
advance when we're going to submit work and what the deadline for it
is and unfortunately that work is the most timing sensitive.

>
>
> Thanks,
> pq
>
>
> >
> > BR,
> > -R
> >
> > >
> > >
> > > Thanks,
> > > pq
> > >
> > > > ---
> > > >  drivers/dma-buf/sync_file.c | 8 ++++++++
> > > >  1 file changed, 8 insertions(+)
> > > >
> > > > diff --git a/drivers/dma-buf/sync_file.c b/drivers/dma-buf/sync_file.c
> > > > index fb6ca1032885..c30b2085ee0a 100644
> > > > --- a/drivers/dma-buf/sync_file.c
> > > > +++ b/drivers/dma-buf/sync_file.c
> > > > @@ -192,6 +192,14 @@ static __poll_t sync_file_poll(struct file *file, poll_table *wait)
> > > >  {
> > > >       struct sync_file *sync_file = file->private_data;
> > > >
> > > > +     /*
> > > > +      * The POLLPRI/EPOLLPRI flag can be used to signal that
> > > > +      * userspace wants the fence to signal ASAP, express this
> > > > +      * as an immediate deadline.
> > > > +      */
> > > > +     if (poll_requested_events(wait) & EPOLLPRI)
> > > > +             dma_fence_set_deadline(sync_file->fence, ktime_get());
> > > > +
> > > >       poll_wait(file, &sync_file->wq, wait);
> > > >
> > > >       if (list_empty(&sync_file->cb.node) &&
> > >
>

_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org
