Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id sJz5Jzb24GmInwAAu9opvQ
	(envelope-from <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>)
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 16 Apr 2026 16:46:14 +0200
X-Original-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [44.210.186.118])
	by mail.lfdr.de (Postfix) with ESMTPS id 208A040FBBF
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 16 Apr 2026 16:46:14 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 13286404E4
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 16 Apr 2026 14:41:08 +0000 (UTC)
Received: from mail-pg1-f173.google.com (mail-pg1-f173.google.com [209.85.215.173])
	by lists.linaro.org (Postfix) with ESMTPS id 30C333F779
	for <linaro-mm-sig@lists.linaro.org>; Tue, 21 Oct 2025 04:20:48 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=gmail.com header.s=20230601 header.b=ZO3T3hoj;
	dmarc=pass (policy=none) header.from=gmail.com;
	spf=pass (lists.linaro.org: domain of 21cnbao@gmail.com designates 209.85.215.173 as permitted sender) smtp.mailfrom=21cnbao@gmail.com
Received: by mail-pg1-f173.google.com with SMTP id 41be03b00d2f7-b6a7d3040efso1780490a12.1
        for <linaro-mm-sig@lists.linaro.org>; Mon, 20 Oct 2025 21:20:48 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1761020447; x=1761625247; darn=lists.linaro.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=SRLdP4GmC8TAaehpYwLWmY0fXaXzRogSZM1ApFlMens=;
        b=ZO3T3hojlO7S/1DIcVwmKidF0jzhMDIFbgBWV+AQlwPv0EOH6D8k74mmhLZ4LY/SsQ
         FP0oStHk8WuLdkHtV1jiiKM/4uFCePVwjMpOsJ0nKrVWrCalKvVIXAQs9HjVsWMGbFOH
         1Bo6VzVQx9KqjMK2YuOphmQneEYfsq3gyeWLKD9o04HnmV5d+StMZZhEUfwJHe34roIB
         JXtpshvJhpk2GXQCNhYE70h/OIzwDOHCNo1s2lQW6RtW/HCVbUo7QEpH9Ii0AMbuO0mC
         e0jqlRcHGj3h0Df04PMHKXebEbJuQ7Wo8uGj+iIvbWGDH9ClaC0T222rBgXnrAiY7M+K
         B6xQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1761020447; x=1761625247;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=SRLdP4GmC8TAaehpYwLWmY0fXaXzRogSZM1ApFlMens=;
        b=c7GSDHeJ/bbUBs9mwm4vuMF9lQ279OIA/y9Ke2+qN55ygBAG8qvL4lF6lbWuURpI43
         whoyT5ukKNqpklt0sFPJbYPAJaXDalzwhQbh8H3d4PJ7zZowQ3BbUmeAehcmCmVMcczh
         +4hzar/9QutSMoAdddcYwnBR0UAnBNwiP3gg7RlLGy0kUOeDunsfg+X+XadynjBWF0n4
         WFWItPeSmo8KP4mlOPS+2s1cpPsMZOEhpxPVEpNPpIhCSI47K+pw/Gf13Ynk0zQyDcdZ
         puY3CgHBFoJVUFFNTM7EeEp7194LD5qaSHwSIaKQbeeyGhaZzsBgUt8w4A/LIy+qZRh7
         x82A==
X-Gm-Message-State: AOJu0YxVNbruS9aT+cRx5ORY9JgG9Ued4+GGx63UVbFYxdV4dF/XLi0u
	0eCT+kpA+8RUu4qA6dMfvQFT7yqbnxqCoEAmi7iYQRfXRLu8T7qe1Lo2VOkpuRWU
X-Gm-Gg: ASbGnctogop9qCI26I+u8Xn6WqTXQTkLPjD4fOWjvckGe7lt/CJVbMYLIMUPRfuAQaS
	af/Dc3Q8Xpn72qtLP9LIrnkRHuJM5iVGezAbb8k0PcDQDS+R+9C2B71Xu7q7M+JAYlWHQbwS5oF
	QwVAtY5uerrtkRH2hOGJxKEu7tM47vAAegXbnSABa1UcUuCqs4ZloIbtXmFLzceKV7s98FBv2AR
	fTS9EEMY5ikoMdqKhDwEN+phn6JauHbLoGYwGB061IT14HJYsMwG9YDtBvx6j6y3opKP+B49JqB
	C8LFmyLia9GSQvqQOfLYvyoNCCGP+YSi1GdulwMPZt10rJqX34s/WwwFECuU5mv4QSb7x/uRsUi
	W5u0mKwQyd7EFuxB9lOTmN27+e3NmfPgACiFg/JC6TFFTAfbenu6tVzzFmRHPHmdfo0nFhQHaT3
	hJIsm0M/qwUbyivE+k6PCu8A4ek3FxDjJvay5IuhH4wuc=
X-Google-Smtp-Source: AGHT+IGuMYHt7WIQD1fK0EiihxrlnrbJ5cDcN1SmyPvVx87IncetjCE6sVwVUYILV4vleroj1LiXDQ==
X-Received: by 2002:a17:902:ce12:b0:27e:ec72:f62 with SMTP id d9443c01a7336-290c9c89b06mr180684945ad.6.1761020446906;
        Mon, 20 Oct 2025 21:20:46 -0700 (PDT)
Received: from Barrys-MBP.hub ([47.72.128.212])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-292471fde15sm96162725ad.84.2025.10.20.21.20.41
        (version=TLS1_3 cipher=TLS_CHACHA20_POLY1305_SHA256 bits=256/256);
        Mon, 20 Oct 2025 21:20:46 -0700 (PDT)
From: Barry Song <21cnbao@gmail.com>
To: linaro-mm-sig@lists.linaro.org,
	linux-kernel@vger.kernel.org,
	linux-media@vger.kernel.org,
	sumit.semwal@linaro.org
Date: Tue, 21 Oct 2025 17:20:22 +1300
Message-Id: <20251021042022.47919-1-21cnbao@gmail.com>
X-Mailer: git-send-email 2.39.3 (Apple Git-146)
MIME-Version: 1.0
X-Spamd-Bar: --
X-MailFrom: 21cnbao@gmail.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
Message-ID-Hash: 2NFB34HKYFSM5THJOP4C7BKQARO2PF75
X-Message-ID-Hash: 2NFB34HKYFSM5THJOP4C7BKQARO2PF75
X-Mailman-Approved-At: Thu, 16 Apr 2026 14:40:35 +0000
CC: 21cnbao@gmail.com, Brian.Starkey@arm.com, benjamin.gaignard@collabora.com, christian.koenig@amd.com, dri-devel@lists.freedesktop.org, jstultz@google.com, tjmercier@google.com, v-songbaohua@oppo.com, zhengtangquan@oppo.com
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] [PATCH v2] dma-buf: system_heap: use larger contiguous mappings instead of per-page mmap
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/2NFB34HKYFSM5THJOP4C7BKQARO2PF75/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
X-Spamd-Result: default: False [1.59 / 15.00];
	DATE_IN_PAST(1.00)[4258];
	MID_CONTAINS_FROM(1.00)[];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+mx];
	MIME_GOOD(-0.10)[text/plain];
	DMARC_POLICY_SOFTFAIL(0.10)[gmail.com : SPF not aligned (relaxed), No valid DKIM,none];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[lists,linaro-mm-sig=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	FREEMAIL_FROM(0.00)[gmail.com];
	ARC_NA(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[13];
	MIME_TRACE(0.00)[0:+];
	FREEMAIL_CC(0.00)[gmail.com,arm.com,collabora.com,amd.com,lists.freedesktop.org,google.com,oppo.com];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_NONE(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[21cnbao@gmail.com,linaro-mm-sig-bounces@lists.linaro.org];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_RCPT(0.00)[linaro-mm-sig];
	ASN(0.00)[asn:14618, ipnet:44.192.0.0/11, country:US];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	NEURAL_SPAM(0.00)[0.867];
	DBL_BLOCKED_OPENRESOLVER(0.00)[linaro.org:email,lists.linaro.org:helo,lists.linaro.org:rdns]
X-Rspamd-Queue-Id: 208A040FBBF
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

From: Barry Song <v-songbaohua@oppo.com>

We can allocate high-order pages, but mapping them one by
one is inefficient. This patch changes the code to map
as large a chunk as possible. The code looks somewhat
complicated mainly because supporting mmap with a
non-zero offset is a bit tricky.

Using the micro-benchmark below, we see that mmap becomes
3.5X faster:

  #include <stdio.h>
  #include <fcntl.h>
  #include <linux/dma-heap.h>
  #include <sys/ioctl.h>
  #include <sys/mman.h>
  #include <time.h>
  #include <unistd.h>
  #include <stdlib.h>

  #define SIZE   (512UL * 1024 * 1024)
  #define PAGE   4096
  #define STRIDE (PAGE/sizeof(int))
  #define PAGES  (SIZE/PAGE)

  int main(void) {
      int heap = open("/dev/dma_heap/system", O_RDONLY);
      struct dma_heap_allocation_data d =
            { .len = SIZE, .fd_flags = O_RDWR|O_CLOEXEC };
      ioctl(heap, DMA_HEAP_IOCTL_ALLOC, &d);

      struct timespec t0, t1;
      clock_gettime(CLOCK_MONOTONIC, &t0);
      int *p = mmap(NULL, SIZE, PROT_READ|PROT_WRITE, MAP_SHARED, d.fd, 0);
      clock_gettime(CLOCK_MONOTONIC, &t1);

      for (int i = 0; i < PAGES; i++) p[i*STRIDE] = i;
      for (int i = 0; i < PAGES; i++)
          if (p[i*STRIDE] != i) {
              fprintf(stderr, "mismatch at page %d\n", i);
              exit(1);
          }

      long ns = (t1.tv_sec-t0.tv_sec)*1000000000L +
                (t1.tv_nsec-t0.tv_nsec);
      printf("mmap 512MB took %.3f us, verify OK\n", ns/1000.0);
      return 0;
  }

W/ patch:

~ # ./a.out
mmap 512MB took 200266.000 us, verify OK
~ # ./a.out
mmap 512MB took 198151.000 us, verify OK
~ # ./a.out
mmap 512MB took 197069.000 us, verify OK
~ # ./a.out
mmap 512MB took 196781.000 us, verify OK
~ # ./a.out
mmap 512MB took 198102.000 us, verify OK
~ # ./a.out
mmap 512MB took 195552.000 us, verify OK

W/o patch:

~ # ./a.out
mmap 512MB took 6987470.000 us, verify OK
~ # ./a.out
mmap 512MB took 6970739.000 us, verify OK
~ # ./a.out
mmap 512MB took 6984383.000 us, verify OK
~ # ./a.out
mmap 512MB took 6971311.000 us, verify OK
~ # ./a.out
mmap 512MB took 6991680.000 us, verify OK

Signed-off-by: Barry Song <v-songbaohua@oppo.com>
Acked-by: John Stultz <jstultz@google.com>
---
 -v2: collect John's ack. thanks!

 drivers/dma-buf/heaps/system_heap.c | 33 +++++++++++++++++++++--------
 1 file changed, 24 insertions(+), 9 deletions(-)

diff --git a/drivers/dma-buf/heaps/system_heap.c b/drivers/dma-buf/heaps/system_heap.c
index bbe7881f1360..4c782fe33fd4 100644
--- a/drivers/dma-buf/heaps/system_heap.c
+++ b/drivers/dma-buf/heaps/system_heap.c
@@ -186,20 +186,35 @@ static int system_heap_mmap(struct dma_buf *dmabuf, struct vm_area_struct *vma)
 	struct system_heap_buffer *buffer = dmabuf->priv;
 	struct sg_table *table = &buffer->sg_table;
 	unsigned long addr = vma->vm_start;
-	struct sg_page_iter piter;
-	int ret;
+	unsigned long pgoff = vma->vm_pgoff;
+	struct scatterlist *sg;
+	int i, ret;
+
+	for_each_sgtable_sg(table, sg, i) {
+		unsigned long n = sg->length >> PAGE_SHIFT;
 
-	for_each_sgtable_page(table, &piter, vma->vm_pgoff) {
-		struct page *page = sg_page_iter_page(&piter);
+		if (pgoff < n)
+			break;
+		pgoff -= n;
+	}
+
+	for (; sg && addr < vma->vm_end; sg = sg_next(sg)) {
+		unsigned long n = (sg->length >> PAGE_SHIFT) - pgoff;
+		struct page *page = sg_page(sg) + pgoff;
+		unsigned long size = n << PAGE_SHIFT;
+
+		if (addr + size > vma->vm_end)
+			size = vma->vm_end - addr;
 
-		ret = remap_pfn_range(vma, addr, page_to_pfn(page), PAGE_SIZE,
-				      vma->vm_page_prot);
+		ret = remap_pfn_range(vma, addr, page_to_pfn(page),
+				size, vma->vm_page_prot);
 		if (ret)
 			return ret;
-		addr += PAGE_SIZE;
-		if (addr >= vma->vm_end)
-			return 0;
+
+		addr += size;
+		pgoff = 0;
 	}
+
 	return 0;
 }
 
-- 
2.39.3 (Apple Git-146)

_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org
