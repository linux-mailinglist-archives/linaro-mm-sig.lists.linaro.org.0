Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id WJQjHRZdBGqiHQIAu9opvQ
	(envelope-from <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>)
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 13 May 2026 13:14:30 +0200
X-Original-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [44.210.186.118])
	by mail.lfdr.de (Postfix) with ESMTPS id 18D7D532015
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 13 May 2026 13:14:30 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 2D32340431
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 13 May 2026 11:14:29 +0000 (UTC)
Received: from mail-wr1-f46.google.com (mail-wr1-f46.google.com [209.85.221.46])
	by lists.linaro.org (Postfix) with ESMTPS id 0D0EF401DB
	for <linaro-mm-sig@lists.linaro.org>; Wed, 29 Apr 2026 15:26:34 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=gmail.com header.s=20251104 header.b="W3B6zNv/";
	dmarc=pass (policy=none) header.from=gmail.com;
	spf=pass (lists.linaro.org: domain of asml.silence@gmail.com designates 209.85.221.46 as permitted sender) smtp.mailfrom=asml.silence@gmail.com
Received: by mail-wr1-f46.google.com with SMTP id ffacd0b85a97d-43d76dd4ee8so11153893f8f.2
        for <linaro-mm-sig@lists.linaro.org>; Wed, 29 Apr 2026 08:26:34 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1777476393; x=1778081193; darn=lists.linaro.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=nOTrV0WGracSIFm0V666o5CRu83OUP8NlZEfiWwVSJE=;
        b=W3B6zNv/l4jTcqwsLpGxj2aIWlC/wiPNVjVF0SWncLsSDT3KRgOA5/IhvnmkGZv68Y
         +0p0tdgMc9gHtrUMhHa7wb5s+mzfPWtMUyOLORrmgM4ktaKh/ZMqmhZtiGqdjB9NSysD
         x86cSVuPqX4aZQT1Fjjqgh17t341YJnLOm/g7Q0+FCAy8DAB04BaYMmYLdkyUqVzur70
         mdUG1mzlF37fL6g0jfg8xbChPbFHCX49fyr6QuTGknEIfWsHZGfY9fB7F2QdZk4ydWM3
         89Nz5AmAIVcP5pC3taU2q5kKTiUxMde2ycX5nT2JGGyGXr2jeXUDH7+98CcwDu56mz90
         00Mg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1777476393; x=1778081193;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=nOTrV0WGracSIFm0V666o5CRu83OUP8NlZEfiWwVSJE=;
        b=nxuyW4nD/wxAxWbX1tEHnkCah45vWcZ/SMhGK2LDw5hpU3cp4U3kX0Z4K8yCYbj46h
         2/Q3HzYXHT65hpoS56UXi4aGoklkbVJKftHAcpoRPCKBmB7ZoltM0ZTVOq3eS18iGy6s
         p9SxBHww5dvjPzn9+siBCwakZzBSPLe2opxHVwqsAXS9FssBCQ4UGXfDe9ERdGntKWHc
         nMqLIHMApMQjE4ZEvrsoPOWTCXN6CyjlOXs6H94dwGjhUPBy1/f3JgaSt/Tw/f1xB3XL
         lV3i/vTTmtAUu8jSZx0MjVO0wDjazGUfl45tNJQ/JuEhBCn1ZPN8VuWIbCJwN0M2cPmG
         Pv0Q==
X-Forwarded-Encrypted: i=1; AFNElJ87+02zCb9xpuTjjXZH/UUP7SQNfR0qsmsH5+PjKO0GPWV35JGtXac2gBWs88x0uZIE/DUY/7LrG3l1PmY9@lists.linaro.org
X-Gm-Message-State: AOJu0YySNEamppOgd9kTQ8QgZdxMgrgolqm0o4dYB5s/Bl8Oy1ewX5Rt
	J0nPC3pOxh9dQXTRSU5XGlHamIGti9My2gtAzZVOpnxf+pJ+S0HIn+JR
X-Gm-Gg: AeBDiesZ7PWurxabBaKAk4oDQP8cVzHLrudPdu6UL3jipC6cUqrAD3ujvxJzBwY+a1+
	m6tZIeCStxv7lStR6YodDqZKc8LTO7D5yF0ULExWjtrvX51N431g3Daz13HVRY+rbRWB7j5C37d
	ScRMKWMoEzmUBbsZCW3R2VbWf62TZk5Ms+kCrUA7Vpsz+X2GB5KwlK6jnZRacqB0fwNKCf3D7Dv
	6OP1mzmr0SYSl0nPHIeAulN+CgdFMAsGH7NIXwJqjJ5lR4a7GOLM5e5Le1u4dn7oD5PUgbkPHXP
	MIgMPx9ulgXpqojigj8Ve7xpdehcmbpJSqvBBfRVIKkmkJTv3QG29P35e0gIyivRVXp/z0xLTtm
	1PvTdmrBacIgIYjXi1jJk7qDqLX3aF9OLCOP2Uy9vFvfNBHzMp7biNHF91U8FVjq4d2osx2Y1S7
	K38VTwILhajn6sWGQCMV2Vkbz97V8W4aSi97Pryy7FqlJfAXOjrQ74L0UV1alilH7HOo2P6Ux9Z
	XE5h8xO9d4rejp4pO2J0d3gfHhiNv2pSnYp3XrLIb/g
X-Received: by 2002:a05:6000:250f:b0:43f:e41d:85f2 with SMTP id ffacd0b85a97d-4464839c9bcmr15101656f8f.2.1777476392719;
        Wed, 29 Apr 2026 08:26:32 -0700 (PDT)
Received: from 127.0.0.1localhost ([82.132.184.31])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-447b76e5c22sm6382951f8f.28.2026.04.29.08.26.28
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 29 Apr 2026 08:26:32 -0700 (PDT)
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
Date: Wed, 29 Apr 2026 16:25:49 +0100
Message-ID: <43a91f54d61d3329316e40c69ace781b4d35fe0b.1777475843.git.asml.silence@gmail.com>
X-Mailer: git-send-email 2.53.0
In-Reply-To: <cover.1777475843.git.asml.silence@gmail.com>
References: <cover.1777475843.git.asml.silence@gmail.com>
MIME-Version: 1.0
X-Spamd-Bar: --
X-MailFrom: asml.silence@gmail.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
Message-ID-Hash: QY227RWI4FWGBUWHK2KPBP4CQQU5XYZC
X-Message-ID-Hash: QY227RWI4FWGBUWHK2KPBP4CQQU5XYZC
X-Mailman-Approved-At: Wed, 13 May 2026 11:13:55 +0000
CC: asml.silence@gmail.com, Nitesh Shetty <nj.shetty@samsung.com>, Kanchan Joshi <joshi.k@samsung.com>, Anuj Gupta <anuj20.g@samsung.com>, Tushar Gohad <tushar.gohad@intel.com>, William Power <william.power@intel.com>, Phil Cayton <phil.cayton@intel.com>, Jason Gunthorpe <jgg@nvidia.com>
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] [PATCH v3 03/10] block: move bvec init into __bio_clone
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/QY227RWI4FWGBUWHK2KPBP4CQQU5XYZC/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
X-Rspamd-Queue-Id: 18D7D532015
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
	NEURAL_SPAM(0.00)[0.889];
	DBL_BLOCKED_OPENRESOLVER(0.00)[linaro.org:email,lists.linaro.org:helo,lists.linaro.org:rdns]
X-Rspamd-Action: no action

To quote Cristoph: "Historically __bio_clone itself does not clone the
payload, just the bio. But we got rid of the callers that want to clone
a bio but not the payload long time ago". So let's move ->bi_io_vec
assignment into __bio_clone(), so we have a single point where it's set.

Suggested-by: Christoph Hellwig <hch@lst.de>
Signed-off-by: Pavel Begunkov <asml.silence@gmail.com>
---
 block/bio.c | 5 ++---
 1 file changed, 2 insertions(+), 3 deletions(-)

diff --git a/block/bio.c b/block/bio.c
index 4d46af0cd256..0734b50d4992 100644
--- a/block/bio.c
+++ b/block/bio.c
@@ -851,6 +851,7 @@ static int __bio_clone(struct bio *bio, struct bio *bio_src, gfp_t gfp)
 	bio->bi_write_hint = bio_src->bi_write_hint;
 	bio->bi_write_stream = bio_src->bi_write_stream;
 	bio->bi_iter = bio_src->bi_iter;
+	bio->bi_io_vec = bio_src->bi_io_vec;
 
 	if (bio->bi_bdev) {
 		if (bio->bi_bdev == bio_src->bi_bdev &&
@@ -893,8 +894,6 @@ struct bio *bio_alloc_clone(struct block_device *bdev, struct bio *bio_src,
 		bio_put(bio);
 		return NULL;
 	}
-	bio->bi_io_vec = bio_src->bi_io_vec;
-
 	return bio;
 }
 EXPORT_SYMBOL(bio_alloc_clone);
@@ -914,7 +913,7 @@ int bio_init_clone(struct block_device *bdev, struct bio *bio,
 {
 	int ret;
 
-	bio_init(bio, bdev, bio_src->bi_io_vec, 0, bio_src->bi_opf);
+	bio_init(bio, bdev, NULL, 0, bio_src->bi_opf);
 	ret = __bio_clone(bio, bio_src, gfp);
 	if (ret)
 		bio_uninit(bio);
-- 
2.53.0

_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org
