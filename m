Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 5B9C879A8BB
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 11 Sep 2023 16:41:28 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 5EE973F52D
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 11 Sep 2023 14:41:27 +0000 (UTC)
Received: from mail-yw1-f202.google.com (mail-yw1-f202.google.com [209.85.128.202])
	by lists.linaro.org (Postfix) with ESMTPS id 535B43EBCF
	for <linaro-mm-sig@lists.linaro.org>; Mon, 10 Jul 2023 22:33:45 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=google.com header.s=20221208 header.b=aKK4x+BP;
	spf=pass (lists.linaro.org: domain of 3SIesZAsKDTURcdRjipdZeRXffXcV.TfdcZeRif-dd-jZXcZjkj.cZeRif.fiX@flex--almasrymina.bounces.google.com designates 209.85.128.202 as permitted sender) smtp.mailfrom=3SIesZAsKDTURcdRjipdZeRXffXcV.TfdcZeRif-dd-jZXcZjkj.cZeRif.fiX@flex--almasrymina.bounces.google.com;
	dmarc=pass (policy=reject) header.from=google.com
Received: by mail-yw1-f202.google.com with SMTP id 00721157ae682-579e9b95b86so60707537b3.1
        for <linaro-mm-sig@lists.linaro.org>; Mon, 10 Jul 2023 15:33:45 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=google.com; s=20221208; t=1689028425; x=1691620425;
        h=cc:to:from:subject:message-id:references:mime-version:in-reply-to
         :date:from:to:cc:subject:date:message-id:reply-to;
        bh=n3XnWoX3mq+b99bSYScr9hgrqKqfzZzVVDFO4lEAixo=;
        b=aKK4x+BPpAO/YJnlbxEPDSQ7Or5Frwhwee2iD2GBEfe1fPtmZVHgx7xOzFYwlpwBd0
         CIAhwJFzySe6vd1iF5hHC7H5Bx4ikw2GiXtyeS+3mlpQ9IGJE/tNmOre93nGmlNqG7go
         H7sT0O60Au84IyYseY02KCEXg7RyIWAeAXh7dCgGut854L9f3xU2dkEJqjFqZYXmGFlG
         Joyc0e+Us0w0oYp3zs6SdDLqnd4mFFLgNGOx2cS/wRtoXMK+OGZP1jT/03NO1qBDNTNY
         VajQypKncfQ8ybRP4+obiiz7E94H3YhLRSSy4tUt/CNwfeshxUkcAM5tsYxecciDD/PR
         1PlQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1689028425; x=1691620425;
        h=cc:to:from:subject:message-id:references:mime-version:in-reply-to
         :date:x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=n3XnWoX3mq+b99bSYScr9hgrqKqfzZzVVDFO4lEAixo=;
        b=bU1+o8ck4Gm5LpIjFDOk0ONAnpUut7KCVMw9pBQ8KOcUtDF6q/ty0K6Pe7O6GnBY+G
         wef4PzwP8td14kX6Exl/Z1bjw0tC2085q8i0ECVgev/cx1/hWtgz/FFhyr8d6BsFa1Cr
         ekvtWWAk0jJ0HbNcCR+JF4U0Kka6n+MKpvOVzTxJ44aLy427IzNy1ui/S29jE+u2PXei
         DM23QXmuZ1Rx+QXzf5w3/wCvxuU8So2E97QLAsaUtmWaGLeaoItVFdf2YWHcdyLkZd/n
         dhA9X/a4Inbprp8VWR4XkBJHxaC/s8hdW+XyMfm2BqH3DdlNW2fKEP7tvoQ9gWTdOG54
         uQOA==
X-Gm-Message-State: ABy/qLZI9X4LGi6RzyCPq7Kp2k25lRAnoCD29XQJl+DUnna55wdVGbk2
	dpOc2Py0fiM2Cd34YwJvy1K0f4mJbmVSdA5M4w==
X-Google-Smtp-Source: APBJJlH/b3oD7gi2ZFJXKajzk/Ysv+e4OCddKdR0c+g1aGsA92FGsICZLym7YRNcyjFr1h3bBzs5D0UkTD/ZG9VMLw==
X-Received: from almasrymina.svl.corp.google.com ([2620:15c:2c4:200:4c0f:bfb6:9942:8c53])
 (user=almasrymina job=sendgmr) by 2002:a81:cf0c:0:b0:570:b1:ca37 with SMTP id
 u12-20020a81cf0c000000b0057000b1ca37mr97547ywi.5.1689028424874; Mon, 10 Jul
 2023 15:33:44 -0700 (PDT)
Date: Mon, 10 Jul 2023 15:32:52 -0700
In-Reply-To: <20230710223304.1174642-1-almasrymina@google.com>
Mime-Version: 1.0
References: <20230710223304.1174642-1-almasrymina@google.com>
X-Mailer: git-send-email 2.41.0.390.g38632f3daf-goog
Message-ID: <20230710223304.1174642-2-almasrymina@google.com>
From: Mina Almasry <almasrymina@google.com>
To: linux-kernel@vger.kernel.org, linux-media@vger.kernel.org,
	dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org,
	netdev@vger.kernel.org, linux-arch@vger.kernel.org,
	linux-kselftest@vger.kernel.org
X-Spamd-Result: default: False [-0.70 / 15.00];
	BAYES_HAM(-3.00)[100.00%];
	SUSPICIOUS_RECIPS(1.50)[];
	MID_CONTAINS_FROM(1.00)[];
	MV_CASE(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[google.com,reject];
	FORGED_SENDER(0.30)[almasrymina@google.com,3SIesZAsKDTURcdRjipdZeRXffXcV.TfdcZeRif-dd-jZXcZjkj.cZeRif.fiX@flex--almasrymina.bounces.google.com];
	R_SPF_ALLOW(-0.20)[+ip4:209.85.128.0/17:c];
	R_DKIM_ALLOW(-0.20)[google.com:s=20221208];
	MIME_GOOD(-0.10)[text/plain];
	RCVD_COUNT_ONE(0.00)[1];
	NEURAL_HAM(-0.00)[-1.000];
	RCVD_TLS_LAST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	ASN(0.00)[asn:15169, ipnet:209.85.128.0/17, country:US];
	RWL_MAILSPIKE_POSSIBLE(0.00)[209.85.128.202:from];
	DKIM_TRACE(0.00)[google.com:+];
	FREEMAIL_CC(0.00)[google.com,linaro.org,amd.com,davemloft.net,kernel.org,redhat.com,arndb.de,gmail.com,ziepe.ca];
	FROM_HAS_DN(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[almasrymina@google.com,3SIesZAsKDTURcdRjipdZeRXffXcV.TfdcZeRif-dd-jZXcZjkj.cZeRif.fiX@flex--almasrymina.bounces.google.com];
	RCPT_COUNT_TWELVE(0.00)[21];
	TO_DN_SOME(0.00)[];
	PREVIOUSLY_DELIVERED(0.00)[linaro-mm-sig@lists.linaro.org];
	TAGGED_RCPT(0.00)[];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	ARC_NA(0.00)[]
X-Rspamd-Action: no action
X-Rspamd-Server: lists.linaro.org
X-Rspamd-Queue-Id: 535B43EBCF
X-Spamd-Bar: /
X-MailFrom: 3SIesZAsKDTURcdRjipdZeRXffXcV.TfdcZeRif-dd-jZXcZjkj.cZeRif.fiX@flex--almasrymina.bounces.google.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
Message-ID-Hash: AFE74K64OP6XAIQ7DL5ENYGSUDVAXZZL
X-Message-ID-Hash: AFE74K64OP6XAIQ7DL5ENYGSUDVAXZZL
X-Mailman-Approved-At: Mon, 11 Sep 2023 14:41:03 +0000
CC: Mina Almasry <almasrymina@google.com>, Sumit Semwal <sumit.semwal@linaro.org>, =?UTF-8?q?Christian=20K=C3=B6nig?= <christian.koenig@amd.com>, "David S. Miller" <davem@davemloft.net>, Eric Dumazet <edumazet@google.com>, Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>, Jesper Dangaard Brouer <hawk@kernel.org>, Ilias Apalodimas <ilias.apalodimas@linaro.org>, Arnd Bergmann <arnd@arndb.de>, David Ahern <dsahern@kernel.org>, Willem de Bruijn <willemdebruijn.kernel@gmail.com>, Shuah Khan <shuah@kernel.org>, jgg@ziepe.ca
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] [RFC PATCH 01/10] dma-buf: add support for paged attachment mappings
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/AFE74K64OP6XAIQ7DL5ENYGSUDVAXZZL/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

Currently dmabuf p2p memory doesn't present itself in the form of struct
pages and the memory can't be easily used with code that expects memory
in that form. Add support for paged attachment mappings. We use existing
dmabuf APIs to create a mapped attachment (dma_buf_attach() &
dma_buf_map_attachment()), and we create struct pages for this mapping.
We write the dma_addr's from the sg_table into the created pages. These
pages can then be passed into code that expects struct pages and can
largely operate on these pages with minimal modifications:

1. The pages need not be dma mapped. The dma addr can be queried from
   page->zone_device_data and used directly.
2. The pages are not kmappable.

Add a new ioctl that enables the user to create a struct page backed
dmabuf attachment mapping. This ioctl returns a new file descriptor
which represents the dmabuf pages. The pages are freed when (a) the
user closes the file, and (b) the struct pages backing the dmabuf are
no longer in use. Once the pages are no longer in use, the mapped
attachment is removed.

The support added in this patch should be generic - the pages are created
by the base code, but the user specifies the type of page to create using
the dmabuf_create_pages_info->type flag. The base code hands of any
handling specific to the use case of the ops of that page type.

Signed-off-by: Mina Almasry <almasrymina@google.com>
---
 drivers/dma-buf/dma-buf.c    | 223 +++++++++++++++++++++++++++++++++++
 include/linux/dma-buf.h      |  90 ++++++++++++++
 include/uapi/linux/dma-buf.h |   9 ++
 3 files changed, 322 insertions(+)

diff --git a/drivers/dma-buf/dma-buf.c b/drivers/dma-buf/dma-buf.c
index aa4ea8530cb3..50b1d813cf5c 100644
--- a/drivers/dma-buf/dma-buf.c
+++ b/drivers/dma-buf/dma-buf.c
@@ -22,6 +22,7 @@
 #include <linux/module.h>
 #include <linux/seq_file.h>
 #include <linux/sync_file.h>
+#include <linux/pci.h>
 #include <linux/poll.h>
 #include <linux/dma-resv.h>
 #include <linux/mm.h>
@@ -442,12 +443,16 @@ static long dma_buf_import_sync_file(struct dma_buf *dmabuf,
 }
 #endif
 
+static long dma_buf_create_pages(struct file *file,
+				 struct dma_buf_create_pages_info *create_info);
+
 static long dma_buf_ioctl(struct file *file,
 			  unsigned int cmd, unsigned long arg)
 {
 	struct dma_buf *dmabuf;
 	struct dma_buf_sync sync;
 	enum dma_data_direction direction;
+	struct dma_buf_create_pages_info create_info;
 	int ret;
 
 	dmabuf = file->private_data;
@@ -484,6 +489,12 @@ static long dma_buf_ioctl(struct file *file,
 	case DMA_BUF_SET_NAME_A:
 	case DMA_BUF_SET_NAME_B:
 		return dma_buf_set_name(dmabuf, (const char __user *)arg);
+	case DMA_BUF_CREATE_PAGES:
+		if (copy_from_user(&create_info, (void __user *)arg,
+				   sizeof(create_info)))
+			return -EFAULT;
+
+		return dma_buf_create_pages(file, &create_info);
 
 #if IS_ENABLED(CONFIG_SYNC_FILE)
 	case DMA_BUF_IOCTL_EXPORT_SYNC_FILE:
@@ -1613,6 +1624,218 @@ void dma_buf_vunmap_unlocked(struct dma_buf *dmabuf, struct iosys_map *map)
 }
 EXPORT_SYMBOL_NS_GPL(dma_buf_vunmap_unlocked, DMA_BUF);
 
+static int dma_buf_pages_release(struct inode *inode, struct file *file)
+{
+	struct dma_buf_pages *priv = file->private_data;
+
+	if (priv->type_ops->dma_buf_pages_release)
+		priv->type_ops->dma_buf_pages_release(priv, file);
+
+	percpu_ref_kill(&priv->pgmap.ref);
+	/* Drop initial ref after percpu_ref_kill(). */
+	percpu_ref_put(&priv->pgmap.ref);
+
+	return 0;
+}
+
+static void dma_buf_page_free(struct page *page)
+{
+	struct dma_buf_pages *priv;
+	struct dev_pagemap *pgmap;
+
+	pgmap = page->pgmap;
+	priv = container_of(pgmap, struct dma_buf_pages, pgmap);
+
+	if (priv->type_ops->dma_buf_page_free)
+		priv->type_ops->dma_buf_page_free(priv, page);
+}
+
+const struct dev_pagemap_ops dma_buf_pgmap_ops = {
+	.page_free	= dma_buf_page_free,
+};
+EXPORT_SYMBOL_GPL(dma_buf_pgmap_ops);
+
+const struct file_operations dma_buf_pages_fops = {
+	.release	= dma_buf_pages_release,
+};
+EXPORT_SYMBOL_GPL(dma_buf_pages_fops);
+
+#ifdef CONFIG_ZONE_DEVICE
+static void dma_buf_pages_destroy(struct percpu_ref *ref)
+{
+	struct dma_buf_pages *priv;
+	struct dev_pagemap *pgmap;
+
+	pgmap = container_of(ref, struct dev_pagemap, ref);
+	priv = container_of(pgmap, struct dma_buf_pages, pgmap);
+
+	if (priv->type_ops->dma_buf_pages_destroy)
+		priv->type_ops->dma_buf_pages_destroy(priv);
+
+	kvfree(priv->pages);
+	kfree(priv);
+
+	dma_buf_unmap_attachment(priv->attachment, priv->sgt, priv->direction);
+	dma_buf_detach(priv->dmabuf, priv->attachment);
+	dma_buf_put(priv->dmabuf);
+	pci_dev_put(priv->pci_dev);
+}
+
+static long dma_buf_create_pages(struct file *file,
+				 struct dma_buf_create_pages_info *create_info)
+{
+	int err, fd, i, pg_idx;
+	struct scatterlist *sg;
+	struct dma_buf_pages *priv;
+	struct file *new_file;
+
+	fd = get_unused_fd_flags(O_RDWR | O_CLOEXEC);
+	if (fd < 0) {
+		err = fd;
+		goto out_err;
+	}
+
+	priv = kzalloc(sizeof(*priv), GFP_KERNEL);
+	if (!priv) {
+		err = -ENOMEM;
+		goto out_put_fd;
+	}
+
+	priv->pgmap.type = MEMORY_DEVICE_PRIVATE;
+	priv->pgmap.ops = &dma_buf_pgmap_ops;
+	init_completion(&priv->pgmap.done);
+
+	/* This refcount is incremented every time a page in priv->pages is
+	 * allocated, and decremented every time a page is freed. When
+	 * it drops to 0, the dma_buf_pages can be destroyed. An initial ref is
+	 * held and the dma_buf_pages is not destroyed until that is dropped.
+	 */
+	err = percpu_ref_init(&priv->pgmap.ref, dma_buf_pages_destroy, 0,
+			      GFP_KERNEL);
+	if (err)
+		goto out_free_priv;
+
+	/* Initial ref to be dropped after percpu_ref_kill(). */
+	percpu_ref_get(&priv->pgmap.ref);
+
+	priv->pci_dev = pci_get_domain_bus_and_slot(
+		0, create_info->pci_bdf[0],
+		PCI_DEVFN(create_info->pci_bdf[1], create_info->pci_bdf[2]));
+	if (!priv->pci_dev) {
+		err = -ENODEV;
+		goto out_exit_percpu_ref;
+	}
+
+	priv->dmabuf = dma_buf_get(create_info->dma_buf_fd);
+	if (IS_ERR(priv->dmabuf)) {
+		err = PTR_ERR(priv->dmabuf);
+		goto out_put_pci_dev;
+	}
+
+	if (priv->dmabuf->size % PAGE_SIZE != 0) {
+		err = -EINVAL;
+		goto out_put_dma_buf;
+	}
+
+	priv->attachment = dma_buf_attach(priv->dmabuf, &priv->pci_dev->dev);
+	if (IS_ERR(priv->attachment)) {
+		err = PTR_ERR(priv->attachment);
+		goto out_put_dma_buf;
+	}
+
+	priv->num_pages = priv->dmabuf->size / PAGE_SIZE;
+	priv->pages = kvmalloc_array(priv->num_pages, sizeof(struct page),
+				     GFP_KERNEL);
+	if (!priv->pages) {
+		err = -ENOMEM;
+		goto out_detach_dma_buf;
+	}
+
+	for (i = 0; i < priv->num_pages; i++) {
+		struct page *page = &priv->pages[i];
+
+		mm_zero_struct_page(page);
+		set_page_zone(page, ZONE_DEVICE);
+		set_page_count(page, 1);
+		page->pgmap = &priv->pgmap;
+	}
+
+	priv->direction = DMA_BIDIRECTIONAL;
+	priv->sgt = dma_buf_map_attachment(priv->attachment, priv->direction);
+	if (IS_ERR(priv->sgt)) {
+		err = PTR_ERR(priv->sgt);
+		goto out_free_pages;
+	}
+
+	/* write each dma addresses from sgt to each page */
+	pg_idx = 0;
+	for_each_sgtable_dma_sg(priv->sgt, sg, i) {
+		size_t len = sg_dma_len(sg);
+		dma_addr_t dma_addr = sg_dma_address(sg);
+
+		BUG_ON(!PAGE_ALIGNED(len));
+		while (len > 0) {
+			priv->pages[pg_idx].zone_device_data = (void *)dma_addr;
+			pg_idx++;
+			dma_addr += PAGE_SIZE;
+			len -= PAGE_SIZE;
+		}
+	}
+
+	new_file = anon_inode_getfile("[dma_buf_pages]", &dma_buf_pages_fops,
+				      (void *)priv, O_RDWR | O_CLOEXEC);
+	if (IS_ERR(new_file)) {
+		err = PTR_ERR(new_file);
+		goto out_unmap_dma_buf;
+	}
+
+	priv->type = create_info->type;
+	priv->create_flags = create_info->create_flags;
+
+	switch (priv->type) {
+	default:
+		err = -EINVAL;
+		goto out_put_new_file;
+	}
+
+	if (priv->type_ops->dma_buf_pages_init) {
+		err = priv->type_ops->dma_buf_pages_init(priv, new_file);
+		if (err)
+			goto out_put_new_file;
+	}
+
+	fd_install(fd, new_file);
+	return fd;
+
+out_put_new_file:
+	fput(new_file);
+out_unmap_dma_buf:
+	dma_buf_unmap_attachment(priv->attachment, priv->sgt, priv->direction);
+out_free_pages:
+	kvfree(priv->pages);
+out_detach_dma_buf:
+	dma_buf_detach(priv->dmabuf, priv->attachment);
+out_put_dma_buf:
+	dma_buf_put(priv->dmabuf);
+out_put_pci_dev:
+	pci_dev_put(priv->pci_dev);
+out_exit_percpu_ref:
+	percpu_ref_exit(&priv->pgmap.ref);
+out_free_priv:
+	kfree(priv);
+out_put_fd:
+	put_unused_fd(fd);
+out_err:
+	return err;
+}
+#else
+static long dma_buf_create_pages(struct file *file,
+				 struct dma_buf_create_pages_info *create_info)
+{
+	return -ENOTSUPP;
+}
+#endif
+
 #ifdef CONFIG_DEBUG_FS
 static int dma_buf_debug_show(struct seq_file *s, void *unused)
 {
diff --git a/include/linux/dma-buf.h b/include/linux/dma-buf.h
index 3f31baa3293f..5789006180ea 100644
--- a/include/linux/dma-buf.h
+++ b/include/linux/dma-buf.h
@@ -540,6 +540,36 @@ struct dma_buf_export_info {
 	void *priv;
 };
 
+struct dma_buf_pages;
+
+struct dma_buf_pages_type_ops {
+	int (*dma_buf_pages_init)(struct dma_buf_pages *priv,
+				  struct file *file);
+	void (*dma_buf_pages_release)(struct dma_buf_pages *priv,
+				      struct file *file);
+	void (*dma_buf_pages_destroy)(struct dma_buf_pages *priv);
+	void (*dma_buf_page_free)(struct dma_buf_pages *priv,
+				  struct page *page);
+};
+
+struct dma_buf_pages {
+	/* fields for dmabuf */
+	struct dma_buf *dmabuf;
+	struct dma_buf_attachment *attachment;
+	struct sg_table *sgt;
+	struct pci_dev *pci_dev;
+	enum dma_data_direction direction;
+
+	/* fields for dma-buf pages */
+	size_t num_pages;
+	struct page *pages;
+	struct dev_pagemap pgmap;
+
+	unsigned int type;
+	const struct dma_buf_pages_type_ops *type_ops;
+	__u64 create_flags;
+};
+
 /**
  * DEFINE_DMA_BUF_EXPORT_INFO - helper macro for exporters
  * @name: export-info name
@@ -631,4 +661,64 @@ int dma_buf_vmap(struct dma_buf *dmabuf, struct iosys_map *map);
 void dma_buf_vunmap(struct dma_buf *dmabuf, struct iosys_map *map);
 int dma_buf_vmap_unlocked(struct dma_buf *dmabuf, struct iosys_map *map);
 void dma_buf_vunmap_unlocked(struct dma_buf *dmabuf, struct iosys_map *map);
+
+#ifdef CONFIG_DMA_SHARED_BUFFER
+extern const struct file_operations dma_buf_pages_fops;
+extern const struct dev_pagemap_ops dma_buf_pgmap_ops;
+
+static inline bool is_dma_buf_pages_file(struct file *file)
+{
+	return file->f_op == &dma_buf_pages_fops;
+}
+
+static inline bool is_dma_buf_page(struct page *page)
+{
+	return (is_zone_device_page(page) && page->pgmap &&
+		page->pgmap->ops == &dma_buf_pgmap_ops);
+}
+
+static inline dma_addr_t dma_buf_page_to_dma_addr(struct page *page)
+{
+	return (dma_addr_t)page->zone_device_data;
+}
+
+static inline int dma_buf_map_sg(struct device *dev, struct scatterlist *sg,
+				 int nents, enum dma_data_direction dir)
+{
+	struct scatterlist *s;
+	int i;
+
+	for_each_sg(sg, s, nents, i) {
+		struct page *pg = sg_page(s);
+
+		s->dma_address = dma_buf_page_to_dma_addr(pg);
+		sg_dma_len(s) = s->length;
+	}
+
+	return nents;
+}
+#else
+static inline bool is_dma_buf_page(struct page *page)
+{
+	return false;
+}
+
+static inline bool is_dma_buf_pages_file(struct file *file)
+{
+	return false;
+}
+
+static inline dma_addr_t dma_buf_page_to_dma_addr(struct page *page)
+{
+	return 0;
+}
+
+static inline int dma_buf_map_sg(struct device *dev, struct scatterlist *sg,
+				 int nents, enum dma_data_direction dir)
+{
+	return 0;
+}
+#endif
+
+
 #endif /* __DMA_BUF_H__ */
diff --git a/include/uapi/linux/dma-buf.h b/include/uapi/linux/dma-buf.h
index 5a6fda66d9ad..d0f63a2ab7e4 100644
--- a/include/uapi/linux/dma-buf.h
+++ b/include/uapi/linux/dma-buf.h
@@ -179,4 +179,13 @@ struct dma_buf_import_sync_file {
 #define DMA_BUF_IOCTL_EXPORT_SYNC_FILE	_IOWR(DMA_BUF_BASE, 2, struct dma_buf_export_sync_file)
 #define DMA_BUF_IOCTL_IMPORT_SYNC_FILE	_IOW(DMA_BUF_BASE, 3, struct dma_buf_import_sync_file)
 
+struct dma_buf_create_pages_info {
+	__u8 pci_bdf[3];
+	__s32 dma_buf_fd;
+	__u32 type;
+	__u64 create_flags;
+};
+
+#define DMA_BUF_CREATE_PAGES	_IOW(DMA_BUF_BASE, 4, struct dma_buf_create_pages_info)
+
 #endif
-- 
2.41.0.390.g38632f3daf-goog

_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org
