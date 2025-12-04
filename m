Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id CF248CA204A
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 04 Dec 2025 01:05:52 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id E56453F900
	for <lists+linaro-mm-sig@lfdr.de>; Thu,  4 Dec 2025 00:05:51 +0000 (UTC)
Received: from mail-pf1-f201.google.com (mail-pf1-f201.google.com [209.85.210.201])
	by lists.linaro.org (Postfix) with ESMTPS id CA9FC3F93E
	for <linaro-mm-sig@lists.linaro.org>; Thu,  4 Dec 2025 00:05:27 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=google.com header.s=20230601 header.b=qrvIP1iA;
	spf=pass (lists.linaro.org: domain of 3RtAwaQkKDfkuknfsdjfshpphmf.dpnmjobsp-nn-tjhmjtut.mjobsp.psh@flex--tjmercier.bounces.google.com designates 209.85.210.201 as permitted sender) smtp.mailfrom=3RtAwaQkKDfkuknfsdjfshpphmf.dpnmjobsp-nn-tjhmjtut.mjobsp.psh@flex--tjmercier.bounces.google.com;
	dmarc=pass (policy=reject) header.from=google.com
Received: by mail-pf1-f201.google.com with SMTP id d2e1a72fcca58-7b952a966d7so546169b3a.3
        for <linaro-mm-sig@lists.linaro.org>; Wed, 03 Dec 2025 16:05:27 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=google.com; s=20230601; t=1764806727; x=1765411527; darn=lists.linaro.org;
        h=cc:to:from:subject:message-id:references:mime-version:in-reply-to
         :date:from:to:cc:subject:date:message-id:reply-to;
        bh=ntEJ7gGn1a+C6xdaOK38Dw1hgtUSvuAfJEVchxv0EQk=;
        b=qrvIP1iAFzSVi7vfh7WnAHRlI5kEblXrz9/WP0VhWZPL78RnwoQEaT9Aqi0oy47+DW
         b760Jzsrh9m8GrikD+tgbJBrOIgH255tCbVI7usPmUqk0M/kMJ9BQkhJ2FzX0/6EDyLf
         fKEe01BrDSkR45EkfF9Eab8Eyqy+v5xDnOJb+aGDG6QnULXaLhpHPw0WAfsCaXzGgktO
         +sfHMw562FjrZKsNfMq0wVRbw0bgXN3F3LZnW3N8lNWDFBUVwFcCN9l/5nRg8bHVtE8/
         EwnUl7Z12sJHBO/R3C4cQnb8wJKzzNT0kiyOY/rWCp+hsUXdsfKXdo1dtUXoRXfYulSf
         he4Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1764806727; x=1765411527;
        h=cc:to:from:subject:message-id:references:mime-version:in-reply-to
         :date:x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=ntEJ7gGn1a+C6xdaOK38Dw1hgtUSvuAfJEVchxv0EQk=;
        b=sRpQ5MV8URiCgfzt8wQQbLN3Zx5O+MjLYWu1o5SbbwzMzU32I+i8HrzeKQaVwu3QRW
         u5sQWQxo+jaHLWEiRyFL63hyqAlkXvuJTLqvAdfWaiHyfNEqKQBp8NwGj4PUHE5Hs3VP
         6qnEnSXC7Klt61fM7PvjYapnBZSXT+MgyGIoIS4sVajblXLyPApOYCw1Scpebo5QwpEj
         SB2YOYwd9pTlaDwu8YaY9IEq5KDuZG+D7GWwS05uKYHhfh0/ncKg9bGgdUhnSUT7Q8FX
         NQLvZQADrmaVzfcz9TzDjm/4FbXslXbQXN6UsfFEAbtvLpIxjDi4tH3R3yAN5PczQEV5
         qb9A==
X-Forwarded-Encrypted: i=1; AJvYcCWn66Vav4LR1/vI3OFConFffNk/rYaczH0jA30yj2YXkdJ/4hTAiQt92qglI99luR+4Vz5UMwqjd/ECmOA5@lists.linaro.org
X-Gm-Message-State: AOJu0YzpzZIMnevIbQt7C421WSzSSGgjsdoKfsWcIolYdPUzuOGeCgKZ
	p/Ts20xpm1jZH4zrS/cdCgbRcigloWPVXvi9aYNwTKTpJMYoiX9TGA74TuyQ2pxHMjk+ShII6Ea
	Ku7IttK08i1O4dIEk3A==
X-Google-Smtp-Source: AGHT+IGanVIDs+7Y69ywHMHsNbcI0LEOaWi2CkaERYx1M22ypSftKd5oK/BkZTdgl+fJSBjubibGBoyAYRxfcc8=
X-Received: from pffa10.prod.google.com ([2002:a62:bd0a:0:b0:7dd:8bba:63ab])
 (user=tjmercier job=prod-delivery.src-stubby-dispatcher) by
 2002:a05:6a00:4615:b0:7aa:4f1d:c458 with SMTP id d2e1a72fcca58-7e00d236c39mr4941316b3a.19.1764806726792;
 Wed, 03 Dec 2025 16:05:26 -0800 (PST)
Date: Wed,  3 Dec 2025 16:03:48 -0800
In-Reply-To: <20251204000348.1413593-1-tjmercier@google.com>
Mime-Version: 1.0
References: <20251204000348.1413593-1-tjmercier@google.com>
X-Mailer: git-send-email 2.52.0.177.g9f829587af-goog
Message-ID: <20251204000348.1413593-2-tjmercier@google.com>
From: "T.J. Mercier" <tjmercier@google.com>
To: yonghong.song@linux.dev, ast@kernel.org, daniel@iogearbox.net,
	andrii@kernel.org, martin.lau@linux.dev, eddyz87@gmail.com, song@kernel.org,
	john.fastabend@gmail.com, kpsingh@kernel.org, sdf@fomichev.me,
	haoluo@google.com, jolsa@kernel.org, shuah@kernel.org, bpf@vger.kernel.org,
	linux-kernel@vger.kernel.org, linux-kselftest@vger.kernel.org,
	android-mm@google.com
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-2.30 / 15.00];
	BAYES_HAM(-3.00)[100.00%];
	MID_CONTAINS_FROM(1.00)[];
	MV_CASE(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[google.com,reject];
	FORGED_SENDER(0.30)[tjmercier@google.com,3RtAwaQkKDfkuknfsdjfshpphmf.dpnmjobsp-nn-tjhmjtut.mjobsp.psh@flex--tjmercier.bounces.google.com];
	R_DKIM_ALLOW(-0.20)[google.com:s=20230601];
	R_SPF_ALLOW(-0.20)[+ip4:209.85.128.0/17:c];
	MIME_GOOD(-0.10)[text/plain];
	RWL_MAILSPIKE_GOOD(-0.10)[209.85.210.201:from];
	ARC_NA(0.00)[];
	RCVD_COUNT_ONE(0.00)[1];
	ASN(0.00)[asn:15169, ipnet:209.85.128.0/17, country:US];
	RCPT_COUNT_TWELVE(0.00)[23];
	MIME_TRACE(0.00)[0:+];
	FREEMAIL_TO(0.00)[linux.dev,kernel.org,iogearbox.net,gmail.com,fomichev.me,google.com,vger.kernel.org];
	NEURAL_HAM(-0.00)[-1.000];
	RCVD_TLS_LAST(0.00)[];
	FROM_HAS_DN(0.00)[];
	TO_DN_SOME(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[tjmercier@google.com,3RtAwaQkKDfkuknfsdjfshpphmf.dpnmjobsp-nn-tjhmjtut.mjobsp.psh@flex--tjmercier.bounces.google.com];
	PREVIOUSLY_DELIVERED(0.00)[linaro-mm-sig@lists.linaro.org];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	DKIM_TRACE(0.00)[google.com:+]
X-Rspamd-Server: lists.linaro.org
X-Rspamd-Queue-Id: CA9FC3F93E
X-Spamd-Bar: --
Message-ID-Hash: PV5SRMREDLBBUHZLY7BQWVMMT2ZLJUQM
X-Message-ID-Hash: PV5SRMREDLBBUHZLY7BQWVMMT2ZLJUQM
X-MailFrom: 3RtAwaQkKDfkuknfsdjfshpphmf.dpnmjobsp-nn-tjhmjtut.mjobsp.psh@flex--tjmercier.bounces.google.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: christian.koenig@amd.com, sumit.semwal@linaro.org, linux-media@vger.kernel.org, dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org, "T.J. Mercier" <tjmercier@google.com>
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] [PATCH bpf 2/2] selftests/bpf: Add test for truncated dmabuf_iter reads
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/PV5SRMREDLBBUHZLY7BQWVMMT2ZLJUQM/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

If many dmabufs are present, reads of the dmabuf iterator can be
truncated at PAGE_SIZE or user buffer size boundaries before the fix in
"selftests/bpf: Add test for open coded dmabuf_iter". Add a test to
confirm truncation does not occur.

Signed-off-by: T.J. Mercier <tjmercier@google.com>
---
 .../selftests/bpf/prog_tests/dmabuf_iter.c    | 47 +++++++++++++++++--
 1 file changed, 42 insertions(+), 5 deletions(-)

diff --git a/tools/testing/selftests/bpf/prog_tests/dmabuf_iter.c b/tools/testing/selftests/bpf/prog_tests/dmabuf_iter.c
index 6c2b0c3dbcd8..e442be9dde7e 100644
--- a/tools/testing/selftests/bpf/prog_tests/dmabuf_iter.c
+++ b/tools/testing/selftests/bpf/prog_tests/dmabuf_iter.c
@@ -73,12 +73,10 @@ static int create_udmabuf(void)
 	return -1;
 }
 
-static int create_sys_heap_dmabuf(void)
+static int create_sys_heap_dmabuf(size_t bytes)
 {
-	sysheap_test_buffer_size = 20 * getpagesize();
-
 	struct dma_heap_allocation_data data = {
-		.len = sysheap_test_buffer_size,
+		.len = bytes,
 		.fd = 0,
 		.fd_flags = O_RDWR | O_CLOEXEC,
 		.heap_flags = 0,
@@ -110,7 +108,9 @@ static int create_sys_heap_dmabuf(void)
 static int create_test_buffers(void)
 {
 	udmabuf = create_udmabuf();
-	sysheap_dmabuf = create_sys_heap_dmabuf();
+
+	sysheap_test_buffer_size = 20 * getpagesize();
+	sysheap_dmabuf = create_sys_heap_dmabuf(sysheap_test_buffer_size);
 
 	if (udmabuf < 0 || sysheap_dmabuf < 0)
 		return -1;
@@ -219,6 +219,26 @@ static void subtest_dmabuf_iter_check_default_iter(struct dmabuf_iter *skel)
 	close(iter_fd);
 }
 
+static void subtest_dmabuf_iter_check_lots_of_buffers(struct dmabuf_iter *skel)
+{
+	int iter_fd;
+	char buf[1024];
+	size_t total_bytes_read = 0;
+	ssize_t bytes_read;
+
+	iter_fd = bpf_iter_create(bpf_link__fd(skel->links.dmabuf_collector));
+	if (!ASSERT_OK_FD(iter_fd, "iter_create"))
+		return;
+
+	while ((bytes_read = read(iter_fd, buf, sizeof(buf))) > 0)
+		total_bytes_read += bytes_read;
+
+	ASSERT_GT(total_bytes_read, getpagesize(), "total_bytes_read");
+
+	close(iter_fd);
+}
+
+
 static void subtest_dmabuf_iter_check_open_coded(struct dmabuf_iter *skel, int map_fd)
 {
 	LIBBPF_OPTS(bpf_test_run_opts, topts);
@@ -275,6 +295,23 @@ void test_dmabuf_iter(void)
 		subtest_dmabuf_iter_check_no_infinite_reads(skel);
 	if (test__start_subtest("default_iter"))
 		subtest_dmabuf_iter_check_default_iter(skel);
+	if (test__start_subtest("lots_of_buffers")) {
+		size_t NUM_BUFS = 100;
+		int buffers[NUM_BUFS];
+		int i;
+
+		for (i = 0; i < NUM_BUFS; ++i) {
+			buffers[i] = create_sys_heap_dmabuf(getpagesize());
+			if (!ASSERT_OK_FD(buffers[i], "dmabuf_fd"))
+				goto cleanup_bufs;
+		}
+
+		subtest_dmabuf_iter_check_lots_of_buffers(skel);
+
+cleanup_bufs:
+		for (--i; i >= 0; --i)
+			close(buffers[i]);
+	}
 	if (test__start_subtest("open_coded"))
 		subtest_dmabuf_iter_check_open_coded(skel, map_fd);
 
-- 
2.52.0.177.g9f829587af-goog

_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org
