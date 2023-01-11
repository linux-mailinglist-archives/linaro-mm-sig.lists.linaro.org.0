Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 1DB33666688
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 11 Jan 2023 23:56:54 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 054CE3F03C
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 11 Jan 2023 22:56:53 +0000 (UTC)
Received: from mail-ed1-f46.google.com (mail-ed1-f46.google.com [209.85.208.46])
	by lists.linaro.org (Postfix) with ESMTPS id EB1DF3EBC6
	for <linaro-mm-sig@lists.linaro.org>; Wed, 11 Jan 2023 22:56:49 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=ffwll.ch header.s=google header.b=Xhqr3JG2;
	spf=none (lists.linaro.org: domain of daniel@ffwll.ch has no SPF policy when checking 209.85.208.46) smtp.mailfrom=daniel@ffwll.ch;
	dmarc=none
Received: by mail-ed1-f46.google.com with SMTP id v6so24493185edd.6
        for <linaro-mm-sig@lists.linaro.org>; Wed, 11 Jan 2023 14:56:49 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ffwll.ch; s=google;
        h=in-reply-to:content-disposition:mime-version:references
         :mail-followup-to:message-id:subject:cc:to:from:date:from:to:cc
         :subject:date:message-id:reply-to;
        bh=fYVYmrm8qRKhdfjNxir61IMwTDz9ljMKT2wwPAIP+WQ=;
        b=Xhqr3JG2Kex0yJQiWOcc0PM+7tyhQNxjCcJ7T8wz62d+5YQPT9Rtd4nC10zyoXLoMT
         4/vmihyklfSrZDCiyctpeidBCrvuTcUZqgtWDQJyCNaXgm6+tkBSAvDANuhYpWOmJyom
         dC+q84M7rFuFBjEUHK9o1KYkMoO2Zcisjc0WI=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=in-reply-to:content-disposition:mime-version:references
         :mail-followup-to:message-id:subject:cc:to:from:date
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=fYVYmrm8qRKhdfjNxir61IMwTDz9ljMKT2wwPAIP+WQ=;
        b=Xh3AiSLfYtBEeKhjcCtH3E5mFNuhP7D7pB+3gmv7ojEoS/TFukgZ++XswhbUVkn5J1
         gNWEE6mKNqxlU1IZzzr4c3XIc88ppsnQIUYfwb7wGirOj3yAZq5Mq4J8Rdi9OVid8x39
         7sX0FGwdc+bz64zvbpy8isgLqcVrYxKJQ9M2dBM19BiljNTP3ugMlT5t70qicYRNEHPg
         bGpmJkY92m4+qPw1lwbQuw4MoIliObSCY8iIZekwcnnlXn8I4EAvfnLI/7+qpJNwXZYG
         aKmsOTbuZ2ckzrBv4QLguUgedB+QvZh8kIEn94sFTETpO2xtL/odV5Gi83zjrZAkMEoJ
         xzkg==
X-Gm-Message-State: AFqh2koH5+7qidyuSMSKmW21Ihm3RrmvwzI5B5GE08UCb6IsIq7YFOmn
	3OECUJ+k0hlI8up+Gidtldp3YQ==
X-Google-Smtp-Source: AMrXdXvtJyhkyJcdGojea7328ZHYfQqEgGWt5WiLp900ZLPEIaZSTCU8Uhtlcr1KkDcOMzby5I7CqA==
X-Received: by 2002:a05:6402:48c:b0:483:d49f:e26c with SMTP id k12-20020a056402048c00b00483d49fe26cmr54924068edv.15.1673477808940;
        Wed, 11 Jan 2023 14:56:48 -0800 (PST)
Received: from phenom.ffwll.local ([2a02:168:57f4:0:efd0:b9e5:5ae6:c2fa])
        by smtp.gmail.com with ESMTPSA id a3-20020aa7cf03000000b0049019b48373sm6549362edy.85.2023.01.11.14.56.47
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 11 Jan 2023 14:56:48 -0800 (PST)
Date: Wed, 11 Jan 2023 23:56:45 +0100
From: Daniel Vetter <daniel@ffwll.ch>
To: Shakeel Butt <shakeelb@google.com>
Message-ID: <Y78+rfzXPq5XGs9O@phenom.ffwll.local>
Mail-Followup-To: Shakeel Butt <shakeelb@google.com>,
	"T.J. Mercier" <tjmercier@google.com>, Tejun Heo <tj@kernel.org>,
	Zefan Li <lizefan.x@bytedance.com>,
	Johannes Weiner <hannes@cmpxchg.org>,
	Jonathan Corbet <corbet@lwn.net>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	Arve =?iso-8859-1?B?SGr4bm5lduVn?= <arve@android.com>,
	Todd Kjos <tkjos@android.com>, Martijn Coenen <maco@android.com>,
	Joel Fernandes <joel@joelfernandes.org>,
	Christian Brauner <brauner@kernel.org>,
	Carlos Llamas <cmllamas@google.com>,
	Suren Baghdasaryan <surenb@google.com>,
	Sumit Semwal <sumit.semwal@linaro.org>,
	Christian =?iso-8859-1?Q?K=F6nig?= <christian.koenig@amd.com>,
	Michal Hocko <mhocko@kernel.org>,
	Roman Gushchin <roman.gushchin@linux.dev>,
	Muchun Song <muchun.song@linux.dev>,
	Andrew Morton <akpm@linux-foundation.org>,
	Paul Moore <paul@paul-moore.com>, James Morris <jmorris@namei.org>,
	"Serge E. Hallyn" <serge@hallyn.com>,
	Stephen Smalley <stephen.smalley.work@gmail.com>,
	Eric Paris <eparis@parisplace.org>, android-mm@google.com,
	jstultz@google.com, cgroups@vger.kernel.org,
	linux-doc@vger.kernel.org, linux-kernel@vger.kernel.org,
	linux-media@vger.kernel.org, dri-devel@lists.freedesktop.org,
	linaro-mm-sig@lists.linaro.org, linux-mm@kvack.org,
	linux-security-module@vger.kernel.org, selinux@vger.kernel.org
References: <20230109213809.418135-1-tjmercier@google.com>
 <CALvZod4ru7F38tAO-gM9ZFKaEhS0w3KqFbPwhwcTvgJs4xMUow@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CALvZod4ru7F38tAO-gM9ZFKaEhS0w3KqFbPwhwcTvgJs4xMUow@mail.gmail.com>
X-Operating-System: Linux phenom 5.19.0-2-amd64 
X-Spamd-Result: default: False [-7.30 / 15.00];
	REPLY(-4.00)[];
	BAYES_HAM(-3.00)[100.00%];
	SUSPICIOUS_RECIPS(1.50)[];
	RCVD_DKIM_ARC_DNSWL_HI(-1.00)[];
	RCVD_IN_DNSWL_HI(-0.50)[2a02:168:57f4:0:efd0:b9e5:5ae6:c2fa:received];
	R_DKIM_ALLOW(-0.20)[ffwll.ch:s=google];
	MIME_GOOD(-0.10)[text/plain];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[37];
	RCVD_IN_DNSWL_NONE(0.00)[209.85.208.46:from];
	DBL_BLOCKED_OPENRESOLVER(0.00)[mail-ed1-f46.google.com:rdns,mail-ed1-f46.google.com:helo];
	RWL_MAILSPIKE_POSSIBLE(0.00)[209.85.208.46:from];
	DMARC_NA(0.00)[ffwll.ch];
	NEURAL_HAM(-0.00)[-1.000];
	R_SPF_NA(0.00)[no SPF record];
	PREVIOUSLY_DELIVERED(0.00)[linaro-mm-sig@lists.linaro.org];
	FROM_HAS_DN(0.00)[];
	FREEMAIL_CC(0.00)[google.com,kernel.org,bytedance.com,cmpxchg.org,lwn.net,linuxfoundation.org,android.com,joelfernandes.org,linaro.org,amd.com,linux.dev,linux-foundation.org,paul-moore.com,namei.org,hallyn.com,gmail.com,parisplace.org,ffwll.ch,vger.kernel.org,lists.freedesktop.org,lists.linaro.org,kvack.org];
	DKIM_TRACE(0.00)[ffwll.ch:+];
	RCVD_COUNT_THREE(0.00)[3];
	TO_DN_SOME(0.00)[];
	TAGGED_RCPT(0.00)[];
	FROM_EQ_ENVFROM(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	ARC_NA(0.00)[];
	ASN(0.00)[asn:15169, ipnet:209.85.128.0/17, country:US];
	RCVD_VIA_SMTP_AUTH(0.00)[]
X-Rspamd-Action: no action
X-Rspamd-Server: lists.linaro.org
X-Rspamd-Queue-Id: EB1DF3EBC6
X-Spamd-Bar: -------
Message-ID-Hash: PDOXIG4EV7NLZXCPVNWF2D5AHOCNETZZ
X-Message-ID-Hash: PDOXIG4EV7NLZXCPVNWF2D5AHOCNETZZ
X-MailFrom: daniel@ffwll.ch
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: "T.J. Mercier" <tjmercier@google.com>, Tejun Heo <tj@kernel.org>, Zefan Li <lizefan.x@bytedance.com>, Johannes Weiner <hannes@cmpxchg.org>, Jonathan Corbet <corbet@lwn.net>, Greg Kroah-Hartman <gregkh@linuxfoundation.org>, Arve =?iso-8859-1?B?SGr4bm5lduVn?= <arve@android.com>, Todd Kjos <tkjos@android.com>, Martijn Coenen <maco@android.com>, Joel Fernandes <joel@joelfernandes.org>, Christian Brauner <brauner@kernel.org>, Carlos Llamas <cmllamas@google.com>, Suren Baghdasaryan <surenb@google.com>, Sumit Semwal <sumit.semwal@linaro.org>, Christian =?iso-8859-1?Q?K=F6nig?= <christian.koenig@amd.com>, Michal Hocko <mhocko@kernel.org>, Roman Gushchin <roman.gushchin@linux.dev>, Muchun Song <muchun.song@linux.dev>, Andrew Morton <akpm@linux-foundation.org>, Paul Moore <paul@paul-moore.com>, James Morris <jmorris@namei.org>, "Serge E. Hallyn" <serge@hallyn.com>, Stephen Smalley <stephen.smalley.work@gmail.com>, Eric Paris <eparis@parisplace.org>, android-mm@google.com, jstultz@google.co
 m, cgroups@vger.kernel.org, linux-doc@vger.kernel.org, linux-kernel@vger.kernel.org, linux-media@vger.kernel.org, dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org, linux-mm@kvack.org, linux-security-module@vger.kernel.org, selinux@vger.kernel.org
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH 0/4] Track exported dma-buffers with memcg
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/PDOXIG4EV7NLZXCPVNWF2D5AHOCNETZZ/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

On Mon, Jan 09, 2023 at 04:18:12PM -0800, Shakeel Butt wrote:
> Hi T.J.,
> 
> On Mon, Jan 9, 2023 at 1:38 PM T.J. Mercier <tjmercier@google.com> wrote:
> >
> > Based on discussions at LPC, this series adds a memory.stat counter for
> > exported dmabufs. This counter allows us to continue tracking
> > system-wide total exported buffer sizes which there is no longer any
> > way to get without DMABUF_SYSFS_STATS, and adds a new capability to
> > track per-cgroup exported buffer sizes. The total (root counter) is
> > helpful for accounting in-kernel dmabuf use (by comparing with the sum
> > of child nodes or with the sum of sizes of mapped buffers or FD
> > references in procfs) in addition to helping identify driver memory
> > leaks when in-kernel use continually increases over time. With
> > per-application cgroups, the per-cgroup counter allows us to quickly
> > see how much dma-buf memory an application has caused to be allocated.
> > This avoids the need to read through all of procfs which can be a
> > lengthy process, and causes the charge to "stick" to the allocating
> > process/cgroup as long as the buffer is alive, regardless of how the
> > buffer is shared (unless the charge is transferred).
> >
> > The first patch adds the counter to memcg. The next two patches allow
> > the charge for a buffer to be transferred across cgroups which is
> > necessary because of the way most dmabufs are allocated from a central
> > process on Android. The fourth patch adds a SELinux hook to binder in
> > order to control who is allowed to transfer buffer charges.
> >
> > [1] https://lore.kernel.org/all/20220617085702.4298-1-christian.koenig@amd.com/
> >
> 
> I am a bit confused by the term "charge" used in this patch series.
> From the patches, it seems like only a memcg stat is added and nothing
> is charged to the memcg.
> 
> This leads me to the question: Why add this stat in memcg if the
> underlying memory is not charged to the memcg and if we don't really
> want to limit the usage?
> 
> I see two ways forward:
> 
> 1. Instead of memcg, use bpf-rstat [1] infra to implement the
> per-cgroup stat for dmabuf. (You may need an additional hook for the
> stat transfer).
> 
> 2. Charge the actual memory to the memcg. Since the size of dmabuf is
> immutable across its lifetime, you will not need to do accounting at
> page level and instead use something similar to the network memory
> accounting interface/mechanism (or even more simple). However you
> would need to handle the reclaim, OOM and charge context and failure
> cases. However if you are not looking to limit the usage of dmabuf
> then this option is an overkill.

I think eventually, at least for other "account gpu stuff in cgroups" use
case we do want to actually charge the memory.

The problem is a bit that with gpu allocations reclaim is essentially "we
pass the error to userspace and they get to sort the mess out". There are
some exceptions (some gpu drivers to have shrinkers) would we need to make
sure these shrinkers are tied into the cgroup stuff before we could enable
charging for them?

Also note that at least from the gpu driver side this is all a huge
endeavour, so if we can split up the steps as much as possible (and get
something interim useable that doesn't break stuff ofc), that is
practically need to make headway here. TJ has been trying out various
approaches for quite some time now already :-/
-Daniel

> Please let me know if I misunderstood something.
> 
> [1] https://lore.kernel.org/all/20220824233117.1312810-1-haoluo@google.com/
> 
> thanks,
> Shakeel

-- 
Daniel Vetter
Software Engineer, Intel Corporation
http://blog.ffwll.ch
_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org
