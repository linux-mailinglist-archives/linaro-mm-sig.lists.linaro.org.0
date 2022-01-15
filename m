Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 6EDE44B63FF
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 15 Feb 2022 08:10:27 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 9F50A401D4
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 15 Feb 2022 07:10:26 +0000 (UTC)
Received: from mail-yb1-f202.google.com (mail-yb1-f202.google.com [209.85.219.202])
	by lists.linaro.org (Postfix) with ESMTPS id 6F3933ECD2
	for <linaro-mm-sig@lists.linaro.org>; Sat, 15 Jan 2022 01:08:26 +0000 (UTC)
Received: by mail-yb1-f202.google.com with SMTP id s13-20020a252c0d000000b00611786a6925so21781538ybs.8
        for <linaro-mm-sig@lists.linaro.org>; Fri, 14 Jan 2022 17:08:26 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=google.com; s=20210112;
        h=date:in-reply-to:message-id:mime-version:references:subject:from:to
         :cc;
        bh=sWrCFDJqqXXVSbGVP8s44HP9fGoTeRrZv/20U3l5a9g=;
        b=HsuhTKzXI1C0Bg5qlXVEUKgy0Y59ylb/5klYriv4XRxp76HIR6zzyRrTkNqoZeAa/+
         b49JcXDqX9e/xJ/SUE/3bVyoaZ0lg1xpEMerwoqfVEOSdzj9xLfLi1s1GhQ+IDW9v6/g
         5GED0tKyYGSjJ2/1/kebwAkX3iCP3oywer4GN/EkL+RsKPE2U2Hk2kgIljMzFb8dnS5Y
         FqX9cDLP+EMxfP4f35RPYTdaQONdRKxIF2yg0spELgieeV12+CV7Uxpttxe+nF4d6tb3
         BSX5dX+1OeDTvZq4IqC6x7NYZPz51nGacX/FtiiRJ2MyzFoQX3zRra2Gfbo1QjE20yf4
         5vjw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:date:in-reply-to:message-id:mime-version
         :references:subject:from:to:cc;
        bh=sWrCFDJqqXXVSbGVP8s44HP9fGoTeRrZv/20U3l5a9g=;
        b=gFcjgnDye5gy4rDinEsBUEOvfgI2O7LbU/TayBApmyyVNbN/JQGXw/7DR8YKYJXBid
         e0tZ1Ub6JmFimjna+YM6FLEcq570FGy+ARRQaUmkrva0ZLfVgI1OQVuB/cEKJ/LMvHd/
         hs9aM8Tco55PKePguduBxy+Wv+BSclkFypTcoXKhp6Z1808IHWlAvomyzd7lmvE5k5BM
         f6qok75iqDj/4CNzFhXr0CDACfDU4HBLR5/GS6Rx1Ik+gwZq98zPX8iog4IZl9iQdRHd
         nuz9f5GOToMkMkex+RkCyBQXY9+s47W50Zn8/KpuMgYtFVAEibAxMSLn7pPnGEXIrHQ1
         C8kQ==
X-Gm-Message-State: AOAM5302K1gdpKH5KTiNuPCHILWY+KFTQhEOiwFH8taTPamdeI44snLZ
	ucr04EmkFXF3AXl0MSzVUgi7Im6iDoY=
X-Google-Smtp-Source: ABdhPJxrB6uVRtSUJNiCU0mlnPcpg+H8hNUC8zW0t5DkVGpaOEH4KKhobnZfY7Jxl05uHClUdyHKGaFNjYw=
X-Received: from hridya.mtv.corp.google.com ([2620:15c:211:200:5860:362a:3112:9d85])
 (user=hridya job=sendgmr) by 2002:a05:6902:723:: with SMTP id
 l3mr17660046ybt.378.1642208905843; Fri, 14 Jan 2022 17:08:25 -0800 (PST)
Date: Fri, 14 Jan 2022 17:06:02 -0800
In-Reply-To: <20220115010622.3185921-1-hridya@google.com>
Message-Id: <20220115010622.3185921-5-hridya@google.com>
Mime-Version: 1.0
References: <20220115010622.3185921-1-hridya@google.com>
X-Mailer: git-send-email 2.34.1.703.g22d0c6ccf7-goog
From: Hridya Valsaraju <hridya@google.com>
To: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, Maxime Ripard <mripard@kernel.org>,
	Thomas Zimmermann <tzimmermann@suse.de>, David Airlie <airlied@linux.ie>, Daniel Vetter <daniel@ffwll.ch>,
	Jonathan Corbet <corbet@lwn.net>, Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	"=?UTF-8?q?Arve=20Hj=C3=B8nnev=C3=A5g?=" <arve@android.com>, Todd Kjos <tkjos@android.com>, Martijn Coenen <maco@android.com>,
	Joel Fernandes <joel@joelfernandes.org>, Christian Brauner <christian@brauner.io>,
	Hridya Valsaraju <hridya@google.com>, Suren Baghdasaryan <surenb@google.com>,
	Sumit Semwal <sumit.semwal@linaro.org>, Benjamin Gaignard <benjamin.gaignard@linaro.org>,
	Liam Mark <lmark@codeaurora.org>, Laura Abbott <labbott@redhat.com>,
	Brian Starkey <Brian.Starkey@arm.com>, John Stultz <john.stultz@linaro.org>,
	"=?UTF-8?q?Christian=20K=C3=B6nig?=" <christian.koenig@amd.com>, Tejun Heo <tj@kernel.org>,
	Zefan Li <lizefan.x@bytedance.com>, Johannes Weiner <hannes@cmpxchg.org>,
	Dave Airlie <airlied@redhat.com>, Jason Ekstrand <jason@jlekstrand.net>,
	Matthew Auld <matthew.auld@intel.com>, Matthew Brost <matthew.brost@intel.com>,
	Li Li <dualli@google.com>, Marco Ballesio <balejs@google.com>, Miguel Ojeda <ojeda@kernel.org>,
	Hang Lu <hangl@codeaurora.org>, Wedson Almeida Filho <wedsonaf@google.com>,
	Masahiro Yamada <masahiroy@kernel.org>, Andrew Morton <akpm@linux-foundation.org>,
	Nathan Chancellor <nathan@kernel.org>, Kees Cook <keescook@chromium.org>,
	Nick Desaulniers <ndesaulniers@google.com>, Chris Down <chris@chrisdown.name>,
	Vipin Sharma <vipinsh@google.com>, Daniel Borkmann <daniel@iogearbox.net>,
	Vlastimil Babka <vbabka@suse.cz>, Arnd Bergmann <arnd@arndb.de>, dri-devel@lists.freedesktop.org,
	linux-doc@vger.kernel.org, linux-kernel@vger.kernel.org,
	linux-media@vger.kernel.org, linaro-mm-sig@lists.linaro.org,
	cgroups@vger.kernel.org
X-MailFrom: 3iR7iYQYKDWQJTKFaCIQQING.EQONKPCTQ-OO-UKINKUVU.NKPCTQ.QTI@flex--hridya.bounces.google.com
X-Mailman-Rule-Hits: max-recipients
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-size; news-moderation; no-subject; digests; suspicious-header
Message-ID-Hash: S5SAMMG7JZVXXZNHSHH5GZTQQ67BE6NW
X-Message-ID-Hash: S5SAMMG7JZVXXZNHSHH5GZTQQ67BE6NW
X-Mailman-Approved-At: Tue, 15 Feb 2022 07:10:00 +0000
CC: Kenny.Ho@amd.com, daniels@collabora.com, kaleshsingh@google.com, tjmercier@google.com
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] [RFC 4/6] dma-buf: Add DMA-BUF exporter op to charge a DMA-BUF to a cgroup.
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/S5SAMMG7JZVXXZNHSHH5GZTQQ67BE6NW/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

The optional exporter op provides a way for processes to transfer
charge of a buffer to a different process. This is essential for the
cases where a central allocator process does allocations for various
subsystems, hands over the fd to the client who
requested the memory and drops all references to the allocated memory.

Signed-off-by: Hridya Valsaraju <hridya@google.com>
---
 include/linux/dma-buf.h | 18 ++++++++++++++++++
 1 file changed, 18 insertions(+)

diff --git a/include/linux/dma-buf.h b/include/linux/dma-buf.h
index 7ab50076e7a6..d5e52f81cc6f 100644
--- a/include/linux/dma-buf.h
+++ b/include/linux/dma-buf.h
@@ -13,6 +13,7 @@
 #ifndef __DMA_BUF_H__
 #define __DMA_BUF_H__
 
+#include <linux/cgroup_gpu.h>
 #include <linux/dma-buf-map.h>
 #include <linux/file.h>
 #include <linux/err.h>
@@ -285,6 +286,23 @@ struct dma_buf_ops {
 
 	int (*vmap)(struct dma_buf *dmabuf, struct dma_buf_map *map);
 	void (*vunmap)(struct dma_buf *dmabuf, struct dma_buf_map *map);
+
+	/**
+	 * @charge_to_cgroup:
+	 *
+	 * This is called by an exporter to charge a buffer to the specified
+	 * cgroup. The caller must hold a reference to @gpucg obtained via
+	 * gpucg_get(). The DMA-BUF will be uncharged from the cgroup it is
+	 * currently charged to before being charged to @gpucg. The caller must
+	 * belong to the cgroup the buffer is currently charged to.
+	 *
+	 * This callback is optional.
+	 *
+	 * Returns:
+	 *
+	 * 0 on success or negative error code on failure.
+	 */
+	int (*charge_to_cgroup)(struct dma_buf *dmabuf, struct gpucg *gpucg);
 };
 
 /**
-- 
2.34.1.703.g22d0c6ccf7-goog

_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org
