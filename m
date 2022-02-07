Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 6B1414B6F9E
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 15 Feb 2022 16:16:53 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 9C41B3EEC0
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 15 Feb 2022 15:16:52 +0000 (UTC)
Received: from aposti.net (aposti.net [89.234.176.197])
	by lists.linaro.org (Postfix) with ESMTPS id 1D6653EE45
	for <linaro-mm-sig@lists.linaro.org>; Mon,  7 Feb 2022 13:00:36 +0000 (UTC)
From: Paul Cercueil <paul@crapouillou.net>
To: Jonathan Cameron <jic23@kernel.org>
Date: Mon,  7 Feb 2022 12:59:30 +0000
Message-Id: <20220207125933.81634-10-paul@crapouillou.net>
In-Reply-To: <20220207125933.81634-1-paul@crapouillou.net>
References: <20220207125933.81634-1-paul@crapouillou.net>
MIME-Version: 1.0
X-MailFrom: paul@crapouillou.net
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
Message-ID-Hash: DWFHE3AU2RQVGYV6JHGF6OASYANLHK27
X-Message-ID-Hash: DWFHE3AU2RQVGYV6JHGF6OASYANLHK27
X-Mailman-Approved-At: Tue, 15 Feb 2022 15:15:58 +0000
CC: Michael Hennerich <Michael.Hennerich@analog.com>, Lars-Peter Clausen <lars@metafoo.de>, =?UTF-8?q?Christian=20K=C3=B6nig?= <christian.koenig@amd.com>, Jonathan Corbet <corbet@lwn.net>, Alexandru Ardelean <ardeleanalex@gmail.com>, dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org, linux-doc@vger.kernel.org, linux-kernel@vger.kernel.org, linux-iio@vger.kernel.org, Paul Cercueil <paul@crapouillou.net>
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] [PATCH v2 09/12] iio: buffer-dmaengine: Support new DMABUF based userspace API
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/DWFHE3AU2RQVGYV6JHGF6OASYANLHK27/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

Use the functions provided by the buffer-dma core to implement the
DMABUF userspace API in the buffer-dmaengine IIO buffer implementation.

Signed-off-by: Paul Cercueil <paul@crapouillou.net>
---
 drivers/iio/buffer/industrialio-buffer-dmaengine.c | 3 +++
 1 file changed, 3 insertions(+)

diff --git a/drivers/iio/buffer/industrialio-buffer-dmaengine.c b/drivers/iio/buffer/industrialio-buffer-dmaengine.c
index 5cde8fd81c7f..57a8b2e4ba3c 100644
--- a/drivers/iio/buffer/industrialio-buffer-dmaengine.c
+++ b/drivers/iio/buffer/industrialio-buffer-dmaengine.c
@@ -133,6 +133,9 @@ static const struct iio_buffer_access_funcs iio_dmaengine_buffer_ops = {
 	.space_available = iio_dma_buffer_space_available,
 	.release = iio_dmaengine_buffer_release,
 
+	.alloc_dmabuf = iio_dma_buffer_alloc_dmabuf,
+	.enqueue_dmabuf = iio_dma_buffer_enqueue_dmabuf,
+
 	.modes = INDIO_BUFFER_HARDWARE,
 	.flags = INDIO_BUFFER_FLAG_FIXED_WATERMARK,
 };
-- 
2.34.1

_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org
