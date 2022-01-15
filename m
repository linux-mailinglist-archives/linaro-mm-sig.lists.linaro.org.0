Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id A4EE34B6402
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 15 Feb 2022 08:10:39 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id D5780401C4
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 15 Feb 2022 07:10:38 +0000 (UTC)
Received: from mail-yb1-f201.google.com (mail-yb1-f201.google.com [209.85.219.201])
	by lists.linaro.org (Postfix) with ESMTPS id B49E33ECD2
	for <linaro-mm-sig@lists.linaro.org>; Sat, 15 Jan 2022 01:09:08 +0000 (UTC)
Received: by mail-yb1-f201.google.com with SMTP id s13-20020a252c0d000000b00611786a6925so21785209ybs.8
        for <linaro-mm-sig@lists.linaro.org>; Fri, 14 Jan 2022 17:09:08 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=google.com; s=20210112;
        h=date:in-reply-to:message-id:mime-version:references:subject:from:to
         :cc;
        bh=kkjQvBHUpUsPJOcuRnb4FbpqpDLYZFNC/PGNH3Zg5WU=;
        b=B7HrMalKbOrQ0jLo+t2k5LKQyXsYTrKPSnoCQbJTFt3xXAdNgf+Y3bG0OwuuV3conm
         9YDTffSi81yddsv2BoH3Yepu0Qf4t9Yufib51okExGf5c00BzhktLBE/1fgctRjU17A0
         FE5Q2yG/2zZsbcQO5KIgRMuIdtuJb3ntKNdMvUrJDIlln1wNgH3uN1Xs3Tq4HUuo2nQw
         vX/4a2fLq5zN8JuJ/ROXboM4iqrNUfkxyQzzeG4K6rLmd0dL8lZlsn2U8cU340A6r7rt
         CrzHH2yHQihIsNpJ9nYxK0RZUUVox7TiNHvKS/20HXPEnTeOhUMt/SoHjy/YrqoHfDGB
         975A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:date:in-reply-to:message-id:mime-version
         :references:subject:from:to:cc;
        bh=kkjQvBHUpUsPJOcuRnb4FbpqpDLYZFNC/PGNH3Zg5WU=;
        b=J3txDP4nbkI69p80SLRgulOuc2iguePlXhC0+8btmbUszG20XAYwVaFgP6kHMBkbp1
         TEVyFUhfrT61zBqkwb8s+ptQqpLsr4WkhY259oINsOp/5cOlFizXwzaWBtrXhnPU8ONo
         2+SfGyDtR4WAX3dAjRF0NzDONxstGEGZ1nznE4nwRcrFJiXuRDgnd+PZMdTB8dcdVRgx
         dPBpE8VCRz3o2REmegfd2l8QF+gkyx2vxYvqYIs/LVg8x72k8B13VKNvInLVkQf3QM4i
         xY0/LRLj4ZJNec3MvmosK+f7sYfIzFwBRrRIkQDLU0L2UbSjr8hg9kEbAddmv2vBcXt8
         F0Yg==
X-Gm-Message-State: AOAM530VdSKNQ5MSlPhMJ9Yr4PNA8zePDymtUAnVc0i76rqMlzlk5zJL
	oFpWr5d6aRK3bipgB9fU2k61syiOzWI=
X-Google-Smtp-Source: ABdhPJz9CR2IoAwevLCGCWJ5VPMm/mBeIOkcx7f8CHh3K/XQY53M+B3vhZstfGoP5vWHDyFMJE3GX6t7YyU=
X-Received: from hridya.mtv.corp.google.com ([2620:15c:211:200:5860:362a:3112:9d85])
 (user=hridya job=sendgmr) by 2002:a25:7b44:: with SMTP id w65mr15284933ybc.59.1642208948043;
 Fri, 14 Jan 2022 17:09:08 -0800 (PST)
Date: Fri, 14 Jan 2022 17:06:04 -0800
In-Reply-To: <20220115010622.3185921-1-hridya@google.com>
Message-Id: <20220115010622.3185921-7-hridya@google.com>
Mime-Version: 1.0
References: <20220115010622.3185921-1-hridya@google.com>
X-Mailer: git-send-email 2.34.1.703.g22d0c6ccf7-goog
From: Hridya Valsaraju <hridya@google.com>
To: David Airlie <airlied@linux.ie>, Daniel Vetter <daniel@ffwll.ch>,
	Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, Maxime Ripard <mripard@kernel.org>,
	Thomas Zimmermann <tzimmermann@suse.de>, Jonathan Corbet <corbet@lwn.net>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	"=?UTF-8?q?Arve=20Hj=C3=B8nnev=C3=A5g?=" <arve@android.com>, Todd Kjos <tkjos@android.com>, Martijn Coenen <maco@android.com>,
	Joel Fernandes <joel@joelfernandes.org>, Christian Brauner <christian@brauner.io>,
	Hridya Valsaraju <hridya@google.com>, Suren Baghdasaryan <surenb@google.com>,
	Sumit Semwal <sumit.semwal@linaro.org>, Benjamin Gaignard <benjamin.gaignard@linaro.org>,
	Liam Mark <lmark@codeaurora.org>, Laura Abbott <labbott@redhat.com>,
	Brian Starkey <Brian.Starkey@arm.com>, John Stultz <john.stultz@linaro.org>,
	"=?UTF-8?q?Christian=20K=C3=B6nig?=" <christian.koenig@amd.com>, Tejun Heo <tj@kernel.org>,
	Zefan Li <lizefan.x@bytedance.com>, Johannes Weiner <hannes@cmpxchg.org>,
	Dave Airlie <airlied@redhat.com>, Kenneth Graunke <kenneth@whitecape.org>,
	Jason Ekstrand <jason@jlekstrand.net>, Matthew Auld <matthew.auld@intel.com>,
	Matthew Brost <matthew.brost@intel.com>, Li Li <dualli@google.com>,
	Marco Ballesio <balejs@google.com>, Hang Lu <hangl@codeaurora.org>,
	Wedson Almeida Filho <wedsonaf@google.com>, Masahiro Yamada <masahiroy@kernel.org>,
	Nathan Chancellor <nathan@kernel.org>, Andrew Morton <akpm@linux-foundation.org>,
	Kees Cook <keescook@chromium.org>, Nick Desaulniers <ndesaulniers@google.com>,
	Miguel Ojeda <ojeda@kernel.org>, Chris Down <chris@chrisdown.name>,
	Vipin Sharma <vipinsh@google.com>, Daniel Borkmann <daniel@iogearbox.net>,
	Vlastimil Babka <vbabka@suse.cz>, Arnd Bergmann <arnd@arndb.de>, dri-devel@lists.freedesktop.org,
	linux-doc@vger.kernel.org, linux-kernel@vger.kernel.org,
	linux-media@vger.kernel.org, linaro-mm-sig@lists.linaro.org,
	cgroups@vger.kernel.org
X-MailFrom: 3tB7iYQYKDY80A1wHtz77z4x.v75416tA7-55-B1z41BCB.416tA7.7Az@flex--hridya.bounces.google.com
X-Mailman-Rule-Hits: max-recipients
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-size; news-moderation; no-subject; digests; suspicious-header
Message-ID-Hash: 5GDYS2LLVPXCEFD5VYTNRMKTY5EJDEFM
X-Message-ID-Hash: 5GDYS2LLVPXCEFD5VYTNRMKTY5EJDEFM
X-Mailman-Approved-At: Tue, 15 Feb 2022 07:10:04 +0000
CC: Kenny.Ho@amd.com, daniels@collabora.com, kaleshsingh@google.com, tjmercier@google.com
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] [RFC 6/6] android: binder: Add a buffer flag to relinquish ownership of fds
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/5GDYS2LLVPXCEFD5VYTNRMKTY5EJDEFM/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

This patch introduces a buffer flag BINDER_BUFFER_FLAG_SENDER_NO_NEED
that a process sending an fd array to another process over binder IPC
can set to relinquish ownership of the fds being sent for memory
accounting purposes. If the flag is found to be set during the fd array
translation and the fd is for a DMA-BUF, the buffer is uncharged from
the sender's cgroup and charged to the receiving process's cgroup
instead.

It is upto the sending process to ensure that it closes the fds
regardless of whether the transfer failed or succeeded.

Most graphics shared memory allocations in Android are done by the
graphics allocator HAL process. On requests from clients, the HAL process
allocates memory and sends the fds to the clients over binder IPC.
The graphics allocator HAL will not retain any references to the
buffers. When the HAL sets the BINDER_BUFFER_FLAG_SENDER_NO_NEED for fd
arrays holding DMA-BUF fds, the gpu cgroup controller will be able to
correctly charge the buffers to the client processes instead of the
graphics allocator HAL.

Signed-off-by: Hridya Valsaraju <hridya@google.com>
---
 drivers/android/binder.c            | 32 +++++++++++++++++++++++++++++
 include/uapi/linux/android/binder.h |  1 +
 2 files changed, 33 insertions(+)

diff --git a/drivers/android/binder.c b/drivers/android/binder.c
index 5497797ab258..83082fd1ab6a 100644
--- a/drivers/android/binder.c
+++ b/drivers/android/binder.c
@@ -42,6 +42,7 @@
 
 #define pr_fmt(fmt) KBUILD_MODNAME ": " fmt
 
+#include <linux/dma-buf.h>
 #include <linux/fdtable.h>
 #include <linux/file.h>
 #include <linux/freezer.h>
@@ -2482,8 +2483,11 @@ static int binder_translate_fd_array(struct list_head *pf_head,
 {
 	binder_size_t fdi, fd_buf_size;
 	binder_size_t fda_offset;
+	bool transfer_gpu_charge = false;
 	const void __user *sender_ufda_base;
 	struct binder_proc *proc = thread->proc;
+	struct binder_proc *target_proc = t->to_proc;
+
 	int ret;
 
 	fd_buf_size = sizeof(u32) * fda->num_fds;
@@ -2520,8 +2524,15 @@ static int binder_translate_fd_array(struct list_head *pf_head,
 	if (ret)
 		return ret;
 
+	if (IS_ENABLED(CONFIG_CGROUP_GPU) &&
+	    parent->flags & BINDER_BUFFER_FLAG_SENDER_NO_NEED)
+		transfer_gpu_charge = true;
+
 	for (fdi = 0; fdi < fda->num_fds; fdi++) {
 		u32 fd;
+		struct dma_buf *dmabuf;
+		struct gpucg *gpucg;
+
 		binder_size_t offset = fda_offset + fdi * sizeof(fd);
 		binder_size_t sender_uoffset = fdi * sizeof(fd);
 
@@ -2531,6 +2542,27 @@ static int binder_translate_fd_array(struct list_head *pf_head,
 						  in_reply_to);
 		if (ret)
 			return ret > 0 ? -EINVAL : ret;
+
+		if (!transfer_gpu_charge)
+			continue;
+
+		dmabuf = dma_buf_get(fd);
+		if (IS_ERR(dmabuf))
+			continue;
+
+		if (dmabuf->ops->charge_to_cgroup) {
+			gpucg = gpucg_get(target_proc->tsk);
+			ret = dmabuf->ops->charge_to_cgroup(dmabuf, gpucg);
+			if (ret) {
+				pr_warn("%d:%d Unable to transfer DMA-BUF fd charge to %d",
+					proc->pid, thread->pid, target_proc->pid);
+				gpucg_put(gpucg);
+			}
+		} else {
+			pr_warn("%d:%d DMA-BUF exporter %s is not configured correctly for GPU cgroup memory accounting",
+				proc->pid, thread->pid, dmabuf->exp_name);
+		}
+		dma_buf_put(dmabuf);
 	}
 	return 0;
 }
diff --git a/include/uapi/linux/android/binder.h b/include/uapi/linux/android/binder.h
index ad619623571e..c85f0014c341 100644
--- a/include/uapi/linux/android/binder.h
+++ b/include/uapi/linux/android/binder.h
@@ -137,6 +137,7 @@ struct binder_buffer_object {
 
 enum {
 	BINDER_BUFFER_FLAG_HAS_PARENT = 0x01,
+	BINDER_BUFFER_FLAG_SENDER_NO_NEED = 0x02,
 };
 
 /* struct binder_fd_array_object - object describing an array of fds in a buffer
-- 
2.34.1.703.g22d0c6ccf7-goog

_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org
