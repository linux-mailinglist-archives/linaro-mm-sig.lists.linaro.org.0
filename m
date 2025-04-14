Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id D9AA6A88F88
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 15 Apr 2025 00:53:02 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id E29574593F
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 14 Apr 2025 22:53:01 +0000 (UTC)
Received: from mail-pj1-f73.google.com (mail-pj1-f73.google.com [209.85.216.73])
	by lists.linaro.org (Postfix) with ESMTPS id 30FEC443A1
	for <linaro-mm-sig@lists.linaro.org>; Mon, 14 Apr 2025 22:52:45 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=google.com header.s=20230601 header.b=WpmeeJOA;
	spf=pass (lists.linaro.org: domain of 3vJH9ZwkKDR0MCF7K5B7K9HH9E7.5HFEBG3KH-FF-LB9EBLML.EBG3KH.HK9@flex--tjmercier.bounces.google.com designates 209.85.216.73 as permitted sender) smtp.mailfrom=3vJH9ZwkKDR0MCF7K5B7K9HH9E7.5HFEBG3KH-FF-LB9EBLML.EBG3KH.HK9@flex--tjmercier.bounces.google.com;
	dmarc=pass (policy=reject) header.from=google.com
Received: by mail-pj1-f73.google.com with SMTP id 98e67ed59e1d1-3032ea03448so4489426a91.2
        for <linaro-mm-sig@lists.linaro.org>; Mon, 14 Apr 2025 15:52:45 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=google.com; s=20230601; t=1744671164; x=1745275964; darn=lists.linaro.org;
        h=cc:to:from:subject:message-id:mime-version:date:from:to:cc:subject
         :date:message-id:reply-to;
        bh=togwTMsUrCvDnQk9l1lLNxbmxkHmbN4j0HA8wPGqV8E=;
        b=WpmeeJOAbFhRMuasL/Xcox/k189mqJU1fqOlg+OFWxryoEI5daO/a8VN573RCfk7Sw
         ozA7FyBgS2Xtd+A0Cs84zSQzqIEi4PV6zD0+UbK3Av5zainBalByt4Wa7ecFKw7yDBxF
         813acUdRhBBv/NQKsk/SjtPyz5osCUstBzGGLPueLPga7uOk6djWvRsUJP56x+7wDUn+
         kI/00Mwa/6LGivHWf/mCEzqR2IJilPGwuW08Slx6MZYPghId5Mun29O9tXYD4xgUG9YY
         X7EZLOwnD8/P6OnP3VyElijQNduLm1lYRaHld/RL2J59ThbjYGWAbnAWeIS+2/dU3bAp
         olOQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1744671164; x=1745275964;
        h=cc:to:from:subject:message-id:mime-version:date:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=togwTMsUrCvDnQk9l1lLNxbmxkHmbN4j0HA8wPGqV8E=;
        b=hvJ0P5tSPUqj6FdjXUFFWfpBhUK/NT47kFMVcANAOPb84RTh+m1E6woUUexXMkKzML
         5FcJszcg5xb8J+v/HF28kBFYJTTj7+FMOaMu4LAozBiVSikNL98BYiC9cvIvB7hdN8yB
         k/cNuh7m8OwLl/yUt0jBnXo8eRS2EXu+lJMJ3rBNmKeTUC8e/Cp85b1dH+IizcaPkxZq
         EGVrrilU104NTy6ImtUCfzL2WjZx66De6W28uw7tEhk09fJCKyuDgyEJ5B2a7icVtO3V
         5ryixk7m74aiLQSY1e8MFMrzBGgZPkns8hEWnHLuGO9W1+mnhzhlv0ROePKKGwtn0mDf
         4Suw==
X-Forwarded-Encrypted: i=1; AJvYcCUqsfjAKwi7ysIF3cFzcA2jRa9S4+/GVhsszF/tpQfhC204D03Tsx2D9W9mFPw9Ua6BqApb9WKMSKkfxey0@lists.linaro.org
X-Gm-Message-State: AOJu0Yy8l8IHdDAPlhmljs41YoFNjDEdIpWqM7HAhpxaggLd89+FRMeF
	vNlki13IwDvBgfT23r7NkoWbafYV7RQrG+aTI4qZ0pKKNdXEzIjzQAHZdbTe+ik0fyx8IjTZku+
	z74E/Xjg0Vw7jCw==
X-Google-Smtp-Source: AGHT+IEVzbizS5bwIONCCb0BiftDU4fhMTk3w7cU8mlcfeirhwdZn8Tcrol5ikyaUqfRuPhfJrQ0elLNwB7pMag=
X-Received: from pjtq5.prod.google.com ([2002:a17:90a:c105:b0:305:2d68:2be6])
 (user=tjmercier job=prod-delivery.src-stubby-dispatcher) by
 2002:a17:90b:5242:b0:2fa:1a23:c01d with SMTP id 98e67ed59e1d1-3082367497dmr18231328a91.21.1744671164151;
 Mon, 14 Apr 2025 15:52:44 -0700 (PDT)
Date: Mon, 14 Apr 2025 22:52:23 +0000
Mime-Version: 1.0
X-Mailer: git-send-email 2.49.0.604.gff1f9ca942-goog
Message-ID: <20250414225227.3642618-1-tjmercier@google.com>
From: "T.J. Mercier" <tjmercier@google.com>
To: sumit.semwal@linaro.org, christian.koenig@amd.com, ast@kernel.org,
	daniel@iogearbox.net, andrii@kernel.org, martin.lau@linux.dev,
	skhan@linuxfoundation.org
X-Rspamd-Queue-Id: 30FEC443A1
X-Spamd-Bar: -
X-Spamd-Result: default: False [-1.80 / 15.00];
	BAYES_HAM(-3.00)[99.99%];
	SUSPICIOUS_RECIPS(1.50)[];
	MID_CONTAINS_FROM(1.00)[];
	RBL_SENDERSCORE_REPUT_9(-1.00)[209.85.216.73:from];
	DMARC_POLICY_ALLOW(-0.50)[google.com,reject];
	MV_CASE(0.50)[];
	FORGED_SENDER(0.30)[tjmercier@google.com,3vJH9ZwkKDR0MCF7K5B7K9HH9E7.5HFEBG3KH-FF-LB9EBLML.EBG3KH.HK9@flex--tjmercier.bounces.google.com];
	R_SPF_ALLOW(-0.20)[+ip4:209.85.128.0/17];
	R_DKIM_ALLOW(-0.20)[google.com:s=20230601];
	MIME_GOOD(-0.10)[text/plain];
	RWL_MAILSPIKE_GOOD(-0.10)[209.85.216.73:from];
	FREEMAIL_CC(0.00)[vger.kernel.org,lists.freedesktop.org,lists.linaro.org,google.com,ffwll.ch,lwn.net,gmail.com,kernel.org,linux.dev,fomichev.me,fb.com];
	MIME_TRACE(0.00)[0:+];
	ARC_NA(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	FROM_HAS_DN(0.00)[];
	RCVD_COUNT_ONE(0.00)[1];
	RCPT_COUNT_TWELVE(0.00)[26];
	DNSWL_BLOCKED(0.00)[209.85.216.73:from];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[tjmercier@google.com,3vJH9ZwkKDR0MCF7K5B7K9HH9E7.5HFEBG3KH-FF-LB9EBLML.EBG3KH.HK9@flex--tjmercier.bounces.google.com];
	DKIM_TRACE(0.00)[google.com:+];
	PREVIOUSLY_DELIVERED(0.00)[linaro-mm-sig@lists.linaro.org];
	DWL_DNSWL_BLOCKED(0.00)[google.com:dkim];
	NEURAL_HAM(-0.00)[-1.000];
	ASN(0.00)[asn:15169, ipnet:209.85.128.0/17, country:US];
	TAGGED_RCPT(0.00)[];
	TO_DN_SOME(0.00)[]
X-Rspamd-Action: no action
X-Rspamd-Server: lists.linaro.org
Message-ID-Hash: TY4LJT2UPCABDWTXJP6MHO2RRE2SFP24
X-Message-ID-Hash: TY4LJT2UPCABDWTXJP6MHO2RRE2SFP24
X-MailFrom: 3vJH9ZwkKDR0MCF7K5B7K9HH9E7.5HFEBG3KH-FF-LB9EBLML.EBG3KH.HK9@flex--tjmercier.bounces.google.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: linux-kernel@vger.kernel.org, linux-media@vger.kernel.org, dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org, linux-doc@vger.kernel.org, bpf@vger.kernel.org, linux-kselftest@vger.kernel.org, android-mm@google.com, simona@ffwll.ch, corbet@lwn.net, eddyz87@gmail.com, song@kernel.org, yonghong.song@linux.dev, john.fastabend@gmail.com, kpsingh@kernel.org, sdf@fomichev.me, jolsa@kernel.org, mykolal@fb.com, "T.J. Mercier" <tjmercier@google.com>
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] [PATCH 0/4] Replace CONFIG_DMABUF_SYSFS_STATS with BPF
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/TY4LJT2UPCABDWTXJP6MHO2RRE2SFP24/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

Until CONFIG_DMABUF_SYSFS_STATS was added [1] it was only possible to
perform per-buffer accounting with debugfs which is not suitable for
production environments. Eventually we discovered the overhead with
per-buffer sysfs file creation/removal was significantly impacting
allocation and free times, and exacerbated kernfs lock contention. [2]
dma_buf_stats_setup() is responsible for 39% of single-page buffer
creation duration, or 74% of single-page dma_buf_export() duration when
stressing dmabuf allocations and frees.

I prototyped a change from per-buffer to per-exporter statistics with a
RCU protected list of exporter allocations that accommodates most (but
not all) of our use-cases and avoids almost all of the sysfs overhead.
While that adds less overhead than per-buffer sysfs, and less even than
the maintenance of the dmabuf debugfs_list, it's still *additional*
overhead on top of the debugfs_list and doesn't give us per-buffer info.

This series uses the existing dmabuf debugfs_list to implement a BPF
dmabuf iterator, which adds no overhead to buffer allocation/free and
provides per-buffer info. While the kernel must have CONFIG_DEBUG_FS for
the dmabuf_iter to be available, debugfs does not need to be mounted.
The BPF program loaded by userspace that extracts per-buffer information
gets to define its own interface which avoids the lack of ABI stability
with debugfs (even if it were mounted).

As this is a replacement for our use of CONFIG_DMABUF_SYSFS_STATS, the
last patch is a RFC for removing it from the kernel. Please see my
suggestion there regarding the timeline for that.

[1] https://lore.kernel.org/linux-media/20201210044400.1080308-1-hridya@google.com/
[2] https://lore.kernel.org/all/20220516171315.2400578-1-tjmercier@google.com/

T.J. Mercier (4):
  dma-buf: Rename and expose debugfs symbols
  bpf: Add dmabuf iterator
  selftests/bpf: Add test for dmabuf_iter
  RFC: dma-buf: Remove DMA-BUF statistics

 .../ABI/testing/sysfs-kernel-dmabuf-buffers   |  24 ---
 Documentation/driver-api/dma-buf.rst          |   5 -
 drivers/dma-buf/Kconfig                       |  15 --
 drivers/dma-buf/Makefile                      |   1 -
 drivers/dma-buf/dma-buf-sysfs-stats.c         | 202 ------------------
 drivers/dma-buf/dma-buf-sysfs-stats.h         |  35 ---
 drivers/dma-buf/dma-buf.c                     |  40 +---
 include/linux/btf_ids.h                       |   1 +
 include/linux/dma-buf.h                       |   6 +
 kernel/bpf/Makefile                           |   3 +
 kernel/bpf/dmabuf_iter.c                      | 130 +++++++++++
 tools/testing/selftests/bpf/config            |   1 +
 .../selftests/bpf/prog_tests/dmabuf_iter.c    | 116 ++++++++++
 .../testing/selftests/bpf/progs/dmabuf_iter.c |  31 +++
 14 files changed, 299 insertions(+), 311 deletions(-)
 delete mode 100644 Documentation/ABI/testing/sysfs-kernel-dmabuf-buffers
 delete mode 100644 drivers/dma-buf/dma-buf-sysfs-stats.c
 delete mode 100644 drivers/dma-buf/dma-buf-sysfs-stats.h
 create mode 100644 kernel/bpf/dmabuf_iter.c
 create mode 100644 tools/testing/selftests/bpf/prog_tests/dmabuf_iter.c
 create mode 100644 tools/testing/selftests/bpf/progs/dmabuf_iter.c

-- 
2.49.0.604.gff1f9ca942-goog

_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org
