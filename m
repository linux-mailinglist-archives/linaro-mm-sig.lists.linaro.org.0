Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 22B78AA89DE
	for <lists+linaro-mm-sig@lfdr.de>; Mon,  5 May 2025 00:43:40 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 3AB90454DF
	for <lists+linaro-mm-sig@lfdr.de>; Sun,  4 May 2025 22:43:39 +0000 (UTC)
Received: from mail-pj1-f73.google.com (mail-pj1-f73.google.com [209.85.216.73])
	by lists.linaro.org (Postfix) with ESMTPS id 5AB8745946
	for <linaro-mm-sig@lists.linaro.org>; Sun,  4 May 2025 22:42:47 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=google.com header.s=20230601 header.b=Zye+mGjW;
	dmarc=pass (policy=reject) header.from=google.com;
	spf=pass (lists.linaro.org: domain of 3Zu0XaAkKDeccSVNaLRNaPXXPUN.LXVURWJaX-VV-bRPURbcb.URWJaX.XaP@flex--tjmercier.bounces.google.com designates 209.85.216.73 as permitted sender) smtp.mailfrom=3Zu0XaAkKDeccSVNaLRNaPXXPUN.LXVURWJaX-VV-bRPURbcb.URWJaX.XaP@flex--tjmercier.bounces.google.com
Received: by mail-pj1-f73.google.com with SMTP id 98e67ed59e1d1-30870e7e4fcso2543221a91.0
        for <linaro-mm-sig@lists.linaro.org>; Sun, 04 May 2025 15:42:47 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=google.com; s=20230601; t=1746398566; x=1747003366; darn=lists.linaro.org;
        h=cc:to:from:subject:message-id:references:mime-version:in-reply-to
         :date:from:to:cc:subject:date:message-id:reply-to;
        bh=qRxmx49k78oZVGK58IUo5h7b0bYEuJ9pnXRAZIcG1XQ=;
        b=Zye+mGjWGrp/Dncx8y+v12LfgnC3Zy7QsfFSI7jKTg9AHDkNU79Ij9wjGvNWvVg/4O
         SV34ZrKoKQxGAyRWOaaOxfao6KkqEYlUSpBK5poVmXKyQQXgQXGBxhxadB+at9BusDsO
         46XlPF/SIvP3bcQ7sEHgz4jMXAPJ1P0XqW7WZ2ls4EtNNIeq+Q2jJqtV3Fp9MEr+B4fc
         npxMBm/NFyy8dh/lK0EHaWSc3OdVv14uWRS37RETBE2GI/pDi+1+o2vzr2Du13I2lejU
         E5bTuSQ6dtAd3vTyhan4eHtxRIv8zJ/NEDWDyMFJcBREp456qdyU7O1sBp4dQWOj+f02
         8heQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1746398566; x=1747003366;
        h=cc:to:from:subject:message-id:references:mime-version:in-reply-to
         :date:x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=qRxmx49k78oZVGK58IUo5h7b0bYEuJ9pnXRAZIcG1XQ=;
        b=iU1woXVU7KeQrwr1ZU/5TTi6QmK8KCArDJXYAgR3GpAydcBp4IkpFVQg69wjaBacEC
         IUyPglWYZFsIXPcv40U4NnBJDU881GzhXw7orQbAQug26xOHmf1jhmO1JXcAskbAnNty
         4LNehSmj2w26JEWjU/+DdMuXVkDok06DjSWqtNqOQFsR+AyQynmJVSupCo76wpsxJvsA
         yIa4w963w3GFPFA1RH4h8iBiIa9hRScoa68IvipaoqLWa+134ybV25kOyHIIrHVbj12O
         qeM60nJBcEkUPJgJdxAzda8M85OlgrI4GK9xwBs0nyyVk7e4vUgkGvmxPuBWcabOjdty
         /KdQ==
X-Forwarded-Encrypted: i=1; AJvYcCUphrykBGPnylo86dn0Ni20ZPfwEQWEdMIv9s9qkrk53JWNZXKwGFPrB0Rzr9jAQElTjacaIn6gxiLq8AY/@lists.linaro.org
X-Gm-Message-State: AOJu0YwioaXNqD+GkER+Fc62REnJlXRWDA5P8QUnBktEMm0efD7ZuZ1A
	Ki0yS8WNpPserRiIVstyWHD2z+17z9BJ1dXNX5w5QNTrbBoW/CeqIf37TbsbHoVyJpsopXjCyPP
	6lLf7aNlKSiYQpA==
X-Google-Smtp-Source: AGHT+IGBrK0J5JeCd3JJlIGfRLxu6vmG5nWQgCAzuN3tQsugsYNGz1V83XY/OKcmLmuzozOrxtwVj9V2OSLPYwA=
X-Received: from pjbqn8.prod.google.com ([2002:a17:90b:3d48:b0:2ef:d283:5089])
 (user=tjmercier job=prod-delivery.src-stubby-dispatcher) by
 2002:a17:90b:584d:b0:2fa:4926:d18d with SMTP id 98e67ed59e1d1-30a42fd0debmr18428480a91.13.1746398566485;
 Sun, 04 May 2025 15:42:46 -0700 (PDT)
Date: Sun,  4 May 2025 22:41:40 +0000
In-Reply-To: <20250504224149.1033867-1-tjmercier@google.com>
Mime-Version: 1.0
References: <20250504224149.1033867-1-tjmercier@google.com>
X-Mailer: git-send-email 2.49.0.906.g1f30a19c02-goog
Message-ID: <20250504224149.1033867-5-tjmercier@google.com>
From: "T.J. Mercier" <tjmercier@google.com>
To: sumit.semwal@linaro.org, christian.koenig@amd.com, ast@kernel.org,
	daniel@iogearbox.net, andrii@kernel.org, martin.lau@linux.dev,
	skhan@linuxfoundation.org, song@kernel.org, alexei.starovoitov@gmail.com
X-Rspamd-Server: lists.linaro.org
X-Rspamd-Queue-Id: 5AB8745946
X-Spamd-Bar: ----
X-Spamd-Result: default: False [-4.80 / 15.00];
	REPLY(-4.00)[];
	BAYES_HAM(-3.00)[100.00%];
	SUSPICIOUS_RECIPS(1.50)[];
	MID_CONTAINS_FROM(1.00)[];
	DMARC_POLICY_ALLOW(-0.50)[google.com,reject];
	MV_CASE(0.50)[];
	FORGED_SENDER(0.30)[tjmercier@google.com,3Zu0XaAkKDeccSVNaLRNaPXXPUN.LXVURWJaX-VV-bRPURbcb.URWJaX.XaP@flex--tjmercier.bounces.google.com];
	R_DKIM_ALLOW(-0.20)[google.com:s=20230601];
	R_SPF_ALLOW(-0.20)[+ip4:209.85.128.0/17:c];
	RWL_MAILSPIKE_GOOD(-0.10)[209.85.216.73:from];
	MIME_GOOD(-0.10)[text/plain];
	MIME_TRACE(0.00)[0:+];
	FREEMAIL_TO(0.00)[linaro.org,amd.com,kernel.org,iogearbox.net,linux.dev,linuxfoundation.org,gmail.com];
	ARC_NA(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	FROM_HAS_DN(0.00)[];
	FREEMAIL_CC(0.00)[vger.kernel.org,lists.freedesktop.org,lists.linaro.org,google.com,ffwll.ch,lwn.net,gmail.com,linux.dev,kernel.org,fomichev.me,fb.com];
	DKIM_TRACE(0.00)[google.com:+];
	PREVIOUSLY_DELIVERED(0.00)[linaro-mm-sig@lists.linaro.org];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[tjmercier@google.com,3Zu0XaAkKDeccSVNaLRNaPXXPUN.LXVURWJaX-VV-bRPURbcb.URWJaX.XaP@flex--tjmercier.bounces.google.com];
	RCPT_COUNT_TWELVE(0.00)[27];
	NEURAL_HAM(-0.00)[-1.000];
	ASN(0.00)[asn:15169, ipnet:209.85.128.0/17, country:US];
	TAGGED_RCPT(0.00)[];
	RCVD_COUNT_ONE(0.00)[1];
	TO_DN_SOME(0.00)[]
X-Rspamd-Action: no action
Message-ID-Hash: JZPJLM3TW7NDIQTCVM2ZPPYJPKUEWL2A
X-Message-ID-Hash: JZPJLM3TW7NDIQTCVM2ZPPYJPKUEWL2A
X-MailFrom: 3Zu0XaAkKDeccSVNaLRNaPXXPUN.LXVURWJaX-VV-bRPURbcb.URWJaX.XaP@flex--tjmercier.bounces.google.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: linux-kernel@vger.kernel.org, linux-media@vger.kernel.org, dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org, linux-doc@vger.kernel.org, bpf@vger.kernel.org, linux-kselftest@vger.kernel.org, android-mm@google.com, simona@ffwll.ch, corbet@lwn.net, eddyz87@gmail.com, yonghong.song@linux.dev, john.fastabend@gmail.com, kpsingh@kernel.org, sdf@fomichev.me, jolsa@kernel.org, mykolal@fb.com, "T.J. Mercier" <tjmercier@google.com>
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] [PATCH v2 4/6] selftests/bpf: Add test for dmabuf_iter
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/JZPJLM3TW7NDIQTCVM2ZPPYJPKUEWL2A/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

This test creates a udmabuf, and a dmabuf from the system dmabuf heap,
and uses a BPF program that prints dmabuf metadata with the new
dmabuf_iter to verify they can be found.

Signed-off-by: T.J. Mercier <tjmercier@google.com>
---
 tools/testing/selftests/bpf/config            |   3 +
 .../selftests/bpf/prog_tests/dmabuf_iter.c    | 224 ++++++++++++++++++
 .../testing/selftests/bpf/progs/dmabuf_iter.c |  53 +++++
 3 files changed, 280 insertions(+)
 create mode 100644 tools/testing/selftests/bpf/prog_tests/dmabuf_iter.c
 create mode 100644 tools/testing/selftests/bpf/progs/dmabuf_iter.c

diff --git a/tools/testing/selftests/bpf/config b/tools/testing/selftests/bpf/config
index c378d5d07e02..2bdff2f3285f 100644
--- a/tools/testing/selftests/bpf/config
+++ b/tools/testing/selftests/bpf/config
@@ -22,6 +22,8 @@ CONFIG_CRYPTO_AES=y
 CONFIG_DEBUG_INFO=y
 CONFIG_DEBUG_INFO_BTF=y
 CONFIG_DEBUG_INFO_DWARF4=y
+CONFIG_DMABUF_HEAPS=y
+CONFIG_DMABUF_HEAPS_SYSTEM=y
 CONFIG_DUMMY=y
 CONFIG_DYNAMIC_FTRACE=y
 CONFIG_FPROBE=y
@@ -106,6 +108,7 @@ CONFIG_SECURITY=y
 CONFIG_SECURITYFS=y
 CONFIG_SYN_COOKIES=y
 CONFIG_TEST_BPF=m
+CONFIG_UDMABUF=y
 CONFIG_USERFAULTFD=y
 CONFIG_VSOCKETS=y
 CONFIG_VXLAN=y
diff --git a/tools/testing/selftests/bpf/prog_tests/dmabuf_iter.c b/tools/testing/selftests/bpf/prog_tests/dmabuf_iter.c
new file mode 100644
index 000000000000..35745f4ce0f8
--- /dev/null
+++ b/tools/testing/selftests/bpf/prog_tests/dmabuf_iter.c
@@ -0,0 +1,224 @@
+// SPDX-License-Identifier: GPL-2.0
+/* Copyright (c) 2025 Google */
+
+#include <test_progs.h>
+#include <bpf/libbpf.h>
+#include <bpf/btf.h>
+#include "dmabuf_iter.skel.h"
+
+#include <fcntl.h>
+#include <stdbool.h>
+#include <stdio.h>
+#include <stdlib.h>
+#include <string.h>
+#include <sys/ioctl.h>
+#include <sys/mman.h>
+#include <unistd.h>
+
+#include <linux/dma-buf.h>
+#include <linux/dma-heap.h>
+#include <linux/udmabuf.h>
+
+static int memfd, udmabuf;
+static const char udmabuf_test_buffer_name[DMA_BUF_NAME_LEN] = "udmabuf_test_buffer_for_iter";
+static size_t udmabuf_test_buffer_size;
+static int sysheap_dmabuf;
+static const char sysheap_test_buffer_name[DMA_BUF_NAME_LEN] = "sysheap_test_buffer_for_iter";
+static size_t sysheap_test_buffer_size;
+
+static int create_udmabuf(void)
+{
+	struct udmabuf_create create;
+	int dev_udmabuf;
+
+	udmabuf_test_buffer_size = 10 * getpagesize();
+
+	if (!ASSERT_LE(sizeof(udmabuf_test_buffer_name), DMA_BUF_NAME_LEN, "NAMETOOLONG"))
+		return 1;
+
+	memfd = memfd_create("memfd_test", MFD_ALLOW_SEALING);
+	if (!ASSERT_OK_FD(memfd, "memfd_create"))
+		return 1;
+
+	if (!ASSERT_OK(ftruncate(memfd, udmabuf_test_buffer_size), "ftruncate"))
+		return 1;
+
+	if (!ASSERT_OK(fcntl(memfd, F_ADD_SEALS, F_SEAL_SHRINK), "seal"))
+		return 1;
+
+	dev_udmabuf = open("/dev/udmabuf", O_RDONLY);
+	if (!ASSERT_OK_FD(dev_udmabuf, "open udmabuf"))
+		return 1;
+
+	create.memfd = memfd;
+	create.flags = UDMABUF_FLAGS_CLOEXEC;
+	create.offset = 0;
+	create.size = udmabuf_test_buffer_size;
+
+	udmabuf = ioctl(dev_udmabuf, UDMABUF_CREATE, &create);
+	close(dev_udmabuf);
+	if (!ASSERT_OK_FD(udmabuf, "udmabuf_create"))
+		return 1;
+
+	if (!ASSERT_OK(ioctl(udmabuf, DMA_BUF_SET_NAME_B, udmabuf_test_buffer_name), "name"))
+		return 1;
+
+	return 0;
+}
+
+static int create_sys_heap_dmabuf(void)
+{
+	sysheap_test_buffer_size = 20 * getpagesize();
+
+	struct dma_heap_allocation_data data = {
+		.len = sysheap_test_buffer_size,
+		.fd = 0,
+		.fd_flags = O_RDWR | O_CLOEXEC,
+		.heap_flags = 0,
+	};
+	int heap_fd, ret;
+
+	if (!ASSERT_LE(sizeof(sysheap_test_buffer_name), DMA_BUF_NAME_LEN, "NAMETOOLONG"))
+		return 1;
+
+	heap_fd = open("/dev/dma_heap/system", O_RDONLY);
+	if (!ASSERT_OK_FD(heap_fd, "open dma heap"))
+		return 1;
+
+	ret = ioctl(heap_fd, DMA_HEAP_IOCTL_ALLOC, &data);
+	close(heap_fd);
+	if (!ASSERT_OK(ret, "syheap alloc"))
+		return 1;
+
+	sysheap_dmabuf = data.fd;
+
+	if (!ASSERT_OK(ioctl(sysheap_dmabuf, DMA_BUF_SET_NAME_B, sysheap_test_buffer_name), "name"))
+		return 1;
+
+	return 0;
+}
+
+static int create_test_buffers(void)
+{
+	int ret;
+
+	ret = create_udmabuf();
+	if (ret)
+		return ret;
+
+	return create_sys_heap_dmabuf();
+}
+
+static void destroy_test_buffers(void)
+{
+	close(udmabuf);
+	close(memfd);
+	close(sysheap_dmabuf);
+}
+
+enum Fields { INODE, SIZE, NAME, EXPORTER, FIELD_COUNT };
+struct DmabufInfo {
+	unsigned long inode;
+	unsigned long size;
+	char name[DMA_BUF_NAME_LEN];
+	char exporter[32];
+};
+
+static bool check_dmabuf_info(const struct DmabufInfo *bufinfo,
+			      unsigned long size,
+			      const char *name, const char *exporter)
+{
+	return size == bufinfo->size &&
+	       !strcmp(name, bufinfo->name) &&
+	       !strcmp(exporter, bufinfo->exporter);
+}
+
+static void subtest_dmabuf_iter_check_default_iter(struct dmabuf_iter *skel)
+{
+	bool found_test_sysheap_dmabuf = false;
+	bool found_test_udmabuf = false;
+	struct DmabufInfo bufinfo;
+	size_t linesize = 0;
+	char *line = NULL;
+	FILE *iter_file;
+	int iter_fd, f = INODE;
+
+	iter_fd = bpf_iter_create(bpf_link__fd(skel->links.dmabuf_collector));
+	ASSERT_OK_FD(iter_fd, "iter_create");
+
+	iter_file = fdopen(iter_fd, "r");
+	ASSERT_OK_PTR(iter_file, "fdopen");
+
+	while (getline(&line, &linesize, iter_file) != -1) {
+		if (f % FIELD_COUNT == INODE) {
+			ASSERT_EQ(sscanf(line, "%ld", &bufinfo.inode), 1,
+				  "read inode");
+		} else if (f % FIELD_COUNT == SIZE) {
+			ASSERT_EQ(sscanf(line, "%ld", &bufinfo.size), 1,
+				  "read size");
+		} else if (f % FIELD_COUNT == NAME) {
+			ASSERT_EQ(sscanf(line, "%s", bufinfo.name), 1,
+				  "read name");
+		} else if (f % FIELD_COUNT == EXPORTER) {
+			ASSERT_EQ(sscanf(line, "%31s", bufinfo.exporter), 1,
+				  "read exporter");
+
+			if (check_dmabuf_info(&bufinfo,
+					      sysheap_test_buffer_size,
+					      sysheap_test_buffer_name,
+					      "system"))
+				found_test_sysheap_dmabuf = true;
+			else if (check_dmabuf_info(&bufinfo,
+						   udmabuf_test_buffer_size,
+						   udmabuf_test_buffer_name,
+						   "udmabuf"))
+				found_test_udmabuf = true;
+		}
+		++f;
+	}
+
+	ASSERT_EQ(f % FIELD_COUNT, INODE, "number of fields");
+
+	ASSERT_TRUE(found_test_sysheap_dmabuf, "found_test_sysheap_dmabuf");
+	ASSERT_TRUE(found_test_udmabuf, "found_test_udmabuf");
+
+	free(line);
+	fclose(iter_file);
+	close(iter_fd);
+}
+
+void test_dmabuf_iter(void)
+{
+	struct dmabuf_iter *skel = NULL;
+	char buf[256];
+	int iter_fd;
+
+	skel = dmabuf_iter__open_and_load();
+	if (!ASSERT_OK_PTR(skel, "dmabuf_iter__open_and_load"))
+		return;
+
+	if (!ASSERT_OK(create_test_buffers(), "create_buffers"))
+		goto destroy;
+
+	if (!ASSERT_OK(dmabuf_iter__attach(skel), "skel_attach"))
+		goto destroy;
+
+	iter_fd = bpf_iter_create(bpf_link__fd(skel->links.dmabuf_collector));
+	if (!ASSERT_OK_FD(iter_fd, "iter_create"))
+		goto destroy;
+
+	while (read(iter_fd, buf, sizeof(buf)) > 0)
+		; /* Read out all contents */
+
+	/* Next reads should return 0 */
+	ASSERT_EQ(read(iter_fd, buf, sizeof(buf)), 0, "read");
+
+	if (test__start_subtest("default_iter"))
+		subtest_dmabuf_iter_check_default_iter(skel);
+
+	close(iter_fd);
+
+destroy:
+	destroy_test_buffers();
+	dmabuf_iter__destroy(skel);
+}
diff --git a/tools/testing/selftests/bpf/progs/dmabuf_iter.c b/tools/testing/selftests/bpf/progs/dmabuf_iter.c
new file mode 100644
index 000000000000..6e80a53c4670
--- /dev/null
+++ b/tools/testing/selftests/bpf/progs/dmabuf_iter.c
@@ -0,0 +1,53 @@
+// SPDX-License-Identifier: GPL-2.0
+/* Copyright (c) 2025 Google LLC */
+#include <vmlinux.h>
+#include <bpf/bpf_core_read.h>
+#include <bpf/bpf_helpers.h>
+
+/* From uapi/linux/dma-buf.h */
+#define DMA_BUF_NAME_LEN 32
+
+char _license[] SEC("license") = "GPL";
+
+/**
+ * Fields output by this iterator are delimited by newlines. Convert any
+ * newlines in user-provided printed strings to spaces.
+ */
+static void sanitize_string(char *src, size_t size)
+{
+	for (char *c = src; c && (size_t)(c-src) < size; ++c)
+		if (*c == '\n')
+			*c = ' ';
+}
+
+SEC("iter/dmabuf")
+int dmabuf_collector(struct bpf_iter__dmabuf *ctx)
+{
+	const struct dma_buf *dmabuf = ctx->dmabuf;
+	struct seq_file *seq = ctx->meta->seq;
+	unsigned long inode = 0;
+	size_t size;
+	const char *pname, *exporter;
+	char name[DMA_BUF_NAME_LEN] = {'\0'};
+
+	if (!dmabuf)
+		return 0;
+
+	if (BPF_CORE_READ_INTO(&inode, dmabuf, file, f_inode, i_ino) ||
+	    bpf_core_read(&size, sizeof(size), &dmabuf->size) ||
+	    bpf_core_read(&pname, sizeof(pname), &dmabuf->name) ||
+	    bpf_core_read(&exporter, sizeof(exporter), &dmabuf->exp_name))
+		return 1;
+
+	/* Buffers are not required to be named */
+	if (pname) {
+		if (bpf_probe_read_kernel(name, sizeof(name), pname))
+			return 1;
+
+		/* Name strings can be provided by userspace */
+		sanitize_string(name, sizeof(name));
+	}
+
+	BPF_SEQ_PRINTF(seq, "%lu\n%llu\n%s\n%s\n", inode, size, name, exporter);
+	return 0;
+}
-- 
2.49.0.906.g1f30a19c02-goog

_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org
