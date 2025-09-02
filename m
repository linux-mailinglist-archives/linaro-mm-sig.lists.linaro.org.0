Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id E1AB6B40992
	for <lists+linaro-mm-sig@lfdr.de>; Tue,  2 Sep 2025 17:47:54 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 036DC45F2C
	for <lists+linaro-mm-sig@lfdr.de>; Tue,  2 Sep 2025 15:47:54 +0000 (UTC)
Received: from mail-wm1-f45.google.com (mail-wm1-f45.google.com [209.85.128.45])
	by lists.linaro.org (Postfix) with ESMTPS id 4C36044A45
	for <linaro-mm-sig@lists.linaro.org>; Tue,  2 Sep 2025 15:46:57 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=gmail.com header.s=20230601 header.b="ef/WJXD6";
	spf=pass (lists.linaro.org: domain of thierry.reding@gmail.com designates 209.85.128.45 as permitted sender) smtp.mailfrom=thierry.reding@gmail.com;
	dmarc=pass (policy=none) header.from=gmail.com
Received: by mail-wm1-f45.google.com with SMTP id 5b1f17b1804b1-45b8b7ac427so14916505e9.2
        for <linaro-mm-sig@lists.linaro.org>; Tue, 02 Sep 2025 08:46:57 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1756828016; x=1757432816; darn=lists.linaro.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=90kZ9DvIdtL4dz9/qc/WVjEQ+mFVkPoHnP8T9TIhe7A=;
        b=ef/WJXD6ND2VVTWtjP0vzwG88WfuVhxOJJArNwIQuxJude5gsVRhUqi8xPc4fE7qOk
         V8wUMSO3Zv5SHMP50eLDxfPkSpNpOrO/D198Zv5u4WcgN4yA5w/wm3KGAKIiPHzu5xwu
         z3gcvcdPF+P0D6qtAAbA93/JFddbzydUOCTIYjb/6maCpDdku1i7trDRA7Mau03Jgq3x
         Tqf2WR3234mAPbFGhVYvbLol/pInxJics7zyrVKIbW+kEG8eCzGe7AS5ISs4q07xBvyp
         luxp8xHGcma2WTsGP+iUbJxOdLddJI62YJUS1azA6Cey77UKz12D3oLCtzd8k/8cB63/
         qMbw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1756828016; x=1757432816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=90kZ9DvIdtL4dz9/qc/WVjEQ+mFVkPoHnP8T9TIhe7A=;
        b=aPT2J+raS0y1B2mc2P0DojbCB4hYurJcV8dcpVqFCmLMhuPa+uhlfGVRCKq1yaE+eb
         UQL0cYUs7+p/qNtRF4cqa2iuW4Q2SgImR2f6ogU7dKO6FSorU8YXQe8wgpkPu+I3Aytz
         bGfYdlEx0X04Z93Mbx4qzOpAgRErr+ProeZLgeQyTEV8XvDMxI7IXe8HwVlRH34tjdhR
         X4nIL4TV2/Wc2H9EvRuxyKkVSY9IXk8PBikXpNmLs4Butw30/ql52+dE4njXhBk1LBMn
         FYIkP3MRbUoXFGGqaQd7Mezo4Y0L2IUb0rrDanTeIBMwHLlAnTUjjUstis9bot76/eN7
         xAdg==
X-Forwarded-Encrypted: i=1; AJvYcCWUoqSZmSaG05SUdzyx86XQ7ufn7cqLjUnRSjtvYzk4Oi+bnOrjoanDeaT/UbqxCWK/NPqKp+QZ+WZRAfc+@lists.linaro.org
X-Gm-Message-State: AOJu0Yy57elz0Us6ZizXVkUFyqW1w+TiMg7sAWa8mznzzxTyDtR9AfqO
	ZxOxorlsqAgOWsh0ZWn3Oj/LZWe6Nj94qwkbtYmSE92++cGjdh+/RbVr
X-Gm-Gg: ASbGncs+AJiPpszqZqYhI//JMjkv+wurCHk9FKa40oa13pcp5bfZcnOqyg4+16fsrYX
	Hnq6Z6hiNzmrBoAizaY2MZRdNNaHjqr3Q4DeVtpVvTHaIfp+YLyJnU0vV8FUxfy4xFFVtc3BN4p
	+YEtoDv6CJt+ludPTjY9JRkCDquDk06w11XsRoXx5lWjPXntf8Q7Ao75lbSH5fNhUIDXkTNQ2km
	IaC0oaP5M70AZgJdVAF3nU3Q0AxA0NcYKqqPriv2zChNqrNGOVMLBUnBInLvHLIyM+4j3uxguXy
	L3l7vZ4xWW3YqwzN0BFbydLr++VqEIznzg7pnEU09snBYmKiyn5LisEBqJiv8h/np+253/n0Ybt
	tZknQdDapHWU9yVRnJ3wTflxAPtshkmdO84Dw8ZwPIdnEai5DRRbVYgYVDeWmwx7HLmrgFiV3+4
	G4YXNw0drBzTbt5qfCzJSkZ0d7
X-Google-Smtp-Source: AGHT+IGEFJ9YebDpQzKgxpYDB/nK1gBHr48wi1ywTJ9aVMyk17MTQGdJjc1ZEGueQXcFUAhwJrBA9A==
X-Received: by 2002:a05:6000:2f86:b0:3d0:64c1:1a39 with SMTP id ffacd0b85a97d-3d1dea894eamr9700405f8f.35.1756828016192;
        Tue, 02 Sep 2025 08:46:56 -0700 (PDT)
Received: from localhost (p200300e41f1c4d00f22f74fffe1f3a53.dip0.t-ipconnect.de. [2003:e4:1f1c:4d00:f22f:74ff:fe1f:3a53])
        by smtp.gmail.com with UTF8SMTPSA id ffacd0b85a97d-3d95df59e50sm4845738f8f.23.2025.09.02.08.46.53
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 02 Sep 2025 08:46:53 -0700 (PDT)
From: Thierry Reding <thierry.reding@gmail.com>
To: Thierry Reding <thierry.reding@gmail.com>,
	David Airlie <airlied@gmail.com>,
	Simona Vetter <simona@ffwll.ch>,
	Sumit Semwal <sumit.semwal@linaro.org>
Date: Tue,  2 Sep 2025 17:46:24 +0200
Message-ID: <20250902154630.4032984-5-thierry.reding@gmail.com>
X-Mailer: git-send-email 2.50.0
In-Reply-To: <20250902154630.4032984-1-thierry.reding@gmail.com>
References: <20250902154630.4032984-1-thierry.reding@gmail.com>
MIME-Version: 1.0
X-Rspamd-Action: no action
X-Rspamd-Server: lists.linaro.org
X-Rspamd-Queue-Id: 4C36044A45
X-Spamd-Bar: --
X-Spamd-Result: default: False [-2.00 / 15.00];
	BAYES_HAM(-3.00)[100.00%];
	SUSPICIOUS_RECIPS(1.50)[];
	R_MISSING_CHARSET(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_SPF_ALLOW(-0.20)[+ip4:209.85.128.0/17:c];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20230601];
	MIME_GOOD(-0.10)[text/plain];
	FREEMAIL_TO(0.00)[gmail.com,ffwll.ch,linaro.org];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	ARC_NA(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	PREVIOUSLY_DELIVERED(0.00)[linaro-mm-sig@lists.linaro.org];
	MIME_TRACE(0.00)[0:+];
	TO_DN_SOME(0.00)[];
	FREEMAIL_FROM(0.00)[gmail.com];
	RCPT_COUNT_TWELVE(0.00)[19];
	TAGGED_FROM(0.00)[];
	FROM_EQ_ENVFROM(0.00)[];
	RCVD_COUNT_TWO(0.00)[2];
	TAGGED_RCPT(0.00)[dt];
	MID_RHS_MATCH_FROM(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	RWL_MAILSPIKE_POSSIBLE(0.00)[209.85.128.45:from];
	DKIM_TRACE(0.00)[gmail.com:+];
	ASN(0.00)[asn:15169, ipnet:209.85.128.0/17, country:US];
	FREEMAIL_ENVFROM(0.00)[gmail.com];
	FROM_HAS_DN(0.00)[]
Message-ID-Hash: V33KFNKU6AOZBDAHYAS5DCTFRDUG4UP2
X-Message-ID-Hash: V33KFNKU6AOZBDAHYAS5DCTFRDUG4UP2
X-MailFrom: thierry.reding@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, Benjamin Gaignard <benjamin.gaignard@collabora.com>, Brian Starkey <Brian.Starkey@arm.com>, John Stultz <jstultz@google.com>, "T.J. Mercier" <tjmercier@google.com>, Andrew Morton <akpm@linux-foundation.org>, David Hildenbrand <david@redhat.com>, Mike Rapoport <rppt@kernel.org>, dri-devel@lists.freedesktop.org, devicetree@vger.kernel.org, linux-tegra@vger.kernel.org, linaro-mm-sig@lists.linaro.org, linux-mm@kvack.org
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] [PATCH 4/9] dma-buf: heaps: Add debugfs support
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/V33KFNKU6AOZBDAHYAS5DCTFRDUG4UP2/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

From: Thierry Reding <treding@nvidia.com>

Add a callback to struct dma_heap_ops that heap providers can implement
to show information about the state of the heap in debugfs. A top-level
directory named "dma_heap" is created in debugfs and individual files
will be named after the heaps.

Signed-off-by: Thierry Reding <treding@nvidia.com>
---
 drivers/dma-buf/dma-heap.c | 56 ++++++++++++++++++++++++++++++++++++++
 include/linux/dma-heap.h   |  2 ++
 2 files changed, 58 insertions(+)

diff --git a/drivers/dma-buf/dma-heap.c b/drivers/dma-buf/dma-heap.c
index cdddf0e24dce..f062f88365a5 100644
--- a/drivers/dma-buf/dma-heap.c
+++ b/drivers/dma-buf/dma-heap.c
@@ -7,6 +7,7 @@
  */
 
 #include <linux/cdev.h>
+#include <linux/debugfs.h>
 #include <linux/device.h>
 #include <linux/dma-buf.h>
 #include <linux/dma-heap.h>
@@ -217,6 +218,46 @@ const char *dma_heap_get_name(struct dma_heap *heap)
 }
 EXPORT_SYMBOL(dma_heap_get_name);
 
+#ifdef CONFIG_DEBUG_FS
+static int dma_heap_debug_show(struct seq_file *s, void *unused)
+{
+	struct dma_heap *heap = s->private;
+	int err = 0;
+
+	if (heap->ops && heap->ops->show)
+		err = heap->ops->show(s, heap);
+
+	return err;
+}
+DEFINE_SHOW_ATTRIBUTE(dma_heap_debug);
+
+static struct dentry *dma_heap_debugfs_dir;
+
+static void dma_heap_init_debugfs(void)
+{
+	struct dentry *dir;
+
+	dir = debugfs_create_dir("dma_heap", NULL);
+	if (IS_ERR(dir))
+		return;
+
+	dma_heap_debugfs_dir = dir;
+}
+
+static void dma_heap_exit_debugfs(void)
+{
+	debugfs_remove_recursive(dma_heap_debugfs_dir);
+}
+#else
+static void dma_heap_init_debugfs(void)
+{
+}
+
+static void dma_heap_exit_debugfs(void)
+{
+}
+#endif
+
 /**
  * dma_heap_add - adds a heap to dmabuf heaps
  * @exp_info: information needed to register this heap
@@ -291,6 +332,13 @@ struct dma_heap *dma_heap_add(const struct dma_heap_export_info *exp_info)
 
 	/* Add heap to the list */
 	list_add(&heap->list, &heap_list);
+
+#ifdef CONFIG_DEBUG_FS
+	if (heap->ops && heap->ops->show)
+		debugfs_create_file(heap->name, 0444, dma_heap_debugfs_dir,
+				    heap, &dma_heap_debug_fops);
+#endif
+
 	mutex_unlock(&heap_list_lock);
 
 	return heap;
@@ -327,6 +375,14 @@ static int dma_heap_init(void)
 	}
 	dma_heap_class->devnode = dma_heap_devnode;
 
+	dma_heap_init_debugfs();
+
 	return 0;
 }
 subsys_initcall(dma_heap_init);
+
+static void __exit dma_heap_exit(void)
+{
+	dma_heap_exit_debugfs();
+}
+__exitcall(dma_heap_exit);
diff --git a/include/linux/dma-heap.h b/include/linux/dma-heap.h
index 27d15f60950a..065f537177af 100644
--- a/include/linux/dma-heap.h
+++ b/include/linux/dma-heap.h
@@ -12,6 +12,7 @@
 #include <linux/types.h>
 
 struct dma_heap;
+struct seq_file;
 
 /**
  * struct dma_heap_ops - ops to operate on a given heap
@@ -24,6 +25,7 @@ struct dma_heap_ops {
 				    unsigned long len,
 				    u32 fd_flags,
 				    u64 heap_flags);
+	int (*show)(struct seq_file *s, struct dma_heap *heap);
 };
 
 /**
-- 
2.50.0

_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org
