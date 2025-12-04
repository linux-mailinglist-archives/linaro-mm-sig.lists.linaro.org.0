Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 771D1CA342E
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 04 Dec 2025 11:43:00 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 4CE203F690
	for <lists+linaro-mm-sig@lfdr.de>; Thu,  4 Dec 2025 10:42:59 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	by lists.linaro.org (Postfix) with ESMTPS id 05FB33F83F
	for <linaro-mm-sig@lists.linaro.org>; Thu,  4 Dec 2025 10:42:42 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=infradead.org header.s=bombadil.20210309 header.b=noxH6+8O;
	spf=none (lists.linaro.org: domain of BATV+f6f5b2169625426b73eb+8138+infradead.org+hch@bombadil.srs.infradead.org has no SPF policy when checking 198.137.202.133) smtp.mailfrom=BATV+f6f5b2169625426b73eb+8138+infradead.org+hch@bombadil.srs.infradead.org;
	dmarc=pass (policy=none) header.from=infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=bombadil.20210309; h=In-Reply-To:Content-Type:MIME-Version
	:References:Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description;
	bh=mYIPCZ9n2K8+l0Gix4a6otBKT7xg4fSdpmU162wQnJQ=; b=noxH6+8Od8sMzmzZRt5gUssBuP
	GOmRIOq3Vz9f3o9mJfOjdsj5HEh52s/Y1/M8eh/Zks06QpLfEGmxbQJ22mK/bNnPVDE4mD51iXsuV
	pwKj+fW9AYwmpuWFCD2Wp1d/OjkAvxLGUCU152XKOI2imx8GHsBjuUX5KDNn5rEXAMdFsneRgwxn+
	dpHNojBUcJ4Ls45KjBL12q+jkihtWZFg8Cp79yX87Gekt4KzaQPzco7oAnOxAg5HW7wPdfd4gY666
	I+7+YhnCA/2ijaKoskULXk0V45aToHmyXggBIDPd9ua32Kw7Jcoci0bMptHXlcqXzoCJs2qysJ2wo
	chCfON3Q==;
Received: from hch by bombadil.infradead.org with local (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vR6n9-00000007r23-1Ff2;
	Thu, 04 Dec 2025 10:42:31 +0000
Date: Thu, 4 Dec 2025 02:42:31 -0800
From: Christoph Hellwig <hch@infradead.org>
To: Pavel Begunkov <asml.silence@gmail.com>
Message-ID: <aTFllxgsNCzGdzKB@infradead.org>
References: <cover.1763725387.git.asml.silence@gmail.com>
 <74d689540fa200fe37f1a930165357a92fe9e68c.1763725387.git.asml.silence@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <74d689540fa200fe37f1a930165357a92fe9e68c.1763725387.git.asml.silence@gmail.com>
X-SRS-Rewrite: SMTP reverse-path rewritten from <hch@infradead.org> by bombadil.infradead.org. See http://www.infradead.org/rpr.html
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-3.30 / 15.00];
	BAYES_HAM(-3.00)[99.99%];
	DMARC_POLICY_ALLOW(-0.50)[infradead.org,none];
	FORGED_SENDER(0.30)[hch@infradead.org,BATV+f6f5b2169625426b73eb+8138+infradead.org+hch@bombadil.srs.infradead.org];
	R_DKIM_ALLOW(-0.20)[infradead.org:s=bombadil.20210309];
	ONCE_RECEIVED(0.20)[];
	MIME_GOOD(-0.10)[text/plain];
	R_SPF_NA(0.00)[no SPF record];
	MISSING_XM_UA(0.00)[];
	RCVD_COUNT_ONE(0.00)[1];
	BLOCKLISTDE_FAIL(0.00)[198.137.202.133:server fail];
	RCPT_COUNT_TWELVE(0.00)[20];
	MIME_TRACE(0.00)[0:+];
	FREEMAIL_TO(0.00)[gmail.com];
	NEURAL_HAM(-0.00)[-1.000];
	TO_DN_SOME(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[hch@infradead.org,BATV+f6f5b2169625426b73eb+8138+infradead.org+hch@bombadil.srs.infradead.org];
	FROM_HAS_DN(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	URIBL_BLOCKED(0.00)[bombadil.infradead.org:rdns,bombadil.infradead.org:helo];
	RCVD_TLS_LAST(0.00)[];
	ARC_NA(0.00)[];
	DKIM_TRACE(0.00)[infradead.org:+]
X-Rspamd-Server: lists.linaro.org
X-Rspamd-Queue-Id: 05FB33F83F
X-Spamd-Bar: ---
Message-ID-Hash: KO5TOBX7WR4Q7QRKT5UROY6WTFEAGWDG
X-Message-ID-Hash: KO5TOBX7WR4Q7QRKT5UROY6WTFEAGWDG
X-MailFrom: BATV+f6f5b2169625426b73eb+8138+infradead.org+hch@bombadil.srs.infradead.org
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: linux-block@vger.kernel.org, io-uring@vger.kernel.org, Vishal Verma <vishal1.verma@intel.com>, tushar.gohad@intel.com, Keith Busch <kbusch@kernel.org>, Jens Axboe <axboe@kernel.dk>, Christoph Hellwig <hch@lst.de>, Sagi Grimberg <sagi@grimberg.me>, Alexander Viro <viro@zeniv.linux.org.uk>, Christian Brauner <brauner@kernel.org>, Andrew Morton <akpm@linux-foundation.org>, Sumit Semwal <sumit.semwal@linaro.org>, Christian =?iso-8859-1?Q?K=F6nig?= <christian.koenig@amd.com>, linux-kernel@vger.kernel.org, linux-nvme@lists.infradead.org, linux-fsdevel@vger.kernel.org, linux-media@vger.kernel.org, dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [RFC v2 01/11] file: add callback for pre-mapping dmabuf
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/KO5TOBX7WR4Q7QRKT5UROY6WTFEAGWDG/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

On Sun, Nov 23, 2025 at 10:51:21PM +0000, Pavel Begunkov wrote:
> +static inline struct dma_token *
> +dma_token_create(struct file *file, struct dma_token_params *params)
> +{
> +	struct dma_token *res;
> +
> +	if (!file->f_op->dma_map)
> +		return ERR_PTR(-EOPNOTSUPP);
> +	res = file->f_op->dma_map(file, params);

Calling the file operation ->dmap_map feels really misleading.

create_token as in the function name is already much better, but
it really is not just dma, but dmabuf related, and that should really
be encoded in the name.

Also why not pass the dmabuf and direction directly instead of wrapping
it in the odd params struct making the whole thing hard to follow?
_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org
