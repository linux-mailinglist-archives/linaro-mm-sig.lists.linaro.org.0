Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 3D50C4B6F9F
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 15 Feb 2022 16:16:58 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 6E51C3EE1D
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 15 Feb 2022 15:16:57 +0000 (UTC)
Received: from aposti.net (aposti.net [89.234.176.197])
	by lists.linaro.org (Postfix) with ESMTPS id A8DA43EE45
	for <linaro-mm-sig@lists.linaro.org>; Mon,  7 Feb 2022 13:00:42 +0000 (UTC)
From: Paul Cercueil <paul@crapouillou.net>
To: Jonathan Cameron <jic23@kernel.org>
Date: Mon,  7 Feb 2022 12:59:31 +0000
Message-Id: <20220207125933.81634-11-paul@crapouillou.net>
In-Reply-To: <20220207125933.81634-1-paul@crapouillou.net>
References: <20220207125933.81634-1-paul@crapouillou.net>
MIME-Version: 1.0
X-MailFrom: paul@crapouillou.net
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
Message-ID-Hash: ZDGEYJ5OPRSKXXQ4HPHGIYQ2KIRHRNL4
X-Message-ID-Hash: ZDGEYJ5OPRSKXXQ4HPHGIYQ2KIRHRNL4
X-Mailman-Approved-At: Tue, 15 Feb 2022 15:16:00 +0000
CC: Michael Hennerich <Michael.Hennerich@analog.com>, Lars-Peter Clausen <lars@metafoo.de>, =?UTF-8?q?Christian=20K=C3=B6nig?= <christian.koenig@amd.com>, Jonathan Corbet <corbet@lwn.net>, Alexandru Ardelean <ardeleanalex@gmail.com>, dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org, linux-doc@vger.kernel.org, linux-kernel@vger.kernel.org, linux-iio@vger.kernel.org, Paul Cercueil <paul@crapouillou.net>
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] [PATCH v2 10/12] iio: core: Add support for cyclic buffers
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/ZDGEYJ5OPRSKXXQ4HPHGIYQ2KIRHRNL4/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

Introduce a new flag IIO_BUFFER_DMABUF_CYCLIC in the "flags" field of
the iio_dmabuf uapi structure.

When set, the DMABUF enqueued with the enqueue ioctl will be endlessly
repeated on the TX output, until the buffer is disabled.

Signed-off-by: Paul Cercueil <paul@crapouillou.net>
Reviewed-by: Alexandru Ardelean <ardeleanalex@gmail.com>
---
 drivers/iio/industrialio-buffer.c | 5 +++++
 include/uapi/linux/iio/buffer.h   | 3 ++-
 2 files changed, 7 insertions(+), 1 deletion(-)

diff --git a/drivers/iio/industrialio-buffer.c b/drivers/iio/industrialio-buffer.c
index 72f333a519bc..85331cedaad8 100644
--- a/drivers/iio/industrialio-buffer.c
+++ b/drivers/iio/industrialio-buffer.c
@@ -1535,6 +1535,11 @@ static int iio_buffer_enqueue_dmabuf(struct iio_buffer *buffer,
 	if (dmabuf.flags & ~IIO_BUFFER_DMABUF_SUPPORTED_FLAGS)
 		return -EINVAL;
 
+	/* Cyclic flag is only supported on output buffers */
+	if ((dmabuf.flags & IIO_BUFFER_DMABUF_CYCLIC) &&
+	    buffer->direction != IIO_BUFFER_DIRECTION_OUT)
+		return -EINVAL;
+
 	return buffer->access->enqueue_dmabuf(buffer, &dmabuf);
 }
 
diff --git a/include/uapi/linux/iio/buffer.h b/include/uapi/linux/iio/buffer.h
index e4621b926262..2d541d038c02 100644
--- a/include/uapi/linux/iio/buffer.h
+++ b/include/uapi/linux/iio/buffer.h
@@ -7,7 +7,8 @@
 
 #include <linux/types.h>
 
-#define IIO_BUFFER_DMABUF_SUPPORTED_FLAGS	0x00000000
+#define IIO_BUFFER_DMABUF_CYCLIC		(1 << 0)
+#define IIO_BUFFER_DMABUF_SUPPORTED_FLAGS	0x00000001
 
 /**
  * struct iio_dmabuf_alloc_req - Descriptor for allocating IIO DMABUFs
-- 
2.34.1

_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org
