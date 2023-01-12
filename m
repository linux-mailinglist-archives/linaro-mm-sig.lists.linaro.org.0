Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id E1A66666C2C
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 12 Jan 2023 09:13:44 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id C43833F038
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 12 Jan 2023 08:13:43 +0000 (UTC)
Received: from mail-pl1-f202.google.com (mail-pl1-f202.google.com [209.85.214.202])
	by lists.linaro.org (Postfix) with ESMTPS id D47E33EA31
	for <linaro-mm-sig@lists.linaro.org>; Thu, 12 Jan 2023 08:13:40 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=google.com header.s=20210112 header.b=RGhd7Gam;
	spf=pass (lists.linaro.org: domain of 3M8G_YwgKDdgMB4E88F5AIIAF8.6IGFCH4LI-GG-MCAFCMNM.FCH4LI.ILA@flex--shakeelb.bounces.google.com designates 209.85.214.202 as permitted sender) smtp.mailfrom=3M8G_YwgKDdgMB4E88F5AIIAF8.6IGFCH4LI-GG-MCAFCMNM.FCH4LI.ILA@flex--shakeelb.bounces.google.com;
	dmarc=pass (policy=reject) header.from=google.com
Received: by mail-pl1-f202.google.com with SMTP id a12-20020a170902eccc00b001927f1d6316so12327217plh.10
        for <linaro-mm-sig@lists.linaro.org>; Thu, 12 Jan 2023 00:13:40 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=google.com; s=20210112;
        h=cc:to:from:subject:message-id:references:mime-version:in-reply-to
         :date:from:to:cc:subject:date:message-id:reply-to;
        bh=VWdRXf2+F3B6naWulQRoVncCtgT+T33N/C9h1MKyUek=;
        b=RGhd7Gam36sQbHlynE0qAtHIsyX4aCLddPEY2Ot/Dgnedc14Puqc+N15BF4HB1+p/F
         EyiFI8PkNHaolrVoe7QK5BM3CZp8vk6W4pTXG5t695yYCvf//btA1VGQaXM5Z9EWJrrS
         xLHhPHGK7LgyKGGfWBnGBtXkZ8Wr4/C7eaUCkaE01oIFkojxBDOH6PCPZu8BNx5Djp6V
         IfwRrmeF7rOuyASGIPSCTwqUXba95DqJIXmf+I/r32QKtPTm9Z4todzk318w55UFVqKx
         +j/E0vEN9DOhznh8mKC4jQPd/KfjI32B1A83D6ZGmdcx152TXiUUGw3Pro8wO5zpPEJ8
         n0bQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=cc:to:from:subject:message-id:references:mime-version:in-reply-to
         :date:x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=VWdRXf2+F3B6naWulQRoVncCtgT+T33N/C9h1MKyUek=;
        b=pIcHzs1/7wjgzriVJ9wVANCPP/6OLF/9C+3iMbl1fx9VonQ+Dipf1bm0k5PFWj8JGx
         vvuwgDCd/tdvzjForu1UENNZ/NeZr7M3XEjcxX3MRWwEbP7tWdG5vRIgNWb6RqzCR5+4
         qR3oJHy8cMTRL1Pu//6BwCQfmgQZzNWw9zlgHhu2AOJ7Pg+agJl7i/MRhTj4+QiGzLIM
         6s0P4+yEi41CuQMbyUhfbWpJkFNAzS+4TzBwPEVB5JQ4KWscYmqriGPgxMB2FNLun9EV
         /G31GiAlgC9niKE3vBuPIXKWQdJdzhjofDnOE8nodcSEyfzoSBOsM9lI245odn+t8L90
         u0iA==
X-Gm-Message-State: AFqh2kqRyDxmpAJqtnX1eBsdHFbTowuyzYHQOQeM52Jw+hpPlCCuqHV4
	ErYbNF8emBBLtLLWOVWWd+NyhKdxJu1Qjw==
X-Google-Smtp-Source: AMrXdXsnUERgCx1wBY/PUV43pyxeJkOgHSEhh4R8ej3lO942bcK1tz6HE+NyNfEUpzC5WGguaBo2zTGHvm8JZA==
X-Received: from shakeelb.c.googlers.com ([fda3:e722:ac3:cc00:7f:e700:c0a8:262e])
 (user=shakeelb job=sendgmr) by 2002:a05:6a00:1244:b0:56b:8181:fe3e with SMTP
 id u4-20020a056a00124400b0056b8181fe3emr5060573pfi.57.1673511219777; Thu, 12
 Jan 2023 00:13:39 -0800 (PST)
Date: Thu, 12 Jan 2023 08:13:37 +0000
In-Reply-To: <CABdmKX0TAv=iRz0s+F6dVVX=xsK00BeUPkRM4bnsfemDAY9U4w@mail.gmail.com>
Mime-Version: 1.0
References: <20230109213809.418135-1-tjmercier@google.com> <CALvZod4ru7F38tAO-gM9ZFKaEhS0w3KqFbPwhwcTvgJs4xMUow@mail.gmail.com>
 <Y78+rfzXPq5XGs9O@phenom.ffwll.local> <CABdmKX0TAv=iRz0s+F6dVVX=xsK00BeUPkRM4bnsfemDAY9U4w@mail.gmail.com>
Message-ID: <20230112081337.fxgnhdk44mxu26et@google.com>
From: Shakeel Butt <shakeelb@google.com>
To: "T.J. Mercier" <tjmercier@google.com>
Content-Type: text/plain; charset="us-ascii"
X-Spamd-Result: default: False [-5.80 / 15.00];
	REPLY(-4.00)[];
	BAYES_HAM(-3.00)[99.99%];
	SUSPICIOUS_RECIPS(1.50)[];
	DMARC_POLICY_ALLOW(-0.50)[google.com,reject];
	MV_CASE(0.50)[];
	FORGED_SENDER(0.30)[shakeelb@google.com,3M8G_YwgKDdgMB4E88F5AIIAF8.6IGFCH4LI-GG-MCAFCMNM.FCH4LI.ILA@flex--shakeelb.bounces.google.com];
	R_DKIM_ALLOW(-0.20)[google.com:s=20210112];
	R_SPF_ALLOW(-0.20)[+ip4:209.85.128.0/17];
	RWL_MAILSPIKE_GOOD(-0.10)[209.85.214.202:from];
	MIME_GOOD(-0.10)[text/plain];
	PREVIOUSLY_DELIVERED(0.00)[linaro-mm-sig@lists.linaro.org];
	TAGGED_RCPT(0.00)[];
	NEURAL_HAM(-0.00)[-0.984];
	RCPT_COUNT_TWELVE(0.00)[36];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	FREEMAIL_CC(0.00)[kernel.org,bytedance.com,cmpxchg.org,lwn.net,linuxfoundation.org,android.com,joelfernandes.org,google.com,linaro.org,amd.com,linux.dev,linux-foundation.org,paul-moore.com,namei.org,hallyn.com,gmail.com,parisplace.org,vger.kernel.org,lists.freedesktop.org,lists.linaro.org,kvack.org,ffwll.ch];
	FROM_HAS_DN(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_COUNT_TWO(0.00)[2];
	MIME_TRACE(0.00)[0:+];
	DKIM_TRACE(0.00)[google.com:+];
	ARC_NA(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[shakeelb@google.com,3M8G_YwgKDdgMB4E88F5AIIAF8.6IGFCH4LI-GG-MCAFCMNM.FCH4LI.ILA@flex--shakeelb.bounces.google.com];
	ASN(0.00)[asn:15169, ipnet:209.85.128.0/17, country:US];
	TO_DN_SOME(0.00)[]
X-Rspamd-Action: no action
X-Rspamd-Server: lists.linaro.org
X-Rspamd-Queue-Id: D47E33EA31
X-Spamd-Bar: -----
Message-ID-Hash: RDGTOWOTYMU73VJFA2ZS347GDPWZ2J6L
X-Message-ID-Hash: RDGTOWOTYMU73VJFA2ZS347GDPWZ2J6L
X-MailFrom: 3M8G_YwgKDdgMB4E88F5AIIAF8.6IGFCH4LI-GG-MCAFCMNM.FCH4LI.ILA@flex--shakeelb.bounces.google.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: Tejun Heo <tj@kernel.org>, Zefan Li <lizefan.x@bytedance.com>, Johannes Weiner <hannes@cmpxchg.org>, Jonathan Corbet <corbet@lwn.net>, Greg Kroah-Hartman <gregkh@linuxfoundation.org>, Arve =?utf-8?B?SGrDuG5uZXbDpWc=?= <arve@android.com>, Todd Kjos <tkjos@android.com>, Martijn Coenen <maco@android.com>, Joel Fernandes <joel@joelfernandes.org>, Christian Brauner <brauner@kernel.org>, Carlos Llamas <cmllamas@google.com>, Suren Baghdasaryan <surenb@google.com>, Sumit Semwal <sumit.semwal@linaro.org>, Christian =?utf-8?B?S8O2bmln?= <christian.koenig@amd.com>, Michal Hocko <mhocko@kernel.org>, Roman Gushchin <roman.gushchin@linux.dev>, Muchun Song <muchun.song@linux.dev>, Andrew Morton <akpm@linux-foundation.org>, Paul Moore <paul@paul-moore.com>, James Morris <jmorris@namei.org>, "Serge E. Hallyn" <serge@hallyn.com>, Stephen Smalley <stephen.smalley.work@gmail.com>, Eric Paris <eparis@parisplace.org>, android-mm@google.com, jstultz@google.com, cgroups@vger.kernel.org, linux-doc@vger.k
 ernel.org, linux-kernel@vger.kernel.org, linux-media@vger.kernel.org, dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org, linux-mm@kvack.org, linux-security-module@vger.kernel.org, selinux@vger.kernel.org
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH 0/4] Track exported dma-buffers with memcg
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/RDGTOWOTYMU73VJFA2ZS347GDPWZ2J6L/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Transfer-Encoding: 7bit

On Wed, Jan 11, 2023 at 04:49:36PM -0800, T.J. Mercier wrote:
> 
[...]
> > The problem is a bit that with gpu allocations reclaim is essentially "we
> > pass the error to userspace and they get to sort the mess out". There are
> > some exceptions (some gpu drivers to have shrinkers) would we need to make
> > sure these shrinkers are tied into the cgroup stuff before we could enable
> > charging for them?
> >
> I'm also not sure that we can depend on the dmabuf being backed at
> export time 100% of the time? (They are for dmabuf heaps.) If not,
> that'd make calling the existing memcg folio based functions a bit
> difficult.
> 

Where does the actual memory get allocated? I see the first patch is
updating the stat in dma_buf_export() and dma_buf_release(). Does the
memory get allocated and freed in those code paths?
_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org
