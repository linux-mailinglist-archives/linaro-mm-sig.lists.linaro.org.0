Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id E1ECC666F79
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 12 Jan 2023 11:25:45 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id D1FE53EF34
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 12 Jan 2023 10:25:44 +0000 (UTC)
Received: from smtp-out2.suse.de (smtp-out2.suse.de [195.135.220.29])
	by lists.linaro.org (Postfix) with ESMTPS id 768A93EA5E
	for <linaro-mm-sig@lists.linaro.org>; Thu, 12 Jan 2023 10:25:41 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=suse.com header.s=susede1 header.b=kXlRU9ud;
	spf=pass (lists.linaro.org: domain of mhocko@suse.com designates 195.135.220.29 as permitted sender) smtp.mailfrom=mhocko@suse.com;
	dmarc=pass (policy=quarantine) header.from=suse.com
Received: from imap2.suse-dmz.suse.de (imap2.suse-dmz.suse.de [192.168.254.74])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (P-521) server-digest SHA512)
	(No client certificate requested)
	by smtp-out2.suse.de (Postfix) with ESMTPS id 900FC3FB4E;
	Thu, 12 Jan 2023 10:25:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=suse.com; s=susede1;
	t=1673519138; h=from:from:reply-to:date:date:message-id:message-id:to:to:cc:cc:
	 mime-version:mime-version:content-type:content-type:
	 in-reply-to:in-reply-to:references:references;
	bh=RFRkZ+Fj3t8T5BZaiHz5NCYqROwzY9AM/nVOyatEKtk=;
	b=kXlRU9udXbFgZotDjntGowEBuvchX+T2tPOQt4l2B/QItP41pyuGf09UekzD58fu0LIxRc
	w76yu+pkH0Ua7YBS6uJ2rwWDxCoFeyaVSAeCGGeNdqLbR3tAQh+xq9uDiO7GTSj2Wj7bNn
	HineNr8vyQXh2nAR99gNAKtfqxMYBuI=
Received: from imap2.suse-dmz.suse.de (imap2.suse-dmz.suse.de [192.168.254.74])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (P-521) server-digest SHA512)
	(No client certificate requested)
	by imap2.suse-dmz.suse.de (Postfix) with ESMTPS id 6650E13585;
	Thu, 12 Jan 2023 10:25:38 +0000 (UTC)
Received: from dovecot-director2.suse.de ([192.168.254.65])
	by imap2.suse-dmz.suse.de with ESMTPSA
	id 9ozhGCLgv2PZJgAAMHmgww
	(envelope-from <mhocko@suse.com>); Thu, 12 Jan 2023 10:25:38 +0000
Date: Thu, 12 Jan 2023 11:25:37 +0100
From: Michal Hocko <mhocko@suse.com>
To: Shakeel Butt <shakeelb@google.com>
Message-ID: <Y7/gIRv9aJfPK7/f@dhcp22.suse.cz>
References: <20230109213809.418135-1-tjmercier@google.com>
 <CALvZod4ru7F38tAO-gM9ZFKaEhS0w3KqFbPwhwcTvgJs4xMUow@mail.gmail.com>
 <Y78+rfzXPq5XGs9O@phenom.ffwll.local>
 <20230112075631.wc6fd54ci55drhkp@google.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20230112075631.wc6fd54ci55drhkp@google.com>
X-Spamd-Result: default: False [-6.50 / 15.00];
	REPLY(-4.00)[];
	BAYES_HAM(-3.00)[99.99%];
	SUSPICIOUS_RECIPS(1.50)[];
	DMARC_POLICY_ALLOW(-0.50)[suse.com,quarantine];
	R_SPF_ALLOW(-0.20)[+a:smtp-out2.suse.de];
	R_DKIM_ALLOW(-0.20)[suse.com:s=susede1];
	MIME_GOOD(-0.10)[text/plain];
	FREEMAIL_CC(0.00)[google.com,kernel.org,bytedance.com,cmpxchg.org,lwn.net,linuxfoundation.org,android.com,joelfernandes.org,linaro.org,amd.com,linux.dev,linux-foundation.org,paul-moore.com,namei.org,hallyn.com,gmail.com,parisplace.org,vger.kernel.org,lists.freedesktop.org,lists.linaro.org,kvack.org];
	DBL_BLOCKED_OPENRESOLVER(0.00)[suse.com:dkim];
	ASN(0.00)[asn:29298, ipnet:195.135.220.0/23, country:DE];
	MIME_TRACE(0.00)[0:+];
	RCPT_COUNT_TWELVE(0.00)[35];
	NEURAL_HAM(-0.00)[-1.000];
	FROM_EQ_ENVFROM(0.00)[];
	RCVD_TLS_ALL(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	ARC_NA(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DKIM_TRACE(0.00)[suse.com:+];
	FROM_HAS_DN(0.00)[];
	TAGGED_RCPT(0.00)[];
	TO_DN_SOME(0.00)[];
	RBL_SPAMHAUS_BLOCKED_OPENRESOLVER(0.00)[195.135.220.29:from]
X-Rspamd-Action: no action
X-Rspamd-Server: lists.linaro.org
X-Rspamd-Queue-Id: 768A93EA5E
X-Spamd-Bar: ------
Message-ID-Hash: 45O42FGKFMPI2QCTJQDCEAWY36KPRKV4
X-Message-ID-Hash: 45O42FGKFMPI2QCTJQDCEAWY36KPRKV4
X-MailFrom: mhocko@suse.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: "T.J. Mercier" <tjmercier@google.com>, Tejun Heo <tj@kernel.org>, Zefan Li <lizefan.x@bytedance.com>, Johannes Weiner <hannes@cmpxchg.org>, Jonathan Corbet <corbet@lwn.net>, Greg Kroah-Hartman <gregkh@linuxfoundation.org>, Arve =?iso-8859-1?B?SGr4bm5lduVn?= <arve@android.com>, Todd Kjos <tkjos@android.com>, Martijn Coenen <maco@android.com>, Joel Fernandes <joel@joelfernandes.org>, Christian Brauner <brauner@kernel.org>, Carlos Llamas <cmllamas@google.com>, Suren Baghdasaryan <surenb@google.com>, Sumit Semwal <sumit.semwal@linaro.org>, Christian =?iso-8859-1?Q?K=F6nig?= <christian.koenig@amd.com>, Roman Gushchin <roman.gushchin@linux.dev>, Muchun Song <muchun.song@linux.dev>, Andrew Morton <akpm@linux-foundation.org>, Paul Moore <paul@paul-moore.com>, James Morris <jmorris@namei.org>, "Serge E. Hallyn" <serge@hallyn.com>, Stephen Smalley <stephen.smalley.work@gmail.com>, Eric Paris <eparis@parisplace.org>, android-mm@google.com, jstultz@google.com, cgroups@vger.kernel.org, linux-
 doc@vger.kernel.org, linux-kernel@vger.kernel.org, linux-media@vger.kernel.org, dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org, linux-mm@kvack.org, linux-security-module@vger.kernel.org, selinux@vger.kernel.org
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH 0/4] Track exported dma-buffers with memcg
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/45O42FGKFMPI2QCTJQDCEAWY36KPRKV4/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

On Thu 12-01-23 07:56:31, Shakeel Butt wrote:
> On Wed, Jan 11, 2023 at 11:56:45PM +0100, Daniel Vetter wrote:
> > 
> [...]
> > I think eventually, at least for other "account gpu stuff in cgroups" use
> > case we do want to actually charge the memory.
> > 
> > The problem is a bit that with gpu allocations reclaim is essentially "we
> > pass the error to userspace and they get to sort the mess out". There are
> > some exceptions (some gpu drivers to have shrinkers) would we need to make
> > sure these shrinkers are tied into the cgroup stuff before we could enable
> > charging for them?
> > 
> 
> No, there is no requirement to have shrinkers or making such memory
> reclaimable before charging it. Though existing shrinkers and the
> possible future shrinkers would need to be converted into memcg aware
> shrinkers.
> 
> Though there will be a need to update user expectations that if they 
> use memcgs with hard limits, they may start seeing memcg OOMs after the
> charging of dmabuf.

Agreed. This wouldn't be the first in kernel memory charged memory that
is not directly reclaimable. With a dedicated counter an excessive
dmabuf usage would be visible in the oom report because we do print
memcg stats.

It is definitely preferable to have a shrinker mechanism but if that is
to be done in a follow up step then this is acceptable. But leaving out
charging from early on sounds like a bad choice to me.
-- 
Michal Hocko
SUSE Labs
_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org
