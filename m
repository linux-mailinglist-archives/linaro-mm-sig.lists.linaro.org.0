Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 8F22779A8C6
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 11 Sep 2023 16:43:07 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 4189C3F58D
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 11 Sep 2023 14:43:06 +0000 (UTC)
Received: from mail-yw1-f201.google.com (mail-yw1-f201.google.com [209.85.128.201])
	by lists.linaro.org (Postfix) with ESMTPS id 49A023EBCF
	for <linaro-mm-sig@lists.linaro.org>; Mon, 10 Jul 2023 22:34:07 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=google.com header.s=20221208 header.b=BtdvUbd2;
	spf=pass (lists.linaro.org: domain of 3XoesZAsKDUsnyzn54Bzv0nt11tyr.p1zyv0n41-zz-5vtyv565.yv0n41.14t@flex--almasrymina.bounces.google.com designates 209.85.128.201 as permitted sender) smtp.mailfrom=3XoesZAsKDUsnyzn54Bzv0nt11tyr.p1zyv0n41-zz-5vtyv565.yv0n41.14t@flex--almasrymina.bounces.google.com;
	dmarc=pass (policy=reject) header.from=google.com
Received: by mail-yw1-f201.google.com with SMTP id 00721157ae682-5704991ea05so59530817b3.1
        for <linaro-mm-sig@lists.linaro.org>; Mon, 10 Jul 2023 15:34:07 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=google.com; s=20221208; t=1689028447; x=1691620447;
        h=cc:to:from:subject:message-id:references:mime-version:in-reply-to
         :date:from:to:cc:subject:date:message-id:reply-to;
        bh=eMznknX6LhCZzxkpGK1anYqC2AReGQzyhNKGt0dhRMs=;
        b=BtdvUbd29zwhezN9vWnqcJKpf0bV2LKN/+c8VWC9oiyT99FFcNEJDOvUA5o+m21DRJ
         e9aNejKksk1rdwKl8O1MZ9yP/O1OkMbpULehfNB94qYTmzji2HykYi+osFgOuhdAF+qD
         KGUZyMgcGBl8J91gT7Vb/XlYX07mdXJEBkEmKhCq++SE1RIb3ka/J0r4X0WZmUp1LyEo
         SjYNX6E3UyUwTUHmBfJ7fNPviqSEF3jRznivgjuuqoMmWVaZBvnRoFgKdOZiBTRle0wA
         2DGPZWSVDlrn2z8oZhGDAjAlxNPaIc+/JHcTW0CD86xRjmhJfySPnG/Os836KYedkH0U
         WpvA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1689028447; x=1691620447;
        h=cc:to:from:subject:message-id:references:mime-version:in-reply-to
         :date:x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=eMznknX6LhCZzxkpGK1anYqC2AReGQzyhNKGt0dhRMs=;
        b=ZUg/fEym8UhXsnsMCi45TEUTlI4XvDO/6+JxErOP1j+VyeWSEnhypOppiQcUiVCj1/
         NXRTuMD7wenSoOacDQqp+hwL2JWcUuUA8xhikRVjkRwplAOh+hdOD2DrtvgbF+SfWxa7
         HSC0cnrAI8U3tc0+Bhx8m9/ZCf1Yr5+0Fa7k81hg1EpaWRvrCpIv0ltIEBuMnJsDTi7g
         PHPNRVZBwp+lzXOhy0/HJ33r80RLb2OkmUsIDanuHxcEuTA/P2qUH1baPuwGPpvoo6eX
         lOKAJi3hZtB+pj0mdupQKm1LqA+HEWXlMPYOGbDRS07o1xTESV8TvQpChvc7Roc8FKUN
         Kq8A==
X-Gm-Message-State: ABy/qLZid3GWzQLDt2wz3jnvvTL29nbiP1Dd5IBiuCvTzvEivb1HFP7D
	j1HDm+n5NtEzfwaYxVqtimzXAU1YH2dNv9jLqA==
X-Google-Smtp-Source: APBJJlHZxtTyAip5d5fJgZLpVb+rUoGbj/Pap2HolJ5oEOujITpsR+hl7i9eHYLZIaU+exV6ykL+cfJhHKzieUdutg==
X-Received: from almasrymina.svl.corp.google.com ([2620:15c:2c4:200:4c0f:bfb6:9942:8c53])
 (user=almasrymina job=sendgmr) by 2002:a81:e90b:0:b0:573:285a:c2a3 with SMTP
 id d11-20020a81e90b000000b00573285ac2a3mr95478ywm.1.1689028446916; Mon, 10
 Jul 2023 15:34:06 -0700 (PDT)
Date: Mon, 10 Jul 2023 15:32:57 -0700
In-Reply-To: <20230710223304.1174642-1-almasrymina@google.com>
Mime-Version: 1.0
References: <20230710223304.1174642-1-almasrymina@google.com>
X-Mailer: git-send-email 2.41.0.390.g38632f3daf-goog
Message-ID: <20230710223304.1174642-7-almasrymina@google.com>
From: Mina Almasry <almasrymina@google.com>
To: linux-kernel@vger.kernel.org, linux-media@vger.kernel.org,
	dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org,
	netdev@vger.kernel.org, linux-arch@vger.kernel.org,
	linux-kselftest@vger.kernel.org
X-Spamd-Result: default: False [-0.70 / 15.00];
	BAYES_HAM(-3.00)[100.00%];
	SUSPICIOUS_RECIPS(1.50)[];
	MID_CONTAINS_FROM(1.00)[];
	MV_CASE(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[google.com,reject];
	FORGED_SENDER(0.30)[almasrymina@google.com,3XoesZAsKDUsnyzn54Bzv0nt11tyr.p1zyv0n41-zz-5vtyv565.yv0n41.14t@flex--almasrymina.bounces.google.com];
	R_SPF_ALLOW(-0.20)[+ip4:209.85.128.0/17:c];
	R_DKIM_ALLOW(-0.20)[google.com:s=20221208];
	MIME_GOOD(-0.10)[text/plain];
	RCVD_COUNT_ONE(0.00)[1];
	NEURAL_HAM(-0.00)[-1.000];
	RCVD_TLS_LAST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	ASN(0.00)[asn:15169, ipnet:209.85.128.0/17, country:US];
	RWL_MAILSPIKE_POSSIBLE(0.00)[209.85.128.201:from];
	DKIM_TRACE(0.00)[google.com:+];
	FREEMAIL_CC(0.00)[google.com,linaro.org,amd.com,davemloft.net,kernel.org,redhat.com,arndb.de,gmail.com,ziepe.ca];
	FROM_HAS_DN(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[almasrymina@google.com,3XoesZAsKDUsnyzn54Bzv0nt11tyr.p1zyv0n41-zz-5vtyv565.yv0n41.14t@flex--almasrymina.bounces.google.com];
	RCPT_COUNT_TWELVE(0.00)[21];
	TO_DN_SOME(0.00)[];
	PREVIOUSLY_DELIVERED(0.00)[linaro-mm-sig@lists.linaro.org];
	TAGGED_RCPT(0.00)[];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	ARC_NA(0.00)[]
X-Rspamd-Action: no action
X-Rspamd-Server: lists.linaro.org
X-Rspamd-Queue-Id: 49A023EBCF
X-Spamd-Bar: /
X-MailFrom: 3XoesZAsKDUsnyzn54Bzv0nt11tyr.p1zyv0n41-zz-5vtyv565.yv0n41.14t@flex--almasrymina.bounces.google.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
Message-ID-Hash: WOIH6B5CFXG4WPLMM62VCCDIUWEQVC2T
X-Message-ID-Hash: WOIH6B5CFXG4WPLMM62VCCDIUWEQVC2T
X-Mailman-Approved-At: Mon, 11 Sep 2023 14:41:05 +0000
CC: Mina Almasry <almasrymina@google.com>, Sumit Semwal <sumit.semwal@linaro.org>, =?UTF-8?q?Christian=20K=C3=B6nig?= <christian.koenig@amd.com>, "David S. Miller" <davem@davemloft.net>, Eric Dumazet <edumazet@google.com>, Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>, Jesper Dangaard Brouer <hawk@kernel.org>, Ilias Apalodimas <ilias.apalodimas@linaro.org>, Arnd Bergmann <arnd@arndb.de>, David Ahern <dsahern@kernel.org>, Willem de Bruijn <willemdebruijn.kernel@gmail.com>, Shuah Khan <shuah@kernel.org>, jgg@ziepe.ca
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] [RFC PATCH 06/10] net: add SO_DEVMEM_DONTNEED setsockopt to release RX pages
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/WOIH6B5CFXG4WPLMM62VCCDIUWEQVC2T/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

Add an interface for the user to notify the kernel that it is done reading
the NET_RX dmabuf pages returned as cmsg. The kernel will drop the
reference on the NET_RX pages to make them available for re-use.

Signed-off-by: Mina Almasry <almasrymina@google.com>
---
 include/uapi/asm-generic/socket.h |  1 +
 include/uapi/linux/uio.h          |  4 +++
 net/core/sock.c                   | 41 +++++++++++++++++++++++++++++++
 3 files changed, 46 insertions(+)

diff --git a/include/uapi/asm-generic/socket.h b/include/uapi/asm-generic/socket.h
index 88f9234f78cb..2a5a7f5da358 100644
--- a/include/uapi/asm-generic/socket.h
+++ b/include/uapi/asm-generic/socket.h
@@ -132,6 +132,7 @@
 
 #define SO_RCVMARK		75
 
+#define SO_DEVMEM_DONTNEED	97
 #define SO_DEVMEM_HEADER	98
 #define SCM_DEVMEM_HEADER	SO_DEVMEM_HEADER
 #define SO_DEVMEM_OFFSET	99
diff --git a/include/uapi/linux/uio.h b/include/uapi/linux/uio.h
index 8b0be0f50838..faaa765fd5a4 100644
--- a/include/uapi/linux/uio.h
+++ b/include/uapi/linux/uio.h
@@ -26,6 +26,10 @@ struct cmsg_devmem {
 	__u32 frag_token;
 };
 
+struct devmemtoken {
+	__u32 token_start;
+	__u32 token_count;
+};
 /*
  *	UIO_MAXIOV shall be at least 16 1003.1g (5.4.1.1)
  */
diff --git a/net/core/sock.c b/net/core/sock.c
index 24f2761bdb1d..f9b9d9ec7322 100644
--- a/net/core/sock.c
+++ b/net/core/sock.c
@@ -1531,7 +1531,48 @@ int sk_setsockopt(struct sock *sk, int level, int optname,
 		/* Paired with READ_ONCE() in tcp_rtx_synack() */
 		WRITE_ONCE(sk->sk_txrehash, (u8)val);
 		break;
+	case SO_DEVMEM_DONTNEED: {
+		struct devmemtoken tokens[128];
+		unsigned int num_tokens, i, j;
 
+		if (sk->sk_type != SOCK_STREAM ||
+		    sk->sk_protocol != IPPROTO_TCP) {
+			ret = -EBADF;
+			break;
+		}
+
+		if (optlen % sizeof(struct devmemtoken) ||
+		    optlen > sizeof(tokens)) {
+			ret = -EINVAL;
+			break;
+		}
+
+		num_tokens = optlen / sizeof(struct devmemtoken);
+		if (copy_from_sockptr(tokens, optval, optlen)) {
+			ret = -EFAULT;
+			break;
+		}
+
+		ret = 0;
+
+		for (i = 0; i < num_tokens; i++) {
+			for (j = 0; j < tokens[i].token_count; j++) {
+				struct page *pg = xa_erase(&sk->sk_pagepool,
+							   tokens[i].token_start + j);
+
+				if (pg)
+					put_page(pg);
+				else
+					/* -EINTR here notifies the userspace
+					 * that not all tokens passed to it have
+					 * been freed.
+					 */
+					ret = -EINTR;
+			}
+		}
+
+		break;
+	}
 	default:
 		ret = -ENOPROTOOPT;
 		break;
-- 
2.41.0.390.g38632f3daf-goog

_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org
