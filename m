Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id CPuXMjDiwmmPnAQAu9opvQ
	(envelope-from <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>)
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 24 Mar 2026 20:12:48 +0100
X-Original-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [44.210.186.118])
	by mail.lfdr.de (Postfix) with ESMTPS id 3EA4E31B45C
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 24 Mar 2026 20:12:48 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id E4CAE401B8
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 24 Mar 2026 19:12:46 +0000 (UTC)
Received: from mail-qk1-f173.google.com (mail-qk1-f173.google.com [209.85.222.173])
	by lists.linaro.org (Postfix) with ESMTPS id CC13F3F834
	for <linaro-mm-sig@lists.linaro.org>; Tue, 24 Mar 2026 19:11:45 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=ziepe.ca header.s=google header.b=K22zR4uT;
	spf=pass (lists.linaro.org: domain of jgg@ziepe.ca designates 209.85.222.173 as permitted sender) smtp.mailfrom=jgg@ziepe.ca;
	dmarc=none
Received: by mail-qk1-f173.google.com with SMTP id af79cd13be357-8cd80f56b27so530041785a.1
        for <linaro-mm-sig@lists.linaro.org>; Tue, 24 Mar 2026 12:11:45 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ziepe.ca; s=google; t=1774379505; x=1774984305; darn=lists.linaro.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=GgkzaFQD+hUjoaCAACM9eToN2Ozqi3oZGhlYET6dGi8=;
        b=K22zR4uTNP1hFBIfiPco7VrqMnnisxxMMR22kHoGLddBVXUjPLpf7CeX+FI+g9tTD8
         c/AK5NFzbC5gMCWvOPHHD6SosCa/iRxeOM5FD9wjoTRcSWfH8TYbr2enN3mb1Fv83nyK
         zCrRrsxyasxiw/yyWOCSOTOfH3x0/XclK40Uzj7lmIwqURpr97gI5tCOJeV8YikwW9Hs
         4ikldE3w/5crpB6JYrq7XxEkUizJ5zyASBPKqWZVqOLbPw/M+1KE0uzlh/aUAuX4pBai
         j9gUfnFr5v4CL/AKxE4VyfL2HJ3ann5V+vnlowBH5EKRPW/SSNJR4/BvYBvJVQF9adwG
         vMuA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1774379505; x=1774984305;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=GgkzaFQD+hUjoaCAACM9eToN2Ozqi3oZGhlYET6dGi8=;
        b=IAVXXf3CK4eGQqpk6TcotMZiJQY3aSkI7clFkr5/d5LMkjCsqHvpEoRgBppdFuedmA
         xyUCOnXkspCTUkP5q1NWYyCItFD2Moea7dTCyYsNzb1rN4fLsl+BvMGtsjilwoz/OFdv
         CFDlmb6JVSmOscqB41IWT9NSoT2Px0kgDHe9S0bSQwYpqHXZzw8YA420VpYkmabksu/Z
         zBAtm0z+UfQWtTQRH+grCLrxElzra7GBIs2kFeMg6rVwamIOuxXLWJl9cwRdK798rjEr
         sa3e/M7LLyxlOJ54j9ylp8NsUEB/Ztb6eyItXx6hxDyiD9Xyhbw4mbKx5OdLl1/NPPWp
         moew==
X-Forwarded-Encrypted: i=1; AJvYcCWh015rQ3GQxJjohK2kTh8ej1JzRZ91dnvKSNITuB6XfPAQRBtafsPsCdsYstJwMqzmxgtsoHSeqUO0d3z6@lists.linaro.org
X-Gm-Message-State: AOJu0YwRPyxgvFhSH6rVibfUJBEfsmr5mR+jUqy5vyYVVUM5VKfg78bn
	U5XL4jQyzKdwGwbzk9waM4k/Sv/aYpOr/DQeL5IpHR79r7RFmSwC/eck9LrAZR3VydU=
X-Gm-Gg: ATEYQzymKAj2B8QhlzJY4UuuvJ2FXy+ly1UUluT8v+5CiFtclz1f8odvvH81vdBWJpd
	uy61EdR/SdUovKPvkdiWrlDU2Hg+E37BNjbJW8Ti++JakgjTzgYVP8SsU9RoXBpXDamXUpgAKp7
	R/xBGEYocXJrUj5Fstv0gScE1Hhm4eHRDzkN8YfGk0shjA/kqPrcXhbPXhn8LpVRk6to+oXPJbj
	sYzcd3kaRmHPdIOd7QEhC7cpUMdUqIEuIq0GtLj1CP+07CeFLTnvxZTQyxZoezV6iu1FzK+DOzk
	mH7phDu0Jg/Lqe72lSmuN8MDL7NmwzhvOe67Zx47+rikkm2bg5rL5rMpMqBMepJwoSRkqkoqUoj
	QYDzMh6KoXh5r6Xoin2jMzMVXW9Vq/oo7Z+vIukGO6ehnpb0KL/8hDB22z97AukOneOBuLEPdIq
	rvTwb/slI0UIDQV3W55hl3K8Fet3iVz9NhJQ/opuCPTm7J1ZHpTAvJEVFIE7k731CO47VLjg==
X-Received: by 2002:a05:620a:17a7:b0:8cd:7fc0:ee1c with SMTP id af79cd13be357-8d0010038c4mr104803685a.22.1774379505164;
        Tue, 24 Mar 2026 12:11:45 -0700 (PDT)
Received: from ziepe.ca (mctnnbsa70w-159-2-73-22.dhcp-dynamic.fibreop.nb.bellaliant.net. [159.2.73.22])
        by smtp.gmail.com with ESMTPSA id af79cd13be357-8cfc8f91d32sm1083581885a.14.2026.03.24.12.11.44
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 24 Mar 2026 12:11:44 -0700 (PDT)
Received: from jgg by wakko with local (Exim 4.97)
	(envelope-from <jgg@ziepe.ca>)
	id 1w57AF-00000000JZi-3000;
	Tue, 24 Mar 2026 16:11:43 -0300
Date: Tue, 24 Mar 2026 16:11:43 -0300
From: Jason Gunthorpe <jgg@ziepe.ca>
To: Jiri Pirko <jiri@resnulli.us>
Message-ID: <20260324191143.GF8437@ziepe.ca>
References: <20260316125857.617836-1-jiri@resnulli.us>
 <20260316125857.617836-2-jiri@resnulli.us>
 <15fcfa5e-c4b9-4b56-8f84-20dd5f66d643@arm.com>
 <lufy3ppgiy7637iravgzabajj67chmqvg22qc3fd2yqe2p33ws@b54vibhehth2>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <lufy3ppgiy7637iravgzabajj67chmqvg22qc3fd2yqe2p33ws@b54vibhehth2>
X-Spamd-Bar: ---
Message-ID-Hash: 6I7NQKJMQ2YWJODMIHCNTUG3OXPQ3EWO
X-Message-ID-Hash: 6I7NQKJMQ2YWJODMIHCNTUG3OXPQ3EWO
X-MailFrom: jgg@ziepe.ca
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: Robin Murphy <robin.murphy@arm.com>, dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org, iommu@lists.linux.dev, linux-media@vger.kernel.org, sumit.semwal@linaro.org, benjamin.gaignard@collabora.com, Brian.Starkey@arm.com, jstultz@google.com, tjmercier@google.com, christian.koenig@amd.com, leon@kernel.org, sean.anderson@linux.dev, ptesarik@suse.com, catalin.marinas@arm.com, aneesh.kumar@kernel.org, suzuki.poulose@arm.com, steven.price@arm.com, thomas.lendacky@amd.com, john.allen@amd.com, ashish.kalra@amd.com, suravee.suthikulpanit@amd.com, linux-coco@lists.linux.dev
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH v4 1/2] dma-mapping: introduce DMA_ATTR_CC_DECRYPTED for pre-decrypted memory
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/6I7NQKJMQ2YWJODMIHCNTUG3OXPQ3EWO/>
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
	R_SPF_ALLOW(-0.20)[+mx];
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
	ASN(0.00)[asn:14618, ipnet:44.192.0.0/11, country:US];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	FROM_NEQ_ENVFROM(0.00)[jgg@ziepe.ca,linaro-mm-sig-bounces@lists.linaro.org];
	FROM_HAS_DN(0.00)[];
	MISSING_XM_UA(0.00)[];
	NEURAL_HAM(-0.00)[-0.994];
	TAGGED_RCPT(0.00)[linaro-mm-sig];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[ziepe.ca:mid,lists.linaro.org:helo,lists.linaro.org:rdns]
X-Rspamd-Queue-Id: 3EA4E31B45C
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

On Tue, Mar 17, 2026 at 09:26:21AM +0100, Jiri Pirko wrote:
> >...although, why *shouldn't* this be allowed with a vIOMMU? (Especially given
> >that a vIOMMU for untrusted devices can be emulated by the host VMM without
> >the CoCo hypervisor having to care at all - again, at least on Arm and other
> >architectures where IOMMUs are regular driver model devices)
> 
> Well, when iommu path is able to consume the attr, this restriction
> should be lifted. This is basically a sanity check for the
> dma_map_phys() caller.

Right we eventually need a matching IOMMU_DECRYPTED.

It needs to mirror how the CPUs work - any place that would use
pgprot_decrypted to create a PTE should use IOMMU_PROT_DECRYPTED to
create an iommu mapping.

The current hack in AMD assumes IOMMU_DECRYPTED behavior for
IOMMU_MMIO, but that isn't general enough..

There is some maze to get there but for the moment I think it is fine
to just not support vIOMMU, it isn't like any vIOMMU drivers even
exist for CC VMs right now.

Jason
_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org
