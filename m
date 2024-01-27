Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id E4AA083EECF
	for <lists+linaro-mm-sig@lfdr.de>; Sat, 27 Jan 2024 17:51:09 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 850B43F38E
	for <lists+linaro-mm-sig@lfdr.de>; Sat, 27 Jan 2024 16:51:08 +0000 (UTC)
Received: from dfw.source.kernel.org (dfw.source.kernel.org [139.178.84.217])
	by lists.linaro.org (Postfix) with ESMTPS id 486C43EB98
	for <linaro-mm-sig@lists.linaro.org>; Sat, 27 Jan 2024 16:51:01 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=kernel.org header.s=k20201202 header.b=kHE4GT14;
	dmarc=pass (policy=none) header.from=kernel.org;
	spf=pass (lists.linaro.org: domain of jic23@kernel.org designates 139.178.84.217 as permitted sender) smtp.mailfrom=jic23@kernel.org
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by dfw.source.kernel.org (Postfix) with ESMTP id C428C60A65;
	Sat, 27 Jan 2024 16:51:00 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 8F7BFC433F1;
	Sat, 27 Jan 2024 16:50:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1706374260;
	bh=QP+swmkCdNQGO0Nmh/aIJ91HocN7GAu5e8lfaOWVe1c=;
	h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
	b=kHE4GT14qyZ9I0dPf3JZXSf2KWCeckxoGqODmilUYb+pouIkOG0PYuxUTRvH5IKL/
	 8027UCs0RkMLDqypr8Xez1mHrPzUpaYqXdIBwlJIVmSLOEYJwOHHl2kNuK6G1K4Cse
	 gqN+/rdjyKsk/3+BPoMGzF/E9cmtxQkF1zcMmaz10JrLPFLtHbbc1ksahSgc+PY4Va
	 fVlv5Kbkq5xj9XOnO1ErYaT0nLxkh/na/nVHByuhTxQp/bWM8P/cf7Usxpyzhuxrar
	 11GV3LsFzScBDF4TtjuAK1EHyNaYfrGvDpvsLd692/hySSUirAFWN3Nn7aD1CMlPH8
	 Rgo7n1lSqppsw==
Date: Sat, 27 Jan 2024 16:50:44 +0000
From: Jonathan Cameron <jic23@kernel.org>
To: Paul Cercueil <paul@crapouillou.net>
Message-ID: <20240127165044.22f1b329@jic23-huawei>
In-Reply-To: <ee5d7bb2fb3e74e8fc621d745b23d1858e1f0c3c.camel@crapouillou.net>
References: <20231219175009.65482-1-paul@crapouillou.net>
	<20231219175009.65482-6-paul@crapouillou.net>
	<20231221120624.7bcdc302@jic23-huawei>
	<ee5d7bb2fb3e74e8fc621d745b23d1858e1f0c3c.camel@crapouillou.net>
X-Mailer: Claws Mail 4.2.0 (GTK 3.24.40; x86_64-pc-linux-gnu)
MIME-Version: 1.0
X-Rspamd-Action: no action
X-Rspamd-Server: lists.linaro.org
X-Rspamd-Queue-Id: 486C43EB98
X-Spamd-Bar: -
X-Spamd-Result: default: False [-2.00 / 15.00];
	BAYES_HAM(-3.00)[99.99%];
	SUSPICIOUS_RECIPS(1.50)[];
	MID_RHS_NOT_FQDN(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,none];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20201202];
	R_SPF_ALLOW(-0.20)[+ip4:139.178.84.217];
	MIME_GOOD(-0.10)[text/plain];
	TAGGED_RCPT(0.00)[];
	ASN(0.00)[asn:54825, ipnet:139.178.80.0/21, country:US];
	MIME_TRACE(0.00)[0:+];
	ARC_NA(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[15];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	RCVD_TLS_LAST(0.00)[];
	FROM_HAS_DN(0.00)[];
	FREEMAIL_CC(0.00)[metafoo.de,linaro.org,amd.com,kernel.org,lwn.net,vger.kernel.org,lists.freedesktop.org,lists.linaro.org,gmail.com,analog.com];
	TO_DN_SOME(0.00)[];
	FROM_EQ_ENVFROM(0.00)[];
	RCVD_COUNT_TWO(0.00)[2];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	DKIM_TRACE(0.00)[kernel.org:+]
Message-ID-Hash: 57JWABU4IJQ25SLCD6X54MESI4DFOHEU
X-Message-ID-Hash: 57JWABU4IJQ25SLCD6X54MESI4DFOHEU
X-MailFrom: jic23@kernel.org
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: Lars-Peter Clausen <lars@metafoo.de>, Sumit Semwal <sumit.semwal@linaro.org>, Christian =?UTF-8?B?S8O2bmln?= <christian.koenig@amd.com>, Vinod Koul <vkoul@kernel.org>, Jonathan Corbet <corbet@lwn.net>, linux-doc@vger.kernel.org, linux-kernel@vger.kernel.org, dmaengine@vger.kernel.org, linux-iio@vger.kernel.org, linux-media@vger.kernel.org, dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org, Nuno =?UTF-8?B?U8Oh?= <noname.nuno@gmail.com>, Michael Hennerich <Michael.Hennerich@analog.com>
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH v5 5/8] iio: core: Add new DMABUF interface infrastructure
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/57JWABU4IJQ25SLCD6X54MESI4DFOHEU/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit


> > > +	iio_buffer_dmabuf_put(attach);
> > > +
> > > +out_dmabuf_put:
> > > +	dma_buf_put(dmabuf);  
> > As below. Feels like a __free(dma_buf_put) bit of magic would be a
> > nice to have.  
> 
> I'm working on the patches right now, just one quick question.
> 
> Having a __free(dma_buf_put) requires that dma_buf_put is first
> "registered" as a freeing function using DEFINE_FREE() in <linux/dma-
> buf.h>, which has not been done yet.  
> 
> That would mean carrying a dma-buf specific patch in your tree, are you
> OK with that?
Needs an ACK from appropriate maintainer, but otherwise I'm fine doing
so.  Alternative is to circle back to this later after this code is upstream.

> 
> Cheers,
> -Paul

> 

_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org
