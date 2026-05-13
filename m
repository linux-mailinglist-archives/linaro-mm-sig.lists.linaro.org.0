Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id YDwRAh80BGqDFgIAu9opvQ
	(envelope-from <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>)
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 13 May 2026 10:19:43 +0200
X-Original-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [44.210.186.118])
	by mail.lfdr.de (Postfix) with ESMTPS id 8EB4D52F7C5
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 13 May 2026 10:19:41 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 084A6401F8
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 13 May 2026 08:19:41 +0000 (UTC)
Received: from verein.lst.de (verein.lst.de [213.95.11.211])
	by lists.linaro.org (Postfix) with ESMTPS id 9F8503F690
	for <linaro-mm-sig@lists.linaro.org>; Wed, 13 May 2026 08:19:33 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=none;
	spf=pass (lists.linaro.org: domain of hch@lst.de designates 213.95.11.211 as permitted sender) smtp.mailfrom=hch@lst.de;
	dmarc=pass (policy=none) header.from=lst.de
Received: by verein.lst.de (Postfix, from userid 2407)
	id 25C4268C4E; Wed, 13 May 2026 10:19:30 +0200 (CEST)
Date: Wed, 13 May 2026 10:19:29 +0200
From: Christoph Hellwig <hch@lst.de>
To: Pavel Begunkov <asml.silence@gmail.com>
Message-ID: <20260513081929.GD5477@lst.de>
References: <cover.1777475843.git.asml.silence@gmail.com> <646ecd6fde8d9e146cb051efb514deb27ce3883e.1777475843.git.asml.silence@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <646ecd6fde8d9e146cb051efb514deb27ce3883e.1777475843.git.asml.silence@gmail.com>
User-Agent: Mutt/1.5.17 (2007-11-01)
X-Spamd-Bar: ---
Message-ID-Hash: WO6KGPQTLDU636RDMWTHYNRJ6IURUCMX
X-Message-ID-Hash: WO6KGPQTLDU636RDMWTHYNRJ6IURUCMX
X-MailFrom: hch@lst.de
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: Jens Axboe <axboe@kernel.dk>, Keith Busch <kbusch@kernel.org>, Christoph Hellwig <hch@lst.de>, Sagi Grimberg <sagi@grimberg.me>, Alexander Viro <viro@zeniv.linux.org.uk>, Christian Brauner <brauner@kernel.org>, Andrew Morton <akpm@linux-foundation.org>, Sumit Semwal <sumit.semwal@linaro.org>, Christian =?iso-8859-1?Q?K=F6nig?= <christian.koenig@amd.com>, linux-block@vger.kernel.org, linux-kernel@vger.kernel.org, linux-nvme@lists.infradead.org, linux-fsdevel@vger.kernel.org, io-uring@vger.kernel.org, linux-media@vger.kernel.org, dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org, Nitesh Shetty <nj.shetty@samsung.com>, Kanchan Joshi <joshi.k@samsung.com>, Anuj Gupta <anuj20.g@samsung.com>, Tushar Gohad <tushar.gohad@intel.com>, William Power <william.power@intel.com>, Phil Cayton <phil.cayton@intel.com>, Jason Gunthorpe <jgg@nvidia.com>
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH v3 04/10] block: introduce dma map backed bio type
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/WO6KGPQTLDU636RDMWTHYNRJ6IURUCMX/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
X-Rspamd-Queue-Id: 8EB4D52F7C5
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [1.09 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	R_SPF_ALLOW(-0.20)[+mx];
	MAILLIST(-0.20)[mailman];
	MIME_GOOD(-0.10)[text/plain];
	DMARC_POLICY_SOFTFAIL(0.10)[lst.de : SPF not aligned (relaxed), No valid DKIM,none];
	HAS_LIST_UNSUB(-0.01)[];
	FROM_HAS_DN(0.00)[];
	RCVD_COUNT_THREE(0.00)[3];
	FREEMAIL_TO(0.00)[gmail.com];
	FORGED_SENDER_MAILLIST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	ARC_NA(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[25];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	NEURAL_HAM(-0.00)[-0.999];
	FROM_NEQ_ENVFROM(0.00)[hch@lst.de,linaro-mm-sig-bounces@lists.linaro.org];
	TAGGED_FROM(0.00)[lists,linaro-mm-sig=lfdr.de];
	R_DKIM_NA(0.00)[];
	TAGGED_RCPT(0.00)[linaro-mm-sig];
	MID_RHS_MATCH_FROM(0.00)[];
	ASN(0.00)[asn:14618, ipnet:44.192.0.0/11, country:US];
	DBL_BLOCKED_OPENRESOLVER(0.00)[lists.linaro.org:helo,lists.linaro.org:rdns,lst.de:mid,linaro.org:email]
X-Rspamd-Action: no action

> +	if (!bio_flagged(bio_src, BIO_DMABUF_MAP)) {
> +		bio->bi_io_vec = bio_src->bi_io_vec;
> +	} else {
> +		bio->dmabuf_map = bio_src->dmabuf_map;
> +		bio_set_flag(bio, BIO_DMABUF_MAP);
> +	}

This is backwards, please avoid pointless negations:

	if (bio_flagged(bio_src, BIO_DMABUF_MAP)) {
		bio->dmabuf_map = bio_src->dmabuf_map;
		bio_set_flag(bio, BIO_DMABUF_MAP);
	} else {
		bio->bi_io_vec = bio_src->bi_io_vec;
	}

> +	if (bio_flagged(bio, BIO_DMABUF_MAP)) {
> +		nsegs = 1;
> +
> +		if ((bio->bi_iter.bi_bvec_done & lim->dma_alignment) ||
> +		    (bio->bi_iter.bi_size & len_align_mask))
> +			return -EINVAL;
> +		if (bio->bi_iter.bi_size > max_bytes) {
> +			bytes = max_bytes;
> +			goto split;
> +		}

Please add a comment explaining why nsegs is always 1 here.

> @@ -424,7 +424,8 @@ static inline struct bio *__bio_split_to_limits(struct bio *bio,
>  	switch (bio_op(bio)) {
>  	case REQ_OP_READ:
>  	case REQ_OP_WRITE:
> -		if (bio_may_need_split(bio, lim))
> +		if (bio_may_need_split(bio, lim) ||
> +		    bio_flagged(bio, BIO_DMABUF_MAP))
>  			return bio_split_rw(bio, lim, nr_segs);

The BIO_DMABUF_MAP check should go into bio_may_need_split.

> +static inline void bio_advance_iter_dmabuf_map(struct bvec_iter *iter,
> +					       unsigned int bytes)
> +{
> +	iter->bi_bvec_done += bytes;
> +	iter->bi_size -= bytes;
> +}
> +
>  static inline void bio_advance_iter(const struct bio *bio,
>  				    struct bvec_iter *iter, unsigned int bytes)
>  {
>  	iter->bi_sector += bytes >> 9;
>  
> -	if (bio_no_advance_iter(bio))
> +	if (bio_no_advance_iter(bio)) {
>  		iter->bi_size -= bytes;
> -	else
> +	} else if (bio_flagged(bio, BIO_DMABUF_MAP)) {
> +		bio_advance_iter_dmabuf_map(iter, bytes);

This is a bit of a mess.  You're using bi_bvec_done for something that
is not bvec_done, which makes the naming very confusing.  That is even
more confusing than the existing usage, which isn't great.  Also we
add yet another conditional to heavily inlined code.  I'd suggest
the following:

 - add a prep patch to rename bi_bvec_done to bi_offset, as even for
   the existing usage it is the offset into the current bio_vec as
   much as it is the count of byes done, as those must be the same
   and it is used both ways
 - add a prep patch to also increase bi_offset for bio_no_advance_iter.
   It is not actually use there, but incrementing it is harmless and
   this will avoid a new special case
 - please also documet this new usage in the commet in struct bvec_iter.
 - then just add the dma buf mapping to the bio_no_advance_iter condition
 - figure out what to do about dm_bio_rewind_iter, which pokes into these
   things that really should be block layer internal

>  }
> @@ -391,7 +403,7 @@ static inline void bio_wouldblock_error(struct bio *bio)
>   */
>  static inline int bio_iov_vecs_to_alloc(struct iov_iter *iter, int max_segs)
>  {
> -	if (iov_iter_is_bvec(iter))
> +	if (iov_iter_is_bvec(iter) || iov_iter_is_dmabuf_map(iter))
>  		return 0;
>  	return iov_iter_npages(iter, max_segs);
>  }

Please update the comment for this helper.

> @@ -322,6 +327,7 @@ enum {
>  	BIO_REMAPPED,
>  	BIO_ZONE_WRITE_PLUGGING, /* bio handled through zone write plugging */
>  	BIO_EMULATES_ZONE_APPEND, /* bio emulates a zone append operation */
> +	BIO_DMABUF_MAP, /* Using premmaped dma buffers */

Shouldn't this be a REQ_ flag as we should never mix and match bios with
and without this flag in a single request?

_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org
