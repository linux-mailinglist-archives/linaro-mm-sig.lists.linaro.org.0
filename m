Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id C4F7CA88F98
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 15 Apr 2025 00:53:50 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id CFD7E444CE
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 14 Apr 2025 22:53:49 +0000 (UTC)
Received: from mail-pl1-f202.google.com (mail-pl1-f202.google.com [209.85.214.202])
	by lists.linaro.org (Postfix) with ESMTPS id CF984443A1
	for <linaro-mm-sig@lists.linaro.org>; Mon, 14 Apr 2025 22:53:12 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=google.com header.s=20230601 header.b=bxlHxKZJ;
	spf=pass (lists.linaro.org: domain of 315H9ZwkKDTgndgYlWcYlaiiafY.WigfchUli-gg-mcafcmnm.fchUli.ila@flex--tjmercier.bounces.google.com designates 209.85.214.202 as permitted sender) smtp.mailfrom=315H9ZwkKDTgndgYlWcYlaiiafY.WigfchUli-gg-mcafcmnm.fchUli.ila@flex--tjmercier.bounces.google.com;
	dmarc=pass (policy=reject) header.from=google.com
Received: by mail-pl1-f202.google.com with SMTP id d9443c01a7336-2264e5b2b7cso41784555ad.2
        for <linaro-mm-sig@lists.linaro.org>; Mon, 14 Apr 2025 15:53:12 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=google.com; s=20230601; t=1744671192; x=1745275992; darn=lists.linaro.org;
        h=cc:to:from:subject:message-id:references:mime-version:in-reply-to
         :date:from:to:cc:subject:date:message-id:reply-to;
        bh=ydypiDmSY/+9aTdOoLn3KGMnPAKqHC/nE4rz3DKuBno=;
        b=bxlHxKZJ2Dss+wBoAuiILxodbFgsTgRsP9inAVwd3kOYTCFzFzuYC4eHZZ55lwirIJ
         195dXex6zG4+tDPBqfTdrRk1UCImcCXh4yVveIaARaWm4UrukoXeEDI4FPrNfldXGV8i
         QT94QZaXimDkelxsAoU5UNeHTUG8ejQ6mkGMp375DcXnyAKYDArnBS67WOMvtaKNMaUE
         cXfiJTRpb516dGx2w9iBQJnn3Sf8AR5/Um33CR5dTHZj908AI7tR8PzMTTaqv/oaaEAI
         9jbSDt9+IBAANp8cOnUWArhxJ0dK4VD0hj47zrr3/EcCwB3PoQlKWghpsB5YUO5qC8b4
         Oq7g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1744671192; x=1745275992;
        h=cc:to:from:subject:message-id:references:mime-version:in-reply-to
         :date:x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=ydypiDmSY/+9aTdOoLn3KGMnPAKqHC/nE4rz3DKuBno=;
        b=JA1x07SHE+5VzItbFxgI5CJ9byBRJu1bs+sVHTLwY38tLYL1IJVnBRamNTctrkqhNK
         XPab/wJYKDSCWDDA/63/zvux2ty3nLv1MLU9YHmi85yFF7D46boFB4iBnjJMStOzfFHH
         MVZkrqH/RIMTrFOkOe7f9JKcrj5KCf1E1yf4YQxG0C2nU2C6SOdm+idLOKBfUpNc4TX1
         5a+OzZV6sHGDsZKI2QCk6lzsmjNDnVJd+ZTcqjy4k3Fe3gmGFkx/mL+gH3QPatJaWULW
         yYW8CAeMc/jbk3HZdUFoqmgNidBsV52Msq30h9ZL8uKs4K/WhYsVvgO+iDO+1CbqUZWq
         BEMw==
X-Forwarded-Encrypted: i=1; AJvYcCWphZCPUgSWJKhx5U21Eoh8pZJ1x2avk8HFH3LausLtp+NTjGrU/ull3YZQUCvYg2NtNP5nt2arnfrpsmEG@lists.linaro.org
X-Gm-Message-State: AOJu0YzYKtSQJIh/adw1X3xOqwZS2iTHR4ISHo/qo35k3Do43JdfV+MV
	Hq6vLnw1bP2jHJftNuieMzL7fWS1BlF2lp7PjTomPkCqeuKL3XVT0d32GhJ4doU0SBr1znz/1Br
	uZRaf7SCvulPW4g==
X-Google-Smtp-Source: AGHT+IFYnfgagwAj8LEq72zmQEywyp03lQ11DjIPICX26P76uoggK3MsLH2X1HxcUGfeP/V9KBZCY8CkokiG/G0=
X-Received: from plbba2.prod.google.com ([2002:a17:902:7202:b0:223:8233:a96c])
 (user=tjmercier job=prod-delivery.src-stubby-dispatcher) by
 2002:a17:902:e842:b0:220:e9f5:4b7c with SMTP id d9443c01a7336-22bea4ab795mr182315935ad.17.1744671191895;
 Mon, 14 Apr 2025 15:53:11 -0700 (PDT)
Date: Mon, 14 Apr 2025 22:52:26 +0000
In-Reply-To: <20250414225227.3642618-1-tjmercier@google.com>
Mime-Version: 1.0
References: <20250414225227.3642618-1-tjmercier@google.com>
X-Mailer: git-send-email 2.49.0.604.gff1f9ca942-goog
Message-ID: <20250414225227.3642618-4-tjmercier@google.com>
From: "T.J. Mercier" <tjmercier@google.com>
To: sumit.semwal@linaro.org, christian.koenig@amd.com, ast@kernel.org,
	daniel@iogearbox.net, andrii@kernel.org, martin.lau@linux.dev,
	skhan@linuxfoundation.org
X-Rspamd-Queue-Id: CF984443A1
X-Spamd-Bar: -----
X-Spamd-Result: default: False [-5.80 / 15.00];
	REPLY(-4.00)[];
	BAYES_HAM(-3.00)[100.00%];
	SUSPICIOUS_RECIPS(1.50)[];
	RBL_SENDERSCORE_REPUT_9(-1.00)[209.85.214.202:from];
	MID_CONTAINS_FROM(1.00)[];
	MV_CASE(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[google.com,reject];
	FORGED_SENDER(0.30)[tjmercier@google.com,315H9ZwkKDTgndgYlWcYlaiiafY.WigfchUli-gg-mcafcmnm.fchUli.ila@flex--tjmercier.bounces.google.com];
	R_DKIM_ALLOW(-0.20)[google.com:s=20230601];
	R_SPF_ALLOW(-0.20)[+ip4:209.85.128.0/17:c];
	RWL_MAILSPIKE_GOOD(-0.10)[209.85.214.202:from];
	MIME_GOOD(-0.10)[text/plain];
	FROM_HAS_DN(0.00)[];
	ARC_NA(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FREEMAIL_CC(0.00)[vger.kernel.org,lists.freedesktop.org,lists.linaro.org,google.com,ffwll.ch,lwn.net,gmail.com,kernel.org,linux.dev,fomichev.me,fb.com];
	DKIM_TRACE(0.00)[google.com:+];
	RCVD_COUNT_ONE(0.00)[1];
	DNSWL_BLOCKED(0.00)[209.85.214.202:from];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[tjmercier@google.com,315H9ZwkKDTgndgYlWcYlaiiafY.WigfchUli-gg-mcafcmnm.fchUli.ila@flex--tjmercier.bounces.google.com];
	RCPT_COUNT_TWELVE(0.00)[26];
	PREVIOUSLY_DELIVERED(0.00)[linaro-mm-sig@lists.linaro.org];
	DWL_DNSWL_BLOCKED(0.00)[google.com:dkim];
	NEURAL_HAM(-0.00)[-1.000];
	ASN(0.00)[asn:15169, ipnet:209.85.128.0/17, country:US];
	TAGGED_RCPT(0.00)[];
	TO_DN_SOME(0.00)[]
X-Rspamd-Action: no action
X-Rspamd-Server: lists.linaro.org
Message-ID-Hash: 7VUTB3AHXHYI7X4BCRXSP6SMTQZHBNAH
X-Message-ID-Hash: 7VUTB3AHXHYI7X4BCRXSP6SMTQZHBNAH
X-MailFrom: 315H9ZwkKDTgndgYlWcYlaiiafY.WigfchUli-gg-mcafcmnm.fchUli.ila@flex--tjmercier.bounces.google.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: linux-kernel@vger.kernel.org, linux-media@vger.kernel.org, dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org, linux-doc@vger.kernel.org, bpf@vger.kernel.org, linux-kselftest@vger.kernel.org, android-mm@google.com, simona@ffwll.ch, corbet@lwn.net, eddyz87@gmail.com, song@kernel.org, yonghong.song@linux.dev, john.fastabend@gmail.com, kpsingh@kernel.org, sdf@fomichev.me, jolsa@kernel.org, mykolal@fb.com, "T.J. Mercier" <tjmercier@google.com>
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] [PATCH 3/4] selftests/bpf: Add test for dmabuf_iter
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/7VUTB3AHXHYI7X4BCRXSP6SMTQZHBNAH/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

This test creates a udmabuf and uses a BPF program that prints dmabuf
metadata with the new dmabuf_iter to verify it can be found.

Signed-off-by: T.J. Mercier <tjmercier@google.com>
---
 tools/testing/selftests/bpf/config            |   1 +
 .../selftests/bpf/prog_tests/dmabuf_iter.c    | 116 ++++++++++++++++++
 .../testing/selftests/bpf/progs/dmabuf_iter.c |  31 +++++
 3 files changed, 148 insertions(+)
 create mode 100644 tools/testing/selftests/bpf/prog_tests/dmabuf_iter.c
 create mode 100644 tools/testing/selftests/bpf/progs/dmabuf_iter.c

diff --git a/tools/testing/selftests/bpf/config b/tools/testing/selftests/bpf/config
index c378d5d07e02..a791c60813df 100644
--- a/tools/testing/selftests/bpf/config
+++ b/tools/testing/selftests/bpf/config
@@ -106,6 +106,7 @@ CONFIG_SECURITY=y
 CONFIG_SECURITYFS=y
 CONFIG_SYN_COOKIES=y
 CONFIG_TEST_BPF=m
+CONFIG_UDMABUF=y
 CONFIG_USERFAULTFD=y
 CONFIG_VSOCKETS=y
 CONFIG_VXLAN=y
diff --git a/tools/testing/selftests/bpf/prog_tests/dmabuf_iter.c b/tools/testing/selftests/bpf/prog_tests/dmabuf_iter.c
new file mode 100644
index 000000000000..af215a4e0520
--- /dev/null
+++ b/tools/testing/selftests/bpf/prog_tests/dmabuf_iter.c
@@ -0,0 +1,116 @@
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
+#include <linux/udmabuf.h>
+
+
+static void subtest_dmabuf_iter_check_udmabuf(struct dmabuf_iter *skel)
+{
+	static const char test_buffer_name[] = "udmabuf_test_buffer_for_iter";
+	const size_t test_buffer_size = 10 * getpagesize();
+
+	ASSERT_LE(sizeof(test_buffer_name), DMA_BUF_NAME_LEN, "NAMETOOLONG");
+
+	int memfd = memfd_create("memfd_test", MFD_ALLOW_SEALING);
+	ASSERT_OK_FD(memfd, "memfd_create");
+
+	ASSERT_OK(ftruncate(memfd, test_buffer_size), "ftruncate");
+
+	ASSERT_OK(fcntl(memfd, F_ADD_SEALS, F_SEAL_SHRINK), "seal");
+
+	int dev_udmabuf = open("/dev/udmabuf", O_RDONLY);
+	ASSERT_OK_FD(dev_udmabuf, "open udmabuf");
+
+	struct udmabuf_create create;
+	create.memfd = memfd;
+	create.flags = UDMABUF_FLAGS_CLOEXEC;
+	create.offset = 0;
+	create.size = test_buffer_size;
+
+	int udmabuf = ioctl(dev_udmabuf, UDMABUF_CREATE, &create);
+	close(dev_udmabuf);
+	ASSERT_OK_FD(udmabuf, "udmabuf_create");
+
+	ASSERT_OK(ioctl(udmabuf, DMA_BUF_SET_NAME_B, test_buffer_name), "name");
+
+	int iter_fd = bpf_iter_create(bpf_link__fd(skel->links.dmabuf_collector));
+	ASSERT_OK_FD(iter_fd, "iter_create");
+
+	FILE *iter_file = fdopen(iter_fd, "r");
+	ASSERT_OK_PTR(iter_file, "fdopen");
+
+	char *line = NULL;
+	size_t linesize = 0;
+	bool found_test_udmabuf = false;
+	while (getline(&line, &linesize, iter_file) != -1) {
+		long inode, size;
+		char name[DMA_BUF_NAME_LEN], exporter[32];
+
+		int nelements = sscanf(line, "ino:%ld size:%ld name:%s exp_name:%s",
+				       &inode, &size, name, exporter);
+
+		if (nelements == 4 && size == test_buffer_size &&
+				!strcmp(name, test_buffer_name) &&
+				!strcmp(exporter, "udmabuf")) {
+			found_test_udmabuf = true;
+			break;
+		}
+	}
+
+	ASSERT_TRUE(found_test_udmabuf, "found_test_buffer");
+
+	free(line);
+	fclose(iter_file);
+	close(iter_fd);
+	close(udmabuf);
+	close(memfd);
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
+	if (!ASSERT_OK(dmabuf_iter__attach(skel), "skel_attach"))
+		goto destroy;
+
+	iter_fd = bpf_iter_create(bpf_link__fd(skel->links.dmabuf_collector));
+	if (!ASSERT_GE(iter_fd, 0, "iter_create"))
+		goto destroy;
+
+	memset(buf, 0, sizeof(buf));
+	while (read(iter_fd, buf, sizeof(buf) > 0)) {
+		/* Read out all contents */
+	}
+
+	/* Next reads should return 0 */
+	ASSERT_EQ(read(iter_fd, buf, sizeof(buf)), 0, "read");
+
+	if (test__start_subtest("check_udmabuf"))
+		subtest_dmabuf_iter_check_udmabuf(skel);
+
+	close(iter_fd);
+
+destroy:
+	dmabuf_iter__destroy(skel);
+}
diff --git a/tools/testing/selftests/bpf/progs/dmabuf_iter.c b/tools/testing/selftests/bpf/progs/dmabuf_iter.c
new file mode 100644
index 000000000000..b2af14ceb609
--- /dev/null
+++ b/tools/testing/selftests/bpf/progs/dmabuf_iter.c
@@ -0,0 +1,31 @@
+// SPDX-License-Identifier: GPL-2.0
+/* Copyright (c) 2025 Google LLC */
+#include <vmlinux.h>
+#include <bpf/bpf_core_read.h>
+#include <bpf/bpf_helpers.h>
+
+char _license[] SEC("license") = "GPL";
+
+SEC("iter/dmabuf")
+int dmabuf_collector(struct bpf_iter__dmabuf *ctx)
+{
+	struct seq_file *seq = ctx->meta->seq;
+	const struct dma_buf *dmabuf = ctx->dmabuf;
+
+	if (dmabuf) {
+		size_t size;
+		unsigned long inode;
+		const char *name, *exp_name;
+
+		if (bpf_core_read(&size, sizeof(size), &dmabuf->size) ||
+		    BPF_CORE_READ_INTO(&inode, dmabuf, file, f_inode, i_ino) ||
+		    bpf_core_read(&name, sizeof(name), &dmabuf->name) ||
+		    bpf_core_read(&exp_name, sizeof(exp_name), &dmabuf->exp_name))
+			return 1;
+
+		BPF_SEQ_PRINTF(seq, "ino:%lu size:%llu name:%s exp_name:%s\n",
+			inode, size, name ? name : "", exp_name ? exp_name : "");
+	}
+
+	return 0;
+}
-- 
2.49.0.604.gff1f9ca942-goog

_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org
