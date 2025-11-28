Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id yDx6HIkB4WmJoQAAu9opvQ
	(envelope-from <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>)
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 16 Apr 2026 17:34:33 +0200
X-Original-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [44.210.186.118])
	by mail.lfdr.de (Postfix) with ESMTPS id 114CF410EEC
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 16 Apr 2026 17:34:33 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 24E3744559
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 16 Apr 2026 15:34:32 +0000 (UTC)
Received: from mail-wm1-f74.google.com (mail-wm1-f74.google.com [209.85.128.74])
	by lists.linaro.org (Postfix) with ESMTPS id 805733F6F2
	for <linaro-mm-sig@lists.linaro.org>; Fri, 28 Nov 2025 14:14:33 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=google.com header.s=20230601 header.b=ILclekbt;
	spf=pass (lists.linaro.org: domain of 3SK4paQkKDZs5GD79MTCGBJJBG9.7JHGDI5MJ-HH-NDBGDNON.GDI5MJ.JMB@flex--aliceryhl.bounces.google.com designates 209.85.128.74 as permitted sender) smtp.mailfrom=3SK4paQkKDZs5GD79MTCGBJJBG9.7JHGDI5MJ-HH-NDBGDNON.GDI5MJ.JMB@flex--aliceryhl.bounces.google.com;
	dmarc=pass (policy=reject) header.from=google.com
Received: by mail-wm1-f74.google.com with SMTP id 5b1f17b1804b1-477a11d9f89so9760335e9.3
        for <linaro-mm-sig@lists.linaro.org>; Fri, 28 Nov 2025 06:14:33 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=google.com; s=20230601; t=1764339272; x=1764944072; darn=lists.linaro.org;
        h=cc:to:from:subject:message-id:references:mime-version:in-reply-to
         :date:from:to:cc:subject:date:message-id:reply-to;
        bh=lHrITmuzWJXdDupbiDV048x4k5m6cyc9L7Gnz7XV3lw=;
        b=ILclekbtKKPMGczjTTv6VZptqLbWmkYkquuHDmXCZCksbTpjraYeDim0YeMW3ZZunT
         oSxX98kCljTpkQVCo/hP1tEBSpaWyyrlx5lAraIAb+55GjOnMbs0U5WjRPa+SbDwb1xf
         zG57UXqx5M2CXzqZrgSf4cd2Oh/4GONOb3QFwqRhixJbipOpcGTl32KSntmxweErt2hp
         xY5O4erN+HbbV0zSWYhzY9aYB7urOXQoLjX09cTIqeClIJDZNRIP4nxdJ8vwmm1WjJ8+
         /lBdfuZNuQWDB2ZM8cd0A12giCl+e5By6js6s+JnzUfEPg2Uzym/RpT4t5OB8YsIqfqQ
         vIxg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1764339272; x=1764944072;
        h=cc:to:from:subject:message-id:references:mime-version:in-reply-to
         :date:x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=lHrITmuzWJXdDupbiDV048x4k5m6cyc9L7Gnz7XV3lw=;
        b=e05gLKxa3/gsUAxD1HWRvF3d5cYPBzapNxaqC2CTuqc1+9rhllMTgqtDTd6dA5OEuX
         EPkuOIhI7YYJKvXOaL0zvgFGaERkGn5Jk2U4+lyVU4gr5WVFnEZc6EKsKqHfFclh16Of
         ZJyE2pf9TDq1m8XuO1EnZgUROTCaLlzUsbbQtepopnHWjEe65C6b3p+pANnSuliciWjp
         mrHOkoeA0oUJhqpDPXbOBFj/uy3cAeEMeUa7erpDP0MTxhkMyXyk/RrpWs5tzVWOWf2q
         zduxO6qBRojYo+wbyhqROAThZZgeq3A2OxlzCbKwyPsDP+N2nJXNMmcWPiOhx15T8w0E
         NSMg==
X-Forwarded-Encrypted: i=1; AJvYcCUcx+nG+dYf2TOTyQfHyueM2J9K8loHGplCV77x1zs5Xdu4kNMXZJRugbW3K+LcX8monTzYTYH52Iu7N55v@lists.linaro.org
X-Gm-Message-State: AOJu0YxL8SGQo78IlIkXB48YRfG7KJ8Qn1dbOOlZDZIGc0zJT+FcFNDM
	io3ICVqGmCuISjPLXX+KKP2A5QPv617uVlZUh9q0PdSYcZy3GwerhN29AK454egwk1l70om+F5v
	6nRYutucp+zy8usiN2A==
X-Google-Smtp-Source: AGHT+IECdIY/9qERVbVkHVqKEZYtL5qsUp1NRe18CXbO6AbEkFwz27YZTq95W0cUq+5TnNigDeIpYGUpIZBNCto=
X-Received: from wmfv21.prod.google.com ([2002:a05:600c:15d5:b0:477:93dd:bbb1])
 (user=aliceryhl job=prod-delivery.src-stubby-dispatcher) by
 2002:a05:600c:1994:b0:477:5aaa:57a6 with SMTP id 5b1f17b1804b1-477c016e402mr252259955e9.10.1764339272424;
 Fri, 28 Nov 2025 06:14:32 -0800 (PST)
Date: Fri, 28 Nov 2025 14:14:17 +0000
In-Reply-To: <20251128-gpuvm-rust-v1-0-ebf66bf234e0@google.com>
Mime-Version: 1.0
References: <20251128-gpuvm-rust-v1-0-ebf66bf234e0@google.com>
X-Developer-Key: i=aliceryhl@google.com; a=openpgp; fpr=49F6C1FAA74960F43A5B86A1EE7A392FDE96209F
X-Developer-Signature: v=1; a=openpgp-sha256; l=2726; i=aliceryhl@google.com;
 h=from:subject:message-id; bh=lZr2m+mQ4TpwozXWPOtl3qOpvh0GxfNQ2/kgcwntGLw=;
 b=owEBbQKS/ZANAwAKAQRYvu5YxjlGAcsmYgBpKa5CqER6z4BX6lmNpQE1dtbBv6O4gMLCZQRm2
 WIxSJ5CygqJAjMEAAEKAB0WIQSDkqKUTWQHCvFIvbIEWL7uWMY5RgUCaSmuQgAKCRAEWL7uWMY5
 RoGHEACKyrVlHckRCicF0bWCsQj6fIzJXXP4G9d2IdRlfrGJTT9IHHZefQtZHYrRj4CuKEHPn78
 vq/7/57MFjLU9h01oEVnydbK1d4b2Q61FBF2O1QHxZXg+jQ5Lpda/paKmnAE6lEW5D0TD6xiknJ
 3pibIUf3+qLTJLpUBj63kogyRSrhLlKoIj9hnPt/Bv0onkMIdS5ci5JVncTYEY5gayTCb8Tilq+
 DOeStdEObylbdRE9O35R/Ieif6/cs6he7iB2RxcU1TOdlUR7S7AOTpeUN5uQtEQKkAFE560gkEO
 0I70691h8RJ+/z04Su3AU6JfvIi/aJRNT8vJnANVSczkAMg0qY/qK3owkrZzwEe+OkNs1TXqhMn
 93h/68baGdXCW0p4qGl2nlOYbe7Pk2/r4PgOPTtl1JGuyoaGbrmyVNmTQtCaOgr2StrDFDmLqdY
 MKBVUVQk8BOid6B4nYOens1zzK/WfMOTtAPO4IFmS2cE76XkieTzgLSgdUcLCGZF2iG1RSqG6IQ
 jHN9uSXjLHA/tlhHvxmP4AQhYvAJthXJmdu6oBwXIosPV3odLP+8Y0QlMSw2kG0Xtxd7sOfZvBV
 +pOUdZ60pmFJKPnT8SU8Sfo1BjxArZnN7evYc7mDEU+AXJOMKjtx8wvu7I5+iw3DzxIpcAt9V2R DmXD6m+pLHlNvtA==
X-Mailer: b4 0.14.2
Message-ID: <20251128-gpuvm-rust-v1-3-ebf66bf234e0@google.com>
From: Alice Ryhl <aliceryhl@google.com>
To: Danilo Krummrich <dakr@kernel.org>, Daniel Almeida <daniel.almeida@collabora.com>
X-Spamd-Bar: ---
X-MailFrom: 3SK4paQkKDZs5GD79MTCGBJJBG9.7JHGDI5MJ-HH-NDBGDNON.GDI5MJ.JMB@flex--aliceryhl.bounces.google.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
Message-ID-Hash: GH23JGCDOBB23WMJBIP4AZ26FGB62GLE
X-Message-ID-Hash: GH23JGCDOBB23WMJBIP4AZ26FGB62GLE
X-Mailman-Approved-At: Thu, 16 Apr 2026 15:07:23 +0000
CC: Matthew Brost <matthew.brost@intel.com>, =?utf-8?q?Thomas_Hellstr=C3=B6m?= <thomas.hellstrom@linux.intel.com>, Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>, David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>, Boris Brezillon <boris.brezillon@collabora.com>, Steven Price <steven.price@arm.com>, Liviu Dudau <liviu.dudau@arm.com>, Miguel Ojeda <ojeda@kernel.org>, Boqun Feng <boqun.feng@gmail.com>, Gary Guo <gary@garyguo.net>, =?utf-8?q?Bj=C3=B6rn_Roy_Baron?= <bjorn3_gh@protonmail.com>, Benno Lossin <lossin@kernel.org>, Andreas Hindborg <a.hindborg@kernel.org>, Trevor Gross <tmgross@umich.edu>, Frank Binns <frank.binns@imgtec.com>, Matt Coster <matt.coster@imgtec.com>, Rob Clark <robin.clark@oss.qualcomm.com>, Dmitry Baryshkov <lumag@kernel.org>, Abhinav Kumar <abhinav.kumar@linux.dev>, Jessica Zhang <jessica.zhang@oss.qualcomm.com>, Sean Paul <sean@poorly.run>, Marijn Suijten <marijn
 .suijten@somainline.org>, Lyude Paul <lyude@redhat.com>, Lucas De Marchi <lucas.demarchi@intel.com>, Rodrigo Vivi <rodrigo.vivi@intel.com>, Sumit Semwal <sumit.semwal@linaro.org>, =?utf-8?q?Christian_K=C3=B6nig?= <christian.koenig@amd.com>, dri-devel@lists.freedesktop.org, linux-kernel@vger.kernel.org, rust-for-linux@vger.kernel.org, linux-arm-msm@vger.kernel.org, freedreno@lists.freedesktop.org, nouveau@lists.freedesktop.org, intel-xe@lists.freedesktop.org, linux-media@vger.kernel.org, linaro-mm-sig@lists.linaro.org, Alice Ryhl <aliceryhl@google.com>
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] [PATCH 3/4] drm/gpuvm: use const for drm_gpuva_op_* ptrs
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/GH23JGCDOBB23WMJBIP4AZ26FGB62GLE/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
X-Spamd-Result: default: False [4.49 / 15.00];
	DMARC_POLICY_REJECT(2.00)[google.com : SPF not aligned (relaxed), No valid DKIM,reject];
	SUSPICIOUS_RECIPS(1.50)[];
	DATE_IN_PAST(1.00)[3337];
	MV_CASE(0.50)[];
	R_SPF_ALLOW(-0.20)[+mx:c];
	MAILLIST(-0.20)[mailman];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[lists,linaro-mm-sig=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[42];
	RCVD_COUNT_THREE(0.00)[3];
	GREYLIST(0.00)[pass,meta];
	ARC_NA(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FREEMAIL_CC(0.00)[intel.com,linux.intel.com,kernel.org,suse.de,gmail.com,ffwll.ch,collabora.com,arm.com,garyguo.net,protonmail.com,umich.edu,imgtec.com,oss.qualcomm.com,linux.dev,poorly.run,somainline.org,redhat.com,linaro.org,amd.com,lists.freedesktop.org,vger.kernel.org,lists.linaro.org,google.com];
	NEURAL_SPAM(0.00)[0.999];
	TO_DN_SOME(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[aliceryhl@google.com,linaro-mm-sig-bounces@lists.linaro.org];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_RCPT(0.00)[linaro-mm-sig];
	MID_RHS_MATCH_FROM(0.00)[];
	ASN(0.00)[asn:14618, ipnet:44.192.0.0/11, country:US];
	DBL_BLOCKED_OPENRESOLVER(0.00)[linaro.org:email,lists.linaro.org:helo,lists.linaro.org:rdns]
X-Rspamd-Queue-Id: 114CF410EEC
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

These methods just read the values stored in the op pointers without
modifying them, so it is appropriate to use const ptrs here.

This allows us to avoid const -> mut pointer casts in Rust.

Signed-off-by: Alice Ryhl <aliceryhl@google.com>
---
 drivers/gpu/drm/drm_gpuvm.c | 6 +++---
 include/drm/drm_gpuvm.h     | 8 ++++----
 2 files changed, 7 insertions(+), 7 deletions(-)

diff --git a/drivers/gpu/drm/drm_gpuvm.c b/drivers/gpu/drm/drm_gpuvm.c
index 9cd06c7600dc32ceee0f0beb5e3daf31698a66b3..e06b58aabb8ea6ebd92c625583ae2852c9d2caf1 100644
--- a/drivers/gpu/drm/drm_gpuvm.c
+++ b/drivers/gpu/drm/drm_gpuvm.c
@@ -2283,7 +2283,7 @@ EXPORT_SYMBOL_GPL(drm_gpuvm_interval_empty);
 void
 drm_gpuva_map(struct drm_gpuvm *gpuvm,
 	      struct drm_gpuva *va,
-	      struct drm_gpuva_op_map *op)
+	      const struct drm_gpuva_op_map *op)
 {
 	drm_gpuva_init_from_op(va, op);
 	drm_gpuva_insert(gpuvm, va);
@@ -2303,7 +2303,7 @@ EXPORT_SYMBOL_GPL(drm_gpuva_map);
 void
 drm_gpuva_remap(struct drm_gpuva *prev,
 		struct drm_gpuva *next,
-		struct drm_gpuva_op_remap *op)
+		const struct drm_gpuva_op_remap *op)
 {
 	struct drm_gpuva *va = op->unmap->va;
 	struct drm_gpuvm *gpuvm = va->vm;
@@ -2330,7 +2330,7 @@ EXPORT_SYMBOL_GPL(drm_gpuva_remap);
  * Removes the &drm_gpuva associated with the &drm_gpuva_op_unmap.
  */
 void
-drm_gpuva_unmap(struct drm_gpuva_op_unmap *op)
+drm_gpuva_unmap(const struct drm_gpuva_op_unmap *op)
 {
 	drm_gpuva_remove(op->va);
 }
diff --git a/include/drm/drm_gpuvm.h b/include/drm/drm_gpuvm.h
index 0d3fc1f6cac9966a42f3bc82b0b491bfefaf5b96..655bd9104ffb24170fca14dfa034ee79f5400930 100644
--- a/include/drm/drm_gpuvm.h
+++ b/include/drm/drm_gpuvm.h
@@ -1121,7 +1121,7 @@ void drm_gpuva_ops_free(struct drm_gpuvm *gpuvm,
 			struct drm_gpuva_ops *ops);
 
 static inline void drm_gpuva_init_from_op(struct drm_gpuva *va,
-					  struct drm_gpuva_op_map *op)
+					  const struct drm_gpuva_op_map *op)
 {
 	va->va.addr = op->va.addr;
 	va->va.range = op->va.range;
@@ -1265,13 +1265,13 @@ int drm_gpuvm_sm_unmap_exec_lock(struct drm_gpuvm *gpuvm, struct drm_exec *exec,
 
 void drm_gpuva_map(struct drm_gpuvm *gpuvm,
 		   struct drm_gpuva *va,
-		   struct drm_gpuva_op_map *op);
+		   const struct drm_gpuva_op_map *op);
 
 void drm_gpuva_remap(struct drm_gpuva *prev,
 		     struct drm_gpuva *next,
-		     struct drm_gpuva_op_remap *op);
+		     const struct drm_gpuva_op_remap *op);
 
-void drm_gpuva_unmap(struct drm_gpuva_op_unmap *op);
+void drm_gpuva_unmap(const struct drm_gpuva_op_unmap *op);
 
 /**
  * drm_gpuva_op_remap_to_unmap_range() - Helper to get the start and range of

-- 
2.52.0.487.g5c8c507ade-goog

_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org
