Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 8AD5D5A1229
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 25 Aug 2022 15:30:55 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id BF1A23F60D
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 25 Aug 2022 13:30:54 +0000 (UTC)
Received: from smtpbg.qq.com (unknown [43.155.67.158])
	by lists.linaro.org (Postfix) with ESMTPS id 03FA73EB7D
	for <linaro-mm-sig@lists.linaro.org>; Tue,  2 Aug 2022 12:22:39 +0000 (UTC)
X-QQ-mid: bizesmtp71t1659442798tgsihsb9
Received: from kali.lan ( [125.69.43.47])
	by bizesmtp.qq.com (ESMTP) with
	id ; Tue, 02 Aug 2022 20:19:56 +0800 (CST)
X-QQ-SSF: 01000000002000F0U000B00A0000000
X-QQ-FEAT: swyrzWPvyR2qDD5rPmQ/VXbiVD4x75MF6MoDQejb2G9zwz1gVFQdbfqXPwQ3P
	nOfI5MjJNkqkFJVKQERE7twIgTeivKoo1pgIrRhH5QAV0ExReKBBIBsH7uVFIHbolDd0SbS
	0Zn/fsIe+MQIe8UOMituqc1ghaBUZM/yF66LJqlMEcUY8caElLIsgYPVvIxKiNPYY8XMmcp
	2PPQPRwgjE2ZDPjo5miu9tgaGMxxRInviuBi8Rx0LH53ZF3VLtLi/EVzbm85685wloA/3yA
	ShZeq0tW52MBTgZgiuGZcZ1HJD6L3WpZe+OnW9t3ipJuENvC7MUDL3JXzdZPICSlUAw/Vh/
	x3871Ed3Q9Wc0uBSY/Ibf9WW5y9+Y0r1kLQeDjgTdzwnA+12xX7RUO+mLwajfP3fNEDGioM
X-QQ-GoodBg: 0
From: Jason Wang <wangborong@cdjrlc.com>
To: christian.koenig@amd.com
Date: Wed,  3 Aug 2022 04:19:55 +0800
Message-Id: <20220802201955.8634-1-wangborong@cdjrlc.com>
X-Mailer: git-send-email 2.35.1
MIME-Version: 1.0
X-QQ-SENDSIZE: 520
Feedback-ID: bizesmtp:cdjrlc.com:qybglogicsvr:qybglogicsvr6
X-MailFrom: wangborong@cdjrlc.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
Message-ID-Hash: C2C4TO5WMPJWMPDBN5WL7EMMINRS5QHG
X-Message-ID-Hash: C2C4TO5WMPJWMPDBN5WL7EMMINRS5QHG
X-Mailman-Approved-At: Thu, 25 Aug 2022 13:29:42 +0000
CC: sumit.semwal@linaro.org, benjamin.gaignard@collabora.com, lmark@codeaurora.org, labbott@redhat.com, Brian.Starkey@arm.com, jstultz@google.com, linux-media@vger.kernel.org, dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org, linux-kernel@vger.kernel.org, Jason Wang <wangborong@cdjrlc.com>
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] [PATCH] dma-buf: heaps: Fix comment typo
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/C2C4TO5WMPJWMPDBN5WL7EMMINRS5QHG/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

The double `by' is duplicated in the comment, remove one.

Signed-off-by: Jason Wang <wangborong@cdjrlc.com>
---
 drivers/dma-buf/heaps/cma_heap.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/dma-buf/heaps/cma_heap.c b/drivers/dma-buf/heaps/cma_heap.c
index 28fb04eccdd0..cd386ce639f3 100644
--- a/drivers/dma-buf/heaps/cma_heap.c
+++ b/drivers/dma-buf/heaps/cma_heap.c
@@ -316,7 +316,7 @@ static struct dma_buf *cma_heap_allocate(struct dma_heap *heap,
 			kunmap_atomic(vaddr);
 			/*
 			 * Avoid wasting time zeroing memory if the process
-			 * has been killed by by SIGKILL
+			 * has been killed by SIGKILL
 			 */
 			if (fatal_signal_pending(current))
 				goto free_cma;
-- 
2.35.1

_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org
