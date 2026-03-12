Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id OD1dHkWssmkjOwAAu9opvQ
	(envelope-from <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>)
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 12 Mar 2026 13:06:29 +0100
X-Original-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [44.210.186.118])
	by mail.lfdr.de (Postfix) with ESMTPS id 362C427169A
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 12 Mar 2026 13:06:28 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 7EF483F7DE
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 12 Mar 2026 12:06:26 +0000 (UTC)
Received: from mail-qk1-f182.google.com (mail-qk1-f182.google.com [209.85.222.182])
	by lists.linaro.org (Postfix) with ESMTPS id D9F073F7DE
	for <linaro-mm-sig@lists.linaro.org>; Thu, 12 Mar 2026 12:06:08 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=ziepe.ca header.s=google header.b=Yz7PmKgr;
	spf=pass (lists.linaro.org: domain of jgg@ziepe.ca designates 209.85.222.182 as permitted sender) smtp.mailfrom=jgg@ziepe.ca;
	dmarc=none
Received: by mail-qk1-f182.google.com with SMTP id af79cd13be357-8cd785a8783so100192485a.0
        for <linaro-mm-sig@lists.linaro.org>; Thu, 12 Mar 2026 05:06:08 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ziepe.ca; s=google; t=1773317168; x=1773921968; darn=lists.linaro.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=Pw97G/mFXVE/FuLAkp3lotBvQF2JekIeUS8x5bLQ+LE=;
        b=Yz7PmKgrivyYFVCFfgE+h0ga8aCr7PS/IznRuH7V7gXHUcYqcZnuzj7DpSgNw8c1Lh
         +lW7BJD7pav4QrrZ7Ko3EF1QsQPtWp7Z98Nt+zt8vqOY+rtEe/1pDxGrYUyshlQ2fZDj
         wC8B8zqTWHXA4HW1BqgNJolRx0YkZcVgsI1a1AxTuuTE+5clBBUSzSAhA5nT8j2fEBhq
         NjnHrR+GL8BTOiRYvxBdmQEp2+lveyKMSaUuan6D9ikxTfmtdRbSwfMkToPg3UFGYbq3
         HV+OxgJN3UUJErDjQWQ/yJxWfRnzAL3xHk8YXHNEO/DQs6QsREbifks9RD4cxzhQra6a
         ChIw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1773317168; x=1773921968;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=Pw97G/mFXVE/FuLAkp3lotBvQF2JekIeUS8x5bLQ+LE=;
        b=VTmarr5K/mGEU1pSOE7Vu6TVWOxpUkwG3oF0kLFz3FCoaEt7q3sVci8nFHXNsG3uVJ
         NYgDJxMCskXuJo/EQzJgPJ6Bu0jUNHdhBQERG+OHFKrAGk+sdiMdM2ww61/zvEFcxk9g
         UVr8qrBi5cpSxw9uwNeEYd77H4hTQ3y8fq3G49WMynRZASyHaEreVcxNENjdGVbU1FDX
         Q3ftkjIWMr2dw2ejWc86kiAFwmAwk5M5uYkl/5QGnbe2GLYzZWDzlOcaTjAkq/uDyXKb
         DZjgX0sVeHTtzjsKMKUlXTUz4apJVNGyoLoNabjEns0sW+rckkxcQtTXmxdKVn54gp/C
         6Frg==
X-Forwarded-Encrypted: i=1; AJvYcCUWiFNyjlQSiUyItYP4Yu4xPcliB/Q90cWarSpaEhC0RG3e4SFfjGCNLQdNd+dxj7uMAN69fc9Vzsveh2ap@lists.linaro.org
X-Gm-Message-State: AOJu0Yx/idaozvNdqIIXQTu9PGkquH1jDQfMMLIeoM4dggqZT9qWS9fd
	90qWo29/Co0CksEZ5w1lJTRUGFQeSf/hCoSR+FLHgw+tzLswJ5ClisDJKmqq0N7ORnI=
X-Gm-Gg: ATEYQzxbBvACMelQafryHqWutJHhmrlmKqGrgUiftlULvqusySF0GB8kZ+KGPSDqeyX
	ni9hNnaYLoJNecv3Gbaa42uYxjJGw3BBwIobA1+GHjFu37b/0IYNy3hUDP0D04Kjqrx2BEzXLdF
	1gUqixGIaQemR4JWhgqvuDsccsy0+g1XruI3hufu62AnTbmi0907tV8yKNtAYeamNZSsbrdK+k8
	QpCNeRu2ENFjeFS043JO30GncvkibzomPLeLzLkwIPVg1x4HcoEuTW5DKIlPETYGhehW+MqZ28w
	pvE69jG15POpyBMQWKJ0nc/8YaC96Khxwe3XqS77zFsOAQy/6gw2sQ4hmhFSOMln7PzL+9GmYve
	I3aP1INRYbCyPX+4c76qJID2hvmwSD+t7hGdJb+uAITLcXUHVL4NpbMSQKGrboM5qFndVJ35Iwq
	dAeF6PyKfeFm4osQmj5hl5oH0Qf1pp6PWQmHSRw8bK+GlE0cJRFNdn7n2C2/qFWmeaWFmhhdaPk
	pq5u08m
X-Received: by 2002:a05:620a:4e93:b0:8cd:a4d8:cd8d with SMTP id af79cd13be357-8cda4d8d254mr527718485a.14.1773317168272;
        Thu, 12 Mar 2026 05:06:08 -0700 (PDT)
Received: from ziepe.ca (hlfxns017vw-142-162-112-119.dhcp-dynamic.fibreop.ns.bellaliant.net. [142.162.112.119])
        by smtp.gmail.com with ESMTPSA id af79cd13be357-8cda1fbcd23sm361027485a.1.2026.03.12.05.06.06
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 12 Mar 2026 05:06:07 -0700 (PDT)
Received: from jgg by wakko with local (Exim 4.97)
	(envelope-from <jgg@ziepe.ca>)
	id 1w0enm-00000006ejP-0ZCe;
	Thu, 12 Mar 2026 09:06:06 -0300
Date: Thu, 12 Mar 2026 09:06:06 -0300
From: Jason Gunthorpe <jgg@ziepe.ca>
To: Jiri Pirko <jiri@resnulli.us>
Message-ID: <20260312120606.GC1469476@ziepe.ca>
References: <20260305123641.164164-1-jiri@resnulli.us>
 <20260305123641.164164-2-jiri@resnulli.us>
 <20260308101948.GO12611@unreal>
 <20260309131530.GJ1687929@ziepe.ca>
 <20260309140233.GW12611@unreal>
 <20260309151857.GO1687929@ziepe.ca>
 <phry3e2dtgxzxdqvrnqfuskangp4al64f2auithwme5kwkgepe@7qtftrhgv4l7>
 <20260312003408.GA1469476@ziepe.ca>
 <pmfxzgtazwa7fwz4mx53htdg4jjifwyq3gyzwklc45affy3xrp@57hxan4pqnkx>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <pmfxzgtazwa7fwz4mx53htdg4jjifwyq3gyzwklc45affy3xrp@57hxan4pqnkx>
X-Spamd-Bar: ---
Message-ID-Hash: BV2UDI4EXV3HCFXOHBAXZC4N6TE72LAK
X-Message-ID-Hash: BV2UDI4EXV3HCFXOHBAXZC4N6TE72LAK
X-MailFrom: jgg@ziepe.ca
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: Leon Romanovsky <leon@kernel.org>, dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org, iommu@lists.linux.dev, linux-media@vger.kernel.org, sumit.semwal@linaro.org, benjamin.gaignard@collabora.com, Brian.Starkey@arm.com, jstultz@google.com, tjmercier@google.com, christian.koenig@amd.com, robin.murphy@arm.com, sean.anderson@linux.dev, ptesarik@suse.com, catalin.marinas@arm.com, aneesh.kumar@kernel.org, suzuki.poulose@arm.com, steven.price@arm.com, thomas.lendacky@amd.com, john.allen@amd.com, ashish.kalra@amd.com, suravee.suthikulpanit@amd.com, linux-coco@lists.linux.dev
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH net-next v3 1/2] dma-mapping: introduce DMA_ATTR_CC_DECRYPTED for pre-decrypted memory
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/BV2UDI4EXV3HCFXOHBAXZC4N6TE72LAK/>
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
	NEURAL_HAM(-0.00)[-0.764];
	TAGGED_RCPT(0.00)[linaro-mm-sig];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[ziepe.ca:mid,linaro.org:email]
X-Rspamd-Queue-Id: 362C427169A
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

On Thu, Mar 12, 2026 at 10:03:37AM +0100, Jiri Pirko wrote:
> >Alot of device MMIO is decrypted by nature and can't be encrypted, so
> >you'd have to use both flags. eg in VFIO we'd want to do this.
> 
> Why both flags? Why MMIO flag is not enough? You still want to hit
> "if (attrs & DMA_ATTR_MMIO) {" path, don't you?

Because we will eventually have both decrypted and encrypted MMIO.

> I mean, CC_DECRYPTED says the memory to be mapped was explicitly
> decrypted before the call. MMIO was not explicitly decrypted, it is
> decrypted by definition. For me that does not fit the CC_DECRYPTED
> semantics.

I would say CC_DECRYPTED means that pgprot_decrypted must be used to
form a PTE, and !CC_DECRYPTED means that pgprot_encrypted() was used

This flag should someday flow down into the vIOMMU driver and set the
corresponding C bit the IOPTE (for AMD) exactly as the pgprot does.

Less about set_memory_encrypted as that is only for DRAM.

Jason
_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org
