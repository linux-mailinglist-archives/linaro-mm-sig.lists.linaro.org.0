Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 841DA6BBA76
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 15 Mar 2023 18:07:33 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 93FCE3F329
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 15 Mar 2023 17:07:32 +0000 (UTC)
Received: from mail.marcansoft.com (marcansoft.com [212.63.210.85])
	by lists.linaro.org (Postfix) with ESMTPS id 5B9A73F0B5
	for <linaro-mm-sig@lists.linaro.org>; Tue,  7 Mar 2023 14:28:26 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=asahilina.net header.s=default header.b=NzazbWrv;
	spf=pass (lists.linaro.org: domain of lina@asahilina.net designates 212.63.210.85 as permitted sender) smtp.mailfrom=lina@asahilina.net;
	dmarc=pass (policy=quarantine) header.from=asahilina.net
Received: from [127.0.0.1] (localhost [127.0.0.1])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: linasend@asahilina.net)
	by mail.marcansoft.com (Postfix) with ESMTPSA id 7AEE7426E8;
	Tue,  7 Mar 2023 14:28:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=asahilina.net;
	s=default; t=1678199305;
	bh=PLNwTx966zByawYI9/x7zPg7nR2YAfsS2pH/0itkzOI=;
	h=From:Date:Subject:References:In-Reply-To:To:Cc;
	b=NzazbWrvDmMavYRtui5Bhfs+u+J04jGyXpZVZtoYyF3xQqMtKMYT2GZx5PvDRsm/e
	 w3R2yDcXKlby6CeAko/nDjv33/b+TqqkjCDjjxqGZoryIAT09hbYc5lBBtC20slhoX
	 PM4NsdCzE/6fPFfIZtI5Y8URge/uP2kj2LHqzKFieNg37kJBpwG8nP7nzj51FgWN4C
	 /0LfQa+Re1R9H4/EB2yMqoE8dZhcitUfrwcLo44JkslEVJTwgQ14i+xnO3BdHQL0/N
	 jIi1IOSkF6gG/2F2gFlcWSoWYUqhIkf2J8wOoWwGFMv5Qm1HHamYDJ81VZKLDWzQLY
	 SFVO72HCjH8eA==
From: Asahi Lina <lina@asahilina.net>
Date: Tue, 07 Mar 2023 23:25:39 +0900
MIME-Version: 1.0
Message-Id: <20230307-rust-drm-v1-14-917ff5bc80a8@asahilina.net>
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
X-Developer-Signature: v=1; a=ed25519-sha256; t=1678199191; l=1043;
 i=lina@asahilina.net; s=20230221; h=from:subject:message-id;
 bh=PLNwTx966zByawYI9/x7zPg7nR2YAfsS2pH/0itkzOI=;
 b=MjFE04ydpFUIDjxSVNQLI84A5BtCxwGQPMyQgPalsSvbYqggHyxs6a9C0P0EIP/PLFM9RVKhD
 fHOskSTk3+WA8ZFMMr/ZHXxfKAlDqdNPAOYtZsZ2Vxzc7VvQoLpGV/a
X-Developer-Key: i=lina@asahilina.net; a=ed25519;
 pk=Qn8jZuOtR1m5GaiDfTrAoQ4NE1XoYVZ/wmt5YtXWFC4=
X-Rspamd-Action: no action
X-Rspamd-Server: lists.linaro.org
X-Rspamd-Queue-Id: 5B9A73F0B5
X-Spamd-Bar: --
X-Spamd-Result: default: False [-2.50 / 15.00];
	BAYES_HAM(-3.00)[99.99%];
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
Message-ID-Hash: SOZGUF5TGH3LIDKHOHHWMCW774UKYEIV
X-Message-ID-Hash: SOZGUF5TGH3LIDKHOHHWMCW774UKYEIV
X-Mailman-Approved-At: Wed, 15 Mar 2023 17:02:40 +0000
CC: Alyssa Rosenzweig <alyssa@rosenzweig.io>, Karol Herbst <kherbst@redhat.com>, Ella Stanforth <ella@iglunix.org>, Faith Ekstrand <faith.ekstrand@collabora.com>, Mary <mary@mary.zone>, linux-kernel@vger.kernel.org, dri-devel@lists.freedesktop.org, rust-for-linux@vger.kernel.org, linux-media@vger.kernel.org, linaro-mm-sig@lists.linaro.org, linux-sgx@vger.kernel.org, asahi@lists.linux.dev, Asahi Lina <lina@asahilina.net>
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] [PATCH RFC 14/18] rust: drm: gem: Add set_exportable() method
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/SOZGUF5TGH3LIDKHOHHWMCW774UKYEIV/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

This allows drivers to control whether a given GEM object is allowed to
be exported via PRIME to other drivers.
---
 rust/kernel/drm/gem/mod.rs | 7 +++++++
 1 file changed, 7 insertions(+)

diff --git a/rust/kernel/drm/gem/mod.rs b/rust/kernel/drm/gem/mod.rs
index e66bdef35c2e..196252a25b5a 100644
--- a/rust/kernel/drm/gem/mod.rs
+++ b/rust/kernel/drm/gem/mod.rs
@@ -135,6 +135,13 @@ pub trait BaseObject: IntoGEMObject {
         self.gem_ref().size
     }
 
+    /// Sets the exportable flag, which controls whether the object can be exported via PRIME.
+    fn set_exportable(&mut self, exportable: bool) {
+        // SAFETY: gem_obj() is valid per the type invariant, and this is safe to write if we
+        // are the only holder (mutable ref).
+        unsafe { (*self.gem_obj()).exportable = exportable };
+    }
+
     /// Creates a new reference to the object.
     fn reference(&self) -> ObjectRef<Self> {
         // SAFETY: Having a reference to an Object implies holding a GEM reference

-- 
2.35.1

_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org
