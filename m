Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id sFf3ChxdBGqiHQIAu9opvQ
	(envelope-from <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>)
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 13 May 2026 13:14:36 +0200
X-Original-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [44.210.186.118])
	by mail.lfdr.de (Postfix) with ESMTPS id DD0B753201C
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 13 May 2026 13:14:35 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id ED90E3F91B
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 13 May 2026 11:14:34 +0000 (UTC)
Received: from mail-wr1-f52.google.com (mail-wr1-f52.google.com [209.85.221.52])
	by lists.linaro.org (Postfix) with ESMTPS id A86BB40498
	for <linaro-mm-sig@lists.linaro.org>; Wed, 29 Apr 2026 15:26:42 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=gmail.com header.s=20251104 header.b=HFqxCM80;
	dmarc=pass (policy=none) header.from=gmail.com;
	spf=pass (lists.linaro.org: domain of asml.silence@gmail.com designates 209.85.221.52 as permitted sender) smtp.mailfrom=asml.silence@gmail.com
Received: by mail-wr1-f52.google.com with SMTP id ffacd0b85a97d-43cf8d550bdso10720172f8f.0
        for <linaro-mm-sig@lists.linaro.org>; Wed, 29 Apr 2026 08:26:42 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1777476402; x=1778081202; darn=lists.linaro.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=swjDqvfsydtMCDgC1VH/dViD3xm2NdukCe3jlmQ9xuA=;
        b=HFqxCM80Loctg9sIEdO8OcLW2pzDqfb6DUyLiR/qlFXxzi0qbfVQEyJzAypI4Z87cG
         8Sj26huLO3aG7Ty90F2hw/c/Ct3kgQARbAkayRvVrBcyVgUEfUMdwlphnPj/VV1zI3Gb
         qgh/+yCsOn9PidXMjlcxSK6KMVmThR4LFNNO+q69XeINKWXSxExRbybdqLEbNOqJD/3M
         aT+wVsCER/HhYPxgzIxUm+Z58Tvgm5rtk9/Zj9ty0rs8rNNZeIsDPh+TjL5qR+sfWe/O
         FVq4zqOAmcl7gIkdAL6n2ypx229v0+QCARTV6sjnA3JhtnL9CIslQ1tQNQumuEXN6Iga
         70Qw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1777476402; x=1778081202;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=swjDqvfsydtMCDgC1VH/dViD3xm2NdukCe3jlmQ9xuA=;
        b=pYgxrs6/o9s4WZE0A7FzKvkQFlCUNhYdHHlrcHSlt9JNo3QagmWhh+Tb0S7P///1WA
         efrUIFy9xhjrMd0RCOU2MVls6BGG3bLhP7Q4AjpjL96lg319Y/HuiaYOqaOC2oKbBlVE
         HISjhcR6a37mkrRDRkU9oTzHMO32vnjLEy8XC2o14n/3HmvqiNZQF4Y4A1vPYIJLeUug
         39OGnfXDs0dwuBvujVz4kYuNnulDx9zyxHZcSLkDgGzYu9/4HJTJg54ntTt0+yaK/Dx6
         KBmOjxdvpRz3yruUtGvQvI4yHAl48t4+frxcOc7vjDGO3yHcLUm+4VOwExxtChUbiObL
         sh5w==
X-Forwarded-Encrypted: i=1; AFNElJ84Ke741uLNL9kVbhQ6iUrUJkzCXOzeATG1oKtzE8DPW2POKzDbl5nWWVEoJse6W9x8EpyF7v6I1NPD6TMC@lists.linaro.org
X-Gm-Message-State: AOJu0YzG9XRESAAdtn0MHlCV4tIC5zt8S9qZ3ONNDVphJU/02uAHiXTI
	YehmEvNcmbe6Y2aRqflkYtnelQU9YhcpJ0JHYzVhZa4/kbNA9yv3anZf
X-Gm-Gg: AeBDietwOCJh2BOnKi0mu4OpjOaNoka289wvwMGSZbE9sGxov3GdtNwekxPfcel+eSz
	AvtNE+SkTCGZqX9pHdJdn5+uJ72XHgXxGu/VQFqGU8ocPMZwctNtvdm0JUbdIaHV6shIFby8su6
	Dz5/POFSC4asqb1PeMYOMCF3COeLzhZWFDpLAnad4TVpdylGWPYVcoZsPlr4FO8vIgPmosGo3dJ
	o4Gqm9hMGBsmbMuJHj40BhfQHXtr6XMw5TetkVRcKzCpG5hkoRABi2CnZNXBGQMAvXSt7hEtybq
	rTvGadfabVRYI/DKe1YohJ+1+EKUwqDVq4KLT8xRU5MKd34Pra4YJ13qVB+RchrVQiJ6iZc3FlI
	BpFr6wqUgd0sKJdkyfqSDoPvMTQRk88ODgTFSCZGexO7yjdY01dbFfeuDnfsWSSFkaYZ/Qo7plf
	HPR8t+1qRf5YeIi7vJ77q+iS0BCky7vPCqr3A1m7JElI430DPmjSef/8k8mpJIU8PY+YJU1VEae
	kN85svhr+SyCX2yvPcpdtepXHCfzjfWDsPzTXDYLFTB
X-Received: by 2002:a05:6000:1888:b0:43f:debd:feb1 with SMTP id ffacd0b85a97d-44649ba18b5mr14136832f8f.39.1777476397928;
        Wed, 29 Apr 2026 08:26:37 -0700 (PDT)
Received: from 127.0.0.1localhost ([82.132.184.31])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-447b76e5c22sm6382951f8f.28.2026.04.29.08.26.33
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 29 Apr 2026 08:26:37 -0700 (PDT)
From: Pavel Begunkov <asml.silence@gmail.com>
To: Jens Axboe <axboe@kernel.dk>,
	Keith Busch <kbusch@kernel.org>,
	Christoph Hellwig <hch@lst.de>,
	Sagi Grimberg <sagi@grimberg.me>,
	Alexander Viro <viro@zeniv.linux.org.uk>,
	Christian Brauner <brauner@kernel.org>,
	Andrew Morton <akpm@linux-foundation.org>,
	Sumit Semwal <sumit.semwal@linaro.org>,
	=?UTF-8?q?Christian=20K=C3=B6nig?= <christian.koenig@amd.com>,
	linux-block@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	linux-nvme@lists.infradead.org,
	linux-fsdevel@vger.kernel.org,
	io-uring@vger.kernel.org,
	linux-media@vger.kernel.org,
	dri-devel@lists.freedesktop.org,
	linaro-mm-sig@lists.linaro.org
Date: Wed, 29 Apr 2026 16:25:50 +0100
Message-ID: <646ecd6fde8d9e146cb051efb514deb27ce3883e.1777475843.git.asml.silence@gmail.com>
X-Mailer: git-send-email 2.53.0
In-Reply-To: <cover.1777475843.git.asml.silence@gmail.com>
References: <cover.1777475843.git.asml.silence@gmail.com>
MIME-Version: 1.0
X-Spamd-Bar: --
X-MailFrom: asml.silence@gmail.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
Message-ID-Hash: Y5SOWUH3WPWK3Q3MBGAI24OPEHF53GBP
X-Message-ID-Hash: Y5SOWUH3WPWK3Q3MBGAI24OPEHF53GBP
X-Mailman-Approved-At: Wed, 13 May 2026 11:13:56 +0000
CC: asml.silence@gmail.com, Nitesh Shetty <nj.shetty@samsung.com>, Kanchan Joshi <joshi.k@samsung.com>, Anuj Gupta <anuj20.g@samsung.com>, Tushar Gohad <tushar.gohad@intel.com>, William Power <william.power@intel.com>, Phil Cayton <phil.cayton@intel.com>, Jason Gunthorpe <jgg@nvidia.com>
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] [PATCH v3 04/10] block: introduce dma map backed bio type
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/Y5SOWUH3WPWK3Q3MBGAI24OPEHF53GBP/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
X-Rspamd-Queue-Id: DD0B753201C
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [2.09 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	DATE_IN_PAST(1.00)[331];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+mx:c];
	DMARC_POLICY_SOFTFAIL(0.10)[gmail.com : SPF not aligned (relaxed), No valid DKIM,none];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[lists,linaro-mm-sig=lfdr.de];
	RCVD_COUNT_THREE(0.00)[4];
	ARC_NA(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[25];
	MIME_TRACE(0.00)[0:+];
	FREEMAIL_FROM(0.00)[gmail.com];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[asmlsilence@gmail.com,linaro-mm-sig-bounces@lists.linaro.org];
	FROM_HAS_DN(0.00)[];
	FREEMAIL_CC(0.00)[gmail.com,samsung.com,intel.com,nvidia.com];
	TAGGED_RCPT(0.00)[linaro-mm-sig];
	ASN(0.00)[asn:14618, ipnet:44.192.0.0/11, country:US];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	NEURAL_SPAM(0.00)[0.905];
	DBL_BLOCKED_OPENRESOLVER(0.00)[linaro.org:email,lists.linaro.org:helo,lists.linaro.org:rdns]
X-Rspamd-Action: no action

Premapped buffers don't require a generic bio_vec since these have
already been dma mapped. Repurpose the bi_io_vec space to strore dmabuf
maps as they are mutually exclusive.

Suggested-by: Keith Busch <kbusch@kernel.org>
Signed-off-by: Pavel Begunkov <asml.silence@gmail.com>
---
 block/bio.c               | 25 ++++++++++++++++++++++++-
 block/blk-merge.c         | 14 ++++++++++++++
 block/blk.h               |  3 ++-
 block/fops.c              |  2 ++
 include/linux/bio.h       | 19 ++++++++++++++++---
 include/linux/blk_types.h |  8 +++++++-
 6 files changed, 65 insertions(+), 6 deletions(-)

diff --git a/block/bio.c b/block/bio.c
index 0734b50d4992..bdc91777c288 100644
--- a/block/bio.c
+++ b/block/bio.c
@@ -851,7 +851,13 @@ static int __bio_clone(struct bio *bio, struct bio *bio_src, gfp_t gfp)
 	bio->bi_write_hint = bio_src->bi_write_hint;
 	bio->bi_write_stream = bio_src->bi_write_stream;
 	bio->bi_iter = bio_src->bi_iter;
-	bio->bi_io_vec = bio_src->bi_io_vec;
+
+	if (!bio_flagged(bio_src, BIO_DMABUF_MAP)) {
+		bio->bi_io_vec = bio_src->bi_io_vec;
+	} else {
+		bio->dmabuf_map = bio_src->dmabuf_map;
+		bio_set_flag(bio, BIO_DMABUF_MAP);
+	}
 
 	if (bio->bi_bdev) {
 		if (bio->bi_bdev == bio_src->bi_bdev &&
@@ -1183,6 +1189,18 @@ void bio_iov_bvec_set(struct bio *bio, const struct iov_iter *iter)
 	bio_set_flag(bio, BIO_CLONED);
 }
 
+void bio_dmabuf_map_set(struct bio *bio, struct iov_iter *iter)
+{
+	WARN_ON_ONCE(bio->bi_max_vecs);
+
+	bio->dmabuf_map = iter->dmabuf_map;
+	bio->bi_vcnt = 0;
+	bio->bi_iter.bi_bvec_done = iter->iov_offset;
+	bio->bi_iter.bi_size = iov_iter_count(iter);
+	bio->bi_opf |= REQ_NOMERGE;
+	bio_set_flag(bio, BIO_DMABUF_MAP);
+}
+
 /*
  * Aligns the bio size to the len_align_mask, releasing excessive bio vecs that
  * __bio_iov_iter_get_pages may have inserted, and reverts the trimmed length
@@ -1252,6 +1270,11 @@ int bio_iov_iter_get_pages(struct bio *bio, struct iov_iter *iter,
 		iov_iter_advance(iter, bio->bi_iter.bi_size);
 		return 0;
 	}
+	if (iov_iter_is_dmabuf_map(iter)) {
+		bio_dmabuf_map_set(bio, iter);
+		iov_iter_advance(iter, bio->bi_iter.bi_size);
+		return 0;
+	}
 
 	if (iov_iter_extract_will_pin(iter))
 		bio_set_flag(bio, BIO_PAGE_PINNED);
diff --git a/block/blk-merge.c b/block/blk-merge.c
index fcf09325b22e..fc2c0c428001 100644
--- a/block/blk-merge.c
+++ b/block/blk-merge.c
@@ -348,6 +348,19 @@ int bio_split_io_at(struct bio *bio, const struct queue_limits *lim,
 		len_align_mask |= (bc->bc_key->crypto_cfg.data_unit_size - 1);
 	}
 
+	if (bio_flagged(bio, BIO_DMABUF_MAP)) {
+		nsegs = 1;
+
+		if ((bio->bi_iter.bi_bvec_done & lim->dma_alignment) ||
+		    (bio->bi_iter.bi_size & len_align_mask))
+			return -EINVAL;
+		if (bio->bi_iter.bi_size > max_bytes) {
+			bytes = max_bytes;
+			goto split;
+		}
+		goto out;
+	}
+
 	bio_for_each_bvec(bv, bio, iter) {
 		if (bv.bv_offset & start_align_mask ||
 		    bv.bv_len & len_align_mask)
@@ -378,6 +391,7 @@ int bio_split_io_at(struct bio *bio, const struct queue_limits *lim,
 		bvprvp = &bvprv;
 	}
 
+out:
 	*segs = nsegs;
 	bio->bi_bvec_gap_bit = ffs(gaps);
 	return 0;
diff --git a/block/blk.h b/block/blk.h
index b998a7761faf..b4b09abebce8 100644
--- a/block/blk.h
+++ b/block/blk.h
@@ -424,7 +424,8 @@ static inline struct bio *__bio_split_to_limits(struct bio *bio,
 	switch (bio_op(bio)) {
 	case REQ_OP_READ:
 	case REQ_OP_WRITE:
-		if (bio_may_need_split(bio, lim))
+		if (bio_may_need_split(bio, lim) ||
+		    bio_flagged(bio, BIO_DMABUF_MAP))
 			return bio_split_rw(bio, lim, nr_segs);
 		*nr_segs = 1;
 		return bio;
diff --git a/block/fops.c b/block/fops.c
index bb6642b45937..713a3ba3f457 100644
--- a/block/fops.c
+++ b/block/fops.c
@@ -349,6 +349,8 @@ static ssize_t __blkdev_direct_IO_async(struct kiocb *iocb,
 		 * bio_iov_iter_get_pages() and set the bvec directly.
 		 */
 		bio_iov_bvec_set(bio, iter);
+	} else if (iov_iter_is_dmabuf_map(iter)) {
+		bio_dmabuf_map_set(bio, iter);
 	} else {
 		ret = blkdev_iov_iter_get_pages(bio, iter, bdev);
 		if (unlikely(ret))
diff --git a/include/linux/bio.h b/include/linux/bio.h
index 97d747320b35..0c43fa6b0900 100644
--- a/include/linux/bio.h
+++ b/include/linux/bio.h
@@ -108,16 +108,26 @@ static inline bool bio_next_segment(const struct bio *bio,
 #define bio_for_each_segment_all(bvl, bio, iter) \
 	for (bvl = bvec_init_iter_all(&iter); bio_next_segment((bio), &iter); )
 
+static inline void bio_advance_iter_dmabuf_map(struct bvec_iter *iter,
+					       unsigned int bytes)
+{
+	iter->bi_bvec_done += bytes;
+	iter->bi_size -= bytes;
+}
+
 static inline void bio_advance_iter(const struct bio *bio,
 				    struct bvec_iter *iter, unsigned int bytes)
 {
 	iter->bi_sector += bytes >> 9;
 
-	if (bio_no_advance_iter(bio))
+	if (bio_no_advance_iter(bio)) {
 		iter->bi_size -= bytes;
-	else
+	} else if (bio_flagged(bio, BIO_DMABUF_MAP)) {
+		bio_advance_iter_dmabuf_map(iter, bytes);
+	} else {
 		bvec_iter_advance(bio->bi_io_vec, iter, bytes);
 		/* TODO: It is reasonable to complete bio with error here. */
+	}
 }
 
 /* @bytes should be less or equal to bvec[i->bi_idx].bv_len */
@@ -129,6 +139,8 @@ static inline void bio_advance_iter_single(const struct bio *bio,
 
 	if (bio_no_advance_iter(bio))
 		iter->bi_size -= bytes;
+	else if (bio_flagged(bio, BIO_DMABUF_MAP))
+		bio_advance_iter_dmabuf_map(iter, bytes);
 	else
 		bvec_iter_advance_single(bio->bi_io_vec, iter, bytes);
 }
@@ -391,7 +403,7 @@ static inline void bio_wouldblock_error(struct bio *bio)
  */
 static inline int bio_iov_vecs_to_alloc(struct iov_iter *iter, int max_segs)
 {
-	if (iov_iter_is_bvec(iter))
+	if (iov_iter_is_bvec(iter) || iov_iter_is_dmabuf_map(iter))
 		return 0;
 	return iov_iter_npages(iter, max_segs);
 }
@@ -471,6 +483,7 @@ int bio_iov_iter_get_pages(struct bio *bio, struct iov_iter *iter,
 		unsigned len_align_mask);
 
 void bio_iov_bvec_set(struct bio *bio, const struct iov_iter *iter);
+void bio_dmabuf_map_set(struct bio *bio, struct iov_iter *iter);
 void __bio_release_pages(struct bio *bio, bool mark_dirty);
 extern void bio_set_pages_dirty(struct bio *bio);
 extern void bio_check_pages_dirty(struct bio *bio);
diff --git a/include/linux/blk_types.h b/include/linux/blk_types.h
index 8808ee76e73c..d5ad085b701d 100644
--- a/include/linux/blk_types.h
+++ b/include/linux/blk_types.h
@@ -233,7 +233,12 @@ struct bio {
 	atomic_t		__bi_remaining;
 
 	/* The actual vec list, preserved by bio_reset() */
-	struct bio_vec		*bi_io_vec;
+	union {
+		struct bio_vec		*bi_io_vec;
+		/* Driver specific dma map, present only with BIO_DMABUF_MAP */
+		struct io_dmabuf_map	*dmabuf_map;
+	};
+
 	struct bvec_iter	bi_iter;
 
 	union {
@@ -322,6 +327,7 @@ enum {
 	BIO_REMAPPED,
 	BIO_ZONE_WRITE_PLUGGING, /* bio handled through zone write plugging */
 	BIO_EMULATES_ZONE_APPEND, /* bio emulates a zone append operation */
+	BIO_DMABUF_MAP, /* Using premmaped dma buffers */
 	BIO_FLAG_LAST
 };
 
-- 
2.53.0

_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org
