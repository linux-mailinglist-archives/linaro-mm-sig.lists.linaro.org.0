Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id B9B09693CD7
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 13 Feb 2023 04:19:42 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 761C63EBA4
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 13 Feb 2023 03:19:41 +0000 (UTC)
Received: from mail-pg1-f171.google.com (mail-pg1-f171.google.com [209.85.215.171])
	by lists.linaro.org (Postfix) with ESMTPS id 517403ECE1
	for <linaro-mm-sig@lists.linaro.org>; Wed,  8 Feb 2023 03:06:15 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=gmail.com header.s=20210112 header.b=nG1NPZrb;
	spf=pass (lists.linaro.org: domain of awkrail01@gmail.com designates 209.85.215.171 as permitted sender) smtp.mailfrom=awkrail01@gmail.com;
	dmarc=pass (policy=none) header.from=gmail.com
Received: by mail-pg1-f171.google.com with SMTP id u75so5189920pgc.10
        for <linaro-mm-sig@lists.linaro.org>; Tue, 07 Feb 2023 19:06:15 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=XUAc3Kmtrw7bkWSIP/D/yItveoAW2k52Mgjl/bK0iks=;
        b=nG1NPZrb8LiHm/evfdCL7aILi5Dz1X2y0XkCLveyLG6b95WG1Xd/ycmKwxGCrJ/1i1
         f37gy2g+pBiPMck7Zd6TMa7ontAXyxDLdI85fMnp7FmfxETpGYraKppzolHagQvu/nEE
         GkfOPZh7bpprcLBC7+DdhPtuv/V620CA+Vw7hpLu4Dtsk9webLbfnWk+61WAgFmMi/Ce
         Njd/giWv2Pbq9vFEKR7WtNVwQb1I3zoytjUwogVmk2ek8hgIppzxx9sERa+cX4tOSdB4
         W1WBKFamsjpQ+18Xw2cKhuuHdJWWuaJWJFaIWEWjRodoK4fDvm0iPqwG7WTWhllHmfx0
         wqZA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=XUAc3Kmtrw7bkWSIP/D/yItveoAW2k52Mgjl/bK0iks=;
        b=WN90QI9/olBcq9mYKbhEjGWjj42tAbnm6P3hsutQVK0sVBG4/Jj7GpCPNLLM2DTB7T
         jRkpB/4nbernG+StXvaYwUPrexxpMSrHg8VbXuDRJiS/zBfMzzZ9NjLENUU8zp/puao4
         98qcvK5jRifOrDbK3SSBkz6XE9yrGCzb2cSumBs5ldDm0ODe8/3GmHHRy6XzxlzTQJ+o
         rgUELB7BIomw0h6mD9vbK44qQ5rB3fyk3xKt1I3HAlfjd2NWwk+2LJVPZc8wMPjdeG4p
         2c9tng6TFpacrpQ5OkLNprE4OSHjecgv1qDLi4bmHqWrSPwt2PCpTpQrbgJDetdiG8RX
         BYPw==
X-Gm-Message-State: AO0yUKXYrvDsg4zdy5RqcXvEXkdp1KydjZoUsfBXcQJaGPfeX+09hdL/
	r7HMN84J5fATkIsNE7AmBCI=
X-Google-Smtp-Source: AK7set9/i1uN8fisjkFwIiio/QMsAN3f7BbUkw+peP+WD5bgQgTEOd07h5aHGqJX2N2ZlDpqbwHXhw==
X-Received: by 2002:a62:3203:0:b0:590:7623:9c6f with SMTP id y3-20020a623203000000b0059076239c6fmr4417969pfy.34.1675825574434;
        Tue, 07 Feb 2023 19:06:14 -0800 (PST)
Received: from localhost.localdomain (arc.lsta.media.kyoto-u.ac.jp. [130.54.10.65])
        by smtp.gmail.com with ESMTPSA id y26-20020aa7855a000000b005a7c892b435sm2118935pfn.25.2023.02.07.19.06.11
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 07 Feb 2023 19:06:14 -0800 (PST)
From: Taichi Nishimura <awkrail01@gmail.com>
To: maarten.lankhorst@linux.intel.com,
	mripard@kernel.org,
	tzimmermann@suse.de,
	airlied@gmail.com,
	daniel@ffwll.ch,
	sumit.semwal@linaro.org,
	christian.koenig@amd.com
Date: Wed,  8 Feb 2023 12:05:23 +0900
Message-Id: <20230208030523.759146-1-awkrail01@gmail.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
X-Rspamd-Server: lists.linaro.org
X-Rspamd-Queue-Id: 517403ECE1
X-Spamd-Bar: --
X-Spamd-Result: default: False [-2.50 / 15.00];
	BAYES_HAM(-3.00)[100.00%];
	MID_CONTAINS_FROM(1.00)[];
	R_MISSING_CHARSET(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_SPF_ALLOW(-0.20)[+ip4:209.85.128.0/17];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20210112];
	MIME_GOOD(-0.10)[text/plain];
	FROM_HAS_DN(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	PREVIOUSLY_DELIVERED(0.00)[linaro-mm-sig@lists.linaro.org];
	ARC_NA(0.00)[];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[12];
	BLOCKLISTDE_FAIL(0.00)[130.54.10.65:query timed out,209.85.215.171:query timed out];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	ASN(0.00)[asn:15169, ipnet:209.85.128.0/17, country:US];
	FREEMAIL_ENVFROM(0.00)[gmail.com];
	RCVD_COUNT_THREE(0.00)[3];
	FREEMAIL_FROM(0.00)[gmail.com];
	TO_DN_SOME(0.00)[];
	RWL_MAILSPIKE_POSSIBLE(0.00)[209.85.215.171:from];
	DKIM_TRACE(0.00)[gmail.com:+];
	FROM_EQ_ENVFROM(0.00)[];
	FREEMAIL_TO(0.00)[linux.intel.com,kernel.org,suse.de,gmail.com,ffwll.ch,linaro.org,amd.com];
	MIME_TRACE(0.00)[0:+];
	RCVD_TLS_LAST(0.00)[];
	FREEMAIL_CC(0.00)[vger.kernel.org,lists.linaro.org,linuxfoundation.org,gmail.com]
X-Rspamd-Action: no action
X-MailFrom: awkrail01@gmail.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
Message-ID-Hash: 4KZSNWCWJMJXIDVZLBVMARQE36FJYDYD
X-Message-ID-Hash: 4KZSNWCWJMJXIDVZLBVMARQE36FJYDYD
X-Mailman-Approved-At: Mon, 13 Feb 2023 03:19:26 +0000
CC: linux-kernel@vger.kernel.org, linux-media@vger.kernel.org, linaro-mm-sig@lists.linaro.org, skhan@linuxfoundation.org, Taichi Nishimura <awkrail01@gmail.com>
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] [PATCH] Fix drm documentation warning
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/4KZSNWCWJMJXIDVZLBVMARQE36FJYDYD/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

Signed-off-by: Taichi Nishimura <awkrail01@gmail.com>
---
 include/drm/drm_file.h | 2 --
 1 file changed, 2 deletions(-)

diff --git a/include/drm/drm_file.h b/include/drm/drm_file.h
index 0d1f853092ab..cffccf6b94de 100644
--- a/include/drm/drm_file.h
+++ b/include/drm/drm_file.h
@@ -407,8 +407,6 @@ static inline bool drm_is_render_client(const struct drm_file *file_priv)
  *
  * Returns true if this is an open file of the compute acceleration node, i.e.
  * &drm_file.minor of @file_priv is a accel minor.
- *
- * See also the :ref:`section on accel nodes <drm_accel_node>`.
  */
 static inline bool drm_is_accel_client(const struct drm_file *file_priv)
 {
-- 
2.25.1

_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org
