Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 76EF3AD395B
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 10 Jun 2025 15:35:01 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 8E1854477C
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 10 Jun 2025 13:35:00 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	by lists.linaro.org (Postfix) with ESMTPS id E564F44486
	for <linaro-mm-sig@lists.linaro.org>; Tue, 10 Jun 2025 13:34:47 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=infradead.org header.s=bombadil.20210309 header.b=U0Ep+1JR;
	spf=none (lists.linaro.org: domain of BATV+631296521f62fa6b3e9f+7961+infradead.org+hch@bombadil.srs.infradead.org has no SPF policy when checking 198.137.202.133) smtp.mailfrom=BATV+631296521f62fa6b3e9f+7961+infradead.org+hch@bombadil.srs.infradead.org;
	dmarc=none
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=bombadil.20210309; h=In-Reply-To:Content-Type:MIME-Version
	:References:Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description;
	bh=MOOfKRpPRTUUZtP6G8zk3QqaFEwZW/S6yRgDsEYfs+4=; b=U0Ep+1JRg1+M/75WhPBAUZs+Oq
	6iycChpWzpXMnUGEmJqdZUSdpqoh+g0REuJ+Cdw9o8cwoOJpvNq6bVioy9erzYPsIDc/DrnOyFe6D
	OsC5q1oDTpmwc/MGSHXjpRwE2v/OE2ItG875dknYWDEbrhGMoWBUOQQzwd1OwC7cBJRzLjntGfpaB
	/WdPZq3JIQeuEu4wyUU5qkF28R411HgORdmfPIWeeewAJX0UQ+BYCp7z2WX47v/WL0aFYpwiK95J9
	FfPxD28BlKafN77peVqWJxzKhm2z8ZoDzvBq3CnLvVGBMSBN+6rUbzM7HrSTgmjiJ/HlD3nxJOVPf
	FryPjXQg==;
Received: from hch by bombadil.infradead.org with local (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uOz7Z-00000006zNd-2xsx;
	Tue, 10 Jun 2025 13:34:33 +0000
Date: Tue, 10 Jun 2025 06:34:33 -0700
From: Christoph Hellwig <hch@infradead.org>
To: wangtao <tao.wangtao@honor.com>
Message-ID: <aEg0aYQJ9h_tyum9@infradead.org>
References: <20250603095245.17478-1-tao.wangtao@honor.com>
 <aD7x_b0hVyvZDUsl@infradead.org>
 <09c8fb7c-a337-4813-9f44-3a538c4ee8b1@amd.com>
 <aD72alIxu718uri4@infradead.org>
 <5d36abace6bf492aadd847f0fabc38be@honor.com>
 <a766fbf4-6cda-43a5-a1c7-61a3838f93f9@amd.com>
 <aEZkjA1L-dP_Qt3U@infradead.org>
 <761986ec0f404856b6f21c3feca67012@honor.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <761986ec0f404856b6f21c3feca67012@honor.com>
X-SRS-Rewrite: SMTP reverse-path rewritten from <hch@infradead.org> by bombadil.infradead.org. See http://www.infradead.org/rpr.html
X-Rspamd-Action: no action
X-Rspamd-Server: lists.linaro.org
X-Spamd-Result: default: False [-2.63 / 15.00];
	BAYES_HAM(-2.83)[99.27%];
	FORGED_SENDER(0.30)[hch@infradead.org,BATV@bombadil.srs.infradead.org];
	ONCE_RECEIVED(0.20)[];
	R_DKIM_ALLOW(-0.20)[infradead.org:s=bombadil.20210309];
	MIME_GOOD(-0.10)[text/plain];
	NEURAL_HAM(-0.00)[-1.000];
	TO_DN_EQ_ADDR_SOME(0.00)[];
	RCVD_COUNT_ONE(0.00)[1];
	TO_DN_SOME(0.00)[];
	ASN(0.00)[asn:7247, ipnet:198.137.202.0/24, country:US];
	RCPT_COUNT_TWELVE(0.00)[27];
	MIME_TRACE(0.00)[0:+];
	DWL_DNSWL_BLOCKED(0.00)[infradead.org:dkim];
	MID_RHS_MATCH_FROM(0.00)[];
	DMARC_NA(0.00)[infradead.org];
	R_SPF_NA(0.00)[no SPF record];
	FROM_HAS_DN(0.00)[];
	FREEMAIL_CC(0.00)[infradead.org,amd.com,linaro.org,redhat.com,intel.com,zeniv.linux.org.uk,kernel.org,google.com,linux-foundation.org,gmail.com,collabora.com,arm.com,suse.cz,linux.alibaba.com,vger.kernel.org,lists.freedesktop.org,lists.linaro.org,kvack.org,honor.com];
	MISSING_XM_UA(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[hch@infradead.org,BATV@bombadil.srs.infradead.org];
	TAGGED_FROM(0.00)[631296521f62fa6b3e9f,7961,infradead.org,hch];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	ARC_NA(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	DKIM_TRACE(0.00)[infradead.org:+]
X-Rspamd-Queue-Id: E564F44486
X-Spamd-Bar: --
Message-ID-Hash: RMAXKTSL4QAB42Q3CPTMJ2PQ2GIBIL5E
X-Message-ID-Hash: RMAXKTSL4QAB42Q3CPTMJ2PQ2GIBIL5E
X-MailFrom: BATV+631296521f62fa6b3e9f+7961+infradead.org+hch@bombadil.srs.infradead.org
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: Christoph Hellwig <hch@infradead.org>, Christian =?iso-8859-1?Q?K=F6nig?= <christian.koenig@amd.com>, "sumit.semwal@linaro.org" <sumit.semwal@linaro.org>, "kraxel@redhat.com" <kraxel@redhat.com>, "vivek.kasireddy@intel.com" <vivek.kasireddy@intel.com>, "viro@zeniv.linux.org.uk" <viro@zeniv.linux.org.uk>, "brauner@kernel.org" <brauner@kernel.org>, "hughd@google.com" <hughd@google.com>, "akpm@linux-foundation.org" <akpm@linux-foundation.org>, "amir73il@gmail.com" <amir73il@gmail.com>, "benjamin.gaignard@collabora.com" <benjamin.gaignard@collabora.com>, "Brian.Starkey@arm.com" <Brian.Starkey@arm.com>, "jstultz@google.com" <jstultz@google.com>, "tjmercier@google.com" <tjmercier@google.com>, "jack@suse.cz" <jack@suse.cz>, "baolin.wang@linux.alibaba.com" <baolin.wang@linux.alibaba.com>, "linux-media@vger.kernel.org" <linux-media@vger.kernel.org>, "dri-devel@lists.freedesktop.org" <dri-devel@lists.freedesktop.org>, "linaro-mm-sig@lists.linaro.org" <linaro-mm-sig@lists.linaro.org>, "linu
 x-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>, "linux-fsdevel@vger.kernel.org" <linux-fsdevel@vger.kernel.org>, "linux-mm@kvack.org" <linux-mm@kvack.org>, "wangbintian(BintianWang)" <bintian.wang@honor.com>, yipengxiang <yipengxiang@honor.com>, liulu 00013167 <liulu.liu@honor.com>, hanfeng 00012985 <feng.han@honor.com>
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH v4 0/4] Implement dmabuf direct I/O via copy_file_range
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/RMAXKTSL4QAB42Q3CPTMJ2PQ2GIBIL5E/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

On Mon, Jun 09, 2025 at 09:32:20AM +0000, wangtao wrote:
> Are you suggesting adding an ITER_DMABUF type to iov_iter,

Yes.

_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org
