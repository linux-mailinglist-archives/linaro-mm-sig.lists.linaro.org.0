Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id tyVSJcRbJ2pjvAIAu9opvQ
	(envelope-from <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>)
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 09 Jun 2026 02:18:12 +0200
X-Original-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [44.210.186.118])
	by mail.lfdr.de (Postfix) with ESMTPS id 1DF3965B4D9
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 09 Jun 2026 02:18:12 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=fail ("body hash did not verify") header.d=ziepe.ca header.s=google header.b="gX6Ud/8+";
	spf=pass (mail.lfdr.de: domain of "linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org" designates 44.210.186.118 as permitted sender) smtp.mailfrom="linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org";
	dmarc=none
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 0A5BD401B6
	for <lists+linaro-mm-sig@lfdr.de>; Tue,  9 Jun 2026 00:18:11 +0000 (UTC)
Received: from mail-qt1-f180.google.com (mail-qt1-f180.google.com [209.85.160.180])
	by lists.linaro.org (Postfix) with ESMTPS id 45E1F3F7B8
	for <linaro-mm-sig@lists.linaro.org>; Tue,  9 Jun 2026 00:18:01 +0000 (UTC)
Received: by mail-qt1-f180.google.com with SMTP id d75a77b69052e-5177ad0cc67so39585461cf.0
        for <linaro-mm-sig@lists.linaro.org>; Mon, 08 Jun 2026 17:18:01 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ziepe.ca; s=google; t=1780964281; x=1781569081; darn=lists.linaro.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=MJrcrd97RrpK34MMckrW+u7pfPo1y7Snw62FaBcwTvE=;
        b=gX6Ud/8+tvmaM287OvUz88FVA24g+q4mdffUHps62IFOTLJJZobZ+46KU7n3hfbY3G
         R96XQG0AxtCDybXU6qgHjcsk5jrlIFrkklIHHVW9pSRNTCZjJQ3baFoiz9jFxwFhD4HR
         gb2DLDgzi0GMhf+t+QpVJHykZVu+8tZGIuiM8wpxZZ6/p5G11twaiEng0bG0T3nMuAPU
         d1nbG5Yd1hZz4Gsw4lbXgUTiFAZrDTCfoTDi4/8eP0YBR4qOoo/HR8bMXc4FE4nE/leO
         lpJI9eO21lgrxFtQ7Lxbxn2J6vzTqXipCvcX2iOUpug4TaliRkPd/X+xYeuosIeNP69x
         B7+g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1780964281; x=1781569081;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=MJrcrd97RrpK34MMckrW+u7pfPo1y7Snw62FaBcwTvE=;
        b=ZPEsH8orCBQolVpeB8/63twryRfUu5Imz/whR3q69QaBlXOoZFtc73PvqDNHlD6lXJ
         zH/zDYk5JC/QICU0dnm+aWDXh++xbh/0hZ2jMLiaY3NsM0GeWzGubsU7ap+tsqUecg3R
         +QrSAFHzz7G/WgUXF6M+fDsybiq8UgH7onIjOapjD0aWD4D6KN0b8kbpfrIzlS6jL7JH
         9UvAKirx7O4gUMKcQfFvr0ggwX6m5XFiS9NozlDzZlrqSM28xQOmsAYRTwNzqjaDRYZQ
         NEZMz+Ci0En+wQdQ+CZhIVHFnWPoPdLJ8j2+gKB8mwWf6/Xl/LgSaMHsa+JVKxy6sPK8
         m0gg==
X-Forwarded-Encrypted: i=1; AFNElJ8nKj2mRmrIKamuB/4UGGaOy/Nlb2fwO2fA9CeLPA4wiRc/pOO+s+KaKYmrsiAEclMiCJ5B0pqBnkAhLDPJ@lists.linaro.org
X-Gm-Message-State: AOJu0YxHB2g1b4VUELBSIiY4zby7w+rAVECAUhStTEoZmHof7SWBInzv
	WgXaaVqoB3ZJi37FS8xkSfmKkGdjvvA2nm4bd0dtIwW5Op9dTYoS8eVsZIrVdNjwwX0=
X-Gm-Gg: Acq92OEuL21U10cSOF3lWWITGdUggx8eLqnitT9wuKNy5EUSpGGU/yoGmxaDsMofOGU
	HsEIpYDhIPo3iJt6c3CtCyyd0Yrzx3Cda6pi3Anjzgg5+TUKiY4R36hG95XaTZSmoYuY0gU5sxP
	o+Zhg5Lz/weyQr3lVe9SPT1zu6X/mDtQKyQGtoBTSHhkJk526VjSq0WAWPXIJ32xfQ29glYZWG0
	IeF5eeuRvFw0RVOfvO324t6L7bVqX22jXatZ1RhrGb0irnU9GE4PBgVp3/eh/WEl+ZgpMFMc0ax
	a53uvxgl+RZygJyI3kZuKDkni+Pp4IQovc9MUHcm8/K0z6ob4B0Fdz2ppF8vPqUq7jm58xo8aDo
	e6jbV9+IUEy3Cfc4Qx3hsEJL4gqha7yzenAktiWuyq0cEZvYWJZQ7Jk2KSqOyw8WxbgTc4hcBOb
	y2qZPrWpPPVDmlvm+xjwAc6XoX3/FfvBEgxS0vpeLxcq4DrRaRI4glMpWfDM7E2r+tixbsme+kU
	puPbnHVGCIfezUrfVsebRczq8w=
X-Received: by 2002:a05:622a:1b15:b0:517:8f31:df0a with SMTP id d75a77b69052e-51795a08705mr257391641cf.8.1780964280672;
        Mon, 08 Jun 2026 17:18:00 -0700 (PDT)
Received: from ziepe.ca (crbknf0213w-47-54-130-67.pppoe-dynamic.high-speed.nl.bellaliant.net. [47.54.130.67])
        by smtp.gmail.com with ESMTPSA id d75a77b69052e-51775c4d7absm165652141cf.11.2026.06.08.17.17.59
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 08 Jun 2026 17:17:59 -0700 (PDT)
Received: from jgg by wakko with local (Exim 4.97)
	(envelope-from <jgg@ziepe.ca>)
	id 1wWkAI-00000000rFN-46mU;
	Mon, 08 Jun 2026 21:17:58 -0300
Date: Mon, 8 Jun 2026 21:17:58 -0300
From: Jason Gunthorpe <jgg@ziepe.ca>
To: Ankit Soni <Ankit.Soni@amd.com>
Message-ID: <20260609001758.GG2764304@ziepe.ca>
References: <20260526111034.4079-1-Ankit.Soni@amd.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20260526111034.4079-1-Ankit.Soni@amd.com>
X-Spamd-Bar: ---
Message-ID-Hash: 2SSGGHIEW4W7FKYOB6OMQR6U27LVPED5
X-Message-ID-Hash: 2SSGGHIEW4W7FKYOB6OMQR6U27LVPED5
X-MailFrom: jgg@ziepe.ca
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: Kevin Tian <kevin.tian@intel.com>, Joerg Roedel <joro@8bytes.org>, Will Deacon <will@kernel.org>, Robin Murphy <robin.murphy@arm.com>, Sumit Semwal <sumit.semwal@linaro.org>, Christian =?utf-8?B?S8O2bmln?= <christian.koenig@amd.com>, Leon Romanovsky <leon@kernel.org>, Vasant Hegde <vasant.hegde@amd.com>, iommu@lists.linux.dev, dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org, linux-media@vger.kernel.org, linux-kernel@vger.kernel.org
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH] iommufd: take dma_resv lock before dma_buf_unpin() in release path
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/2SSGGHIEW4W7FKYOB6OMQR6U27LVPED5/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
X-Rspamd-Action: no action
X-Spamd-Result: default: False [0.49 / 15.00];
	R_DKIM_REJECT(1.00)[ziepe.ca:s=google];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+mx];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[lists,linaro-mm-sig=lfdr.de];
	DMARC_NA(0.00)[ziepe.ca];
	FORGED_RECIPIENTS(0.00)[m:Ankit.Soni@amd.com,m:kevin.tian@intel.com,m:joro@8bytes.org,m:will@kernel.org,m:robin.murphy@arm.com,m:sumit.semwal@linaro.org,m:christian.koenig@amd.com,m:leon@kernel.org,m:vasant.hegde@amd.com,m:iommu@lists.linux.dev,m:dri-devel@lists.freedesktop.org,m:linaro-mm-sig@lists.linaro.org,m:linux-media@vger.kernel.org,m:linux-kernel@vger.kernel.org,s:lists@lfdr.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	ARC_NA(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[14];
	DKIM_TRACE(0.00)[ziepe.ca:-];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER(0.00)[jgg@ziepe.ca,linaro-mm-sig-bounces@lists.linaro.org];
	FORWARDED(0.00)[lists@lfdr.de];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	ASN(0.00)[asn:14618, ipnet:44.192.0.0/11, country:US];
	TO_DN_SOME(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	FROM_NEQ_ENVFROM(0.00)[jgg@ziepe.ca,linaro-mm-sig-bounces@lists.linaro.org];
	FROM_HAS_DN(0.00)[];
	MISSING_XM_UA(0.00)[];
	ALIAS_RESOLVED(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[linaro-mm-sig];
	DBL_BLOCKED_OPENRESOLVER(0.00)[amd.com:email]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 1DF3965B4D9

On Tue, May 26, 2026 at 11:10:34AM +0000, Ankit Soni wrote:

> Take the dma_resv lock around dma_buf_unpin() in iopt_release_pages(),
> matching the iopt_map_dmabuf() convention. dma_buf_detach() acquires the
> reservation lock internally, so it must remain outside the locked region.
> 
> Fixes: 8c5f9645c389 ("iommufd: Add dma_buf_pin()")
> Reported-by: Ankit Soni <Ankit.Soni@amd.com>
> Signed-off-by: Ankit Soni <Ankit.Soni@amd.com>
> ---
>  drivers/iommu/iommufd/pages.c | 2 ++
>  1 file changed, 2 insertions(+)

Applied to for-next

Thanks,
Jason
_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org
