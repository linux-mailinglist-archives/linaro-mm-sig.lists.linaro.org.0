Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id kN7tJUUM4WnoogAAu9opvQ
	(envelope-from <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>)
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 16 Apr 2026 18:20:21 +0200
X-Original-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [44.210.186.118])
	by mail.lfdr.de (Postfix) with ESMTPS id 50D3A4119A4
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 16 Apr 2026 18:20:21 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 611DA404EC
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 16 Apr 2026 16:20:20 +0000 (UTC)
Received: from mail-ot1-f44.google.com (mail-ot1-f44.google.com [209.85.210.44])
	by lists.linaro.org (Postfix) with ESMTPS id 3E7DD3F6FF
	for <linaro-mm-sig@lists.linaro.org>; Sun, 18 Jan 2026 16:58:32 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=kernel-dk.20230601.gappssmtp.com header.s=20230601 header.b=oEqJy3On;
	spf=pass (lists.linaro.org: domain of axboe@kernel.dk designates 209.85.210.44 as permitted sender) smtp.mailfrom=axboe@kernel.dk;
	dmarc=none
Received: by mail-ot1-f44.google.com with SMTP id 46e09a7af769-7cfcebf1725so2390870a34.1
        for <linaro-mm-sig@lists.linaro.org>; Sun, 18 Jan 2026 08:58:32 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=kernel-dk.20230601.gappssmtp.com; s=20230601; t=1768755511; x=1769360311; darn=lists.linaro.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=Bv4mJ1WA5PkVw1gpZVpA4eWj7mOEd86WM3sQnHXBrw8=;
        b=oEqJy3OnBXMfSqi3j3GflAKzfFsVesQ5tRX2sv8WyTCwDzr1LYOy0Xh+kfUhuviEoK
         Pxh3hC2YeIHBQGDvekXZTAprdUmqgq2SWLxJWkdv+bChG3ITqL3ZTl3plAExXcmE/+Nf
         TmQ5J/VozKFSBGMc3TWpcnF5MlqzR3nlxF3YWkYOrs1wb9mA2xQ9VfMElfrSGv0rzNrF
         Hrt9vVYb8y+ysUxHyCh2fP4qN0wy/dMPYBkIzDWFmlY7uWk7c0frBI6aGiiHaY/vPS1m
         xhkfVX5ARB340rEjM5aEVb9XYznDgUJXN90iV2nQiJIZZwiA7TscFeyfgneV8EREXk5W
         ceJA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1768755511; x=1769360311;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=Bv4mJ1WA5PkVw1gpZVpA4eWj7mOEd86WM3sQnHXBrw8=;
        b=c/KZz8kLpHwqyyuqqAGLeGPYpvRFngCXeLonPeFnxy1ay1SrWVF/kLVuYH2pr/qXZE
         ZHoiiF5bBXISCSANw+28kNl+N1+4QrL+SOzeJcM+ENhi3Q1F5zG2NXTdXBKvkOJnL24F
         9JofUkPoFw+EhtjjXDW34XKqmd6wmPwkBWdlOm6AuTb01b7hdvy4W+lT3j793BDUfCrd
         tT/zLI6qLBmouyqpFkKD1G4ft/zqMX1YdsYyKR6AxkWR7eQxBLYq7On+2mWjKKybqaBA
         hNMMci4o8GW97+lg8f8w/dM4miei9TKUBLqzPoOyrAT4bN4ZcW8qL/hcX3pVzvLdb2O8
         bzVw==
X-Forwarded-Encrypted: i=1; AJvYcCWPEYybxmHoXDltbrBMCgh9cHbr6YFHT9ZuJK2Cn4AScJrUrc6olvy8rwbKrztawLjELhVe0OuN4BSkclxX@lists.linaro.org
X-Gm-Message-State: AOJu0Yw/mNCTH/ExeGwIk0iYQ6LVE2Ad4GbJ8svkyGzl4Gdv/eT4gtix
	Gm3mlPWW173br3sN5Q/i2u/KazQNv64ASI87VKGB1uhnMZ3i0g9F85AVaWIlX0ymORo=
X-Gm-Gg: AY/fxX6QpSA+4ZAhS7Y2UXBhougclWgnHTkDVxhT1mvJG87Hb2lkEHaT0lAJYc3A/oN
	DwAmHhgLKph/Gz9p35Nk+K1MCHwpaP2M9aUeK/Zp+IFzj1nWHmVSFapzentRb1lv7QHRvjb5XwV
	yMWiA7xr1xAW5h1KFjW4b2xw9Tsqs/nhGbIyEsUiwk5XDbB/AIK2PupL1JLnA6r7S1OZXbs9iL7
	TPn4dE+fDd4qwhnKjSoVEsc37Vl332kb0i3JK5fIwBtYVVBNi9DLnjePCDBc8wvR2QfstLmA1nX
	Cpa40HboEuxAAZoGqjqutRL6aWjYKWI7VYwlGoQ1vAjIaS/tJVQjH6dcy21pF+6T2iGLJJVbAU7
	qJlHXXq3NMeKF++Nkbcz0XCzfjMny7XU6GFkeUb/Ptp0tmEZPW3KNQ88yHjoMutlNtdXzuFAH02
	0uHjWOI2e4kvQl9Id/hHJagjKtO07ZHP6mbrBe11vkjT5/wzIzs+bsd8UN8LEY/5g9MfCnFg==
X-Received: by 2002:a05:6830:3156:b0:7cf:d213:7ecf with SMTP id 46e09a7af769-7cfdee7a81amr4387364a34.32.1768755506711;
        Sun, 18 Jan 2026 08:58:26 -0800 (PST)
Received: from [192.168.1.150] ([198.8.77.157])
        by smtp.gmail.com with ESMTPSA id 46e09a7af769-7cfdf0efe41sm5290925a34.11.2026.01.18.08.58.24
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 18 Jan 2026 08:58:26 -0800 (PST)
Message-ID: <184b3699-1eb6-4701-b827-47b34e997af2@kernel.dk>
Date: Sun, 18 Jan 2026 09:58:24 -0700
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: Alex Williamson <alex@shazbot.org>, Leon Romanovsky <leon@kernel.org>
References: <20260107-convert-to-pvec-v1-1-6e3ab8079708@nvidia.com>
 <20260114121819.GB10680@unreal> <20260116101455.45e39650@shazbot.org>
Content-Language: en-US
From: Jens Axboe <axboe@kernel.dk>
In-Reply-To: <20260116101455.45e39650@shazbot.org>
X-Spamd-Bar: ---
X-MailFrom: axboe@kernel.dk
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
Message-ID-Hash: JSRRBL4QAG5GTA3BI2PPD3POJWSBZK4U
X-Message-ID-Hash: JSRRBL4QAG5GTA3BI2PPD3POJWSBZK4U
X-Mailman-Approved-At: Thu, 16 Apr 2026 16:12:09 +0000
CC: linux-media@vger.kernel.org, dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org, linux-kernel@vger.kernel.org, iommu@lists.linux.dev, kvm@vger.kernel.org, Sumit Semwal <sumit.semwal@linaro.org>, =?UTF-8?Q?Christian_K=C3=B6nig?= <christian.koenig@amd.com>, Jason Gunthorpe <jgg@ziepe.ca>, Kevin Tian <kevin.tian@intel.com>, Joerg Roedel <joro@8bytes.org>, Will Deacon <will@kernel.org>, Robin Murphy <robin.murphy@arm.com>, Yishai Hadas <yishaih@nvidia.com>, Shameer Kolothum <skolothumtho@nvidia.com>, Ankit Agrawal <ankita@nvidia.com>, Matthew Wilcox <willy@infradead.org>
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] =?utf-8?q?Re=3A_types=3A_reuse_common_phys=5Fvec_type_instead_of_DMABUF_open=E2=80=91coded_variant?=
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/JSRRBL4QAG5GTA3BI2PPD3POJWSBZK4U/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
X-Spamd-Result: default: False [0.49 / 15.00];
	DATE_IN_PAST(1.00)[2111];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+mx:c];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	MIME_TRACE(0.00)[0:+];
	ARC_NA(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[19];
	ASN(0.00)[asn:14618, ipnet:44.192.0.0/11, country:US];
	TO_DN_SOME(0.00)[];
	NEURAL_SPAM(0.00)[0.298];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_RCPT(0.00)[linaro-mm-sig];
	MID_RHS_MATCH_FROM(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[axboe@kernel.dk,linaro-mm-sig-bounces@lists.linaro.org];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TAGGED_FROM(0.00)[lists,linaro-mm-sig=lfdr.de];
	DMARC_NA(0.00)[kernel.dk];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	DBL_BLOCKED_OPENRESOLVER(0.00)[linaro.org:email,nvidia.com:email,lists.linaro.org:helo,lists.linaro.org:rdns]
X-Rspamd-Queue-Id: 50D3A4119A4
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

On 1/16/26 10:14 AM, Alex Williamson wrote:
> On Wed, 14 Jan 2026 14:18:19 +0200
> Leon Romanovsky <leon@kernel.org> wrote:
> 
>> On Wed, Jan 07, 2026 at 11:14:14AM +0200, Leon Romanovsky wrote:
>>> From: Leon Romanovsky <leonro@nvidia.com>
>>>
>>> After commit fcf463b92a08 ("types: move phys_vec definition to common header"),
>>> we can use the shared phys_vec type instead of the DMABUF?specific
>>> dma_buf_phys_vec, which duplicated the same structure and semantics.
>>>
>>> Signed-off-by: Leon Romanovsky <leonro@nvidia.com>
>>> ---
>>> Alex,
>>>
>>> According to diffstat, VFIO is the subsystem with the largest set of changes,
>>> so it would be great if you could take it through your tree.
>>>
>>> The series is based on the for-7.0/blk-pvec shared branch from Jens:
>>> https://git.kernel.org/pub/scm/linux/kernel/git/axboe/linux.git/log/?h=for-7.0/blk-pvec
>>>
>>> Thanks
>>> ---  
>>
>> Alex,
>>
>> Could you please move this patch forward? We have the RDMA series [1] that
>> depends on this rename, and I would like to base it on the shared branch.
>>
>> [1] https://lore.kernel.org/all/20260108-dmabuf-export-v1-0-6d47d46580d3@nvidia.com/
> 
> I tried to ping Jens regarding why the branch with this code hasn't
> been merged into their for-next branch, maybe you have more traction.
> Thanks,

I get a lot of emails, and pings inside existing series don't always get
seen... Usually better to do a forward for a ping, then it's a lot more
likely to get seen sooner.

-- 
Jens Axboe
_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org
