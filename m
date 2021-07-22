Return-Path: <linaro-mm-sig-bounces@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [107.22.173.205])
	by mail.lfdr.de (Postfix) with ESMTPS id E39D73D2C6B
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 22 Jul 2021 21:08:07 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 8F98163148
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 22 Jul 2021 19:08:06 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
	id 54F3C631CC; Thu, 22 Jul 2021 19:08:05 +0000 (UTC)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id C0A3060B99;
	Thu, 22 Jul 2021 19:08:01 +0000 (UTC)
X-Original-To: linaro-mm-sig@lists.linaro.org
Delivered-To: linaro-mm-sig@lists.linaro.org
Received: from lists.linaro.org (localhost [127.0.0.1])
 by lists.linaro.org (Postfix) with ESMTP id 4C428608C6
 for <linaro-mm-sig@lists.linaro.org>; Thu, 22 Jul 2021 19:08:00 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
 id 40C7760B99; Thu, 22 Jul 2021 19:08:00 +0000 (UTC)
Received: from mail-yb1-f201.google.com (mail-yb1-f201.google.com
 [209.85.219.201])
 by lists.linaro.org (Postfix) with ESMTPS id 3937E608C6
 for <linaro-mm-sig@lists.linaro.org>; Thu, 22 Jul 2021 19:07:58 +0000 (UTC)
Received: by mail-yb1-f201.google.com with SMTP id
 q10-20020a056902150ab02905592911c932so8612727ybu.15
 for <linaro-mm-sig@lists.linaro.org>; Thu, 22 Jul 2021 12:07:58 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=20161025;
 h=date:message-id:mime-version:subject:from:to:cc;
 bh=Y+4Q1LkGSotu1XfmzHQ6ryO/eeqhw4mJ1FyIbndgjZg=;
 b=TqWxnT/Z73qrMHnDvvmdUmHFCBG2MowDGm9qbSkEGL5dCyrUWFCjRlmaCwPnwOV+vE
 felNomI4J14yW6cG4cK8/fe5EmLr6cUafKEfxaLZtrN+y4CuWRbV/1MgW8Oe6G1oUXYe
 U5/snPPITJfuRauEaIlN2IvmysFsXc4W/reebG3h71BcT4s14CNHFwziy8vhd3JaNZVt
 vSNZwIv97aznzS4Lk6SBEfxWNAH0IGp4XobMfkNcfnErx0N0/srvH32mvyN9DTsAGx3Z
 FmvNLWsFRkpdPxysCstLgzcENMdmM//CzmYiJbMaBjzRUoMw5jvq0sqmc91ET7vecjor
 H7cQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:message-id:mime-version:subject:from:to:cc;
 bh=Y+4Q1LkGSotu1XfmzHQ6ryO/eeqhw4mJ1FyIbndgjZg=;
 b=BFmINsdpRIp/YawLEuQj6eL60WJl8Z7SgCwMy1dtxZe5fb+RJQhntkXxrcsLcAGxyo
 BVDAYB3UJPEqawIoShD6HXTqrr53F40up4h6mBNxws/N+tZ9kardBk+O6WYMAQzax+Bo
 zGEyoGt7g8JqoI+vJ6hYzMIYA9GYW7DFbxudt0hdOVOlp+aokoV2iyZPJm393JtDK5Ij
 1W7++MhUaq2ULcnPdzLPm9kOnCelHY3M/0z1VAWiw9wKvRnVHrooAEL+NsHP+2f0HaoQ
 diO4gDfGKGequdqpgxlBDM0d3dtXgSYHvI0bDAF7CxtKpikCcnIyg57zCjgZ2agGJDPY
 K/3w==
X-Gm-Message-State: AOAM5316y/wJMYMwZasCRG4+wIlObnv2BtbRSq7bUsIcSLvMoSK/F9h9
 C4F+AdgqijI0bjSfnTDXZbrbttg7aUU=
X-Google-Smtp-Source: ABdhPJyN1TtBAly+n7sAFHUMK7tG6nh3fqZuhlgbAzUczufLDXVA9cjmsxqDsLqVj7oNjCMvjWh3qW/7kdU=
X-Received: from hridya.mtv.corp.google.com
 ([2620:15c:211:200:233e:4a37:d5d6:55d7])
 (user=hridya job=sendgmr) by 2002:a25:2589:: with SMTP id
 l131mr1337963ybl.451.1626980877695; 
 Thu, 22 Jul 2021 12:07:57 -0700 (PDT)
Date: Thu, 22 Jul 2021 12:07:46 -0700
Message-Id: <20210722190747.1986614-1-hridya@google.com>
Mime-Version: 1.0
X-Mailer: git-send-email 2.32.0.432.gabb21c7263-goog
From: Hridya Valsaraju <hridya@google.com>
To: Sumit Semwal <sumit.semwal@linaro.org>, 
 Benjamin Gaignard <benjamin.gaignard@linaro.org>,
 Liam Mark <lmark@codeaurora.org>, 
 Laura Abbott <labbott@redhat.com>, Brian Starkey <Brian.Starkey@arm.com>, 
 John Stultz <john.stultz@linaro.org>, 
 "=?UTF-8?q?Christian=20K=C3=B6nig?=" <christian.koenig@amd.com>,
 linux-media@vger.kernel.org, 
 dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org, 
 linux-kernel@vger.kernel.org
X-Virus-Scanned: ClamAV using ClamSMTP
Subject: [Linaro-mm-sig] [PATCH] dma-buf: heaps: Set allocation limit for
 system heap
X-BeenThere: linaro-mm-sig@lists.linaro.org
X-Mailman-Version: 2.1.29
Precedence: list
List-Id: "Unified memory management interest group."
 <linaro-mm-sig.lists.linaro.org>
List-Unsubscribe: <https://lists.linaro.org/mailman/options/linaro-mm-sig>,
 <mailto:linaro-mm-sig-request@lists.linaro.org?subject=unsubscribe>
List-Archive: <http://lists.linaro.org/pipermail/linaro-mm-sig/>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Subscribe: <https://lists.linaro.org/mailman/listinfo/linaro-mm-sig>,
 <mailto:linaro-mm-sig-request@lists.linaro.org?subject=subscribe>
Cc: Hridya Valsaraju <hridya@google.com>, gregkh@linuxfoundation.org,
 kernel-team@android.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: linaro-mm-sig-bounces@lists.linaro.org
Sender: "Linaro-mm-sig" <linaro-mm-sig-bounces@lists.linaro.org>
X-Virus-Scanned: ClamAV using ClamSMTP

This patch limits the size of total memory that can be requested in a
single allocation from the system heap. This would prevent a
buggy/malicious client from depleting system memory by requesting for an
extremely large allocation which might destabilize the system.

The limit is set to half the size of the device's total RAM which is the
same as what was set by the deprecated ION system heap.

Signed-off-by: Hridya Valsaraju <hridya@google.com>
---
 drivers/dma-buf/heaps/system_heap.c | 6 ++++++
 1 file changed, 6 insertions(+)

diff --git a/drivers/dma-buf/heaps/system_heap.c b/drivers/dma-buf/heaps/system_heap.c
index b7fbce66bcc0..099f5a8304b4 100644
--- a/drivers/dma-buf/heaps/system_heap.c
+++ b/drivers/dma-buf/heaps/system_heap.c
@@ -371,6 +371,12 @@ static struct dma_buf *system_heap_do_allocate(struct dma_heap *heap,
 	struct page *page, *tmp_page;
 	int i, ret = -ENOMEM;
 
+	if (len / PAGE_SIZE > totalram_pages() / 2) {
+		pr_err("pid %d requested too large an allocation(size %lu) from system heap\n",
+		       current->pid, len);
+		return ERR_PTR(ret);
+	}
+
 	buffer = kzalloc(sizeof(*buffer), GFP_KERNEL);
 	if (!buffer)
 		return ERR_PTR(-ENOMEM);
-- 
2.32.0.432.gabb21c7263-goog

_______________________________________________
Linaro-mm-sig mailing list
Linaro-mm-sig@lists.linaro.org
https://lists.linaro.org/mailman/listinfo/linaro-mm-sig
