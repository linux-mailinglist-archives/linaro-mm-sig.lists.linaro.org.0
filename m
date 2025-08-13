Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id AF886B240FB
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 13 Aug 2025 08:05:11 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id C4C0E4413E
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 13 Aug 2025 06:05:10 +0000 (UTC)
Received: from mail-ed1-f47.google.com (mail-ed1-f47.google.com [209.85.208.47])
	by lists.linaro.org (Postfix) with ESMTPS id 5AFE945D7C
	for <linaro-mm-sig@lists.linaro.org>; Wed, 13 Aug 2025 06:03:58 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=linaro.org header.s=google header.b=PQRATnS9;
	spf=pass (lists.linaro.org: domain of jens.wiklander@linaro.org designates 209.85.208.47 as permitted sender) smtp.mailfrom=jens.wiklander@linaro.org;
	dmarc=pass (policy=none) header.from=linaro.org
Received: by mail-ed1-f47.google.com with SMTP id 4fb4d7f45d1cf-61568fbed16so9809774a12.3
        for <linaro-mm-sig@lists.linaro.org>; Tue, 12 Aug 2025 23:03:58 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1755065037; x=1755669837; darn=lists.linaro.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=TSuLcRnSGeJ3xtP5yz3Dg/9JsLri62mj/cqN0HfNB3I=;
        b=PQRATnS9C03OSpyuN6q4+rk/3WyT0uwDZybu8D7c4Fkz45Vx76pdoEhKgywFHSPxNb
         QYUwm7q2HcsPyT76P+C2T92esz44i62wshBQTUrYIgNtWYsaLldBZQaz62xW8BUxyS8j
         aOGFOHO72SozekvtJc+UTTViiXlvZyG/lQdEAfBv90853VFmMOooggVoakVKGcJ0cWmA
         vFlxQxZVAbKYRiuQbGc/6vmLrBwLsekd+n9wgPYZBaj35frdTnJKayZ2VuW7WWaSZ/uj
         L5nrJpiuKi5XVui5wKrLecpqI1AYb5D1e+wwT2FxovQoUK2uONSQTzV4NowthL2MxIip
         DtNw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1755065037; x=1755669837;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=TSuLcRnSGeJ3xtP5yz3Dg/9JsLri62mj/cqN0HfNB3I=;
        b=CN+9hViAu6Q2mZvlVuk94KqrLThF1Qz+9nS3erUVbQdY73UG+SAX/xByibL4RW6UJn
         qzul8paeEIs/NuK0PTwBIrWHcVbSWw1HLGeJKBKo6M65hZYVtdLNc6gVmXZbPHPJrVno
         2Bh4b3dEOP3jFUb/gIFONvDlnFB+s55tyftRiY1Hz0SBB7SqKLzeUzPz7rQPG/RkTTpT
         BUwB01fzCxq9QK4i7kuKYvTDegU6qZlqwqHJkVQBvcoEiZ1lV7EzHAepJvCbIgse7uV1
         XzHpZs+enLGrbC2PsruIBUPH4HjHJlsB3+Tojki4xrkFrRAcoK/lXTpFpKno6UmBg4Od
         yCvQ==
X-Forwarded-Encrypted: i=1; AJvYcCX1WusrKYpVtk/qJ1x5kWhcy5YPoXvSXOSThJHtUPFcwWmI/D7MvBd/bfedcfS90REnplrt2TaVIwngP1tQ@lists.linaro.org
X-Gm-Message-State: AOJu0Ywtuv8A1UPh1Nh+33dJsowkt+/NJxkAOJ2OJgygq3BSCEwQ7zJs
	icSVFolIOIvFj2JutaOf4Nm40YTrINBxj/P90KpCrBRPybTg3NMre/sz+50xNvcasNCD8Q==
X-Gm-Gg: ASbGncsA/X4eg/3/FJVvCZZ/j4uBmF/F9A/w9C2fAUKDM8evNV04yN+6ylqKAmUGU4e
	FL14FoyakdVEy+PEyib67vAQn3digctcsZ/0FMbhq0GOEG2dyRiRCLJnv7SJ8JeMXNeDfhl2LUC
	ICwt3GHccnoDHSP3B6OOFs5OSqFzTbrGik4+G9kEIkxvIqMDwEulgjYw3bjKFLfZfBu9Rgzgfog
	F6o3k/Dx3gjzaxl9yKqrbQURWCJuJ2AZDEBtFYJTuCADdr5NBw2A8gTuKDDCV10dn5ItZDOg2da
	UxzrqWIpZnSomMeXt/LlO8EcX1Pc/5t/VOplJCuRsRZTRO+zAhfz1kIKQAbA/4GVLIuRGUI72Gg
	Zkq4KGMNAHjUAkOomlMQ06ZC1C2Q9I6qoHbKVd0TXelLiivJb9qj+gRQMH4Eu09E/5Pvw91WiRi
	s=
X-Google-Smtp-Source: AGHT+IGqtQuV3o9beFdm8AV0OFCgrlJsYi4d+51H/4Z6scb5xUCOU4GITJt7DlZEnnM5yYTlW/+1Mg==
X-Received: by 2002:a05:6402:3509:b0:615:a60a:38a7 with SMTP id 4fb4d7f45d1cf-6186b758722mr1521502a12.7.1755065037200;
        Tue, 12 Aug 2025 23:03:57 -0700 (PDT)
Received: from rayden.urgonet (h-37-123-177-177.A175.priv.bahnhof.se. [37.123.177.177])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-615a8f2b892sm21498679a12.25.2025.08.12.23.03.55
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 12 Aug 2025 23:03:56 -0700 (PDT)
From: Jens Wiklander <jens.wiklander@linaro.org>
To: linux-kernel@vger.kernel.org,
	linux-media@vger.kernel.org,
	dri-devel@lists.freedesktop.org,
	linaro-mm-sig@lists.linaro.org,
	op-tee@lists.trustedfirmware.org,
	linux-arm-kernel@lists.infradead.org
Date: Wed, 13 Aug 2025 08:02:53 +0200
Message-ID: <20250813060339.2977604-5-jens.wiklander@linaro.org>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20250813060339.2977604-1-jens.wiklander@linaro.org>
References: <20250813060339.2977604-1-jens.wiklander@linaro.org>
MIME-Version: 1.0
X-Spamd-Result: default: False [-1.00 / 15.00];
	BAYES_HAM(-3.00)[100.00%];
	SUSPICIOUS_RECIPS(1.50)[];
	MID_CONTAINS_FROM(1.00)[];
	R_MISSING_CHARSET(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[linaro.org,none];
	R_DKIM_ALLOW(-0.20)[linaro.org:s=google];
	R_SPF_ALLOW(-0.20)[+ip4:209.85.128.0/17:c];
	MIME_GOOD(-0.10)[text/plain];
	TO_DN_SOME(0.00)[];
	FREEMAIL_CC(0.00)[nxp.com,gmail.com,mediatek.com,linaro.org,collabora.com,arm.com,google.com,amd.com,kernel.org,qti.qualcomm.com,ffwll.ch,fooishbar.org,oss.qualcomm.com];
	RCPT_COUNT_TWELVE(0.00)[25];
	MIME_TRACE(0.00)[0:+];
	ARC_NA(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	DKIM_TRACE(0.00)[linaro.org:+];
	ASN(0.00)[asn:15169, ipnet:209.85.128.0/17, country:US];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	RCVD_COUNT_TWO(0.00)[2];
	FROM_EQ_ENVFROM(0.00)[];
	RCVD_IN_DNSWL_NONE(0.00)[209.85.208.47:from];
	PREVIOUSLY_DELIVERED(0.00)[linaro-mm-sig@lists.linaro.org];
	TAGGED_RCPT(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	RWL_MAILSPIKE_POSSIBLE(0.00)[209.85.208.47:from];
	FROM_HAS_DN(0.00)[]
X-Rspamd-Action: no action
X-Rspamd-Server: lists.linaro.org
X-Rspamd-Queue-Id: 5AFE945D7C
X-Spamd-Bar: -
Message-ID-Hash: EKR2JZ5MVD26PNKPMPDPC2UBXSGSCWJ5
X-Message-ID-Hash: EKR2JZ5MVD26PNKPMPDPC2UBXSGSCWJ5
X-MailFrom: jens.wiklander@linaro.org
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: Olivier Masse <olivier.masse@nxp.com>, Thierry Reding <thierry.reding@gmail.com>, Yong Wu <yong.wu@mediatek.com>, Sumit Semwal <sumit.semwal@linaro.org>, Benjamin Gaignard <benjamin.gaignard@collabora.com>, Brian Starkey <Brian.Starkey@arm.com>, John Stultz <jstultz@google.com>, "T . J . Mercier" <tjmercier@google.com>, =?UTF-8?q?Christian=20K=C3=B6nig?= <christian.koenig@amd.com>, Sumit Garg <sumit.garg@kernel.org>, Matthias Brugger <matthias.bgg@gmail.com>, AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>, azarrabi@qti.qualcomm.com, Simona Vetter <simona.vetter@ffwll.ch>, Daniel Stone <daniel@fooishbar.org>, Rouven Czerwinski <rouven.czerwinski@linaro.org>, robin.murphy@arm.com, Jens Wiklander <jens.wiklander@linaro.org>, Sumit Garg <sumit.garg@oss.qualcomm.com>
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] [PATCH v11 4/9] tee: refactor params_from_user()
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/EKR2JZ5MVD26PNKPMPDPC2UBXSGSCWJ5/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
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
Reviewed-by: Sumit Garg <sumit.garg@oss.qualcomm.com>
---
 drivers/tee/tee_core.c | 94 ++++++++++++++++++++++++------------------
 1 file changed, 54 insertions(+), 40 deletions(-)

diff --git a/drivers/tee/tee_core.c b/drivers/tee/tee_core.c
index 52f5806ed314..b89f93b1f8f2 100644
--- a/drivers/tee/tee_core.c
+++ b/drivers/tee/tee_core.c
@@ -354,6 +354,55 @@ tee_ioctl_shm_register(struct tee_context *ctx,
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
@@ -361,8 +410,8 @@ static int params_from_user(struct tee_context *ctx, struct tee_param *params,
 	size_t n;
 
 	for (n = 0; n < num_params; n++) {
-		struct tee_shm *shm;
 		struct tee_ioctl_param ip;
+		int rc;
 
 		if (copy_from_user(&ip, uparams + n, sizeof(ip)))
 			return -EFAULT;
@@ -385,45 +434,10 @@ static int params_from_user(struct tee_context *ctx, struct tee_param *params,
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
