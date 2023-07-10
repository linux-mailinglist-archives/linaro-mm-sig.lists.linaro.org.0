Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 2809C79A8CA
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 11 Sep 2023 16:43:33 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 2421E3F532
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 11 Sep 2023 14:43:32 +0000 (UTC)
Received: from mail-yb1-f201.google.com (mail-yb1-f201.google.com [209.85.219.201])
	by lists.linaro.org (Postfix) with ESMTPS id 68EDD3EBCF
	for <linaro-mm-sig@lists.linaro.org>; Mon, 10 Jul 2023 22:34:10 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=google.com header.s=20221208 header.b=F1oYk6PY;
	spf=pass (lists.linaro.org: domain of 3YYesZAsKDU4q12q87E2y3qw44w1u.s421y3q74-22-8yw1y898.1y3q74.47w@flex--almasrymina.bounces.google.com designates 209.85.219.201 as permitted sender) smtp.mailfrom=3YYesZAsKDU4q12q87E2y3qw44w1u.s421y3q74-22-8yw1y898.1y3q74.47w@flex--almasrymina.bounces.google.com;
	dmarc=pass (policy=reject) header.from=google.com
Received: by mail-yb1-f201.google.com with SMTP id 3f1490d57ef6-c4cda9d3823so4304332276.1
        for <linaro-mm-sig@lists.linaro.org>; Mon, 10 Jul 2023 15:34:10 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=google.com; s=20221208; t=1689028450; x=1691620450;
        h=cc:to:from:subject:message-id:references:mime-version:in-reply-to
         :date:from:to:cc:subject:date:message-id:reply-to;
        bh=mZRt6IHRVYwjrDgVxc5BdSo0qSi/7hDrkUlzlo5nha0=;
        b=F1oYk6PYa7tb7uIVT7ncRImo9dzRRTMW5Ebj/UOQML5cCAoP1bLxMrobu7CbsW0S0Y
         /G53r5rrIvyYyG7hi6OPzXlzkrD5CGMaY2hGiwXxL/WiSz79VteXRkiY81i7pEKLwp3l
         17i21BWEE+TiQROAnL1CRW8Ot45TQa2M7Zp54xbYqCQ+Shk7eiW886z2C/Mfw+okEbQ3
         +Ztb3SAnWz8mhB7hcleaQBtg3wQ1hi2zzpD2QPLMozZVO5zAIhJQh5CKSeVrTq/Oq2dZ
         VwWPCjINgVuULzor/doPFvcq/lk4R/bGAoXL66l0NggTBvJcD8v6CnyLUTPM0bsChWTJ
         PBKA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1689028450; x=1691620450;
        h=cc:to:from:subject:message-id:references:mime-version:in-reply-to
         :date:x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=mZRt6IHRVYwjrDgVxc5BdSo0qSi/7hDrkUlzlo5nha0=;
        b=BVjlmjgKA1z8S3qm+yyL/fNj1y7DN1Sa55HX88zivEM5rCBPr9jgHNrzM1Wl8Co73z
         EEGxa5bm/T4kZb5DKvO8FwvQ9sQKQui62dOyE0e4SSe5JWZBufgDGwJ+9JCWSIxLhEBu
         LFWbzQvwpAZjnHMmeyHlFq/x8iqVVihbKJjGUE6RNpi/V9YnqeZk+GpA0kwzM6SKIH1R
         CkqyOjFK4v8X66LjhTWI4pG3yIF2JboS2F3yv0bToaSdULMOXn56olHyZ6VE6lqc49+e
         +1zqYyoIrt+/7+CMVi5ZTuon3K1o/OQfrwLH8VhqbNIzrAd0FhvaN5ZAI5ect5r2kgA9
         dLWg==
X-Gm-Message-State: ABy/qLYEDjmljZuhkgF7JoLm2Qs50Anb/80f7PhQ1fZ6LGsCZ+ZDz1JP
	9k5rHRVmtU1NGeoOf/G9Xe4IEIJ8u+tcex1b4g==
X-Google-Smtp-Source: APBJJlGwcwSQfIa1k2C4AKA9b3D+Y30QHjPYL3qtWa/GF75GmX5sDpCzR7Nk3qYThT2cxoPLhXyLaIWlt8Ip9FM82g==
X-Received: from almasrymina.svl.corp.google.com ([2620:15c:2c4:200:4c0f:bfb6:9942:8c53])
 (user=almasrymina job=sendgmr) by 2002:a25:c902:0:b0:c61:7151:6727 with SMTP
 id z2-20020a25c902000000b00c6171516727mr76617ybf.10.1689028449938; Mon, 10
 Jul 2023 15:34:09 -0700 (PDT)
Date: Mon, 10 Jul 2023 15:32:58 -0700
In-Reply-To: <20230710223304.1174642-1-almasrymina@google.com>
Mime-Version: 1.0
References: <20230710223304.1174642-1-almasrymina@google.com>
X-Mailer: git-send-email 2.41.0.390.g38632f3daf-goog
Message-ID: <20230710223304.1174642-8-almasrymina@google.com>
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
	FORGED_SENDER(0.30)[almasrymina@google.com,3YYesZAsKDU4q12q87E2y3qw44w1u.s421y3q74-22-8yw1y898.1y3q74.47w@flex--almasrymina.bounces.google.com];
	R_SPF_ALLOW(-0.20)[+ip4:209.85.128.0/17:c];
	R_DKIM_ALLOW(-0.20)[google.com:s=20221208];
	MIME_GOOD(-0.10)[text/plain];
	RCVD_COUNT_ONE(0.00)[1];
	NEURAL_HAM(-0.00)[-1.000];
	RCVD_TLS_LAST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	ASN(0.00)[asn:15169, ipnet:209.85.128.0/17, country:US];
	RWL_MAILSPIKE_POSSIBLE(0.00)[209.85.219.201:from];
	DKIM_TRACE(0.00)[google.com:+];
	FREEMAIL_CC(0.00)[google.com,linaro.org,amd.com,davemloft.net,kernel.org,redhat.com,arndb.de,gmail.com,ziepe.ca];
	FROM_HAS_DN(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[almasrymina@google.com,3YYesZAsKDU4q12q87E2y3qw44w1u.s421y3q74-22-8yw1y898.1y3q74.47w@flex--almasrymina.bounces.google.com];
	RCPT_COUNT_TWELVE(0.00)[21];
	TO_DN_SOME(0.00)[];
	PREVIOUSLY_DELIVERED(0.00)[linaro-mm-sig@lists.linaro.org];
	TAGGED_RCPT(0.00)[];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	ARC_NA(0.00)[]
X-Rspamd-Action: no action
X-Rspamd-Server: lists.linaro.org
X-Rspamd-Queue-Id: 68EDD3EBCF
X-Spamd-Bar: /
X-MailFrom: 3YYesZAsKDU4q12q87E2y3qw44w1u.s421y3q74-22-8yw1y898.1y3q74.47w@flex--almasrymina.bounces.google.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
Message-ID-Hash: SFRWTMQT6JNR6OS7L3IDUUMHXB6MOSMZ
X-Message-ID-Hash: SFRWTMQT6JNR6OS7L3IDUUMHXB6MOSMZ
X-Mailman-Approved-At: Mon, 11 Sep 2023 14:41:22 +0000
CC: Mina Almasry <almasrymina@google.com>, Sumit Semwal <sumit.semwal@linaro.org>, =?UTF-8?q?Christian=20K=C3=B6nig?= <christian.koenig@amd.com>, "David S. Miller" <davem@davemloft.net>, Eric Dumazet <edumazet@google.com>, Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>, Jesper Dangaard Brouer <hawk@kernel.org>, Ilias Apalodimas <ilias.apalodimas@linaro.org>, Arnd Bergmann <arnd@arndb.de>, David Ahern <dsahern@kernel.org>, Willem de Bruijn <willemdebruijn.kernel@gmail.com>, Shuah Khan <shuah@kernel.org>, jgg@ziepe.ca
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] [RFC PATCH 07/10] tcp: implement sendmsg() TX path for for devmem tcp
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/SFRWTMQT6JNR6OS7L3IDUUMHXB6MOSMZ/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

For device memory TCP, we let the user provide the kernel with a cmsg
container 2 items:

1. the dmabuf pages fd that the user would like to send data from.
2. the offset into this dmabuf that the user would like to start sending
   from.

In tcp_sendmsg_locked(), if this cmsg is provided, we send the data
using the dmabuf NET_TX pages bio_vec.

Also provide drivers with a new skb_devmem_frag_dma_map() helper. This
helper is similar to skb_frag_dma_map(), but it first checks whether the
frag being mapped is backed by dmabuf NET_TX pages, and provides the
correct dma_addr if so.

Signed-off-by: Mina Almasry <almasrymina@google.com>
---
 include/linux/skbuff.h | 19 +++++++++--
 include/net/sock.h     |  2 ++
 net/core/skbuff.c      |  8 ++---
 net/core/sock.c        |  6 ++++
 net/ipv4/tcp.c         | 73 +++++++++++++++++++++++++++++++++++++++++-
 5 files changed, 101 insertions(+), 7 deletions(-)

diff --git a/include/linux/skbuff.h b/include/linux/skbuff.h
index f5e03aa84160..ad4e7bfcab07 100644
--- a/include/linux/skbuff.h
+++ b/include/linux/skbuff.h
@@ -1660,8 +1660,8 @@ static inline int skb_zerocopy_iter_dgram(struct sk_buff *skb,
 }
 
 int skb_zerocopy_iter_stream(struct sock *sk, struct sk_buff *skb,
-			     struct msghdr *msg, int len,
-			     struct ubuf_info *uarg);
+			     struct msghdr *msg, struct iov_iter *iov_iter,
+			     int len, struct ubuf_info *uarg);
 
 /* Internal */
 #define skb_shinfo(SKB)	((struct skb_shared_info *)(skb_end_pointer(SKB)))
@@ -3557,6 +3557,21 @@ static inline dma_addr_t skb_frag_dma_map(struct device *dev,
 			    skb_frag_off(frag) + offset, size, dir);
 }
 
+/* Similar to skb_frag_dma_map, but handles devmem skbs correctly. */
+static inline dma_addr_t skb_devmem_frag_dma_map(struct device *dev,
+						 const struct sk_buff *skb,
+						 const skb_frag_t *frag,
+						 size_t offset, size_t size,
+						 enum dma_data_direction dir)
+{
+	if (unlikely(skb->devmem && is_dma_buf_page(skb_frag_page(frag)))) {
+		dma_addr_t dma_addr =
+			dma_buf_page_to_dma_addr(skb_frag_page(frag));
+		return dma_addr + skb_frag_off(frag) + offset;
+	}
+	return skb_frag_dma_map(dev, frag, offset, size, dir);
+}
+
 static inline struct sk_buff *pskb_copy(struct sk_buff *skb,
 					gfp_t gfp_mask)
 {
diff --git a/include/net/sock.h b/include/net/sock.h
index c615666ff19a..733865f89635 100644
--- a/include/net/sock.h
+++ b/include/net/sock.h
@@ -1890,6 +1890,8 @@ struct sockcm_cookie {
 	u64 transmit_time;
 	u32 mark;
 	u32 tsflags;
+	u32 devmem_fd;
+	u32 devmem_offset;
 };
 
 static inline void sockcm_init(struct sockcm_cookie *sockc,
diff --git a/net/core/skbuff.c b/net/core/skbuff.c
index 9b83da794641..b1e28e7ad6a8 100644
--- a/net/core/skbuff.c
+++ b/net/core/skbuff.c
@@ -1685,8 +1685,8 @@ void msg_zerocopy_put_abort(struct ubuf_info *uarg, bool have_uref)
 EXPORT_SYMBOL_GPL(msg_zerocopy_put_abort);
 
 int skb_zerocopy_iter_stream(struct sock *sk, struct sk_buff *skb,
-			     struct msghdr *msg, int len,
-			     struct ubuf_info *uarg)
+			     struct msghdr *msg, struct iov_iter *iov_iter,
+			     int len, struct ubuf_info *uarg)
 {
 	struct ubuf_info *orig_uarg = skb_zcopy(skb);
 	int err, orig_len = skb->len;
@@ -1697,12 +1697,12 @@ int skb_zerocopy_iter_stream(struct sock *sk, struct sk_buff *skb,
 	if (orig_uarg && uarg != orig_uarg)
 		return -EEXIST;
 
-	err = __zerocopy_sg_from_iter(msg, sk, skb, &msg->msg_iter, len);
+	err = __zerocopy_sg_from_iter(msg, sk, skb, iov_iter, len);
 	if (err == -EFAULT || (err == -EMSGSIZE && skb->len == orig_len)) {
 		struct sock *save_sk = skb->sk;
 
 		/* Streams do not free skb on error. Reset to prev state. */
-		iov_iter_revert(&msg->msg_iter, skb->len - orig_len);
+		iov_iter_revert(iov_iter, skb->len - orig_len);
 		skb->sk = sk;
 		___pskb_trim(skb, orig_len);
 		skb->sk = save_sk;
diff --git a/net/core/sock.c b/net/core/sock.c
index f9b9d9ec7322..854624bee5d0 100644
--- a/net/core/sock.c
+++ b/net/core/sock.c
@@ -2813,6 +2813,12 @@ int __sock_cmsg_send(struct sock *sk, struct cmsghdr *cmsg,
 			return -EINVAL;
 		sockc->transmit_time = get_unaligned((u64 *)CMSG_DATA(cmsg));
 		break;
+	case SCM_DEVMEM_OFFSET:
+		if (cmsg->cmsg_len != CMSG_LEN(2 * sizeof(u32)))
+			return -EINVAL;
+		sockc->devmem_fd = ((u32 *)CMSG_DATA(cmsg))[0];
+		sockc->devmem_offset = ((u32 *)CMSG_DATA(cmsg))[1];
+		break;
 	/* SCM_RIGHTS and SCM_CREDENTIALS are semantically in SOL_UNIX. */
 	case SCM_RIGHTS:
 	case SCM_CREDENTIALS:
diff --git a/net/ipv4/tcp.c b/net/ipv4/tcp.c
index a894b8a9dbb0..85d6cdc832ef 100644
--- a/net/ipv4/tcp.c
+++ b/net/ipv4/tcp.c
@@ -280,6 +280,7 @@
 #include <asm/ioctls.h>
 #include <net/busy_poll.h>
 #include <linux/dma-buf.h>
+#include <uapi/linux/dma-buf.h>
 
 /* Track pending CMSGs. */
 enum {
@@ -1216,6 +1217,52 @@ int tcp_sendmsg_fastopen(struct sock *sk, struct msghdr *msg, int *copied,
 	return err;
 }
 
+static int tcp_prepare_devmem_data(struct msghdr *msg, int devmem_fd,
+				   unsigned int devmem_offset,
+				   struct file **devmem_file,
+				   struct iov_iter *devmem_tx_iter, size_t size)
+{
+	struct dma_buf_pages *priv;
+	int err = 0;
+
+	*devmem_file = fget_raw(devmem_fd);
+	if (!*devmem_file) {
+		err = -EINVAL;
+		goto err;
+	}
+
+	if (!is_dma_buf_pages_file(*devmem_file)) {
+		err = -EBADF;
+		goto err_fput;
+	}
+
+	priv = (*devmem_file)->private_data;
+	if (!priv) {
+		WARN_ONCE(!priv, "dma_buf_pages_file has no private_data");
+		err = -EINTR;
+		goto err_fput;
+	}
+
+	if (!(priv->type & DMA_BUF_PAGES_NET_TX))
+		return -EINVAL;
+
+	if (devmem_offset + size > priv->dmabuf->size) {
+		err = -ENOSPC;
+		goto err_fput;
+	}
+
+	*devmem_tx_iter = priv->net_tx.iter;
+	iov_iter_advance(devmem_tx_iter, devmem_offset);
+
+	return 0;
+
+err_fput:
+	fput(*devmem_file);
+	*devmem_file = NULL;
+err:
+	return err;
+}
+
 int tcp_sendmsg_locked(struct sock *sk, struct msghdr *msg, size_t size)
 {
 	struct tcp_sock *tp = tcp_sk(sk);
@@ -1227,6 +1274,8 @@ int tcp_sendmsg_locked(struct sock *sk, struct msghdr *msg, size_t size)
 	int process_backlog = 0;
 	bool zc = false;
 	long timeo;
+	struct file *devmem_file = NULL;
+	struct iov_iter devmem_tx_iter;
 
 	flags = msg->msg_flags;
 
@@ -1295,6 +1344,14 @@ int tcp_sendmsg_locked(struct sock *sk, struct msghdr *msg, size_t size)
 		}
 	}
 
+	if (sockc.devmem_fd) {
+		err = tcp_prepare_devmem_data(msg, sockc.devmem_fd,
+					      sockc.devmem_offset, &devmem_file,
+					      &devmem_tx_iter, size);
+		if (err)
+			goto out_err;
+	}
+
 	/* This should be in poll */
 	sk_clear_bit(SOCKWQ_ASYNC_NOSPACE, sk);
 
@@ -1408,7 +1465,17 @@ int tcp_sendmsg_locked(struct sock *sk, struct msghdr *msg, size_t size)
 					goto wait_for_space;
 			}
 
-			err = skb_zerocopy_iter_stream(sk, skb, msg, copy, uarg);
+			if (devmem_file) {
+				err = skb_zerocopy_iter_stream(sk, skb, msg,
+							       &devmem_tx_iter,
+							       copy, uarg);
+				if (err > 0)
+					iov_iter_advance(&msg->msg_iter, err);
+			} else {
+				err = skb_zerocopy_iter_stream(sk, skb, msg,
+							       &msg->msg_iter,
+							       copy, uarg);
+			}
 			if (err == -EMSGSIZE || err == -EEXIST) {
 				tcp_mark_push(tp, skb);
 				goto new_segment;
@@ -1462,6 +1529,8 @@ int tcp_sendmsg_locked(struct sock *sk, struct msghdr *msg, size_t size)
 	}
 out_nopush:
 	net_zcopy_put(uarg);
+	if (devmem_file)
+		fput(devmem_file);
 	return copied + copied_syn;
 
 do_error:
@@ -1470,6 +1539,8 @@ int tcp_sendmsg_locked(struct sock *sk, struct msghdr *msg, size_t size)
 	if (copied + copied_syn)
 		goto out;
 out_err:
+	if (devmem_file)
+		fput(devmem_file);
 	net_zcopy_put_abort(uarg, true);
 	err = sk_stream_error(sk, flags, err);
 	/* make sure we wake any epoll edge trigger waiter */
-- 
2.41.0.390.g38632f3daf-goog

_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org
