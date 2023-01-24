Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 75A4B67A355
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 24 Jan 2023 20:46:49 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 7942D443DC
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 24 Jan 2023 19:46:48 +0000 (UTC)
Received: from mail-pg1-f201.google.com (mail-pg1-f201.google.com [209.85.215.201])
	by lists.linaro.org (Postfix) with ESMTPS id 300783EA37
	for <linaro-mm-sig@lists.linaro.org>; Tue, 24 Jan 2023 19:46:32 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=google.com header.s=20210112 header.b=s+S6NvSt;
	spf=pass (lists.linaro.org: domain of 3lzXQYwgKDWgYNGQKKRHMUUMRK.IUSROTGXU-SS-YOMROYZY.ROTGXU.UXM@flex--shakeelb.bounces.google.com designates 209.85.215.201 as permitted sender) smtp.mailfrom=3lzXQYwgKDWgYNGQKKRHMUUMRK.IUSROTGXU-SS-YOMROYZY.ROTGXU.UXM@flex--shakeelb.bounces.google.com;
	dmarc=pass (policy=reject) header.from=google.com
Received: by mail-pg1-f201.google.com with SMTP id g31-20020a63111f000000b004bbc748ca63so7288739pgl.3
        for <linaro-mm-sig@lists.linaro.org>; Tue, 24 Jan 2023 11:46:32 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=google.com; s=20210112;
        h=cc:to:from:subject:message-id:references:mime-version:in-reply-to
         :date:from:to:cc:subject:date:message-id:reply-to;
        bh=/GyNyIeeVhsFfDVzo3Uv5K6TJGpkGDF80R1/yVGfsGs=;
        b=s+S6NvStNDfxmLH+7HdkNoMxBGNFu15nS1JbU3o7kKshlx447vodpqXHX0di6WuhDZ
         a1MO4rwyUgw2LrSCtGq08zPjHV51A98+yZHCXgSTngUgV4XXVXDeDPcjG7CuFBAKTuAR
         kTHeE5yNP/OikYuovflyL/aEcJ+JOgjIm+SFfej2Z5ILJ8d5oy9l9Ll/yZqUaJp+iWXi
         DD5HNZQ0qbq4VEtW0G8okZMv8molLKQ44+tNH1Nu8KJ7B9jWjxkED24jWjgeRCFRcQ8I
         izZ99IapQOypOy9ZAzpJglu0Rf0PFoxX1xa78gNX6tsRtckWTeEuw1Q3Oze2b7gqQYar
         JRcA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=cc:to:from:subject:message-id:references:mime-version:in-reply-to
         :date:x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=/GyNyIeeVhsFfDVzo3Uv5K6TJGpkGDF80R1/yVGfsGs=;
        b=po+CEWEZ0GsIcxcnn4JEY/ATfzVc2IbeQQh7M6WGNHNJ+WHxu60ACA7sTVxmB8HQyy
         XWvk7HqZ3AN+XLC5lgV2+6rhshW9hqJYMm6xPTG6lFoQCk194NWS/ll5Z4YbpVGDLCXS
         1Er6jC5JmNXX9eRnmiPabD42/rQ7SgFkvsQCjW5bMKBafJ5HLugT6oZPJrwXGDKMBDwC
         w8Oesr9iji3X4YpnGbekNAKIw6j0AGLkY4gGWxCx7AilXGj+CsngunaiTn06/HFgOuQu
         Kf3u91nq2w9lOstDaqMYHG0fvpcwArRlIsRbNEdIB1JxgAIduomHYqk8/JAdpj79kMu+
         xtlQ==
X-Gm-Message-State: AFqh2kqQz3wHFjXw9CCOZUm38sGJQDja/infsiyet7JGcsovwmMvPgjI
	M9Lod1+NRgpNzM0wNXK5dClhB4WVkBSD4w==
X-Google-Smtp-Source: AMrXdXukkwsl/ioqg+fD35BqMTHaPjz5qGGy0gbqkxllMlQZ94JVGByIXE/sjuoEMUouo8MXOIoUEVSlfpldQQ==
X-Received: from shakeelb.c.googlers.com ([fda3:e722:ac3:cc00:7f:e700:c0a8:262e])
 (user=shakeelb job=sendgmr) by 2002:a62:30c7:0:b0:58d:af10:5831 with SMTP id
 w190-20020a6230c7000000b0058daf105831mr2987930pfw.24.1674589591181; Tue, 24
 Jan 2023 11:46:31 -0800 (PST)
Date: Tue, 24 Jan 2023 19:46:28 +0000
In-Reply-To: <Y8/ybgp2FW+e3bjc@dhcp22.suse.cz>
Mime-Version: 1.0
References: <20230123191728.2928839-1-tjmercier@google.com>
 <20230123191728.2928839-2-tjmercier@google.com> <Y8/ybgp2FW+e3bjc@dhcp22.suse.cz>
Message-ID: <20230124194628.d44rtcfsv23fndxw@google.com>
From: Shakeel Butt <shakeelb@google.com>
To: Michal Hocko <mhocko@suse.com>
Content-Type: text/plain; charset="us-ascii"
X-Rspamd-Server: lists.linaro.org
X-Rspamd-Queue-Id: 300783EA37
X-Spamd-Bar: ----------
X-Spamd-Result: default: False [-10.70 / 15.00];
	REPLY(-4.00)[];
	DWL_DNSWL_HI(-3.50)[google.com:dkim];
	BAYES_HAM(-3.00)[99.99%];
	DMARC_POLICY_ALLOW(-0.50)[google.com,reject];
	MV_CASE(0.50)[];
	FORGED_SENDER(0.30)[shakeelb@google.com,3lzXQYwgKDWgYNGQKKRHMUUMRK.IUSROTGXU-SS-YOMROYZY.ROTGXU.UXM@flex--shakeelb.bounces.google.com];
	R_SPF_ALLOW(-0.20)[+ip4:209.85.128.0/17];
	R_DKIM_ALLOW(-0.20)[google.com:s=20210112];
	MIME_GOOD(-0.10)[text/plain];
	RWL_MAILSPIKE_POSSIBLE(0.00)[209.85.215.201:from];
	MIME_TRACE(0.00)[0:+];
	ARC_NA(0.00)[];
	ASN(0.00)[asn:15169, ipnet:209.85.128.0/17, country:US];
	RCVD_TLS_LAST(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[shakeelb@google.com,3lzXQYwgKDWgYNGQKKRHMUUMRK.IUSROTGXU-SS-YOMROYZY.ROTGXU.UXM@flex--shakeelb.bounces.google.com];
	NEURAL_HAM(-0.00)[-0.985];
	DKIM_TRACE(0.00)[google.com:+];
	RCPT_COUNT_TWELVE(0.00)[25];
	TO_DN_SOME(0.00)[];
	FROM_HAS_DN(0.00)[];
	RCVD_IN_DNSWL_NONE(0.00)[209.85.215.201:from];
	PREVIOUSLY_DELIVERED(0.00)[linaro-mm-sig@lists.linaro.org];
	MID_RHS_MATCH_FROM(0.00)[];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	RCVD_COUNT_TWO(0.00)[2]
X-Rspamd-Action: no action
Message-ID-Hash: E7RU7LS76CZOAAIPOXHMTM3QRMU3LSEJ
X-Message-ID-Hash: E7RU7LS76CZOAAIPOXHMTM3QRMU3LSEJ
X-MailFrom: 3lzXQYwgKDWgYNGQKKRHMUUMRK.IUSROTGXU-SS-YOMROYZY.ROTGXU.UXM@flex--shakeelb.bounces.google.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: "T.J. Mercier" <tjmercier@google.com>, Tejun Heo <tj@kernel.org>, Zefan Li <lizefan.x@bytedance.com>, Johannes Weiner <hannes@cmpxchg.org>, Jonathan Corbet <corbet@lwn.net>, Sumit Semwal <sumit.semwal@linaro.org>, Christian =?utf-8?B?S8O2bmln?= <christian.koenig@amd.com>, Roman Gushchin <roman.gushchin@linux.dev>, Muchun Song <muchun.song@linux.dev>, Andrew Morton <akpm@linux-foundation.org>, android-mm@google.com, jstultz@google.com, jeffv@google.com, cmllamas@google.com, linux-security-module@vger.kernel.org, selinux@vger.kernel.org, cgroups@vger.kernel.org, linux-doc@vger.kernel.org, linux-kernel@vger.kernel.org, linux-media@vger.kernel.org, dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org, linux-mm@kvack.org
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH v2 1/4] memcg: Track exported dma-buffers
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/E7RU7LS76CZOAAIPOXHMTM3QRMU3LSEJ/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Transfer-Encoding: 7bit

On Tue, Jan 24, 2023 at 03:59:58PM +0100, Michal Hocko wrote:
> On Mon 23-01-23 19:17:23, T.J. Mercier wrote:
> > When a buffer is exported to userspace, use memcg to attribute the
> > buffer to the allocating cgroup until all buffer references are
> > released.
> 
> Is there any reason why this memory cannot be charged during the
> allocation (__GFP_ACCOUNT used)?
> Also you do charge and account the memory but underlying pages do not
> know about their memcg (this is normally done with commit_charge for
> user mapped pages). This would become a problem if the memory is
> migrated for example.

I don't think this is movable memory.

> This also means that you have to maintain memcg
> reference outside of the memcg proper which is not really nice either.
> This mimicks tcp kmem limit implementation which I really have to say I
> am not a great fan of and this pattern shouldn't be coppied.
> 

I think we should keep the discussion on technical merits instead of
personal perference. To me using skmem like interface is totally fine
but the pros/cons need to be very explicit and the clear reasons to
select that option should be included.

To me there are two options:

1. Using skmem like interface as this patch series:

The main pros of this option is that it is very simple. Let me list down
the cons of this approach:

a. There is time window between the actual memory allocation/free and
the charge and uncharge and [un]charge happen when the whole memory is
allocated or freed. I think for the charge path that might not be a big
issue but on the uncharge, this can cause issues. The application and
the potential shrinkers have freed some of this dmabuf memory but until
the whole dmabuf is freed, the memcg uncharge will not happen. This can
consequences on reclaim and oom behavior of the application.

b. Due to the usage model i.e. a central daemon allocating the dmabuf
memory upfront, there is a requirement to have a memcg charge transfer
functionality to transfer the charge from the central daemon to the
client applications. This does introduce complexity and avenues of weird
reclaim and oom behavior.


2. Allocate and charge the memory on page fault by actual user

In this approach, the memory is not allocated upfront by the central
daemon but rather on the page fault by the client application and the
memcg charge happen at the same time.

The only cons I can think of is this approach is more involved and may
need some clever tricks to track the page on the free patch i.e. we to
decrement the dmabuf memcg stat on free path. Maybe a page flag.

The pros of this approach is there is no need have a charge transfer
functionality and the charge/uncharge being closely tied to the actual
memory allocation and free.

Personally I would prefer the second approach but I don't want to just
block this work if the dmabuf folks are ok with the cons mentioned of
the first approach.

thanks,
Shakeel
_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org
