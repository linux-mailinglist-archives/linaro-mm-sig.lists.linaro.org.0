Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id BA4C467BC02
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 25 Jan 2023 21:05:10 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id C7BCA444B1
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 25 Jan 2023 20:05:09 +0000 (UTC)
Received: from mail-yb1-f174.google.com (mail-yb1-f174.google.com [209.85.219.174])
	by lists.linaro.org (Postfix) with ESMTPS id BEAF5443E5
	for <linaro-mm-sig@lists.linaro.org>; Wed, 25 Jan 2023 20:04:43 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=google.com header.s=20210112 header.b=fOjBWO27;
	spf=pass (lists.linaro.org: domain of tjmercier@google.com designates 209.85.219.174 as permitted sender) smtp.mailfrom=tjmercier@google.com;
	dmarc=pass (policy=reject) header.from=google.com
Received: by mail-yb1-f174.google.com with SMTP id u72so3821238ybi.7
        for <linaro-mm-sig@lists.linaro.org>; Wed, 25 Jan 2023 12:04:43 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=google.com; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=MtZUdD+8O7hxMGTcR1DMvNk+cmrcvsJPjaaxCUIim34=;
        b=fOjBWO27z2DRRtGxPdgxFPgp37eKG2B9PVK/K0KiaXIloz+AuZ38tULN6fcXWxzCXe
         tU2hdkFiNRDubvDFYYKIraSWMsmgZB5TrENA6ESEOPBjPR/dQpPpkMJl5TsP7oaNQBaU
         TxPNiWcr87ZC110sXUh6RSZVcOchas4NTyfHWTxoFZ1DzEOO9gAxP0Yd2EzEp0fULRzI
         KH11tad7CESbeI0SS36cVhoreBuXewlt8xttyfZyHJv8HTgUAkB8genFUrpEvMtBNPp0
         +Cp+2h8ohoZFxIl3/0g98E+3IWq3CPHCxOoXQqQtkHA1Zm+a4/B25A6qnkeflqA4pUuK
         /J3g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=MtZUdD+8O7hxMGTcR1DMvNk+cmrcvsJPjaaxCUIim34=;
        b=iHj6LyD3L7Vx9Fu1mBofMbg1Rew5QU2oGO8YEwLRWe9PyZHLgmSrze+wZCSIUQBjKZ
         7lcNkifwhMQ48H0RN3tpmMxJy94THk/H5W/M749U13mINuVEuU+ABHaKzQ2SaGCHY1Cz
         Wi9V57fc6+zHnPC/PpsK9R0Uby9dTYPS7MWBBJIjjeh790LyESoh1ZxCKjg6inwCx/sE
         dLMnxByQVAroNpgPJtOFdKRTIyndb4tn68iT4DzdKLJhr8SzDfmcEcKYlWKiKCLSOV+O
         GvUS5++DyOVAX5lveKIZ1ivwYsnTI7FANm7D/Wcd6OWb04LUiumSJIkZppVYG45aZPhh
         ehVw==
X-Gm-Message-State: AO0yUKX51CBIJupUX9BQZ8VfviCRtvKLXvxyHGtpwOf5nIkTbx60gFAS
	EN+6Ghub9OAD7tIwusohDmc9iF80aFYtF/rp66KA8Q==
X-Google-Smtp-Source: AK7set/0yo0srPljd82kRg54UhHAn9kAcoGNmLhg0Ao5vhrkKbvYpqMk0gx/CzAceT8L+J/HB1ohTrPmB4dI55xwr6c=
X-Received: by 2002:a25:341:0:b0:80b:96cc:310d with SMTP id
 62-20020a250341000000b0080b96cc310dmr522771ybd.117.1674677083118; Wed, 25 Jan
 2023 12:04:43 -0800 (PST)
MIME-Version: 1.0
References: <20230123191728.2928839-1-tjmercier@google.com>
 <20230123191728.2928839-2-tjmercier@google.com> <Y8/ybgp2FW+e3bjc@dhcp22.suse.cz>
 <CABdmKX1c_8LdJJboENnZhwGjrszDWOOVt-Do93-sJW46mZMD6A@mail.gmail.com> <Y9EbHW84ydBzpTTO@dhcp22.suse.cz>
In-Reply-To: <Y9EbHW84ydBzpTTO@dhcp22.suse.cz>
From: "T.J. Mercier" <tjmercier@google.com>
Date: Wed, 25 Jan 2023 12:04:32 -0800
Message-ID: <CABdmKX0TEf_18UC0_pt1BumB9vDdJW2Ntv5bo0wh_CMOEcAEdA@mail.gmail.com>
To: Michal Hocko <mhocko@suse.com>
X-Rspamd-Server: lists.linaro.org
X-Rspamd-Queue-Id: BEAF5443E5
X-Spamd-Bar: --------
X-Spamd-Result: default: False [-8.00 / 15.00];
	REPLY(-4.00)[];
	BAYES_HAM(-3.00)[100.00%];
	DMARC_POLICY_ALLOW(-0.50)[google.com,reject];
	R_DKIM_ALLOW(-0.20)[google.com:s=20210112];
	R_SPF_ALLOW(-0.20)[+ip4:209.85.128.0/17:c];
	MIME_GOOD(-0.10)[text/plain];
	MIME_TRACE(0.00)[0:+];
	ARC_NA(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	ASN(0.00)[asn:15169, ipnet:209.85.128.0/17, country:US];
	FROM_EQ_ENVFROM(0.00)[];
	RCVD_COUNT_TWO(0.00)[2];
	NEURAL_HAM(-0.00)[-0.996];
	DKIM_TRACE(0.00)[google.com:+];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	FROM_HAS_DN(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[25];
	TO_DN_SOME(0.00)[];
	PREVIOUSLY_DELIVERED(0.00)[linaro-mm-sig@lists.linaro.org];
	RWL_MAILSPIKE_POSSIBLE(0.00)[209.85.219.174:from]
X-Rspamd-Action: no action
Message-ID-Hash: 5QKUCTLMPJSU5XOY6G4WHDFMACSGV3EI
X-Message-ID-Hash: 5QKUCTLMPJSU5XOY6G4WHDFMACSGV3EI
X-MailFrom: tjmercier@google.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: Tejun Heo <tj@kernel.org>, Zefan Li <lizefan.x@bytedance.com>, Johannes Weiner <hannes@cmpxchg.org>, Jonathan Corbet <corbet@lwn.net>, Sumit Semwal <sumit.semwal@linaro.org>, =?UTF-8?Q?Christian_K=C3=B6nig?= <christian.koenig@amd.com>, Roman Gushchin <roman.gushchin@linux.dev>, Shakeel Butt <shakeelb@google.com>, Muchun Song <muchun.song@linux.dev>, Andrew Morton <akpm@linux-foundation.org>, android-mm@google.com, jstultz@google.com, jeffv@google.com, cmllamas@google.com, linux-security-module@vger.kernel.org, selinux@vger.kernel.org, cgroups@vger.kernel.org, linux-doc@vger.kernel.org, linux-kernel@vger.kernel.org, linux-media@vger.kernel.org, dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org, linux-mm@kvack.org
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH v2 1/4] memcg: Track exported dma-buffers
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/5QKUCTLMPJSU5XOY6G4WHDFMACSGV3EI/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

On Wed, Jan 25, 2023 at 4:05 AM Michal Hocko <mhocko@suse.com> wrote:
>
> On Tue 24-01-23 10:55:21, T.J. Mercier wrote:
> > On Tue, Jan 24, 2023 at 7:00 AM Michal Hocko <mhocko@suse.com> wrote:
> > >
> > > On Mon 23-01-23 19:17:23, T.J. Mercier wrote:
> > > > When a buffer is exported to userspace, use memcg to attribute the
> > > > buffer to the allocating cgroup until all buffer references are
> > > > released.
> > >
> > > Is there any reason why this memory cannot be charged during the
> > > allocation (__GFP_ACCOUNT used)?
> >
> > My main motivation was to keep code changes away from exporters and
> > implement the accounting in one common spot for all of them. This is a
> > bit of a carryover from a previous approach [1] where there was some
> > objection to pushing off this work onto exporters and forcing them to
> > adapt, but __GFP_ACCOUNT does seem like a smaller burden than before
> > at least initially. However in order to support charge transfer
> > between cgroups with __GFP_ACCOUNT we'd need to be able to get at the
> > pages backing dmabuf objects, and the exporters are the ones with that
> > access. Meaning I think we'd have to add some additional dma_buf_ops
> > to achieve that, which was the objection from [1].
> >
> > [1] https://lore.kernel.org/lkml/5cc27a05-8131-ce9b-dea1-5c75e994216d@amd.com/
> >
> > >
> > > Also you do charge and account the memory but underlying pages do not
> > > know about their memcg (this is normally done with commit_charge for
> > > user mapped pages). This would become a problem if the memory is
> > > migrated for example.
> >
> > Hmm, what problem do you see in this situation? If the backing pages
> > are to be migrated that requires the cooperation of the exporter,
> > which currently has no influence on how the cgroup charging is done
> > and that seems fine. (Unless you mean migrating the charge across
> > cgroups? In which case that's the next patch.)
>
> My main concern was that page migration could lose the external tracking
> without some additional steps on the dmabuf front.
>
I see, yes that would be true if an exporter moves data around between
system memory and VRAM for example. (I think TTM does this sort of
thing, but not sure if that's actually within a single dma buffer.)
VRAM feels like it maybe doesn't belong in memcg, yet it would still
be charged there under this series right now. I don't really see a way
around this except to involve the exporters directly in the accounting
(or don't attempt to distinguish between types of memory).

> > > This also means that you have to maintain memcg
> > > reference outside of the memcg proper which is not really nice either.
> > > This mimicks tcp kmem limit implementation which I really have to say I
> > > am not a great fan of and this pattern shouldn't be coppied.
> > >
> > Ah, what can I say. This way looked simple to me. I think otherwise
> > we're back to making all exporters do more stuff for the accounting.
> >
> > > Also you are not really saying anything about the oom behavior. With
> > > this implementation the kernel will try to reclaim the memory and even
> > > trigger the memcg oom killer if the request size is <= 8 pages. Is this
> > > a desirable behavior?
> >
> > It will try to reclaim some memory, but not the dmabuf pages right?
> > Not *yet* anyway. This behavior sounds expected to me.
>
> Yes, we have discussed that shrinkers will follow up later which is
> fine. The question is how much reclaim actually makes sense at this
> stage. Charging interface usually copes with sizes resulting from
> allocation requests (so usually 1<<order based). I can imagine that a
> batch charge like implemented here could easily be 100s of MBs and it is
> much harder to define reclaim targets for. At least that is something
> the memcg charging hasn't really considered yet.  Maybe the existing
> try_charge implementation can cope with that just fine but it would be
> really great to have the expected behavior described.
>
> E.g. should be memcg OOM killer be invoked? Should reclaim really target
> regular memory at all costs or just a lightweight memory reclaim is
> preferred (is the dmabuf charge failure an expensive operation wrt.
> memory refault due to reclaim).

Ah, in my experience very large individual buffers like that are rare.
Cumulative system-wide usage might reach 100s of megs or more spread
across many buffers. On my phone the majority of buffer sizes are 4
pages or less, but there are a few that reach into the tens of megs.
But now I see your point. I still think that where a memcg limit is
exceeded and we can't reclaim enough as a result of a new dmabuf
allocation, we should see a memcg OOM kill. Sounds like you are
looking for that to be written down, so I'll try to find a place for
that.

Part of the motivation for this accounting is to eventually have a
well defined limit for applications to know how much more they can
allocate. So where buffer size or number of buffers is a flexible
variable, I'd like to see an application checking this limit before
making a large request in an effort to avoid reclaim in the first
place. Where there is heavy memory pressure and multiple competing
apps, the status-quo today is a kill for us anyways (typically LMKD).




> --
> Michal Hocko
> SUSE Labs
_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org
