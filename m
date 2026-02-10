Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 4PfUIBcoi2m6QQAAu9opvQ
	(envelope-from <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>)
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 10 Feb 2026 13:44:07 +0100
X-Original-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [44.210.186.118])
	by mail.lfdr.de (Postfix) with ESMTPS id E90DB11AF73
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 10 Feb 2026 13:44:06 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id B65263F770
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 10 Feb 2026 12:44:05 +0000 (UTC)
Received: from mail-qk1-f175.google.com (mail-qk1-f175.google.com [209.85.222.175])
	by lists.linaro.org (Postfix) with ESMTPS id 03F9D3F721
	for <linaro-mm-sig@lists.linaro.org>; Tue, 10 Feb 2026 12:43:59 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=ziepe.ca header.s=google header.b=O5Gi0iOm;
	spf=pass (lists.linaro.org: domain of jgg@ziepe.ca designates 209.85.222.175 as permitted sender) smtp.mailfrom=jgg@ziepe.ca;
	dmarc=none
Received: by mail-qk1-f175.google.com with SMTP id af79cd13be357-8c59bce68a1so55336085a.0
        for <linaro-mm-sig@lists.linaro.org>; Tue, 10 Feb 2026 04:43:59 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ziepe.ca; s=google; t=1770727438; x=1771332238; darn=lists.linaro.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=N5ebXMgdbEnP2n7MqO77VYCN9M2l8thAEykxr97Y/HU=;
        b=O5Gi0iOmz65qs3Wop++Tpmh3egK1l7AeNO2mLdjwl492HbMy0x1VE/tbSeJT0/SiDQ
         aFc2rM+m1LF9oEaviV3azI40s0Uxyb1RFPH9cfkndSdVx+1SSgDbUrUgCe5WJwGh2eS1
         kwCYHxOWbD6IrGQnDrmx7mL110uzbyhftt/Qc2yacaz8AgNRgrHaAKoTXew+rzWA3dvK
         rfHkTPMMAjvKp3dJAupIriVVJNSCqAZsZtMhC+BGubQMdp0aj8gcB8hojsL0ObGBzllY
         OZX+c3gmYgzBu/5As0RYBF+BOsZixn+8uE4tfw+czZ39+yiDUbxO2cf6b4om+qp8fyat
         I9wQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1770727438; x=1771332238;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=N5ebXMgdbEnP2n7MqO77VYCN9M2l8thAEykxr97Y/HU=;
        b=YzdJ0arEwxuXFtLJxoD9UP2Srb3gIrd9wA4Q7BiY1omft15kuLjSsBRBYXHwggTS+h
         vf+tfSSWy6TZAmURbj/UWl582xflnldGH5sla20ToYps3wYwFMnWinwe3YKz1F1r+Qqb
         Ql3a0JncdmSoklk+OMFY1eu27twgWqu9+w3b9z5GSR4E6RZQscSvkJmGTiF84lBs3m4J
         IKYsaKI+bOrXHH4zgRScJw6wj6IJa759ejWW0zsFm2UJQPeE3FCpGS5QmjK+LuIIJSHq
         VwBnkOZeqfY1H0s+Gbx8tlF/fX9eLJzYQtLmblk3m80256217iQDl46mrZVGsHCl8LbU
         V4Ug==
X-Forwarded-Encrypted: i=1; AJvYcCUJ9MObGqV5ygu2VhieEVvkTrkKfLZQW8+im5QtlYOXIv+yOvF1xFZ+owO91+h37ijzwkCwYn4x5quIog1Q@lists.linaro.org
X-Gm-Message-State: AOJu0YyePhqNJ9kDAcgVSpf0e+8+LPSLT0TpddN04/44Gg+M7bYYr1yq
	83WjM+06X6VClHhNl/aaJoD5EdcrOFJJ8Zf7YT3FfjwkVtNrEzf8h2+f/kNSzOYJNvk=
X-Gm-Gg: AZuq6aJwCvBxvVryafiKvA3/vrhe1ldtPLr38GWH6fdF9Zle6bczbUbxguFjaPC6OOA
	6oKt66Wga3SX8oAipmIMrBi7IqWFt5BjhXSF4vZ3bUE6D90UNXoAvsTM4z3d8YvUM8AIudu1cU5
	x0zySXwpRBXBJevWab+1TqKdyQyTfN8MSsnHh+ZjNomazXpLgAaGsujEEUrByYxwl1lIunIy9Ll
	87ydljxB1DE10ip6vypaeVEByuPeBDMvyND4JItj1dK+l0Hluoxl31IkNHRSg41OA7nx+T0ToVc
	iRfsA7iPto6CqyL1LAtLmwU0n9iFt6sNVmr3EtoAW9r/CiCAoz7aargUsVfBmGNnm/yjwbAOx/B
	J3NKpkEI73BPTtZuc1xj4uefMsrNrvTg1gArCL+vWyrBt2IejJLm4KZUWge+dDxcibj3G1AHsis
	3W1cTg17klVcetxpH+hlVvjqWI9MgzOStrces1JlV9pj2Gf/YhOaPlH5EjX83BbCEV86wLYpm3V
	azX7Q4=
X-Received: by 2002:a05:620a:40c7:b0:8ca:55:ac60 with SMTP id af79cd13be357-8caf16ec83amr1829777785a.78.1770727438524;
        Tue, 10 Feb 2026 04:43:58 -0800 (PST)
Received: from ziepe.ca (hlfxns017vw-142-162-112-119.dhcp-dynamic.fibreop.ns.bellaliant.net. [142.162.112.119])
        by smtp.gmail.com with ESMTPSA id af79cd13be357-8caf9ee8593sm1019180385a.36.2026.02.10.04.43.57
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 10 Feb 2026 04:43:57 -0800 (PST)
Received: from jgg by wakko with local (Exim 4.97)
	(envelope-from <jgg@ziepe.ca>)
	id 1vpn5x-0000000315A-13dh;
	Tue, 10 Feb 2026 08:43:57 -0400
Date: Tue, 10 Feb 2026 08:43:57 -0400
From: Jason Gunthorpe <jgg@ziepe.ca>
To: Jiri Pirko <jiri@resnulli.us>
Message-ID: <20260210124357.GD943673@ziepe.ca>
References: <20260209153809.250835-1-jiri@resnulli.us>
 <20260209153809.250835-5-jiri@resnulli.us>
 <CANDhNCoHEZsNRmU+3z5AbeAy05H7PTtUdTq1apNd5k0f9hWW8A@mail.gmail.com>
 <20260210002927.GC943673@ziepe.ca>
 <tgvdjszwxggr53digbmddcbxvupzl4xcoprofkgrs2kgf6rknx@44ebljjpghjm>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <tgvdjszwxggr53digbmddcbxvupzl4xcoprofkgrs2kgf6rknx@44ebljjpghjm>
X-Spamd-Bar: ---
Message-ID-Hash: OX6T6XC76UXL7VNXLONCZ2JJ557T2YMS
X-Message-ID-Hash: OX6T6XC76UXL7VNXLONCZ2JJ557T2YMS
X-MailFrom: jgg@ziepe.ca
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: John Stultz <jstultz@google.com>, dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org, iommu@lists.linux.dev, linux-media@vger.kernel.org, sumit.semwal@linaro.org, benjamin.gaignard@collabora.com, Brian.Starkey@arm.com, tjmercier@google.com, christian.koenig@amd.com, robin.murphy@arm.com, leon@kernel.org, sean.anderson@linux.dev, ptesarik@suse.com, catalin.marinas@arm.com, aneesh.kumar@kernel.org, suzuki.poulose@arm.com, steven.price@arm.com, thomas.lendacky@amd.com, john.allen@amd.com, ashish.kalra@amd.com, suravee.suthikulpanit@amd.com, linux-coco@lists.linux.dev
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH 4/5] dma-buf: heaps: allow heap to specify valid heap flags
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/OX6T6XC76UXL7VNXLONCZ2JJ557T2YMS/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
X-Rspamd-Server: lfdr
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
	FROM_NEQ_ENVFROM(0.00)[jgg@ziepe.ca,linaro-mm-sig-bounces@lists.linaro.org];
	FROM_HAS_DN(0.00)[];
	MISSING_XM_UA(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	TAGGED_RCPT(0.00)[linaro-mm-sig];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[linaro.org:email,lists.linaro.org:helo,lists.linaro.org:rdns]
X-Rspamd-Queue-Id: E90DB11AF73
X-Rspamd-Action: no action

On Tue, Feb 10, 2026 at 10:14:08AM +0100, Jiri Pirko wrote:

> >I'd advocate that the right design is for userspace to positively
> >signal via this flag that it wants/accepts shared memory and without
> >the flag shared memory should never be returned.
> 
> We can have the same behaviour with the separate heap, can't we?
> Userpace positively signals it wants/accepts the shared memory by
> choosing "system_cc_decrypted" heap name.

So what do the other heap names do? Always private? Do you ever get
heaps that are unknowably private or shared (eg MMIO backed?)

Jason
_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org
