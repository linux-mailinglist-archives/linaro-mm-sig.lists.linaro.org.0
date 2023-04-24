Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id BF1026D4D35
	for <lists+linaro-mm-sig@lfdr.de>; Mon,  3 Apr 2023 18:07:49 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id CEF583F5BD
	for <lists+linaro-mm-sig@lfdr.de>; Mon,  3 Apr 2023 16:07:48 +0000 (UTC)
Received: from aposti.net (aposti.net [89.234.176.197])
	by lists.linaro.org (Postfix) with ESMTPS id 66FED3ED6B
	for <linaro-mm-sig@lists.linaro.org>; Mon,  3 Apr 2023 16:07:07 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=crapouillou.net header.s=mail header.b=DEzFQ5dH;
	spf=pass (lists.linaro.org: domain of paul@crapouillou.net designates 89.234.176.197 as permitted sender) smtp.mailfrom=paul@crapouillou.net;
	dmarc=pass (policy=none) header.from=crapouillou.net
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=crapouillou.net;
	s=mail; t=1680537006;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=WQ7k7KsV39QPGYjokDQtx5Buy0HkE7q//zbkWOqAhK8=;
	b=DEzFQ5dHQ52MTjpnNy7RIpuyYfglVdd9G+QCmQAVvx+THx1Dg3RcG9JdnozS0UiT+lI+RR
	CwJVsJsAsQoVJKd/Og7/j2Tt0PnG/Sny+C9Ea9H9gfozB95dYUVccWs0aEeC/OjeWUzyfq
	tjjtxRST8Z3B0Ek776+YV19sFnLRNGg=
From: Paul Cercueil <paul@crapouillou.net>
To: Jonathan Cameron <jic23@kernel.org>,
	Lars-Peter Clausen <lars@metafoo.de>,
	Vinod Koul <vkoul@kernel.org>,
	Michael Hennerich <Michael.Hennerich@analog.com>,
	=?UTF-8?q?Nuno=20S=C3=A1?= <noname.nuno@gmail.com>,
	Sumit Semwal <sumit.semwal@linaro.org>,
	=?UTF-8?q?Christian=20K=C3=B6nig?= <christian.koenig@amd.com>
Date: Mon,  3 Apr 2023 17:49:55 +0200
Message-Id: <20230403154955.216148-2-paul@crapouillou.net>
In-Reply-To: <20230403154955.216148-1-paul@crapouillou.net>
References: <20230403154800.215924-1-paul@crapouillou.net>
 <20230403154955.216148-1-paul@crapouillou.net>
MIME-Version: 1.0
X-Rspamd-Action: no action
X-Rspamd-Server: lists.linaro.org
X-Spam-Level: **
X-Rspamd-Queue-Id: 66FED3ED6B
X-Spamd-Result: default: False [2.50 / 15.00];
	SPAM_FLAG(5.00)[];
	BAYES_HAM(-3.00)[100.00%];
	SUSPICIOUS_RECIPS(1.50)[];
	MID_CONTAINS_FROM(1.00)[];
	RCVD_DKIM_ARC_DNSWL_HI(-1.00)[];
	R_MISSING_CHARSET(0.50)[];
	RCVD_IN_DNSWL_HI(-0.50)[89.234.176.197:from];
	DMARC_POLICY_ALLOW(-0.50)[crapouillou.net,none];
	R_DKIM_ALLOW(-0.20)[crapouillou.net:s=mail];
	R_SPF_ALLOW(-0.20)[+a];
	MIME_GOOD(-0.10)[text/plain];
	RCVD_COUNT_ZERO(0.00)[0];
	ASN(0.00)[asn:203432, ipnet:89.234.176.0/23, country:FR];
	FROM_EQ_ENVFROM(0.00)[];
	FREEMAIL_TO(0.00)[kernel.org,metafoo.de,analog.com,gmail.com,linaro.org,amd.com];
	MIME_TRACE(0.00)[0:+];
	RCPT_COUNT_TWELVE(0.00)[16];
	TO_DN_SOME(0.00)[];
	NEURAL_SPAM(0.00)[0.913];
	TAGGED_RCPT(0.00)[];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[crapouillou.net:+];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	ARC_NA(0.00)[]
X-Spamd-Bar: ++
Message-ID-Hash: O465F27NRSUJISSUO2RHLFJUM4A3R7TD
X-Message-ID-Hash: O465F27NRSUJISSUO2RHLFJUM4A3R7TD
X-MailFrom: paul@crapouillou.net
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: linux-kernel@vger.kernel.org, dmaengine@vger.kernel.org, linux-iio@vger.kernel.org, linux-media@vger.kernel.org, dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org, Paul Cercueil <paul@crapouillou.net>, Jonathan Corbet <corbet@lwn.net>, linux-doc@vger.kernel.org
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] [PATCH v3 11/11] Documentation: iio: Document high-speed DMABUF based API
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/O465F27NRSUJISSUO2RHLFJUM4A3R7TD/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

Document the new DMABUF based API.

Signed-off-by: Paul Cercueil <paul@crapouillou.net>
Cc: Jonathan Corbet <corbet@lwn.net>
Cc: linux-doc@vger.kernel.org

---
v2: - Explicitly state that the new interface is optional and is
      not implemented by all drivers.
    - The IOCTLs can now only be called on the buffer FD returned by
      IIO_BUFFER_GET_FD_IOCTL.
    - Move the page up a bit in the index since it is core stuff and not
      driver-specific.
v3: Update the documentation to reflect the new API.
---
 Documentation/iio/dmabuf_api.rst | 59 ++++++++++++++++++++++++++++++++
 Documentation/iio/index.rst      |  2 ++
 2 files changed, 61 insertions(+)
 create mode 100644 Documentation/iio/dmabuf_api.rst

diff --git a/Documentation/iio/dmabuf_api.rst b/Documentation/iio/dmabuf_api.rst
new file mode 100644
index 000000000000..4d70372c7ebd
--- /dev/null
+++ b/Documentation/iio/dmabuf_api.rst
@@ -0,0 +1,59 @@
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
+``IIO_BUFFER_DMABUF_ATTACH_IOCTL(int)``
+----------------------------------------------------------------
+
+Attach the DMABUF object, identified by its file descriptor, to the IIO
+buffer. Returns zero on success, and a negative errno value on error.
+
+``IIO_BUFFER_DMABUF_DETACH_IOCTL(int)``
+--------------------------------------------------------
+
+Detach the given DMABUF object, identified by its file descriptor, from
+the IIO buffer. Returns zero on success, and a negative errno value on
+error.
+
+Note that closing the IIO buffer's file descriptor will automatically
+detach all previously attached DMABUF objects.
+
+``IIO_BUFFER_DMABUF_ENQUEUE_IOCTL(struct iio_dmabuf *iio_dmabuf)``
+--------------------------------------------------------
+
+Enqueue a previously attached DMABUF object to the buffer queue.
+Enqueued DMABUFs will be read from (if output buffer) or written to
+(if input buffer) as long as the buffer is enabled.
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
2.39.2

_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org
