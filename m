Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id D8D7C66332F
	for <lists+linaro-mm-sig@lfdr.de>; Mon,  9 Jan 2023 22:38:25 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id CE4593F056
	for <lists+linaro-mm-sig@lfdr.de>; Mon,  9 Jan 2023 21:38:24 +0000 (UTC)
Received: from mail-pj1-f74.google.com (mail-pj1-f74.google.com [209.85.216.74])
	by lists.linaro.org (Postfix) with ESMTPS id DB6753E970
	for <linaro-mm-sig@lists.linaro.org>; Mon,  9 Jan 2023 21:38:20 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=google.com header.s=20210112 header.b=lp6mFgIF;
	spf=pass (lists.linaro.org: domain of 3S4m8YwkKDXQlbeWjUaWjYggYdW.UgedafSjg-ee-kaYdaklk.dafSjg.gjY@flex--tjmercier.bounces.google.com designates 209.85.216.74 as permitted sender) smtp.mailfrom=3S4m8YwkKDXQlbeWjUaWjYggYdW.UgedafSjg-ee-kaYdaklk.dafSjg.gjY@flex--tjmercier.bounces.google.com;
	dmarc=pass (policy=reject) header.from=google.com
Received: by mail-pj1-f74.google.com with SMTP id pl6-20020a17090b268600b0022722554e37so1264517pjb.1
        for <linaro-mm-sig@lists.linaro.org>; Mon, 09 Jan 2023 13:38:20 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=google.com; s=20210112;
        h=cc:to:from:subject:message-id:mime-version:date:from:to:cc:subject
         :date:message-id:reply-to;
        bh=g7XZ6zbY4DVhx/1OXdLF/gOX5xZT7N2TM5K+hmXQB+Q=;
        b=lp6mFgIFtl15wfLpEIICylaN7ba0rLKWyBcSmwWXHBIHGw2PfI8uc5JoYpz78iGrzt
         q7BwcvepUR121HS9evBvJZvukxIVfLEQnv4pKm0uyiAQHZ2lPiVMGwyZcSxUFbhaL90/
         ucKWwiEICRsvndQmUOtOCqlM9msyGSEUsXD5lwlIQfLeTtimxNUVh0grkxXS2J8ZCHmG
         Om+IZIdCATJX9OXIuWLzOFPLT1CV83yldN+eGwxCxvUZBerXOoxKxtFA5g5ttfCJSVS7
         8JY1ciKixBdA0fOe8xhy0huWzEPzI2dQz1uyE93OBKFPfOC0Iwt7BiU0pYO43R8uQXJv
         jjig==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=cc:to:from:subject:message-id:mime-version:date:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=g7XZ6zbY4DVhx/1OXdLF/gOX5xZT7N2TM5K+hmXQB+Q=;
        b=awsECpMAT8C4MlX1yUn7n+KYsRh6+THtUI41Qa7hqgBiKwgfgTfjbEncGplui77o1o
         jH48BTGvz4UeRO+ApiEgKAzeKtgK0b3vexioJWdkiSajuivqdycC5Nr42gseAhBCtwwJ
         4vozYxXFATT1g3NqzcmjBGOTFw69nU1euHqAyz409Wa/ZdI7URqwdN3qXPukUIGypNl4
         veSYwks3TkoFCIgNc78PtbEGo31TUvCP0Rj6146gmGO69sL6qr7Dg+yUkDakXOMMaPgn
         DSrBBJHMBm9Mk4tADfNw5OX4ZcsIrUq05RpL5S4bgQ15V1eginj+wAAwZaUIrMxZuBTl
         +clg==
X-Gm-Message-State: AFqh2koLTkuOtvdHkrar9BTh2oMi344xIx/aszj0FA4RRxkkVKDSJi+V
	ZPkkSzUyJR5yQ2187fBocctBuD9tKD0sncI=
X-Google-Smtp-Source: AMrXdXtQbTYSpTLTOjbwoiA82zlu8FrSWZKcx71vLDnaBfZa7QUA/oE7cdXqxYT9vkecD3g3+ea7/6F21U6cq64=
X-Received: from tj.c.googlers.com ([fda3:e722:ac3:cc00:20:ed76:c0a8:53a])
 (user=tjmercier job=sendgmr) by 2002:a05:6a00:1384:b0:56b:9ce2:891f with SMTP
 id t4-20020a056a00138400b0056b9ce2891fmr3675608pfg.43.1673300299885; Mon, 09
 Jan 2023 13:38:19 -0800 (PST)
Date: Mon,  9 Jan 2023 21:38:03 +0000
Mime-Version: 1.0
X-Mailer: git-send-email 2.39.0.314.g84b9a713c41-goog
Message-ID: <20230109213809.418135-1-tjmercier@google.com>
From: "T.J. Mercier" <tjmercier@google.com>
To: tjmercier@google.com, Tejun Heo <tj@kernel.org>, Zefan Li <lizefan.x@bytedance.com>,
	Johannes Weiner <hannes@cmpxchg.org>, Jonathan Corbet <corbet@lwn.net>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	"=?UTF-8?q?Arve=20Hj=C3=B8nnev=C3=A5g?=" <arve@android.com>, Todd Kjos <tkjos@android.com>, Martijn Coenen <maco@android.com>,
	Joel Fernandes <joel@joelfernandes.org>, Christian Brauner <brauner@kernel.org>,
	Carlos Llamas <cmllamas@google.com>, Suren Baghdasaryan <surenb@google.com>,
	Sumit Semwal <sumit.semwal@linaro.org>,
	"=?UTF-8?q?Christian=20K=C3=B6nig?=" <christian.koenig@amd.com>, Michal Hocko <mhocko@kernel.org>,
	Roman Gushchin <roman.gushchin@linux.dev>, Shakeel Butt <shakeelb@google.com>,
	Muchun Song <muchun.song@linux.dev>, Andrew Morton <akpm@linux-foundation.org>,
	Paul Moore <paul@paul-moore.com>, James Morris <jmorris@namei.org>,
	"Serge E. Hallyn" <serge@hallyn.com>, Stephen Smalley <stephen.smalley.work@gmail.com>,
	Eric Paris <eparis@parisplace.org>
X-Spamd-Result: default: False [-2.30 / 15.00];
	BAYES_HAM(-3.00)[100.00%];
	SUSPICIOUS_RECIPS(1.50)[];
	RCVD_DKIM_ARC_DNSWL_HI(-1.00)[];
	MID_CONTAINS_FROM(1.00)[];
	MV_CASE(0.50)[];
	RCVD_IN_DNSWL_HI(-0.50)[209.85.216.74:from];
	DMARC_POLICY_ALLOW(-0.50)[google.com,reject];
	FORGED_SENDER(0.30)[tjmercier@google.com,3S4m8YwkKDXQlbeWjUaWjYggYdW.UgedafSjg-ee-kaYdaklk.dafSjg.gjY@flex--tjmercier.bounces.google.com];
	R_DKIM_ALLOW(-0.20)[google.com:s=20210112];
	R_SPF_ALLOW(-0.20)[+ip4:209.85.128.0/17];
	MIME_GOOD(-0.10)[text/plain];
	RWL_MAILSPIKE_GOOD(-0.10)[209.85.216.74:from];
	ASN(0.00)[asn:15169, ipnet:209.85.128.0/17, country:US];
	DKIM_TRACE(0.00)[google.com:+];
	RCPT_COUNT_TWELVE(0.00)[37];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[mail-pj1-f74.google.com:rdns,mail-pj1-f74.google.com:helo];
	TO_DN_SOME(0.00)[];
	NEURAL_HAM(-0.00)[-0.998];
	FROM_NEQ_ENVFROM(0.00)[tjmercier@google.com,3S4m8YwkKDXQlbeWjUaWjYggYdW.UgedafSjg-ee-kaYdaklk.dafSjg.gjY@flex--tjmercier.bounces.google.com];
	FREEMAIL_TO(0.00)[google.com,kernel.org,bytedance.com,cmpxchg.org,lwn.net,linuxfoundation.org,android.com,joelfernandes.org,linaro.org,amd.com,linux.dev,linux-foundation.org,paul-moore.com,namei.org,hallyn.com,gmail.com,parisplace.org];
	TAGGED_RCPT(0.00)[];
	RCVD_COUNT_TWO(0.00)[2];
	PREVIOUSLY_DELIVERED(0.00)[linaro-mm-sig@lists.linaro.org];
	RCVD_TLS_LAST(0.00)[];
	FROM_HAS_DN(0.00)[];
	MIME_TRACE(0.00)[0:+];
	ARC_NA(0.00)[]
X-Rspamd-Action: no action
X-Rspamd-Server: lists.linaro.org
X-Rspamd-Queue-Id: DB6753E970
X-Spamd-Bar: --
Message-ID-Hash: JE2IB3273UCECPMEZUNGYJW33OITHA3U
X-Message-ID-Hash: JE2IB3273UCECPMEZUNGYJW33OITHA3U
X-MailFrom: 3S4m8YwkKDXQlbeWjUaWjYggYdW.UgedafSjg-ee-kaYdaklk.dafSjg.gjY@flex--tjmercier.bounces.google.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: android-mm@google.com, jstultz@google.com, cgroups@vger.kernel.org, linux-doc@vger.kernel.org, linux-kernel@vger.kernel.org, linux-media@vger.kernel.org, dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org, linux-mm@kvack.org, linux-security-module@vger.kernel.org, selinux@vger.kernel.org
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] [PATCH 0/4] Track exported dma-buffers with memcg
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/JE2IB3273UCECPMEZUNGYJW33OITHA3U/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

Based on discussions at LPC, this series adds a memory.stat counter for
exported dmabufs. This counter allows us to continue tracking
system-wide total exported buffer sizes which there is no longer any
way to get without DMABUF_SYSFS_STATS, and adds a new capability to
track per-cgroup exported buffer sizes. The total (root counter) is
helpful for accounting in-kernel dmabuf use (by comparing with the sum
of child nodes or with the sum of sizes of mapped buffers or FD
references in procfs) in addition to helping identify driver memory
leaks when in-kernel use continually increases over time. With
per-application cgroups, the per-cgroup counter allows us to quickly
see how much dma-buf memory an application has caused to be allocated.
This avoids the need to read through all of procfs which can be a
lengthy process, and causes the charge to "stick" to the allocating
process/cgroup as long as the buffer is alive, regardless of how the
buffer is shared (unless the charge is transferred).

The first patch adds the counter to memcg. The next two patches allow
the charge for a buffer to be transferred across cgroups which is
necessary because of the way most dmabufs are allocated from a central
process on Android. The fourth patch adds a SELinux hook to binder in
order to control who is allowed to transfer buffer charges.

[1] https://lore.kernel.org/all/20220617085702.4298-1-christian.koenig@amd.com/

Hridya Valsaraju (1):
  binder: Add flags to relinquish ownership of fds

T.J. Mercier (3):
  memcg: Track exported dma-buffers
  dmabuf: Add cgroup charge transfer function
  security: binder: Add transfer_charge SElinux hook

 Documentation/admin-guide/cgroup-v2.rst |  5 +++
 drivers/android/binder.c                | 36 +++++++++++++++--
 drivers/dma-buf/dma-buf.c               | 54 +++++++++++++++++++++++--
 include/linux/dma-buf.h                 |  5 +++
 include/linux/lsm_hook_defs.h           |  2 +
 include/linux/lsm_hooks.h               |  6 +++
 include/linux/memcontrol.h              |  7 ++++
 include/linux/security.h                |  2 +
 include/uapi/linux/android/binder.h     | 23 +++++++++--
 mm/memcontrol.c                         |  4 ++
 security/security.c                     |  6 +++
 security/selinux/hooks.c                |  9 +++++
 security/selinux/include/classmap.h     |  2 +-
 13 files changed, 149 insertions(+), 12 deletions(-)


base-commit: b7bfaa761d760e72a969d116517eaa12e404c262
-- 
2.39.0.314.g84b9a713c41-goog

_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org
