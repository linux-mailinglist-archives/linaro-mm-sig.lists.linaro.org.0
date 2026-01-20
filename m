Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id KLmGJPTGb2myMQAAu9opvQ
	(envelope-from <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>)
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 20 Jan 2026 19:18:28 +0100
X-Original-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [44.210.186.118])
	by mail.lfdr.de (Postfix) with ESMTPS id 16515494F0
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 20 Jan 2026 19:18:28 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 0BC374014A
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 20 Jan 2026 18:18:27 +0000 (UTC)
Received: from mail-qv1-f48.google.com (mail-qv1-f48.google.com [209.85.219.48])
	by lists.linaro.org (Postfix) with ESMTPS id 772B43F736
	for <linaro-mm-sig@lists.linaro.org>; Tue, 20 Jan 2026 18:18:21 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=ziepe.ca header.s=google header.b=ajskhQmf;
	spf=pass (lists.linaro.org: domain of jgg@ziepe.ca designates 209.85.219.48 as permitted sender) smtp.mailfrom=jgg@ziepe.ca;
	dmarc=none
Received: by mail-qv1-f48.google.com with SMTP id 6a1803df08f44-8946a794e4fso6867116d6.2
        for <linaro-mm-sig@lists.linaro.org>; Tue, 20 Jan 2026 10:18:21 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ziepe.ca; s=google; t=1768933101; x=1769537901; darn=lists.linaro.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=UjKhtF6uFrGGz9QpG86rUrUwPRn2VxIJfZmcip97T7s=;
        b=ajskhQmf14kPkam6i48uPvYR5hDCQJMwMC1QmgnKnnuHNe8pS18dGZnw62gUh73e8v
         JLEN5/c1i77ilAnNQJk2Cjos4K84LZfURfXZ6lg/Y2NR56tPodqC0XiBkFk99E69MAaP
         tle9oeyIXv4GoioH8wXGsiOygc7dyDTx+ZkgBif1S3t2egNx8Izetd5JGnyqlQuAVIH7
         cXu4yfkcg2nt88v3sjCJfXRDciOFwg2hAKkwH7Q9W3zwDk6w4q9dShOvsViMzijkYups
         DhW/fvyyp7dtRdBAd6X/RSgr8cWbw4dMsR5pRBSI/vAJ7oFkI9xyGhvyBGY/+Gn2OFwA
         mmOA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1768933101; x=1769537901;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=UjKhtF6uFrGGz9QpG86rUrUwPRn2VxIJfZmcip97T7s=;
        b=bWYoQMlr9Cp0HwHUWQ7DQE1kN30JyYr0E2e+ZQ9DOlGUBO4v1sCAjwyVwtk5TRbBdm
         5O9IIRRNLqp921387mTO0PTGdLGfFGXZdBSarWf7mahATIm5jkxrmFJf7c7FXaL0Xs//
         Gw1QpdLNXa+ZlosF7KRHJmFG8xdxye1tsCz9cf2YRsVPXJsEJtCivsVaVhI57Klx2utv
         0Wx8T9xXVY9UXLsR3GZWIn7rpUpYUFLT83C5Joz1M8BI6EDfTbuSwoHsE/qbUZd9571B
         +NALZtrTu1J8WzMYaaHEH5XFvjDv99zSICLMHvhkWTdq5Y8k/Jcc2vyIVGKqrTtwgv66
         qC3Q==
X-Forwarded-Encrypted: i=1; AJvYcCX2uT5s8l2CPfpGoQIb9JyWKZ9Vnn/C1GIlR3jGo8x6/dHlgDf367lW7G+qr02NvLIjYkx9a9kKIIAW6WK6@lists.linaro.org
X-Gm-Message-State: AOJu0YzLCIojudnWjFAAG+uuKwjAhUVAwmNiw7eGCDqHE460gcD3n4vl
	BcVu3hC+CUWKePkFbldTgCEvsTlvedYMg9RJ0kJWU2UFCTLwK4ksxfOHWTc1nkD0s+E=
X-Gm-Gg: AZuq6aI4jXK9MFQx5e2gzfC66U4ObsdFmC8ZokBpMo3br4R5lv07AX5v+kWqWrbSyCY
	UhALU6os8Lx1cbrFaztOuIwhBWGLh/yDcuifkOVFa0XcMBennCy6T+sjsCo9XfIHJ8hEyU9Voq9
	kOLhvdndNfevQAXTZW/PrpPz7uhZ6bzjotMHKYBRMOLYruTNOoQx/j2DP02w9fR7g9iPURZqXEP
	ZRepIjPI/fOdxNj2MM3xQRL9DOiErNE0W9t/IKMvxcW0G0E6pDnW9JQ1aphQJlAjk9rHVyPAdBG
	F1xJGMaNkRTuO28syUmoWHwPLZUvLyf2WTrh3HscqGl2p0dCrNmoA+rAuLZDZ7xYcfxaSqVjzfM
	YimmawIXkr2q2qAoPc9530cMOGF0P15Vm6KLS3jc6X3JyfUlITBMJ8IksM5E4Ccg9CvzEa3dYjF
	p1jRX1zfoWOasNBWK2eE3NlkG2SxMA0iEDtSpMBV/Hc1uO8wNQDzAYRGbjU1534cyoCps=
X-Received: by 2002:a05:6214:1301:b0:88e:6db7:f999 with SMTP id 6a1803df08f44-8942e0c342cmr235499176d6.6.1768933100910;
        Tue, 20 Jan 2026 10:18:20 -0800 (PST)
Received: from ziepe.ca (hlfxns017vw-142-162-112-119.dhcp-dynamic.fibreop.ns.bellaliant.net. [142.162.112.119])
        by smtp.gmail.com with ESMTPSA id 6a1803df08f44-8942e5e535dsm114108506d6.4.2026.01.20.10.18.20
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 20 Jan 2026 10:18:20 -0800 (PST)
Received: from jgg by wakko with local (Exim 4.97)
	(envelope-from <jgg@ziepe.ca>)
	id 1viGJ1-00000005aZS-41Vi;
	Tue, 20 Jan 2026 14:18:19 -0400
Date: Tue, 20 Jan 2026 14:18:19 -0400
From: Jason Gunthorpe <jgg@ziepe.ca>
To: Edward Srouji <edwards@nvidia.com>
Message-ID: <20260120181819.GT961572@ziepe.ca>
References: <20260108-dmabuf-export-v1-0-6d47d46580d3@nvidia.com>
 <20260108-dmabuf-export-v1-2-6d47d46580d3@nvidia.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20260108-dmabuf-export-v1-2-6d47d46580d3@nvidia.com>
X-Spamd-Bar: ---
Message-ID-Hash: UWMDSLJ2TK4HIN6U5TLEV4BGTGYRCEGA
X-Message-ID-Hash: UWMDSLJ2TK4HIN6U5TLEV4BGTGYRCEGA
X-MailFrom: jgg@ziepe.ca
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: Leon Romanovsky <leon@kernel.org>, Sumit Semwal <sumit.semwal@linaro.org>, Christian =?utf-8?B?S8O2bmln?= <christian.koenig@amd.com>, linux-kernel@vger.kernel.org, linux-rdma@vger.kernel.org, linux-media@vger.kernel.org, dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org, Yishai Hadas <yishaih@nvidia.com>
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH rdma-next 2/2] RDMA/mlx5: Implement DMABUF export ops
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/UWMDSLJ2TK4HIN6U5TLEV4BGTGYRCEGA/>
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
	DBL_BLOCKED_OPENRESOLVER(0.00)[linaro.org:email,ziepe.ca:mid]
X-Rspamd-Queue-Id: 16515494F0
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

On Thu, Jan 08, 2026 at 01:11:15PM +0200, Edward Srouji wrote:
> +static int phys_addr_to_bar(struct pci_dev *pdev, phys_addr_t pa)
> +{
> +	resource_size_t start, end;
> +	int bar;
> +
> +	for (bar = 0; bar < PCI_STD_NUM_BARS; bar++) {
> +		/* Skip BARs not present or not memory-mapped */
> +		if (!(pci_resource_flags(pdev, bar) & IORESOURCE_MEM))
> +			continue;
> +
> +		start = pci_resource_start(pdev, bar);
> +		end = pci_resource_end(pdev, bar);
> +
> +		if (!start || !end)
> +			continue;
> +
> +		if (pa >= start && pa <= end)
> +			return bar;
> +	}

Don't we know which of the two BARs the mmap entry came from based on
its type? This seems like overkill..

Jason
_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org
