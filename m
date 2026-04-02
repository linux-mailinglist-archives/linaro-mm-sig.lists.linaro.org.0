Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id wM35BPtj5mkKvwEAu9opvQ
	(envelope-from <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>)
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 20 Apr 2026 19:35:55 +0200
X-Original-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [44.210.186.118])
	by mail.lfdr.de (Postfix) with ESMTPS id 5C5B14318E4
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 20 Apr 2026 19:35:54 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 5DFC54068C
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 20 Apr 2026 17:35:53 +0000 (UTC)
Received: from mail-wm1-f52.google.com (mail-wm1-f52.google.com [209.85.128.52])
	by lists.linaro.org (Postfix) with ESMTPS id 2C8103F775
	for <linaro-mm-sig@lists.linaro.org>; Thu,  2 Apr 2026 12:56:04 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=resnulli-us.20230601.gappssmtp.com header.s=20230601 header.b=wgVkbkrq;
	dmarc=none;
	spf=none (lists.linaro.org: domain of jiri@resnulli.us has no SPF policy when checking 209.85.128.52) smtp.mailfrom=jiri@resnulli.us
Received: by mail-wm1-f52.google.com with SMTP id 5b1f17b1804b1-486ff201041so8220715e9.1
        for <linaro-mm-sig@lists.linaro.org>; Thu, 02 Apr 2026 05:56:04 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=resnulli-us.20230601.gappssmtp.com; s=20230601; t=1775134563; x=1775739363; darn=lists.linaro.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=sdBGEtOVUOrqsu+m2DU0Xpq65+UG7RkCtVPt0Shx5yg=;
        b=wgVkbkrqaSuDp7JxvptZ8S8IlG89u71Nbs8VdNMFnkJO7sX3x2D1gfJK9bY0nuYyiE
         Imcy43qiLKzxMBK2xGYYDNv86B7SxMSXzpGyLZ4AU3Z0VfvVKP9n6tlAKpSwtx6xIVTI
         FJEjXB6p6qfT4Fvgge4fGCUaOHCv3Dc5QQAcxDUWlaehb/pds4d5i4TxzDgp9v33kDRc
         z3SqjMrPsEsTPcHYmsBJ6GMH0l2OCBqtb4TmNCl73mR/OkGCMDtguy7Dxf64eX/GTTfS
         rSuseOhfyHCMceRO9O0HxKyIVLC8NQ/aG1sFrI6VQGb170sSvARLH5dhMl9qb/l6y8h5
         EkWQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1775134563; x=1775739363;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=sdBGEtOVUOrqsu+m2DU0Xpq65+UG7RkCtVPt0Shx5yg=;
        b=TbibWKvThIMKqPb8Tt86LPEO3vEPb34eKzozZIpIJR41XxHv/Am6RGnNODINupb+j5
         5gntcJjpR+BU/82h+hbiPMMZpg0YfJtdgp0Y8wPwgxNDfzHkvigrPrIGXThJCQWuAi9r
         j+Lu5t5I3ljQySFcGHWn8yIHlH/0ibTrp0PNA9EDEtkvkxmlBXCyorPjgddC4S2o1kbg
         pq4gp9t/5P4EiOnCA56fVO6e5j9k8UlcVuDTGMhGrJgdTU5y+vc8vt6hv8VQigafCDn9
         Jp6kZx5n8XptCRim6i1EgOsyp6If0HZnE5fI1ELpDA/2c449R1w7OoQlI8/OTgBnglyL
         RXPQ==
X-Forwarded-Encrypted: i=1; AJvYcCU6NOPHKYr1ChUlh02cgscNhHp+xCnFqZ1aU3EGzrVok92nJA3RHX0iLzw5GiAPmsJg4VYlkbKEeMirTSms@lists.linaro.org
X-Gm-Message-State: AOJu0YxL7FNkEKaeb4zkIv8YfecSr1yQ/9CqBK1NgqlIeMcerL96aN+e
	VhUsKdu6zHCk1/iuHy8GUxvjlRLrUyUZJhJKF4gX7eC3AWgVH0uxXov7UMN66ge6o7A=
X-Gm-Gg: ATEYQzyGc4xUsu0ARmMvA5W2pZ23i4hAAqdkwcf4aV/2/iGSEvpLvkT3k9GLrPCkl68
	aIrhYxQEY3UXCzd+rQoVxlTf1nK90Yn3yE39WUxKohoHiCuJA83yPF5LgwfizhTe7V8X8+U2jWg
	J14Zde5LglVkrsvlMmPcb/U7AhwkmggJPWc/OIhQRnl5vXGP+cO0zbQNL3Is5hC08bPscxdzEOx
	/nSuXhPLQoNdEag+AutlrJmTeRbnjhmmmokRx4kRdSe9EH3V8/fQp+J/jqJ83XaTO/G5AGS8AnZ
	jX88WNjtfkV049+y0Hyxkw/qYGxMzC+WWbz5eGS2EPScWGq0t2f9SOKQtOaV2/OVhxknAiRZJC1
	ZFS1aHQZrQs1uWzEQSuweiAYq9HFSJWbB3TmZ+4Cz492d1seGnuaN3tyry3kNO5QL3fbMllYscs
	lC5fGl42fBim2XgKTZAIIc6OilaApTV5g=
X-Received: by 2002:a05:600c:a31c:b0:487:338:b4eb with SMTP id 5b1f17b1804b1-4888b7b89a1mr36557135e9.28.1775134563095;
        Thu, 02 Apr 2026 05:56:03 -0700 (PDT)
Received: from FV6GYCPJ69 ([208.127.45.21])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-43d1e4e56fesm7943310f8f.27.2026.04.02.05.56.01
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 02 Apr 2026 05:56:02 -0700 (PDT)
Date: Thu, 2 Apr 2026 14:56:00 +0200
From: Jiri Pirko <jiri@resnulli.us>
To: Maxime Ripard <mripard@redhat.com>
Message-ID: <qvp2zepvwnlgcw36bcx47xouskuqk3tzjuomnhnwwg5ahiswt3@zbseau5arjho>
References: <20260325192352.437608-1-jiri@resnulli.us>
 <20260325192352.437608-3-jiri@resnulli.us>
 <20260402-discreet-glossy-perch-bda4f9@houat>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20260402-discreet-glossy-perch-bda4f9@houat>
X-Spamd-Bar: --
X-MailFrom: jiri@resnulli.us
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
Message-ID-Hash: 7JTIILGCB2TYA6XX275CL5UA55LLT33P
X-Message-ID-Hash: 7JTIILGCB2TYA6XX275CL5UA55LLT33P
X-Mailman-Approved-At: Mon, 20 Apr 2026 17:33:44 +0000
CC: dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org, iommu@lists.linux.dev, linux-media@vger.kernel.org, sumit.semwal@linaro.org, benjamin.gaignard@collabora.com, Brian.Starkey@arm.com, jstultz@google.com, tjmercier@google.com, christian.koenig@amd.com, robin.murphy@arm.com, jgg@ziepe.ca, leon@kernel.org, sean.anderson@linux.dev, ptesarik@suse.com, catalin.marinas@arm.com, aneesh.kumar@kernel.org, suzuki.poulose@arm.com, steven.price@arm.com, thomas.lendacky@amd.com, john.allen@amd.com, ashish.kalra@amd.com, suravee.suthikulpanit@amd.com, linux-coco@lists.linux.dev
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH v5 2/2] dma-buf: heaps: system: add system_cc_shared heap for explicitly shared memory
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/7JTIILGCB2TYA6XX275CL5UA55LLT33P/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
X-Spamd-Result: default: False [0.99 / 15.00];
	DATE_IN_PAST(1.00)[436];
	MID_RHS_NOT_FQDN(0.50)[];
	R_SPF_ALLOW(-0.20)[+mx:c];
	MAILLIST(-0.20)[mailman];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_COUNT_THREE(0.00)[4];
	DMARC_NA(0.00)[resnulli.us];
	FORGED_SENDER_MAILLIST(0.00)[];
	FROM_HAS_DN(0.00)[];
	MIME_TRACE(0.00)[0:+];
	ARC_NA(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[25];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	TAGGED_RCPT(0.00)[linaro-mm-sig];
	FROM_NEQ_ENVFROM(0.00)[jiri@resnulli.us,linaro-mm-sig-bounces@lists.linaro.org];
	TAGGED_FROM(0.00)[lists,linaro-mm-sig=lfdr.de];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	MISSING_XM_UA(0.00)[];
	ASN(0.00)[asn:14618, ipnet:44.192.0.0/11, country:US];
	NEURAL_SPAM(0.00)[0.179];
	DBL_BLOCKED_OPENRESOLVER(0.00)[lists.linaro.org:helo,lists.linaro.org:rdns,nvidia.com:email,linaro.org:email]
X-Rspamd-Queue-Id: 5C5B14318E4
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

Thu, Apr 02, 2026 at 02:23:12PM +0200, mripard@redhat.com wrote:
>Hi Jiri,
>
>On Wed, Mar 25, 2026 at 08:23:52PM +0100, Jiri Pirko wrote:
>> From: Jiri Pirko <jiri@nvidia.com>
>> 
>> Add a new "system_cc_shared" dma-buf heap to allow userspace to
>> allocate shared (decrypted) memory for confidential computing (CoCo)
>> VMs.
>> 
>> On CoCo VMs, guest memory is private by default. The hardware uses an
>> encryption bit in page table entries (C-bit on AMD SEV, "shared" bit on
>> Intel TDX) to control whether a given memory access is private or
>> shared. The kernel's direct map is set up as private,
>> so pages returned by alloc_pages() are private in the direct map
>> by default. To make this memory usable for devices that do not support
>> DMA to private memory (no TDISP support), it has to be explicitly
>> shared. A couple of things are needed to properly handle
>> shared memory for the dma-buf use case:
>> 
>> - set_memory_decrypted() on the direct map after allocation:
>>   Besides clearing the encryption bit in the direct map PTEs, this
>>   also notifies the hypervisor about the page state change. On free,
>>   the inverse set_memory_encrypted() must be called before returning
>>   pages to the allocator. If re-encryption fails, pages
>>   are intentionally leaked to prevent shared memory from being
>>   reused as private.
>> 
>> - pgprot_decrypted() for userspace and kernel virtual mappings:
>>   Any new mapping of the shared pages, be it to userspace via
>>   mmap or to kernel vmalloc space via vmap, creates PTEs independent
>>   of the direct map. These must also have the encryption bit cleared,
>>   otherwise accesses through them would see encrypted (garbage) data.
>> 
>> - DMA_ATTR_CC_SHARED for DMA mapping:
>>   Since the pages are already shared, the DMA API needs to be
>>   informed via DMA_ATTR_CC_SHARED so it can map them correctly
>>   as unencrypted for device access.
>> 
>> On non-CoCo VMs, the system_cc_shared heap is not registered
>> to prevent misuse by userspace that does not understand
>> the security implications of explicitly shared memory.
>> 
>> Signed-off-by: Jiri Pirko <jiri@nvidia.com>
>
>I'm a bit late to the party, sorry.
>
>This new heap must be documented in
>Documentation/userspace-api/dma-buf-heaps.rst, but (and especially since
>it seems like it was merged already) it can be done as a follow-up
>patch.

Okay, will send a follow-up. Thanks!

>
>Maxime


_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org
