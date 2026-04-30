Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id GFgmBVleBGqiHQIAu9opvQ
	(envelope-from <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>)
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 13 May 2026 13:19:53 +0200
X-Original-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [44.210.186.118])
	by mail.lfdr.de (Postfix) with ESMTPS id 9E22D532113
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 13 May 2026 13:19:52 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id B62853F75E
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 13 May 2026 11:19:51 +0000 (UTC)
Received: from mail-wm1-f53.google.com (mail-wm1-f53.google.com [209.85.128.53])
	by lists.linaro.org (Postfix) with ESMTPS id 9E795404B4
	for <linaro-mm-sig@lists.linaro.org>; Thu, 30 Apr 2026 18:18:47 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=gmail.com header.s=20251104 header.b=As1Y9WCo;
	dmarc=pass (policy=none) header.from=gmail.com;
	spf=pass (lists.linaro.org: domain of asml.silence@gmail.com designates 209.85.128.53 as permitted sender) smtp.mailfrom=asml.silence@gmail.com
Received: by mail-wm1-f53.google.com with SMTP id 5b1f17b1804b1-4838c15e3cbso10932995e9.3
        for <linaro-mm-sig@lists.linaro.org>; Thu, 30 Apr 2026 11:18:47 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1777573126; x=1778177926; darn=lists.linaro.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=+sxVPeWzK/5JcscdkmY85m6FCWps4Q/alwynbpD7Pbo=;
        b=As1Y9WCoB5YCA8+tX4Q3iK9OiVQsohfIGSv4H4lxX0O82TKyF9EKY25/6n3yN7rZNh
         ECp5qTXIyvmfAzw0euLUsV5VoFuoCJNg2edeVY7PDtkofptfa3k2/IMRcfopzvbS2+N5
         4YdfA94d6Uj2exgyuHlSQbUTAmdSBgpIgGKwJtQBbdCFaXlmbr/wrzxKktu2tX34oij/
         TnP8YdUngPAvXy0wuCn/APJ8sQ/PhTsQ+2H6pHzS/OpZoxKh4y14hDDSBkb8K7AsJXhk
         GGvOn0Ik/Nt9dbWRnOAUPOp5mbppB4xlMurX0TqCYcL9p5xCAIqWK9n1BSp5d1SnQf5l
         SWUA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1777573126; x=1778177926;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=+sxVPeWzK/5JcscdkmY85m6FCWps4Q/alwynbpD7Pbo=;
        b=mbfWCJqk0X7g3ymOgbnoEhyii+nfCYLEoLBog5UUVRACHWJygU/qtgqKGncMB23LOx
         t/TFRuF382vRD/41L8rTD4wm8diq6nCuVnZEM9m3EtFGAU8Ks1OmwbDq5Ea8G3ECvoVa
         ZvikNX6AYZVkfnpLksbAsIMgkwRpYn/psaAWtK2QYqUVK1Gis3ARqrczA4Xi9FgCy2np
         dbiS+7sgI8/PZ6Ibz+AtKyXjSaL4Mw8xofet3x7cS/pdA9VIX4a9bukDOzf6lzyBIwiG
         nRX1AWkAExVrO/y6o2QGyjcX0KYyZws043HZPpYEaqALFdbfyLL5K+DgaJYoA9mfuqIn
         il7A==
X-Forwarded-Encrypted: i=1; AFNElJ9lcNWtSKBIu1NB/WzInykohjPFdTGH46w0pqMaXb/aHanqOLTkqnqMHoEIurMC3E3kiHxhtqsG3mUqOwCZ@lists.linaro.org
X-Gm-Message-State: AOJu0YyRLQ11trZ27SXavhWPH7xA2wEcqrzK5RMEzTzjnu0qgnz8QpcY
	CEtn4SDYFiJsPqtw4RZAJMqduIgdX+AHyb431FSzfCKbZSoJZh1caBCb
X-Gm-Gg: AeBDieuDdYVNhd8eHiWi6Xtbx7SIHMMtbAtn2AIXCD1TlV6bM9KBvCLSCEFHicivkDt
	jjZR5F9LXg3lGoepahJW9Mf1dehdumxne3pSYB/wIKIbgbljkkh5gUzergOL4YK9my+JS4DeyPh
	RpYykXkUHOlLgklMdg9Ib6eSJMAupZf0f1uH16Q/YM9qn7jnv3CA6yMkaLjtwmlBLY59T090jcN
	5sf/4E3iB/XNsLCjJnn2Qa50QclAQi6LfGnfzYFB/HqzlXQPgd1VxEBT8qXUIG/qJfVrHa7cpXz
	3yma7jgwYeysHNoIU3Njrhj6f4ZzwzxUwy82erQDBkb+qwiW0KFgRgj8myqjxoJCfJa5RTff5MO
	wctOy7/njezcv9U2m0zEMuxouKQpa1GqgVZ4QsUiGJjOy8GdC2PohbnUFzwbBpZRPzZIdOxsAdW
	YBJsUEBznn+O3sp0KgKIUnj5duDuBoi6/cAA071VpHWycabd1q1O0qDmDVRUV22WidF0DWaCohs
	Z0Hkozcef+OTdm03GfyiE41NuMA1jgD8Qe+3FlVfdciJXbkEzXZrA3s841+EnYJH7nQURV54NOf
	lg==
X-Received: by 2002:a05:600c:3495:b0:48a:5339:ef0e with SMTP id 5b1f17b1804b1-48a83d62ffbmr66464485e9.3.1777573126483;
        Thu, 30 Apr 2026 11:18:46 -0700 (PDT)
Received: from [10.109.92.8] (net-2-37-141-89.cust.vodafonedsl.it. [2.37.141.89])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-48a8d15fdedsm3944495e9.4.2026.04.30.11.18.44
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 30 Apr 2026 11:18:45 -0700 (PDT)
Message-ID: <7f091660-2e60-4de5-a3b7-7b8d206fd6ab@gmail.com>
Date: Thu, 30 Apr 2026 19:18:44 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: Maurizio Lombardi <mlombard@arkamax.eu>, Jens Axboe <axboe@kernel.dk>,
 Keith Busch <kbusch@kernel.org>, Christoph Hellwig <hch@lst.de>,
 Sagi Grimberg <sagi@grimberg.me>, Alexander Viro <viro@zeniv.linux.org.uk>,
 Christian Brauner <brauner@kernel.org>,
 Andrew Morton <akpm@linux-foundation.org>,
 Sumit Semwal <sumit.semwal@linaro.org>,
 =?UTF-8?Q?Christian_K=C3=B6nig?= <christian.koenig@amd.com>,
 linux-block@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-nvme@lists.infradead.org, linux-fsdevel@vger.kernel.org,
 io-uring@vger.kernel.org, linux-media@vger.kernel.org,
 dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org
References: <cover.1777475843.git.asml.silence@gmail.com>
 <5cecb1157ab784f9f303a91449fdf11b03aa6002.1777475843.git.asml.silence@gmail.com>
 <DI5RO76D5IWR.19K0ES58HUIVS@arkamax.eu>
Content-Language: en-US
From: Pavel Begunkov <asml.silence@gmail.com>
In-Reply-To: <DI5RO76D5IWR.19K0ES58HUIVS@arkamax.eu>
X-Spamd-Bar: ---
X-MailFrom: asml.silence@gmail.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
Message-ID-Hash: Z7N5DUHHNOFYR7VWAQHV63H76IYGGHTN
X-Message-ID-Hash: Z7N5DUHHNOFYR7VWAQHV63H76IYGGHTN
X-Mailman-Approved-At: Wed, 13 May 2026 11:19:37 +0000
CC: Nitesh Shetty <nj.shetty@samsung.com>, Kanchan Joshi <joshi.k@samsung.com>, Anuj Gupta <anuj20.g@samsung.com>, Tushar Gohad <tushar.gohad@intel.com>, William Power <william.power@intel.com>, Phil Cayton <phil.cayton@intel.com>, Jason Gunthorpe <jgg@nvidia.com>
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH v3 07/10] nvme-pci: implement dma_token backed requests
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/Z7N5DUHHNOFYR7VWAQHV63H76IYGGHTN/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="us-ascii"; format="flowed"
Content-Transfer-Encoding: 7bit
X-Rspamd-Queue-Id: 9E22D532113
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [0.59 / 15.00];
	DATE_IN_PAST(1.00)[305];
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
	RCPT_COUNT_TWELVE(0.00)[25];
	MIME_TRACE(0.00)[0:+];
	DBL_BLOCKED_OPENRESOLVER(0.00)[linaro.org:email,lists.linaro.org:helo,lists.linaro.org:rdns];
	NEURAL_SPAM(0.00)[0.776];
	FREEMAIL_FROM(0.00)[gmail.com];
	FROM_NEQ_ENVFROM(0.00)[asmlsilence@gmail.com,linaro-mm-sig-bounces@lists.linaro.org];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[linaro-mm-sig];
	ASN(0.00)[asn:14618, ipnet:44.192.0.0/11, country:US];
	TO_DN_SOME(0.00)[]
X-Rspamd-Action: no action

On 4/29/26 17:07, Maurizio Lombardi wrote:
> On Wed Apr 29, 2026 at 5:25 PM CEST, Pavel Begunkov wrote:
>> Enable BIO_DMABUF_MAP backed requests. It creates a prp list for the
>> dmabuf when it's mapped, which is then used to initialise requests.
>>
>> Suggested-by: Keith Busch <kbusch@kernel.org>
>> Signed-off-by: Pavel Begunkov <asml.silence@gmail.com>
>> ---
...>> +
>> +static int nvme_create_dmabuf_token(struct request_queue *q,
>> +				 struct io_dmabuf_token *token)
>> +{
>> +	struct nvme_dmabuf_token *data;
>> +	struct dma_buf_attachment *attach;
>> +	struct nvme_ns *ns = q->queuedata;
>> +	struct nvme_dev *dev = to_nvme_dev(ns->ctrl);
>> +	struct dma_buf *dmabuf = token->dmabuf;
>> +
>> +	data = kzalloc(sizeof(data), GFP_KERNEL);
>> +	if (!data)
>> +		return -ENOMEM;
> 
> Shouldn't this be kzalloc(sizeof(*data)...) ?

Good catch, I'll apply it all for next version

-- 
Pavel Begunkov

_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org
