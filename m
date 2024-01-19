Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id C27B0832B36
	for <lists+linaro-mm-sig@lfdr.de>; Fri, 19 Jan 2024 15:16:34 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id D4F8443C20
	for <lists+linaro-mm-sig@lfdr.de>; Fri, 19 Jan 2024 14:16:33 +0000 (UTC)
Received: from aposti.net (aposti.net [89.234.176.197])
	by lists.linaro.org (Postfix) with ESMTPS id B33DB43D14
	for <linaro-mm-sig@lists.linaro.org>; Fri, 19 Jan 2024 14:14:49 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=crapouillou.net header.s=mail header.b=3LszNdqw;
	spf=pass (lists.linaro.org: domain of paul@crapouillou.net designates 89.234.176.197 as permitted sender) smtp.mailfrom=paul@crapouillou.net;
	dmarc=pass (policy=none) header.from=crapouillou.net
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=crapouillou.net;
	s=mail; t=1705673655;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=zL3Tp6j0FI2WH0LNy5N+K5/yV+yjLiDhRH8Apc3kyR0=;
	b=3LszNdqwVjq2wB4XbfV0SlOIPJE88IrYP6Nh6Aey3ecpOMPogYori6J5mRQT8+eARmgXUn
	kYdPu5/dlYKwuEclfM9xyYKYSrti2QlD4kewAKbelYZrc2+SJ6bJoEYnXfFlTrQ+Xhqm0+
	l2KMj978BvE776w0tCxib3B3dGAZeks=
From: Paul Cercueil <paul@crapouillou.net>
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	Jonathan Corbet <corbet@lwn.net>,
	Sumit Semwal <sumit.semwal@linaro.org>,
	=?UTF-8?q?Christian=20K=C3=B6nig?= <christian.koenig@amd.com>
Date: Fri, 19 Jan 2024 15:14:02 +0100
Message-ID: <20240119141402.44262-7-paul@crapouillou.net>
In-Reply-To: <20240119141402.44262-1-paul@crapouillou.net>
References: <20240119141402.44262-1-paul@crapouillou.net>
MIME-Version: 1.0
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-0.00 / 15.00];
	SPAM_FLAG(5.00)[];
	REPLY(-4.00)[];
	BAYES_HAM(-3.00)[100.00%];
	SUSPICIOUS_RECIPS(1.50)[];
	MID_CONTAINS_FROM(1.00)[];
	DMARC_POLICY_ALLOW(-0.50)[crapouillou.net,none];
	R_MISSING_CHARSET(0.50)[];
	R_SPF_ALLOW(-0.20)[+a:c];
	R_DKIM_ALLOW(-0.20)[crapouillou.net:s=mail];
	MIME_GOOD(-0.10)[text/plain];
	ASN(0.00)[asn:203432, ipnet:89.234.176.0/23, country:FR];
	MISSING_XM_UA(0.00)[];
	MIME_TRACE(0.00)[0:+];
	RCPT_COUNT_TWELVE(0.00)[14];
	ARC_NA(0.00)[];
	FROM_EQ_ENVFROM(0.00)[];
	FREEMAIL_CC(0.00)[kernel.org,gmail.com,analog.com,vger.kernel.org,lists.freedesktop.org,lists.linaro.org,crapouillou.net];
	TAGGED_RCPT(0.00)[];
	NEURAL_HAM(-0.00)[-0.425];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_ZERO(0.00)[0];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[crapouillou.net:+]
X-Rspamd-Server: lists.linaro.org
X-Rspamd-Queue-Id: B33DB43D14
X-Spamd-Bar: /
Message-ID-Hash: XC6GX3QCJCUAICIC7AHJRH6NFLY26T5A
X-Message-ID-Hash: XC6GX3QCJCUAICIC7AHJRH6NFLY26T5A
X-MailFrom: paul@crapouillou.net
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: Jonathan Cameron <jic23@kernel.org>, =?UTF-8?q?Nuno=20S=C3=A1?= <noname.nuno@gmail.com>, Michael Hennerich <Michael.Hennerich@analog.com>, linux-usb@vger.kernel.org, linux-doc@vger.kernel.org, linux-kernel@vger.kernel.org, linux-media@vger.kernel.org, dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org, Paul Cercueil <paul@crapouillou.net>
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] [PATCH v5 6/6] Documentation: usb: Document FunctionFS DMABUF API
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/XC6GX3QCJCUAICIC7AHJRH6NFLY26T5A/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

Add documentation for the three ioctls used to attach or detach
externally-created DMABUFs, and to request transfers from/to previously
attached DMABUFs.

Signed-off-by: Paul Cercueil <paul@crapouillou.net>

---
v3: New patch
---
 Documentation/usb/functionfs.rst | 36 ++++++++++++++++++++++++++++++++
 1 file changed, 36 insertions(+)

diff --git a/Documentation/usb/functionfs.rst b/Documentation/usb/functionfs.rst
index a3054bea38f3..d05a775bc45b 100644
--- a/Documentation/usb/functionfs.rst
+++ b/Documentation/usb/functionfs.rst
@@ -2,6 +2,9 @@
 How FunctionFS works
 ====================
 
+Overview
+========
+
 From kernel point of view it is just a composite function with some
 unique behaviour.  It may be added to an USB configuration only after
 the user space driver has registered by writing descriptors and
@@ -66,3 +69,36 @@ have been written to their ep0's.
 
 Conversely, the gadget is unregistered after the first USB function
 closes its endpoints.
+
+DMABUF interface
+================
+
+FunctionFS additionally supports a DMABUF based interface, where the
+userspace can attach DMABUF objects (externally created) to an endpoint,
+and subsequently use them for data transfers.
+
+A userspace application can then use this interface to share DMABUF
+objects between several interfaces, allowing it to transfer data in a
+zero-copy fashion, for instance between IIO and the USB stack.
+
+As part of this interface, three new IOCTLs have been added. These three
+IOCTLs have to be performed on a data endpoint (ie. not ep0). They are:
+
+  ``FUNCTIONFS_DMABUF_ATTACH(int)``
+    Attach the DMABUF object, identified by its file descriptor, to the
+    data endpoint. Returns zero on success, and a negative errno value
+    on error.
+
+  ``FUNCTIONFS_DMABUF_DETACH(int)``
+    Detach the given DMABUF object, identified by its file descriptor,
+    from the data endpoint. Returns zero on success, and a negative
+    errno value on error. Note that closing the endpoint's file
+    descriptor will automatically detach all attached DMABUFs.
+
+  ``FUNCTIONFS_DMABUF_TRANSFER(struct usb_ffs_dmabuf_transfer_req *)``
+    Enqueue the previously attached DMABUF to the transfer queue.
+    The argument is a structure that packs the DMABUF's file descriptor,
+    the size in bytes to transfer (which should generally correspond to
+    the size of the DMABUF), and a 'flags' field which is unused
+    for now. Returns zero on success, and a negative errno value on
+    error.
-- 
2.43.0

_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org
