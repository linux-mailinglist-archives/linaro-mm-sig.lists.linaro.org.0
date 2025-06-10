Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id D2D2CAD396F
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 10 Jun 2025 15:37:29 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id E9674447F8
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 10 Jun 2025 13:37:28 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	by lists.linaro.org (Postfix) with ESMTPS id 484C94446C
	for <linaro-mm-sig@lists.linaro.org>; Tue, 10 Jun 2025 13:37:17 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=infradead.org header.s=bombadil.20210309 header.b="Chl/Ylha";
	spf=none (lists.linaro.org: domain of BATV+631296521f62fa6b3e9f+7961+infradead.org+hch@bombadil.srs.infradead.org has no SPF policy when checking 198.137.202.133) smtp.mailfrom=BATV+631296521f62fa6b3e9f+7961+infradead.org+hch@bombadil.srs.infradead.org;
	dmarc=none
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=bombadil.20210309; h=In-Reply-To:Content-Transfer-Encoding
	:Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:
	Sender:Reply-To:Content-ID:Content-Description;
	bh=1NzR2rxPnpJMPP1YD7GZH2AVOTPhR96TImD7BWPOQN8=; b=Chl/YlhauFGOETLTvPnRnWBjfy
	opTuncHILIemQPoRR7xSy319pBTxdofO0pGDv6D+Z/u0Nvp5k9X1CFLysi57iB8hf1EwyZE8JtVKb
	qg2JLB0m1lye2E0nK2XnmciBR+kXGD0YalsfOrzvgwKrdrjuoIwYZ6x7SmRmeJ86S7lve2d5YL26Z
	ifNFah2Z6Azx4cfPkthqawLP44c8oSJugAVCgkX8HHVhlvtAtNPrTZMb1+c2OA9EEWE/ZGBmSncza
	GqrystEeMZHiuD/pdlwvBhq4XCRj+bXeudUZP8ZhrYZisNgT95QfAqx82riWKQMfAXy6sPama9g4a
	UDyzxdgQ==;
Received: from hch by bombadil.infradead.org with local (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uOzA5-00000006zyQ-1iAC;
	Tue, 10 Jun 2025 13:37:09 +0000
Date: Tue, 10 Jun 2025 06:37:09 -0700
From: Christoph Hellwig <hch@infradead.org>
To: Christian =?iso-8859-1?Q?K=F6nig?= <christian.koenig@amd.com>
Message-ID: <aEg1BZj-HzbgWKsx@infradead.org>
References: <20250603095245.17478-1-tao.wangtao@honor.com>
 <aD7x_b0hVyvZDUsl@infradead.org>
 <09c8fb7c-a337-4813-9f44-3a538c4ee8b1@amd.com>
 <aD72alIxu718uri4@infradead.org>
 <5d36abace6bf492aadd847f0fabc38be@honor.com>
 <a766fbf4-6cda-43a5-a1c7-61a3838f93f9@amd.com>
 <aEZkjA1L-dP_Qt3U@infradead.org>
 <761986ec0f404856b6f21c3feca67012@honor.com>
 <d86a677b-e8a7-4611-9494-06907c661f05@amd.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <d86a677b-e8a7-4611-9494-06907c661f05@amd.com>
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
	TAGGED_FROM(0.00)[631296521f62fa6b3e9f,7961,infradead.org,hch];
	RCVD_TLS_LAST(0.00)[];
	R_SPF_NA(0.00)[no SPF record];
	DMARC_NA(0.00)[infradead.org];
	TO_DN_EQ_ADDR_SOME(0.00)[];
	ARC_NA(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FREEMAIL_CC(0.00)[honor.com,infradead.org,linaro.org,redhat.com,intel.com,zeniv.linux.org.uk,kernel.org,google.com,linux-foundation.org,gmail.com,collabora.com,arm.com,suse.cz,linux.alibaba.com,vger.kernel.org,lists.freedesktop.org,lists.linaro.org,kvack.org];
	DKIM_TRACE(0.00)[infradead.org:+];
	MISSING_XM_UA(0.00)[];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[hch@infradead.org,BATV@bombadil.srs.infradead.org];
	FROM_HAS_DN(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[27];
	NEURAL_HAM(-0.00)[-1.000];
	DWL_DNSWL_BLOCKED(0.00)[infradead.org:dkim];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_COUNT_ONE(0.00)[1];
	ASN(0.00)[asn:7247, ipnet:198.137.202.0/24, country:US];
	TO_DN_SOME(0.00)[]
X-Rspamd-Queue-Id: 484C94446C
X-Spamd-Bar: ------
Message-ID-Hash: 3OLAPSMBBSHFXFMSGBENQPRMNB4HXXMT
X-Message-ID-Hash: 3OLAPSMBBSHFXFMSGBENQPRMNB4HXXMT
X-MailFrom: BATV+631296521f62fa6b3e9f+7961+infradead.org+hch@bombadil.srs.infradead.org
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: wangtao <tao.wangtao@honor.com>, Christoph Hellwig <hch@infradead.org>, "sumit.semwal@linaro.org" <sumit.semwal@linaro.org>, "kraxel@redhat.com" <kraxel@redhat.com>, "vivek.kasireddy@intel.com" <vivek.kasireddy@intel.com>, "viro@zeniv.linux.org.uk" <viro@zeniv.linux.org.uk>, "brauner@kernel.org" <brauner@kernel.org>, "hughd@google.com" <hughd@google.com>, "akpm@linux-foundation.org" <akpm@linux-foundation.org>, "amir73il@gmail.com" <amir73il@gmail.com>, "benjamin.gaignard@collabora.com" <benjamin.gaignard@collabora.com>, "Brian.Starkey@arm.com" <Brian.Starkey@arm.com>, "jstultz@google.com" <jstultz@google.com>, "tjmercier@google.com" <tjmercier@google.com>, "jack@suse.cz" <jack@suse.cz>, "baolin.wang@linux.alibaba.com" <baolin.wang@linux.alibaba.com>, "linux-media@vger.kernel.org" <linux-media@vger.kernel.org>, "dri-devel@lists.freedesktop.org" <dri-devel@lists.freedesktop.org>, "linaro-mm-sig@lists.linaro.org" <linaro-mm-sig@lists.linaro.org>, "linux-kernel@vger.kernel.org" <lin
 ux-kernel@vger.kernel.org>, "linux-fsdevel@vger.kernel.org" <linux-fsdevel@vger.kernel.org>, "linux-mm@kvack.org" <linux-mm@kvack.org>, "wangbintian(BintianWang)" <bintian.wang@honor.com>, yipengxiang <yipengxiang@honor.com>, liulu 00013167 <liulu.liu@honor.com>, hanfeng 00012985 <feng.han@honor.com>
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH v4 0/4] Implement dmabuf direct I/O via copy_file_range
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/3OLAPSMBBSHFXFMSGBENQPRMNB4HXXMT/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

On Tue, Jun 10, 2025 at 12:52:18PM +0200, Christian K=F6nig wrote:
> >> dma_addr_t/len array now that the new DMA API supporting that has been
> >> merged.  Is there any chance the dma-buf maintainers could start to ki=
ck this
> >> off?  I'm of course happy to assist.
>=20
> Work on that is already underway for some time.
>=20
> Most GPU drivers already do sg_table -> DMA array conversion, I need
> to push on the remaining to clean up.

Do you have a pointer?

> >> Yes, that's really puzzling and should be addressed first.
> > With high CPU performance (e.g., 3GHz), GUP (get_user_pages) overhead
> > is relatively low (observed in 3GHz tests).
>=20
> Even on a low end CPU walking the page tables and grabbing references
> shouldn't be that much of an overhead.

Yes.

>=20
> There must be some reason why you see so much CPU overhead. E.g.
> compound pages are broken up or similar which should not happen in
> the first place.

pin_user_pages outputs an array of PAGE_SIZE (modulo offset and shorter
last length) array strut pages unfortunately.  The block direct I/O
code has grown code to reassemble folios from them fairly recently
which did speed up some workloads.

Is this test using the block device or iomap direct I/O code?  What
kernel version is it run on?

_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org
