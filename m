Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 33AE94B647B
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 15 Feb 2022 08:38:47 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 6A94A3EE83
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 15 Feb 2022 07:38:46 +0000 (UTC)
Received: from szxga03-in.huawei.com (szxga03-in.huawei.com [45.249.212.189])
	by lists.linaro.org (Postfix) with ESMTPS id 5E4F23ECC4
	for <linaro-mm-sig@lists.linaro.org>; Mon, 24 Jan 2022 02:37:46 +0000 (UTC)
Received: from kwepemi500013.china.huawei.com (unknown [172.30.72.54])
	by szxga03-in.huawei.com (SkyGuard) with ESMTP id 4JhvG070gtz8wTb;
	Mon, 24 Jan 2022 10:34:48 +0800 (CST)
Received: from kwepemm600017.china.huawei.com (7.193.23.234) by
 kwepemi500013.china.huawei.com (7.221.188.120) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.21; Mon, 24 Jan 2022 10:37:43 +0800
Received: from localhost.localdomain (10.175.112.125) by
 kwepemm600017.china.huawei.com (7.193.23.234) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.21; Mon, 24 Jan 2022 10:37:42 +0800
From: Peng Liu <liupeng256@huawei.com>
To: <glider@google.com>, <elver@google.com>, <dvyukov@google.com>,
	<corbet@lwn.net>, <sumit.semwal@linaro.org>, <christian.koenig@amd.com>,
	<akpm@linux-foundation.org>
Date: Mon, 24 Jan 2022 02:52:04 +0000
Message-ID: <20220124025205.329752-3-liupeng256@huawei.com>
X-Mailer: git-send-email 2.18.0.huawei.25
In-Reply-To: <20220124025205.329752-1-liupeng256@huawei.com>
References: <20220124025205.329752-1-liupeng256@huawei.com>
MIME-Version: 1.0
X-Originating-IP: [10.175.112.125]
X-ClientProxiedBy: dggems701-chm.china.huawei.com (10.3.19.178) To
 kwepemm600017.china.huawei.com (7.193.23.234)
X-CFilter-Loop: Reflected
X-MailFrom: liupeng256@huawei.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
Message-ID-Hash: 46KBN724XYCZYOP53Y6PN4ZV65QA3GXU
X-Message-ID-Hash: 46KBN724XYCZYOP53Y6PN4ZV65QA3GXU
X-Mailman-Approved-At: Tue, 15 Feb 2022 07:38:33 +0000
CC: kasan-dev@googlegroups.com, linux-doc@vger.kernel.org, linux-kernel@vger.kernel.org, linaro-mm-sig@lists.linaro.org, linux-mm@kvack.org, liupeng256@huawei.com
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] [PATCH RFC 2/3] kfence: Optimize branches prediction when sample interval is zero
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/46KBN724XYCZYOP53Y6PN4ZV65QA3GXU/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

In order to release a uniform kernel with KFENCE, it is good to
compile it with CONFIG_KFENCE_SAMPLE_INTERVAL = 0. For a group of
produtions who don't want to use KFENCE, they can use kernel just
as original vesion without KFENCE. For KFENCE users, they can open
it by setting the kernel boot parameter kfence.sample_interval.
Hence, set KFENCE sample interval default to zero is convenient.

The current KFENCE is supportted to adjust sample interval via the
kernel boot parameter. However, branches prediction in kfence_alloc
is not good for situation with CONFIG_KFENCE_SAMPLE_INTERVAL = 0
and boot parameter kfence.sample_interval != 0, which is because
the current kfence_alloc is likely to return NULL when
CONFIG_KFENCE_SAMPLE_INTERVAL = 0. To optimize branches prediction
in this situation, kfence_enabled will check firstly.

Signed-off-by: Peng Liu <liupeng256@huawei.com>
---
 include/linux/kfence.h | 5 ++++-
 mm/kfence/core.c       | 2 +-
 2 files changed, 5 insertions(+), 2 deletions(-)

diff --git a/include/linux/kfence.h b/include/linux/kfence.h
index aec4f6b247b5..bf91b76b87ee 100644
--- a/include/linux/kfence.h
+++ b/include/linux/kfence.h
@@ -17,6 +17,7 @@
 #include <linux/atomic.h>
 #include <linux/static_key.h>
 
+extern bool kfence_enabled;
 extern unsigned long kfence_num_objects;
 /*
  * We allocate an even number of pages, as it simplifies calculations to map
@@ -115,7 +116,9 @@ void *__kfence_alloc(struct kmem_cache *s, size_t size, gfp_t flags);
  */
 static __always_inline void *kfence_alloc(struct kmem_cache *s, size_t size, gfp_t flags)
 {
-#if defined(CONFIG_KFENCE_STATIC_KEYS) || CONFIG_KFENCE_SAMPLE_INTERVAL == 0
+	if (!kfence_enabled)
+		return NULL;
+#if defined(CONFIG_KFENCE_STATIC_KEYS)
 	if (!static_branch_unlikely(&kfence_allocation_key))
 		return NULL;
 #else
diff --git a/mm/kfence/core.c b/mm/kfence/core.c
index 4655bcc0306e..2301923182b8 100644
--- a/mm/kfence/core.c
+++ b/mm/kfence/core.c
@@ -48,7 +48,7 @@
 
 /* === Data ================================================================= */
 
-static bool kfence_enabled __read_mostly;
+bool kfence_enabled __read_mostly;
 
 static unsigned long kfence_sample_interval __read_mostly = CONFIG_KFENCE_SAMPLE_INTERVAL;
 
-- 
2.18.0.huawei.25

_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org
