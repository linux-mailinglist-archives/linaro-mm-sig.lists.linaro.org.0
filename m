Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id 5F0NLU5uR2q8YAAAu9opvQ
	(envelope-from <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>)
	for <lists+linaro-mm-sig@lfdr.de>; Fri, 03 Jul 2026 10:09:50 +0200
X-Original-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [44.210.186.118])
	by mail.lfdr.de (Postfix) with ESMTPS id 336156FFE95
	for <lists+linaro-mm-sig@lfdr.de>; Fri, 03 Jul 2026 10:09:50 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=fail ("body hash did not verify") header.d=gmail.com header.s=20251104 header.b=Q5k2HpJO;
	dmarc=fail reason="SPF not aligned (relaxed)" header.from=gmail.com (policy=none);
	spf=pass (mail.lfdr.de: domain of "linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org" designates 44.210.186.118 as permitted sender) smtp.mailfrom="linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org"
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 37F6540C68
	for <lists+linaro-mm-sig@lfdr.de>; Fri,  3 Jul 2026 08:09:49 +0000 (UTC)
Received: from mail-pj1-f46.google.com (mail-pj1-f46.google.com [209.85.216.46])
	by lists.linaro.org (Postfix) with ESMTPS id 119C03F900
	for <linaro-mm-sig@lists.linaro.org>; Fri,  3 Jul 2026 08:09:33 +0000 (UTC)
Received: by mail-pj1-f46.google.com with SMTP id 98e67ed59e1d1-380d9481551so320829a91.0
        for <linaro-mm-sig@lists.linaro.org>; Fri, 03 Jul 2026 01:09:33 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1783066172; x=1783670972; darn=lists.linaro.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to:content-type;
        bh=w87AnrTB3+K5h4mEbRFEu3fZorqFSIFJ3pSg+bs+2hw=;
        b=Q5k2HpJO0sD8hzGCb1U5vXlPUSdgMLhBEio1ASltK1ra1YspQzXWWc8nIeWYfxJIRe
         fWZCA0Ves/2IfU1dZp1YkAVIW3NvVaTN1gx/050OOVQFu3TsDnjkbBzO6A3DEtEQFeN6
         OcW4X4oyVDRQyY4FfcJ62FndVAVeyYXhZAfV/Mgq9dBWIFQuE//2RDfyPI4Ipt09FO5p
         ZDoyZ557caOcvKYd0jpIflsJLDdpFlzhH9vzsWbTRMrDXLZV9Ngp6XnpenTkSI0vAeBg
         XHutq3nV1QmeI26S85xHP8aZ5oZiiPOb6rn0idRP1U4SFV5gitXN0PwGKX47iMqsTL9M
         d2xw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1783066172; x=1783670972;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=w87AnrTB3+K5h4mEbRFEu3fZorqFSIFJ3pSg+bs+2hw=;
        b=Is+Vwb2hd/FNB8lde1/+5RHiR7OP/GQe7MnACwpKEQWPpH3al8RETx0guVW3pcBL6g
         dd4mT9CPNPH6LvbRywpCSw5Q/1QPdM1Lz1HAzrdCiZqF4PtzbZZJClxC0MODcdMOvRUi
         F0eTjjXYajXcmJD5qB4pa3LUQPN/+V9qdiSem1xDS7i9XBlb+uDRqEFnYv0YQTObwIss
         wJW//i60lQcYZOEsbnFaqCpswpJD9AlsE+Anax8zJDtBjwfy8wF4BwwQhdGl2BkNaD1g
         lPdht8aH8gR+7jrZABnkCXQp1B7Jhd+nyocD4BOpOK5jXxcz/voPba53iK3ncCDtkYoq
         UwUA==
X-Forwarded-Encrypted: i=1; AHgh+RofXEzv9LH3BFDbFKWyXB6eTlfIugZifx0huPv8LusdN9nCxX6A5JixwnMJbflVy+AtLY5ywPf/hvgL93U5@lists.linaro.org
X-Gm-Message-State: AOJu0Yxy3iTlZB9vbC1mLzTn1V82j6LxMLsGV9ZnI4EbcyDEHqqqEjdV
	gJxEcUivY5pnfGc224B7S7C7i9GcOV+AiFqLqUvuNes4XwAn0LtTFwW0
X-Gm-Gg: AfdE7clXOdosSNYdsE0DvFb6rWhxBrLlHohK05mSQtn8Q2V/gHscodWKr+/yaQCC96a
	JCX+h5Ab1T0dYm23pSOLvggFq3ES2b1FCCzsscMcrI9ZNIA+rFT6iz7ykHlatyNeQ2XJiE8bxo4
	Vc6E7LsuICfn+fOAuaS80FOx9M+TbAsv7X9BoIP+507ywydhYpS/raH0rUdD2khzZAgHS5kSNEe
	QwNt1yhFofOLVOk9Yhb6foFqp4iKGe3kzPKNGKZ6CD1keyex8uWBsMcHtdlKfa1kq71f+cQhHJv
	bVQn17hZ/1JD3MWSZy7gKbjEXfL70JC2bmUcEdo2J+sXoksPp8gELp6/pZKjkn4MhDT9E7K8cx9
	O/2ik1Lk7cisQWh5Hjnjq47x+06PWAK7colNk/0MZkC2o2o7E9HuOfnWhszi49VRRBWCyXyGVWx
	VYvMis6ldcP8QGnOSBqeR3SeMBLc3i3sIUiTYkhWQwzvZmJds+zMN+fQ==
X-Received: by 2002:a17:90b:1d8d:b0:381:20b:a9ee with SMTP id 98e67ed59e1d1-381020baa35mr4976082a91.14.1783066171845;
        Fri, 03 Jul 2026 01:09:31 -0700 (PDT)
Received: from localhost.localdomain ([45.67.201.99])
        by smtp.gmail.com with ESMTPSA id 98e67ed59e1d1-38127ae18f7sm614923a91.3.2026.07.03.01.09.27
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 03 Jul 2026 01:09:31 -0700 (PDT)
From: Baineng Shou <shoubaineng@gmail.com>
To: Sumit Semwal <sumit.semwal@linaro.org>,
	Benjamin Gaignard <benjamin.gaignard@collabora.com>,
	Brian Starkey <Brian.Starkey@arm.com>,
	John Stultz <jstultz@google.com>,
	"T.J. Mercier" <tjmercier@google.com>,
	=?UTF-8?q?Christian=20K=C3=B6nig?= <christian.koenig@amd.com>,
	Sandeep Patil <sspatil@android.com>,
	"Andrew F. Davis" <afd@ti.com>
Date: Fri,  3 Jul 2026 16:09:22 +0800
Message-Id: <20260703080922.1838362-1-shoubaineng@gmail.com>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
X-Spamd-Bar: --
Message-ID-Hash: ZUZZCWWW5XL7RZTACL2QFBJFQKTFRVY2
X-Message-ID-Hash: ZUZZCWWW5XL7RZTACL2QFBJFQKTFRVY2
X-MailFrom: shoubaineng@gmail.com
X-Mailman-Rule-Hits: member-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address
CC: Baineng Shou <shoubaineng@gmail.com>, stable@vger.kernel.org, "open list:DMA-BUF HEAPS FRAMEWORK" <linux-media@vger.kernel.org>, "open list:DMA-BUF HEAPS FRAMEWORK" <dri-devel@lists.freedesktop.org>, "moderated list:DMA-BUF HEAPS FRAMEWORK" <linaro-mm-sig@lists.linaro.org>, open list <linux-kernel@vger.kernel.org>
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] [PATCH] dma-buf: dma-heap: close installed fd when copy_to_user() fails
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/ZUZZCWWW5XL7RZTACL2QFBJFQKTFRVY2/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
X-Rspamd-Action: no action
X-Spamd-Result: default: False [1.59 / 15.00];
	MID_CONTAINS_FROM(1.00)[];
	R_DKIM_REJECT(1.00)[gmail.com:s=20251104];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+mx];
	MIME_GOOD(-0.10)[text/plain];
	DMARC_POLICY_SOFTFAIL(0.10)[gmail.com : SPF not aligned (relaxed),none];
	HAS_LIST_UNSUB(-0.01)[];
	FORGED_RECIPIENTS(0.00)[m:sumit.semwal@linaro.org,m:benjamin.gaignard@collabora.com,m:Brian.Starkey@arm.com,m:jstultz@google.com,m:tjmercier@google.com,m:christian.koenig@amd.com,m:sspatil@android.com,m:afd@ti.com,m:shoubaineng@gmail.com,m:stable@vger.kernel.org,m:linux-media@vger.kernel.org,m:dri-devel@lists.freedesktop.org,m:linaro-mm-sig@lists.linaro.org,m:linux-kernel@vger.kernel.org,s:lists@lfdr.de];
	RCVD_COUNT_THREE(0.00)[4];
	TAGGED_FROM(0.00)[lists,linaro-mm-sig=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	ARC_NA(0.00)[];
	FORWARDED(0.00)[lists@lfdr.de];
	FREEMAIL_FROM(0.00)[gmail.com];
	FORGED_SENDER(0.00)[shoubaineng@gmail.com,linaro-mm-sig-bounces@lists.linaro.org];
	RCPT_COUNT_TWELVE(0.00)[14];
	MIME_TRACE(0.00)[0:+];
	FREEMAIL_CC(0.00)[gmail.com,vger.kernel.org,lists.freedesktop.org,lists.linaro.org];
	FORGED_SENDER_MAILLIST(0.00)[];
	DKIM_TRACE(0.00)[gmail.com:-];
	FORGED_SENDER_FORWARDING(0.00)[];
	ALIAS_RESOLVED(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[shoubaineng@gmail.com,linaro-mm-sig-bounces@lists.linaro.org];
	FROM_HAS_DN(0.00)[];
	TO_DN_SOME(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[linaro-mm-sig];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	ASN(0.00)[asn:14618, ipnet:44.192.0.0/11, country:US];
	DBL_BLOCKED_OPENRESOLVER(0.00)[linaro.org:email,lists.linaro.org:from_smtp,lists.linaro.org:helo,lists.linaro.org:rdns]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 336156FFE95

DMA_HEAP_IOCTL_ALLOC allocates a dma-buf and installs an fd into the
caller's fd table via fd_install() before dma_heap_ioctl() copies the
result back to userspace. If the trailing copy_to_user() fails, the
ioctl returns -EFAULT and userspace never learns the fd number, but
the fd (and the underlying dma-buf reference) remain in the caller's
fd table and are leaked for the lifetime of the process.

The failure is easily reachable from userspace: pass a struct
dma_heap_allocation_data that lives in a page whose protection is
flipped to PROT_READ between copy_from_user() and copy_to_user()
(e.g. via mprotect()). Each such ioctl leaks one dmabuf fd; repeating
the call quickly fills /proc/<pid>/fd with anonymous "/dmabuf:"
entries that only go away when the process exits.

Fix it by closing the installed fd (and clearing the fd field of the
kernel-side copy) when copy_to_user() fails after a successful
allocation, so the error path matches what userspace observes: no fd
was returned, therefore no fd is left behind.

Fixes: c02a81fba74f ("dma-buf: Add dma-buf heaps framework")
Cc: stable@vger.kernel.org
Signed-off-by: Baineng Shou <shoubaineng@gmail.com>
---

Reproducer (full source, gcc -o poc poc.c; run as root):

    // poc.c -- leak one dma-buf fd per DMA_HEAP_IOCTL_ALLOC
    //          when copy_to_user() fails
    #include <fcntl.h>
    #include <stdio.h>
    #include <stdlib.h>
    #include <string.h>
    #include <unistd.h>
    #include <sys/ioctl.h>
    #include <sys/mman.h>
    #include <linux/dma-heap.h>

    int main(int argc, char **argv)
    {
        int n = argc > 1 ? atoi(argv[1]) : 100;
        long ps = sysconf(_SC_PAGESIZE);

        int heap = open("/dev/dma_heap/system", O_RDWR | O_CLOEXEC);
        if (heap < 0)
            return perror("open"), 1;

        for (int i = 0; i < n; i++) {
            /* Put a valid request in a page, then make the page
             * read-only: copy_from_user() still succeeds and the
             * dma-buf is allocated and fd_install()'d, but the
             * trailing copy_to_user() fails and the fd, never
             * returned to us, is leaked.
             */
            struct dma_heap_allocation_data *req =
                mmap(NULL, ps, PROT_READ | PROT_WRITE,
                     MAP_PRIVATE | MAP_ANONYMOUS, -1, 0);

            memset(req, 0, sizeof(*req));
            req->len = ps;
            req->fd_flags = O_RDWR | O_CLOEXEC;

            mprotect(req, ps, PROT_READ);
            ioctl(heap, DMA_HEAP_IOCTL_ALLOC, req);  /* -EFAULT */
            munmap(req, ps);
        }

        printf("done: check ls -l /proc/%d/fd for %d leaked fds\n",
               getpid(), n);
        pause();
        return 0;
    }

Before the fix, ./poc 10 leaves 10 anonymous dmabuf fds in the
caller's fd table:

    # ls -l /proc/$(pgrep poc)/fd
    lrwx------ 1 root root 64 Jan  1 00:03 3 -> /dev/dma_heap/system
    lrwx------ 1 root root 64 Jan  1 00:03 4 -> /dmabuf:
    lrwx------ 1 root root 64 Jan  1 00:03 5 -> /dmabuf:
    lrwx------ 1 root root 64 Jan  1 00:03 6 -> /dmabuf:
    lrwx------ 1 root root 64 Jan  1 00:03 7 -> /dmabuf:
    lrwx------ 1 root root 64 Jan  1 00:03 8 -> /dmabuf:
    lrwx------ 1 root root 64 Jan  1 00:03 9 -> /dmabuf:
    lrwx------ 1 root root 64 Jan  1 00:03 10 -> /dmabuf:
    lrwx------ 1 root root 64 Jan  1 00:03 11 -> /dmabuf:
    lrwx------ 1 root root 64 Jan  1 00:03 12 -> /dmabuf:
    lrwx------ 1 root root 64 Jan  1 00:03 13 -> /dmabuf:

After the fix, only /dev/dma_heap/system remains open; the
anonymous "/dmabuf:" entries are gone.

 drivers/dma-buf/dma-heap.c | 11 ++++++++++-
 1 file changed, 10 insertions(+), 1 deletion(-)

diff --git a/drivers/dma-buf/dma-heap.c b/drivers/dma-buf/dma-heap.c
index a76bf3f8b071..0dd7a84b06bf 100644
--- a/drivers/dma-buf/dma-heap.c
+++ b/drivers/dma-buf/dma-heap.c
@@ -18,6 +18,7 @@
 #include <linux/uaccess.h>
 #include <linux/xarray.h>
 #include <uapi/linux/dma-heap.h>
+#include <linux/fdtable.h>
 
 #define DEVNAME "dma_heap"
 
@@ -181,8 +182,16 @@ static long dma_heap_ioctl(struct file *file, unsigned int ucmd,
 		goto err;
 	}
 
-	if (copy_to_user((void __user *)arg, kdata, out_size) != 0)
+	if (copy_to_user((void __user *)arg, kdata, out_size) != 0) {
+		if (kcmd == DMA_HEAP_IOCTL_ALLOC && ret == 0) {
+			struct dma_heap_allocation_data *h = (void *)kdata;
+
+			close_fd(h->fd);
+			h->fd = -1;
+		}
 		ret = -EFAULT;
+	}
+
 err:
 	if (kdata != stack_kdata)
 		kfree(kdata);
-- 
2.34.1

_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org
