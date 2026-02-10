Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id cBz1Ga5Gi2kpTwAAu9opvQ
	(envelope-from <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>)
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 10 Feb 2026 15:54:38 +0100
X-Original-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [44.210.186.118])
	by mail.lfdr.de (Postfix) with ESMTPS id D233D11C24F
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 10 Feb 2026 15:54:37 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id D6FF23F770
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 10 Feb 2026 14:54:36 +0000 (UTC)
Received: from mail-qk1-f175.google.com (mail-qk1-f175.google.com [209.85.222.175])
	by lists.linaro.org (Postfix) with ESMTPS id 0E8423F721
	for <linaro-mm-sig@lists.linaro.org>; Tue, 10 Feb 2026 14:54:30 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=ziepe.ca header.s=google header.b=n2qPEPtL;
	spf=pass (lists.linaro.org: domain of jgg@ziepe.ca designates 209.85.222.175 as permitted sender) smtp.mailfrom=jgg@ziepe.ca;
	dmarc=none
Received: by mail-qk1-f175.google.com with SMTP id af79cd13be357-8c5349ba802so562242485a.1
        for <linaro-mm-sig@lists.linaro.org>; Tue, 10 Feb 2026 06:54:30 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ziepe.ca; s=google; t=1770735269; x=1771340069; darn=lists.linaro.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=Agj0c4R15XGINXILYWi8Un1ej02BkfWDujptUtk/bVQ=;
        b=n2qPEPtL5Wi79i7hckuomKBWjMSDPqKi3PjAgWcF2PrUnH5fSbpzS0h8Gu+ipFjcIo
         oNno7IerInPJNxRbLHc8nJySJvLuOm5SNaO7dcIjnDeNqsz3q84bLSfg1qGC5rhCKbYD
         XtzN51M+mPYJ9vhbC5vxqP7P8Gf8os4zcORAw0/eghTqzM0EZv9RpD+H7eRLKqhr2A4v
         GmS5Jx9irehnkawo8iPqjSJCkUFXd6wSvqXab0qVpdukdn+Ym8aSkXM1sVxauWvO4aDR
         yMwzfSpkVqZmzSfUQYDq/ZYrXfiEAJSaZUBywUu6ViDYz0UJxTLCyUGPKNEE54lbEGol
         1J4A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1770735269; x=1771340069;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=Agj0c4R15XGINXILYWi8Un1ej02BkfWDujptUtk/bVQ=;
        b=FjATko3brA6V3T1cAYKlU1kbNeOawctqfvooKHsNPHpMiSR/VR5l8pdLDn9WjZvgmE
         XJG90WGEs1u5Nb87FgNfNOju804NTdpVmLRVfBbfczBYp9YrtaeUwiveqQwIrOxl9mwq
         gLNy7Z524qJod8/+1yjV4ON1WxuxXaKsdwU5WtLl3yy4618zvk5xbt2+WlvUlbiYKVVc
         MD0FFVjFQyd8COGcXAtgfOSnXlYyywtahC0sVZ/CAyPihBpJrQvY1iC+RjXPDFJWxhVf
         IN09oYQFuYUhEFPxtXNtvNSrcEkAg6Z2RleklYpe+wlEa/tvmqp4It2uzNKGibxBC39/
         F3oQ==
X-Forwarded-Encrypted: i=1; AJvYcCW9TLbMSZ9h7YItPQCeJ1mEkVdRrteq/Zn81B9jfQ4xQM+NkJIAMb1lUk2mynh7mZcWaKDxlvjQtA1j+i21@lists.linaro.org
X-Gm-Message-State: AOJu0YzwNdy0h8SP1G/d317dzvV63CfVsFiMtKkNEJeTlqymvDx2yVhL
	jpOHd+bv354xxEc9zDHxWAiPes9c1viK2gae6gRxvYI1Scsz+i9H4eIHLHye8hQmBJQ=
X-Gm-Gg: AZuq6aKtKKhTFywIW+YmuYgEISNERy5XvqSBUqGi34rP5fnoenAWnlFBzddo/MD1VTO
	EigXCIK4CxcwHsAkASEtzby2I7gl5Q00pXK5a59unxcIDryVvV1evwyrX2b4U8T8QgApuRjwSnY
	9ZbVLPasVei5Pp8jwDkvt29YmEER+SlKA8PHYt3kLLbY2CuUh7HTrzlzbfht5aQg5ewAOZnEzf3
	4wqO0MFJLNhQ2SIxRWbpxdo7wMk2B8TRPg3/HH3RPQaLKXg17s1ZAzcaaNbjCtB3DHXWkLjis8X
	IVw5mkoNfZbQ7wuY4z54+WR6S+HZDhuDBhUwFrsOn3JgrM/Ug65H0KlIZrQ7LsARi5kAnCQxpag
	N1nPjz6ain6A3AiMxMtas46tGK1/gtd6aMUhLEEEw6zF6HthMcmk/pfz6BX4zM9ED2lOZXuxSdT
	HYhGkI81myuuy/RJU594UTTy9sk/3iLu1Iv8H+yb5Xb3Nz1ldzaYVsyE9cM5IwnZHp0C+CcUGAg
	SXMTRk=
X-Received: by 2002:a05:620a:2804:b0:8c5:2f89:6904 with SMTP id af79cd13be357-8caefeb4daemr2082380185a.45.1770735269414;
        Tue, 10 Feb 2026 06:54:29 -0800 (PST)
Received: from ziepe.ca (hlfxns017vw-142-162-112-119.dhcp-dynamic.fibreop.ns.bellaliant.net. [142.162.112.119])
        by smtp.gmail.com with ESMTPSA id af79cd13be357-8caf9a157ddsm1121052485a.28.2026.02.10.06.54.28
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 10 Feb 2026 06:54:28 -0800 (PST)
Received: from jgg by wakko with local (Exim 4.97)
	(envelope-from <jgg@ziepe.ca>)
	id 1vpp8F-00000003mvN-47aU;
	Tue, 10 Feb 2026 10:54:27 -0400
Date: Tue, 10 Feb 2026 10:54:27 -0400
From: Jason Gunthorpe <jgg@ziepe.ca>
To: Jiri Pirko <jiri@resnulli.us>
Message-ID: <20260210145427.GA750753@ziepe.ca>
References: <20260209153809.250835-1-jiri@resnulli.us>
 <20260209153809.250835-5-jiri@resnulli.us>
 <CANDhNCoHEZsNRmU+3z5AbeAy05H7PTtUdTq1apNd5k0f9hWW8A@mail.gmail.com>
 <20260210002927.GC943673@ziepe.ca>
 <tgvdjszwxggr53digbmddcbxvupzl4xcoprofkgrs2kgf6rknx@44ebljjpghjm>
 <20260210124357.GD943673@ziepe.ca>
 <y7gvezflidmma7odnut2rmlecsbxahrcwpmoevfnhzjveusuwj@6qxqogin45j3>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <y7gvezflidmma7odnut2rmlecsbxahrcwpmoevfnhzjveusuwj@6qxqogin45j3>
X-Spamd-Bar: ---
Message-ID-Hash: QKAPLT3SUV3FJY4D2UTJIWCLJSXZPKV5
X-Message-ID-Hash: QKAPLT3SUV3FJY4D2UTJIWCLJSXZPKV5
X-MailFrom: jgg@ziepe.ca
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: John Stultz <jstultz@google.com>, dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org, iommu@lists.linux.dev, linux-media@vger.kernel.org, sumit.semwal@linaro.org, benjamin.gaignard@collabora.com, Brian.Starkey@arm.com, tjmercier@google.com, christian.koenig@amd.com, robin.murphy@arm.com, leon@kernel.org, sean.anderson@linux.dev, ptesarik@suse.com, catalin.marinas@arm.com, aneesh.kumar@kernel.org, suzuki.poulose@arm.com, steven.price@arm.com, thomas.lendacky@amd.com, john.allen@amd.com, ashish.kalra@amd.com, suravee.suthikulpanit@amd.com, linux-coco@lists.linux.dev
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH 4/5] dma-buf: heaps: allow heap to specify valid heap flags
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/QKAPLT3SUV3FJY4D2UTJIWCLJSXZPKV5/>
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
X-Rspamd-Queue-Id: D233D11C24F
X-Rspamd-Action: no action

On Tue, Feb 10, 2026 at 03:49:02PM +0100, Jiri Pirko wrote:
> Tue, Feb 10, 2026 at 01:43:57PM +0100, jgg@ziepe.ca wrote:
> >On Tue, Feb 10, 2026 at 10:14:08AM +0100, Jiri Pirko wrote:
> >
> >> >I'd advocate that the right design is for userspace to positively
> >> >signal via this flag that it wants/accepts shared memory and without
> >> >the flag shared memory should never be returned.
> >> 
> >> We can have the same behaviour with the separate heap, can't we?
> >> Userpace positively signals it wants/accepts the shared memory by
> >> choosing "system_cc_decrypted" heap name.
> >
> >So what do the other heap names do? Always private? Do you ever get
> >heaps that are unknowably private or shared (eg MMIO backed?)
> 
> If I understand the code correctly, you may get something like this:
> $ ls /dev/dma_heap/
> default_cma_region
> protected,secure-video
> protected,secure-video-record
> protected,trusted-ui
> system
> 
> The "protected*" ones are created by tee. I believe they handle
> memory that is inaccesible to CPU.

If that is the only list of options then maybe just the name will work
Ok.

I *think* CMA and system should be reliably CC private.

The protected ones seem to have their own internal definition, and
probably can't exist on CC VM systems..

Meaning we don't have any shared things leaking through which would be
the point.

Jason
_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org
