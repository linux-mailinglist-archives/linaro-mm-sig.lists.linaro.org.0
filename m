Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 7526D67A1EC
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 24 Jan 2023 19:55:50 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 7FCB33EC03
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 24 Jan 2023 18:55:49 +0000 (UTC)
Received: from mail-yw1-f173.google.com (mail-yw1-f173.google.com [209.85.128.173])
	by lists.linaro.org (Postfix) with ESMTPS id E659F3EC03
	for <linaro-mm-sig@lists.linaro.org>; Tue, 24 Jan 2023 18:55:32 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=google.com header.s=20210112 header.b=L97ftDdv;
	spf=pass (lists.linaro.org: domain of tjmercier@google.com designates 209.85.128.173 as permitted sender) smtp.mailfrom=tjmercier@google.com;
	dmarc=pass (policy=reject) header.from=google.com
Received: by mail-yw1-f173.google.com with SMTP id 00721157ae682-50112511ba7so172785457b3.3
        for <linaro-mm-sig@lists.linaro.org>; Tue, 24 Jan 2023 10:55:32 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=google.com; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=5iP8zaH4qhJm7u23Me24MfP0ksC5myih/koifVjd6bQ=;
        b=L97ftDdvRyPqQWji9bbudEKZD0LDLmKOVOT0VCiZU2LCV4qkff4lF/IdPTXrUURWIL
         ff9SdNebMBFiJK7tO0W11Q1G3UAXgTPUqwqhK5wAl6n35fMRrabPmvj7OKd4VEXabKNe
         fPfG1+wRSo+CGN8gb1ygCJ4/kEeW/hVXaBUNrg4mvfNQT/BKe7VDh8MR1pAOAXvVpeRH
         iSMTwWB8dLyPnn97HzVO9MptWE6TkOpSAkEtIzxtQqNOTsOqkk7JQsVXrGtclwnaZu3B
         HwIb13tYMPFn1tPWBxylMI8CnFv9i3PBeFrmGSlZCW+l6NJP5u3gl1vi0n9snU8rYOV/
         xPKA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=5iP8zaH4qhJm7u23Me24MfP0ksC5myih/koifVjd6bQ=;
        b=iv38Gg0WrUVMnoJz4iSchG+cyCSg3ziHMmhoaJI0pjq+4qpAZ3qpw8MhwVR2nxn6AD
         e+QOs2ijlQCIIV0G8bxnYRno0+oRM/QUG1/7UOKhpgnPoIP3JX8OR+zY5hCKWAPI1s/K
         1mAHyyJ0nsR7vWT0RcW7iQohZjzvjwBGKNiz1jqKsjUlAaaV0rMC4/t4ZudQjCRCsiV3
         8xihqsezSdCwOlqXvEZlsJjRMXkMF2XrbZLJY1OfNefPd8Tzhd2WDaUZ5fjl2KkCFVIp
         5Vd8QbNTUiYtA/uzEM6LzWEnJkUaxwj/M950NWPnL3vI05csg4LgN2kYeo1iBwh6i2nb
         GSLg==
X-Gm-Message-State: AFqh2koxZlOE+a7iFiyxkhQsXqWdnLaMUiP6czJyXkRnlm+zIUJvN1Mm
	acYp+cv5vbTf0Y8bWIR9kV1QpiQ6wekS0/pq3naRfQ==
X-Google-Smtp-Source: AMrXdXvYfqSwoaAvj+x6Y8rOABSC1o3UELoBjL8mxdEcOy8itZdY1Gyy4qtRJtS0OI19YGFM9lWbjo9sqQUT8b8rESs=
X-Received: by 2002:a81:ee03:0:b0:4ec:8f55:59f7 with SMTP id
 l3-20020a81ee03000000b004ec8f5559f7mr3333976ywm.317.1674586532265; Tue, 24
 Jan 2023 10:55:32 -0800 (PST)
MIME-Version: 1.0
References: <20230123191728.2928839-1-tjmercier@google.com>
 <20230123191728.2928839-2-tjmercier@google.com> <Y8/ybgp2FW+e3bjc@dhcp22.suse.cz>
In-Reply-To: <Y8/ybgp2FW+e3bjc@dhcp22.suse.cz>
From: "T.J. Mercier" <tjmercier@google.com>
Date: Tue, 24 Jan 2023 10:55:21 -0800
Message-ID: <CABdmKX1c_8LdJJboENnZhwGjrszDWOOVt-Do93-sJW46mZMD6A@mail.gmail.com>
To: Michal Hocko <mhocko@suse.com>
X-Rspamd-Server: lists.linaro.org
X-Rspamd-Queue-Id: E659F3EC03
X-Spamd-Bar: -------
X-Spamd-Result: default: False [-8.00 / 15.00];
	REPLY(-4.00)[];
	BAYES_HAM(-3.00)[99.99%];
	DMARC_POLICY_ALLOW(-0.50)[google.com,reject];
	R_SPF_ALLOW(-0.20)[+ip4:209.85.128.0/17];
	R_DKIM_ALLOW(-0.20)[google.com:s=20210112];
	MIME_GOOD(-0.10)[text/plain];
	ARC_NA(0.00)[];
	FROM_EQ_ENVFROM(0.00)[];
	MIME_TRACE(0.00)[0:+];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_TWO(0.00)[2];
	ASN(0.00)[asn:15169, ipnet:209.85.128.0/17, country:US];
	NEURAL_HAM(-0.00)[-0.997];
	DKIM_TRACE(0.00)[google.com:+];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	FROM_HAS_DN(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[25];
	TO_DN_SOME(0.00)[];
	DWL_DNSWL_NONE(0.00)[google.com:dkim];
	PREVIOUSLY_DELIVERED(0.00)[linaro-mm-sig@lists.linaro.org];
	RWL_MAILSPIKE_POSSIBLE(0.00)[209.85.128.173:from]
X-Rspamd-Action: no action
Message-ID-Hash: ZAVWQIA5IKXHUP7DWNFK7P3T6PYH4WZD
X-Message-ID-Hash: ZAVWQIA5IKXHUP7DWNFK7P3T6PYH4WZD
X-MailFrom: tjmercier@google.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: Tejun Heo <tj@kernel.org>, Zefan Li <lizefan.x@bytedance.com>, Johannes Weiner <hannes@cmpxchg.org>, Jonathan Corbet <corbet@lwn.net>, Sumit Semwal <sumit.semwal@linaro.org>, =?UTF-8?Q?Christian_K=C3=B6nig?= <christian.koenig@amd.com>, Roman Gushchin <roman.gushchin@linux.dev>, Shakeel Butt <shakeelb@google.com>, Muchun Song <muchun.song@linux.dev>, Andrew Morton <akpm@linux-foundation.org>, android-mm@google.com, jstultz@google.com, jeffv@google.com, cmllamas@google.com, linux-security-module@vger.kernel.org, selinux@vger.kernel.org, cgroups@vger.kernel.org, linux-doc@vger.kernel.org, linux-kernel@vger.kernel.org, linux-media@vger.kernel.org, dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org, linux-mm@kvack.org
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH v2 1/4] memcg: Track exported dma-buffers
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/ZAVWQIA5IKXHUP7DWNFK7P3T6PYH4WZD/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

On Tue, Jan 24, 2023 at 7:00 AM Michal Hocko <mhocko@suse.com> wrote:
>
> On Mon 23-01-23 19:17:23, T.J. Mercier wrote:
> > When a buffer is exported to userspace, use memcg to attribute the
> > buffer to the allocating cgroup until all buffer references are
> > released.
>
> Is there any reason why this memory cannot be charged during the
> allocation (__GFP_ACCOUNT used)?

My main motivation was to keep code changes away from exporters and
implement the accounting in one common spot for all of them. This is a
bit of a carryover from a previous approach [1] where there was some
objection to pushing off this work onto exporters and forcing them to
adapt, but __GFP_ACCOUNT does seem like a smaller burden than before
at least initially. However in order to support charge transfer
between cgroups with __GFP_ACCOUNT we'd need to be able to get at the
pages backing dmabuf objects, and the exporters are the ones with that
access. Meaning I think we'd have to add some additional dma_buf_ops
to achieve that, which was the objection from [1].

[1] https://lore.kernel.org/lkml/5cc27a05-8131-ce9b-dea1-5c75e994216d@amd.com/

>
> Also you do charge and account the memory but underlying pages do not
> know about their memcg (this is normally done with commit_charge for
> user mapped pages). This would become a problem if the memory is
> migrated for example.

Hmm, what problem do you see in this situation? If the backing pages
are to be migrated that requires the cooperation of the exporter,
which currently has no influence on how the cgroup charging is done
and that seems fine. (Unless you mean migrating the charge across
cgroups? In which case that's the next patch.)

> This also means that you have to maintain memcg
> reference outside of the memcg proper which is not really nice either.
> This mimicks tcp kmem limit implementation which I really have to say I
> am not a great fan of and this pattern shouldn't be coppied.
>
Ah, what can I say. This way looked simple to me. I think otherwise
we're back to making all exporters do more stuff for the accounting.

> Also you are not really saying anything about the oom behavior. With
> this implementation the kernel will try to reclaim the memory and even
> trigger the memcg oom killer if the request size is <= 8 pages. Is this
> a desirable behavior?

It will try to reclaim some memory, but not the dmabuf pages right?
Not *yet* anyway. This behavior sounds expected to me. I would only
expect it to be surprising for cgroups making heavy use of dmabufs
(that weren't accounted before) *and* with hard limits already very
close to actual usage. I remember Johannes mentioning that what counts
under memcg use is already a bit of a moving target.

> --
> Michal Hocko
> SUSE Labs
_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org
