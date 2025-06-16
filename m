Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id ADF33ADA795
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 16 Jun 2025 07:24:35 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 6AB4A4574C
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 16 Jun 2025 05:24:34 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	by lists.linaro.org (Postfix) with ESMTPS id EE70644439
	for <linaro-mm-sig@lists.linaro.org>; Mon, 16 Jun 2025 05:24:21 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=infradead.org header.s=bombadil.20210309 header.b=pQ77EsXD;
	spf=none (lists.linaro.org: domain of BATV+879d1253872d57ad8b56+7967+infradead.org+hch@bombadil.srs.infradead.org has no SPF policy when checking 198.137.202.133) smtp.mailfrom=BATV+879d1253872d57ad8b56+7967+infradead.org+hch@bombadil.srs.infradead.org;
	dmarc=none
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=bombadil.20210309; h=In-Reply-To:Content-Type:MIME-Version
	:References:Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description;
	bh=J+qg7kSmf2TF3wMSin7ImGQUTOPpXGE9k8KtVX9AqP8=; b=pQ77EsXDWlBVfOokOtyvM2AqZk
	/5sJyBbv18xN5qvJqYCVZ2zez0MNX+UfQ/zigrpsIgk0ZxNgyUqst5VWe4DLy8JebcgG7NjoCG733
	+BE9KWtygS4KcEeGSVEotzZcYhpfRWwhCC5TPI0VS57ROHbI3Pst2EgwFVmDJz9hy3vlyK15q5uAd
	/pd+wwiGcnKcUdCQxFt8fqwgBBDy4oveuCamlEgcldv+89g96N96tHTTiUT3gzLkkYCZnboNMW32g
	Rk+CvNEP02gA7+EQtZh3864PDFDCUhbv6z2d8qvz+fLUSlmleCQnT+q/D2nQtAGs4rmiw7cmex1lr
	PIMQSFjA==;
Received: from hch by bombadil.infradead.org with local (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uR2KG-00000003QI9-45k3;
	Mon, 16 Jun 2025 05:24:09 +0000
Date: Sun, 15 Jun 2025 22:24:08 -0700
From: Christoph Hellwig <hch@infradead.org>
To: wangtao <tao.wangtao@honor.com>
Message-ID: <aE-qeCaW_1lDxEBa@infradead.org>
References: <aD7x_b0hVyvZDUsl@infradead.org>
 <09c8fb7c-a337-4813-9f44-3a538c4ee8b1@amd.com>
 <aD72alIxu718uri4@infradead.org>
 <5d36abace6bf492aadd847f0fabc38be@honor.com>
 <a766fbf4-6cda-43a5-a1c7-61a3838f93f9@amd.com>
 <aEZkjA1L-dP_Qt3U@infradead.org>
 <761986ec0f404856b6f21c3feca67012@honor.com>
 <d86a677b-e8a7-4611-9494-06907c661f05@amd.com>
 <aEg1BZj-HzbgWKsx@infradead.org>
 <80ce3ec9104c4f0abbcb589b03a5f3c7@honor.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <80ce3ec9104c4f0abbcb589b03a5f3c7@honor.com>
X-SRS-Rewrite: SMTP reverse-path rewritten from <hch@infradead.org> by bombadil.infradead.org. See http://www.infradead.org/rpr.html
X-Rspamd-Action: no action
X-Rspamd-Server: lists.linaro.org
X-Spamd-Result: default: False [-2.61 / 15.00];
	BAYES_HAM(-2.81)[99.20%];
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
	TAGGED_FROM(0.00)[879d1253872d57ad8b56,7967,infradead.org,hch];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	ARC_NA(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	DKIM_TRACE(0.00)[infradead.org:+]
X-Rspamd-Queue-Id: EE70644439
X-Spamd-Bar: --
Message-ID-Hash: AMZ3544VOSBYAOMYT3PPXG6XG52656RZ
X-Message-ID-Hash: AMZ3544VOSBYAOMYT3PPXG6XG52656RZ
X-MailFrom: BATV+879d1253872d57ad8b56+7967+infradead.org+hch@bombadil.srs.infradead.org
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: Christoph Hellwig <hch@infradead.org>, Christian =?iso-8859-1?Q?K=F6nig?= <christian.koenig@amd.com>, "sumit.semwal@linaro.org" <sumit.semwal@linaro.org>, "kraxel@redhat.com" <kraxel@redhat.com>, "vivek.kasireddy@intel.com" <vivek.kasireddy@intel.com>, "viro@zeniv.linux.org.uk" <viro@zeniv.linux.org.uk>, "brauner@kernel.org" <brauner@kernel.org>, "hughd@google.com" <hughd@google.com>, "akpm@linux-foundation.org" <akpm@linux-foundation.org>, "amir73il@gmail.com" <amir73il@gmail.com>, "benjamin.gaignard@collabora.com" <benjamin.gaignard@collabora.com>, "Brian.Starkey@arm.com" <Brian.Starkey@arm.com>, "jstultz@google.com" <jstultz@google.com>, "tjmercier@google.com" <tjmercier@google.com>, "jack@suse.cz" <jack@suse.cz>, "baolin.wang@linux.alibaba.com" <baolin.wang@linux.alibaba.com>, "linux-media@vger.kernel.org" <linux-media@vger.kernel.org>, "dri-devel@lists.freedesktop.org" <dri-devel@lists.freedesktop.org>, "linaro-mm-sig@lists.linaro.org" <linaro-mm-sig@lists.linaro.org>, "linu
 x-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>, "linux-fsdevel@vger.kernel.org" <linux-fsdevel@vger.kernel.org>, "linux-mm@kvack.org" <linux-mm@kvack.org>, "wangbintian(BintianWang)" <bintian.wang@honor.com>, yipengxiang <yipengxiang@honor.com>, liulu 00013167 <liulu.liu@honor.com>, hanfeng 00012985 <feng.han@honor.com>
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH v4 0/4] Implement dmabuf direct I/O via copy_file_range
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/AMZ3544VOSBYAOMYT3PPXG6XG52656RZ/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

On Fri, Jun 13, 2025 at 09:43:08AM +0000, wangtao wrote:
> Here's my analysis on Linux 6.6 with F2FS/iomap.

Linux 6.6 is almost two years old and completely irrelevant.  Please
provide numbers on 6.16 or current Linus' tree.

_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org
