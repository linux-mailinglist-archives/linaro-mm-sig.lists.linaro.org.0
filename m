Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id D86D36DD82C
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 11 Apr 2023 12:44:49 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id D71A13EBA5
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 11 Apr 2023 10:44:48 +0000 (UTC)
Received: from 189.cn (ptr.189.cn [183.61.185.104])
	by lists.linaro.org (Postfix) with ESMTP id 1ED913E96F
	for <linaro-mm-sig@lists.linaro.org>; Tue, 11 Apr 2023 10:44:38 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=none;
	spf=pass (lists.linaro.org: domain of 15330273260@189.cn designates 183.61.185.104 as permitted sender) smtp.mailfrom=15330273260@189.cn;
	dmarc=none
HMM_SOURCE_IP: 10.64.8.43:53314.233135370
HMM_ATTACHE_NUM: 0000
HMM_SOURCE_TYPE: SMTP
Received: from clientip-114.242.206.180 (unknown [10.64.8.43])
	by 189.cn (HERMES) with SMTP id 8596310013E;
	Tue, 11 Apr 2023 18:44:33 +0800 (CST)
Received: from  ([114.242.206.180])
	by gateway-151646-dep-7b48884fd-tj646 with ESMTP id 34c062daeef4482cada5c101c1f03811 for emil.l.velikov@gmail.com;
	Tue, 11 Apr 2023 18:44:35 CST
X-Transaction-ID: 34c062daeef4482cada5c101c1f03811
X-Real-From: 15330273260@189.cn
X-Receive-IP: 114.242.206.180
X-MEDUSA-Status: 0
Sender: 15330273260@189.cn
Message-ID: <d46621fc-94d1-8c33-76e9-00825763719b@189.cn>
Date: Tue, 11 Apr 2023 18:44:32 +0800
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.9.0
Content-Language: en-US
To: Emil Velikov <emil.l.velikov@gmail.com>
References: <20230403171304.2157326-1-suijingfeng@loongson.cn>
 <20230403171304.2157326-3-suijingfeng@loongson.cn>
 <CACvgo53h+X26wngVmxpn3oVb9kbJezTHx61p3rZDR7sw1AQrWQ@mail.gmail.com>
From: Sui Jingfeng <15330273260@189.cn>
In-Reply-To: <CACvgo53h+X26wngVmxpn3oVb9kbJezTHx61p3rZDR7sw1AQrWQ@mail.gmail.com>
X-Rspamd-Action: no action
X-Rspamd-Server: lists.linaro.org
X-Rspamd-Queue-Id: 1ED913E96F
X-Spamd-Bar: --
X-Spamd-Result: default: False [-2.70 / 15.00];
	BAYES_HAM(-3.00)[99.99%];
	SUSPICIOUS_RECIPS(1.50)[];
	RCVD_IN_DNSWL_HI(-1.00)[114.242.206.180:received,183.61.185.104:from];
	R_SPF_ALLOW(-0.20)[+ip4:183.61.185.0/24];
	MIME_GOOD(-0.10)[text/plain];
	RCVD_NO_TLS_LAST(0.10)[];
	FREEMAIL_TO(0.00)[gmail.com];
	FROM_EQ_ENVFROM(0.00)[];
	R_DKIM_NA(0.00)[];
	FREEMAIL_CC(0.00)[linux.intel.com,kernel.org,suse.de,gmail.com,ffwll.ch,linaro.org,amd.com,lists.linaro.org,loongson.cn,vger.kernel.org,lists.freedesktop.org,lists.loongnix.cn];
	NEURAL_HAM(-0.00)[-0.905];
	ASN(0.00)[asn:4134, ipnet:183.0.0.0/10, country:CN];
	FREEMAIL_ENVFROM(0.00)[189.cn];
	RCPT_COUNT_TWELVE(0.00)[15];
	MIME_TRACE(0.00)[0:+];
	DMARC_NA(0.00)[189.cn];
	MID_RHS_MATCH_FROM(0.00)[];
	ARC_NA(0.00)[];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	FROM_HAS_DN(0.00)[];
	FREEMAIL_FROM(0.00)[189.cn];
	TO_DN_SOME(0.00)[];
	TAGGED_RCPT(0.00)[];
	RCVD_COUNT_TWO(0.00)[2]
Message-ID-Hash: L725CAJNDWXUISL4YWTKCFTJ66GGYA62
X-Message-ID-Hash: L725CAJNDWXUISL4YWTKCFTJ66GGYA62
X-MailFrom: 15330273260@189.cn
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>, Daniel Vetter <daniel@ffwll.ch>, Sumit Semwal <sumit.semwal@linaro.org>, Christian Koenig <christian.koenig@amd.com>, linaro-mm-sig@lists.linaro.org, Li Yi <liyi@loongson.cn>, linux-kernel@vger.kernel.org, dri-devel@lists.freedesktop.org, nathan@kernel.org, linux-media@vger.kernel.org, loongson-kernel@lists.loongnix.cn
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH v10 2/2] drm: add kms driver for loongson display controller
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/L725CAJNDWXUISL4YWTKCFTJ66GGYA62/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="us-ascii"; format="flowed"
Content-Transfer-Encoding: 7bit

Hi,

On 2023/4/4 22:10, Emil Velikov wrote:
>> +static const struct dev_pm_ops lsdc_pm_ops = {
>> +       .suspend = lsdc_pm_suspend,
>> +       .resume = lsdc_pm_resume,
>> +       .freeze = lsdc_pm_freeze,
>> +       .thaw = lsdc_pm_thaw,
>> +       .poweroff = lsdc_pm_freeze,
>> +       .restore = lsdc_pm_resume,
>> +};
>> +
> The above section (and functions) should probably be wrapped in a
> CONFIG_PM_SLEEP block.
>
I agree with you.

I see imx-drm has this guard, but it's for embedded platform.

But I also see drm/ast and drm/radeon also didn't add this.

Maybe S3/S4 support is mandatory for PC platform?

Coding this way to force the kernel to enable PM_SLEEP option, otherwise 
there a pile of driver won't get compiled.

At lease drm/ast and drm/radeon is usable on LoongArch/Mips/X86-64 platform.


_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org
