Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 6D2B279A8C5
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 11 Sep 2023 16:42:47 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 708153F52D
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 11 Sep 2023 14:42:46 +0000 (UTC)
Received: from mail-yb1-f202.google.com (mail-yb1-f202.google.com [209.85.219.202])
	by lists.linaro.org (Postfix) with ESMTPS id C43313EF47
	for <linaro-mm-sig@lists.linaro.org>; Mon, 10 Jul 2023 22:34:02 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=google.com header.s=20221208 header.b=3a5uxA+q;
	spf=pass (lists.linaro.org: domain of 3WoesZAsKDUcjuvj107vrwjpxxpun.lxvurwj0x-vv-1rpur121.urwj0x.x0p@flex--almasrymina.bounces.google.com designates 209.85.219.202 as permitted sender) smtp.mailfrom=3WoesZAsKDUcjuvj107vrwjpxxpun.lxvurwj0x-vv-1rpur121.urwj0x.x0p@flex--almasrymina.bounces.google.com;
	dmarc=pass (policy=reject) header.from=google.com
Received: by mail-yb1-f202.google.com with SMTP id 3f1490d57ef6-c595cadae4bso5724382276.1
        for <linaro-mm-sig@lists.linaro.org>; Mon, 10 Jul 2023 15:34:02 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=google.com; s=20221208; t=1689028442; x=1691620442;
        h=cc:to:from:subject:message-id:references:mime-version:in-reply-to
         :date:from:to:cc:subject:date:message-id:reply-to;
        bh=cs78TMZKTTsnyLaGsD47TqXXpiU8IKn3E+LzkzIF7BU=;
        b=3a5uxA+qQl4NZTJNL69iIkTvOyWVY7//EUdVncePAl7DuYdYysCLTB+Scqjs0DbaRb
         knVSDHY19O2jw3TmS+RU9Ak2mdsBgSK6tfW6u5GV1mUKkWyYVITRFk6IlJEv5ytnZkeh
         zBT9t0KymYJ4QcgVINn2Gq3UU2ZggoPreRx+Zv/eoJI962CJj+J+KIPmh9/akMc2ypBs
         hRWw+J3GhzD0inq7pRnsKc7SkPkoyPF2IBr7akov++47y3RLln3OTm3ZRyFBuMw9dTux
         qWTBDMWGCdy7dhQBGYAsQnhwui5piSP/JLPmLDeSdKvpAE1zn/5xU46UzOfFbxNEAau/
         kuKQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1689028442; x=1691620442;
        h=cc:to:from:subject:message-id:references:mime-version:in-reply-to
         :date:x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=cs78TMZKTTsnyLaGsD47TqXXpiU8IKn3E+LzkzIF7BU=;
        b=eMh8B6B2wXXTjKfotCx2dQP0H/P40pnRN6C8na2TAsGC/52R5qUBZBR7JMQ+lsxF3N
         r2CdThGIbCSxC5RFnfNSjJYsITrkanXVK4Lz/bTGd31Uul0R+NP0prIKmGiMEeAhUzI/
         XPLtzf0QZpUV2D4Xm/KQ47D5Lna8cy2krlIuicZlGkMb7rDrExoLaZ0BbLNFPnafI3qp
         ZQiD/qmrwm3q9ks3V7BBxVgNx8/j+8lMqZ9pFATZ6QGH3JEUuWN9zCJDsGQZzt0tCQyJ
         RowyR7udq1bvEsGUrb14bgE9jlqWU3ENYNsJgoI/qI8zWraLwgLppCM3c6bzfMpgPjPx
         +KzA==
X-Gm-Message-State: ABy/qLZV8Hi6GtZyEuPdOTvNdMMdcl1ilogjc/JYj3Eq+NEziKjtgUv6
	men/XgzCkhvFCK55djh85/KcgJ6usMNy+Xd6qA==
X-Google-Smtp-Source: APBJJlHdH7YiMUAwux3ndVFThsAxLjTWbqRUoy5A1wbBCVTRZZjWp0g5h005ViK1cG50WI4QslyEnITMzBCMfQV5rg==
X-Received: from almasrymina.svl.corp.google.com ([2620:15c:2c4:200:4c0f:bfb6:9942:8c53])
 (user=almasrymina job=sendgmr) by 2002:a25:6c44:0:b0:c5d:b034:28e2 with SMTP
 id h65-20020a256c44000000b00c5db03428e2mr73516ybc.7.1689028442390; Mon, 10
 Jul 2023 15:34:02 -0700 (PDT)
Date: Mon, 10 Jul 2023 15:32:56 -0700
In-Reply-To: <20230710223304.1174642-1-almasrymina@google.com>
Mime-Version: 1.0
References: <20230710223304.1174642-1-almasrymina@google.com>
X-Mailer: git-send-email 2.41.0.390.g38632f3daf-goog
Message-ID: <20230710223304.1174642-6-almasrymina@google.com>
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
	FORGED_SENDER(0.30)[almasrymina@google.com,3WoesZAsKDUcjuvj107vrwjpxxpun.lxvurwj0x-vv-1rpur121.urwj0x.x0p@flex--almasrymina.bounces.google.com];
	R_SPF_ALLOW(-0.20)[+ip4:209.85.128.0/17:c];
	R_DKIM_ALLOW(-0.20)[google.com:s=20221208];
	MIME_GOOD(-0.10)[text/plain];
	RCVD_COUNT_ONE(0.00)[1];
	NEURAL_HAM(-0.00)[-1.000];
	RCVD_TLS_LAST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	ASN(0.00)[asn:15169, ipnet:209.85.128.0/17, country:US];
	RWL_MAILSPIKE_POSSIBLE(0.00)[209.85.219.202:from];
	DKIM_TRACE(0.00)[google.com:+];
	FREEMAIL_CC(0.00)[google.com,linaro.org,amd.com,davemloft.net,kernel.org,redhat.com,arndb.de,gmail.com,ziepe.ca];
	FROM_HAS_DN(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[almasrymina@google.com,3WoesZAsKDUcjuvj107vrwjpxxpun.lxvurwj0x-vv-1rpur121.urwj0x.x0p@flex--almasrymina.bounces.google.com];
	RCPT_COUNT_TWELVE(0.00)[21];
	TO_DN_SOME(0.00)[];
	PREVIOUSLY_DELIVERED(0.00)[linaro-mm-sig@lists.linaro.org];
	TAGGED_RCPT(0.00)[];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	ARC_NA(0.00)[]
X-Rspamd-Action: no action
X-Rspamd-Server: lists.linaro.org
X-Rspamd-Queue-Id: C43313EF47
X-Spamd-Bar: /
X-MailFrom: 3WoesZAsKDUcjuvj107vrwjpxxpun.lxvurwj0x-vv-1rpur121.urwj0x.x0p@flex--almasrymina.bounces.google.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
Message-ID-Hash: KVNB3EODQ3AD3IPFYIN2CBPQ2P6U4A2V
X-Message-ID-Hash: KVNB3EODQ3AD3IPFYIN2CBPQ2P6U4A2V
X-Mailman-Approved-At: Mon, 11 Sep 2023 14:41:05 +0000
CC: Mina Almasry <almasrymina@google.com>, Sumit Semwal <sumit.semwal@linaro.org>, =?UTF-8?q?Christian=20K=C3=B6nig?= <christian.koenig@amd.com>, "David S. Miller" <davem@davemloft.net>, Eric Dumazet <edumazet@google.com>, Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>, Jesper Dangaard Brouer <hawk@kernel.org>, Ilias Apalodimas <ilias.apalodimas@linaro.org>, Arnd Bergmann <arnd@arndb.de>, David Ahern <dsahern@kernel.org>, Willem de Bruijn <willemdebruijn.kernel@gmail.com>, Shuah Khan <shuah@kernel.org>, jgg@ziepe.ca
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] [RFC PATCH 05/10] tcp: implement recvmsg() RX path for devmem TCP
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/KVNB3EODQ3AD3IPFYIN2CBPQ2P6U4A2V/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

In tcp_recvmsg_locked(), detect if the skb being received by the user
is a devmem skb. In this case - if the user provided the MSG_SOCK_DEVMEM
flag - pass it to tcp_recvmsg_devmem() for custom handling.

tcp_recvmsg_devmem() copies any data in the skb header to the linear
buffer, and returns a cmsg to the user indicating the number of bytes
returned in the linear buffer.

tcp_recvmsg_devmem() then loops over the unaccessible devmem skb frags,
and returns to the user a cmsg_devmem indicating the location of the
data in the dmabuf device memory. cmsg_devmem contains this information:

1.  the offset into the dmabuf where the payload starts. 'frag_offset'.
2. the size of the frag. 'frag_size'.
3. an opaque token 'frag_token' to return to the kernel when the buffer
is to be released.

The pages awaiting freeing are stored in the newly added sk->sk_pagepool,
and each page passed to userspace is get_page()'d.  This reference is
dropped once the userspace indicates that it is done reading this page.
All pages are released when the socket is destroyed.

Signed-off-by: Mina Almasry <almasrymina@google.com>
---
 include/linux/socket.h            |   1 +
 include/net/sock.h                |   2 +
 include/uapi/asm-generic/socket.h |   5 +
 include/uapi/linux/uio.h          |   6 +
 net/core/datagram.c               |   3 +
 net/ipv4/tcp.c                    | 186 +++++++++++++++++++++++++++++-
 net/ipv4/tcp_ipv4.c               |   8 ++
 7 files changed, 209 insertions(+), 2 deletions(-)

diff --git a/include/linux/socket.h b/include/linux/socket.h
index 13c3a237b9c9..12905b2f1215 100644
--- a/include/linux/socket.h
+++ b/include/linux/socket.h
@@ -326,6 +326,7 @@ struct ucred {
 					  * plain text and require encryption
 					  */
 
+#define MSG_SOCK_DEVMEM 0x2000000	/* Receive devmem skbs as cmsg */
 #define MSG_ZEROCOPY	0x4000000	/* Use user data in kernel path */
 #define MSG_FASTOPEN	0x20000000	/* Send data in TCP SYN */
 #define MSG_CMSG_CLOEXEC 0x40000000	/* Set close_on_exec for file
diff --git a/include/net/sock.h b/include/net/sock.h
index 6f428a7f3567..c615666ff19a 100644
--- a/include/net/sock.h
+++ b/include/net/sock.h
@@ -353,6 +353,7 @@ struct sk_filter;
   *	@sk_txtime_unused: unused txtime flags
   *	@ns_tracker: tracker for netns reference
   *	@sk_bind2_node: bind node in the bhash2 table
+  *	@sk_pagepool: page pool associated with this socket.
   */
 struct sock {
 	/*
@@ -545,6 +546,7 @@ struct sock {
 	struct rcu_head		sk_rcu;
 	netns_tracker		ns_tracker;
 	struct hlist_node	sk_bind2_node;
+	struct xarray		sk_pagepool;
 };
 
 enum sk_pacing {
diff --git a/include/uapi/asm-generic/socket.h b/include/uapi/asm-generic/socket.h
index 638230899e98..88f9234f78cb 100644
--- a/include/uapi/asm-generic/socket.h
+++ b/include/uapi/asm-generic/socket.h
@@ -132,6 +132,11 @@
 
 #define SO_RCVMARK		75
 
+#define SO_DEVMEM_HEADER	98
+#define SCM_DEVMEM_HEADER	SO_DEVMEM_HEADER
+#define SO_DEVMEM_OFFSET	99
+#define SCM_DEVMEM_OFFSET	SO_DEVMEM_OFFSET
+
 #if !defined(__KERNEL__)
 
 #if __BITS_PER_LONG == 64 || (defined(__x86_64__) && defined(__ILP32__))
diff --git a/include/uapi/linux/uio.h b/include/uapi/linux/uio.h
index 059b1a9147f4..8b0be0f50838 100644
--- a/include/uapi/linux/uio.h
+++ b/include/uapi/linux/uio.h
@@ -20,6 +20,12 @@ struct iovec
 	__kernel_size_t iov_len; /* Must be size_t (1003.1g) */
 };
 
+struct cmsg_devmem {
+	__u32 frag_offset;
+	__u32 frag_size;
+	__u32 frag_token;
+};
+
 /*
  *	UIO_MAXIOV shall be at least 16 1003.1g (5.4.1.1)
  */
diff --git a/net/core/datagram.c b/net/core/datagram.c
index 176eb5834746..3a82598aa6ed 100644
--- a/net/core/datagram.c
+++ b/net/core/datagram.c
@@ -455,6 +455,9 @@ static int __skb_datagram_iter(const struct sk_buff *skb, int offset,
 	skb_walk_frags(skb, frag_iter) {
 		int end;
 
+		if (frag_iter->devmem)
+			goto short_copy;
+
 		WARN_ON(start > offset + len);
 
 		end = start + frag_iter->len;
diff --git a/net/ipv4/tcp.c b/net/ipv4/tcp.c
index 51e8d5872670..a894b8a9dbb0 100644
--- a/net/ipv4/tcp.c
+++ b/net/ipv4/tcp.c
@@ -279,6 +279,7 @@
 #include <linux/uaccess.h>
 #include <asm/ioctls.h>
 #include <net/busy_poll.h>
+#include <linux/dma-buf.h>
 
 /* Track pending CMSGs. */
 enum {
@@ -460,6 +461,7 @@ void tcp_init_sock(struct sock *sk)
 
 	set_bit(SOCK_SUPPORT_ZC, &sk->sk_socket->flags);
 	sk_sockets_allocated_inc(sk);
+	xa_init_flags(&sk->sk_pagepool, XA_FLAGS_ALLOC);
 }
 EXPORT_SYMBOL(tcp_init_sock);
 
@@ -2408,6 +2410,165 @@ static int tcp_inq_hint(struct sock *sk)
 	return inq;
 }
 
+static int tcp_recvmsg_devmem(const struct sock *sk, const struct sk_buff *skb,
+			      unsigned int offset, struct msghdr *msg, int len)
+{
+	unsigned int start = skb_headlen(skb);
+	struct cmsg_devmem cmsg_devmem = { 0 };
+	unsigned int tokens_added_idx = 0;
+	int i, copy = start - offset, n;
+	struct sk_buff *frag_iter;
+	u32 *tokens_added;
+	int err = 0;
+
+	if (!skb->devmem)
+		return -ENODEV;
+
+	tokens_added = kzalloc(sizeof(u32) * skb_shinfo(skb)->nr_frags,
+			       GFP_KERNEL);
+
+	if (!tokens_added)
+		return -ENOMEM;
+
+	/* Copy header. */
+	if (copy > 0) {
+		copy = min(copy, len);
+
+		n = copy_to_iter(skb->data + offset, copy, &msg->msg_iter);
+		if (n != copy) {
+			err = -EFAULT;
+			goto err_release_pages;
+		}
+
+		offset += copy;
+		len -= copy;
+
+		/* First a cmsg_devmem for # bytes copied to user buffer */
+		cmsg_devmem.frag_size = copy;
+		err = put_cmsg(msg, SOL_SOCKET, SO_DEVMEM_HEADER,
+			       sizeof(cmsg_devmem), &cmsg_devmem);
+		if (err)
+			goto err_release_pages;
+
+		if (len == 0)
+			goto out;
+	}
+
+	/* after that, send information of devmem pages through a sequence
+	 * of cmsg
+	 */
+	for (i = 0; i < skb_shinfo(skb)->nr_frags; i++) {
+		const skb_frag_t *frag = &skb_shinfo(skb)->frags[i];
+		struct page *page = skb_frag_page(frag);
+		struct dma_buf_pages *priv;
+		u32 user_token, frag_offset;
+		struct page *dmabuf_pages;
+		int end;
+
+		/* skb->devmem should indicate that ALL the pages in this skb
+                 * are dma buf pages. We're checking for that flag above, but
+                 * also check individual pages here. If the driver is not
+                 * setting skb->devmem correctly, we still don't want to crash
+                 * here when accessing pgmap or priv below.
+                 */
+		if (!is_dma_buf_page(page)) {
+			net_err_ratelimited("Found non-devmem skb with dma_buf "
+					    "page");
+			err = -ENODEV;
+			goto err_release_pages;
+		}
+
+		end = start + skb_frag_size(frag);
+		copy = end - offset;
+		memset(&cmsg_devmem, 0, sizeof(cmsg_devmem));
+
+		if (copy > 0) {
+			copy = min(copy, len);
+
+			priv = (struct dma_buf_pages *)page->pp->mp_priv;
+
+			dmabuf_pages = priv->pages;
+			frag_offset = ((page - dmabuf_pages) << PAGE_SHIFT) +
+				      skb_frag_off(frag) + offset - start;
+			cmsg_devmem.frag_offset = frag_offset;
+			cmsg_devmem.frag_size = copy;
+			err = xa_alloc((struct xarray *)&sk->sk_pagepool,
+				       &user_token, page, xa_limit_31b,
+				       GFP_KERNEL);
+			if (err)
+				goto err_release_pages;
+
+			tokens_added[tokens_added_idx++] = user_token;
+
+			get_page(page);
+			cmsg_devmem.frag_token = user_token;
+
+			offset += copy;
+			len -= copy;
+
+			err = put_cmsg(msg, SOL_SOCKET, SO_DEVMEM_OFFSET,
+				       sizeof(cmsg_devmem), &cmsg_devmem);
+			if (err) {
+				put_page(page);
+				goto err_release_pages;
+			}
+
+			if (len == 0)
+				goto out;
+		}
+		start = end;
+	}
+
+	if (!len)
+		goto out;
+
+	/* if len is not satisfied yet, we need to skb_walk_frags() to satisfy
+	 * len
+	 */
+	skb_walk_frags(skb, frag_iter)
+	{
+		int end;
+
+		if (!frag_iter->devmem) {
+			err = -EFAULT;
+			goto err_release_pages;
+		}
+
+		WARN_ON(start > offset + len);
+		end = start + frag_iter->len;
+		copy = end - offset;
+		if (copy > 0) {
+			if (copy > len)
+				copy = len;
+			err = tcp_recvmsg_devmem(sk, frag_iter, offset - start,
+						 msg, copy);
+			if (err)
+				goto err_release_pages;
+			len -= copy;
+			if (len == 0)
+				goto out;
+			offset += copy;
+		}
+		start = end;
+	}
+
+	if (len) {
+		err = -EFAULT;
+		goto err_release_pages;
+	}
+
+	goto out;
+
+err_release_pages:
+	for (i = 0; i < tokens_added_idx; i++)
+		put_page(xa_erase((struct xarray *)&sk->sk_pagepool,
+				  tokens_added[i]));
+
+out:
+	kfree(tokens_added);
+	return err;
+}
+
 /*
  *	This routine copies from a sock struct into the user buffer.
  *
@@ -2428,7 +2589,7 @@ static int tcp_recvmsg_locked(struct sock *sk, struct msghdr *msg, size_t len,
 	int err;
 	int target;		/* Read at least this many bytes */
 	long timeo;
-	struct sk_buff *skb, *last;
+	struct sk_buff *skb, *last, *skb_last_copied = NULL;
 	u32 urg_hole = 0;
 
 	err = -ENOTCONN;
@@ -2593,7 +2754,27 @@ static int tcp_recvmsg_locked(struct sock *sk, struct msghdr *msg, size_t len,
 			}
 		}
 
-		if (!(flags & MSG_TRUNC)) {
+		if (skb_last_copied && skb_last_copied->devmem != skb->devmem)
+			break;
+
+		if (skb->devmem) {
+			if (!(flags & MSG_SOCK_DEVMEM)) {
+				/* skb->devmem skbs can only be received with
+				 * the MSG_SOCK_DEVMEM flag.
+				 */
+
+				copied = -EFAULT;
+				break;
+			}
+
+			err = tcp_recvmsg_devmem(sk, skb, offset, msg, used);
+			if (err) {
+				if (!copied)
+					copied = -EFAULT;
+				break;
+			}
+			skb_last_copied = skb;
+		} else if (!(flags & MSG_TRUNC)) {
 			err = skb_copy_datagram_msg(skb, offset, msg, used);
 			if (err) {
 				/* Exception. Bailout! */
@@ -2601,6 +2782,7 @@ static int tcp_recvmsg_locked(struct sock *sk, struct msghdr *msg, size_t len,
 					copied = -EFAULT;
 				break;
 			}
+			skb_last_copied = skb;
 		}
 
 		WRITE_ONCE(*seq, *seq + used);
diff --git a/net/ipv4/tcp_ipv4.c b/net/ipv4/tcp_ipv4.c
index 06d2573685ca..d7dee38e0410 100644
--- a/net/ipv4/tcp_ipv4.c
+++ b/net/ipv4/tcp_ipv4.c
@@ -2291,6 +2291,14 @@ void tcp_v4_destroy_sock(struct sock *sk)
 {
 	struct tcp_sock *tp = tcp_sk(sk);
 
+	unsigned long index;
+	struct page *page;
+
+	xa_for_each(&sk->sk_pagepool, index, page)
+		put_page(page);
+
+	xa_destroy(&sk->sk_pagepool);
+
 	trace_tcp_destroy_sock(sk);
 
 	tcp_clear_xmit_timers(sk);
-- 
2.41.0.390.g38632f3daf-goog

_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org
