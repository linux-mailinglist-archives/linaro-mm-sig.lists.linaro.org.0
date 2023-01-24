Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id CACF6679CD0
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 24 Jan 2023 16:00:19 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id BB8F0443BA
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 24 Jan 2023 15:00:18 +0000 (UTC)
Received: from smtp-out1.suse.de (smtp-out1.suse.de [195.135.220.28])
	by lists.linaro.org (Postfix) with ESMTPS id A575E3EC44
	for <linaro-mm-sig@lists.linaro.org>; Tue, 24 Jan 2023 15:00:00 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=suse.com header.s=susede1 header.b=ioVsAhbB;
	spf=pass (lists.linaro.org: domain of mhocko@suse.com designates 195.135.220.28 as permitted sender) smtp.mailfrom=mhocko@suse.com;
	dmarc=pass (policy=quarantine) header.from=suse.com
Received: from imap2.suse-dmz.suse.de (imap2.suse-dmz.suse.de [192.168.254.74])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (P-521) server-digest SHA512)
	(No client certificate requested)
	by smtp-out1.suse.de (Postfix) with ESMTPS id B6431210E7;
	Tue, 24 Jan 2023 14:59:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=suse.com; s=susede1;
	t=1674572399; h=from:from:reply-to:date:date:message-id:message-id:to:to:cc:cc:
	 mime-version:mime-version:content-type:content-type:
	 in-reply-to:in-reply-to:references:references;
	bh=XLqxBQfQ00tnQcihjlqxyWWIteOiPhmeVkN+U5n5QiU=;
	b=ioVsAhbBdV1YHrLBEs6yIdAAV1QXNCZMBuzPaF312N9LCK2343XbyDbjM+FY8t1ZkxHq4n
	Oiz2oPGK3yovgBjLtnfOF0kKVLRWhKt1RSD2ksahTFWRZVbES3/JrtXujjXbbOKWjgqA2O
	iC2w/WyjLdNarJQAiedANs3mQbkKCFc=
Received: from imap2.suse-dmz.suse.de (imap2.suse-dmz.suse.de [192.168.254.74])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (P-521) server-digest SHA512)
	(No client certificate requested)
	by imap2.suse-dmz.suse.de (Postfix) with ESMTPS id 8DC75139FB;
	Tue, 24 Jan 2023 14:59:59 +0000 (UTC)
Received: from dovecot-director2.suse.de ([192.168.254.65])
	by imap2.suse-dmz.suse.de with ESMTPSA
	id ScUvIm/yz2PoFgAAMHmgww
	(envelope-from <mhocko@suse.com>); Tue, 24 Jan 2023 14:59:59 +0000
Date: Tue, 24 Jan 2023 15:59:58 +0100
From: Michal Hocko <mhocko@suse.com>
To: "T.J. Mercier" <tjmercier@google.com>
Message-ID: <Y8/ybgp2FW+e3bjc@dhcp22.suse.cz>
References: <20230123191728.2928839-1-tjmercier@google.com>
 <20230123191728.2928839-2-tjmercier@google.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20230123191728.2928839-2-tjmercier@google.com>
X-Rspamd-Server: lists.linaro.org
X-Rspamd-Queue-Id: A575E3EC44
X-Spamd-Bar: ---------
X-Spamd-Result: default: False [-9.69 / 15.00];
	REPLY(-4.00)[];
	BAYES_HAM(-2.99)[99.95%];
	DWL_DNSWL_LOW(-1.00)[suse.com:dkim];
	RCVD_DKIM_ARC_DNSWL_MED(-0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[suse.com,quarantine];
	R_SPF_ALLOW(-0.20)[+a:smtp-out1.suse.de];
	RCVD_IN_DNSWL_MED(-0.20)[195.135.220.28:from];
	R_DKIM_ALLOW(-0.20)[suse.com:s=susede1];
	MIME_GOOD(-0.10)[text/plain];
	NEURAL_HAM(-0.00)[-0.979];
	RCPT_COUNT_TWELVE(0.00)[25];
	ASN(0.00)[asn:29298, ipnet:195.135.220.0/23, country:DE];
	MIME_TRACE(0.00)[0:+];
	FROM_EQ_ENVFROM(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	ARC_NA(0.00)[];
	DKIM_TRACE(0.00)[suse.com:+];
	FROM_HAS_DN(0.00)[];
	RCVD_TLS_ALL(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[]
X-Rspamd-Action: no action
Message-ID-Hash: BBYYADQY7NFJQPYXOADDDWU2BV3BHACS
X-Message-ID-Hash: BBYYADQY7NFJQPYXOADDDWU2BV3BHACS
X-MailFrom: mhocko@suse.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: Tejun Heo <tj@kernel.org>, Zefan Li <lizefan.x@bytedance.com>, Johannes Weiner <hannes@cmpxchg.org>, Jonathan Corbet <corbet@lwn.net>, Sumit Semwal <sumit.semwal@linaro.org>, Christian =?iso-8859-1?Q?K=F6nig?= <christian.koenig@amd.com>, Roman Gushchin <roman.gushchin@linux.dev>, Shakeel Butt <shakeelb@google.com>, Muchun Song <muchun.song@linux.dev>, Andrew Morton <akpm@linux-foundation.org>, android-mm@google.com, jstultz@google.com, jeffv@google.com, cmllamas@google.com, linux-security-module@vger.kernel.org, selinux@vger.kernel.org, cgroups@vger.kernel.org, linux-doc@vger.kernel.org, linux-kernel@vger.kernel.org, linux-media@vger.kernel.org, dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org, linux-mm@kvack.org
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH v2 1/4] memcg: Track exported dma-buffers
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/BBYYADQY7NFJQPYXOADDDWU2BV3BHACS/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

On Mon 23-01-23 19:17:23, T.J. Mercier wrote:
> When a buffer is exported to userspace, use memcg to attribute the
> buffer to the allocating cgroup until all buffer references are
> released.

Is there any reason why this memory cannot be charged during the
allocation (__GFP_ACCOUNT used)?
Also you do charge and account the memory but underlying pages do not
know about their memcg (this is normally done with commit_charge for
user mapped pages). This would become a problem if the memory is
migrated for example. This also means that you have to maintain memcg
reference outside of the memcg proper which is not really nice either.
This mimicks tcp kmem limit implementation which I really have to say I
am not a great fan of and this pattern shouldn't be coppied.

Also you are not really saying anything about the oom behavior. With
this implementation the kernel will try to reclaim the memory and even
trigger the memcg oom killer if the request size is <= 8 pages. Is this
a desirable behavior?
-- 
Michal Hocko
SUSE Labs
_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org
