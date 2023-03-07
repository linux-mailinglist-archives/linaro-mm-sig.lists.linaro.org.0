Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 5AAAC6BBA71
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 15 Mar 2023 18:07:12 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 67D5D3F329
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 15 Mar 2023 17:07:11 +0000 (UTC)
Received: from mail.marcansoft.com (marcansoft.com [212.63.210.85])
	by lists.linaro.org (Postfix) with ESMTPS id E76B33F0A9
	for <linaro-mm-sig@lists.linaro.org>; Tue,  7 Mar 2023 14:28:18 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=asahilina.net header.s=default header.b=UbEW7nhe;
	spf=pass (lists.linaro.org: domain of lina@asahilina.net designates 212.63.210.85 as permitted sender) smtp.mailfrom=lina@asahilina.net;
	dmarc=pass (policy=quarantine) header.from=asahilina.net
Received: from [127.0.0.1] (localhost [127.0.0.1])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: linasend@asahilina.net)
	by mail.marcansoft.com (Postfix) with ESMTPSA id 10542426FB;
	Tue,  7 Mar 2023 14:28:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=asahilina.net;
	s=default; t=1678199298;
	bh=MCSNjz0XdUk8QMw6DI+sZ1Eor9e+x9M609zyvRsQaWY=;
	h=From:Date:Subject:References:In-Reply-To:To:Cc;
	b=UbEW7nheyb0tOOAygWaSPCZ+F55R6/L037rcLQv+Flnc4JXqhYMzSr0ujBWUAvUtY
	 /Yc3Zf8Wp+e5wAkA0caTWNAvHNUYTAHI7RPinFoVJDVSncnHyhMu80eFQcet54/Qup
	 6KxeRC+wlz8S1quYAcncu1i8tEl6ddeRK6zpRS9ELDktUWB763a/cIoAqoqBLKd0ZY
	 CC54HSd0IMFq7UN3me2x2MhagmLdM4mOFAEQlgdJzf10bDCALIdJEBtAh6wES8KDxP
	 dHJOPH2J/BuKksEJPo8MtoA1aKpeNKOLxpwJGKMShbj5usWTz5hi7SwD2pYAw6OwfN
	 n1AwDNbf6T3NA==
From: Asahi Lina <lina@asahilina.net>
Date: Tue, 07 Mar 2023 23:25:38 +0900
MIME-Version: 1.0
Message-Id: <20230307-rust-drm-v1-13-917ff5bc80a8@asahilina.net>
References: <20230307-rust-drm-v1-0-917ff5bc80a8@asahilina.net>
In-Reply-To: <20230307-rust-drm-v1-0-917ff5bc80a8@asahilina.net>
To: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>,
 David Airlie <airlied@gmail.com>, Daniel Vetter <daniel@ffwll.ch>,
 Miguel Ojeda <ojeda@kernel.org>, Alex Gaynor <alex.gaynor@gmail.com>,
 Wedson Almeida Filho <wedsonaf@gmail.com>,
 Boqun Feng <boqun.feng@gmail.com>, Gary Guo <gary@garyguo.net>,
 =?utf-8?q?Bj=C3=B6rn_Roy_Baron?= <bjorn3_gh@protonmail.com>,
 Sumit Semwal <sumit.semwal@linaro.org>,
 =?utf-8?q?Christian_K=C3=B6nig?= <christian.koenig@amd.com>,
 Luben Tuikov <luben.tuikov@amd.com>, Jarkko Sakkinen <jarkko@kernel.org>,
 Dave Hansen <dave.hansen@linux.intel.com>
X-Mailer: b4 0.12.0
X-Developer-Signature: v=1; a=ed25519-sha256; t=1678199191; l=1912;
 i=lina@asahilina.net; s=20230221; h=from:subject:message-id;
 bh=MCSNjz0XdUk8QMw6DI+sZ1Eor9e+x9M609zyvRsQaWY=;
 b=xT82aRgu2Cl7t2vQWiQlj1BNR6l2Ur2R/6RgHsZ1B0Ituy+ZDVtv/o0c0RjUcXwEGpBtoJKVX
 +XfQ4py0kEHAfwGzh14DmvngfQjE0HhULuaio4lqxNvMzYCWNi4IIAA
X-Developer-Key: i=lina@asahilina.net; a=ed25519;
 pk=Qn8jZuOtR1m5GaiDfTrAoQ4NE1XoYVZ/wmt5YtXWFC4=
X-Rspamd-Action: no action
X-Rspamd-Server: lists.linaro.org
X-Rspamd-Queue-Id: E76B33F0A9
X-Spamd-Bar: --
X-Spamd-Result: default: False [-2.50 / 15.00];
	BAYES_HAM(-3.00)[100.00%];
	SUSPICIOUS_RECIPS(1.50)[];
	DMARC_POLICY_ALLOW(-0.50)[asahilina.net,quarantine];
	R_SPF_ALLOW(-0.20)[+mx:c];
	R_DKIM_ALLOW(-0.20)[asahilina.net:s=default];
	MIME_GOOD(-0.10)[text/plain];
	RCPT_COUNT_TWELVE(0.00)[29];
	NEURAL_HAM(-0.00)[-1.000];
	FREEMAIL_TO(0.00)[linux.intel.com,kernel.org,suse.de,gmail.com,ffwll.ch,garyguo.net,protonmail.com,linaro.org,amd.com];
	MIME_TRACE(0.00)[0:+];
	FROM_EQ_ENVFROM(0.00)[];
	ASN(0.00)[asn:30880, ipnet:212.63.192.0/19, country:SE];
	DKIM_TRACE(0.00)[asahilina.net:+];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	RCVD_COUNT_TWO(0.00)[2];
	FROM_HAS_DN(0.00)[];
	RCVD_TLS_ALL(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TO_DN_SOME(0.00)[];
	TAGGED_RCPT(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	ARC_NA(0.00)[]
X-MailFrom: lina@asahilina.net
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
Message-ID-Hash: PW7ITOFSEAGA3KJ3LMQXW55IJOFS4CVG
X-Message-ID-Hash: PW7ITOFSEAGA3KJ3LMQXW55IJOFS4CVG
X-Mailman-Approved-At: Wed, 15 Mar 2023 17:02:40 +0000
CC: Alyssa Rosenzweig <alyssa@rosenzweig.io>, Karol Herbst <kherbst@redhat.com>, Ella Stanforth <ella@iglunix.org>, Faith Ekstrand <faith.ekstrand@collabora.com>, Mary <mary@mary.zone>, linux-kernel@vger.kernel.org, dri-devel@lists.freedesktop.org, rust-for-linux@vger.kernel.org, linux-media@vger.kernel.org, linaro-mm-sig@lists.linaro.org, linux-sgx@vger.kernel.org, asahi@lists.linux.dev, Asahi Lina <lina@asahilina.net>
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] [PATCH RFC 13/18] drm/gem: Add a flag to control whether objects can be exported
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/PW7ITOFSEAGA3KJ3LMQXW55IJOFS4CVG/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

Drivers may want to support driver-private objects, which cannot be
shared. This allows them to share a single lock and enables other
optimizations.

Add an `exportable` field to drm_gem_object, which blocks PRIME export
if set to false. It is initialized to true in
drm_gem_private_object_init.

Signed-off-by: Asahi Lina <lina@asahilina.net>
---
 drivers/gpu/drm/drm_gem.c   | 1 +
 drivers/gpu/drm/drm_prime.c | 5 +++++
 include/drm/drm_gem.h       | 8 ++++++++
 3 files changed, 14 insertions(+)

diff --git a/drivers/gpu/drm/drm_gem.c b/drivers/gpu/drm/drm_gem.c
index 7a3cb08dc942..152ad9295a8d 100644
--- a/drivers/gpu/drm/drm_gem.c
+++ b/drivers/gpu/drm/drm_gem.c
@@ -166,6 +166,7 @@ void drm_gem_private_object_init(struct drm_device *dev,
 
 	drm_vma_node_reset(&obj->vma_node);
 	INIT_LIST_HEAD(&obj->lru_node);
+	obj->exportable = true;
 }
 EXPORT_SYMBOL(drm_gem_private_object_init);
 
diff --git a/drivers/gpu/drm/drm_prime.c b/drivers/gpu/drm/drm_prime.c
index f924b8b4ab6b..9d2dd982580e 100644
--- a/drivers/gpu/drm/drm_prime.c
+++ b/drivers/gpu/drm/drm_prime.c
@@ -391,6 +391,11 @@ static struct dma_buf *export_and_register_object(struct drm_device *dev,
 		return dmabuf;
 	}
 
+	if (!obj->exportable) {
+		dmabuf = ERR_PTR(-EINVAL);
+		return dmabuf;
+	}
+
 	if (obj->funcs && obj->funcs->export)
 		dmabuf = obj->funcs->export(obj, flags);
 	else
diff --git a/include/drm/drm_gem.h b/include/drm/drm_gem.h
index 772a4adf5287..852dec3cf763 100644
--- a/include/drm/drm_gem.h
+++ b/include/drm/drm_gem.h
@@ -361,6 +361,14 @@ struct drm_gem_object {
 	 * The current LRU list that the GEM object is on.
 	 */
 	struct drm_gem_lru *lru;
+
+	/**
+	 * @exportable:
+	 *
+	 * Whether this GEM object can be exported via the drm_gem_object_funcs->export
+	 * callback. Defaults to true.
+	 */
+	bool exportable;
 };
 
 /**

-- 
2.35.1

_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org
