Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id D267CA7BF81
	for <lists+linaro-mm-sig@lfdr.de>; Fri,  4 Apr 2025 16:36:04 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id C2AB845829
	for <lists+linaro-mm-sig@lfdr.de>; Fri,  4 Apr 2025 14:36:03 +0000 (UTC)
Received: from mail-ed1-f45.google.com (mail-ed1-f45.google.com [209.85.208.45])
	by lists.linaro.org (Postfix) with ESMTPS id BE7594582F
	for <linaro-mm-sig@lists.linaro.org>; Fri,  4 Apr 2025 14:35:53 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=linaro.org header.s=google header.b=GqyvYArD;
	spf=pass (lists.linaro.org: domain of jens.wiklander@linaro.org designates 209.85.208.45 as permitted sender) smtp.mailfrom=jens.wiklander@linaro.org;
	dmarc=pass (policy=none) header.from=linaro.org
Received: by mail-ed1-f45.google.com with SMTP id 4fb4d7f45d1cf-5e6194e9d2cso3848548a12.2
        for <linaro-mm-sig@lists.linaro.org>; Fri, 04 Apr 2025 07:35:53 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1743777156; x=1744381956; darn=lists.linaro.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=fs7nqD12lkBPC3o5IKJmDFRrEPWNWVuJ0deEV/XnG9g=;
        b=GqyvYArDmLkhZlR7eiBC+eM/FFFm0SLuVisqAnbvy/SngBQU36BoYcHCE+3MIpMF1J
         iC0PV+IYyLSsXX5zghOoN6lVmX6vZGMqDO2e2mWRVRRlxMqtIA195EQXG4GYqqiEPrQh
         hT5a4sTNH4AS5KBTPcNUt0hcI3s6ADI5gddT2t8+0TrNs/NgKUzzrwDHZcUFQf+JDxuJ
         +WBPmTXREXxw9h3HYy4k+3ycftUD4BOYobNqqXtP4+Mo3n3uRnHGylwavjOR4rGonm3O
         SsC4Aw7qgKM/78AAJKABuUcXdZ1kVi+r/cyn6lKNyAJ2gIq95mFVbNTXzd8YTioXDQe7
         84Ug==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1743777156; x=1744381956;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=fs7nqD12lkBPC3o5IKJmDFRrEPWNWVuJ0deEV/XnG9g=;
        b=qepC7530VNgSkdgufdIRa9Q8I7kBmJRsPuVamRZYTnnsZ+JCls9noeRh4nGwHGdU6j
         /byCpqxB0Xsm7iXlnPa5AnYZsaLNRSj8P6bPgPPE6yzQzZbYieTMgAIxTjHG5TLZxMuu
         PQq1liIwHGNiE7wXGG8cned36cxqJPlB4gXFLk4DMTlpllFlbMnwDXbPfDkWxmhwxT80
         ysV/pFHshQmOInRTiGq19l9vRAf2ly7Cpk9mVf2ZONoF7XDE2/oFYllUuUIX7hgAJ1d+
         hAStVbA0O6Tf+sgA2V6F5soCg+xlhao+eGFojylgKcPOaz3Cm2kFpcVnkhJdb2FrbwHg
         foaA==
X-Forwarded-Encrypted: i=1; AJvYcCXTnvZJ0KzxmqN0xJr+Zb4yMWM7VLyv+SjGIuTfVqJYkuTQdEMlrImaxKwC3GWDr5hyX09t4L1HkwYO8LQ6@lists.linaro.org
X-Gm-Message-State: AOJu0Yz0odAin0wlunvzFVaQMO5WR02+11M77jzcp+A1nf49sP2uD4bG
	WvPPooog+5ETEh4A6WjHjsDzTtYd9lpWR2RrwGDvL3tp7Ie0nUnlSLqqK5YO3I5DFA==
X-Gm-Gg: ASbGncvqJvwRoAwuDsLQA8JroGdVXoSX8Hfk+0+A1YLs9XlaZ0mTr3Ki69FEgIRRQ0K
	lk4FAVP1fo3ae5/aYlzueioNOgXWUGDdSVO67fgFFj7jI4TbZiTYg/z1jgudyUqLJhDb9DE4Zds
	vpzSvQZanBbJv161lJbcN+kyAmgfUT59SpxZhV3QX93GROAfWVT888Pry+MVB27cS6jbLcT3PPw
	8du9bKl8F/lm+q4x3ncgRfnToFtzg0RZqyhTupPfDQzkOlgnY+ilQCgEGoVrjt477PbcupjMKfN
	II/zBmeA81BKJe5e7ox3iTqij/2t/jW/rkLc3g1wzYzQyR0q8fotz5FBDdgzzpnQxGe74+ODCYE
	nX9pzLJxYLC3F/LzkPZ/G+Q==
X-Google-Smtp-Source: AGHT+IFs+Hyg3/qgGfM04VQJy6hexkwcypVkkd955EopjzAxNOwVqKRSb29t6l7fEI6wJVCNyo9dwQ==
X-Received: by 2002:a05:6402:42c7:b0:5ec:958b:6f5a with SMTP id 4fb4d7f45d1cf-5f0b4711e42mr2859878a12.28.1743777156026;
        Fri, 04 Apr 2025 07:32:36 -0700 (PDT)
Received: from rayden.urgonet (h-98-128-140-123.A175.priv.bahnhof.se. [98.128.140.123])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-5f087f0a0f3sm2567450a12.43.2025.04.04.07.32.34
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 04 Apr 2025 07:32:35 -0700 (PDT)
From: Jens Wiklander <jens.wiklander@linaro.org>
To: linux-kernel@vger.kernel.org,
	linux-media@vger.kernel.org,
	dri-devel@lists.freedesktop.org,
	linaro-mm-sig@lists.linaro.org,
	op-tee@lists.trustedfirmware.org,
	linux-arm-kernel@lists.infradead.org
Date: Fri,  4 Apr 2025 16:31:29 +0200
Message-ID: <20250404143215.2281034-7-jens.wiklander@linaro.org>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20250404143215.2281034-1-jens.wiklander@linaro.org>
References: <20250404143215.2281034-1-jens.wiklander@linaro.org>
MIME-Version: 1.0
X-Rspamd-Server: lists.linaro.org
X-Rspamd-Queue-Id: BE7594582F
X-Spamd-Result: default: False [-1.00 / 15.00];
	BAYES_HAM(-3.00)[99.99%];
	SUSPICIOUS_RECIPS(1.50)[];
	MID_CONTAINS_FROM(1.00)[];
	R_MISSING_CHARSET(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[linaro.org,none];
	R_DKIM_ALLOW(-0.20)[linaro.org:s=google];
	R_SPF_ALLOW(-0.20)[+ip4:209.85.128.0/17:c];
	MIME_GOOD(-0.10)[text/plain];
	RCPT_COUNT_TWELVE(0.00)[22];
	URIBL_BLOCKED(0.00)[linaro.org:mid,linaro.org:dkim,linaro.org:email,mail-ed1-f45.google.com:helo,mail-ed1-f45.google.com:rdns];
	MIME_TRACE(0.00)[0:+];
	FREEMAIL_CC(0.00)[nxp.com,gmail.com,mediatek.com,linaro.org,collabora.com,arm.com,google.com,amd.com,kernel.org,qti.qualcomm.com,ffwll.ch,fooishbar.org];
	ARC_NA(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	DKIM_TRACE(0.00)[linaro.org:+];
	ASN(0.00)[asn:15169, ipnet:209.85.128.0/17, country:US];
	RCVD_COUNT_TWO(0.00)[2];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	FROM_EQ_ENVFROM(0.00)[];
	FROM_HAS_DN(0.00)[];
	TO_DN_SOME(0.00)[];
	DNSWL_BLOCKED(0.00)[209.85.208.45:from,98.128.140.123:received];
	TAGGED_RCPT(0.00)[];
	PREVIOUSLY_DELIVERED(0.00)[linaro-mm-sig@lists.linaro.org];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	RWL_MAILSPIKE_POSSIBLE(0.00)[209.85.208.45:from];
	RBL_SENDERSCORE_REPUT_BLOCKED(0.00)[209.85.208.45:from]
X-Spamd-Bar: /
X-Rspamd-Action: no action
Message-ID-Hash: YCYZGA4VGZYBKSEEK4NYXQXTPSCO2JKK
X-Message-ID-Hash: YCYZGA4VGZYBKSEEK4NYXQXTPSCO2JKK
X-MailFrom: jens.wiklander@linaro.org
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: Olivier Masse <olivier.masse@nxp.com>, Thierry Reding <thierry.reding@gmail.com>, Yong Wu <yong.wu@mediatek.com>, Sumit Semwal <sumit.semwal@linaro.org>, Benjamin Gaignard <benjamin.gaignard@collabora.com>, Brian Starkey <Brian.Starkey@arm.com>, John Stultz <jstultz@google.com>, "T . J . Mercier" <tjmercier@google.com>, =?UTF-8?q?Christian=20K=C3=B6nig?= <christian.koenig@amd.com>, Sumit Garg <sumit.garg@kernel.org>, Matthias Brugger <matthias.bgg@gmail.com>, AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>, azarrabi@qti.qualcomm.com, Simona Vetter <simona.vetter@ffwll.ch>, Daniel Stone <daniel@fooishbar.org>, Jens Wiklander <jens.wiklander@linaro.org>
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] [PATCH v7 06/11] tee: refactor params_from_user()
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

Break out the memref handling into a separate helper function.
No change in behavior.

Signed-off-by: Jens Wiklander <jens.wiklander@linaro.org>
---
 drivers/tee/tee_core.c | 94 ++++++++++++++++++++++++------------------
 1 file changed, 54 insertions(+), 40 deletions(-)

diff --git a/drivers/tee/tee_core.c b/drivers/tee/tee_core.c
index 685afcaa3ea1..820e394b9054 100644
--- a/drivers/tee/tee_core.c
+++ b/drivers/tee/tee_core.c
@@ -353,6 +353,55 @@ tee_ioctl_shm_register(struct tee_context *ctx,
 	return ret;
 }
 
+static int param_from_user_memref(struct tee_context *ctx,
+				  struct tee_param_memref *memref,
+				  struct tee_ioctl_param *ip)
+{
+	struct tee_shm *shm;
+
+	/*
+	 * If a NULL pointer is passed to a TA in the TEE,
+	 * the ip.c IOCTL parameters is set to TEE_MEMREF_NULL
+	 * indicating a NULL memory reference.
+	 */
+	if (ip->c != TEE_MEMREF_NULL) {
+		/*
+		 * If we fail to get a pointer to a shared
+		 * memory object (and increase the ref count)
+		 * from an identifier we return an error. All
+		 * pointers that has been added in params have
+		 * an increased ref count. It's the callers
+		 * responibility to do tee_shm_put() on all
+		 * resolved pointers.
+		 */
+		shm = tee_shm_get_from_id(ctx, ip->c);
+		if (IS_ERR(shm))
+			return PTR_ERR(shm);
+
+		/*
+		 * Ensure offset + size does not overflow
+		 * offset and does not overflow the size of
+		 * the referred shared memory object.
+		 */
+		if ((ip->a + ip->b) < ip->a ||
+		    (ip->a + ip->b) > shm->size) {
+			tee_shm_put(shm);
+			return -EINVAL;
+		}
+	} else if (ctx->cap_memref_null) {
+		/* Pass NULL pointer to OP-TEE */
+		shm = NULL;
+	} else {
+		return -EINVAL;
+	}
+
+	memref->shm_offs = ip->a;
+	memref->size = ip->b;
+	memref->shm = shm;
+
+	return 0;
+}
+
 static int params_from_user(struct tee_context *ctx, struct tee_param *params,
 			    size_t num_params,
 			    struct tee_ioctl_param __user *uparams)
@@ -360,8 +409,8 @@ static int params_from_user(struct tee_context *ctx, struct tee_param *params,
 	size_t n;
 
 	for (n = 0; n < num_params; n++) {
-		struct tee_shm *shm;
 		struct tee_ioctl_param ip;
+		int rc;
 
 		if (copy_from_user(&ip, uparams + n, sizeof(ip)))
 			return -EFAULT;
@@ -384,45 +433,10 @@ static int params_from_user(struct tee_context *ctx, struct tee_param *params,
 		case TEE_IOCTL_PARAM_ATTR_TYPE_MEMREF_INPUT:
 		case TEE_IOCTL_PARAM_ATTR_TYPE_MEMREF_OUTPUT:
 		case TEE_IOCTL_PARAM_ATTR_TYPE_MEMREF_INOUT:
-			/*
-			 * If a NULL pointer is passed to a TA in the TEE,
-			 * the ip.c IOCTL parameters is set to TEE_MEMREF_NULL
-			 * indicating a NULL memory reference.
-			 */
-			if (ip.c != TEE_MEMREF_NULL) {
-				/*
-				 * If we fail to get a pointer to a shared
-				 * memory object (and increase the ref count)
-				 * from an identifier we return an error. All
-				 * pointers that has been added in params have
-				 * an increased ref count. It's the callers
-				 * responibility to do tee_shm_put() on all
-				 * resolved pointers.
-				 */
-				shm = tee_shm_get_from_id(ctx, ip.c);
-				if (IS_ERR(shm))
-					return PTR_ERR(shm);
-
-				/*
-				 * Ensure offset + size does not overflow
-				 * offset and does not overflow the size of
-				 * the referred shared memory object.
-				 */
-				if ((ip.a + ip.b) < ip.a ||
-				    (ip.a + ip.b) > shm->size) {
-					tee_shm_put(shm);
-					return -EINVAL;
-				}
-			} else if (ctx->cap_memref_null) {
-				/* Pass NULL pointer to OP-TEE */
-				shm = NULL;
-			} else {
-				return -EINVAL;
-			}
-
-			params[n].u.memref.shm_offs = ip.a;
-			params[n].u.memref.size = ip.b;
-			params[n].u.memref.shm = shm;
+			rc = param_from_user_memref(ctx, &params[n].u.memref,
+						    &ip);
+			if (rc)
+				return rc;
 			break;
 		default:
 			/* Unknown attribute */
-- 
2.43.0

_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org
