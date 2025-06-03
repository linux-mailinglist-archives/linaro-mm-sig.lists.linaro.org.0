Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 26C54ACCAE8
	for <lists+linaro-mm-sig@lfdr.de>; Tue,  3 Jun 2025 18:02:26 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 2DCF43F638
	for <lists+linaro-mm-sig@lfdr.de>; Tue,  3 Jun 2025 16:02:25 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	by lists.linaro.org (Postfix) with ESMTPS id CFFF63F638
	for <linaro-mm-sig@lists.linaro.org>; Tue,  3 Jun 2025 16:02:10 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=infradead.org header.s=bombadil.20210309 header.b=OluYoGGV;
	spf=none (lists.linaro.org: domain of BATV+175a1930472064472083+7954+infradead.org+hch@bombadil.srs.infradead.org has no SPF policy when checking 198.137.202.133) smtp.mailfrom=BATV+175a1930472064472083+7954+infradead.org+hch@bombadil.srs.infradead.org;
	dmarc=none
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=bombadil.20210309; h=In-Reply-To:Content-Transfer-Encoding
	:Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:
	Sender:Reply-To:Content-ID:Content-Description;
	bh=lqpA2obXAEGYiV7llfEv48yhrGfp0onTICfwh/ANc24=; b=OluYoGGVKqLlm6rzxdjM4LhMQ1
	eOPz3SupE+Bw9ysysO+kM/cAgvP06gWwIbzC4/e4gASjwVugANssBjc40YPUGAx+Pj/cmjG3+82q5
	ArJv2MFY9l9APkjyj+Yoq3yRmcH4NTq6C8N7+2xDqz76XDB+kn3u2iRial5JhXnskyYxuwaozZLDK
	86nULefboRLcSVdt6e0PZk4PZPJNI/v2PdtKLZ9GxYdJtdmt/bXzjlJ5pPNkX0MbOyih2PJE2o/JN
	5iAGN7D8oW5lzjB+iOXUn0QOl0bteQbmcnNIdnGqC+cRk6GyHKpthYQeF10F4Y/qlSP7eOdt5Vl6m
	oPf9mjfw==;
Received: from hch by bombadil.infradead.org with local (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uMU5P-0000000BMWf-1H2s;
	Tue, 03 Jun 2025 16:01:59 +0000
Date: Tue, 3 Jun 2025 09:01:59 -0700
From: Christoph Hellwig <hch@infradead.org>
To: Christian =?iso-8859-1?Q?K=F6nig?= <christian.koenig@amd.com>
Message-ID: <aD8cd137bWPALs4u@infradead.org>
References: <20250603095245.17478-1-tao.wangtao@honor.com>
 <aD7x_b0hVyvZDUsl@infradead.org>
 <09c8fb7c-a337-4813-9f44-3a538c4ee8b1@amd.com>
 <aD72alIxu718uri4@infradead.org>
 <924ac01f-b86b-4a03-b563-878fa7736712@amd.com>
 <aD8Gi9ShWDEYqWjB@infradead.org>
 <d1937343-5fc3-4450-b31a-d45b6f5cfc16@amd.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <d1937343-5fc3-4450-b31a-d45b6f5cfc16@amd.com>
X-SRS-Rewrite: SMTP reverse-path rewritten from <hch@infradead.org> by bombadil.infradead.org. See http://www.infradead.org/rpr.html
X-Rspamd-Action: no action
X-Rspamd-Server: lists.linaro.org
X-Spamd-Result: default: False [-6.80 / 15.00];
	REPLY(-4.00)[];
	BAYES_HAM(-3.00)[99.99%];
	FORGED_SENDER(0.30)[hch@infradead.org,BATV@bombadil.srs.infradead.org];
	ONCE_RECEIVED(0.20)[];
	R_DKIM_ALLOW(-0.20)[infradead.org:s=bombadil.20210309];
	MIME_GOOD(-0.10)[text/plain];
	TAGGED_FROM(0.00)[175a1930472064472083,7954,infradead.org,hch];
	RCVD_TLS_LAST(0.00)[];
	R_SPF_NA(0.00)[no SPF record];
	DMARC_NA(0.00)[infradead.org];
	FREEMAIL_CC(0.00)[infradead.org,honor.com,linaro.org,redhat.com,intel.com,zeniv.linux.org.uk,kernel.org,google.com,linux-foundation.org,gmail.com,collabora.com,arm.com,suse.cz,linux.alibaba.com,vger.kernel.org,lists.freedesktop.org,lists.linaro.org,kvack.org];
	MIME_TRACE(0.00)[0:+];
	ARC_NA(0.00)[];
	DKIM_TRACE(0.00)[infradead.org:+];
	MISSING_XM_UA(0.00)[];
	RCVD_COUNT_ONE(0.00)[1];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[hch@infradead.org,BATV@bombadil.srs.infradead.org];
	FROM_HAS_DN(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[27];
	DNSWL_BLOCKED(0.00)[198.137.202.133:from];
	MID_RHS_MATCH_FROM(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	ASN(0.00)[asn:7247, ipnet:198.137.202.0/24, country:US];
	DWL_DNSWL_BLOCKED(0.00)[infradead.org:dkim];
	TO_DN_SOME(0.00)[]
X-Rspamd-Queue-Id: CFFF63F638
X-Spamd-Bar: ------
Message-ID-Hash: SCD2PD2BWASAZ2D2FK75P2OGIJP2GFB7
X-Message-ID-Hash: SCD2PD2BWASAZ2D2FK75P2OGIJP2GFB7
X-MailFrom: BATV+175a1930472064472083+7954+infradead.org+hch@bombadil.srs.infradead.org
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: Christoph Hellwig <hch@infradead.org>, wangtao <tao.wangtao@honor.com>, sumit.semwal@linaro.org, kraxel@redhat.com, vivek.kasireddy@intel.com, viro@zeniv.linux.org.uk, brauner@kernel.org, hughd@google.com, akpm@linux-foundation.org, amir73il@gmail.com, benjamin.gaignard@collabora.com, Brian.Starkey@arm.com, jstultz@google.com, tjmercier@google.com, jack@suse.cz, baolin.wang@linux.alibaba.com, linux-media@vger.kernel.org, dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org, linux-kernel@vger.kernel.org, linux-fsdevel@vger.kernel.org, linux-mm@kvack.org, bintian.wang@honor.com, yipengxiang@honor.com, liulu.liu@honor.com, feng.han@honor.com
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH v4 0/4] Implement dmabuf direct I/O via copy_file_range
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/SCD2PD2BWASAZ2D2FK75P2OGIJP2GFB7/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

On Tue, Jun 03, 2025 at 05:55:18PM +0200, Christian K=F6nig wrote:
> On 6/3/25 16:28, Christoph Hellwig wrote:
> > On Tue, Jun 03, 2025 at 04:18:22PM +0200, Christian K=F6nig wrote:
> >>> Does it matter compared to the I/O in this case?
> >>
> >> It unfortunately does, see the numbers on patch 3 and 4.
> >=20
> > That's kinda weird.  Why does the page table lookup tage so much
> > time compared to normal I/O?
>=20
> I have absolutely no idea. It's rather surprising for me as well.
>=20
> The user seems to have a rather slow CPU paired with fast I/O, but it sti=
ll looks rather fishy to me.
>=20
> Additional to that allocating memory through memfd_create() is *much* slo=
wer on that box than through dma-buf-heaps (which basically just uses GFP a=
nd an array).

Can someone try to reproduce these results on a normal system
before we're building infrastructure based on these numbers?

_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org
