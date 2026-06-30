Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id PwzONtq5Q2qHfwoAu9opvQ
	(envelope-from <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>)
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 30 Jun 2026 14:43:06 +0200
X-Original-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [44.210.186.118])
	by mail.lfdr.de (Postfix) with ESMTPS id 6F1816E4508
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 30 Jun 2026 14:43:06 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=fail ("body hash did not verify") header.d=ziepe.ca header.s=google header.b=iMcaGlrI;
	spf=pass (mail.lfdr.de: domain of "linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org" designates 44.210.186.118 as permitted sender) smtp.mailfrom="linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org";
	dmarc=none
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 86BE440C9F
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 30 Jun 2026 12:43:05 +0000 (UTC)
Received: from mail-qk1-f169.google.com (mail-qk1-f169.google.com [209.85.222.169])
	by lists.linaro.org (Postfix) with ESMTPS id 0642640AA9
	for <linaro-mm-sig@lists.linaro.org>; Tue, 30 Jun 2026 12:42:55 +0000 (UTC)
Received: by mail-qk1-f169.google.com with SMTP id af79cd13be357-9217d13c276so321067985a.1
        for <linaro-mm-sig@lists.linaro.org>; Tue, 30 Jun 2026 05:42:55 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ziepe.ca; s=google; t=1782823374; x=1783428174; darn=lists.linaro.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=DQO+LwB4rlmVUEVrQLIA/Kr74YcNiyTBCzOFtX1NQKY=;
        b=iMcaGlrIvmEPQLVTaG9SPCof6csi9ek6Wmi+lEPVh2/XENNQicUeMTQoZTHJ/9p7y+
         XXrAfJwrj4Hks+xGq/coRLEo9NBK2ix4Vi4DIEKnezX1+N+9S9+atdFxjji01G4qXi8N
         lMx5MimIriS2L0jviiGxe0Rx8bezsvJxmMfSzDC+fEe9eTOa35/+mcZfbz8djSrRc3hD
         xQkanYG1HPXmQ/CEGPNIiDXKJ0YyxD2RL/jrLHemhFSpeNHB7HUBJQX+ybBezc7w15K9
         zWUP4UIqquPhz710WQqXEOQ+qEXOn8Vzfa5DHVSGZKdHJHO6TsYIkS7f0zemi6LnoblB
         G66Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1782823374; x=1783428174;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=DQO+LwB4rlmVUEVrQLIA/Kr74YcNiyTBCzOFtX1NQKY=;
        b=NsJnikFylBR8gN/Tcsrg6XQBjK8+iAYnecESWSaXEEXEb+f6OKoQ1oaZIEehRkQC8H
         her4MP2OMxFQXiN+oEUyjo015bTvwcVXhMKThu8JtCE9LIAR0l5yrHJG4VvYAz815+Hu
         HK5VA0y6XFXa4Z6/YbCTc400OgTM0Y95EjKKDpNxTUjx6OAVb3CYaeWFIMPYlKUSU8q9
         IBFPf9sV7grx4NlOcamhwZWOn/ZD5u5ny/6Z28iM0R46n+kbmY0lyUngLxJmT7G1kCJj
         CR/dZe12FQUBMjkyNnNDuNGKZdBLcdjmPhi7ZzNiZBY5vc9hG4ItW1tTyCSZTv0di6Sk
         fIEQ==
X-Forwarded-Encrypted: i=1; AFNElJ9EhB7IVdrCpyT5fN2Rzha5IqjLKm4viZyZTQmpSdAZRZ6uUDwBrLGVu4aZdancxKV7uBbp6gTMMH9lrDwU@lists.linaro.org
X-Gm-Message-State: AOJu0YyJqGUyZyHeaDl4vqEMNfv9q+29HpCvodR1OXl+6vB2xFgUnstg
	t+mbJfLdZxhMTQIG/c7nekKXrH5bMYjsTxTXIqgI+rmESO6ZKIwKSBIf1lOTwgxbojw=
X-Gm-Gg: AfdE7ckCR2XyLZbYNGBEMhDUrPJfhdiuIYD6FAsXQzXJDzTYOY8DBc7um5hojBE7ubN
	FkyHWIiT3px8pieSc3FLrspFEIYZGaiD+tsf0lT45vwf1aNu6NmDNL9cj92iQ0UCwG7SuUU6cAn
	FeOM2ZM/HgslFS5iUndY59DDPj36tNAu9teIuL6YLBQxs59DnqtkYXlHAGeD+WPBySq9yOG4IsB
	UcgpsIVhMdUUbeX2YOs8oI6xzEsF6hPVCqSiRSixvtQYALvtK1Rpv1FEjktuIgPDFfi48R6xyoz
	YqysqH9aO9L0mJd5s2WN1xUnxM4X6KV7oh8K8Dkgqlpg1YWiuZVXsmW4lQJbQ8Jv9+D2HIg4EQi
	71C1YvpQqIJiOIEIE8qFyaw81Rtys01ElkW7k8gciuabbtzVk5aH6Uti937JVKyF2sUsY4rjubn
	c9284lzqU9kh2s9sPQFk2Md3QyMlBE3X+ra4JLWa89GkZDRLpeKZ8a4n+kVikdg+BJY+I=
X-Received: by 2002:a05:620a:8391:b0:92e:4867:95af with SMTP id af79cd13be357-92e62af0f9amr515174185a.73.1782823374078;
        Tue, 30 Jun 2026 05:42:54 -0700 (PDT)
Received: from ziepe.ca (crbknf0213w-47-54-130-67.pppoe-dynamic.high-speed.nl.bellaliant.net. [47.54.130.67])
        by smtp.gmail.com with ESMTPSA id af79cd13be357-92e6234dc50sm226634685a.39.2026.06.30.05.42.53
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 30 Jun 2026 05:42:53 -0700 (PDT)
Received: from jgg by wakko with local (Exim 4.97)
	(envelope-from <jgg@ziepe.ca>)
	id 1weXng-00000001qgI-3Vni;
	Tue, 30 Jun 2026 09:42:52 -0300
Date: Tue, 30 Jun 2026 09:42:52 -0300
From: Jason Gunthorpe <jgg@ziepe.ca>
To: David Laight <david.laight.linux@gmail.com>
Message-ID: <20260630124252.GD7525@ziepe.ca>
References: <20260621222130.1667453-1-xuehaohu@google.com>
 <20260623015459.1153884-1-xuehaohu@google.com>
 <20260623094446.4a8fc2ed@pumpkin>
 <ajryxMaT5evDUxaq@google.com>
 <20260623235350.6540eaa2@pumpkin>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20260623235350.6540eaa2@pumpkin>
X-Spamd-Bar: ---
Message-ID-Hash: JJYXRZO73L2NEJPOS5FGZVTSWG32KBQZ
X-Message-ID-Hash: JJYXRZO73L2NEJPOS5FGZVTSWG32KBQZ
X-MailFrom: jgg@ziepe.ca
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: Pranjal Shrivastava <praan@google.com>, David Hu <xuehaohu@google.com>, Sumit Semwal <sumit.semwal@linaro.org>, Christian =?utf-8?B?S8O2bmln?= <christian.koenig@amd.com>, Nicolin Chen <nicolinc@nvidia.com>, Leon Romanovsky <leon@kernel.org>, Kevin Tian <kevin.tian@intel.com>, Ankit Agrawal <ankita@nvidia.com>, Alex Williamson <alex@shazbot.org>, linux-media@vger.kernel.org, dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org, linux-kernel@vger.kernel.org, iommu@lists.linux.dev, jmoroni@google.com, kpberry@google.com, chriscli@google.com, sashiko-bot@kernel.org, stable@vger.kernel.org
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH v2] dma-buf: Split sgl into page-aligned 2G chunks
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/JJYXRZO73L2NEJPOS5FGZVTSWG32KBQZ/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
X-Rspamd-Action: no action
X-Spamd-Result: default: False [1.99 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	R_DKIM_REJECT(1.00)[ziepe.ca:s=google];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+mx:c];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	DMARC_NA(0.00)[ziepe.ca];
	TAGGED_FROM(0.00)[lists,linaro-mm-sig=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:david.laight.linux@gmail.com,m:praan@google.com,m:xuehaohu@google.com,m:sumit.semwal@linaro.org,m:christian.koenig@amd.com,m:nicolinc@nvidia.com,m:leon@kernel.org,m:kevin.tian@intel.com,m:ankita@nvidia.com,m:alex@shazbot.org,m:linux-media@vger.kernel.org,m:dri-devel@lists.freedesktop.org,m:linaro-mm-sig@lists.linaro.org,m:linux-kernel@vger.kernel.org,m:iommu@lists.linux.dev,m:jmoroni@google.com,m:kpberry@google.com,m:chriscli@google.com,m:sashiko-bot@kernel.org,m:stable@vger.kernel.org,m:davidlaightlinux@gmail.com,s:lists@lfdr.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORGED_SENDER(0.00)[jgg@ziepe.ca,linaro-mm-sig-bounces@lists.linaro.org];
	RCPT_COUNT_TWELVE(0.00)[20];
	FREEMAIL_TO(0.00)[gmail.com];
	MIME_TRACE(0.00)[0:+];
	ARC_NA(0.00)[];
	FORWARDED(0.00)[lists@lfdr.de];
	DKIM_TRACE(0.00)[ziepe.ca:-];
	MISSING_XM_UA(0.00)[];
	TO_DN_SOME(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	FROM_NEQ_ENVFROM(0.00)[jgg@ziepe.ca,linaro-mm-sig-bounces@lists.linaro.org];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	ALIAS_RESOLVED(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	ASN(0.00)[asn:14618, ipnet:44.192.0.0/11, country:US];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[linaro-mm-sig];
	DBL_BLOCKED_OPENRESOLVER(0.00)[ziepe.ca:mid,ziepe.ca:from_mime,linaro.org:email,lists.linaro.org:helo,lists.linaro.org:rdns,lists.linaro.org:from_smtp]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 6F1816E4508

On Tue, Jun 23, 2026 at 11:53:50PM +0100, David Laight wrote:

> > If we restrict incoming dmabuf transfers to fit within VFS-centric 
> > limits (2GB), we impose unnecessary overhead on the RDMA stack, forcing
> > it to manage a significantly higher number of memory registrations. By 
> > cleanly splitting these massive contiguous device buffers into 
> > page-aligned SGL entries, we directly improve the efficiency of P2P 
> > transfers and memory registration.
> 
> But a divide by '4G - PAGE_SIZE' is also non-trivial and (I think affects
> a lot of io) when the quotient is always 1.
> Splitting into 2G chunks is a lot cheaper.

Doesn't matter this isn't fast path stuff. It is better to use fewer
SGL entries, IHMO.

> > Since this change doesn't seem to have a negative impact on standard file
> > I/O or break existing VFS constraints, I'm curious why we shouldn't 
> > support splitting these >4GB P2P transfers? Am I missing something?
> 
> I was only wondering whether it was needed...
> It does bring up the question of why the >4GB transfers even need splitting.
> But that is another question.

SGL can only store an unsigned int size, so any large physical range
has to be split down.

rdma now a days has code to process the sgl and restore back the > 4G
sizes since mode RDMA HW can accept that.

commit 486055f5e09df959ad4e3aa4ee75b5c91ddeec2e
Author: Michael Margolin <mrgolin@amazon.com>
Date:   Mon Feb 17 14:16:23 2025 +0000

    RDMA/core: Fix best page size finding when it can cross SG entries
    
So whatever this produces needs to be compatible with that to undo it.

Jason
_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org
