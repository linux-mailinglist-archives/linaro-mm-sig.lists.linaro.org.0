Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id mOVuHTLYCmrb8gQAu9opvQ
	(envelope-from <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>)
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 18 May 2026 11:13:22 +0200
X-Original-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [44.210.186.118])
	by mail.lfdr.de (Postfix) with ESMTPS id 12C1856973E
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 18 May 2026 11:13:21 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 11DA14069A
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 18 May 2026 09:13:21 +0000 (UTC)
Received: from mail-wm1-f42.google.com (mail-wm1-f42.google.com [209.85.128.42])
	by lists.linaro.org (Postfix) with ESMTPS id BC5B54051A
	for <linaro-mm-sig@lists.linaro.org>; Mon, 18 May 2026 09:13:09 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=gmail.com header.s=20251104 header.b=hQ0ZMX37;
	spf=pass (lists.linaro.org: domain of asml.silence@gmail.com designates 209.85.128.42 as permitted sender) smtp.mailfrom=asml.silence@gmail.com;
	dmarc=pass (policy=none) header.from=gmail.com
Received: by mail-wm1-f42.google.com with SMTP id 5b1f17b1804b1-4896c22fcbaso16462625e9.0
        for <linaro-mm-sig@lists.linaro.org>; Mon, 18 May 2026 02:13:09 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1779095589; x=1779700389; darn=lists.linaro.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=xG/69Jp5I3ufceWw4+S4Fo/It8aPbBbD9UGvG/3mKFY=;
        b=hQ0ZMX37o1TY/Fx2YvoF1nz7Xnzm81k2ba7r9A5WfBVzRJ1Iqh8K0R6oI8P6Vi59cK
         4IIh4FpR+axe9Mr6XVIMhZLtsJls//FfC/fikR+nkPZB7LJgL00/46k9RGKelT1ebKQa
         2fKFGmO1mvKx7QvH5lFNjCemD+m3hX8cph0VKaZXWbXPsMmmcd2PWZ4vEhovp8R+pSiH
         cs4o2gOVAQMsX2cmDnOMdAKpQHPl5LFiqB8cBrdqG8R/LROpI6QAA5iPG70h3LkOk5cD
         x6UB8Cc0kzImBJI3yyuP2G9cqW46Pr2h5IQHL7FDDw3pN13lQQzPXS4wKeAOa3lINVzc
         l3iQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1779095589; x=1779700389;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=xG/69Jp5I3ufceWw4+S4Fo/It8aPbBbD9UGvG/3mKFY=;
        b=PxiRClTMKzi1LhUf2JXOcT2PO8eqjJHzQxNepHY3rqi0Q5G2O1CsdwtrLm8NCU6bVl
         HoODOVC4+gcDe+kUo7uIxA1yBfn9y4jQ0GGHNmSxVmG0BP8E3CkwEweuAcUlwqQmHuV5
         VM4m9VjrOj1Ovn0a6mD2V21mf+IRkbM7Zg9qGDWsuOGkgr4MpeuToS2oOK1zBX0F3ab0
         x7cwtMb4OUq5oBNfDUYNnWpV+gQLDbb7TffAQRoJsGrEhTrmiFD/YPVz6okM8xQotjWE
         nfRVNrqXZ1BR8Ze3OyYSDmDS7hkCAxe8oonnQxbJy6ocUnoo/rxGrC2CEEjOrwABFUnL
         9b4g==
X-Forwarded-Encrypted: i=1; AFNElJ9TSLO2wHcoF68uWFXNk3/Sd2odSowycXRdddEKQjfzrCVniTiCuBgA4qXBt/RKRanlDcbv5XdkKVINh2dM@lists.linaro.org
X-Gm-Message-State: AOJu0Yx5p4dU68OJZ44HvnAbPxcz3tj+Z7x4U7dkcuMhN7ANED/jzQr0
	fX/mgIEt5JFAjsaSKSUfwdZYE90cyIptVuQVi603NJL3ZXjy/17fuhsy
X-Gm-Gg: Acq92OEbD+s1jjSwPCALqosY7GPbbYC87nhQLnqFp3uVkBbv1e1EqpmHoZD/nBB75ei
	/uF4erBV6Nx1x+6SmVbnuwwP6UzcYVaY719FVB9wtLv0SXR52mkL+BJUDLlvYrqejiJGizYMB89
	KsbZER0oZ4WA5LVZeXp5YugT5pUioNJB9PeARNUfpGaBtj6n8MgzZKWS1Ue55CMTYOcGS4z5+Jy
	ta6eO6/fzJz7Caw/xUghrudFjb/mfU7W7FbyUmE6TcIoPUlgitGmZwSs9b2EGDjkN3sgwZ9wFZe
	AkWGkJVBBThvpZOZxJdm5n+1u+ETSckXvGMPhUkQSPaLhsh+HwK7sJBAyvzKyUeAHECfBtqxqLn
	B4ueSftMQo0cU5riP8Y9qEw5IZG5rDYLeoh1mOxhbvCQBHZ9JmXZmDKfxaS1gTqNQKMOLPAx2Up
	M+5M/8QjdgG3/9g/4ygiwkZ29rPW9/jv9OQB5dZyZk+5PF8mIPPgH5phe+olR4rQ7LsyBGkcp4D
	mdd6k85amh2wZIKU2ruVn5uk/VjcTeneO509hJKHsfRkRcN1KCfhm5nVtE=
X-Received: by 2002:a05:600c:1d0d:b0:489:1ff1:74df with SMTP id 5b1f17b1804b1-48fe5fcdf50mr205316035e9.1.1779095588623;
        Mon, 18 May 2026 02:13:08 -0700 (PDT)
Received: from ?IPV6:2620:10d:c096:325:77fd:1068:74c8:af87? ([2620:10d:c092:600::1:6e9b])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-45da0fe13a7sm36837416f8f.29.2026.05.18.02.13.04
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 18 May 2026 02:13:07 -0700 (PDT)
Message-ID: <88576019-44fc-4614-9e89-a17478dbf340@gmail.com>
Date: Mon, 18 May 2026 10:13:03 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: Christoph Hellwig <hch@lst.de>
References: <cover.1777475843.git.asml.silence@gmail.com>
 <559756c5e22dcfa183080a979de039910d1b896d.1777475843.git.asml.silence@gmail.com>
 <20260513082553.GB6461@lst.de>
Content-Language: en-US
From: Pavel Begunkov <asml.silence@gmail.com>
In-Reply-To: <20260513082553.GB6461@lst.de>
X-Spamd-Bar: ---
Message-ID-Hash: ZIZVGVKWAZSVFTHCMULWGFMQMZY4XODS
X-Message-ID-Hash: ZIZVGVKWAZSVFTHCMULWGFMQMZY4XODS
X-MailFrom: asml.silence@gmail.com
X-Mailman-Rule-Hits: member-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address
CC: Jens Axboe <axboe@kernel.dk>, Keith Busch <kbusch@kernel.org>, Sagi Grimberg <sagi@grimberg.me>, Alexander Viro <viro@zeniv.linux.org.uk>, Christian Brauner <brauner@kernel.org>, Andrew Morton <akpm@linux-foundation.org>, Sumit Semwal <sumit.semwal@linaro.org>, =?UTF-8?Q?Christian_K=C3=B6nig?= <christian.koenig@amd.com>, linux-block@vger.kernel.org, linux-kernel@vger.kernel.org, linux-nvme@lists.infradead.org, linux-fsdevel@vger.kernel.org, io-uring@vger.kernel.org, linux-media@vger.kernel.org, dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org, Nitesh Shetty <nj.shetty@samsung.com>, Kanchan Joshi <joshi.k@samsung.com>, Anuj Gupta <anuj20.g@samsung.com>, Tushar Gohad <tushar.gohad@intel.com>, William Power <william.power@intel.com>, Phil Cayton <phil.cayton@intel.com>, Jason Gunthorpe <jgg@nvidia.com>
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH v3 06/10] block: forward create_dmabuf_token to drivers
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/ZIZVGVKWAZSVFTHCMULWGFMQMZY4XODS/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="us-ascii"; format="flowed"
Content-Transfer-Encoding: 7bit
X-Rspamd-Queue-Id: 12C1856973E
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [0.59 / 15.00];
	R_DKIM_REJECT(1.00)[gmail.com:s=20251104];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+mx:c];
	DMARC_POLICY_SOFTFAIL(0.10)[gmail.com : SPF not aligned (relaxed),none];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	MIME_TRACE(0.00)[0:+];
	TAGGED_FROM(0.00)[lists,linaro-mm-sig=lfdr.de];
	ARC_NA(0.00)[];
	FREEMAIL_FROM(0.00)[gmail.com];
	RCPT_COUNT_TWELVE(0.00)[24];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	NEURAL_HAM(-0.00)[-0.498];
	FROM_NEQ_ENVFROM(0.00)[asmlsilence@gmail.com,linaro-mm-sig-bounces@lists.linaro.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[gmail.com:-];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[linaro-mm-sig];
	ASN(0.00)[asn:14618, ipnet:44.192.0.0/11, country:US];
	DBL_BLOCKED_OPENRESOLVER(0.00)[lists.linaro.org:helo,lists.linaro.org:rdns,linaro.org:email]
X-Rspamd-Action: no action

On 5/13/26 09:25, Christoph Hellwig wrote:
> On Wed, Apr 29, 2026 at 04:25:52PM +0100, Pavel Begunkov wrote:
>> Add a trivial implementation of the create_dmabuf_token call for
>> block devices that forwards the call to a new blk-mq callback if it's
>> available.
> 
> This should go into block_device_operations as there is nothing blk-mq
> specific about this.  I.e. even if this patchset doesn't handle stacking
> drivers yet, it should be easy enough to add them in the future.

Ok

-- 
Pavel Begunkov

_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org
