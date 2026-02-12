Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id AO/TLV4R4WnoogAAu9opvQ
	(envelope-from <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>)
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 16 Apr 2026 18:42:06 +0200
X-Original-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [44.210.186.118])
	by mail.lfdr.de (Postfix) with ESMTPS id 4105B411DDA
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 16 Apr 2026 18:42:05 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id F40F944ED5
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 16 Apr 2026 16:42:04 +0000 (UTC)
Received: from mail-wm1-f52.google.com (mail-wm1-f52.google.com [209.85.128.52])
	by lists.linaro.org (Postfix) with ESMTPS id 6C7CD4015B
	for <linaro-mm-sig@lists.linaro.org>; Thu, 12 Feb 2026 12:52:49 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=resnulli-us.20230601.gappssmtp.com header.s=20230601 header.b=Ovdm1jOI;
	spf=none (lists.linaro.org: domain of jiri@resnulli.us has no SPF policy when checking 209.85.128.52) smtp.mailfrom=jiri@resnulli.us;
	dmarc=none
Received: by mail-wm1-f52.google.com with SMTP id 5b1f17b1804b1-4832701b9b7so37007385e9.2
        for <linaro-mm-sig@lists.linaro.org>; Thu, 12 Feb 2026 04:52:49 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=resnulli-us.20230601.gappssmtp.com; s=20230601; t=1770900768; x=1771505568; darn=lists.linaro.org;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:from:to
         :cc:subject:date:message-id:reply-to;
        bh=4Kxk/oZj66kgQZma0vQzJuBIOHCjFotulhU3mIzhZds=;
        b=Ovdm1jOIsKo8hD6/cQTadpKkfm0SiACq4cgp3hnRGTEOqJosnNSt/5NHjFAZMLSNba
         AHMsmd0wUfVWAFO5FrS8MyKPyLZci9Jypr4k5WdNvnYE0DXBfWHbaE8fKewVxGdQr9lw
         IlbzF0qqqrOea8uwA7NYkoSLUt0zhfKvZGpPrOCxwjJXadHcDjLev1RKQ5eo7QKqE3ec
         MMRk0i0tuZLplJX2pqC6HLeaSroOxggwI8vs9svkDjov4wLq7h7l+qpoui4jfByS4hAR
         O7EerRdP8/KAAYmfcWjuy6QRY82Tc96FWltsCCrK+QcUaZRBeKXc+ibI3wRWH0zELj2f
         iJeQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1770900768; x=1771505568;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=4Kxk/oZj66kgQZma0vQzJuBIOHCjFotulhU3mIzhZds=;
        b=fbUPwgJpH80b4wG+CPL8r6mVOfFfY1SYYsDUeIW6ApQJuu3WBJZQ6dfs6TQcq2Ci/A
         3QnEOROtR35YsUJfufjFqyRWt6jwbXvuZE9J23TY8yr24dU+PNqsjUrHBdsHl5afoaf5
         Poqef7xfEq+mmFi27DkDJUR3EkpgGlBn48WjfHTT+fS0KalV9payoVDHJjiw2bZRzWhu
         3hCc8+MWabptpx82OxCDzk92Jepg7a82KT/JsU6Gh6hkgdHpkQD88VmJ0wz5byndjWks
         ltjpTlEP8gxPoduOsbUB8/HBeHSaKQoAkMd68IeA1NfQbXRg/qgyCLS4rGGYi6TTWApd
         Cnkg==
X-Forwarded-Encrypted: i=1; AJvYcCV5nlh7jqYbk4QyaCazV4hnP464xos0cRRtpqEMVIT7wK9HKQNGVuhYu7HrxYvyV9OW/vHiY3em2MlZsliG@lists.linaro.org
X-Gm-Message-State: AOJu0YxDEaT4UpZnmXkJxHjSJca4KystoIZr1qAetrJonb2c4OzV7tib
	R14u0VGaJctD0MpeoizTlmWRpTJ6LRQNljgaHwKakx0/oEYiZ9APqyMEtdW9Fafx/pM=
X-Gm-Gg: AZuq6aLg5hL3/t8qkYQ+BEVJ/zb0MoTKduMnGo+iNNneTDo0N8JJk2YR3cwQMB7qE/v
	vTu1DlNReV/So2NOS836Gt1RA3bI/g3HKupvEhHOUo7ecfG3uewoPCGMudy1rYYdr3iQHxgly0X
	idF/uCe6iWC6qPI3gwcbGW8ka9n/WB1TYbIjWfbUn3L8ZsErnTwr27B/DruYclGTpiu1UB97zLt
	E7ns3usetRJeEbt9yDmNOOnBLOUyXix2obVKXAcDhkq4rvVIvsWneZGY+i9cG+6+o3QTjov4cyh
	PqM2tdVOlnembXnHavF/DGQopKfhSWxElYnjJeW9QZLTo96E6cxYLMCfQgjrGJFMPZu3/Hgr2I6
	aSOfj9kRy17ia1rw6srCZxIHgvzhb+SfKRMUZuXs6l2ZXB0tLGzARpjGH3x+nm9kSNmzz5VKxdp
	Z8zmsQG58Qe+ZoRltW6lpmhH+G1m9jas0=
X-Received: by 2002:a05:600c:348d:b0:475:dd9a:f791 with SMTP id 5b1f17b1804b1-48365716704mr34218785e9.28.1770900768396;
        Thu, 12 Feb 2026 04:52:48 -0800 (PST)
Received: from FV6GYCPJ69 ([208.127.45.21])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-4835ba7b8d9sm40786535e9.15.2026.02.12.04.52.45
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 12 Feb 2026 04:52:47 -0800 (PST)
Date: Thu, 12 Feb 2026 13:52:44 +0100
From: Jiri Pirko <jiri@resnulli.us>
To: Marek Szyprowski <m.szyprowski@samsung.com>
Message-ID: <magsa5bqxraftni5z7ixrwfojh3htpws7bhiebj4rdtqn4ewce@rnf2rzfelqim>
References: <20260209153809.250835-1-jiri@resnulli.us>
 <CGME20260209153816eucas1p22befaa2c5ef3c6d5e67956eea08424ed@eucas1p2.samsung.com>
 <20260209153809.250835-2-jiri@resnulli.us>
 <621783e8-d77d-4f29-bda0-ef487dd27b5b@samsung.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <621783e8-d77d-4f29-bda0-ef487dd27b5b@samsung.com>
X-Spamd-Bar: --
X-MailFrom: jiri@resnulli.us
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
Message-ID-Hash: 2NUJIMYP3AIDM4PQQTSPWGON63FXENVJ
X-Message-ID-Hash: 2NUJIMYP3AIDM4PQQTSPWGON63FXENVJ
X-Mailman-Approved-At: Thu, 16 Apr 2026 16:36:19 +0000
CC: dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org, iommu@lists.linux.dev, linux-media@vger.kernel.org, sumit.semwal@linaro.org, benjamin.gaignard@collabora.com, Brian.Starkey@arm.com, jstultz@google.com, tjmercier@google.com, christian.koenig@amd.com, robin.murphy@arm.com, jgg@ziepe.ca, leon@kernel.org, sean.anderson@linux.dev, ptesarik@suse.com, catalin.marinas@arm.com, aneesh.kumar@kernel.org, suzuki.poulose@arm.com, steven.price@arm.com, thomas.lendacky@amd.com, john.allen@amd.com, ashish.kalra@amd.com, suravee.suthikulpanit@amd.com, linux-coco@lists.linux.dev
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH 1/5] dma-mapping: avoid random addr value print out on error path
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/2NUJIMYP3AIDM4PQQTSPWGON63FXENVJ/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
X-Spamd-Result: default: False [0.99 / 15.00];
	DATE_IN_PAST(1.00)[1515];
	MID_RHS_NOT_FQDN(0.50)[];
	R_SPF_ALLOW(-0.20)[+mx:c];
	MAILLIST(-0.20)[mailman];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FROM_HAS_DN(0.00)[];
	DMARC_NA(0.00)[resnulli.us];
	RCVD_COUNT_THREE(0.00)[4];
	ARC_NA(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[25];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	NEURAL_HAM(-0.00)[-0.995];
	FROM_NEQ_ENVFROM(0.00)[jiri@resnulli.us,linaro-mm-sig-bounces@lists.linaro.org];
	TAGGED_FROM(0.00)[lists,linaro-mm-sig=lfdr.de];
	TAGGED_RCPT(0.00)[linaro-mm-sig];
	ASN(0.00)[asn:14618, ipnet:44.192.0.0/11, country:US];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[linaro.org:email,nvidia.com:email,lists.linaro.org:helo,lists.linaro.org:rdns,samsung.com:email]
X-Rspamd-Queue-Id: 4105B411DDA
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

Thu, Feb 12, 2026 at 12:03:49PM +0100, m.szyprowski@samsung.com wrote:
>On 09.02.2026 16:38, Jiri Pirko wrote:
>> From: Jiri Pirko <jiri@nvidia.com>
>>
>> dma_addr is unitialized in dma_direct_map_phys() when swiotlb is forced
>> and DMA_ATTR_MMIO is set which leads to random value print out in
>> warning. Fix that by just returning DMA_MAPPING_ERROR.
>>
>> Fixes: e53d29f957b3 ("dma-mapping: convert dma_direct_*map_page to be ph=
ys_addr_t based")
>> Signed-off-by: Jiri Pirko <jiri@nvidia.com>
>
>I will take this patch when=A0v7.0-rc1 is out, as this fix=A0definitely ha=
s=20
>to be applied regardless of the discussion about the remaining patches.

Makes sense. Thanks!
_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org
