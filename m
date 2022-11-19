Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 04301630C95
	for <lists+linaro-mm-sig@lfdr.de>; Sat, 19 Nov 2022 07:43:21 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id A78E03EA22
	for <lists+linaro-mm-sig@lfdr.de>; Sat, 19 Nov 2022 06:43:19 +0000 (UTC)
Received: from m12-11.163.com (m12-11.163.com [220.181.12.11])
	by lists.linaro.org (Postfix) with ESMTP id 9D3ED3E823
	for <linaro-mm-sig@lists.linaro.org>; Sat, 19 Nov 2022 06:43:09 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=163.com header.s=s110527 header.b=p4H3AS+N;
	spf=pass (lists.linaro.org: domain of tangchunyou@163.com designates 220.181.12.11 as permitted sender) smtp.mailfrom=tangchunyou@163.com;
	dmarc=pass (policy=none) header.from=163.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=163.com;
	s=s110527; h=From:Subject:Date:Message-Id:MIME-Version; bh=1llmR
	ePQ0BZkXZUv/+5vLDGTpWNhrfaeQNFoxHbpgsY=; b=p4H3AS+Navz5n8UOrxv47
	HDqS0tzL1tbO4F7bic2ERCq2J34uNKbgD5N38WJB4Ftmhei/DL32NAuNZ1F7EhsU
	SeR3a42MGdWWvY6UPTkoE8r24C6lILK+h2Mr5e0Zc6m2tj4ZyzHg/AMX3w1tlSCD
	//QfwVLrejUS8cqIDmyBqk=
Received: from localhost.localdomain (unknown [114.221.197.177])
	by smtp7 (Coremail) with SMTP id C8CowAAnBxCmenhjaHotSg--.7350S2;
	Sat, 19 Nov 2022 14:41:47 +0800 (CST)
From: ChunyouTang <tangchunyou@163.com>
To: maarten.lankhorst@linux.intel.com,
	mripard@kernel.org,
	tzimmermann@suse.de,
	airlied@gmail.com,
	daniel@ffwll.ch,
	sumit.semwal@linaro.org,
	christian.koenig@amd.com
Date: Sat, 19 Nov 2022 14:41:31 +0800
Message-Id: <20221119064131.364-1-tangchunyou@163.com>
X-Mailer: git-send-email 2.30.0.windows.1
MIME-Version: 1.0
X-CM-TRANSID: C8CowAAnBxCmenhjaHotSg--.7350S2
X-Coremail-Antispam: 1Uf129KBjvJXoWxCr1UJr1xCF1kCw4UJrWrKrg_yoW5XFy5pa
	nxAry7KrW8KFZ2grZ7XF4kCa43Gw40gF4xWa4Sq3yakw10yF1DXFn8Cr1DAFW3Jr47Xr1a
	qwnFkFySyrWjyF7anT9S1TB71UUUUUUqnTZGkaVYY2UrUUUUjbIjqfuFe4nvWSU5nxnvy2
	9KBjDUYxBIdaVFxhVjvjDU0xZFpf9x0pNhF7UUUUUU=
X-Originating-IP: [114.221.197.177]
X-CM-SenderInfo: 5wdqwu5kxq50rx6rljoofrz/1tbiVgu+UVqzvFdXQwAAsk
X-Rspamd-Queue-Id: 9D3ED3E823
X-Spamd-Bar: ----
X-Spamd-Result: default: False [-4.50 / 15.00];
	BAYES_HAM(-3.00)[100.00%];
	RCVD_DKIM_ARC_DNSWL_HI(-1.00)[];
	MID_CONTAINS_FROM(1.00)[];
	RCVD_IN_DNSWL_HI(-1.00)[220.181.12.11:from,114.221.197.177:received];
	DMARC_POLICY_ALLOW(-0.50)[163.com,none];
	R_MISSING_CHARSET(0.50)[];
	R_DKIM_ALLOW(-0.20)[163.com:s=s110527];
	R_SPF_ALLOW(-0.20)[+ip4:220.181.12.0/22];
	RWL_MAILSPIKE_GOOD(-0.10)[220.181.12.11:from];
	MIME_GOOD(-0.10)[text/plain];
	RCVD_NO_TLS_LAST(0.10)[];
	FROM_HAS_DN(0.00)[];
	HAS_XOIP(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[12];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	ARC_NA(0.00)[];
	FREEMAIL_ENVFROM(0.00)[163.com];
	FREEMAIL_CC(0.00)[lists.freedesktop.org,vger.kernel.org,lists.linaro.org,163.com];
	FREEMAIL_FROM(0.00)[163.com];
	TO_DN_SOME(0.00)[];
	ASN(0.00)[asn:23724, ipnet:220.181.0.0/19, country:CN];
	DKIM_TRACE(0.00)[163.com:+];
	FROM_EQ_ENVFROM(0.00)[];
	FREEMAIL_TO(0.00)[linux.intel.com,kernel.org,suse.de,gmail.com,ffwll.ch,linaro.org,amd.com];
	MIME_TRACE(0.00)[0:+];
	RCVD_COUNT_TWO(0.00)[2]
X-Rspamd-Action: no action
X-Rspamd-Server: lists.linaro.org
Message-ID-Hash: FN5LXTPGTFCGZ4NKVLGUHWBOB5SVHXC6
X-Message-ID-Hash: FN5LXTPGTFCGZ4NKVLGUHWBOB5SVHXC6
X-MailFrom: tangchunyou@163.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: dri-devel@lists.freedesktop.org, linux-kernel@vger.kernel.org, linux-media@vger.kernel.org, linaro-mm-sig@lists.linaro.org, ChunyouTang <tangchunyou@163.com>
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] [PATCH v2 3/3] drm/gem-shmem: When drm_gem_object_init failed, should release object
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/FN5LXTPGTFCGZ4NKVLGUHWBOB5SVHXC6/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

when goto err_free, the object had init, so it should be release when fail.

Signed-off-by: ChunyouTang <tangchunyou@163.com>
---
 drivers/gpu/drm/drm_gem.c              | 19 ++++++++++++++++---
 drivers/gpu/drm/drm_gem_shmem_helper.c |  4 +++-
 include/drm/drm_gem.h                  |  1 +
 3 files changed, 20 insertions(+), 4 deletions(-)

diff --git a/drivers/gpu/drm/drm_gem.c b/drivers/gpu/drm/drm_gem.c
index 8b68a3c1e6ab..3e2e660717c3 100644
--- a/drivers/gpu/drm/drm_gem.c
+++ b/drivers/gpu/drm/drm_gem.c
@@ -169,6 +169,20 @@ void drm_gem_private_object_init(struct drm_device *dev,
 }
 EXPORT_SYMBOL(drm_gem_private_object_init);
 
+/**
+ * drm_gem_private_object_fini - Finalize a failed drm_gem_object
+ * @obj: drm_gem_object
+ *
+ * Uninitialize an already allocated GEM object when it initialized failed
+ */
+void drm_gem_private_object_fini(struct drm_gem_object *obj)
+{
+	WARN_ON(obj->dma_buf);
+
+	dma_resv_fini(&obj->_resv);
+}
+EXPORT_SYMBOL(drm_gem_private_object_fini);
+
 /**
  * drm_gem_object_handle_free - release resources bound to userspace handles
  * @obj: GEM object to clean up.
@@ -930,12 +944,11 @@ drm_gem_release(struct drm_device *dev, struct drm_file *file_private)
 void
 drm_gem_object_release(struct drm_gem_object *obj)
 {
-	WARN_ON(obj->dma_buf);
-
 	if (obj->filp)
 		fput(obj->filp);
 
-	dma_resv_fini(&obj->_resv);
+	drm_gem_private_object_fini(obj);
+
 	drm_gem_free_mmap_offset(obj);
 	drm_gem_lru_remove(obj);
 }
diff --git a/drivers/gpu/drm/drm_gem_shmem_helper.c b/drivers/gpu/drm/drm_gem_shmem_helper.c
index 35138f8a375c..db73234edcbe 100644
--- a/drivers/gpu/drm/drm_gem_shmem_helper.c
+++ b/drivers/gpu/drm/drm_gem_shmem_helper.c
@@ -79,8 +79,10 @@ __drm_gem_shmem_create(struct drm_device *dev, size_t size, bool private)
 	} else {
 		ret = drm_gem_object_init(dev, obj, size);
 	}
-	if (ret)
+	if (ret) {
+		drm_gem_private_object_fini(obj);
 		goto err_free;
+	}
 
 	ret = drm_gem_create_mmap_offset(obj);
 	if (ret)
diff --git a/include/drm/drm_gem.h b/include/drm/drm_gem.h
index bd42f25e449c..9b1feb03069d 100644
--- a/include/drm/drm_gem.h
+++ b/include/drm/drm_gem.h
@@ -405,6 +405,7 @@ int drm_gem_object_init(struct drm_device *dev,
 			struct drm_gem_object *obj, size_t size);
 void drm_gem_private_object_init(struct drm_device *dev,
 				 struct drm_gem_object *obj, size_t size);
+void drm_gem_private_object_fini(struct drm_gem_object *obj);
 void drm_gem_vm_open(struct vm_area_struct *vma);
 void drm_gem_vm_close(struct vm_area_struct *vma);
 int drm_gem_mmap_obj(struct drm_gem_object *obj, unsigned long obj_size,
-- 
2.25.1

_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org
