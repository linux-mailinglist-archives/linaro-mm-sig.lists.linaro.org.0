Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id qL7/B74S4WnoogAAu9opvQ
	(envelope-from <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>)
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 16 Apr 2026 18:47:58 +0200
X-Original-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [44.210.186.118])
	by mail.lfdr.de (Postfix) with ESMTPS id DA3AA411F8C
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 16 Apr 2026 18:47:57 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id E66253F807
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 16 Apr 2026 16:47:56 +0000 (UTC)
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.129.124])
	by lists.linaro.org (Postfix) with ESMTPS id 227AC402B1
	for <linaro-mm-sig@lists.linaro.org>; Wed, 18 Feb 2026 17:15:05 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=redhat.com header.s=mimecast20190719 header.b=IUYGgHHC;
	spf=pass (lists.linaro.org: domain of echanude@redhat.com designates 170.10.129.124 as permitted sender) smtp.mailfrom=echanude@redhat.com;
	dmarc=pass (policy=quarantine) header.from=redhat.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1771434904;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=42FtUK8DRzgqq7HgnylfgEXKEQfWmOW3Tw8CmlqQgJI=;
	b=IUYGgHHCy36LGtPIudFHAmrLD5P/hAFxd0EXCCklHj7xF80ceN6eobU5zsoBd96uBJZvqL
	LArhMJHbz4g3SJf1VIripW36Ju/vSLQGl5k3ZLSxdWOLX6SsC6slDl3vwTx5cVtVEbu+0R
	T/HBjaZbtyiwSKTvT6U87cXSLi0j5M4=
Received: from mail-qk1-f199.google.com (mail-qk1-f199.google.com
 [209.85.222.199]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-41-UcTF_UF3MUWFtsKsiSAg_A-1; Wed, 18 Feb 2026 12:15:03 -0500
X-MC-Unique: UcTF_UF3MUWFtsKsiSAg_A-1
X-Mimecast-MFC-AGG-ID: UcTF_UF3MUWFtsKsiSAg_A_1771434903
Received: by mail-qk1-f199.google.com with SMTP id af79cd13be357-8c70e610242so14655285a.2
        for <linaro-mm-sig@lists.linaro.org>; Wed, 18 Feb 2026 09:15:03 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1771434903; x=1772039703;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=42FtUK8DRzgqq7HgnylfgEXKEQfWmOW3Tw8CmlqQgJI=;
        b=NUq0dinTyhhnGcjaGX/Q85euSE6CQTio8zXD8yMwP+sOXl3Y/1Aod2xm0rHNFoiNoi
         Vxz4kl4FNV+EtgpLluJa8Jb/EcReqOplHc2OqxcHYw3OE5ezF/pGe6AfKdrsdGly5rUT
         Q8okRE6+eX0uCNoKscQ0hCFaDKHT+qhR/q1gl2TBqQHmsgb98y7Y+RFsGhaQd2kjOpEy
         f5IK/Dn+PLkczAhMKzaocQ5gB3JMAPxeMEhcrRMOvmRVXc8e4HH+ZAL3sjoOdJhX0NGn
         ro24T6Vb6U3TRBi8qE3VhiZqEbdQV/Ag2rsiQTJXfp1vzYW/MuR5TuLo53THgDiEOZOU
         pDLA==
X-Forwarded-Encrypted: i=1; AJvYcCXIHnZQLND26Eg+cn7HtjJso4/6LmWnZj4AkbTdzoFKhZj0rgrWaji4m7mNgNlU8DBdRzXXy/SncEmE9txY@lists.linaro.org
X-Gm-Message-State: AOJu0YzcVOfcFYt0C4q6AirHilaPA+IXj5oshaNZtS5K1njSRWJZakJq
	DnqY/we0EefZpDNoUFDAVz9W/L5XajiIYk1rpHq3WJbp7sp4s6gYZa4sgtWzBVTEd8zVvfYCfLE
	vlISMismLp0+82JAFK1CqBfbF6KQj5lN1QjXodWGSJ5sAzsVQKiYBuUnzkSEa09LMMsjE
X-Gm-Gg: AZuq6aIBzg7HDsKMKZI3PgbNKgiVl2ihfJkFV0XJJt5J0fbEnoM66Fq06Dccy32UWKb
	phRUXsm8XHvd9H/kVpEfLaUkMW5JzT/F7izs1Rl7b26HfPmK7rilAoQNQALykeG1hAkwkfg1Cs1
	XCwh/UNPhcKOrBOV3zNqjEkkq7qa/rTe60iXGuOnxGGQN+kQu2Y6tY534g0+ZsV8aDDmcFjUwU1
	DDM6d5Zet1Poi8Nc8rjrg2cyKjBo9SxV6Am9IN4fuBEpXLrb287hrWEiUcc2+n65XevGQ4mdx6p
	wdWq0ObrsuY7XVnVrS35u8G8TYWRG44GHZgZal/XfoUmXiQYwAMt2n8DToUrESsP7c1FWjwMViD
	WGmW6NVClhg/LbH59HO3ShUdTuftuINCUx3a6YUzhlm2i/TFphA7h/PoUWMcFuIM=
X-Received: by 2002:a05:620a:294b:b0:8ca:2cf9:819c with SMTP id af79cd13be357-8cb423c2500mr1979540485a.40.1771434902629;
        Wed, 18 Feb 2026 09:15:02 -0800 (PST)
X-Received: by 2002:a05:620a:294b:b0:8ca:2cf9:819c with SMTP id af79cd13be357-8cb423c2500mr1979531285a.40.1771434901901;
        Wed, 18 Feb 2026 09:15:01 -0800 (PST)
Received: from localhost (pool-100-17-19-56.bstnma.fios.verizon.net. [100.17.19.56])
        by smtp.gmail.com with ESMTPSA id af79cd13be357-8cb3a3e9adesm1523117985a.49.2026.02.18.09.14.59
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 18 Feb 2026 09:15:00 -0800 (PST)
From: Eric Chanudet <echanude@redhat.com>
Date: Wed, 18 Feb 2026 12:14:11 -0500
MIME-Version: 1.0
Message-Id: <20260218-dmabuf-heap-cma-dmem-v2-2-b249886fb7b2@redhat.com>
References: <20260218-dmabuf-heap-cma-dmem-v2-0-b249886fb7b2@redhat.com>
In-Reply-To: <20260218-dmabuf-heap-cma-dmem-v2-0-b249886fb7b2@redhat.com>
To: Sumit Semwal <sumit.semwal@linaro.org>,
 Benjamin Gaignard <benjamin.gaignard@collabora.com>,
 Brian Starkey <Brian.Starkey@arm.com>, John Stultz <jstultz@google.com>,
 "T.J. Mercier" <tjmercier@google.com>,
 =?utf-8?q?Christian_K=C3=B6nig?= <christian.koenig@amd.com>,
 Andrew Morton <akpm@linux-foundation.org>,
 David Hildenbrand <david@kernel.org>,
 Lorenzo Stoakes <lorenzo.stoakes@oracle.com>,
 "Liam R. Howlett" <Liam.Howlett@oracle.com>,
 Vlastimil Babka <vbabka@suse.cz>, Mike Rapoport <rppt@kernel.org>,
 Suren Baghdasaryan <surenb@google.com>, Michal Hocko <mhocko@suse.com>
X-Mailer: b4 0.14.2
X-Mimecast-Spam-Score: 0
X-Mimecast-MFC-PROC-ID: n9nS3kjk54JmRd0v5o2C2bnbM_c_vprom83oTCplzi0_1771434903
X-Mimecast-Originator: redhat.com
X-Spamd-Bar: ----
X-MailFrom: echanude@redhat.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
Message-ID-Hash: 5SXG4YKJFRYCES4GA3HACT6QTP24OK62
X-Message-ID-Hash: 5SXG4YKJFRYCES4GA3HACT6QTP24OK62
X-Mailman-Approved-At: Thu, 16 Apr 2026 16:40:31 +0000
CC: linux-media@vger.kernel.org, dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org, linux-kernel@vger.kernel.org, Maxime Ripard <mripard@redhat.com>, Albert Esteve <aesteve@redhat.com>, linux-mm@kvack.org, Eric Chanudet <echanude@redhat.com>, Maxime Ripard <mripard@kernel.org>
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] [PATCH v2 2/3] cma: Provide accessor to cma dmem region
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/5SXG4YKJFRYCES4GA3HACT6QTP24OK62/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
X-Spamd-Result: default: False [2.99 / 15.00];
	DMARC_POLICY_QUARANTINE(1.50)[redhat.com : SPF not aligned (relaxed),quarantine];
	R_DKIM_REJECT(1.00)[redhat.com:s=mimecast20190719];
	DATE_IN_PAST(1.00)[1367];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+mx:c];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_FROM(0.00)[lists,linaro-mm-sig=lfdr.de];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	ARC_NA(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[23];
	MIME_TRACE(0.00)[0:+];
	DKIM_TRACE(0.00)[redhat.com:-];
	ASN(0.00)[asn:14618, ipnet:44.192.0.0/11, country:US];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	FROM_NEQ_ENVFROM(0.00)[echanude@redhat.com,linaro-mm-sig-bounces@lists.linaro.org];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-0.901];
	TAGGED_RCPT(0.00)[linaro-mm-sig];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[linaro.org:email,lists.linaro.org:helo,lists.linaro.org:rdns]
X-Rspamd-Queue-Id: DA3AA411F8C
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

From: Maxime Ripard <mripard@kernel.org>

Consumers of the CMA API will have to know which CMA region their device
allocate from in order for them to charge the memory allocation in the
right one.

Let's provide an accessor for that region.

Signed-off-by: Maxime Ripard <mripard@kernel.org>
Signed-off-by: Eric Chanudet <echanude@redhat.com>
---
 include/linux/cma.h | 9 +++++++++
 mm/cma.c            | 7 +++++++
 2 files changed, 16 insertions(+)

diff --git a/include/linux/cma.h b/include/linux/cma.h
index 62d9c1cf632652489ccd9e01bf1370f2b1f3c249..8ece66c35e9e640b98db4b24a9bd118ad07ec082 100644
--- a/include/linux/cma.h
+++ b/include/linux/cma.h
@@ -77,4 +77,13 @@ static inline bool cma_validate_zones(struct cma *cma)
 }
 #endif
 
+#if IS_ENABLED(CONFIG_CGROUP_DMEM)
+struct dmem_cgroup_region *cma_get_dmem_cgroup_region(struct cma *cma);
+#else /* CONFIG_CGROUP_DMEM */
+static inline struct dmem_cgroup_region *cma_get_dmem_cgroup_region(struct cma *cma)
+{
+	return NULL;
+}
+#endif /* CONFIG_CGROUP_DMEM */
+
 #endif
diff --git a/mm/cma.c b/mm/cma.c
index 78016647d512868cd87bc2c1a52dd2295acaaf01..c8b0de1da3e71bd6b8ab749ab58eb27446a1657e 100644
--- a/mm/cma.c
+++ b/mm/cma.c
@@ -53,6 +53,13 @@ const char *cma_get_name(const struct cma *cma)
 	return cma->name;
 }
 
+#if IS_ENABLED(CONFIG_CGROUP_DMEM)
+struct dmem_cgroup_region *cma_get_dmem_cgroup_region(struct cma *cma)
+{
+	return cma->dmem_cgrp_region;
+}
+#endif /* CONFIG_CGROUP_DMEM */
+
 static unsigned long cma_bitmap_aligned_mask(const struct cma *cma,
 					     unsigned int align_order)
 {

-- 
2.52.0

_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org
