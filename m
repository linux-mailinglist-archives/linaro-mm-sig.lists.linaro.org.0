Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id 02OCCtYhVmrLzgAAu9opvQ
	(envelope-from <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>)
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 14 Jul 2026 13:47:34 +0200
X-Original-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [44.210.186.118])
	by mail.lfdr.de (Postfix) with ESMTPS id AB68D754143
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 14 Jul 2026 13:47:29 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=fail ("body hash did not verify") header.d=gmail.com header.s=20251104 header.b=cREtsgKB;
	spf=pass (mail.lfdr.de: domain of "linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org" designates 44.210.186.118 as permitted sender) smtp.mailfrom="linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org";
	dmarc=fail reason="SPF not aligned (relaxed)" header.from=gmail.com (policy=none)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id C927C409AC
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 14 Jul 2026 11:47:28 +0000 (UTC)
Received: from mail-pj1-f50.google.com (mail-pj1-f50.google.com [209.85.216.50])
	by lists.linaro.org (Postfix) with ESMTPS id 0FA3C4097A
	for <linaro-mm-sig@lists.linaro.org>; Tue, 14 Jul 2026 11:47:26 +0000 (UTC)
Received: by mail-pj1-f50.google.com with SMTP id 98e67ed59e1d1-38e1a9d9105so497852a91.1
        for <linaro-mm-sig@lists.linaro.org>; Tue, 14 Jul 2026 04:47:26 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1784029645; x=1784634445; darn=lists.linaro.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=9XJ+pkLF/zrrWNVQ3+TJme7MRR7lpIC8LYwT0f9F3iM=;
        b=cREtsgKBZxIm9fYmYWAN8SlCtxl6gnfMnZ4nq+hxoWLMP79YbU6cRkWO4v2Zn7bOO5
         aLIcyQ8J5l0PL28R4Q4gPDRtv9ehCXrp84QJgetqGCc2t3+35u4+AwMPAK3D5kfp6sF2
         cpoGQeBt5LJkROjKOtM5cvXOmh9s6wlyVpmEz+RaQOppq4Hgp63gxrFcGxRCtSqCrHdg
         wdrsuKv7Oj+h8XlzsRoPWQv/Ljhik99LsVFcDPmYBbl1BgKd2TQWCj0SIKVUAPyET7KS
         JxJ0cy2Un4JlyKA9FSyV+SeVLYCkGfqSXdFSNck9/gj4gGNhFGcWCro+SF38T+4+m0v0
         uiFQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1784029645; x=1784634445;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to:content-type;
        bh=9XJ+pkLF/zrrWNVQ3+TJme7MRR7lpIC8LYwT0f9F3iM=;
        b=OceqMlQ0w2uq1G5MchLpyORRg45LUrw2YimHV6+9HhJeS6WJbvNX9nZ7iAybcXwjae
         m1BFkRoKIxX1R9WaZAIjDAaTIvJ2uzf/I3RZ1D+BOHrWuwyC/f4L/MVi7a5MjadDgFTV
         a6V8e3bpc63hDNKeqDhWuqCr3GxUjN+GYhwtnKbJFEjjjIybMyrfa8w9W46K8c9smL6o
         IcLabEXehlVlrl2/YEV/ydRsLEaMzECUldv8KDF5o2Yoph2JZYTJfyZVKLrSSCm2xo56
         vwMIkCnWEtE7jvdtE6ZUaU6d9QYxCDZn1R50U3BNXcN4Otkt1/wgO1sUcfwF9TSGoUgs
         c6/A==
X-Forwarded-Encrypted: i=1; AHgh+Ro7PzhXYoncQhogQab3w0oKNlzihQXyzcB4i9NeoyU62Sc4d1eUhSx+Gdo6bGjTdYxt6CygfUy5XoPJieN5@lists.linaro.org
X-Gm-Message-State: AOJu0YzC3zG3c9ndjTnyhmy/+TUZF+6QFLOqHUve6MQc/ZzUsU9Z+VYL
	RTGBgs30qJtkhkMrVFNUSOeyyCiRId7NpoovOC377D09w45im4myjl5V
X-Gm-Gg: AfdE7cn54TrlfXYZiR7HHAG74ZniLFV35FpJM4unkm0cxuE4GfKosZk/bWeSkUwYNIm
	Ytnsr0SD5Er6GqtsLAHM4dnYUI7UQDBjh08FQf1FUN6WvuIjViuMa0mx/hs/OP/6iSXUriUEJxj
	8Dcx8q79mvfD+B76FTy3Wdwd74WXd8igG+Q9n0iJb29LKoC5c/wG88rE7rGgPNqZuoiEvBoQae3
	RoFHBh6Zh3mZPSagTVaXUnVcDtLh23g3zt6DsMQ9qMmW3aqD6fyvNtNXXGnVuDn4B7vFmE/XYii
	zqa4vwvdC1qfJ93dOYF1dagKG8LcTJokQ8u8v009MC0pp0nI7uhBwVihQES+ZfK0zmB1r6lPCbJ
	L48vaMbzHzf0TH0+5vR/xzahKS29eWT69LLPrCK8Qn83WmB+UIU413fM8PkJttUS0qR2p8QIc0m
	ndBhBGNngWlBGojkGn
X-Received: by 2002:a17:90b:3dcb:b0:387:e0bb:5804 with SMTP id 98e67ed59e1d1-38dc7bc50femr12271219a91.43.1784029644922;
        Tue, 14 Jul 2026 04:47:24 -0700 (PDT)
Received: from baineng-pc.. ([117.133.183.252])
        by smtp.gmail.com with ESMTPSA id 98e67ed59e1d1-38e17470008sm1356162a91.17.2026.07.14.04.47.19
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 14 Jul 2026 04:47:24 -0700 (PDT)
From: Baineng Shou <shoubaineng@gmail.com>
To: Sumit Semwal <sumit.semwal@linaro.org>,
	=?UTF-8?q?Christian=20K=C3=B6nig?= <christian.koenig@amd.com>,
	"T . J . Mercier" <tjmercier@google.com>,
	Benjamin Gaignard <benjamin.gaignard@collabora.com>,
	Brian Starkey <Brian.Starkey@arm.com>,
	John Stultz <jstultz@google.com>,
	Sandeep Patil <sspatil@android.com>,
	"Andrew F . Davis" <afd@ti.com>,
	Srinivas Kandagatla <srini@kernel.org>
Date: Tue, 14 Jul 2026 19:46:54 +0800
Message-Id: <20260714114654.3885457-3-shoubaineng@gmail.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20260714114654.3885457-1-shoubaineng@gmail.com>
References: <CABdmKX21NHc2=9Sk2F-BFpu6is0vTg-QXLE+wiFNEPdsWWjvog@mail.gmail.com>
 <20260714114654.3885457-1-shoubaineng@gmail.com>
MIME-Version: 1.0
X-Spamd-Bar: --
Message-ID-Hash: I5VXZ4A77EEQOFJLOW6KUBHEN4KASWFT
X-Message-ID-Hash: I5VXZ4A77EEQOFJLOW6KUBHEN4KASWFT
X-MailFrom: shoubaineng@gmail.com
X-Mailman-Rule-Hits: member-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address
CC: stable@vger.kernel.org, dri-devel@lists.freedesktop.org, linux-media@vger.kernel.org, linaro-mm-sig@lists.linaro.org, linux-kernel@vger.kernel.org, linux-arm-msm@vger.kernel.org, Baineng Shou <shoubaineng@gmail.com>
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] [PATCH v3 2/2] misc: fastrpc: don't publish fd before copy_to_user() succeeds
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/I5VXZ4A77EEQOFJLOW6KUBHEN4KASWFT/>
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
	R_SPF_ALLOW(-0.20)[+mx:c];
	MIME_GOOD(-0.10)[text/plain];
	DMARC_POLICY_SOFTFAIL(0.10)[gmail.com : SPF not aligned (relaxed),none];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_RECIPIENTS(0.00)[m:sumit.semwal@linaro.org,m:christian.koenig@amd.com,m:tjmercier@google.com,m:benjamin.gaignard@collabora.com,m:Brian.Starkey@arm.com,m:jstultz@google.com,m:sspatil@android.com,m:afd@ti.com,m:srini@kernel.org,m:stable@vger.kernel.org,m:dri-devel@lists.freedesktop.org,m:linux-media@vger.kernel.org,m:linaro-mm-sig@lists.linaro.org,m:linux-kernel@vger.kernel.org,m:linux-arm-msm@vger.kernel.org,m:shoubaineng@gmail.com,s:lists@lfdr.de];
	TAGGED_FROM(0.00)[lists,linaro-mm-sig=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	ARC_NA(0.00)[];
	FORWARDED(0.00)[lists@lfdr.de];
	FREEMAIL_FROM(0.00)[gmail.com];
	FORGED_SENDER(0.00)[shoubaineng@gmail.com,linaro-mm-sig-bounces@lists.linaro.org];
	RCPT_COUNT_TWELVE(0.00)[16];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	FREEMAIL_CC(0.00)[vger.kernel.org,lists.freedesktop.org,lists.linaro.org,gmail.com];
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
	DBL_BLOCKED_OPENRESOLVER(0.00)[lists.linaro.org:from_smtp,lists.linaro.org:helo,lists.linaro.org:rdns,linaro.org:email]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: AB68D754143

fastrpc_ioctl_alloc_dmabuf() calls dma_buf_fd() which installs the fd
into the caller's fd table before copy_to_user() copies the fd number
back to userspace.  If copy_to_user() fails, the fd is already visible
to other threads in the same process but the ioctl returns -EFAULT.
The existing comment in the code even acknowledges the problem:

  "The usercopy failed, but we can't do much about it, as dma_buf_fd()
   already called fd_install()..."

Now that dma_buf_fd_install() is available (introduced to fix the same
issue in dma-heap), apply the same pattern here: reserve the fd with
get_unused_fd_flags(), attempt copy_to_user(), and only on success call
dma_buf_fd_install() to publish it atomically with the tracepoint.  On
copy_to_user() failure, put_unused_fd() and dma_buf_put() cleanly
unwind without any user-visible side effects.

Fixes: 6cffd79504ce ("misc: fastrpc: Add support for dmabuf exporter")
Cc: stable@vger.kernel.org
Signed-off-by: Baineng Shou <shoubaineng@gmail.com>
---
 drivers/misc/fastrpc.c | 16 ++++++----------
 1 file changed, 6 insertions(+), 10 deletions(-)

diff --git a/drivers/misc/fastrpc.c b/drivers/misc/fastrpc.c
index f3a49384586d..c5143cd25767 100644
--- a/drivers/misc/fastrpc.c
+++ b/drivers/misc/fastrpc.c
@@ -1709,24 +1709,20 @@ static int fastrpc_dmabuf_alloc(struct fastrpc_user *fl, char __user *argp)
 		return err;
 	}
 
-	bp.fd = dma_buf_fd(buf->dmabuf, O_ACCMODE);
+	bp.fd = get_unused_fd_flags(O_ACCMODE);
 	if (bp.fd < 0) {
 		dma_buf_put(buf->dmabuf);
-		return -EINVAL;
+		return bp.fd;
 	}
 
 	if (copy_to_user(argp, &bp, sizeof(bp))) {
-		/*
-		 * The usercopy failed, but we can't do much about it, as
-		 * dma_buf_fd() already called fd_install() and made the
-		 * file descriptor accessible for the current process. It
-		 * might already be closed and dmabuf no longer valid when
-		 * we reach this point. Therefore "leak" the fd and rely on
-		 * the process exit path to do any required cleanup.
-		 */
+		put_unused_fd(bp.fd);
+		dma_buf_put(buf->dmabuf);
 		return -EFAULT;
 	}
 
+	dma_buf_fd_install(buf->dmabuf, bp.fd);
+
 	return 0;
 }
 
-- 
2.34.1

_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org
