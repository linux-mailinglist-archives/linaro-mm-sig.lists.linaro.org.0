Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id C77F9693CDA
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 13 Feb 2023 04:20:01 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id D807D3F07A
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 13 Feb 2023 03:20:00 +0000 (UTC)
Received: from mail-pj1-f43.google.com (mail-pj1-f43.google.com [209.85.216.43])
	by lists.linaro.org (Postfix) with ESMTPS id 65B9B3EF80
	for <linaro-mm-sig@lists.linaro.org>; Wed,  8 Feb 2023 03:09:41 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=gmail.com header.s=20210112 header.b=NQLpdQzq;
	spf=pass (lists.linaro.org: domain of awkrail01@gmail.com designates 209.85.216.43 as permitted sender) smtp.mailfrom=awkrail01@gmail.com;
	dmarc=pass (policy=none) header.from=gmail.com
Received: by mail-pj1-f43.google.com with SMTP id f16-20020a17090a9b1000b0023058bbd7b2so929746pjp.0
        for <linaro-mm-sig@lists.linaro.org>; Tue, 07 Feb 2023 19:09:41 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=5pcJABX9SBwG6pPS5DjwAnhlxkRIEfiApGxt/FynRJo=;
        b=NQLpdQzqtkNTjlZnAFmYvECW4shVtkzs5rj3imtn0QvzxQel6HfaPydDaee0kB/SEW
         mI/OwbgEDfO9g7fWKbxu0++f4LMV7ejQJHxTSe4DKDvqs3rlmB4H8s4vCwaqGSltLUBg
         vBQpTv9/0++wMFLUao/vWKMOTps4LYZ79oe3fpIc24iRu0DD1j3vdZgdaZ49BvUPlhhe
         k3wHIk1N9tDD5jEA+j0vRtil3na65bGmYF0SiBuUKh46uRMSMcdkEAApZzKGwlJBkgBm
         SVStwnM9zJxx66cZMRHnOmWXXFF09oDj+O3CjthVRoRoE4+6toaNQToWmci92CoX2vrd
         TO5A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=5pcJABX9SBwG6pPS5DjwAnhlxkRIEfiApGxt/FynRJo=;
        b=kl2QoO4g3GrbxugZ74middAp6R2yOSHpxi39rZLbx0ofH94KAxy6VEzOZwzCw8sd4x
         fg0RCpLL5bBub2/M6AjCSNuqEKtiBQ/rfeV0AFiAneeZbQNvaMtsywcVPh/VsXAQiphg
         K+2SfcYn/H7x9Hdzt/WAmo+uTIcNNlL+Je5D/iPLhIa7zyt9MdgMKlEGMgrBxQJ3aWGL
         tW7Vkuz+5d4CdZNCQHeLnTsu22oow2bb4q5l6heFU8eYIE5+uRVaus6WQnJeomaLoCcS
         sYoq/KZ/OmfOWHZLSC9fg2ctVQ4WTUhdYttQjuTWdd4kMaRE2Nl242ti1i2wVraI8uuJ
         Nlrg==
X-Gm-Message-State: AO0yUKUV8/sfQO/AAgx4j6eb42AiTo2IYtiDfYjcrBv3nztps9c7fiw0
	sERnxPfIx7GPwvB3HPndLVQ=
X-Google-Smtp-Source: AK7set/6vxOwf+TUnnqTkeSQhzEi+9JnVJPT8aBmwW/pb0McArGoBFe2U81frQbkTQ2cUYp7VcSc4g==
X-Received: by 2002:a17:902:f549:b0:199:3f82:ef49 with SMTP id h9-20020a170902f54900b001993f82ef49mr2121757plf.49.1675825780630;
        Tue, 07 Feb 2023 19:09:40 -0800 (PST)
Received: from localhost.localdomain (arc.lsta.media.kyoto-u.ac.jp. [130.54.10.65])
        by smtp.gmail.com with ESMTPSA id g13-20020a170902c38d00b00189e7cb8b89sm9675043plg.127.2023.02.07.19.09.37
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 07 Feb 2023 19:09:40 -0800 (PST)
From: Taichi Nishimura <awkrail01@gmail.com>
To: maarten.lankhorst@linux.intel.com,
	mripard@kernel.org,
	tzimmermann@suse.de,
	airlied@gmail.com,
	daniel@ffwll.ch,
	sumit.semwal@linaro.org,
	christian.koenig@amd.com
Date: Wed,  8 Feb 2023 12:09:28 +0900
Message-Id: <20230208030928.760176-1-awkrail01@gmail.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
X-Rspamd-Server: lists.linaro.org
X-Rspamd-Queue-Id: 65B9B3EF80
X-Spamd-Bar: --
X-Spamd-Result: default: False [-2.60 / 15.00];
	BAYES_HAM(-3.00)[100.00%];
	MID_CONTAINS_FROM(1.00)[];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_MISSING_CHARSET(0.50)[];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20210112];
	R_SPF_ALLOW(-0.20)[+ip4:209.85.128.0/17:c];
	MIME_GOOD(-0.10)[text/plain];
	RWL_MAILSPIKE_GOOD(-0.10)[209.85.216.43:from];
	FROM_HAS_DN(0.00)[];
	PREVIOUSLY_DELIVERED(0.00)[linaro-mm-sig@lists.linaro.org];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	BLOCKLISTDE_FAIL(0.00)[130.54.10.65:query timed out];
	ARC_NA(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[12];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	FREEMAIL_ENVFROM(0.00)[gmail.com];
	NEURAL_HAM(-0.00)[-0.999];
	RCVD_COUNT_THREE(0.00)[3];
	FREEMAIL_FROM(0.00)[gmail.com];
	TO_DN_SOME(0.00)[];
	ASN(0.00)[asn:15169, ipnet:209.85.128.0/17, country:US];
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
Message-ID-Hash: U4THASNPRPYNPVWBQUVJ35T4M6DWN47E
X-Message-ID-Hash: U4THASNPRPYNPVWBQUVJ35T4M6DWN47E
X-Mailman-Approved-At: Mon, 13 Feb 2023 03:19:32 +0000
CC: linux-kernel@vger.kernel.org, linux-media@vger.kernel.org, linaro-mm-sig@lists.linaro.org, skhan@linuxfoundation.org, Taichi Nishimura <awkrail01@gmail.com>
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] [PATCH] Fix drm documentation warning
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/U4THASNPRPYNPVWBQUVJ35T4M6DWN47E/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

Sorry to re-send this patch again.
I forgot to attach description.

When running make htmldocs, I found that drm_accel_node
does not exist. The documents do not have any links to
acceleration nodes, so I removed them.

This patch is an extra credit for documentation task
in the Linux kernel Bug Fixing Spring unpaid 2023.

Best,
Taichi

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
