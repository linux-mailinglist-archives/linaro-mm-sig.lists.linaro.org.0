Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id B6BCF818F10
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 19 Dec 2023 19:00:16 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id B8AF843EDF
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 19 Dec 2023 18:00:15 +0000 (UTC)
Received: from aposti.net (aposti.net [89.234.176.197])
	by lists.linaro.org (Postfix) with ESMTPS id C4C0D43EDD
	for <linaro-mm-sig@lists.linaro.org>; Tue, 19 Dec 2023 17:59:37 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=crapouillou.net header.s=mail header.b=J9fAlELL;
	spf=pass (lists.linaro.org: domain of paul@crapouillou.net designates 89.234.176.197 as permitted sender) smtp.mailfrom=paul@crapouillou.net;
	dmarc=pass (policy=none) header.from=crapouillou.net
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=crapouillou.net;
	s=mail; t=1703008226;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=6SosLHUfbvBusyQrjhEdH6qlujZTce4ql106/+fLWzw=;
	b=J9fAlELLwr4u9tQx12Md08M19jXx7ynqeRbwh2bn3D4jBBjrFqmsfNIv7OLIFcqqSLmdeN
	QC516M58Q7HMEZjPI/cYNl+yjV+mqFJMFElgpPlX/YGHL1beQenrhYuznSawwdxC2Tc7Iw
	FPKphSbHxxtpXJYnuOdVN8jzVvyOL/0=
From: Paul Cercueil <paul@crapouillou.net>
To: Jonathan Cameron <jic23@kernel.org>,
	Lars-Peter Clausen <lars@metafoo.de>,
	Sumit Semwal <sumit.semwal@linaro.org>,
	=?UTF-8?q?Christian=20K=C3=B6nig?= <christian.koenig@amd.com>,
	Vinod Koul <vkoul@kernel.org>,
	Jonathan Corbet <corbet@lwn.net>
Date: Tue, 19 Dec 2023 18:50:09 +0100
Message-ID: <20231219175009.65482-9-paul@crapouillou.net>
In-Reply-To: <20231219175009.65482-1-paul@crapouillou.net>
References: <20231219175009.65482-1-paul@crapouillou.net>
MIME-Version: 1.0
X-Rspamd-Server: lists.linaro.org
X-Rspamd-Action: add header
X-Spamd-Result: default: False [4.00 / 15.00];
	SPAM_FLAG(5.00)[];
	BAYES_HAM(-3.00)[100.00%];
	SUSPICIOUS_RECIPS(1.50)[];
	MID_CONTAINS_FROM(1.00)[];
	DMARC_POLICY_ALLOW(-0.50)[crapouillou.net,none];
	R_MISSING_CHARSET(0.50)[];
	R_SPF_ALLOW(-0.20)[+a:c];
	R_DKIM_ALLOW(-0.20)[crapouillou.net:s=mail];
	MIME_GOOD(-0.10)[text/plain];
	RCPT_COUNT_TWELVE(0.00)[16];
	MISSING_XM_UA(0.00)[];
	ARC_NA(0.00)[];
	MIME_TRACE(0.00)[0:+];
	ASN(0.00)[asn:203432, ipnet:89.234.176.0/23, country:FR];
	TAGGED_RCPT(0.00)[];
	GREYLIST(0.00)[pass,meta];
	TO_DN_SOME(0.00)[];
	FROM_HAS_DN(0.00)[];
	FREEMAIL_CC(0.00)[vger.kernel.org,lists.freedesktop.org,lists.linaro.org,gmail.com,analog.com,crapouillou.net];
	RCVD_COUNT_ZERO(0.00)[0];
	FROM_EQ_ENVFROM(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	DKIM_TRACE(0.00)[crapouillou.net:+]
X-Spam-Level: ****
X-Rspamd-Queue-Id: C4C0D43EDD
X-Spamd-Bar: ++++
Message-ID-Hash: L7RSAF72XGTI43TBJ63VN2DTISPFZFGP
X-Message-ID-Hash: L7RSAF72XGTI43TBJ63VN2DTISPFZFGP
X-MailFrom: paul@crapouillou.net
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: linux-doc@vger.kernel.org, linux-kernel@vger.kernel.org, dmaengine@vger.kernel.org, linux-iio@vger.kernel.org, linux-media@vger.kernel.org, dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org, =?UTF-8?q?Nuno=20S=C3=A1?= <noname.nuno@gmail.com>, Michael Hennerich <Michael.Hennerich@analog.com>, Paul Cercueil <paul@crapouillou.net>
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] [PATCH v5 8/8] Documentation: iio: Document high-speed DMABUF based API
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/L7RSAF72XGTI43TBJ63VN2DTISPFZFGP/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
X-Spam: Yes

Document the new DMABUF based API.

Signed-off-by: Paul Cercueil <paul@crapouillou.net>

---
v2: - Explicitly state that the new interface is optional and is
      not implemented by all drivers.
    - The IOCTLs can now only be called on the buffer FD returned by
      IIO_BUFFER_GET_FD_IOCTL.
    - Move the page up a bit in the index since it is core stuff and not
      driver-specific.

v3: Update the documentation to reflect the new API.

v5: Use description lists for the documentation of the three new IOCTLs
    instead of abusing subsections.
---
 Documentation/iio/dmabuf_api.rst | 54 ++++++++++++++++++++++++++++++++
 Documentation/iio/index.rst      |  2 ++
 2 files changed, 56 insertions(+)
 create mode 100644 Documentation/iio/dmabuf_api.rst

diff --git a/Documentation/iio/dmabuf_api.rst b/Documentation/iio/dmabuf_api.rst
new file mode 100644
index 000000000000..1cd6cd51a582
--- /dev/null
+++ b/Documentation/iio/dmabuf_api.rst
@@ -0,0 +1,54 @@
+.. SPDX-License-Identifier: GPL-2.0
+
+===================================
+High-speed DMABUF interface for IIO
+===================================
+
+1. Overview
+===========
+
+The Industrial I/O subsystem supports access to buffers through a
+file-based interface, with read() and write() access calls through the
+IIO device's dev node.
+
+It additionally supports a DMABUF based interface, where the userspace
+can attach DMABUF objects (externally created) to a IIO buffer, and
+subsequently use them for data transfers.
+
+A userspace application can then use this interface to share DMABUF
+objects between several interfaces, allowing it to transfer data in a
+zero-copy fashion, for instance between IIO and the USB stack.
+
+The userspace application can also memory-map the DMABUF objects, and
+access the sample data directly. The advantage of doing this vs. the
+read() interface is that it avoids an extra copy of the data between the
+kernel and userspace. This is particularly useful for high-speed devices
+which produce several megabytes or even gigabytes of data per second.
+It does however increase the userspace-kernelspace synchronization
+overhead, as the DMA_BUF_SYNC_START and DMA_BUF_SYNC_END IOCTLs have to
+be used for data integrity.
+
+2. User API
+===========
+
+As part of this interface, three new IOCTLs have been added. These three
+IOCTLs have to be performed on the IIO buffer's file descriptor,
+obtained using the IIO_BUFFER_GET_FD_IOCTL() ioctl.
+
+  ``IIO_BUFFER_DMABUF_ATTACH_IOCTL(int)``
+    Attach the DMABUF object, identified by its file descriptor, to the
+    IIO buffer. Returns zero on success, and a negative errno value on
+    error.
+
+  ``IIO_BUFFER_DMABUF_DETACH_IOCTL(int)``
+    Detach the given DMABUF object, identified by its file descriptor,
+    from the IIO buffer. Returns zero on success, and a negative errno
+    value on error.
+
+    Note that closing the IIO buffer's file descriptor will
+    automatically detach all previously attached DMABUF objects.
+
+  ``IIO_BUFFER_DMABUF_ENQUEUE_IOCTL(struct iio_dmabuf *iio_dmabuf)``
+    Enqueue a previously attached DMABUF object to the buffer queue.
+    Enqueued DMABUFs will be read from (if output buffer) or written to
+    (if input buffer) as long as the buffer is enabled.
diff --git a/Documentation/iio/index.rst b/Documentation/iio/index.rst
index 1b7292c58cd0..3eae8fcb1938 100644
--- a/Documentation/iio/index.rst
+++ b/Documentation/iio/index.rst
@@ -9,6 +9,8 @@ Industrial I/O
 
    iio_configfs
 
+   dmabuf_api
+
    ep93xx_adc
 
    bno055
-- 
2.43.0

_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org
