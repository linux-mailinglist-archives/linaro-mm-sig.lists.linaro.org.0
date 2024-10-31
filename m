Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 5DBBB9B80C4
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 31 Oct 2024 18:02:21 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 2E7B64489F
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 31 Oct 2024 17:02:20 +0000 (UTC)
Received: from zeniv.linux.org.uk (zeniv.linux.org.uk [62.89.141.173])
	by lists.linaro.org (Postfix) with ESMTPS id 704633F5B6
	for <linaro-mm-sig@lists.linaro.org>; Thu, 31 Oct 2024 17:02:13 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=linux.org.uk header.s=zeniv-20220401 header.b=E8a8972Y;
	spf=none (lists.linaro.org: domain of viro@ftp.linux.org.uk has no SPF policy when checking 62.89.141.173) smtp.mailfrom=viro@ftp.linux.org.uk;
	dmarc=pass (policy=none) header.from=zeniv.linux.org.uk
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=linux.org.uk; s=zeniv-20220401; h=Sender:In-Reply-To:Content-Type:
	MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description;
	bh=Y4xQj4LTzRUb6k8q83bQHFdOmJxhlDsQ0EsOYpsUkYk=; b=E8a8972YeGazZOviobvyl1aKy0
	SdLewCT/1uHVFuozbDWhamizbykPXeYdnnbDpVpu0BU256FY0a5MKYWaggghGzOLTlp5mLqiSR0Ot
	mcnVNraZNV4s6oGzmqjxSt6uNcyuECUff+ae4WNaelT5zcc9waIb4gL56jCDYgo5BzAMlN2zPcupk
	SkVtwVx7h6XBjdO/hsorXwM+1nnuAr//By3gKEtopOBEinMZsuepTrSMb+q8zFl5qNQ0PGR/C1Tuq
	aWuuoKC6P46bweKjKk2sISaAJAvZRkOK7bHZJis8amdHPA+HIMcgIl1w0W49QD6npUTwjB+jbrzTY
	MiPRF0lg==;
Received: from viro by zeniv.linux.org.uk with local (Exim 4.98 #2 (Red Hat Linux))
	id 1t6YYe-00000009qHi-3YWC;
	Thu, 31 Oct 2024 17:02:04 +0000
Date: Thu, 31 Oct 2024 17:02:04 +0000
From: Al Viro <viro@zeniv.linux.org.uk>
To: Maxime Ripard <mripard@redhat.com>
Message-ID: <20241031170204.GL1350452@ZenIV>
References: <20241022-macaw-of-spectacular-joy-8dcefa@houat>
 <35deac48-4220-4889-833d-1b57b417e968@gmx.de>
 <20241031-bouncy-cute-shrimp-cd2530@houat>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20241031-bouncy-cute-shrimp-cd2530@houat>
Sender: Al Viro <viro@ftp.linux.org.uk>
X-Spamd-Result: default: False [-2.80 / 15.00];
	BAYES_HAM(-3.00)[99.99%];
	MID_RHS_NOT_FQDN(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[zeniv.linux.org.uk,none];
	FORGED_SENDER(0.30)[viro@zeniv.linux.org.uk,viro@ftp.linux.org.uk];
	R_DKIM_ALLOW(-0.20)[linux.org.uk:s=zeniv-20220401];
	ONCE_RECEIVED(0.20)[];
	MIME_GOOD(-0.10)[text/plain];
	ASN(0.00)[asn:8419, ipnet:62.89.128.0/19, country:GB];
	MIME_TRACE(0.00)[0:+];
	RCVD_COUNT_ONE(0.00)[1];
	TO_DN_SOME(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[12];
	R_SPF_NA(0.00)[no SPF record];
	ARC_NA(0.00)[];
	MISSING_XM_UA(0.00)[];
	FROM_HAS_DN(0.00)[];
	FREEMAIL_CC(0.00)[gmx.de,linaro.org,collabora.com,arm.com,google.com,amd.com,vger.kernel.org,lists.freedesktop.org,lists.linaro.org];
	NEURAL_HAM(-0.00)[-1.000];
	FROM_NEQ_ENVFROM(0.00)[viro@zeniv.linux.org.uk,viro@ftp.linux.org.uk];
	RCVD_TLS_LAST(0.00)[];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	DKIM_TRACE(0.00)[linux.org.uk:+]
X-Rspamd-Action: no action
X-Rspamd-Server: lists.linaro.org
X-Rspamd-Queue-Id: 704633F5B6
X-Spamd-Bar: --
Message-ID-Hash: GLAXNUUVUWWR4XUWMEC7XW2KCMEXJMNA
X-Message-ID-Hash: GLAXNUUVUWWR4XUWMEC7XW2KCMEXJMNA
X-MailFrom: viro@ftp.linux.org.uk
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: metux <metux@gmx.de>, Sumit Semwal <sumit.semwal@linaro.org>, Benjamin Gaignard <benjamin.gaignard@collabora.com>, Brian Starkey <Brian.Starkey@arm.com>, John Stultz <jstultz@google.com>, "T.J. Mercier" <tjmercier@google.com>, Christian =?iso-8859-1?Q?K=F6nig?= <christian.koenig@amd.com>, linux-media@vger.kernel.org, dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org, linux-kernel@vger.kernel.org
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: Requirements to merge new heaps in the kernel
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/GLAXNUUVUWWR4XUWMEC7XW2KCMEXJMNA/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

On Thu, Oct 31, 2024 at 05:45:23PM +0100, Maxime Ripard wrote:
> On Wed, Oct 30, 2024 at 12:16:22PM +0100, metux wrote:
> > On 22.10.24 10:38, Maxime Ripard wrote:
> > > I'm still interested in merging a carve-out driver[1], since it seems to be
> > > in every vendor BSP and got asked again last week.
> > > 
> > > I remember from our discussion that for new heap types to be merged, we
> > > needed a kernel use-case. Looking back, I'm not entirely sure how one
> > > can provide that given that heaps are essentially facilities for
> > > user-space.
> > 
> > For those who didn't follow your work, could you please give a short
> > intro what's that all about ?
> > 
> > If I understand you correctly, you'd like the infrastructure of
> > kmalloc() et al for things / memory regions that aren't the usual heap,
> > right ?
> 
> No, not really. The discussion is about dma-buf heaps. They allow to
> allocate buffers suitable for DMA from userspace. It might or might not
> from the system memory, at the heap driver discretion.

I'm afraid you've misinterpreted that - our hexapedal friend had just
	* noticed that excessive crossposting can get it banned
	* got itself a new address
	* posted a solitary ping as the first test
	* followed that by testing the ability to cross-post (posting you'd
been replying to, contents on chatGPT level)
	* proceeded to use its shiny new address for more of the chorus
whinge exercise they'd been holding with several other similar fellows
(or sock puppets, for all I know).

Just ignore the wanker - it wasn't trying to get any information other
than "will the posting get through" anyway.
_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org
