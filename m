Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id aEYKGnLqCmqR9QQAu9opvQ
	(envelope-from <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>)
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 18 May 2026 12:31:14 +0200
X-Original-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [44.210.186.118])
	by mail.lfdr.de (Postfix) with ESMTPS id 04B6156AC02
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 18 May 2026 12:31:13 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 0A535406B2
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 18 May 2026 10:31:13 +0000 (UTC)
Received: from mail-ej1-f44.google.com (mail-ej1-f44.google.com [209.85.218.44])
	by lists.linaro.org (Postfix) with ESMTPS id 7F22940475
	for <linaro-mm-sig@lists.linaro.org>; Mon, 18 May 2026 10:30:58 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=gmail.com header.s=20251104 header.b=Pyl22kC0;
	spf=pass (lists.linaro.org: domain of asml.silence@gmail.com designates 209.85.218.44 as permitted sender) smtp.mailfrom=asml.silence@gmail.com;
	dmarc=pass (policy=none) header.from=gmail.com
Received: by mail-ej1-f44.google.com with SMTP id a640c23a62f3a-bd373f83042so437343666b.1
        for <linaro-mm-sig@lists.linaro.org>; Mon, 18 May 2026 03:30:58 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1779100257; x=1779705057; darn=lists.linaro.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=hx27Zr2PfQkgYP6DocpvbcVC/5/Kjswu2b3jiJPzVQY=;
        b=Pyl22kC07a5sxG3PvlNEU/y4IpBPWH++u3cYF3rwbtpX9E+cvQW1/FNN2LBgLHNiT1
         WDgecyWFPo/2hkW6KlicrgJ+/F/D4nCW6Ndays6EUiKZHJI5xAc8mfV8I0yExvh8P1Uc
         6hH97zpLQ4vtpuYvROIkmYxnNCSztAdgYmho/kJSXDYbgHnQopvtd/mblLe+a/1DjIpc
         So5U7HCuZ1O3+UP6ZIlm84zhxg/J2ntfE6ojfPFVody9sk7ra+8Nj+MKB7CEZU7c0eZ1
         yljYZycDs/ulg+AtzTOXR5L/LN+QyocfZ5tbBlSzQFh+N0hAVS3PpF+yHrabKOBfg1iY
         XyDA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1779100257; x=1779705057;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=hx27Zr2PfQkgYP6DocpvbcVC/5/Kjswu2b3jiJPzVQY=;
        b=Cya4elf0H0AU5nyMXiMIig92Uf0eXy8ZtR8J10Ga/FgUU6Qr+gRS3Dj7a1DOSr0mpR
         l44+cIkoajvqkp41t02IoB8JzD/e1rDB/zuXMpl0Q3Al3gvSPfCTQtV9weFzVnXQYEH0
         PNGEESd7pfct03c08nqZJRKdOmG/Fbx7m+Kc5b/yF881B09ZMCD3QKHR6uGeOCcoHbQj
         ErjKSMoG4GSSWiPykh0exRZc0/fti1B7UhB+wZuY46k2RCRmOwdzcx3n5dxhH6C6tC5u
         GBOXaMOT3KDjQfhl0lnBy/cr35gpo03imFIST2KETaO1F1FzuYcjJp+G6G6F31fcM9rF
         tiyw==
X-Forwarded-Encrypted: i=1; AFNElJ/fSFA+U5XJth5UO5UNsH1jC1IrwXon27ROs92bt/CXjxfZXkIzcrSAH/GTMFNZo02to39/6NOOmbYO9FyF@lists.linaro.org
X-Gm-Message-State: AOJu0YzCu1yzh5443aGIOGUc9v/eSTSL8qTg1NUbx653ktss3tY6+lQN
	NOaouiqlJLhsjFL17LVyJV6SznaJyU80WnQmdG5cVRH/tXK70rLeDKRT
X-Gm-Gg: Acq92OFzH56ZS380HWUYOqxV/DfOt/LaGex6UjJe32eak4OMKiKFDcfVqIwZz/qf0Em
	Irdgc5DZ2rItjUY0bO5Sl1T0bsx4cd0JKRAXvHX96puOOE0TS4kaMV0ztjz8NZbkS04b6dyXCfB
	Z2AyOSp2isslS/V884vseVwFzx+rrVKJRdbL7yVaQ2cgT0ybRoMhfZnuonIEWRHtLKxZw3zPX+H
	qr1KuDgLFNdLATdY6Nq6d+uGzRTSBgc1CLgBWeZqLDcoYBvF8y8PmWMQminBSbua4Z7rMa9CIXw
	jT2DYMjYED9EKls8F7G6kkLM/86NcteVFFeyu1gbincPFJQxzHi+pyazmOD19riKxojwYS7tN/D
	qUotC2mvTUO0c9K1ppYVGW52JB6zf8A4DxrTlmuZSoDuu+v6Ezblm6pr+akGPVJRN9FVTpxeCVs
	BHhfc4URy/xMnDOu9hPiV2iCRmA8HFahRfhruri+oVfxJmFjsWxbYRO/QAxiO8cvqz3Iti6dQQa
	2nV8ye8URolaccmCbzpN0bwMQhLj0tuE+mG8U7/otXFgEpf/ffPYe8qrRU=
X-Received: by 2002:a17:907:1c0d:b0:bd2:bd3:1ef8 with SMTP id a640c23a62f3a-bd517a99797mr714341866b.35.1779100257041;
        Mon, 18 May 2026 03:30:57 -0700 (PDT)
Received: from ?IPV6:2620:10d:c096:325:77fd:1068:74c8:af87? ([2620:10d:c092:600::1:ec20])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-bd4f4e4d54dsm542055466b.47.2026.05.18.03.30.55
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 18 May 2026 03:30:56 -0700 (PDT)
Message-ID: <574f42cf-0d72-437a-8eba-fd970011e206@gmail.com>
Date: Mon, 18 May 2026 11:30:54 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: Anuj Gupta/Anuj Gupta <anuj20.g@samsung.com>,
 Christoph Hellwig <hch@lst.de>
References: <cover.1777475843.git.asml.silence@gmail.com>
 <5cecb1157ab784f9f303a91449fdf11b03aa6002.1777475843.git.asml.silence@gmail.com>
 <20260513083817.GC6461@lst.de>
 <CGME20260518092930epcas5p30d3b49f26efa5969ddcdb15351a886f3@epcas5p3.samsung.com>
 <50ed7240-d8d3-4816-bcc9-ce8adbbbf841@gmail.com>
 <f9e04625-50c6-4fa9-8b12-76496e29f10c@samsung.com>
Content-Language: en-US
From: Pavel Begunkov <asml.silence@gmail.com>
In-Reply-To: <f9e04625-50c6-4fa9-8b12-76496e29f10c@samsung.com>
X-Spamd-Bar: ---
Message-ID-Hash: 4EVML3ZXDHDTF74TRWCYL3YOWCPWQFOO
X-Message-ID-Hash: 4EVML3ZXDHDTF74TRWCYL3YOWCPWQFOO
X-MailFrom: asml.silence@gmail.com
X-Mailman-Rule-Hits: member-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address
CC: Jens Axboe <axboe@kernel.dk>, Keith Busch <kbusch@kernel.org>, Sagi Grimberg <sagi@grimberg.me>, Alexander Viro <viro@zeniv.linux.org.uk>, Christian Brauner <brauner@kernel.org>, Andrew Morton <akpm@linux-foundation.org>, Sumit Semwal <sumit.semwal@linaro.org>, =?UTF-8?Q?Christian_K=C3=B6nig?= <christian.koenig@amd.com>, linux-block@vger.kernel.org, linux-kernel@vger.kernel.org, linux-nvme@lists.infradead.org, linux-fsdevel@vger.kernel.org, io-uring@vger.kernel.org, linux-media@vger.kernel.org, dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org, Nitesh Shetty <nj.shetty@samsung.com>, Kanchan Joshi <joshi.k@samsung.com>, Jason Gunthorpe <jgg@nvidia.com>
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH v3 07/10] nvme-pci: implement dma_token backed requests
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/4EVML3ZXDHDTF74TRWCYL3YOWCPWQFOO/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="us-ascii"; format="flowed"
Content-Transfer-Encoding: 7bit
X-Rspamd-Queue-Id: 04B6156AC02
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
	RCPT_COUNT_TWELVE(0.00)[21];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[asmlsilence@gmail.com,linaro-mm-sig-bounces@lists.linaro.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[gmail.com:-];
	TAGGED_RCPT(0.00)[linaro-mm-sig];
	ASN(0.00)[asn:14618, ipnet:44.192.0.0/11, country:US];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	NEURAL_SPAM(0.00)[0.006];
	DBL_BLOCKED_OPENRESOLVER(0.00)[linaro.org:email]
X-Rspamd-Action: no action

On 5/18/26 11:18, Anuj Gupta/Anuj Gupta wrote:
> On 5/18/2026 2:59 PM, Pavel Begunkov wrote:
>>> FYI, I really want SGL support before this get merged, but ignoring that
>>> for now:
>>
>> I was hoping to let Samsung guys to send a follow up they already have,
>> but I'll ask them to have about taking it into this patch set.
> 
> I had done patches on top of v3 adding SGL support and PRP list reuse
> optimization for the dmabuf path.
> Branch: https://github.com/SamsungDS/linux/commits/rw-dmabuf-v3-nvme-opt/
> 
> Also pasting the SGL patch here for quick reference:

Thanks Anuj!

-- 
Pavel Begunkov

_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org
