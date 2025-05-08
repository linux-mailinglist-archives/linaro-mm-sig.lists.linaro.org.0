Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id C4632AB0293
	for <lists+linaro-mm-sig@lfdr.de>; Thu,  8 May 2025 20:21:52 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id E304A44979
	for <lists+linaro-mm-sig@lfdr.de>; Thu,  8 May 2025 18:21:51 +0000 (UTC)
Received: from mail-pl1-f201.google.com (mail-pl1-f201.google.com [209.85.214.201])
	by lists.linaro.org (Postfix) with ESMTPS id 541734596C
	for <linaro-mm-sig@lists.linaro.org>; Thu,  8 May 2025 18:20:57 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=google.com header.s=20230601 header.b=t13IXkqa;
	dmarc=pass (policy=reject) header.from=google.com;
	spf=pass (lists.linaro.org: domain of 3CPYcaAkKDa8iYbTgRXTgVddVaT.RdbaXcPgd-bb-hXVaXhih.aXcPgd.dgV@flex--tjmercier.bounces.google.com designates 209.85.214.201 as permitted sender) smtp.mailfrom=3CPYcaAkKDa8iYbTgRXTgVddVaT.RdbaXcPgd-bb-hXVaXhih.aXcPgd.dgV@flex--tjmercier.bounces.google.com
Received: by mail-pl1-f201.google.com with SMTP id d9443c01a7336-22e5cd14e48so10327075ad.2
        for <linaro-mm-sig@lists.linaro.org>; Thu, 08 May 2025 11:20:57 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=google.com; s=20230601; t=1746728456; x=1747333256; darn=lists.linaro.org;
        h=cc:to:from:subject:message-id:references:mime-version:in-reply-to
         :date:from:to:cc:subject:date:message-id:reply-to;
        bh=KivdiQ2d8zbtT8/YKRtAYwqqgTkcUlhStaSdB0XYdCY=;
        b=t13IXkqatpuxlwxOeWNfJC7Aq6pGyVm32AvKt240GOXEo1xLWVN86ku78LU32nGIB3
         XJpGxFdPaPp8s7EHAbMtnWReK57ivOxb7e2J3OZVqEhXU9nQafdErQ0jTmvUhRvJ+utv
         MaoaMLDlB+YXgOGvCzKg39qC+BUJ1YHWm52sOkvxidDMrKzxg31LGGe+rnz5eHj8NoJs
         FYsCODU5rz9Rs230ByQildI/AzAUF5eN0zjdbg5WhCmuLxBUwrFACgBerq234q/Udk0G
         ezCdV6Vs3JMFeVAAotF10yJPmZ3oGl+MJHdM8Nkeh5yfMdJTTu6cwnLzIasJrlBlSzYV
         3AAA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1746728456; x=1747333256;
        h=cc:to:from:subject:message-id:references:mime-version:in-reply-to
         :date:x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=KivdiQ2d8zbtT8/YKRtAYwqqgTkcUlhStaSdB0XYdCY=;
        b=tmR/2OxqwizNJ15m0Kc8IhKYIhaGu6UAmzCc8TOWehfoH/N0zLhJgwkkEM/0OK/Coy
         fesVVBKVTNF93r7SHbRu2/7hz5pyuMTo2/NA/+lv2HmRwwO01ewtZvav0bY/3YOkYWpW
         YSIYWp0Zf6jRMOaBAwPzprfkNHXBkRPaLdL07GN70xLpr7xKBE8h8kbgZxTVA5L0839V
         p8AI1anVA/Vv0H6udDyzFQYXkQL58b3JraLRGB/LqwWNDlm4vPEEaJomz5GAJbcjBD88
         VJ88GiGGP9ZJZ+bKkzjjhVyDKcIeZShntsVWnyLZV999ik2fH1DzjA5VwFy55kfKheB5
         N+YA==
X-Forwarded-Encrypted: i=1; AJvYcCWEul/PeOwpKiFJwsviCVDxTO/DtSVd6cQUP/yCZD1DYZClAGl3VqiYA1CRgp8gcTej46qqWuD6ADuYxdq3@lists.linaro.org
X-Gm-Message-State: AOJu0YxtXzm9iSo7o1H1ZYqwQjIiMDAB23S0aWJLuBArFvsAzSO5QOlU
	ZcdCCd0wdVmipql+1sGXI18hHCmzzkxmI388O+v6MkIRtBge9dUnsW1vendAEIuVD6gJ3r9VfpW
	GOirRsdCkIBZ91Q==
X-Google-Smtp-Source: AGHT+IHttXYHrXFlTqJhHMNofRPWypOSkIyR+kqzwJBxLC6qdQMbGsp172zy6EbAV0fxS+S/eHB6baASmNjsEag=
X-Received: from pglt25.prod.google.com ([2002:a63:5359:0:b0:b1f:de0f:4c0b])
 (user=tjmercier job=prod-delivery.src-stubby-dispatcher) by
 2002:a17:902:e545:b0:224:1943:c5c with SMTP id d9443c01a7336-22fc8b4109amr6032435ad.15.1746728456459;
 Thu, 08 May 2025 11:20:56 -0700 (PDT)
Date: Thu,  8 May 2025 18:20:23 +0000
In-Reply-To: <20250508182025.2961555-1-tjmercier@google.com>
Mime-Version: 1.0
References: <20250508182025.2961555-1-tjmercier@google.com>
X-Mailer: git-send-email 2.49.0.1015.ga840276032-goog
Message-ID: <20250508182025.2961555-5-tjmercier@google.com>
From: "T.J. Mercier" <tjmercier@google.com>
To: sumit.semwal@linaro.org, christian.koenig@amd.com, ast@kernel.org,
	daniel@iogearbox.net, andrii@kernel.org, martin.lau@linux.dev,
	skhan@linuxfoundation.org, alexei.starovoitov@gmail.com
X-Rspamd-Server: lists.linaro.org
X-Rspamd-Queue-Id: 541734596C
X-Spamd-Bar: /
X-Spamd-Result: default: False [-0.80 / 15.00];
	REPLY(-4.00)[];
	BAYES_HAM(-3.00)[100.00%];
	SEM_URIBL_FRESH15(3.00)[bufinfo.name:url];
	SUSPICIOUS_RECIPS(1.50)[];
	MID_CONTAINS_FROM(1.00)[];
	MV_CASE(0.50)[];
	FORGED_SENDER(0.30)[tjmercier@google.com,3CPYcaAkKDa8iYbTgRXTgVddVaT.RdbaXcPgd-bb-hXVaXhih.aXcPgd.dgV@flex--tjmercier.bounces.google.com];
	BAD_REP_POLICIES(0.10)[];
	RWL_MAILSPIKE_GOOD(-0.10)[209.85.214.201:from];
	MIME_GOOD(-0.10)[text/plain];
	MIME_TRACE(0.00)[0:+];
	R_DKIM_ALLOW(0.00)[google.com:s=20230601];
	ARC_NA(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	FREEMAIL_TO(0.00)[linaro.org,amd.com,kernel.org,iogearbox.net,linux.dev,linuxfoundation.org,gmail.com];
	FREEMAIL_CC(0.00)[vger.kernel.org,lists.freedesktop.org,lists.linaro.org,google.com,ffwll.ch,gmail.com,linux.dev,kernel.org,fomichev.me,fb.com];
	DMARC_POLICY_ALLOW(0.00)[google.com,reject];
	DKIM_TRACE(0.00)[google.com:+];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	PREVIOUSLY_DELIVERED(0.00)[linaro-mm-sig@lists.linaro.org];
	FROM_NEQ_ENVFROM(0.00)[tjmercier@google.com,3CPYcaAkKDa8iYbTgRXTgVddVaT.RdbaXcPgd-bb-hXVaXhih.aXcPgd.dgV@flex--tjmercier.bounces.google.com];
	FROM_HAS_DN(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[26];
	NEURAL_HAM(-0.00)[-0.992];
	R_SPF_ALLOW(0.00)[+ip4:209.85.128.0/17:c];
	TAGGED_RCPT(0.00)[];
	RCVD_COUNT_ONE(0.00)[1];
	ASN(0.00)[asn:15169, ipnet:209.85.128.0/17, country:US];
	TO_DN_SOME(0.00)[]
X-Rspamd-Action: no action
Message-ID-Hash: WTZH2M7UM3GZWEMWMCJ26TUC7CMO3WKV
X-Message-ID-Hash: WTZH2M7UM3GZWEMWMCJ26TUC7CMO3WKV
X-MailFrom: 3CPYcaAkKDa8iYbTgRXTgVddVaT.RdbaXcPgd-bb-hXVaXhih.aXcPgd.dgV@flex--tjmercier.bounces.google.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: linux-kernel@vger.kernel.org, linux-media@vger.kernel.org, dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org, bpf@vger.kernel.org, linux-kselftest@vger.kernel.org, android-mm@google.com, simona@ffwll.ch, eddyz87@gmail.com, yonghong.song@linux.dev, john.fastabend@gmail.com, kpsingh@kernel.org, sdf@fomichev.me, jolsa@kernel.org, mykolal@fb.com, shuah@kernel.org, song@kernel.org, "T.J. Mercier" <tjmercier@google.com>
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] [PATCH bpf-next v4 4/5] selftests/bpf: Add test for dmabuf_iter
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/WTZH2M7UM3GZWEMWMCJ26TUC7CMO3WKV/>
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
index 000000000000..d654b4f64cfa
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
+/*
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
2.49.0.1015.ga840276032-goog

_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org
