Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 2B7C172DCCA
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 13 Jun 2023 10:40:28 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 43AEC43CB9
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 13 Jun 2023 08:40:27 +0000 (UTC)
Received: from 189.cn (ptr.189.cn [183.61.185.101])
	by lists.linaro.org (Postfix) with ESMTP id C1D813F0D0
	for <linaro-mm-sig@lists.linaro.org>; Tue, 13 Jun 2023 08:40:12 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=none;
	dmarc=none;
	spf=pass (lists.linaro.org: domain of 15330273260@189.cn designates 183.61.185.101 as permitted sender) smtp.mailfrom=15330273260@189.cn
HMM_SOURCE_IP: 10.64.8.43:49218.162439971
HMM_ATTACHE_NUM: 0000
HMM_SOURCE_TYPE: SMTP
Received: from clientip-114.242.206.180 (unknown [10.64.8.43])
	by 189.cn (HERMES) with SMTP id 42FC2100236;
	Tue, 13 Jun 2023 16:40:08 +0800 (CST)
Received: from  ([114.242.206.180])
	by gateway-151646-dep-75648544bd-7vx9t with ESMTP id eeccf25fcf684add9e175087e8ee34ea for mripard@kernel.org;
	Tue, 13 Jun 2023 16:40:11 CST
X-Transaction-ID: eeccf25fcf684add9e175087e8ee34ea
X-Real-From: 15330273260@189.cn
X-Receive-IP: 114.242.206.180
X-MEDUSA-Status: 0
Sender: 15330273260@189.cn
Message-ID: <555e160a-0c9d-9145-88f1-a0ecff62240a@189.cn>
Date: Tue, 13 Jun 2023 16:40:07 +0800
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.11.0
Content-Language: en-US
To: Maxime Ripard <mripard@kernel.org>, Sui Jingfeng <suijingfeng@loongson.cn>
References: <20230520105718.325819-1-15330273260@189.cn>
 <d4e647d8-294c-abd7-40c6-37381796203d@loongson.cn>
 <a23d6mgl4fbfa4ucgjvwgw7l3somxo4tkhit7ygy55fldlum56@vm3tyjdsx24l>
From: Sui Jingfeng <15330273260@189.cn>
In-Reply-To: <a23d6mgl4fbfa4ucgjvwgw7l3somxo4tkhit7ygy55fldlum56@vm3tyjdsx24l>
X-Rspamd-Queue-Id: C1D813F0D0
X-Spamd-Bar: -----
X-Spamd-Result: default: False [-5.70 / 15.00];
	REPLY(-4.00)[];
	BAYES_HAM(-3.00)[99.99%];
	SUSPICIOUS_RECIPS(1.50)[];
	R_SPF_ALLOW(-0.20)[+ip4:183.61.185.0/24:c];
	RCVD_NO_TLS_LAST(0.10)[];
	MIME_GOOD(-0.10)[text/plain];
	NEURAL_HAM(-0.00)[-0.868];
	FROM_EQ_ENVFROM(0.00)[];
	R_DKIM_NA(0.00)[];
	FREEMAIL_CC(0.00)[linux.intel.com,suse.de,gmail.com,ffwll.ch,loongson.cn,linaro.org,amd.com,kernel.org,vger.kernel.org,lists.freedesktop.org,lists.linaro.org,lists.loongnix.cn];
	RCPT_COUNT_TWELVE(0.00)[16];
	ASN(0.00)[asn:4134, ipnet:183.0.0.0/10, country:CN];
	FREEMAIL_ENVFROM(0.00)[189.cn];
	ARC_NA(0.00)[];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FROM_HAS_DN(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	BLOCKLISTDE_FAIL(0.00)[183.61.185.101:server fail,114.242.206.180:server fail];
	TO_DN_SOME(0.00)[];
	TAGGED_RCPT(0.00)[];
	FREEMAIL_FROM(0.00)[189.cn];
	DMARC_NA(0.00)[189.cn];
	RCVD_COUNT_TWO(0.00)[2]
X-Rspamd-Action: no action
X-Rspamd-Server: lists.linaro.org
Message-ID-Hash: BHXZGMYZV54DYYI7MVAR4TJVJ7ZXYVYY
X-Message-ID-Hash: BHXZGMYZV54DYYI7MVAR4TJVJ7ZXYVYY
X-MailFrom: 15330273260@189.cn
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, Thomas Zimmermann <tzimmermann@suse.de>, Daniel Vetter <daniel@ffwll.ch>, Li Yi <liyi@loongson.cn>, Sumit Semwal <sumit.semwal@linaro.org>, Christian Koenig <christian.koenig@amd.com>, Emil Velikov <emil.l.velikov@gmail.com>, Nathan Chancellor <nathan@kernel.org>, linux-kernel@vger.kernel.org, dri-devel@lists.freedesktop.org, linux-media@vger.kernel.org, linaro-mm-sig@lists.linaro.org, loongson-kernel@lists.loongnix.cn
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH v14 0/2] drm: add kms driver for loongson display controller
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/BHXZGMYZV54DYYI7MVAR4TJVJ7ZXYVYY/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="us-ascii"; format="flowed"
Content-Transfer-Encoding: 7bit


On 2023/6/13 16:30, Maxime Ripard wrote:
> Hi,
>
> On Mon, Jun 12, 2023 at 10:58:54PM +0800, Sui Jingfeng wrote:
>> Hi,
>>
>>
>> Any ideas for this trivial DC driver? Sorry about my broken English.
>>
>> What to do next? Send a new version?
> Thomas already told you to merge it in the previous version:
> https://lore.kernel.org/dri-devel/7b77020f-d543-13bf-e178-bc416bcc728d@suse.de/
>
> So.. do that?

OK, I also want to merge this.

If there are any other problems, We and other contributor will take the 
responsibility to fixed it with a separate patch.

It this OK?

> Maxime
_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org
