Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id oMV0NCPbcGnCaQAAu9opvQ
	(envelope-from <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>)
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 21 Jan 2026 14:56:51 +0100
X-Original-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [44.210.186.118])
	by mail.lfdr.de (Postfix) with ESMTPS id 704E258053
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 21 Jan 2026 14:56:51 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 862D140150
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 21 Jan 2026 13:56:50 +0000 (UTC)
Received: from mail-qk1-f169.google.com (mail-qk1-f169.google.com [209.85.222.169])
	by lists.linaro.org (Postfix) with ESMTPS id 1E9AF3F70E
	for <linaro-mm-sig@lists.linaro.org>; Wed, 21 Jan 2026 13:56:45 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=ziepe.ca header.s=google header.b=gzYZSWHO;
	spf=pass (lists.linaro.org: domain of jgg@ziepe.ca designates 209.85.222.169 as permitted sender) smtp.mailfrom=jgg@ziepe.ca;
	dmarc=none
Received: by mail-qk1-f169.google.com with SMTP id af79cd13be357-8c6b16bd040so488947785a.1
        for <linaro-mm-sig@lists.linaro.org>; Wed, 21 Jan 2026 05:56:45 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ziepe.ca; s=google; t=1769003805; x=1769608605; darn=lists.linaro.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=Avz0zhItUvROQy3aeBayHRvtD6/6o32+NQiPJhA08ug=;
        b=gzYZSWHOEneApBnEt1hhTNRIbGQRI5OxVdJUkysKS0oaFbqV/LC/tJrQERx7ZBYheG
         doJZ6+JaTC92vvkdt9onZaGSPfAFJiBJH5tnD2vikOigZnJUWQZTfLFGpPxTSuXwLeQ3
         4ECrZ1+02WsAC/oQGBdOS8balr35DUmBIWX1ecrTzmbjANe9het/vddqDLY7vbzao2fi
         ca5L29PYP1c9Fp8YLRJ3qCP7luHVQ5fbiyhhf7ZkYQ2iE0hhMsPKxRzCmVMf9mAMi/+D
         7Pn++tY0a1JOY6cLt15fnfiylAoWRv4d9acZh77Ie9cAZBe5eqrXcOLlHhBJ3SvLO8DZ
         5OAA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1769003805; x=1769608605;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=Avz0zhItUvROQy3aeBayHRvtD6/6o32+NQiPJhA08ug=;
        b=v4ndm1aQunpKJAtgaStkJCgJn66nxxSBGDGRyqmmBXgBkF3vpL3J7oed//kX+KBvDK
         KyPAq9LzJP76PN07to6Y0Z5lOLZN8UGtIFpe0hGHCQ6R7rH3MBMB47prxuHW9+Og4bWa
         RCv6gHN/taKqXbvWvjvNvahByr/EYOA+9/5ghJnm8UU7/k7GoC8/Zg/1vcpmy8cOVoDB
         0+SijrqYYDZxBAs+Se7F7HVMXdIz6xaKgLHpZN93Pohdw6l7JetTZhczXwy3MU+SohqP
         GNRRNbfnw5bFfawj+RJGS9d6xacOziQXpJYD45uDbgURW7P9IXC/wjElCuRyB/dzfpaw
         zZGQ==
X-Forwarded-Encrypted: i=1; AJvYcCWKQtsRpzGxfR/GRtdytXa/dHomNC77WsESu4KR8JvQIsjgrv8Djigo/l6x+iynA34N+H0vRx7DTH3j6ju3@lists.linaro.org
X-Gm-Message-State: AOJu0YxWWn235QQcG0j06a/5p2yFaBGChu3vR+qT1NdAtnRYQLrDk3DF
	i1glttBC1dEpsvdLQARXnPX+KfwbQJjYu78hy6tvzY/VmzGoTnPp3eRJ7UdKM2NFFSM=
X-Gm-Gg: AZuq6aK7NbUE3Hl49qivd2Rk1oHmjAUVe3bmQ+0eMFEoonLh2zv7smQqKTJNWEJdkC1
	aKELR8jVyKCh3svqwXnbVFHfecNGJLl4xlrKV8ekmo1kEEptB92iprfHIX2QtV56UF0dcKZS4UB
	FeeYLrmqW/9DbqoRuu22wj3/s/WzHf8c4Twog19idSlltCGc7Ci7EH/RAU1Oguyb9f7AK4lSrCK
	Sow6qyFCiaoFXWUxWRoCjR8y8kpUEy6vI3srPy1Ldpxymm6BEVjy//opfekPRMBD3tTN/Ki+6Fa
	IFFpyj9J5yXg6pkeZTaTjcy+nVjMap+yQ9a4YzBfMFeX+CtTfM4J9+vnFembhdlxvJ/hzZyOybR
	TYGjzyQfM1phJ69YqOiBPaS8Gj/817lhWKnyYRyvyVnv4SEmOvmizgbdNcj7mhne/qjSBA45zo+
	dPQ4hYD0unPOWxdWlHxIvsnTw6tbXoNJyztM5P5b3cezstG6M0VC7QKLiHlQo6K5JBm6g=
X-Received: by 2002:a05:620a:1013:b0:8c6:a814:726b with SMTP id af79cd13be357-8c6a814748dmr1789323485a.75.1769003804452;
        Wed, 21 Jan 2026 05:56:44 -0800 (PST)
Received: from ziepe.ca (hlfxns017vw-142-162-112-119.dhcp-dynamic.fibreop.ns.bellaliant.net. [142.162.112.119])
        by smtp.gmail.com with ESMTPSA id 6a1803df08f44-8942e6a9d97sm125563246d6.34.2026.01.21.05.56.43
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 21 Jan 2026 05:56:43 -0800 (PST)
Received: from jgg by wakko with local (Exim 4.97)
	(envelope-from <jgg@ziepe.ca>)
	id 1viYhP-00000006E7g-1MyT;
	Wed, 21 Jan 2026 09:56:43 -0400
Date: Wed, 21 Jan 2026 09:56:43 -0400
From: Jason Gunthorpe <jgg@ziepe.ca>
To: Leon Romanovsky <leon@kernel.org>
Message-ID: <20260121135643.GA961572@ziepe.ca>
References: <20260108-dmabuf-export-v1-0-6d47d46580d3@nvidia.com>
 <20260108-dmabuf-export-v1-1-6d47d46580d3@nvidia.com>
 <20260120181520.GS961572@ziepe.ca>
 <20260121083246.GV13201@unreal>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20260121083246.GV13201@unreal>
X-Spamd-Bar: ---
Message-ID-Hash: BWCLOJI2652OJHNKZJEIQDKMKKS4S25C
X-Message-ID-Hash: BWCLOJI2652OJHNKZJEIQDKMKKS4S25C
X-MailFrom: jgg@ziepe.ca
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: Edward Srouji <edwards@nvidia.com>, Sumit Semwal <sumit.semwal@linaro.org>, Christian =?utf-8?B?S8O2bmln?= <christian.koenig@amd.com>, linux-kernel@vger.kernel.org, linux-rdma@vger.kernel.org, linux-media@vger.kernel.org, dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org, Yishai Hadas <yishaih@nvidia.com>
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH rdma-next 1/2] RDMA/uverbs: Add DMABUF object type and operations
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/BWCLOJI2652OJHNKZJEIQDKMKKS4S25C/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
X-Spamd-Result: default: False [0.49 / 15.00];
	R_DKIM_REJECT(1.00)[ziepe.ca:s=google];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+mx:c];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FROM_HAS_DN(0.00)[];
	TAGGED_FROM(0.00)[lists,linaro-mm-sig=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	ARC_NA(0.00)[];
	DKIM_TRACE(0.00)[ziepe.ca:-];
	DMARC_NA(0.00)[ziepe.ca];
	TO_DN_SOME(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	ASN(0.00)[asn:14618, ipnet:44.192.0.0/11, country:US];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	FROM_NEQ_ENVFROM(0.00)[jgg@ziepe.ca,linaro-mm-sig-bounces@lists.linaro.org];
	MISSING_XM_UA(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	TAGGED_RCPT(0.00)[linaro-mm-sig];
	RCPT_COUNT_SEVEN(0.00)[10];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[lists.linaro.org:rdns,lists.linaro.org:helo,linaro.org:email]
X-Rspamd-Queue-Id: 704E258053
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

On Wed, Jan 21, 2026 at 10:32:46AM +0200, Leon Romanovsky wrote:
> > > +static int uverbs_dmabuf_attach(struct dma_buf *dmabuf,
> > > +				struct dma_buf_attachment *attachment)
> > > +{
> > > +	struct ib_uverbs_dmabuf_file *priv = dmabuf->priv;
> > > +
> > > +	if (!attachment->peer2peer)
> > > +		return -EOPNOTSUPP;
> > > +
> > > +	if (priv->revoked)
> > > +		return -ENODEV;
> > 
> > This should only be checked in map
> 
> I disagree with word "only", the more accurate word is "too". There is
> no need to allow new importer attach if this exporter is marked as
> revoked.

It must check during map, during attach as well is redundant and a bit
confusing.

> > This should also eventually call the new revoke testing function Leon
> > is adding
> 
> We will add it once my series will be accepted.

It should also refuse pinned importers with an always fail pin op
until we get that done. This is a case like VFIO where the lifecycle
is more general and I don't want to accidently allow things that
shouldn't work.

Jason
_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org
