Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 2504C678600
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 23 Jan 2023 20:18:07 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id D85BB3EE47
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 23 Jan 2023 19:18:05 +0000 (UTC)
Received: from mail-yb1-f201.google.com (mail-yb1-f201.google.com [209.85.219.201])
	by lists.linaro.org (Postfix) with ESMTPS id 8D7923EB7D
	for <linaro-mm-sig@lists.linaro.org>; Mon, 23 Jan 2023 19:17:50 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=google.com header.s=20210112 header.b=btfBgj1o;
	spf=pass (lists.linaro.org: domain of 3Xt3OYwkKDXkqgjboZfbodlldib.ZljifkXol-jj-pfdifpqp.ifkXol.lod@flex--tjmercier.bounces.google.com designates 209.85.219.201 as permitted sender) smtp.mailfrom=3Xt3OYwkKDXkqgjboZfbodlldib.ZljifkXol-jj-pfdifpqp.ifkXol.lod@flex--tjmercier.bounces.google.com;
	dmarc=pass (policy=reject) header.from=google.com
Received: by mail-yb1-f201.google.com with SMTP id y66-20020a253245000000b007cb4f1e3e57so13991070yby.8
        for <linaro-mm-sig@lists.linaro.org>; Mon, 23 Jan 2023 11:17:50 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=google.com; s=20210112;
        h=cc:to:from:subject:message-id:mime-version:date:from:to:cc:subject
         :date:message-id:reply-to;
        bh=N+YvoWM7hVZLP7f3mNekEgTLNrfGSz/VUTj8ZELQtN0=;
        b=btfBgj1oagL/EjdEgeCa/LpL00/84F14njHYxfZbVx8eK5EnmK1Ttj9sO31U4EmSM8
         1MznIrLgPijCnSyvvb8XtI6YXLZ78NHWa/H/mNm31bw5LcdVJksSSGGO2dzPHlgU3buz
         /p9eEQbQt8x8MWRR7X+Ry+0Y58RX018tAsy1ZXD0QRf9P7CPtLAoftSzjvCACGDXGEgM
         o15+ngRvubcFDwfKC4626oWwr6aoB3/30CZULYiYPJpCKGXHpUDBYU1vHVotztxTUlup
         U435Wlbrn0vhCQELYo1hK06QeiCc3qfIoJ83+mV0bqqYDPZ4ySJ6H5OvU4sUwT2bCQY8
         tDxg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=cc:to:from:subject:message-id:mime-version:date:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=N+YvoWM7hVZLP7f3mNekEgTLNrfGSz/VUTj8ZELQtN0=;
        b=rp6LzF+zGrqBqmPSzU8lMLvf9Q2emsyVDp+DiTB4lRvOAgO1ezSPAwV53+b0xdTa0i
         /7FYVBkNwoeCOMyMxBmS8Du+rKXVaxn1tujQf1epYsf+w22h64wAxbs1iuFOM/YaKeuW
         4e7xCbZgq8pbSFLYcvPAz982imyb3S5ZEsjaYcrwG0s6cZ/Tli1uelGp/0pD7eMqnhRp
         MV7ZKhTA3shkqzVRgfvqykehH5n/CwbaAWxk4oRdiN62RIKS1wWt6uM32k+AWwj9/sn4
         07zKVghRY2wxgSYx1iI5YwatmsSKL0CF8nGlboly8zB7u9oghax6sJTjlL2z9bVzni38
         YdBQ==
X-Gm-Message-State: AFqh2ko94IfDFy+TXHHTwHCU17bdoH9kDxw/GUBYXgIwBlOI3cwGG5VP
	+7hILFcvyK1kdGVmnLgSs3W6cmyfHfTlR+8=
X-Google-Smtp-Source: AMrXdXtnP/Gl6EBzYGNvoAMXHOPKf8g2vx7ry4RLQdGRDJzjzoV9sc3vvEsAv/i0LJexRseYywCPKePifcMKipA=
X-Received: from tj.c.googlers.com ([fda3:e722:ac3:cc00:20:ed76:c0a8:53a])
 (user=tjmercier job=sendgmr) by 2002:a25:bdca:0:b0:7ca:14e:be6d with SMTP id
 g10-20020a25bdca000000b007ca014ebe6dmr3007629ybk.415.1674501470074; Mon, 23
 Jan 2023 11:17:50 -0800 (PST)
Date: Mon, 23 Jan 2023 19:17:22 +0000
Mime-Version: 1.0
X-Mailer: git-send-email 2.39.0.246.g2a6d74b583-goog
Message-ID: <20230123191728.2928839-1-tjmercier@google.com>
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
X-Rspamd-Server: lists.linaro.org
X-Rspamd-Queue-Id: 8D7923EB7D
X-Spamd-Bar: /
X-Spamd-Result: default: False [-0.70 / 15.00];
	BAYES_HAM(-3.00)[100.00%];
	SUSPICIOUS_RECIPS(1.50)[];
	MID_CONTAINS_FROM(1.00)[];
	DMARC_POLICY_ALLOW(-0.50)[google.com,reject];
	MV_CASE(0.50)[];
	FORGED_SENDER(0.30)[tjmercier@google.com,3Xt3OYwkKDXkqgjboZfbodlldib.ZljifkXol-jj-pfdifpqp.ifkXol.lod@flex--tjmercier.bounces.google.com];
	R_SPF_ALLOW(-0.20)[+ip4:209.85.128.0/17];
	R_DKIM_ALLOW(-0.20)[google.com:s=20210112];
	MIME_GOOD(-0.10)[text/plain];
	FREEMAIL_TO(0.00)[google.com,kernel.org,bytedance.com,cmpxchg.org,lwn.net,linuxfoundation.org,android.com,joelfernandes.org,linaro.org,amd.com,linux.dev,linux-foundation.org,paul-moore.com,namei.org,hallyn.com,gmail.com,parisplace.org];
	RWL_MAILSPIKE_POSSIBLE(0.00)[209.85.219.201:from];
	RCVD_TLS_LAST(0.00)[];
	ASN(0.00)[asn:15169, ipnet:209.85.128.0/17, country:US];
	MIME_TRACE(0.00)[0:+];
	FROM_NEQ_ENVFROM(0.00)[tjmercier@google.com,3Xt3OYwkKDXkqgjboZfbodlldib.ZljifkXol-jj-pfdifpqp.ifkXol.lod@flex--tjmercier.bounces.google.com];
	NEURAL_HAM(-0.00)[-0.995];
	ARC_NA(0.00)[];
	DKIM_TRACE(0.00)[google.com:+];
	TO_DN_SOME(0.00)[];
	FROM_HAS_DN(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[38];
	TAGGED_RCPT(0.00)[];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	PREVIOUSLY_DELIVERED(0.00)[linaro-mm-sig@lists.linaro.org];
	RCVD_COUNT_TWO(0.00)[2]
X-Rspamd-Action: no action
Message-ID-Hash: LQT2SYWL4H6OUFIFXJGSTK6D2AA4VLQZ
X-Message-ID-Hash: LQT2SYWL4H6OUFIFXJGSTK6D2AA4VLQZ
X-MailFrom: 3Xt3OYwkKDXkqgjboZfbodlldib.ZljifkXol-jj-pfdifpqp.ifkXol.lod@flex--tjmercier.bounces.google.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: android-mm@google.com, jstultz@google.com, jeffv@google.com, linux-security-module@vger.kernel.org, selinux@vger.kernel.org, cgroups@vger.kernel.org, linux-doc@vger.kernel.org, linux-kernel@vger.kernel.org, linux-media@vger.kernel.org, dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org, linux-mm@kvack.org
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] [PATCH v2 0/4] Track exported dma-buffers with memcg
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/LQT2SYWL4H6OUFIFXJGSTK6D2AA4VLQZ/>
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
process on Android. The fourth patch adds the binder object flags to
the existing selinux_binder_transfer_file LSM hook and a SELinux
permission for charge transfers.

[1] https://lore.kernel.org/all/20220617085702.4298-1-christian.koenig@amd.com/

v2:
Actually charge memcg vs just mutate the stat counter per Shakeel Butt
and Michal Hocko. Shakeel pointed me at the skmem functions which
turned out to be very similar to how I was thinking the dmabuf tracking
should work. So I've added a pair of dmabuf functions that do
essentially the same thing, except conditionally implemented behind
CONFIG_MEMCG alongside the other charge/uncharge functions.

Drop security_binder_transfer_charge per Casey Schaufler and Paul Moore

Drop BINDER_FDA_FLAG_XFER_CHARGE (and fix commit message) per Carlos
Llamas

Don't expose is_dma_buf_file for use by binder per Hillf Danton

Call dma_buf_stats_teardown in dma_buf_export error handling

Rebase onto v6.2-rc5

Hridya Valsaraju (1):
  binder: Add flags to relinquish ownership of fds

T.J. Mercier (3):
  memcg: Track exported dma-buffers
  dmabuf: Add cgroup charge transfer function
  security: binder: Add binder object flags to
    selinux_binder_transfer_file

 Documentation/admin-guide/cgroup-v2.rst |  5 ++
 drivers/android/binder.c                | 27 ++++++++--
 drivers/dma-buf/dma-buf.c               | 69 +++++++++++++++++++++++++
 include/linux/dma-buf.h                 |  4 ++
 include/linux/lsm_hook_defs.h           |  2 +-
 include/linux/lsm_hooks.h               |  5 +-
 include/linux/memcontrol.h              | 43 +++++++++++++++
 include/linux/security.h                |  6 ++-
 include/uapi/linux/android/binder.h     | 19 +++++--
 mm/memcontrol.c                         | 19 +++++++
 security/security.c                     |  4 +-
 security/selinux/hooks.c                | 13 ++++-
 security/selinux/include/classmap.h     |  2 +-
 13 files changed, 201 insertions(+), 17 deletions(-)


base-commit: 2241ab53cbb5cdb08a6b2d4688feb13971058f65
-- 
2.39.0.246.g2a6d74b583-goog

_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org
