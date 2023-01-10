Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 5F8A7665AD2
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 11 Jan 2023 12:57:26 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 60A533F042
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 11 Jan 2023 11:57:25 +0000 (UTC)
Received: from mail-yw1-f173.google.com (mail-yw1-f173.google.com [209.85.128.173])
	by lists.linaro.org (Postfix) with ESMTPS id 68EE83EC46
	for <linaro-mm-sig@lists.linaro.org>; Tue, 10 Jan 2023 00:18:24 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=google.com header.s=20210112 header.b=CjxZ1mdp;
	spf=pass (lists.linaro.org: domain of shakeelb@google.com designates 209.85.128.173 as permitted sender) smtp.mailfrom=shakeelb@google.com;
	dmarc=pass (policy=reject) header.from=google.com
Received: by mail-yw1-f173.google.com with SMTP id 00721157ae682-4a2f8ad29d5so134869207b3.8
        for <linaro-mm-sig@lists.linaro.org>; Mon, 09 Jan 2023 16:18:24 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=google.com; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=sgQCt0va7Fj5/9fGcldqaAxXWYK8cBxGZmP9xyPfdn4=;
        b=CjxZ1mdpIhqu8VGPVCMoqsbsDlIhqCjEmsPqq5qkb1qszkge1Jm7eoOuPAcP/ZV3bk
         wPP+sf8id+ynxeTBPKOWQaibXFQF9VkirxIevCIzpGAQ21ueiyMyljdoDpqBwv6iADhp
         JWDpspg8gxuUz/g8o8f3Q/TpOZXD4wUkStfMnP3bNMTdaoT8E8PrN4XpF0W1y5T9lIyj
         m9H9otSUCpmNvNlNujrmOWTRlgks+Pwp+EXc1GX8tr1KUVIqmZXacuPH98ZfnNVZNFn8
         /a3FCftCVuu8stwkCKaAOtd2Rf8qgv7JUkOT3SOOPfRdmX4H3QpcqFd3fI60DVZdrWVr
         exyg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=sgQCt0va7Fj5/9fGcldqaAxXWYK8cBxGZmP9xyPfdn4=;
        b=NgHOms4raof3IO3eMk9wHAS/iH05MI+oHenNIlAuMWlVh+yVQbGmrvIxWFP33KWts/
         PHSIC098TGLgYOd2CUNV29+J0Qu4s4IuQ4z2G1Frh+lU4dNlfevZf/x5SuFkPutw3jw2
         U6IJlk2nGBtgUXYy0jBpGOIlMXqsCYNjBrL66FVf5vd+uvVLvzdn9x+E+yjtljf5FyFA
         zu7dCAqa+fJeHdk2Rv//4j810DBGDWmgQT2/yYbE3BT0DtZuif68a6m5wNNebE3KUl8X
         Bpkk3EFts0RKp/j8Pz8a/gPXeqmock19e2uaMp5EWs9fBBfatlMKqaQ9p/ZRkARrtCXf
         iekw==
X-Gm-Message-State: AFqh2kopmep7MVvVYGo5gdxhYPuJYONNVxRyu/LT30oitphimRCHhpjP
	8lZ7hkyKHXipIZcdWFA5qCUBBN4EfKkgZnSxWmBIMw==
X-Google-Smtp-Source: AMrXdXvykUOk6Aq29zKPFweeZ5QLOqVr0VtGabuLWKsdUabDXPvAWtUyFW1w97fkSV+2AQTk/rtQ4CJ6GNWf2U6U44A=
X-Received: by 2002:a81:7386:0:b0:391:c415:f872 with SMTP id
 o128-20020a817386000000b00391c415f872mr1094430ywc.318.1673309903890; Mon, 09
 Jan 2023 16:18:23 -0800 (PST)
MIME-Version: 1.0
References: <20230109213809.418135-1-tjmercier@google.com>
In-Reply-To: <20230109213809.418135-1-tjmercier@google.com>
From: Shakeel Butt <shakeelb@google.com>
Date: Mon, 9 Jan 2023 16:18:12 -0800
Message-ID: <CALvZod4ru7F38tAO-gM9ZFKaEhS0w3KqFbPwhwcTvgJs4xMUow@mail.gmail.com>
To: "T.J. Mercier" <tjmercier@google.com>
X-Spamd-Result: default: False [-10.00 / 15.00];
	REPLY(-4.00)[];
	DWL_DNSWL_HI(-3.50)[google.com:dkim];
	BAYES_HAM(-3.00)[100.00%];
	SUSPICIOUS_RECIPS(1.50)[];
	DMARC_POLICY_ALLOW(-0.50)[google.com,reject];
	R_DKIM_ALLOW(-0.20)[google.com:s=20210112];
	R_SPF_ALLOW(-0.20)[+ip4:209.85.128.0/17];
	MIME_GOOD(-0.10)[text/plain];
	NEURAL_HAM(-0.00)[-1.000];
	ARC_NA(0.00)[];
	MIME_TRACE(0.00)[0:+];
	RCVD_TLS_LAST(0.00)[];
	FROM_EQ_ENVFROM(0.00)[];
	FREEMAIL_CC(0.00)[kernel.org,bytedance.com,cmpxchg.org,lwn.net,linuxfoundation.org,android.com,joelfernandes.org,google.com,linaro.org,amd.com,linux.dev,linux-foundation.org,paul-moore.com,namei.org,hallyn.com,gmail.com,parisplace.org,ffwll.ch,vger.kernel.org,lists.freedesktop.org,lists.linaro.org,kvack.org];
	ASN(0.00)[asn:15169, ipnet:209.85.128.0/17, country:US];
	RCVD_IN_DNSWL_NONE(0.00)[209.85.128.173:from];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	DKIM_TRACE(0.00)[google.com:+];
	FROM_HAS_DN(0.00)[];
	RWL_MAILSPIKE_POSSIBLE(0.00)[209.85.128.173:from];
	RCPT_COUNT_TWELVE(0.00)[36];
	TO_DN_SOME(0.00)[];
	PREVIOUSLY_DELIVERED(0.00)[linaro-mm-sig@lists.linaro.org];
	TAGGED_RCPT(0.00)[];
	RCVD_COUNT_TWO(0.00)[2]
X-Rspamd-Action: no action
X-Rspamd-Server: lists.linaro.org
X-Rspamd-Queue-Id: 68EE83EC46
X-Spamd-Bar: ----------
X-MailFrom: shakeelb@google.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
Message-ID-Hash: R2XI3WKSC7XCYHPZ4JBUVFW55CMRHFCQ
X-Message-ID-Hash: R2XI3WKSC7XCYHPZ4JBUVFW55CMRHFCQ
X-Mailman-Approved-At: Wed, 11 Jan 2023 11:57:23 +0000
CC: Tejun Heo <tj@kernel.org>, Zefan Li <lizefan.x@bytedance.com>, Johannes Weiner <hannes@cmpxchg.org>, Jonathan Corbet <corbet@lwn.net>, Greg Kroah-Hartman <gregkh@linuxfoundation.org>, =?UTF-8?B?QXJ2ZSBIasO4bm5ldsOlZw==?= <arve@android.com>, Todd Kjos <tkjos@android.com>, Martijn Coenen <maco@android.com>, Joel Fernandes <joel@joelfernandes.org>, Christian Brauner <brauner@kernel.org>, Carlos Llamas <cmllamas@google.com>, Suren Baghdasaryan <surenb@google.com>, Sumit Semwal <sumit.semwal@linaro.org>, =?UTF-8?Q?Christian_K=C3=B6nig?= <christian.koenig@amd.com>, Michal Hocko <mhocko@kernel.org>, Roman Gushchin <roman.gushchin@linux.dev>, Muchun Song <muchun.song@linux.dev>, Andrew Morton <akpm@linux-foundation.org>, Paul Moore <paul@paul-moore.com>, James Morris <jmorris@namei.org>, "Serge E. Hallyn" <serge@hallyn.com>, Stephen Smalley <stephen.smalley.work@gmail.com>, Eric Paris <eparis@parisplace.org>, android-mm@google.com, jstultz@google.com, cgroups@vger.kernel.org, linux-doc@v
 ger.kernel.org, linux-kernel@vger.kernel.org, linux-media@vger.kernel.org, dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org, linux-mm@kvack.org, linux-security-module@vger.kernel.org, selinux@vger.kernel.org
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH 0/4] Track exported dma-buffers with memcg
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/R2XI3WKSC7XCYHPZ4JBUVFW55CMRHFCQ/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

Hi T.J.,

On Mon, Jan 9, 2023 at 1:38 PM T.J. Mercier <tjmercier@google.com> wrote:
>
> Based on discussions at LPC, this series adds a memory.stat counter for
> exported dmabufs. This counter allows us to continue tracking
> system-wide total exported buffer sizes which there is no longer any
> way to get without DMABUF_SYSFS_STATS, and adds a new capability to
> track per-cgroup exported buffer sizes. The total (root counter) is
> helpful for accounting in-kernel dmabuf use (by comparing with the sum
> of child nodes or with the sum of sizes of mapped buffers or FD
> references in procfs) in addition to helping identify driver memory
> leaks when in-kernel use continually increases over time. With
> per-application cgroups, the per-cgroup counter allows us to quickly
> see how much dma-buf memory an application has caused to be allocated.
> This avoids the need to read through all of procfs which can be a
> lengthy process, and causes the charge to "stick" to the allocating
> process/cgroup as long as the buffer is alive, regardless of how the
> buffer is shared (unless the charge is transferred).
>
> The first patch adds the counter to memcg. The next two patches allow
> the charge for a buffer to be transferred across cgroups which is
> necessary because of the way most dmabufs are allocated from a central
> process on Android. The fourth patch adds a SELinux hook to binder in
> order to control who is allowed to transfer buffer charges.
>
> [1] https://lore.kernel.org/all/20220617085702.4298-1-christian.koenig@amd.com/
>

I am a bit confused by the term "charge" used in this patch series.
From the patches, it seems like only a memcg stat is added and nothing
is charged to the memcg.

This leads me to the question: Why add this stat in memcg if the
underlying memory is not charged to the memcg and if we don't really
want to limit the usage?

I see two ways forward:

1. Instead of memcg, use bpf-rstat [1] infra to implement the
per-cgroup stat for dmabuf. (You may need an additional hook for the
stat transfer).

2. Charge the actual memory to the memcg. Since the size of dmabuf is
immutable across its lifetime, you will not need to do accounting at
page level and instead use something similar to the network memory
accounting interface/mechanism (or even more simple). However you
would need to handle the reclaim, OOM and charge context and failure
cases. However if you are not looking to limit the usage of dmabuf
then this option is an overkill.

Please let me know if I misunderstood something.

[1] https://lore.kernel.org/all/20220824233117.1312810-1-haoluo@google.com/

thanks,
Shakeel
_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org
