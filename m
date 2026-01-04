Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id oOCwCs8K4WnoogAAu9opvQ
	(envelope-from <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>)
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 16 Apr 2026 18:14:07 +0200
X-Original-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [44.210.186.118])
	by mail.lfdr.de (Postfix) with ESMTPS id CCFC841177D
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 16 Apr 2026 18:14:06 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id DBB3B448E4
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 16 Apr 2026 16:14:05 +0000 (UTC)
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.129.124])
	by lists.linaro.org (Postfix) with ESMTPS id D0AC43F774
	for <linaro-mm-sig@lists.linaro.org>; Sun,  4 Jan 2026 02:11:01 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=redhat.com header.s=mimecast20190719 header.b=isGsiSUI;
	spf=pass (lists.linaro.org: domain of ming.lei@redhat.com designates 170.10.129.124 as permitted sender) smtp.mailfrom=ming.lei@redhat.com;
	dmarc=pass (policy=quarantine) header.from=redhat.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1767492661;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 in-reply-to:in-reply-to:references:references;
	bh=tbz55QAFngKi4vXyXWBDlHF0TrS8hK19/MLRgIcCIBc=;
	b=isGsiSUIIZ7/nFPXAKpYKHCxi4KG9eMYwlP8yBmTUEiZQbDVd/Y6iow31NjFCXR8CNvqa4
	1sj6nWrsDkU0bxbNS/lNJjI8ZLBs70baZBdgJWD+kMlsG1c1D8fuIrNH1NWgGmzm0qX3ce
	5YfxRdX5BK53ezTlYJRW0QLgFY8yCPA=
Received: from mx-prod-mc-06.mail-002.prod.us-west-2.aws.redhat.com
 (ec2-35-165-154-97.us-west-2.compute.amazonaws.com [35.165.154.97]) by
 relay.mimecast.com with ESMTP with STARTTLS (version=TLSv1.3,
 cipher=TLS_AES_256_GCM_SHA384) id us-mta-319-X6YxGNlRMfOWQGdJqXN29Q-1; Sat,
 03 Jan 2026 20:47:12 -0500
X-MC-Unique: X6YxGNlRMfOWQGdJqXN29Q-1
X-Mimecast-MFC-AGG-ID: X6YxGNlRMfOWQGdJqXN29Q_1767491230
Received: from mx-prod-int-01.mail-002.prod.us-west-2.aws.redhat.com (mx-prod-int-01.mail-002.prod.us-west-2.aws.redhat.com [10.30.177.4])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mx-prod-mc-06.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS id 7290E1800654;
	Sun,  4 Jan 2026 01:47:09 +0000 (UTC)
Received: from fedora (unknown [10.72.116.132])
	by mx-prod-int-01.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS id 5984B30001A2;
	Sun,  4 Jan 2026 01:46:57 +0000 (UTC)
Date: Sun, 4 Jan 2026 09:46:53 +0800
From: Ming Lei <ming.lei@redhat.com>
To: Pavel Begunkov <asml.silence@gmail.com>
Message-ID: <aVnGja6w4e_tgZjK@fedora>
References: <cover.1763725387.git.asml.silence@gmail.com>
 <b38f2c3af8c03ee4fc5f67f97b4412ecd8588924.1763725388.git.asml.silence@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <b38f2c3af8c03ee4fc5f67f97b4412ecd8588924.1763725388.git.asml.silence@gmail.com>
X-Scanned-By: MIMEDefang 3.4.1 on 10.30.177.4
X-Spamd-Bar: ---
X-MailFrom: ming.lei@redhat.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
Message-ID-Hash: HQXUUIWCAAEF3HPYYLAYBHQVUTI5EZUJ
X-Message-ID-Hash: HQXUUIWCAAEF3HPYYLAYBHQVUTI5EZUJ
X-Mailman-Approved-At: Thu, 16 Apr 2026 16:05:11 +0000
CC: linux-block@vger.kernel.org, io-uring@vger.kernel.org, Vishal Verma <vishal1.verma@intel.com>, tushar.gohad@intel.com, Keith Busch <kbusch@kernel.org>, Jens Axboe <axboe@kernel.dk>, Christoph Hellwig <hch@lst.de>, Sagi Grimberg <sagi@grimberg.me>, Alexander Viro <viro@zeniv.linux.org.uk>, Christian Brauner <brauner@kernel.org>, Andrew Morton <akpm@linux-foundation.org>, Sumit Semwal <sumit.semwal@linaro.org>, Christian =?iso-8859-1?Q?K=F6nig?= <christian.koenig@amd.com>, linux-kernel@vger.kernel.org, linux-nvme@lists.infradead.org, linux-fsdevel@vger.kernel.org, linux-media@vger.kernel.org, dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org, David Wei <dw@davidwei.uk>
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [RFC v2 10/11] io_uring/rsrc: add dmabuf-backed buffer registeration
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/HQXUUIWCAAEF3HPYYLAYBHQVUTI5EZUJ/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
X-Spamd-Result: default: False [4.99 / 15.00];
	DMARC_POLICY_QUARANTINE(1.50)[redhat.com : SPF not aligned (relaxed),quarantine];
	SUSPICIOUS_RECIPS(1.50)[];
	DATE_IN_PAST(1.00)[2462];
	R_DKIM_REJECT(1.00)[redhat.com:s=mimecast20190719];
	MID_RHS_NOT_FQDN(0.50)[];
	R_SPF_ALLOW(-0.20)[+mx:c];
	MAILLIST(-0.20)[mailman];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[lists,linaro-mm-sig=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FREEMAIL_TO(0.00)[gmail.com];
	ARC_NA(0.00)[];
	GREYLIST(0.00)[pass,meta];
	RCPT_COUNT_TWELVE(0.00)[21];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	FROM_NEQ_ENVFROM(0.00)[ming.lei@redhat.com,linaro-mm-sig-bounces@lists.linaro.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[redhat.com:-];
	NEURAL_HAM(-0.00)[-0.342];
	ASN(0.00)[asn:14618, ipnet:44.192.0.0/11, country:US];
	TAGGED_RCPT(0.00)[linaro-mm-sig];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[lists.linaro.org:helo,lists.linaro.org:rdns,intel.com:email,linaro.org:email,davidwei.uk:email]
X-Rspamd-Queue-Id: CCFC841177D
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

On Sun, Nov 23, 2025 at 10:51:30PM +0000, Pavel Begunkov wrote:
> Add an ability to register a dmabuf backed io_uring buffer. It also
> needs know which device to use for attachment, for that it takes
> target_fd and extracts the device through the new file op. Unlike normal
> buffers, it also retains the target file so that any imports from
> ineligible requests can be rejected in next patches.
> 
> Suggested-by: Vishal Verma <vishal1.verma@intel.com>
> Suggested-by: David Wei <dw@davidwei.uk>
> Signed-off-by: Pavel Begunkov <asml.silence@gmail.com>
> ---
>  io_uring/rsrc.c | 106 +++++++++++++++++++++++++++++++++++++++++++++++-
>  io_uring/rsrc.h |   1 +
>  2 files changed, 106 insertions(+), 1 deletion(-)
> 
> diff --git a/io_uring/rsrc.c b/io_uring/rsrc.c
> index 691f9645d04c..7dfebf459dd0 100644
> --- a/io_uring/rsrc.c
> +++ b/io_uring/rsrc.c
> @@ -10,6 +10,8 @@
>  #include <linux/compat.h>
>  #include <linux/io_uring.h>
>  #include <linux/io_uring/cmd.h>
> +#include <linux/dma-buf.h>
> +#include <linux/dma_token.h>
>  
>  #include <uapi/linux/io_uring.h>
>  
> @@ -802,6 +804,106 @@ bool io_check_coalesce_buffer(struct page **page_array, int nr_pages,
>  	return true;
>  }
>  
> +struct io_regbuf_dma {
> +	struct dma_token		*token;
> +	struct file			*target_file;
> +	struct dma_buf			*dmabuf;
> +};
> +
> +static void io_release_reg_dmabuf(void *priv)
> +{
> +	struct io_regbuf_dma *db = priv;
> +
> +	dma_token_release(db->token);
> +	dma_buf_put(db->dmabuf);
> +	fput(db->target_file);
> +	kfree(db);
> +}
> +
> +static struct io_rsrc_node *io_register_dmabuf(struct io_ring_ctx *ctx,
> +						struct io_uring_reg_buffer *rb,
> +						struct iovec *iov)
> +{
> +	struct dma_token_params params = {};
> +	struct io_rsrc_node *node = NULL;
> +	struct io_mapped_ubuf *imu = NULL;
> +	struct io_regbuf_dma *regbuf = NULL;
> +	struct file *target_file = NULL;
> +	struct dma_buf *dmabuf = NULL;
> +	struct dma_token *token;
> +	int ret;
> +
> +	if (iov->iov_base || iov->iov_len)
> +		return ERR_PTR(-EFAULT);
> +
> +	node = io_rsrc_node_alloc(ctx, IORING_RSRC_BUFFER);
> +	if (!node) {
> +		ret = -ENOMEM;
> +		goto err;
> +	}
> +
> +	imu = io_alloc_imu(ctx, 0);
> +	if (!imu) {
> +		ret = -ENOMEM;
> +		goto err;
> +	}
> +
> +	regbuf = kzalloc(sizeof(*regbuf), GFP_KERNEL);
> +	if (!regbuf) {
> +		ret = -ENOMEM;
> +		goto err;
> +	}
> +
> +	target_file = fget(rb->target_fd);
> +	if (!target_file) {
> +		ret = -EBADF;
> +		goto err;
> +	}
> +
> +	dmabuf = dma_buf_get(rb->dmabuf_fd);
> +	if (IS_ERR(dmabuf)) {
> +		ret = PTR_ERR(dmabuf);
> +		dmabuf = NULL;
> +		goto err;
> +	}
> +
> +	params.dmabuf = dmabuf;
> +	params.dir = DMA_BIDIRECTIONAL;
> +	token = dma_token_create(target_file, &params);
> +	if (IS_ERR(token)) {
> +		ret = PTR_ERR(token);
> +		goto err;
> +	}
> +

This way looks less flexible, for example, the same dma-buf may be used
on IOs to multiple disks, then it needs to be registered for each target
file.



Thanks,
Ming

_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org
