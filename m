Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 59C665E590E
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 22 Sep 2022 05:10:55 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 8E4F148A5D
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 22 Sep 2022 03:10:54 +0000 (UTC)
Received: from mail-pl1-f180.google.com (mail-pl1-f180.google.com [209.85.214.180])
	by lists.linaro.org (Postfix) with ESMTPS id 0423E48A6D
	for <linaro-mm-sig@lists.linaro.org>; Thu, 22 Sep 2022 03:10:28 +0000 (UTC)
Received: by mail-pl1-f180.google.com with SMTP id f23so7538965plr.6
        for <linaro-mm-sig@lists.linaro.org>; Wed, 21 Sep 2022 20:10:27 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date;
        bh=rwUBwzi7xfMGM3gnlz2nJv+3JsC676oosCJWmNEJmq8=;
        b=HOmSehjQy+kC6oCpZ6SUxpIPlijDlparMa9cZ7awXPTJLs7/4j0owgFxRWDzn2zsIB
         IAG9YOoiEmpC79+56phr0pTunmEY9rE4X71d6vAGzfT6Uf9X4Z+qt1yXQHhb3bWLA/Uv
         Cx/HPbXhrdOJJX9w53uN9mKOp6WP5Gv2LT5oo=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date;
        bh=rwUBwzi7xfMGM3gnlz2nJv+3JsC676oosCJWmNEJmq8=;
        b=PruOUx3uKLvKvplQGThrNfMB2SWsHimvGXCalmpQtgNHn/RY1NYfNYs2VXpjUEtUxY
         iSFoftzk5U73E/xGvwsOf5J8NkeGZTLuS61HjwIw6vAWf33ye3Qycb/xFTWQ2YlIS7oX
         C0reGjCBFIg53qHkMazyrLOI6XLsuKC+r8Vn6XQG+oj/lR2mgHrnnAUJozrbj41jtI1Z
         t1E6/Jn/t4cAqXMTE9kbehJiV1iUDSVFPFfIQRydjtnWIOTJ/Ak/zRYjU1okGs8EHARB
         3Jztq1S/Fotm8el5Izf/SXNVujy6xcK9oYLs3E8btE7MgRHl7MdTKRGjOo0nyIoUXdLS
         otMg==
X-Gm-Message-State: ACrzQf1jG3fvmDMax/vpuKtxrMcYnFApBTWoNMMkiDuw59+VosElZSiC
	RHEy3n7ubzggood6VhCSt775rA==
X-Google-Smtp-Source: AMsMyM6ZljnCrU0qh0+e7vc+HuV1x+ArU+n+M48jxv5R3lt8UQZqPTf6/v1OyEJJWiwBGfdDSixUTw==
X-Received: by 2002:a17:902:c245:b0:178:3912:f1f7 with SMTP id 5-20020a170902c24500b001783912f1f7mr1161429plg.75.1663816227182;
        Wed, 21 Sep 2022 20:10:27 -0700 (PDT)
Received: from www.outflux.net (smtp.outflux.net. [198.145.64.163])
        by smtp.gmail.com with ESMTPSA id i8-20020a170902c94800b00178143a728esm2758861pla.275.2022.09.21.20.10.24
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 21 Sep 2022 20:10:26 -0700 (PDT)
From: Kees Cook <keescook@chromium.org>
To: Vlastimil Babka <vbabka@suse.cz>
Date: Wed, 21 Sep 2022 20:10:06 -0700
Message-Id: <20220922031013.2150682-6-keescook@chromium.org>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20220922031013.2150682-1-keescook@chromium.org>
References: <20220922031013.2150682-1-keescook@chromium.org>
MIME-Version: 1.0
X-Developer-Signature: v=1; a=openpgp-sha256; l=1448; h=from:subject; bh=58mLiyNPt53YHcQiP0NJ/gcO5KVNHG9xKF/nxWP5lU4=; b=owEBbQKS/ZANAwAKAYly9N/cbcAmAcsmYgBjK9IT0VAPWCWir3uMps9kCdjSMILjRU6yciDG9uFs fWbeIjWJAjMEAAEKAB0WIQSlw/aPIp3WD3I+bhOJcvTf3G3AJgUCYyvSEwAKCRCJcvTf3G3AJuZ5EA CTJrl1LYI7CQAG4pCtipLkuzhhHVBFayO1cJ9nr4E0Jm4P1ZR+BSgD/HPdeicWCgV2fEGCG3A3qzTO bp/9wj/VPvNh93gqjrf2HSe113aZFNagRxlssfUYxwkKTY+LPLzDzin95QfiHah48Jg0HBw8zKWEmX dZTJH7KlwTcHEy9Bz5p3PA4qx+B3pkBrNQ0zdb4io0a7ErunaXVRCSpt2tZNukDe/wt1CXiR/32N+T 1euSAVbSYv0W0fFslnfEqztbrNKxL91NWnvy3XzftablM4/PXqSNUqv6xYBt7IY33WxxP+/g2Fn7HD 6QmdkXUhTr9armjFjNYZMQo0prwqkn0FJaXEIed35vePpH2uibYbE4OwOA2Dyo4lUtHPs/KAKQYEB3 6oCNer7mpHEc9oOoqN35lm+ZhZ9UmAPZl/X1Np9gol6eRnt/yo2BbllRVW8PfKLVzPclAS1ny/vZEN uVJmqmDUdiq2OpecYEKuqhvI07vawcYvhSB6Au1f9Ys6viXBeeurbiQKrvf0oP7kADVYUzN9YCua/x a6zit1PoOjCMh44PKnVGgBRCRhU0CfvSYrhoxA8P45Ye7BiKkBm0StH0S/n/9duZxNKqbCFgYNdviR h0OHIRRNJYqc0Tw95yUM7tJKCf1eAwytfKrF8F6YwYcUQ/V1S+/AOfGfUWHQ==
X-Developer-Key: i=keescook@chromium.org; a=openpgp; fpr=A5C3F68F229DD60F723E6E138972F4DFDC6DC026
Message-ID-Hash: A7F7Z3JTD4SRYMDNWECC5GZQ54TWPAV6
X-Message-ID-Hash: A7F7Z3JTD4SRYMDNWECC5GZQ54TWPAV6
X-MailFrom: keescook@chromium.org
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: Kees Cook <keescook@chromium.org>, linux-media@vger.kernel.org, dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org, Pekka Enberg <penberg@kernel.org>, David Rientjes <rientjes@google.com>, Joonsoo Kim <iamjoonsoo.kim@lge.com>, Andrew Morton <akpm@linux-foundation.org>, "David S. Miller" <davem@davemloft.net>, Eric Dumazet <edumazet@google.com>, Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>, Greg Kroah-Hartman <gregkh@linuxfoundation.org>, Nick Desaulniers <ndesaulniers@google.com>, Alex Elder <elder@kernel.org>, Josef Bacik <josef@toxicpanda.com>, David Sterba <dsterba@suse.com>, Sumit Semwal <sumit.semwal@linaro.org>, =?UTF-8?q?Christian=20K=C3=B6nig?= <christian.koenig@amd.com>, Jesse Brandeburg <jesse.brandeburg@intel.com>, Daniel Micay <danielmicay@gmail.com>, Yonghong Song <yhs@fb.com>, Marco Elver <elver@google.com>, Miguel Ojeda <ojeda@kernel.org>, Jacob Shin <jacob.shin@amd.com>, linux-kernel@vger.kernel.org, linux-mm@kvack.org, netdev@vge
 r.kernel.org, linux-btrfs@vger.kernel.org, linux-fsdevel@vger.kernel.org, intel-wired-lan@lists.osuosl.org, dev@openvswitch.org, x86@kernel.org, linux-wireless@vger.kernel.org, llvm@lists.linux.dev, linux-hardening@vger.kernel.org
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] [PATCH 05/12] dma-buf: Proactively round up to kmalloc bucket size
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/A7F7Z3JTD4SRYMDNWECC5GZQ54TWPAV6/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

Instead of discovering the kmalloc bucket size _after_ allocation, round
up proactively so the allocation is explicitly made for the full size,
allowing the compiler to correctly reason about the resulting size of
the buffer through the existing __alloc_size() hint.

Cc: linux-media@vger.kernel.org
Cc: dri-devel@lists.freedesktop.org
Cc: linaro-mm-sig@lists.linaro.org
Signed-off-by: Kees Cook <keescook@chromium.org>
---
 drivers/dma-buf/dma-resv.c | 9 +++++++--
 1 file changed, 7 insertions(+), 2 deletions(-)

diff --git a/drivers/dma-buf/dma-resv.c b/drivers/dma-buf/dma-resv.c
index 205acb2c744d..a20f6db99b8f 100644
--- a/drivers/dma-buf/dma-resv.c
+++ b/drivers/dma-buf/dma-resv.c
@@ -98,12 +98,17 @@ static void dma_resv_list_set(struct dma_resv_list *list,
 static struct dma_resv_list *dma_resv_list_alloc(unsigned int max_fences)
 {
 	struct dma_resv_list *list;
+	size_t size = struct_size(list, table, max_fences);
 
-	list = kmalloc(struct_size(list, table, max_fences), GFP_KERNEL);
+	/* Round up to the next kmalloc bucket size. */
+	size = kmalloc_size_roundup(size);
+
+	list = kmalloc(size, GFP_KERNEL);
 	if (!list)
 		return NULL;
 
-	list->max_fences = (ksize(list) - offsetof(typeof(*list), table)) /
+	/* Given the resulting bucket size, recalculated max_fences. */
+	list->max_fences = (size - offsetof(typeof(*list), table)) /
 		sizeof(*list->table);
 
 	return list;
-- 
2.34.1

_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org
