Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 9D684ACC791
	for <lists+linaro-mm-sig@lfdr.de>; Tue,  3 Jun 2025 15:19:59 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id A92FC451FB
	for <lists+linaro-mm-sig@lfdr.de>; Tue,  3 Jun 2025 13:19:58 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	by lists.linaro.org (Postfix) with ESMTPS id D95B6443E4
	for <linaro-mm-sig@lists.linaro.org>; Tue,  3 Jun 2025 13:19:47 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=infradead.org header.s=bombadil.20210309 header.b=Zx62paCd;
	spf=none (lists.linaro.org: domain of BATV+175a1930472064472083+7954+infradead.org+hch@bombadil.srs.infradead.org has no SPF policy when checking 198.137.202.133) smtp.mailfrom=BATV+175a1930472064472083+7954+infradead.org+hch@bombadil.srs.infradead.org;
	dmarc=none
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=bombadil.20210309; h=In-Reply-To:Content-Transfer-Encoding
	:Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:
	Sender:Reply-To:Content-ID:Content-Description;
	bh=IMyZpNPWuRD8Yt0Bj66tbpS5jFHAY+R03rfqd24z1tA=; b=Zx62paCdRIfY0a9wF1dF/rAnNo
	UiHTftfyE+VGyqJw2HuPeDULbIREjlmcy3gsX/PpD0vl91RQKOjPUf80vBJyOYXNYYOvQWp51X0az
	28iNgL0C6G1PkGFGA/O/X50dvI586E5cM6uuXdEeMXCnDiGkmWwz+ybw5XaMPcnF04tWsNM2lhXPL
	qQG+LPDKpcTmCnzRrFrZvTxc/Z2izJLAJvnUt7mQKGQRrzVCedZELM+5pxIeSGdU09pIPsEZQGote
	dWu2tqnaHPFjDJdBXCVu3HNouwDQ3iB3IQj5QrXprdLj3shYEHJfcAcfjQwRnVrG5PyT3IByVNWjb
	lOa4UeiA==;
Received: from hch by bombadil.infradead.org with local (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uMRYI-0000000B0wB-3pbC;
	Tue, 03 Jun 2025 13:19:38 +0000
Date: Tue, 3 Jun 2025 06:19:38 -0700
From: Christoph Hellwig <hch@infradead.org>
To: Christian =?iso-8859-1?Q?K=F6nig?= <christian.koenig@amd.com>
Message-ID: <aD72alIxu718uri4@infradead.org>
References: <20250603095245.17478-1-tao.wangtao@honor.com>
 <aD7x_b0hVyvZDUsl@infradead.org>
 <09c8fb7c-a337-4813-9f44-3a538c4ee8b1@amd.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <09c8fb7c-a337-4813-9f44-3a538c4ee8b1@amd.com>
X-SRS-Rewrite: SMTP reverse-path rewritten from <hch@infradead.org> by bombadil.infradead.org. See http://www.infradead.org/rpr.html
X-Rspamd-Action: no action
X-Rspamd-Server: lists.linaro.org
X-Spamd-Result: default: False [-7.48 / 15.00];
	REPLY(-4.00)[];
	BAYES_HAM(-2.98)[99.92%];
	RCVD_DKIM_ARC_DNSWL_MED(-0.50)[];
	FORGED_SENDER(0.30)[hch@infradead.org,BATV@bombadil.srs.infradead.org];
	R_DKIM_ALLOW(-0.20)[infradead.org:s=bombadil.20210309];
	ONCE_RECEIVED(0.20)[];
	RCVD_IN_DNSWL_MED(-0.20)[198.137.202.133:from];
	MIME_GOOD(-0.10)[text/plain];
	ARC_NA(0.00)[];
	TAGGED_FROM(0.00)[175a1930472064472083,7954,infradead.org,hch];
	RCPT_COUNT_TWELVE(0.00)[27];
	RCVD_TLS_LAST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	DMARC_NA(0.00)[infradead.org];
	FREEMAIL_CC(0.00)[infradead.org,honor.com,linaro.org,redhat.com,intel.com,zeniv.linux.org.uk,kernel.org,google.com,linux-foundation.org,gmail.com,collabora.com,arm.com,suse.cz,linux.alibaba.com,vger.kernel.org,lists.freedesktop.org,lists.linaro.org,kvack.org];
	DKIM_TRACE(0.00)[infradead.org:+];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[hch@infradead.org,BATV@bombadil.srs.infradead.org];
	FROM_HAS_DN(0.00)[];
	TO_DN_SOME(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	ASN(0.00)[asn:7247, ipnet:198.137.202.0/24, country:US];
	MID_RHS_MATCH_FROM(0.00)[];
	MISSING_XM_UA(0.00)[];
	RCVD_COUNT_ONE(0.00)[1];
	R_SPF_NA(0.00)[no SPF record]
X-Rspamd-Queue-Id: D95B6443E4
X-Spamd-Bar: -------
Message-ID-Hash: FGJZJQ26MEOTABQQGQYLSMVLLTEG4HTS
X-Message-ID-Hash: FGJZJQ26MEOTABQQGQYLSMVLLTEG4HTS
X-MailFrom: BATV+175a1930472064472083+7954+infradead.org+hch@bombadil.srs.infradead.org
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: Christoph Hellwig <hch@infradead.org>, wangtao <tao.wangtao@honor.com>, sumit.semwal@linaro.org, kraxel@redhat.com, vivek.kasireddy@intel.com, viro@zeniv.linux.org.uk, brauner@kernel.org, hughd@google.com, akpm@linux-foundation.org, amir73il@gmail.com, benjamin.gaignard@collabora.com, Brian.Starkey@arm.com, jstultz@google.com, tjmercier@google.com, jack@suse.cz, baolin.wang@linux.alibaba.com, linux-media@vger.kernel.org, dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org, linux-kernel@vger.kernel.org, linux-fsdevel@vger.kernel.org, linux-mm@kvack.org, bintian.wang@honor.com, yipengxiang@honor.com, liulu.liu@honor.com, feng.han@honor.com
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH v4 0/4] Implement dmabuf direct I/O via copy_file_range
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/FGJZJQ26MEOTABQQGQYLSMVLLTEG4HTS/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

On Tue, Jun 03, 2025 at 03:14:20PM +0200, Christian K=F6nig wrote:
> On 6/3/25 15:00, Christoph Hellwig wrote:
> > This is a really weird interface.  No one has yet to explain why dmabuf
> > is so special that we can't support direct I/O to it when we can support
> > it to otherwise exotic mappings like PCI P2P ones.
>=20
> With udmabuf you can do direct I/O, it's just inefficient to walk the
> page tables for it when you already have an array of all the folios.

Does it matter compared to the I/O in this case?

Either way there has been talk (in case of networking implementations)
that use a dmabuf as a first class container for lower level I/O.
I'd much rather do that than adding odd side interfaces.  I.e. have
a version of splice that doesn't bother with the pipe, but instead
just uses in-kernel direct I/O on one side and dmabuf-provided folios
on the other.

_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org
