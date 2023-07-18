Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 74D3D79A8E4
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 11 Sep 2023 16:47:08 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 7AC863F59E
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 11 Sep 2023 14:47:07 +0000 (UTC)
Received: from mail-pj1-f52.google.com (mail-pj1-f52.google.com [209.85.216.52])
	by lists.linaro.org (Postfix) with ESMTPS id 355DB3EF12
	for <linaro-mm-sig@lists.linaro.org>; Tue, 18 Jul 2023 11:16:44 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=gmail.com header.s=20221208 header.b=R1b13mbf;
	spf=pass (lists.linaro.org: domain of onion0709@gmail.com designates 209.85.216.52 as permitted sender) smtp.mailfrom=onion0709@gmail.com;
	dmarc=pass (policy=none) header.from=gmail.com
Received: by mail-pj1-f52.google.com with SMTP id 98e67ed59e1d1-2632a72f289so2838102a91.2
        for <linaro-mm-sig@lists.linaro.org>; Tue, 18 Jul 2023 04:16:44 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20221208; t=1689679003; x=1692271003;
        h=content-disposition:mime-version:subject:to:date:from:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=RDqCEtPP7u4lUuZ9Np/PNRIOxRGuU6kZQY2tiFjWesI=;
        b=R1b13mbfqdYlno1rEzfx5LoSkAJSZ4myTZ4145u7gLU7tIkMZ1H6QkP+AcW+MbaE6T
         c+Dkoeor41D1nkVFvRVfUjUXUWep5edmRb0sWAnhxGUyr0GUblOQPo+m+4SQxOSRxx2S
         rDVuQD0rjNVHptG3czYEL1GTpHsWpeAIF4QL9do43kt2ri2v5Af/qhIOF/+WFbf6rEF9
         UrI92NJo+RAWtgWxqedqpE76x9zyxAcC5bT81uVLVvDnZGjNcFRyOPKJwWvOzdHsOy5m
         sVIrhakF1Tfjg7YmUmKgcP8DU6K8Mc3g54JVP7RSe0HT5JbHvg/i/6BCNGt7TOebLKVS
         1mrg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1689679003; x=1692271003;
        h=content-disposition:mime-version:subject:to:date:from:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=RDqCEtPP7u4lUuZ9Np/PNRIOxRGuU6kZQY2tiFjWesI=;
        b=NNOEcpzk3kpvl+OlRpQaNR4/kPT4YeFGF+a1phSkmBzMci3fK6QM7nnc001q8cYMfj
         3M8V6GywemcLgk9NNomsncfzvSzP9+saCQw2JRDbtlo9e18P0U8fuem4vktqvTQjtiip
         bZNz/ghIl2SQEFfI6FZDOkH09hExeZtxswhQ1y1Qk4kLbsyJtol1NZr0Wcm/CR+3DWpO
         Rb51xR4qbn+tCIg+1Vbd1QinvNalNcLxjn0KkbogVQUE10acheYPETMFB6Z/pxSilGQZ
         XLxykoPPAOHFksX+XnEE/FnfJEHrD6soxd1KG5LGvIebfxLMZrg6Y7PCdJQJsp/+6dFj
         HSKQ==
X-Gm-Message-State: ABy/qLbfAyLCdfRvHpHlFXvr3rbqrUo/sTfljx45yzbvrK51MAxxAZz2
	YOmUWuooM9duMyeN1D/++/Y=
X-Google-Smtp-Source: APBJJlEst8u9Az2C8TF7X1huLYbv/7A043tSS9ngGKSY788TupNY8qhUi2D7L/U93exBd4YXJmFbjw==
X-Received: by 2002:a17:90a:62c5:b0:262:d19c:4fee with SMTP id k5-20020a17090a62c500b00262d19c4feemr11645410pjs.19.1689679003309;
        Tue, 18 Jul 2023 04:16:43 -0700 (PDT)
Received: from sie-luc. ([1.85.36.133])
        by smtp.gmail.com with ESMTPSA id 6-20020a17090a194600b00263d3448141sm1329482pjh.8.2023.07.18.04.16.39
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 18 Jul 2023 04:16:42 -0700 (PDT)
Message-ID: <64b6749a.170a0220.3acab.2af9@mx.google.com>
X-Google-Original-Message-ID: <20230718111634.GA8462@sie-luc.>
From: Luc Ma <onion0709@gmail.com>
X-Google-Original-From: Luc Ma <luc@sietium.com>
Date: Tue, 18 Jul 2023 19:16:34 +0800
To: Sumit Semwal <sumit.semwal@linaro.org>,
	Christian =?utf-8?B?S8O2bmln?= <christian.koenig@amd.com>,
	linux-media@vger.kernel.org, dri-devel@lists.freedesktop.org,
	linaro-mm-sig@lists.linaro.org, linux-kernel@vger.kernel.org,
	javierm@redhat.com, onion0709@gmail.com
MIME-Version: 1.0
Content-Disposition: inline
X-Rspamd-Action: no action
X-Rspamd-Server: lists.linaro.org
X-Rspamd-Queue-Id: 355DB3EF12
X-Spamd-Bar: ----
X-Spamd-Result: default: False [-4.10 / 15.00];
	BAYES_HAM(-3.00)[100.00%];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20221208];
	R_SPF_ALLOW(-0.20)[+ip4:209.85.128.0/17];
	MIME_GOOD(-0.10)[text/plain];
	RWL_MAILSPIKE_GOOD(-0.10)[209.85.216.52:from];
	NEURAL_HAM(-0.00)[-1.000];
	FREEMAIL_ENVFROM(0.00)[gmail.com];
	MIME_TRACE(0.00)[0:+];
	RCPT_COUNT_SEVEN(0.00)[8];
	ASN(0.00)[asn:15169, ipnet:209.85.128.0/17, country:US];
	FROM_EQ_ENVFROM(0.00)[];
	FREEMAIL_TO(0.00)[linaro.org,amd.com,vger.kernel.org,lists.freedesktop.org,lists.linaro.org,redhat.com,gmail.com];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	RCVD_COUNT_TWO(0.00)[2];
	ARC_NA(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DKIM_TRACE(0.00)[gmail.com:+];
	FROM_HAS_DN(0.00)[];
	FREEMAIL_FROM(0.00)[gmail.com];
	TO_DN_SOME(0.00)[];
	PREVIOUSLY_DELIVERED(0.00)[linaro-mm-sig@lists.linaro.org];
	RCVD_TLS_LAST(0.00)[]
X-MailFrom: onion0709@gmail.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
Message-ID-Hash: FVUCYBL3RWZQXDGQMTWC6HRWWMFRF5AX
X-Message-ID-Hash: FVUCYBL3RWZQXDGQMTWC6HRWWMFRF5AX
X-Mailman-Approved-At: Mon, 11 Sep 2023 14:44:44 +0000
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] [PATCH v2] dma-buf: Fix the typo in DMA-BUF statistics doc
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/FVUCYBL3RWZQXDGQMTWC6HRWWMFRF5AX/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

From: Luc Ma <luc@sietium.com>

The kernel-doc for DMA-BUF statistics mentions /sys/kernel/dma-buf/buffers
but the correct path is /sys/kernel/dmabuf/buffers instead.

Signed-off-by: Luc Ma <luc@sietium.com>
Reviewed-by: Javier Martinez Canillas <javierm@redhat.com>
---
 drivers/dma-buf/dma-buf-sysfs-stats.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/dma-buf/dma-buf-sysfs-stats.c b/drivers/dma-buf/dma-buf-sysfs-stats.c
index 6cfbbf0720bd..b5b62e40ccc1 100644
--- a/drivers/dma-buf/dma-buf-sysfs-stats.c
+++ b/drivers/dma-buf/dma-buf-sysfs-stats.c
@@ -33,7 +33,7 @@
  * into their address space. This necessitated the creation of the DMA-BUF sysfs
  * statistics interface to provide per-buffer information on production systems.
  *
- * The interface at ``/sys/kernel/dma-buf/buffers`` exposes information about
+ * The interface at ``/sys/kernel/dmabuf/buffers`` exposes information about
  * every DMA-BUF when ``CONFIG_DMABUF_SYSFS_STATS`` is enabled.
  *
  * The following stats are exposed by the interface:
-- 
2.25.1

_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org
