Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 0D4F5666BE5
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 12 Jan 2023 08:56:41 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id AD4B73F038
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 12 Jan 2023 07:56:39 +0000 (UTC)
Received: from mail-pj1-f74.google.com (mail-pj1-f74.google.com [209.85.216.74])
	by lists.linaro.org (Postfix) with ESMTPS id C9C3E3EA31
	for <linaro-mm-sig@lists.linaro.org>; Thu, 12 Jan 2023 07:56:35 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=google.com header.s=20210112 header.b=kL0UvQit;
	spf=pass (lists.linaro.org: domain of 3Mr2_YwgKDc8D2v5zz6w19916z.x97638vC9-77-D3163DED.638vC9.9C1@flex--shakeelb.bounces.google.com designates 209.85.216.74 as permitted sender) smtp.mailfrom=3Mr2_YwgKDc8D2v5zz6w19916z.x97638vC9-77-D3163DED.638vC9.9C1@flex--shakeelb.bounces.google.com;
	dmarc=pass (policy=reject) header.from=google.com
Received: by mail-pj1-f74.google.com with SMTP id q9-20020a17090a304900b00226e84c4880so7305113pjl.4
        for <linaro-mm-sig@lists.linaro.org>; Wed, 11 Jan 2023 23:56:35 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=google.com; s=20210112;
        h=to:from:subject:message-id:references:mime-version:in-reply-to:date
         :from:to:cc:subject:date:message-id:reply-to;
        bh=Vg6nAgYjZ4wYYlTqMF3jbo791ipG8SuFLzs8v41dmTI=;
        b=kL0UvQite/urbN7Yp3NlzfzFTECRjRM1K7T5g4ZxG3zHylBlslAyzr6qxrAi9aysJM
         RDeACOZIgRrgriXoR4Pb3FUm6siAnl76A15BakL+7xmzzyJYvBrIKvFGmqzOdrHuLyHw
         eLCWL5a84U7mTNiiuZkhyyW//9BsTntHFbTMWG3xqNxmoxumrT4tac24HiqQmCacQxb7
         hWUb45XPnPy09DrO6jQeVMIxbVjfhO/QXKCL83ehtKjjTMjBps8fFK6gPa75SmpeTyw8
         vcf4DzdsP5Yv5ETLXzCGGp7Lotol2entUVESDqjWMyWKfU3XQsKSss8PleO3BkZomuWi
         ioIg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=to:from:subject:message-id:references:mime-version:in-reply-to:date
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=Vg6nAgYjZ4wYYlTqMF3jbo791ipG8SuFLzs8v41dmTI=;
        b=Km8FHV/6FyzN9Q47RwdwoxNnSDEJ/QW0Kskhb0BzqT9KOOtQYY7v9fLDGeZu01BcpV
         8rkGURXasBIZioYmk0dtgYk2dgUJCOA3iCymp1C2PmNklD61woKT5Kj9BjhOyiZbumor
         nUVl4Wg1z/u+vSJXXoW3zZMM0sOo4Djal0e690qycGOdEDi/RBBhswge3iV9duV8R6zP
         D0txWYtUY/NDiz2RC5qQXG+5CsenvKRVqCKTq+nHIWrc/xLsOMidd1U3oHUcYxQ84OU/
         3YKyxpwDCXwRw0CM4jRYp50EciV87sM2EHQAJkPCayauFWDQcyPOKAmqaxg5YNUAAcFL
         lSvQ==
X-Gm-Message-State: AFqh2krAD4b2YpjoMUDxc1kqqwhVkA771i/PGox/rp5WF+Y9uMZLTEAZ
	N7hTCtznGYDABc+K5JizyH5o3Mov0tTSTA==
X-Google-Smtp-Source: AMrXdXv29WhmagcsXxW5VJTVWoRrJdV9U6Gev8NYUGOd+PwEKkvAbufkJGb0qU84S3rueo4liZ5Ei6F1OKpY1Q==
X-Received: from shakeelb.c.googlers.com ([fda3:e722:ac3:cc00:7f:e700:c0a8:262e])
 (user=shakeelb job=sendgmr) by 2002:a62:1488:0:b0:581:85ab:16b3 with SMTP id
 130-20020a621488000000b0058185ab16b3mr4558933pfu.67.1673510194669; Wed, 11
 Jan 2023 23:56:34 -0800 (PST)
Date: Thu, 12 Jan 2023 07:56:31 +0000
In-Reply-To: <Y78+rfzXPq5XGs9O@phenom.ffwll.local>
Mime-Version: 1.0
References: <20230109213809.418135-1-tjmercier@google.com> <CALvZod4ru7F38tAO-gM9ZFKaEhS0w3KqFbPwhwcTvgJs4xMUow@mail.gmail.com>
 <Y78+rfzXPq5XGs9O@phenom.ffwll.local>
Message-ID: <20230112075631.wc6fd54ci55drhkp@google.com>
From: Shakeel Butt <shakeelb@google.com>
To: "T.J. Mercier" <tjmercier@google.com>, Tejun Heo <tj@kernel.org>,
	Zefan Li <lizefan.x@bytedance.com>, Johannes Weiner <hannes@cmpxchg.org>,
	Jonathan Corbet <corbet@lwn.net>, Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	"Arve =?utf-8?B?SGrDuG5uZXbDpWc=?=" <arve@android.com>, Todd Kjos <tkjos@android.com>, Martijn Coenen <maco@android.com>,
	Joel Fernandes <joel@joelfernandes.org>, Christian Brauner <brauner@kernel.org>,
	Carlos Llamas <cmllamas@google.com>, Suren Baghdasaryan <surenb@google.com>,
	Sumit Semwal <sumit.semwal@linaro.org>,
	"Christian =?utf-8?B?S8O2bmln?=" <christian.koenig@amd.com>, Michal Hocko <mhocko@kernel.org>,
	Roman Gushchin <roman.gushchin@linux.dev>, Muchun Song <muchun.song@linux.dev>,
	Andrew Morton <akpm@linux-foundation.org>, Paul Moore <paul@paul-moore.com>,
	James Morris <jmorris@namei.org>, "Serge E. Hallyn" <serge@hallyn.com>,
	Stephen Smalley <stephen.smalley.work@gmail.com>, Eric Paris <eparis@parisplace.org>,
	android-mm@google.com, jstultz@google.com, cgroups@vger.kernel.org,
	linux-doc@vger.kernel.org, linux-kernel@vger.kernel.org,
	linux-media@vger.kernel.org, dri-devel@lists.freedesktop.org,
	linaro-mm-sig@lists.linaro.org, linux-mm@kvack.org,
	linux-security-module@vger.kernel.org, selinux@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
X-Spamd-Result: default: False [-1.79 / 15.00];
	BAYES_HAM(-2.99)[99.96%];
	SUSPICIOUS_RECIPS(1.50)[];
	DMARC_POLICY_ALLOW(-0.50)[google.com,reject];
	MV_CASE(0.50)[];
	FORGED_SENDER(0.30)[shakeelb@google.com,3Mr2_YwgKDc8D2v5zz6w19916z.x97638vC9-77-D3163DED.638vC9.9C1@flex--shakeelb.bounces.google.com];
	R_DKIM_ALLOW(-0.20)[google.com:s=20210112];
	R_SPF_ALLOW(-0.20)[+ip4:209.85.128.0/17];
	MIME_GOOD(-0.10)[text/plain];
	RWL_MAILSPIKE_GOOD(-0.10)[209.85.216.74:from];
	NEURAL_HAM(-0.00)[-0.976];
	FROM_HAS_DN(0.00)[];
	TAGGED_RCPT(0.00)[];
	PREVIOUSLY_DELIVERED(0.00)[linaro-mm-sig@lists.linaro.org];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[mail-pj1-f74.google.com:rdns,mail-pj1-f74.google.com:helo];
	RCPT_COUNT_TWELVE(0.00)[35];
	FROM_NEQ_ENVFROM(0.00)[shakeelb@google.com,3Mr2_YwgKDc8D2v5zz6w19916z.x97638vC9-77-D3163DED.638vC9.9C1@flex--shakeelb.bounces.google.com];
	RCVD_COUNT_TWO(0.00)[2];
	FREEMAIL_TO(0.00)[google.com,kernel.org,bytedance.com,cmpxchg.org,lwn.net,linuxfoundation.org,android.com,joelfernandes.org,linaro.org,amd.com,linux.dev,linux-foundation.org,paul-moore.com,namei.org,hallyn.com,gmail.com,parisplace.org,vger.kernel.org,lists.freedesktop.org,lists.linaro.org,kvack.org];
	DKIM_TRACE(0.00)[google.com:+];
	ARC_NA(0.00)[];
	MIME_TRACE(0.00)[0:+];
	ASN(0.00)[asn:15169, ipnet:209.85.128.0/17, country:US];
	RCVD_TLS_LAST(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	TO_DN_SOME(0.00)[]
X-Rspamd-Action: no action
X-Rspamd-Server: lists.linaro.org
X-Rspamd-Queue-Id: C9C3E3EA31
X-Spamd-Bar: -
Message-ID-Hash: TTXHYDDGPJLSGMNAB3KHQEHVZVB2MYQ7
X-Message-ID-Hash: TTXHYDDGPJLSGMNAB3KHQEHVZVB2MYQ7
X-MailFrom: 3Mr2_YwgKDc8D2v5zz6w19916z.x97638vC9-77-D3163DED.638vC9.9C1@flex--shakeelb.bounces.google.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH 0/4] Track exported dma-buffers with memcg
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/TTXHYDDGPJLSGMNAB3KHQEHVZVB2MYQ7/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Transfer-Encoding: 7bit

On Wed, Jan 11, 2023 at 11:56:45PM +0100, Daniel Vetter wrote:
> 
[...]
> I think eventually, at least for other "account gpu stuff in cgroups" use
> case we do want to actually charge the memory.
> 
> The problem is a bit that with gpu allocations reclaim is essentially "we
> pass the error to userspace and they get to sort the mess out". There are
> some exceptions (some gpu drivers to have shrinkers) would we need to make
> sure these shrinkers are tied into the cgroup stuff before we could enable
> charging for them?
> 

No, there is no requirement to have shrinkers or making such memory
reclaimable before charging it. Though existing shrinkers and the
possible future shrinkers would need to be converted into memcg aware
shrinkers.

Though there will be a need to update user expectations that if they 
use memcgs with hard limits, they may start seeing memcg OOMs after the
charging of dmabuf.

> Also note that at least from the gpu driver side this is all a huge
> endeavour, so if we can split up the steps as much as possible (and get
> something interim useable that doesn't break stuff ofc), that is
> practically need to make headway here. 

This sounds reasonable to me.
_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org
