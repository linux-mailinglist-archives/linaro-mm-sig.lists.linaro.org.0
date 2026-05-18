Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 2Iw0KpDXCmqc8gQAu9opvQ
	(envelope-from <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>)
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 18 May 2026 11:10:40 +0200
X-Original-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [44.210.186.118])
	by mail.lfdr.de (Postfix) with ESMTPS id 33BD6569660
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 18 May 2026 11:10:40 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 168B2406AE
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 18 May 2026 09:10:39 +0000 (UTC)
Received: from mail-ed1-f46.google.com (mail-ed1-f46.google.com [209.85.208.46])
	by lists.linaro.org (Postfix) with ESMTPS id 9EBE140464
	for <linaro-mm-sig@lists.linaro.org>; Mon, 18 May 2026 09:10:27 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=gmail.com header.s=20251104 header.b=MhE3Dv19;
	spf=pass (lists.linaro.org: domain of asml.silence@gmail.com designates 209.85.208.46 as permitted sender) smtp.mailfrom=asml.silence@gmail.com;
	dmarc=pass (policy=none) header.from=gmail.com
Received: by mail-ed1-f46.google.com with SMTP id 4fb4d7f45d1cf-670ab084a39so4354220a12.3
        for <linaro-mm-sig@lists.linaro.org>; Mon, 18 May 2026 02:10:27 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1779095426; x=1779700226; darn=lists.linaro.org;
        h=content-transfer-encoding:in-reply-to:content-language:references
         :cc:to:subject:from:user-agent:mime-version:date:message-id:from:to
         :cc:subject:date:message-id:reply-to;
        bh=NK6QaM0AvluQNq8GVPqTX/wBbD7FgigoEBmBlLT11LA=;
        b=MhE3Dv19G12L3QRfyjtTGtKkUXSE6fHWd4ZwAxsxDgxT8bdXtf+aryVBpp+MCulUDw
         1wHm+NMoL3XiuA6AAL+ehvPEGI+plWPmDo7SXtLJygMYW8mWBv15fZaFZDxNZnRzPTLY
         +R7xrpJLzGTaDPRKLf8T9kNXpdQD+HShbozfA3cav33wmZt5Y9hmRr9Mm7kXDBlAmue6
         jyLJSRRth/bqc54zcIQ9MU/qF6I7HGMkZkA2tFYMT29dKmFJKoldw2lgaYH7o8+8OyiY
         nmSmCQZHPd60GPkvAocOnBjaHCLcCIbCnbBx2iOSt1CgKroTCQ2usomhvZciTiLS6pU9
         2Tlg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1779095426; x=1779700226;
        h=content-transfer-encoding:in-reply-to:content-language:references
         :cc:to:subject:from:user-agent:mime-version:date:message-id:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=NK6QaM0AvluQNq8GVPqTX/wBbD7FgigoEBmBlLT11LA=;
        b=WLfXvKGwE0RdkOsSlLJeWgwlP/kk76a6l15oXYv30frYTBV1UROOezxNnArDP4B0V/
         +c2PE/Pk5zFo1Uajg4YB0TC1GnrYsUMJNZG9aMatVM1A32QuqHgFJE6FBtnd9gGXgKMX
         NULza5sWbC653VE3nYOwrCz6DXK9m99Po96J3nqn12qdPAhOB0M7bDh10yrCPIeNqyjZ
         jvxTSD30m2EjVOVg/75fUTfI1T0f5s7amUylZRYHJ3FkeJdXss1CTtkA4yBmi70tfHCN
         XAYxnIXSRCisO5wNpKRcF4uOQ/tP0/L7CCfjAQy0tDdP4r3BqpNVcIbXcq4rrDZmPUGG
         8LYw==
X-Forwarded-Encrypted: i=1; AFNElJ+LwTMgJ63QZnHaEwJn2xZA9x9Zbft3rxrQI+FJBTpjddpXHtRa6B2sLQ8VdepHs8HtWpzxTrALd6K2YqzT@lists.linaro.org
X-Gm-Message-State: AOJu0YxVFmp/bMQEtbjFVcE8TxzU79xvlyeYNTbrkMXs2XeSUk/u7ZC9
	PkbbjKzhCkWsHe8lHI/lC+WkBBOHAx7ILEOhlc5T8+ZN8AGv1o+mr4ox
X-Gm-Gg: Acq92OEzrCh6H/jIqQfGTNdoNiYXuYbUuQ/FXYSF/Ot1i/hUCQ3w0NgJWjuBZXIunZ1
	/MFYPOnNzGa8+Z415mwtqb8c4OFtnhQIzFwZJAsFv2F3ybPNtzcDzxwR/UOLdcigD3ZIWhHZe3D
	3yMMxZBdNBkQJ3beWQqrHfPUqDJEwbIhGs//a3NeJkd5tttHZQJFwejjNaSPQQay4IK59l52iEU
	+/4jRnATZG5WngRu53UguMI7nFWxkdd0qguGMWuXa3qdj3VsiM90HivLZpJk2KiZFdyXwMBAkt6
	UN6JtcVUajZf4bRBsmfSwHcLFUAjdX4vmuk4jGGOCIejPjWWOH+j8vNi82hmll/SC/cco34uASf
	xU0rNxNckFgVRXsXXKHmqnG9RupupxWt/IslIwtC1FDUyKMfwkMS1mSPteZVxoNGCKAobOJ0vLX
	YhctBuaafb1vgdvbD51hqt0GfMJHx2i+D8TgxeRVL92vnC+2ds+iqg+EpClXjamSMJGwdmvN/Ns
	prm+Ndd7BEcpsR91P31HzfmAv0HVRq7Hfo7bc/avvokL2wFcXANWlrfZHmujbmTVoveEg==
X-Received: by 2002:a05:6402:4150:b0:67e:153e:51cb with SMTP id 4fb4d7f45d1cf-683bcd9e33amr6611396a12.16.1779095426574;
        Mon, 18 May 2026 02:10:26 -0700 (PDT)
Received: from ?IPV6:2620:10d:c096:325:77fd:1068:74c8:af87? ([2620:10d:c092:600::1:6e9b])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-68310b4069dsm4929655a12.1.2026.05.18.02.10.24
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 18 May 2026 02:10:25 -0700 (PDT)
Message-ID: <d14967a9-979d-428e-8190-6a756da1c130@gmail.com>
Date: Mon, 18 May 2026 10:10:23 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
From: Pavel Begunkov <asml.silence@gmail.com>
To: Christoph Hellwig <hch@lst.de>
References: <cover.1777475843.git.asml.silence@gmail.com>
 <43a91f54d61d3329316e40c69ace781b4d35fe0b.1777475843.git.asml.silence@gmail.com>
 <20260513081238.GC5477@lst.de>
Content-Language: en-US
In-Reply-To: <20260513081238.GC5477@lst.de>
X-Spamd-Bar: ---
Message-ID-Hash: DCOEH5O3OC4WDXQ73ZSG4NCL3SNM37HJ
X-Message-ID-Hash: DCOEH5O3OC4WDXQ73ZSG4NCL3SNM37HJ
X-MailFrom: asml.silence@gmail.com
X-Mailman-Rule-Hits: member-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address
CC: Jens Axboe <axboe@kernel.dk>, Keith Busch <kbusch@kernel.org>, Sagi Grimberg <sagi@grimberg.me>, Alexander Viro <viro@zeniv.linux.org.uk>, Christian Brauner <brauner@kernel.org>, Andrew Morton <akpm@linux-foundation.org>, Sumit Semwal <sumit.semwal@linaro.org>, =?UTF-8?Q?Christian_K=C3=B6nig?= <christian.koenig@amd.com>, linux-block@vger.kernel.org, linux-kernel@vger.kernel.org, linux-nvme@lists.infradead.org, linux-fsdevel@vger.kernel.org, io-uring@vger.kernel.org, linux-media@vger.kernel.org, dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org, Nitesh Shetty <nj.shetty@samsung.com>, Kanchan Joshi <joshi.k@samsung.com>, Anuj Gupta <anuj20.g@samsung.com>, Tushar Gohad <tushar.gohad@intel.com>, William Power <william.power@intel.com>, Phil Cayton <phil.cayton@intel.com>, Jason Gunthorpe <jgg@nvidia.com>
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH v3 03/10] block: move bvec init into __bio_clone
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/DCOEH5O3OC4WDXQ73ZSG4NCL3SNM37HJ/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="us-ascii"; format="flowed"
Content-Transfer-Encoding: 7bit
X-Rspamd-Queue-Id: 33BD6569660
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [0.59 / 15.00];
	R_DKIM_REJECT(1.00)[gmail.com:s=20251104];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+mx];
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
	NEURAL_HAM(-0.00)[-0.522];
	FROM_NEQ_ENVFROM(0.00)[asmlsilence@gmail.com,linaro-mm-sig-bounces@lists.linaro.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[gmail.com:-];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[linaro-mm-sig];
	ASN(0.00)[asn:14618, ipnet:44.192.0.0/11, country:US];
	DBL_BLOCKED_OPENRESOLVER(0.00)[linaro.org:email]
X-Rspamd-Action: no action

On 5/13/26 09:12, Christoph Hellwig wrote:
> On Wed, Apr 29, 2026 at 04:25:49PM +0100, Pavel Begunkov wrote:
>> To quote Cristoph: "Historically __bio_clone itself does not clone the

Sorry for late replies

> It's Christoph.

Oops, typo, sorry for that

-- 
Pavel Begunkov

_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org
