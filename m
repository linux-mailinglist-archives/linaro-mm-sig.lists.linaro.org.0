Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id uIcHLHbIrmlwIwIAu9opvQ
	(envelope-from <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>)
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 09 Mar 2026 14:17:42 +0100
X-Original-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [44.210.186.118])
	by mail.lfdr.de (Postfix) with ESMTPS id 4985B2398DE
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 09 Mar 2026 14:17:42 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 459403F719
	for <lists+linaro-mm-sig@lfdr.de>; Mon,  9 Mar 2026 13:17:41 +0000 (UTC)
Received: from mail-qk1-f172.google.com (mail-qk1-f172.google.com [209.85.222.172])
	by lists.linaro.org (Postfix) with ESMTPS id ACB953F719
	for <linaro-mm-sig@lists.linaro.org>; Mon,  9 Mar 2026 13:17:38 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=ziepe.ca header.s=google header.b=MOOftfAR;
	spf=pass (lists.linaro.org: domain of jgg@ziepe.ca designates 209.85.222.172 as permitted sender) smtp.mailfrom=jgg@ziepe.ca;
	dmarc=none
Received: by mail-qk1-f172.google.com with SMTP id af79cd13be357-8cd8d97aa2eso87385785a.3
        for <linaro-mm-sig@lists.linaro.org>; Mon, 09 Mar 2026 06:17:38 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ziepe.ca; s=google; t=1773062258; x=1773667058; darn=lists.linaro.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=0gIWGbCJp5nwkRBHpqTWfAQJnaj/D8oDAfy5HSusAOA=;
        b=MOOftfARWDd2gMst9sKyoyjvVFLAKLfrTbRKsLCgdN557Ok4LDMvEj2ad8F1vMl03w
         Uf3IVN2EWFMgyUPuJqWoTEzDOe+WkXvLg8BhekIQkRDyhIQK525dGnisyNFurbiHSp97
         YPBO9V2L84SKN0Iw/9rcSMskqxHKYeRrjmElPkpU1K+YRqwGgYhgAztOGBP8yJPscOGD
         gk3vNKDcXAHesjwmBcbwvbb27lpAwbcp0OSvdPbj/bvJX4mNv5DK/YKIdFOcFSDlKJ9T
         8NbSTNLO4AQZHsOIUYzQS3+mS4mBHUcgdYnlNU/oEMbxsi8mEFIitsatDcY5PoaLi7fi
         YoXg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1773062258; x=1773667058;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=0gIWGbCJp5nwkRBHpqTWfAQJnaj/D8oDAfy5HSusAOA=;
        b=pnfIruWt23Vphzbxtsv2ajRBLOIvWiIje4Pma5gjsLZcK/1wLFgiimn8lxXScafGl5
         8/nlUKQSkH6o3OrwYnqMaV6ehy2r+ijSlYaV+Nl9kOAuU5ztot3yBIATJPht/cxKY8O2
         YeBFFBVLMSKsDsOkSd9YTomraajTNBOGsYWblmsORi842ijXkBmd1uyBPGk7hRe7TbJ0
         vwToBzLRsyQvzndslSmGJnxdI2Ko71DgTxm0LKCMgJEOKo0pPk05uxlbTV/WFvPtmBEE
         NfHa4GyDJe+4J5/UiTvPY7vS85eOvC0i6fAxBM0iXtzE0mat90uPaYjjzp19m8BFyo47
         Y7Tw==
X-Forwarded-Encrypted: i=1; AJvYcCX38kmqS3JLRWNBnU846eEtDnFtphNyPDJUph127fdVTBkj+BwrC1X4BzE30K20l/bQ3XR4tCRT2JvGzaO3@lists.linaro.org
X-Gm-Message-State: AOJu0Yzptq2BLDaMb3jHM/HV1ndkjDbYiiKFVA/jpZ/PLzWprMPlDl4r
	ylqkmEK7lyfhgsO54lN5pI258Ab2NuhUVCsTKOAvjvNrrZ0Np7mMrZYeHXM0zkEN3PY=
X-Gm-Gg: ATEYQzzM17VT4EsAwBB2KinjtwG8twuHQqH1W5ii3jly87cAD7ub6ihtDYimD0KsZu5
	xMwKXTPkv0jso9LDWi+Zj97mzlrcjLkWUj6NoOarury72k1wZcdLp6orsRPNR0W9B6GH2iQCLey
	w9bcYFfXcStURFWUxi5aS+ipNxf00AWohI0sC/nDYGKG+oCPTW6A4vSvuj8mo92rlmGvRlilVOI
	/8aJmnP3owXMrU7bwWfX0wYSwoz+TrrQ0P0A+8/SA9sbg8TwlCHca1aDR7Bw2gDWIKKNLY3eSYN
	KdB7iw7NFMXHfnLXLpV+6dOVKo6qbhVcXePXP1BgGiRACKYJ3x0bH5J7J+t2pIv0yNeA5hk91Jr
	DIuUgLVH6qJ6UrsHBWUm53jFeDjbMzKzV+4LXPaF2mlfGf6si0PMVud1tMUVhC0fOSlqYZIQk9a
	TEEo0ZAYnhGaGO1CwU0Aj3TVFqMzfFejU3Qbkj+XjjbP/LxTD5+3hJzYpBzibkZ9wIne8ylzMCj
	ZjIdcdH
X-Received: by 2002:a05:620a:4690:b0:8cd:87fc:cf9 with SMTP id af79cd13be357-8cd87fc11e4mr446497085a.1.1773062258159;
        Mon, 09 Mar 2026 06:17:38 -0700 (PDT)
Received: from ziepe.ca (hlfxns017vw-142-162-112-119.dhcp-dynamic.fibreop.ns.bellaliant.net. [142.162.112.119])
        by smtp.gmail.com with ESMTPSA id af79cd13be357-8cd6f49649esm668080485a.12.2026.03.09.06.17.37
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 09 Mar 2026 06:17:37 -0700 (PDT)
Received: from jgg by wakko with local (Exim 4.97)
	(envelope-from <jgg@ziepe.ca>)
	id 1vzaUK-0000000G6v8-3p9H;
	Mon, 09 Mar 2026 10:17:36 -0300
Date: Mon, 9 Mar 2026 10:17:36 -0300
From: Jason Gunthorpe <jgg@ziepe.ca>
To: Petr Tesarik <ptesarik@suse.com>
Message-ID: <20260309131736.GK1687929@ziepe.ca>
References: <20260305123641.164164-1-jiri@resnulli.us>
 <20260305123641.164164-2-jiri@resnulli.us>
 <20260309135610.1f81d2df@mordecai>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20260309135610.1f81d2df@mordecai>
X-Spamd-Bar: ---
Message-ID-Hash: QB4K33NEDSJWGBD65534XPNZX6LXAK3W
X-Message-ID-Hash: QB4K33NEDSJWGBD65534XPNZX6LXAK3W
X-MailFrom: jgg@ziepe.ca
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: Jiri Pirko <jiri@resnulli.us>, dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org, iommu@lists.linux.dev, linux-media@vger.kernel.org, sumit.semwal@linaro.org, benjamin.gaignard@collabora.com, Brian.Starkey@arm.com, jstultz@google.com, tjmercier@google.com, christian.koenig@amd.com, robin.murphy@arm.com, leon@kernel.org, sean.anderson@linux.dev, catalin.marinas@arm.com, aneesh.kumar@kernel.org, suzuki.poulose@arm.com, steven.price@arm.com, thomas.lendacky@amd.com, john.allen@amd.com, ashish.kalra@amd.com, suravee.suthikulpanit@amd.com, linux-coco@lists.linux.dev
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH net-next v3 1/2] dma-mapping: introduce DMA_ATTR_CC_DECRYPTED for pre-decrypted memory
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/QB4K33NEDSJWGBD65534XPNZX6LXAK3W/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
X-Rspamd-Queue-Id: 4985B2398DE
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [0.49 / 15.00];
	R_DKIM_REJECT(1.00)[ziepe.ca:s=google];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+mx:c];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[lists,linaro-mm-sig=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	DMARC_NA(0.00)[ziepe.ca];
	FORGED_SENDER_MAILLIST(0.00)[];
	ARC_NA(0.00)[];
	DKIM_TRACE(0.00)[ziepe.ca:-];
	RCPT_COUNT_TWELVE(0.00)[24];
	MIME_TRACE(0.00)[0:+];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	MISSING_XM_UA(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	FROM_NEQ_ENVFROM(0.00)[jgg@ziepe.ca,linaro-mm-sig-bounces@lists.linaro.org];
	FROM_HAS_DN(0.00)[];
	NEURAL_SPAM(0.00)[0.625];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[linaro-mm-sig];
	ASN(0.00)[asn:14618, ipnet:44.192.0.0/11, country:US];
	DBL_BLOCKED_OPENRESOLVER(0.00)[lists.linaro.org:rdns,lists.linaro.org:helo,ziepe.ca:mid,linaro.org:email]
X-Rspamd-Action: no action

On Mon, Mar 09, 2026 at 01:56:10PM +0100, Petr Tesarik wrote:
> I don't want to start a bikeshedding discussion, so if everyone else
> likes this name, let's keep it. But maybe the "_CC" (meaning
> Confidential Comptuing) is not necessary. IIUC it's the same concept as
> set_page_encrypted(), set_page_decrypted(), which does not refer to
> CoCo either.

Frankly I hate that AMD got their "encrypted" "decrypted" naming baked
into the CC related APIs.

I'm not at all convinced that they "do not refer to CoCo" in the way
Linux uses them and other arches absolutely make them 100% tied to coco.

If we are going to bikeshed the name it should be DMA_ATTR_CC_SHARED

Jason
_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org
