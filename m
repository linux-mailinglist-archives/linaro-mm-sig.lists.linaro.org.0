Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id uSJiDGBJKWqjTgMAu9opvQ
	(envelope-from <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>)
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 10 Jun 2026 13:24:16 +0200
X-Original-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [44.210.186.118])
	by mail.lfdr.de (Postfix) with ESMTPS id B6DB8668BB0
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 10 Jun 2026 13:24:15 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=fail ("body hash did not verify") header.d=gmail.com header.s=20251104 header.b="ZtHxK/wD";
	spf=pass (mail.lfdr.de: domain of "linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org" designates 44.210.186.118 as permitted sender) smtp.mailfrom="linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org";
	dmarc=fail reason="SPF not aligned (relaxed)" header.from=gmail.com (policy=none)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id DA7A3409B5
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 10 Jun 2026 11:24:14 +0000 (UTC)
Received: from mail-pg1-f173.google.com (mail-pg1-f173.google.com [209.85.215.173])
	by lists.linaro.org (Postfix) with ESMTPS id 070B740A40
	for <linaro-mm-sig@lists.linaro.org>; Thu,  4 Jun 2026 00:43:10 +0000 (UTC)
Received: by mail-pg1-f173.google.com with SMTP id 41be03b00d2f7-c8584bbbf2cso94458a12.3
        for <linaro-mm-sig@lists.linaro.org>; Wed, 03 Jun 2026 17:43:09 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1780533789; x=1781138589; darn=lists.linaro.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=xPElRdLQqSlIpSLm9S4Z23ki+7V6eQuSW40WuLFvr5g=;
        b=ZtHxK/wD/vk1hJacRkf7GcUfQtKkRpdJQdecuhoy+rCXMOX7Uv2fnPNKA/vrky+fN8
         7hh1myVwL4fhD6kSbu2XkaJrXIyCVOpfab5AOSU7d14Xyx11BCM57hZwn20syhTV63YI
         BRD2XQz1NDp25rjIQEbupYvUVLDGvOxoeSt5TLx91qJRZFPRSmoxeH3j+hohut9Ow2s+
         ubzzIZdk+oiNvDhPLVPASHp5qO07P9cgRihiwD16n0ZhZow4G2RSAgkq6pIBMj3KypOY
         nUKTanzsCQTR4v8srhL9YJqLPRP1P7MDJo6cWV7Aoxv2NJfkmorkeAfL76CsVS6Sn+la
         M2lg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1780533789; x=1781138589;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=xPElRdLQqSlIpSLm9S4Z23ki+7V6eQuSW40WuLFvr5g=;
        b=VEFLMz4my+J08GNRuq2jiY14Bh4Y8rVWRrz2czOzCdg/Pi11sMwYPOEqXcFfp27Z3l
         +hWCxknxRFX6g7YS/mXkLIz0SqOdfHAGkZo/lw/0GQ86QMv+oH9Ancd3iK3ezsGRTr2e
         NBtdC4Qr7y6kr9XF05lvyIWcRV5m4uQtMLakvTDCOIZ94C95jYkC0ggXVWlDo1EE9xnX
         ko2SFqzt+SJOMhQppKdaCPYEQzd0QMWr0MYfNgFaQhIk2xs/lPDKiETp7/ugrGjESVsK
         pgpeCIjJwvXBjDmaeHG/96gJYEadM+72a7dPfjUEEGS8CEulOp8WVu+gSfn8ukILHcXu
         nNzg==
X-Forwarded-Encrypted: i=1; AFNElJ84Tuw5SOCgWatBCgXSb6jnWMfZwqrZNrY//Pw8tyPsT/Qy9LJoI/QwiZpZjFnAjVwu7Oh0iwukii/9HSB+@lists.linaro.org
X-Gm-Message-State: AOJu0Yx3Zfo2mjMhxbQ+WU11mE8sAMYJapcon/S5YmbkvWxq9Bo9QaMv
	D1kSPdOxNCgqMZu+2Jahy0u8pZeJ/ViiswgmawTxIAUfaNtRYOHdWlEy
X-Gm-Gg: Acq92OFm92r6l6HX1cuC2qyE3h8ji2JrQTUw0eRmhZZUQwELMJX5/XjLgkSQ9u8nnu8
	2TeDqLhxsiMNKDcmqosB4N/iozd6rlF5jIA2TwMdFEWkMscUODEnmWNRJ8hjpioijDbBPee2wVI
	YAsRUlvkG/2W3br0HN+9geLy+vWWLrNXSSrZmAYjuqxbPGUdhABBN5Z3TGAGQ9INkJ1T5mD1riF
	OFdOoAfYa8CfgFaQCpSezf4iOeUFEHE+0e+c8E3mFv5hjhUsZVXcLTqLxA8b62j5hA+/QBUCScN
	tWsxCPbEMZteyHfffzp/02vsywwg2iaEtTffzOymF3s5VlhKrAOnzcxXeMJGb3IwNQ4QmnTodh1
	K8W6nyDeEmCNPNYdIZPZ3zKwxLYIJh9+m03X4ruwirWHNIIB5hDxOBKepExWTkHz7jB57ufRj/x
	XHx/zIpOq7Vjf7UTknyh2DmEdEGCNi4w==
X-Received: by 2002:a05:6300:67ca:b0:39f:3ca8:a331 with SMTP id adf61e73a8af0-3b4974cc6d4mr6579788637.16.1780533789092;
        Wed, 03 Jun 2026 17:43:09 -0700 (PDT)
Received: from localhost ([2a03:2880:ff:59::])
        by smtp.gmail.com with ESMTPSA id 41be03b00d2f7-c85df04a0e9sm2879012a12.13.2026.06.03.17.43.08
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 03 Jun 2026 17:43:08 -0700 (PDT)
From: Bobby Eshleman <bobbyeshleman@gmail.com>
Date: Wed, 03 Jun 2026 17:43:00 -0700
MIME-Version: 1.0
Message-Id: <20260603-tcpdm-large-niovs-v1-3-f37a4ac6726c@meta.com>
References: <20260603-tcpdm-large-niovs-v1-0-f37a4ac6726c@meta.com>
In-Reply-To: <20260603-tcpdm-large-niovs-v1-0-f37a4ac6726c@meta.com>
To: Donald Hunter <donald.hunter@gmail.com>,
 Jakub Kicinski <kuba@kernel.org>, "David S. Miller" <davem@davemloft.net>,
 Eric Dumazet <edumazet@google.com>, Paolo Abeni <pabeni@redhat.com>,
 Simon Horman <horms@kernel.org>, Andrew Lunn <andrew+netdev@lunn.ch>,
 Gerd Hoffmann <kraxel@redhat.com>,
 Vivek Kasireddy <vivek.kasireddy@intel.com>,
 Sumit Semwal <sumit.semwal@linaro.org>,
 =?utf-8?q?Christian_K=C3=B6nig?= <christian.koenig@amd.com>,
 Shuah Khan <shuah@kernel.org>
X-Mailer: b4 0.14.3
X-Spamd-Bar: ----
X-MailFrom: bobbyeshleman@gmail.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
Message-ID-Hash: ZIVV3DDOHVPDYIJZPISGGXXYHZNUOJ77
X-Message-ID-Hash: ZIVV3DDOHVPDYIJZPISGGXXYHZNUOJ77
X-Mailman-Approved-At: Wed, 10 Jun 2026 11:22:51 +0000
CC: netdev@vger.kernel.org, linux-kernel@vger.kernel.org, dri-devel@lists.freedesktop.org, linux-media@vger.kernel.org, linaro-mm-sig@lists.linaro.org, linux-kselftest@vger.kernel.org, sdf@fomichev.me, razor@blackwall.org, daniel@iogearbox.net, almasrymina@google.com, matttbe@kernel.org, skhawaja@google.com, dw@davidwei.uk, Bobby Eshleman <bobbyeshleman@meta.com>
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] [PATCH net-next 3/4] selftests/net: ncdevmem: add -b option to set rx-buf-size on bind
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/ZIVV3DDOHVPDYIJZPISGGXXYHZNUOJ77/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
X-Rspamd-Action: no action
X-Spamd-Result: default: False [3.09 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	R_DKIM_REJECT(1.00)[gmail.com:s=20251104];
	DATE_IN_PAST(1.00)[154];
	R_SPF_ALLOW(-0.20)[+mx:c];
	MAILLIST(-0.20)[mailman];
	DMARC_POLICY_SOFTFAIL(0.10)[gmail.com : SPF not aligned (relaxed),none];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_COUNT_THREE(0.00)[4];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:donald.hunter@gmail.com,m:kuba@kernel.org,m:davem@davemloft.net,m:edumazet@google.com,m:pabeni@redhat.com,m:horms@kernel.org,m:andrew+netdev@lunn.ch,m:kraxel@redhat.com,m:vivek.kasireddy@intel.com,m:sumit.semwal@linaro.org,m:christian.koenig@amd.com,m:shuah@kernel.org,m:netdev@vger.kernel.org,m:linux-kernel@vger.kernel.org,m:dri-devel@lists.freedesktop.org,m:linux-media@vger.kernel.org,m:linaro-mm-sig@lists.linaro.org,m:linux-kselftest@vger.kernel.org,m:sdf@fomichev.me,m:razor@blackwall.org,m:daniel@iogearbox.net,m:almasrymina@google.com,m:matttbe@kernel.org,m:skhawaja@google.com,m:dw@davidwei.uk,m:bobbyeshleman@meta.com,m:donaldhunter@gmail.com,m:andrew@lunn.ch,s:lists@lfdr.de];
	FREEMAIL_TO(0.00)[gmail.com,kernel.org,davemloft.net,google.com,redhat.com,lunn.ch,intel.com,linaro.org,amd.com];
	ARC_NA(0.00)[];
	FORWARDED(0.00)[lists@lfdr.de];
	FREEMAIL_FROM(0.00)[gmail.com];
	FORGED_SENDER(0.00)[bobbyeshleman@gmail.com,linaro-mm-sig-bounces@lists.linaro.org];
	RCPT_COUNT_TWELVE(0.00)[26];
	MIME_TRACE(0.00)[0:+];
	RCVD_TLS_LAST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	ALIAS_RESOLVED(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[bobbyeshleman@gmail.com,linaro-mm-sig-bounces@lists.linaro.org];
	FROM_HAS_DN(0.00)[];
	TAGGED_FROM(0.00)[lists,linaro-mm-sig=lfdr.de];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DKIM_TRACE(0.00)[gmail.com:-];
	TAGGED_RCPT(0.00)[linaro-mm-sig,netdev];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	ASN(0.00)[asn:14618, ipnet:44.192.0.0/11, country:US];
	DBL_BLOCKED_OPENRESOLVER(0.00)[linaro.org:email,lists.linaro.org:helo,lists.linaro.org:rdns,lists.linaro.org:from_smtp,meta.com:mid,meta.com:email]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: B6DB8668BB0

From: Bobby Eshleman <bobbyeshleman@meta.com>

Add -b <bytes> to request a non-default niov size via
NETDEV_A_DMABUF_RX_BUF_SIZE. When the value exceeds PAGE_SIZE,
udmabuf_alloc() switches to an MFD_HUGETLB-backed memfd so each 2 MB
hugepage produces one naturally-aligned sg entry.

Reject values > 2 MB up front: MFD_HUGETLB + udmabuf can only guarantee
2 MB per sg entry (one hugepage), so a larger rx_buf_size would fail the
per-sg length/alignment check.

Add CONFIG_HUGETLBFS=y to drivers/net/hw/config so the new path is
reachable in the CI kernels built for these tests.

Signed-off-by: Bobby Eshleman <bobbyeshleman@meta.com>
---
 tools/testing/selftests/drivers/net/hw/config     |  1 +
 tools/testing/selftests/drivers/net/hw/ncdevmem.c | 49 +++++++++++++++++++++--
 2 files changed, 47 insertions(+), 3 deletions(-)

diff --git a/tools/testing/selftests/drivers/net/hw/config b/tools/testing/selftests/drivers/net/hw/config
index b9f406dd7282..388721bee553 100644
--- a/tools/testing/selftests/drivers/net/hw/config
+++ b/tools/testing/selftests/drivers/net/hw/config
@@ -3,6 +3,7 @@ CONFIG_FAIL_FUNCTION=y
 CONFIG_FAULT_INJECTION=y
 CONFIG_FAULT_INJECTION_DEBUG_FS=y
 CONFIG_FUNCTION_ERROR_INJECTION=y
+CONFIG_HUGETLBFS=y
 CONFIG_INET6_ESP=y
 CONFIG_INET6_ESP_OFFLOAD=y
 CONFIG_INET_ESP=y
diff --git a/tools/testing/selftests/drivers/net/hw/ncdevmem.c b/tools/testing/selftests/drivers/net/hw/ncdevmem.c
index d96e8a3b5a65..325c128191e2 100644
--- a/tools/testing/selftests/drivers/net/hw/ncdevmem.c
+++ b/tools/testing/selftests/drivers/net/hw/ncdevmem.c
@@ -61,6 +61,7 @@
 #include <sys/time.h>
 
 #include <linux/memfd.h>
+#include <sys/param.h>
 #include <linux/dma-buf.h>
 #include <linux/errqueue.h>
 #include <linux/udmabuf.h>
@@ -79,6 +80,7 @@
 #define PAGE_SHIFT 12
 #define TEST_PREFIX "ncdevmem"
 #define NUM_PAGES 16000
+#define MB(x) ((x) << 20)
 
 #ifndef MSG_SOCK_DEVMEM
 #define MSG_SOCK_DEVMEM 0x2000000
@@ -100,6 +102,7 @@ static unsigned int dmabuf_id;
 static uint32_t tx_dmabuf_id;
 static int waittime_ms = 500;
 static bool fail_on_linear;
+static uint32_t rx_buf_size;
 
 /* System state loaded by current_config_load() */
 #define MAX_FLOWS	8
@@ -142,6 +145,7 @@ static struct memory_buffer *udmabuf_alloc(size_t size)
 {
 	struct udmabuf_create create;
 	struct memory_buffer *ctx;
+	unsigned int memfd_flags;
 	int ret;
 
 	ctx = malloc(sizeof(*ctx));
@@ -156,9 +160,14 @@ static struct memory_buffer *udmabuf_alloc(size_t size)
 		goto err_free_ctx;
 	}
 
-	ctx->memfd = memfd_create("udmabuf-test", MFD_ALLOW_SEALING);
+	memfd_flags = MFD_ALLOW_SEALING;
+	if (rx_buf_size > (uint32_t)getpagesize())
+		memfd_flags |= MFD_HUGETLB | MFD_HUGE_2MB;
+
+	ctx->memfd = memfd_create("udmabuf-test", memfd_flags);
 	if (ctx->memfd < 0) {
-		pr_err("[skip,no-memfd]");
+		pr_err("[skip,no-memfd%s]",
+		       (memfd_flags & MFD_HUGETLB) ? " (need hugepages)" : "");
 		goto err_close_dev;
 	}
 
@@ -168,6 +177,11 @@ static struct memory_buffer *udmabuf_alloc(size_t size)
 		goto err_close_memfd;
 	}
 
+	if (memfd_flags & MFD_HUGETLB) {
+		size = roundup(size, MB(2));
+		ctx->size = size;
+	}
+
 	ret = ftruncate(ctx->memfd, size);
 	if (ret == -1) {
 		pr_err("[FAIL,memfd-truncate]");
@@ -699,6 +713,8 @@ static int bind_rx_queue(unsigned int ifindex, unsigned int dmabuf_fd,
 	netdev_bind_rx_req_set_ifindex(req, ifindex);
 	netdev_bind_rx_req_set_fd(req, dmabuf_fd);
 	__netdev_bind_rx_req_set_queues(req, queues, n_queue_index);
+	if (rx_buf_size)
+		netdev_bind_rx_req_set_rx_buf_size(req, rx_buf_size);
 
 	rsp = netdev_bind_rx(*ys, req);
 	if (!rsp) {
@@ -1411,7 +1427,7 @@ int main(int argc, char *argv[])
 	int is_server = 0, opt;
 	int ret, err = 1;
 
-	while ((opt = getopt(argc, argv, "Lls:c:p:v:q:t:f:z:n")) != -1) {
+	while ((opt = getopt(argc, argv, "Lls:c:p:v:q:t:f:z:nb:")) != -1) {
 		switch (opt) {
 		case 'L':
 			fail_on_linear = true;
@@ -1446,6 +1462,33 @@ int main(int argc, char *argv[])
 		case 'n':
 			skip_config = 1;
 			break;
+		case 'b': {
+			char *endp;
+			unsigned long val;
+
+			errno = 0;
+			val = strtoul(optarg, &endp, 0);
+			if (errno || endp == optarg || *endp || val == 0 ||
+			    val > UINT32_MAX) {
+				pr_err("invalid rx_buf_size: %s", optarg);
+				return 1;
+			}
+			if (val & (val - 1)) {
+				pr_err("rx_buf_size must be a power of 2");
+				return 1;
+			}
+			if (val < (unsigned long)getpagesize()) {
+				pr_err("rx_buf_size must be >= PAGE_SIZE (%d)",
+				       getpagesize());
+				return 1;
+			}
+			if (val > MB(2)) {
+				pr_err("rx_buf_size > 2 MB not supported");
+				return 1;
+			}
+			rx_buf_size = val;
+			break;
+		}
 		case '?':
 			fprintf(stderr, "unknown option: %c\n", optopt);
 			break;

-- 
2.53.0-Meta

_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org
