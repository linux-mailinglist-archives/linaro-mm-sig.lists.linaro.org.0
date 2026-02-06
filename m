Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 2HBvGsgQ4WnoogAAu9opvQ
	(envelope-from <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>)
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 16 Apr 2026 18:39:36 +0200
X-Original-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [44.210.186.118])
	by mail.lfdr.de (Postfix) with ESMTPS id 05378411D01
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 16 Apr 2026 18:39:35 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 1D8A844C47
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 16 Apr 2026 16:39:35 +0000 (UTC)
Received: from mail-ed1-f54.google.com (mail-ed1-f54.google.com [209.85.208.54])
	by lists.linaro.org (Postfix) with ESMTPS id A9C383F8EC
	for <linaro-mm-sig@lists.linaro.org>; Fri,  6 Feb 2026 15:08:52 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=gmail.com header.s=20230601 header.b=D5+MZVHA;
	spf=pass (lists.linaro.org: domain of anuj1072538@gmail.com designates 209.85.208.54 as permitted sender) smtp.mailfrom=anuj1072538@gmail.com;
	arc=pass ("google.com:s=arc-20240605:i=1");
	dmarc=pass (policy=none) header.from=gmail.com
Received: by mail-ed1-f54.google.com with SMTP id 4fb4d7f45d1cf-659428faa2bso1226731a12.0
        for <linaro-mm-sig@lists.linaro.org>; Fri, 06 Feb 2026 07:08:52 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1770390532; cv=none;
        d=google.com; s=arc-20240605;
        b=PvXf9IvvMNp4i5Gx+OZzVjSMaSRC17j/kB8XCgkyNGarpqtGfiAcQ3yEyacIFZAL8n
         NOY81DaU9m0jXTFfVY1X2vQYsGn51TVNeUpQ8fHwTnW9ZGrA7jpYbDGM/wPv+AoqpTSe
         5H1XYVPnQNZez0zvx9TJzczV4RYAb6AZ+1/3tjDODNFXfFx3Y59ypWRrX4nCNp14e/h6
         nr2dwAs4L3vKXO+mEFJO+CZiYmnbHfpZpR4WU5fPkLhntAOUe3sxd+RGSWvWA5mS74Er
         OEe0MXeLyA1WZg26ni2fxfd0J0t1RdcrZ7kPfdvm+likaQklNeDr22pYKq6dPqcMJJPt
         NbUA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=IV2wXVQGGux8HdfCehvXRHDBtsaFVEwot7iSA9nA38k=;
        fh=h/Z5C0lNOq7GT84ZHuAlIo7tBOH98HAHwQxqfVbsgwk=;
        b=VIMhV/27pjUpeDrNkR4tfbwVYx630YYXzuSIRlnxMWUToZsJgdvYoKv3yI6sQ/bBGf
         pVVJjlkDEJFid8+GMLWu0uESn/RI+HWwN7D6WfLmvwPIRx4mo7ZNC6BW49f1dflE8+1n
         ypAM4/LTZ1GG36jhkMKxyATeeuqANzPQ+lwE0WJZ8e+aiwOPYlEeByI4gsG/sVSK10fw
         ZXProDGtTtvB+s2SbYTBfEWZWiNkXrYBnZIIWryikJOiBKgKh/Yli77bTQcBzs5Nsb3d
         Fi6GJ46o8z2IRT1v4YPnRlS7+N5/IkHBVvdgyPnn3a+syucWfTlIDCPD4g4JHVUss5jg
         Vqhg==;
        darn=lists.linaro.org
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1770390532; x=1770995332; darn=lists.linaro.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=IV2wXVQGGux8HdfCehvXRHDBtsaFVEwot7iSA9nA38k=;
        b=D5+MZVHAnnG9daaunelsEs/3oBv/AN+cDmu6iPBhgZYQjKDrFCPJusI9qbDz6Dn+cY
         qIvXsvznkykuWr7WrCcdpGjYx5JY+lAor/tctciUmmOpssDB/iui1Kwzi+j6/FXSV2Yi
         rt0GsQakl7seyBDCGKTtbYRprQzaE8DQzV+18v6R7iKeNTCOeC7mSWpUInFiXKJSDo4T
         lEDXHZTlCGV4JifRUGxj/1ZTYBhZscvX3yPRfAsUO9N+RuxnpgygckGMYh7b5E0KA+pQ
         wLkRti3urtJaavmFxe/bQa8V0fImRRHbPLjwit3ignVQuT8G516vr/HAayVglLMU2VMA
         BGhw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1770390532; x=1770995332;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=IV2wXVQGGux8HdfCehvXRHDBtsaFVEwot7iSA9nA38k=;
        b=Y65SzSSZJElXULtZkvmGI1kVUEZpncR6kLNjs2DcnKMZdWx5kIYyjwvYN8FvqpN2QY
         yQ4DeL9kHw56CGn99M7KsPhnVYy9n0C+s5bG3f/pZ11gNpOjUAqSm7SlLOAFtd3GKu1g
         IAqa0X/WLBFqL9K4w7I+hdfJhmyHM5TCskGv00mjC6UthGDjMK1Yce79ZKeADab0zo1I
         /BMmYAd9DHqqgUyLHpmnJIVcteJhawcmLVDzLwNfyhlyWQAt/OMifChG7CL/rqDQqIbD
         onAufiEgIqwmhCYGgZF6gei5KWy4JBXMUH4/APEfyQbm2dI6P/iKY7kQC3/OTev9RyCQ
         HRDg==
X-Forwarded-Encrypted: i=1; AJvYcCWm1FDoScBWzgh5di+gw95dhzSP7OF24/FrQc0eH/8rPmO6c3yAyJvaooD3O6F3XkKxZCFdfiBVqQBG0zXS@lists.linaro.org
X-Gm-Message-State: AOJu0YwzL60PkuhiDgNUrZDT+5esRtr1wqcIYzYrY6T1fCx+OPq3qiX2
	sDB04DEuA0URgC40RAP8WJ3+4G+74hHvjXAsa/fxMgwt9za6DnyMfrX8lawk7QUfCCQLBxSiHi0
	qLCKWcLivJWzZrwR38gDhC3wZCIKh9g==
X-Gm-Gg: AZuq6aL7TaSd0lP0vVWvSUyjDpbjVpejyl8zGWBqXJnwKC/MOf9QE5gP7CvuzFWPLlr
	NULRLz3nO5z9ZRmb7pDYOEfdZm/4EN/7TvtGRu+WEdAzs6uhHk/xtJV2lcTPf77MDvgf+rkqsIR
	vPIxHf0oehHr8zsUyJ4w19Eo7Iidh2bcwwc/DINuJXqaYvAAIfbnWgukFK9Pl5k5LwX2opiwyUh
	zvCvynACWPP70Nh5j8UhJbUoaXor8TnEYxjKIy9rPsFNu5YR8HhjMPx2bhpkpRvQhltHoMBQixP
	vzA8wLmlgFbjvopbPIZbintE69I0A3tJ69k7mcJeewVS5gDZxkuuYxccgw==
X-Received: by 2002:a05:6402:278c:b0:64c:69e6:ad3e with SMTP id
 4fb4d7f45d1cf-65984192b46mr1665335a12.33.1770390531549; Fri, 06 Feb 2026
 07:08:51 -0800 (PST)
MIME-Version: 1.0
References: <cover.1763725387.git.asml.silence@gmail.com> <51cddd97b31d80ec8842a88b9f3c9881419e8a7b.1763725387.git.asml.silence@gmail.com>
In-Reply-To: <51cddd97b31d80ec8842a88b9f3c9881419e8a7b.1763725387.git.asml.silence@gmail.com>
From: Anuj gupta <anuj1072538@gmail.com>
Date: Fri, 6 Feb 2026 20:38:13 +0530
X-Gm-Features: AZwV_QhSbcTXF1vOFniIsckdgf0WRvSvELPcT6UCzLuL9aGCZaYlbLnCwaCB9sE
Message-ID: <CACzX3AupFeAy0-pPsZ51ixd7qW++LYYjiKBZ3aK5Y2JDrB_JWw@mail.gmail.com>
To: Pavel Begunkov <asml.silence@gmail.com>
X-Spamd-Bar: ----
X-MailFrom: anuj1072538@gmail.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
Message-ID-Hash: RCSKU2JBSXZMNDPMANVKAZUM2XRBWUXU
X-Message-ID-Hash: RCSKU2JBSXZMNDPMANVKAZUM2XRBWUXU
X-Mailman-Approved-At: Thu, 16 Apr 2026 16:36:08 +0000
CC: linux-block@vger.kernel.org, io-uring@vger.kernel.org, Vishal Verma <vishal1.verma@intel.com>, tushar.gohad@intel.com, Keith Busch <kbusch@kernel.org>, Jens Axboe <axboe@kernel.dk>, Christoph Hellwig <hch@lst.de>, Sagi Grimberg <sagi@grimberg.me>, Alexander Viro <viro@zeniv.linux.org.uk>, Christian Brauner <brauner@kernel.org>, Andrew Morton <akpm@linux-foundation.org>, Sumit Semwal <sumit.semwal@linaro.org>, =?UTF-8?Q?Christian_K=C3=B6nig?= <christian.koenig@amd.com>, linux-kernel@vger.kernel.org, linux-nvme@lists.infradead.org, linux-fsdevel@vger.kernel.org, linux-media@vger.kernel.org, dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [RFC v2 05/11] block: add infra to handle dmabuf tokens
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/RCSKU2JBSXZMNDPMANVKAZUM2XRBWUXU/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
X-Spamd-Result: default: False [3.09 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:google.com:reject}];
	DATE_IN_PAST(1.00)[1657];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+mx:c];
	MIME_GOOD(-0.10)[text/plain];
	DMARC_POLICY_SOFTFAIL(0.10)[gmail.com : SPF not aligned (relaxed), No valid DKIM,none];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	FREEMAIL_FROM(0.00)[gmail.com];
	RCPT_COUNT_TWELVE(0.00)[20];
	RCVD_COUNT_THREE(0.00)[3];
	FORGED_SENDER_MAILLIST(0.00)[];
	FREEMAIL_TO(0.00)[gmail.com];
	MIME_TRACE(0.00)[0:+];
	TAGGED_FROM(0.00)[lists,linaro-mm-sig=lfdr.de];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[anuj1072538@gmail.com,linaro-mm-sig-bounces@lists.linaro.org];
	TO_DN_SOME(0.00)[];
	TAGGED_RCPT(0.00)[linaro-mm-sig];
	MISSING_XM_UA(0.00)[];
	ASN(0.00)[asn:14618, ipnet:44.192.0.0/11, country:US];
	NEURAL_SPAM(0.00)[0.771];
	DBL_BLOCKED_OPENRESOLVER(0.00)[linaro.org:email,lists.linaro.org:helo,lists.linaro.org:rdns,mail.gmail.com:mid]
X-Rspamd-Queue-Id: 05378411D01
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

> +
> +       dma_fence_init(&fence->base, &blk_mq_dma_fence_ops, &fence->lock,
> +                       token->fence_ctx, atomic_inc_return(&token->fence_seq));
> +       spin_lock_init(&fence->lock);

nit lock should be initialized before handing its address to
dma_fence_init()
_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org
