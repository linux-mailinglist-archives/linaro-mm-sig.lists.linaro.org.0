Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 4Eq5EVP2nWlzSwQAu9opvQ
	(envelope-from <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>)
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 24 Feb 2026 20:04:51 +0100
X-Original-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [44.210.186.118])
	by mail.lfdr.de (Postfix) with ESMTPS id CA4D618BA69
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 24 Feb 2026 20:04:50 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id CDCEC4048B
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 24 Feb 2026 19:04:49 +0000 (UTC)
Received: from mail-qv1-f48.google.com (mail-qv1-f48.google.com [209.85.219.48])
	by lists.linaro.org (Postfix) with ESMTPS id 639EC4048B
	for <linaro-mm-sig@lists.linaro.org>; Tue, 24 Feb 2026 19:04:47 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=ziepe.ca header.s=google header.b=dQ5yCgqG;
	spf=pass (lists.linaro.org: domain of jgg@ziepe.ca designates 209.85.219.48 as permitted sender) smtp.mailfrom=jgg@ziepe.ca;
	dmarc=none
Received: by mail-qv1-f48.google.com with SMTP id 6a1803df08f44-899a9f445cbso11443406d6.0
        for <linaro-mm-sig@lists.linaro.org>; Tue, 24 Feb 2026 11:04:47 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ziepe.ca; s=google; t=1771959887; x=1772564687; darn=lists.linaro.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=FrFsN3h74aSMBKIOJ1HcZrCNEQY8luWcshhq585BEE4=;
        b=dQ5yCgqGCwwCLTzdIv6eoIJqH/p+44CgwlU26fdSrnD5UhMmoSfBxttCztXrrpbHy9
         3rj5hymuISBc+/B772zJpIwKuA77ClAwpWTLlV0aoiBKrt1Sq66acNzb2xTCzs+AbgsZ
         PX6WEEOacIfw8lM+V+6S88Zl6Y4F/jflej6e/h/Z0zdoZWB6as2vDX+UitfYZ4edSWYX
         8MhSCfpXYFZRqiYFb9v4itdxb3+geJUvj+J9EUfTV6wK/9dAe13VJJVFAZ1E/hiI5VQZ
         JK+IXk8zdUJSiSEvA6lwHByAg+4UA1F/YW5t2LC7rzdDswaWVMi56JaJ1PKMJf9/lEOH
         iIsQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1771959887; x=1772564687;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=FrFsN3h74aSMBKIOJ1HcZrCNEQY8luWcshhq585BEE4=;
        b=lqOaJ7Z6bp9HlNMfPbiW0+jlfapVKUbHO+YR10aSP5nJwlbIhtqnpD0eQbSeKQflca
         Zxhrj0vHwmsK8rw8TNHtDm2433jJ02yGDZtuJzln32lpVmJXczrU2aO8hZrpDYxnyKM+
         gaxIc/CJUA4POhOlO/Z8WV1oqSEOGdIvS0gSYrGWq/zA+OCkSuGmAGg++OFQyy3jCDMP
         1Y9fIpiM5gaBZB/BiSZS+vj6kRdF4/byCMHXnvSUNpgWMdQOXnw0vnmIgPNdm7wD5wyP
         BfPdCfsw6jVZmOh7HpEf+7uPTiHaYbRALoBw+3+EWHhlj0M4ls9h9ospSJ0CSi5Ef6iF
         454w==
X-Forwarded-Encrypted: i=1; AJvYcCUBObT20TVitqLg7Syg7vrdDGNmSWY2g5fB0CrpNM4C3Jrx/+G0r4Ov+gHs8sYrZ0x2eAYkBHdKT8pC2taM@lists.linaro.org
X-Gm-Message-State: AOJu0YzRtgb8u8xbkSn54+uJo55U4kbSrgOhMEBAbgAt4t2uZ5IJfuCp
	tUt00sIwIFCi+7ig103yMBowNBK4yOZnyGFGO28/BmdJWyFZjO/wJ1UAm2ZU2165Gno=
X-Gm-Gg: ATEYQzwHz/DCpIs0riTGP24SfaFwEdplKECHfE1l5pcpMXBmauWNmMOJOwM+l9FV0le
	OGgWgZjcNct3CeQrweQL04UeSA29ZkeV1PMA92Fz7JcddWJ3WyKd93ymKN/G+R2/aCwWG/FFI2T
	ZxC+r2zoj5njgFPGLPUpBHrDPrTK7dyh/91FyuId7cFtCWF0epdZPGi69eW7gmeCd2GnKxj6CeA
	M9agZl7oR6TEjDjDRBrDbkSul8eUVQPLlGkIgApBND/xZxMXJx5i8rOZJaxcPhp/TGeEbZ+wEFM
	bzpi4KT4WXcJxOqpylD2EtNnPGfFfEfHcwDQEx2aDhL6SFVXSfr/xGppUN0DZB0ykUrLs9x/L7y
	1iXGtEu2LY2pVYTKUMKQ9oP61njVmMHn4sAjOkUVVnBhceLeBLZ/Mz0SXuVnE4lsLeY/KtoMqOW
	M=
X-Received: by 2002:ad4:5cea:0:b0:895:46e:e8a3 with SMTP id 6a1803df08f44-89979c3c12cmr199567356d6.4.1771959886898;
        Tue, 24 Feb 2026 11:04:46 -0800 (PST)
Received: from ziepe.ca ([173.231.112.170])
        by smtp.gmail.com with ESMTPSA id af79cd13be357-8cb8d103084sm1292269385a.33.2026.02.24.11.04.46
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 24 Feb 2026 11:04:46 -0800 (PST)
Received: from jgg by jggl with local (Exim 4.95)
	(envelope-from <jgg@ziepe.ca>)
	id 1vuxi9-0009D4-Vg;
	Tue, 24 Feb 2026 15:04:45 -0400
Date: Tue, 24 Feb 2026 15:04:45 -0400
From: Jason Gunthorpe <jgg@ziepe.ca>
To: Jiri Pirko <jiri@resnulli.us>
Message-ID: <aZ32TUEy9CB6rs2d@ziepe.ca>
References: <20260223095136.225277-1-jiri@resnulli.us>
 <20260223095136.225277-3-jiri@resnulli.us>
 <CANDhNCp94KG06P_7ivMTNA27qEM9g8ox-h3b_tZ=v6e-25xJ3g@mail.gmail.com>
 <5z6d2etfr24oscoxhk3samf2bbhtcz6hymf65cow76omagsplf@6gdaev2perkk>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <5z6d2etfr24oscoxhk3samf2bbhtcz6hymf65cow76omagsplf@6gdaev2perkk>
X-Spamd-Bar: ---
Message-ID-Hash: DOVKQDVAVNRZUYD42DOXNSC4IH66UD3H
X-Message-ID-Hash: DOVKQDVAVNRZUYD42DOXNSC4IH66UD3H
X-MailFrom: jgg@ziepe.ca
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: John Stultz <jstultz@google.com>, dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org, iommu@lists.linux.dev, linux-media@vger.kernel.org, sumit.semwal@linaro.org, benjamin.gaignard@collabora.com, Brian.Starkey@arm.com, tjmercier@google.com, christian.koenig@amd.com, robin.murphy@arm.com, leon@kernel.org, sean.anderson@linux.dev, ptesarik@suse.com, catalin.marinas@arm.com, aneesh.kumar@kernel.org, suzuki.poulose@arm.com, steven.price@arm.com, thomas.lendacky@amd.com, john.allen@amd.com, ashish.kalra@amd.com, suravee.suthikulpanit@amd.com, linux-coco@lists.linux.dev
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH v2 2/2] dma-buf: heaps: system: add system_cc_decrypted heap for explicitly decrypted memory
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/DOVKQDVAVNRZUYD42DOXNSC4IH66UD3H/>
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
	RCVD_COUNT_FIVE(0.00)[5];
	FROM_NEQ_ENVFROM(0.00)[jgg@ziepe.ca,linaro-mm-sig-bounces@lists.linaro.org];
	FROM_HAS_DN(0.00)[];
	MISSING_XM_UA(0.00)[];
	NEURAL_HAM(-0.00)[-0.997];
	TAGGED_RCPT(0.00)[linaro-mm-sig];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[ziepe.ca:mid,lists.linaro.org:helo,lists.linaro.org:rdns]
X-Rspamd-Queue-Id: CA4D618BA69
X-Rspamd-Action: no action

On Tue, Feb 24, 2026 at 09:32:01AM +0100, Jiri Pirko wrote:

> >Should there be some global list of leaked decrypted pages such that
> >the mm subsystem could try again later to recover these?
> 
> swiotlb does the same non-recovery leakage. I belive is it not worth
> implementing this at this time,

Yeah, I agree

Looking at the callers the purpose of the return code is to trigger
the memory leak because there is no way to recover from this. We have
no idea when in future the hypervisor might permit the operation and
we have no way to keep track of the memory until it does.

It is not a great API design at all, it only makes sense from the
hypervisor perspective where it can run out of memory trying to do
these changes..

Jason
_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org
