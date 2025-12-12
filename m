Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id UJJXIAQE4Wn6oQAAu9opvQ
	(envelope-from <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>)
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 16 Apr 2026 17:45:08 +0200
X-Original-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [44.210.186.118])
	by mail.lfdr.de (Postfix) with ESMTPS id 5FE5D4112CE
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 16 Apr 2026 17:45:08 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 7597444D07
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 16 Apr 2026 15:45:07 +0000 (UTC)
Received: from mail-pf1-f172.google.com (mail-pf1-f172.google.com [209.85.210.172])
	by lists.linaro.org (Postfix) with ESMTPS id 476223F9B4
	for <linaro-mm-sig@lists.linaro.org>; Fri, 12 Dec 2025 01:06:06 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=gmail.com header.s=20230601 header.b=mjLon2Yc;
	spf=pass (lists.linaro.org: domain of asml.silence@gmail.com designates 209.85.210.172 as permitted sender) smtp.mailfrom=asml.silence@gmail.com;
	dmarc=pass (policy=none) header.from=gmail.com
Received: by mail-pf1-f172.google.com with SMTP id d2e1a72fcca58-7bc0cd6a13aso404473b3a.0
        for <linaro-mm-sig@lists.linaro.org>; Thu, 11 Dec 2025 17:06:06 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1765501565; x=1766106365; darn=lists.linaro.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=IIn/LcD13PrglPwKrjbzANKOSQPEYp8vSoODGBl4RDw=;
        b=mjLon2YcIwdoSp4D+bxh3yuuprvSjJ0MqI1eHR78rpzIyrvlGd+Tvc3WexIF9H97mQ
         mVzx/lEanfmCdGWIsdfbFYvce34vXe5caBeWmlPLIPqvXPF4MnYGgMoUpCda7cEpYQws
         1O5v+cBxy/JJ2L7g+tnBXW/bNsKx7DVudqtebq4QrhKxODctR4HPaxd+v2lJm+qOnT6G
         ijQROSwwJkgnWb0gmauA/u+UFRMSpVwRav2cWK//ABvJ/gpZrHQ5XhW9h9vLD2cZ9sCA
         twYK2jcNFr+uLgl+wbg4TISA40Z/q1txC7M5H25GmvUXBSvtc/XFZsSXLC1nJkq2r5J/
         ZeZQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1765501565; x=1766106365;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=IIn/LcD13PrglPwKrjbzANKOSQPEYp8vSoODGBl4RDw=;
        b=hhSXg84AQrSdZc9XRF9n94kdykscAyZnQxMcb6byxZtH74xrUnjwvASMie5PlEV7Yz
         B8HnJ6FyIUQXPm4bF2O1vlOBSVTDMT3i4GDjZJ1wtBkE8cwwTJDYyJR16HTjtgoj+rM4
         OgHudrzrbduR9QUloJdy6Dhd7pG/sN8pk5R1KFA+D2ZBjSykANA/6O9NPCD7slhGfll1
         KcTSUiZtwEjzqx1xEpWxYHQNiyzRCJgpHp6BlOG9uIEvaD/owZux9ke04ah+OEObPE+R
         sYLynCF2lwzkX3CWS1FuHRjyE7NyaNcliknY++zj2MEUtSmz3cvONPHEVw7VjLAPYBNk
         k15w==
X-Forwarded-Encrypted: i=1; AJvYcCWW7bO4i3kkzZdxeRYKiPAdbgZ2PSrCEENS7ASV3XGcqui/3WLxewV+2sM87GgkbYCFWsmWw5K5Iako4IdF@lists.linaro.org
X-Gm-Message-State: AOJu0YwOxY1F+O6iZeffPNWeVihxaa7CqPZ0F3/EFQ+6zo7tmXz47k1s
	apiioyn7O9cB/XPJEExIb/GR3E++ew4mEJn5wP6elALYSbZ2P48VoDXx
X-Gm-Gg: AY/fxX4o5phKxYFLiMK7W8WLmdnxEjIn2LC/wt/OO/xSbNY3tGY9et9SFeD0NvizaMJ
	pfYEsGUOy0COvL4AIh/N7br+4JNJAvkaj+TEih1q9cJ5K323P7rjD7MG2JihdNWE3H0ES1PHcjR
	HPW0yHqy/go41mD2houVnxqRDU255uuK7mjnXg2OWGQN6QGmH4jqDDJc+mwNl2rebsDiNmwcRT8
	qGYBUOAo5P9efmCyGfXD2hkefFAn9dZdAUm5E5RfPKteMJEQW6pD3jBpfTH4WNsM+8FuF83bJkP
	ddtWB6mtKU12KoWVYfovSOa9BQKL2PgXRreo95enDVmT/nhDfTJuit4OxCzdEhpwzOP08SUCFht
	OFTcoItJKUmrEtE5KkBaTw6xGG8aguKGyN+xsLrZAfxzGPnZDemrOlhuX+jAzp0AlriQWD6gBT4
	0k4iaBISZf3kSB58DHUrTvl7N5S2uIR1FE29BICRuYD6mU03JmfaAHk2sUNsZsxvyjv9EoDl8Tm
	NXPcmREhrD6B3D5ERYEXkqluTiBgkPMSjYSfT7mCmeH45Kp+yiUrchgMl+YSg==
X-Google-Smtp-Source: AGHT+IEhxHfa3EvqLnd161U/iUsmuB/KO5aMfBcewaILSnv9w+0OotqTV/mO8Q9y2e3SELVXDNPiCw==
X-Received: by 2002:a05:6a00:8c12:b0:7e8:3fcb:bc4a with SMTP id d2e1a72fcca58-7f669c8a4efmr414424b3a.31.1765501565293;
        Thu, 11 Dec 2025 17:06:05 -0800 (PST)
Received: from [10.200.8.97] (fs98a57d9c.tkyc007.ap.nuro.jp. [152.165.125.156])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-7f4c5093a56sm3565645b3a.47.2025.12.11.17.06.00
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 11 Dec 2025 17:06:04 -0800 (PST)
Message-ID: <6edcb112-dabc-41ff-8e47-8b331de12f5c@gmail.com>
Date: Fri, 12 Dec 2025 01:06:09 +0000
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: Christoph Hellwig <hch@infradead.org>
References: <cover.1763725387.git.asml.silence@gmail.com>
 <f57269489c4d6f670ab1f9de4d0764030d8d080c.1763725387.git.asml.silence@gmail.com>
 <aTFlx1Rb-zS5vxlq@infradead.org>
Content-Language: en-US
From: Pavel Begunkov <asml.silence@gmail.com>
In-Reply-To: <aTFlx1Rb-zS5vxlq@infradead.org>
X-Spamd-Bar: ---
X-MailFrom: asml.silence@gmail.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
Message-ID-Hash: FDIF57MBM3AVPYHTTK4MYPCL2MDAGDD2
X-Message-ID-Hash: FDIF57MBM3AVPYHTTK4MYPCL2MDAGDD2
X-Mailman-Approved-At: Thu, 16 Apr 2026 15:12:47 +0000
CC: linux-block@vger.kernel.org, io-uring@vger.kernel.org, Vishal Verma <vishal1.verma@intel.com>, tushar.gohad@intel.com, Keith Busch <kbusch@kernel.org>, Jens Axboe <axboe@kernel.dk>, Christoph Hellwig <hch@lst.de>, Sagi Grimberg <sagi@grimberg.me>, Alexander Viro <viro@zeniv.linux.org.uk>, Christian Brauner <brauner@kernel.org>, Andrew Morton <akpm@linux-foundation.org>, Sumit Semwal <sumit.semwal@linaro.org>, =?UTF-8?Q?Christian_K=C3=B6nig?= <christian.koenig@amd.com>, linux-kernel@vger.kernel.org, linux-nvme@lists.infradead.org, linux-fsdevel@vger.kernel.org, linux-media@vger.kernel.org, dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [RFC v2 02/11] iov_iter: introduce iter type for pre-registered dma
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/FDIF57MBM3AVPYHTTK4MYPCL2MDAGDD2/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="us-ascii"; format="flowed"
Content-Transfer-Encoding: 7bit
X-Spamd-Result: default: False [0.59 / 15.00];
	DATE_IN_PAST(1.00)[3014];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+mx:c];
	DMARC_POLICY_SOFTFAIL(0.10)[gmail.com : SPF not aligned (relaxed), No valid DKIM,none];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	ARC_NA(0.00)[];
	TAGGED_FROM(0.00)[lists,linaro-mm-sig=lfdr.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[20];
	MIME_TRACE(0.00)[0:+];
	DBL_BLOCKED_OPENRESOLVER(0.00)[lists.linaro.org:helo,lists.linaro.org:rdns,linaro.org:email];
	NEURAL_SPAM(0.00)[0.328];
	FREEMAIL_FROM(0.00)[gmail.com];
	FROM_NEQ_ENVFROM(0.00)[asmlsilence@gmail.com,linaro-mm-sig-bounces@lists.linaro.org];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[linaro-mm-sig];
	ASN(0.00)[asn:14618, ipnet:44.192.0.0/11, country:US];
	TO_DN_SOME(0.00)[]
X-Rspamd-Queue-Id: 5FE5D4112CE
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

On 12/4/25 10:43, Christoph Hellwig wrote:
> On Sun, Nov 23, 2025 at 10:51:22PM +0000, Pavel Begunkov wrote:
>> diff --git a/include/linux/uio.h b/include/linux/uio.h
>> index 5b127043a151..1b22594ca35b 100644
>> --- a/include/linux/uio.h
>> +++ b/include/linux/uio.h
>> @@ -29,6 +29,7 @@ enum iter_type {
>>   	ITER_FOLIOQ,
>>   	ITER_XARRAY,
>>   	ITER_DISCARD,
>> +	ITER_DMA_TOKEN,
> 
> Please use DMABUF/dmabuf naming everywhere, this is about dmabufs and
> not dma in general.

I guess I can do that (in all places) since it got that much fat
around dmabuf, but for me it was always about passing dma
addresses. Dmabuf was a way to pass buffers, even though
mandatory for uapi.

-- 
Pavel Begunkov

_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org
