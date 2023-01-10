Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 409F5665AD6
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 11 Jan 2023 12:57:55 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 520563F042
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 11 Jan 2023 11:57:54 +0000 (UTC)
Received: from smtp-out2.suse.de (smtp-out2.suse.de [195.135.220.29])
	by lists.linaro.org (Postfix) with ESMTPS id EEF193EBCB
	for <linaro-mm-sig@lists.linaro.org>; Tue, 10 Jan 2023 08:58:24 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=suse.com header.s=susede1 header.b="d0/gJhZr";
	spf=pass (lists.linaro.org: domain of mhocko@suse.com designates 195.135.220.29 as permitted sender) smtp.mailfrom=mhocko@suse.com;
	dmarc=pass (policy=quarantine) header.from=suse.com
Received: from imap2.suse-dmz.suse.de (imap2.suse-dmz.suse.de [192.168.254.74])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (P-521) server-digest SHA512)
	(No client certificate requested)
	by smtp-out2.suse.de (Postfix) with ESMTPS id 4930267AEB;
	Tue, 10 Jan 2023 08:58:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=suse.com; s=susede1;
	t=1673341100; h=from:from:reply-to:date:date:message-id:message-id:to:to:cc:cc:
	 mime-version:mime-version:content-type:content-type:
	 in-reply-to:in-reply-to:references:references;
	bh=MQLMOsWeyfQ9OMwOEPpBfSY/zX1K5gLRGoJXs0PRFhQ=;
	b=d0/gJhZr3338arujv292RDCpaFVCNpNRhfmbIWIBvXye7cZy8BnXDKXCy9uBlP+DXmqzhv
	vH5AzxAF9dGjzxCxyUj1ty+EwLrjZ3mqqo1g8JsfnV+KA79R00NSzTgm9DNtTFXOX4Gf8S
	h+jlN7NEV2XA5L/y7LnIoWd7unR8GQs=
Received: from imap2.suse-dmz.suse.de (imap2.suse-dmz.suse.de [192.168.254.74])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (P-521) server-digest SHA512)
	(No client certificate requested)
	by imap2.suse-dmz.suse.de (Postfix) with ESMTPS id 28CB313338;
	Tue, 10 Jan 2023 08:58:20 +0000 (UTC)
Received: from dovecot-director2.suse.de ([192.168.254.65])
	by imap2.suse-dmz.suse.de with ESMTPSA
	id 36wFB6wovWP/IgAAMHmgww
	(envelope-from <mhocko@suse.com>); Tue, 10 Jan 2023 08:58:20 +0000
Date: Tue, 10 Jan 2023 09:58:19 +0100
From: Michal Hocko <mhocko@suse.com>
To: "T.J. Mercier" <tjmercier@google.com>
Message-ID: <Y70oqxejnUqkJVPx@dhcp22.suse.cz>
References: <20230109213809.418135-1-tjmercier@google.com>
 <20230109213809.418135-2-tjmercier@google.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20230109213809.418135-2-tjmercier@google.com>
X-Spamd-Result: default: False [-9.47 / 15.00];
	REPLY(-4.00)[];
	BAYES_HAM(-2.97)[99.87%];
	RCVD_DKIM_ARC_DNSWL_HI(-1.00)[];
	RCVD_IN_DNSWL_HI(-0.50)[195.135.220.29:from];
	DMARC_POLICY_ALLOW(-0.50)[suse.com,quarantine];
	R_SPF_ALLOW(-0.20)[+a:smtp-out2.suse.de];
	R_DKIM_ALLOW(-0.20)[suse.com:s=susede1];
	MIME_GOOD(-0.10)[text/plain];
	NEURAL_HAM(-0.00)[-0.998];
	RCPT_COUNT_TWELVE(0.00)[21];
	RCVD_TLS_ALL(0.00)[];
	ASN(0.00)[asn:29298, ipnet:195.135.220.0/23, country:DE];
	MIME_TRACE(0.00)[0:+];
	FROM_EQ_ENVFROM(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	ARC_NA(0.00)[];
	DKIM_TRACE(0.00)[suse.com:+];
	URIBL_BLOCKED(0.00)[suse.com:dkim];
	TO_DN_SOME(0.00)[];
	FROM_HAS_DN(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[]
X-Rspamd-Action: no action
X-Rspamd-Server: lists.linaro.org
X-Rspamd-Queue-Id: EEF193EBCB
X-Spamd-Bar: ---------
X-MailFrom: mhocko@suse.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
Message-ID-Hash: HPRGMFVA4KND3XQH4B6N2JBG6KLJTJEU
X-Message-ID-Hash: HPRGMFVA4KND3XQH4B6N2JBG6KLJTJEU
X-Mailman-Approved-At: Wed, 11 Jan 2023 11:57:52 +0000
CC: Tejun Heo <tj@kernel.org>, Zefan Li <lizefan.x@bytedance.com>, Johannes Weiner <hannes@cmpxchg.org>, Jonathan Corbet <corbet@lwn.net>, Sumit Semwal <sumit.semwal@linaro.org>, Christian =?iso-8859-1?Q?K=F6nig?= <christian.koenig@amd.com>, Roman Gushchin <roman.gushchin@linux.dev>, Shakeel Butt <shakeelb@google.com>, Muchun Song <muchun.song@linux.dev>, Andrew Morton <akpm@linux-foundation.org>, android-mm@google.com, jstultz@google.com, cgroups@vger.kernel.org, linux-doc@vger.kernel.org, linux-kernel@vger.kernel.org, linux-media@vger.kernel.org, dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org, linux-mm@kvack.org
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH 1/4] memcg: Track exported dma-buffers
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/HPRGMFVA4KND3XQH4B6N2JBG6KLJTJEU/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

On Mon 09-01-23 21:38:04, T.J. Mercier wrote:
> When a buffer is exported to userspace, use memcg to attribute the
> buffer to the allocating cgroup until all buffer references are
> released.
> 
> Unlike the dmabuf sysfs stats implementation, this memcg accounting
> avoids contention over the kernfs_rwsem incurred when creating or
> removing nodes.

I am not familiar with dmabuf infrastructure so please bear with me.
AFAIU this patch adds a dmabuf specific counter to find out the amount
of dmabuf memory used. But I do not see any actual charging implemented
for that memory.

I have looked at two random users of dma_buf_export cma_heap_allocate
and it allocates pages to back the dmabuf (AFAIU) by cma_alloc
which doesn't account to memcg, system_heap_allocate uses
alloc_largest_available which relies on order_flags which doesn't seem
to ever use __GFP_ACCOUNT.

This would mean that the counter doesn't represent any actual memory
reflected in the overall memory consumption of a memcg. I believe this
is rather unexpected and confusing behavior. While some counters
overlap and their sum would exceed the charged memory we do not have any
that doesn't correspond to any memory (at least not for non-root memcgs).

-- 
Michal Hocko
SUSE Labs
_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org
