Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id E4A4FACC749
	for <lists+linaro-mm-sig@lfdr.de>; Tue,  3 Jun 2025 15:04:40 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 053A24575B
	for <lists+linaro-mm-sig@lfdr.de>; Tue,  3 Jun 2025 13:04:40 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	by lists.linaro.org (Postfix) with ESMTPS id 83607443E7
	for <linaro-mm-sig@lists.linaro.org>; Tue,  3 Jun 2025 13:04:29 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=infradead.org header.s=bombadil.20210309 header.b=Z32h8USJ;
	spf=none (lists.linaro.org: domain of BATV+175a1930472064472083+7954+infradead.org+hch@bombadil.srs.infradead.org has no SPF policy when checking 198.137.202.133) smtp.mailfrom=BATV+175a1930472064472083+7954+infradead.org+hch@bombadil.srs.infradead.org;
	dmarc=none
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=bombadil.20210309; h=In-Reply-To:Content-Type:MIME-Version
	:References:Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description;
	bh=D9uwUqknLusDgbp0HRUYDNcdU0WC/Bc+jDReHlPJQc8=; b=Z32h8USJkXlLg0CzemLyp4Dye/
	TtgKgAOXUjrqt+T++4R1iz9ez3e6cFStt6mEWlFuA+g0hgYL5NYhocctT3VSG3VET+U98CtqWxSkB
	i/b2Zxt24tLvhL7Ln2xSKveG0lF1p+Ni/TSQ2GDoSQylbsUHKd+sd+NMN0rABOHYn06TYB6ugDf2n
	3dUSZfqqSYZG0hGYatjGoyvlhW4VyArjWi2Nm8mDx62ir8FN8k2TjCo9FUWAgeRZGMRiuMFbqpIgE
	TNv010SvGK7DCV8EzcXfcg86R8jnrSbvHabK1HLPv7coX733r0lqEg34KPdFSHdCsEDsIvI16X2AT
	/93VCYzA==;
Received: from hch by bombadil.infradead.org with local (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uMRJU-0000000AzFD-1LA9;
	Tue, 03 Jun 2025 13:04:20 +0000
Date: Tue, 3 Jun 2025 06:04:20 -0700
From: Christoph Hellwig <hch@infradead.org>
To: wangtao <tao.wangtao@honor.com>
Message-ID: <aD7y1PgUyd-xkS1u@infradead.org>
References: <20250603095245.17478-1-tao.wangtao@honor.com>
 <20250603095245.17478-3-tao.wangtao@honor.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20250603095245.17478-3-tao.wangtao@honor.com>
X-SRS-Rewrite: SMTP reverse-path rewritten from <hch@infradead.org> by bombadil.infradead.org. See http://www.infradead.org/rpr.html
X-Rspamd-Action: no action
X-Rspamd-Server: lists.linaro.org
X-Spamd-Result: default: False [-3.50 / 15.00];
	BAYES_HAM(-3.00)[99.99%];
	RCVD_DKIM_ARC_DNSWL_MED(-0.50)[];
	FORGED_SENDER(0.30)[hch@infradead.org,BATV@bombadil.srs.infradead.org];
	ONCE_RECEIVED(0.20)[];
	R_DKIM_ALLOW(-0.20)[infradead.org:s=bombadil.20210309];
	RCVD_IN_DNSWL_MED(-0.20)[198.137.202.133:from];
	MIME_GOOD(-0.10)[text/plain];
	MIME_TRACE(0.00)[0:+];
	NEURAL_HAM(-0.00)[-1.000];
	MISSING_XM_UA(0.00)[];
	TO_DN_SOME(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[26];
	RCVD_COUNT_ONE(0.00)[1];
	ASN(0.00)[asn:7247, ipnet:198.137.202.0/24, country:US];
	R_SPF_NA(0.00)[no SPF record];
	DMARC_NA(0.00)[infradead.org];
	FROM_NEQ_ENVFROM(0.00)[hch@infradead.org,BATV@bombadil.srs.infradead.org];
	FROM_HAS_DN(0.00)[];
	FREEMAIL_CC(0.00)[linaro.org,amd.com,redhat.com,intel.com,zeniv.linux.org.uk,kernel.org,google.com,linux-foundation.org,gmail.com,collabora.com,arm.com,suse.cz,linux.alibaba.com,vger.kernel.org,lists.freedesktop.org,lists.linaro.org,kvack.org,honor.com];
	MID_RHS_MATCH_FROM(0.00)[];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[175a1930472064472083,7954,infradead.org,hch];
	ARC_NA(0.00)[];
	DKIM_TRACE(0.00)[infradead.org:+]
X-Rspamd-Queue-Id: 83607443E7
X-Spamd-Bar: ---
Message-ID-Hash: WQRAUEMY5IXXAETFBPALDHA4RHWHMLF4
X-Message-ID-Hash: WQRAUEMY5IXXAETFBPALDHA4RHWHMLF4
X-MailFrom: BATV+175a1930472064472083+7954+infradead.org+hch@bombadil.srs.infradead.org
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: sumit.semwal@linaro.org, christian.koenig@amd.com, kraxel@redhat.com, vivek.kasireddy@intel.com, viro@zeniv.linux.org.uk, brauner@kernel.org, hughd@google.com, akpm@linux-foundation.org, amir73il@gmail.com, benjamin.gaignard@collabora.com, Brian.Starkey@arm.com, jstultz@google.com, tjmercier@google.com, jack@suse.cz, baolin.wang@linux.alibaba.com, linux-media@vger.kernel.org, dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org, linux-kernel@vger.kernel.org, linux-fsdevel@vger.kernel.org, linux-mm@kvack.org, bintian.wang@honor.com, yipengxiang@honor.com, liulu.liu@honor.com, feng.han@honor.com
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH v4 2/4] dmabuf: Implement copy_file_range callback for dmabuf direct I/O prep
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/WQRAUEMY5IXXAETFBPALDHA4RHWHMLF4/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

On Tue, Jun 03, 2025 at 05:52:43PM +0800, wangtao wrote:
> +static ssize_t dma_buf_rw_file(struct dma_buf *dmabuf, loff_t my_pos,
> +	struct file *file, loff_t pos, size_t count, bool is_write)
> +{
> +	if (!dmabuf->ops->rw_file)
> +		return -EINVAL;
> +
> +	if (my_pos >= dmabuf->size)
> +		count = 0;
> +	else
> +		count = min_t(size_t, count, dmabuf->size - my_pos);
> +	if (!count)
> +		return 0;
> +
> +	return dmabuf->ops->rw_file(dmabuf, my_pos, file, pos, count, is_write);

So despite claiming in the cover letter that dmabufs can't support
direct I/O you are just reimplementing it badly here using a side
interface.

_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org
